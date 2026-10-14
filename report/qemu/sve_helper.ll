Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1193
loop-unroll.NumRuntimeUnrolled: 417
loop-unroll.NumUnrolled: 1632
begin_hunk_0_@helper_sve_while2g:bb.a
  %.0.lcssa.i34 = phi i64 [ 0, %.preheader.i ], [ %wide.trip.count.i28, %.lr.ph.i29.6 ], [ %wide.trip.count.i28, %.lr.ph.i29.5 ], [ %wide.trip.count.i28, %.lr.ph.i29.4 ], [ %wide.trip.count.i28, %.lr.ph.i29.3 ], [ %wide.trip.count.i28, %.lr.ph.i29.2 ], [ %wide.trip.count.i28, %.lr.ph.i29.1 ], [ %wide.trip.count.i28, %.lr.ph.preheader.i27 ]
  %i.aj = and i32 %i.d, 56                        ; 2 uses
  %.not15.i = icmp eq i32 %i.aj, 0
  br i1 %.not15.i, label %do_whilel.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i33
  %i.ak = sub nuw nsw i32 64, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = lshr i64 -1, %i.al
  %i.an = and i64 %i.g, %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0.lcssa.i34
  store i64 %i.an, ptr %i.ao, align 8
  br label %do_whilel.exit

do_whilel.exit:                                   ; preds = %bb.d, %._crit_edge.i33, %bb.e
  %.pre-phi = phi i32 [ %i.ac, %bb.e ], [ %i.ac, %._crit_edge.i33 ], [ 0, %bb.d ] ; 5 uses
  %i.ap = sub nuw i32 %i.h, %i.d                  ; 2 uses
  %i.aq = icmp ule i32 %i.ap, %i.d
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = sub nuw nsw i32 %i.d, %i.ap             ; 2 uses
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nsw i64 -1, %i.at
  %i.av = and i64 %i.g, %i.au                     ; 2 uses
  %i.aw = lshr i32 %i.ar, 6                       ; 3 uses
  %i.ax = icmp samesign ult i32 %i.aw, %.pre-phi
  br i1 %i.ax, label %.lr.ph.preheader.i40, label %._crit_edge.i36

.lr.ph.preheader.i40:                             ; preds = %do_whilel.exit
  %i.ay = zext nneg i32 %i.aw to i64              ; 3 uses
  %wide.trip.count.i41 = zext nneg i32 %.pre-phi to i64 ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  store i64 %i.av, ptr %i.az, align 8
  %indvars.iv.next.peel.i42 = add nuw nsw i64 %i.ay, 1 ; 4 uses
  %exitcond.peel.not.i43 = icmp eq i64 %indvars.iv.next.peel.i42, %wide.trip.count.i41
  br i1 %exitcond.peel.not.i43, label %._crit_edge.i36, label %.lr.ph.i44.preheader

.lr.ph.i44.preheader:                             ; preds = %.lr.ph.preheader.i40
  %i.ba = xor i64 %i.ay, -1
  %i.bb = add nsw i64 %i.ba, %wide.trip.count.i41 ; 3 uses
  %min.iters.check68 = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check68, label %.lr.ph.i44.preheader79, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.i44.preheader
  %n.vec70 = and i64 %i.bb, -4                    ; 3 uses
  %i.bc = add nsw i64 %indvars.iv.next.peel.i42, %n.vec70
  %broadcast.splatinsert71 = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat72 = shufflevector <2 x i64> %broadcast.splatinsert71, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.peel.i42
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph69
  %index74 = phi i64 [ 0, %vector.ph69 ], [ %index.next75, %vector.body73 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index74 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %broadcast.splat72, ptr %i.be, align 8
  store <2 x i64> %broadcast.splat72, ptr %i.bf, align 8
  %index.next75 = add nuw i64 %index74, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.bg, label %middle.block76, label %vector.body73, !llvm.loop !1136

middle.block76:                                   ; preds = %vector.body73
  %cmp.n77 = icmp eq i64 %i.bb, %n.vec70
  br i1 %cmp.n77, label %._crit_edge.i36, label %.lr.ph.i44.preheader79

.lr.ph.i44.preheader79:                           ; preds = %.lr.ph.i44.preheader, %middle.block76
  %indvars.iv.i45.ph = phi i64 [ %indvars.iv.next.peel.i42, %.lr.ph.i44.preheader ], [ %i.bc, %middle.block76 ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader79, %.lr.ph.i44
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i46, %.lr.ph.i44 ], [ %indvars.iv.i45.ph, %.lr.ph.i44.preheader79 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i45
  store i64 %i.g, ptr %i.bh, align 8
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, %wide.trip.count.i41
  br i1 %exitcond.not.i47, label %._crit_edge.i36, label %.lr.ph.i44, !llvm.loop !1137

._crit_edge.i36:                                  ; preds = %.lr.ph.i44, %middle.block76, %.lr.ph.preheader.i40, %do_whilel.exit
  %.019.lcssa.i37 = phi i32 [ %i.aw, %do_whilel.exit ], [ %.pre-phi, %.lr.ph.preheader.i40 ], [ %.pre-phi, %middle.block76 ], [ %.pre-phi, %.lr.ph.i44 ]
  %.0.lcssa.i38 = phi i64 [ %i.av, %do_whilel.exit ], [ %i.g, %.lr.ph.preheader.i40 ], [ %i.g, %middle.block76 ], [ %i.g, %.lr.ph.i44 ]
  %i.bi = and i32 %i.d, 56                        ; 2 uses
  %.not22.i39 = icmp eq i32 %i.bi, 0
  br i1 %.not22.i39, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.i36, %._crit_edge.i
  %.sink = phi i32 [ %i.ab, %._crit_edge.i ], [ %i.bi, %._crit_edge.i36 ]
  %.0.lcssa.i38.sink = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ %.0.lcssa.i38, %._crit_edge.i36 ]
  %.019.lcssa.i37.sink = phi i32 [ %.019.lcssa.i, %._crit_edge.i ], [ %.019.lcssa.i37, %._crit_edge.i36 ]
  %.sink63 = phi ptr [ %i.i, %._crit_edge.i ], [ %0, %._crit_edge.i36 ]
  %i.bj = sub nuw nsw i32 64, %.sink
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = lshr i64 -1, %i.bk
  %i.bm = and i64 %.0.lcssa.i38.sink, %i.bl
  %i.bn = zext nneg i32 %.019.lcssa.i37.sink to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sink63, i64 %i.bn
  store i64 %i.bm, ptr %i.bo, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %._crit_edge.i36, %._crit_edge.i
  %i.bp = shl nuw nsw i32 %i.a, 4
  %i.bq = icmp eq i32 %i.h, %i.bp
  %i.br = select i1 %i.bq, i32 -2147483646, i32 2
  br label %pred_count_test.exit

pred_count_test.exit:                             ; preds = %bb.b, %bb.f
  %.0.i = phi i32 [ %i.br, %bb.f ], [ 1, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local range(i32 -2147483646, 2) i32 @helper_sve_whilecl(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2) #9 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %encode_pred_count.exit.thread, label %bb.b

encode_pred_count.exit.thread:                    ; preds = %bb.a
  %.sroa.3.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx14, i8 0, i64 24, i1 false)
  br label %pred_count_test.exit

bb.b:                                             ; preds = %bb.a
  %i.b = shl i32 %2, 3
  %i.c = and i32 %i.b, 504
  %i.d = lshr i32 %2, 6
  %i.e = and i32 %i.d, 3                          ; 2 uses
  %i.f = lshr exact i32 %i.c, %i.e
  %i.g = lshr i32 %2, 8
  %i.h = shl i32 %i.f, %i.g
  %i.i = icmp ne i32 %1, %i.h                     ; 3 uses
  %.0.shrunk.i = select i1 %i.i, i32 0, i32 32768
  %i.j = shl i32 %1, 1
  %i.k = or disjoint i32 %i.j, 1
  %i.l = select i1 %i.i, i32 %i.k, i32 1
  %i.m = shl i32 %i.l, %i.e
  %i.n = or i32 %i.m, %.0.shrunk.i
  %i.o = zext i32 %i.n to i64
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.p = zext i1 %i.i to i32
  %i.q = or disjoint i32 %i.p, -2147483646
  br label %pred_count_test.exit

pred_count_test.exit:                             ; preds = %encode_pred_count.exit.thread, %bb.b
  %.sink = phi i64 [ 0, %encode_pred_count.exit.thread ], [ %i.o, %bb.b ]
  %.0.i = phi i32 [ 1, %encode_pred_count.exit.thread ], [ %i.q, %bb.b ]
  store i64 %.sink, ptr %0, align 16
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local range(i32 1, -2147483645) i32 @helper_sve_whilecg(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2) #9 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %encode_pred_count.exit.thread, label %bb.b

encode_pred_count.exit.thread:                    ; preds = %bb.a
  %.sroa.3.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx14, i8 0, i64 24, i1 false)
  br label %pred_count_test.exit

bb.b:                                             ; preds = %bb.a
  %i.b = shl i32 %2, 3
  %i.c = and i32 %i.b, 504
  %i.d = lshr i32 %2, 6
  %i.e = and i32 %i.d, 3                          ; 2 uses
  %i.f = lshr exact i32 %i.c, %i.e
  %i.g = lshr i32 %2, 8
  %i.h = shl i32 %i.f, %i.g                       ; 2 uses
  %i.i = sub i32 %i.h, %1
  %i.j = shl i32 %i.i, 1
  %i.k = or disjoint i32 %i.j, 1
  %i.l = shl i32 %i.k, %i.e
  %i.m = or i32 %i.l, 32768
  %i.n = zext i32 %i.m to i64
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.o = icmp eq i32 %1, %i.h
  %i.p = select i1 %i.o, i32 -2147483646, i32 2
  br label %pred_count_test.exit

pred_count_test.exit:                             ; preds = %encode_pred_count.exit.thread, %bb.b
  %.sink = phi i64 [ 0, %encode_pred_count.exit.thread ], [ %i.n, %bb.b ]
  %.0.i = phi i32 [ 1, %encode_pred_count.exit.thread ], [ %i.p, %bb.b ]
  store i64 %.sink, ptr %0, align 16
  ret i32 %.0.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_subri_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = trunc i64 %2 to i8                       ; 6 uses
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 1
  %wide.load12 = load <16 x i8>, ptr %i.n, align 1
  %i.o = sub <16 x i8> %broadcast.splat, %wide.load
  %i.p = sub <16 x i8> %broadcast.splat, %wide.load12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <16 x i8> %i.o, ptr %i.q, align 1
  store <16 x i8> %i.p, ptr %i.r, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.011.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert14 = insertelement <8 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat15 = shufflevector <8 x i8> %broadcast.splatinsert14, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.t, align 1
  %i.u = sub <8 x i8> %broadcast.splat15, %wide.load17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index16
  store <8 x i8> %i.u, ptr %i.v, align 1
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next18, %i.g
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1139

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.011 = phi i64 [ %.011.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aq, %vec.epilog.scalar.ph ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.y = load i8, ptr %i.x, align 1
  %i.z = sub i8 %i.h, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = or disjoint i64 %.011, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = sub i8 %i.h, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = or disjoint i64 %.011, 2                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sub i8 %i.h, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = or disjoint i64 %.011, 3                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = sub i8 %i.h, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = add nuw nsw i64 %.011, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.aq, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1140

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_subri_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 1
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = trunc i64 %2 to i16                      ; 6 uses
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.h, 12
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load12 = load <8 x i16>, ptr %i.o, align 2
  %i.p = sub <8 x i16> %broadcast.splat, %wide.load
  %i.q = sub <8 x i16> %broadcast.splat, %wide.load12
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <8 x i16> %i.p, ptr %i.r, align 2
  store <8 x i16> %i.q, ptr %i.s, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.ph, !prof !83

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.011.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert14 = insertelement <4 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat15 = shufflevector <4 x i16> %broadcast.splatinsert14, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index16
  %wide.load17 = load <4 x i16>, ptr %i.u, align 2
  %i.v = sub <4 x i16> %broadcast.splat15, %wide.load17
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index16
  store <4 x i16> %i.v, ptr %i.w, align 2
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next18, %i.h
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1142

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.011 = phi i64 [ %.011.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.ar, %vec.epilog.scalar.ph ] ; 6 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.011
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = sub i16 %i.i, %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.011
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = or disjoint i64 %.011, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = sub i16 %i.i, %i.ae
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  store i16 %i.af, ptr %i.ag, align 2
  %i.ah = or disjoint i64 %.011, 2                ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = sub i16 %i.i, %i.aj
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ah
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = or disjoint i64 %.011, 3                ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = sub i16 %i.i, %i.ao
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.am
  store i16 %i.ap, ptr %i.aq, align 2
  %i.ar = add nuw nsw i64 %.011, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ar, %i.h
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1143

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_subri_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 2
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = trunc i64 %2 to i32                      ; 6 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 4
  %wide.load12 = load <4 x i32>, ptr %i.n, align 4
  %i.o = sub <4 x i32> %broadcast.splat, %wide.load
  %i.p = sub <4 x i32> %broadcast.splat, %wide.load12
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %i.o, ptr %i.q, align 4
  store <4 x i32> %i.p, ptr %i.r, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 2                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.011.prol = phi i64 [ %i.x, %scalar.ph.prol ], [ %.011.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.011.prol
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sub i32 %i.i, %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.011.prol
  store i32 %i.v, ptr %i.w, align 4
  %i.x = add nuw nsw i64 %.011.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1145

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.011.unr = phi i64 [ %.011.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %i.y = sub nsw i64 %.011.ph, %i.h
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.011 = phi i64 [ %i.at, %scalar.ph ], [ %.011.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.011
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sub i32 %i.i, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.011
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = add nuw nsw i64 %.011, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = sub i32 %i.i, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = add nuw nsw i64 %.011, 2                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = sub i32 %i.i, %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = add nuw nsw i64 %.011, 3                ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = sub i32 %i.i, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = add nuw nsw i64 %.011, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.at, %i.h
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1146

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_subri_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 1
  %i.e = zext nneg i32 %.v.i to i64               ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 5
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = ptrtoaddr ptr %1 to i64
  %i.h = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.e, 508                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8
  %wide.load12 = load <2 x i64>, ptr %i.j, align 8
  %i.k = sub <2 x i64> %broadcast.splat, %wide.load
  %i.l = sub <2 x i64> %broadcast.splat, %wide.load12
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x i64> %i.k, ptr %i.m, align 8
  store <2 x i64> %i.l, ptr %i.n, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 3 uses
  %i.p = zext nneg i32 %.v.v.i to i64             ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = sub nsw i64 %i.p, %.011.ph
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.011.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.011.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.011.prol
  %i.t = load i64, ptr %i.s, align 8
  %i.u = sub i64 %2, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.011.prol
  store i64 %i.u, ptr %i.v, align 8
  %i.w = add nuw nsw i64 %.011.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1148

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.011.unr = phi i64 [ %.011.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = icmp ult i64 %i.r, 3
  br i1 %i.x, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.011 = phi i64 [ %i.ar, %scalar.ph ], [ %.011.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.011
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = sub i64 %2, %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.011
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = add nuw nsw i64 %.011, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = sub i64 %2, %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  store i64 %i.af, ptr %i.ag, align 8
  %i.ah = add nuw nsw i64 %.011, 2                ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = sub i64 %2, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = add nuw nsw i64 %.011, 3                ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = sub i64 %2, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.am
  store i64 %i.ap, ptr %i.aq, align 8
  %i.ar = add nuw nsw i64 %.011, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ar, %i.e
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1149

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_smaxi_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = trunc i64 %2 to i8                       ; 6 uses
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 1
  %wide.load17 = load <16 x i8>, ptr %i.n, align 1
  %i.o = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load, <16 x i8> %broadcast.splat)
  %i.p = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load17, <16 x i8> %broadcast.splat)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <16 x i8> %i.o, ptr %i.q, align 1
  store <16 x i8> %i.p, ptr %i.r, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert19 = insertelement <8 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat20 = shufflevector <8 x i8> %broadcast.splatinsert19, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.t, align 1
  %i.u = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load22, <8 x i8> %broadcast.splat20)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.u, ptr %i.v, align 1
  %index.next23 = add nuw i64 %index21, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next23, %i.g
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1151

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.016 = phi i64 [ %.016.ph, %vec.epilog.scalar.ph.preheader ], [ %i.am, %vec.epilog.scalar.ph ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.y = load i8, ptr %i.x, align 1
  %. = tail call i8 @llvm.smax.i8(i8 %i.y, i8 %i.h)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i8 %., ptr %i.z, align 1
  %i.aa = or disjoint i64 %.016, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %..1 = tail call i8 @llvm.smax.i8(i8 %i.ac, i8 %i.h)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store i8 %..1, ptr %i.ad, align 1
  %i.ae = or disjoint i64 %.016, 2                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %..2 = tail call i8 @llvm.smax.i8(i8 %i.ag, i8 %i.h)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store i8 %..2, ptr %i.ah, align 1
  %i.ai = or disjoint i64 %.016, 3                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %..3 = tail call i8 @llvm.smax.i8(i8 %i.ak, i8 %i.h)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  store i8 %..3, ptr %i.al, align 1
  %i.am = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1152

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_smaxi_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 1
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = trunc i64 %2 to i16                      ; 6 uses
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.h, 12
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load17 = load <8 x i16>, ptr %i.o, align 2
  %i.p = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load, <8 x i16> %broadcast.splat)
  %i.q = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load17, <8 x i16> %broadcast.splat)
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <8 x i16> %i.p, ptr %i.r, align 2
  store <8 x i16> %i.q, ptr %i.s, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.ph, !prof !83

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert19 = insertelement <4 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat20 = shufflevector <4 x i16> %broadcast.splatinsert19, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index21
  %wide.load22 = load <4 x i16>, ptr %i.u, align 2
  %i.v = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load22, <4 x i16> %broadcast.splat20)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index21
  store <4 x i16> %i.v, ptr %i.w, align 2
  %index.next23 = add nuw i64 %index21, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next23, %i.h
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1154

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.016 = phi i64 [ %.016.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.an, %vec.epilog.scalar.ph ] ; 6 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.z = load i16, ptr %i.y, align 2
  %. = tail call i16 @llvm.smax.i16(i16 %i.z, i16 %i.i)
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %., ptr %i.aa, align 2
  %i.ab = or disjoint i64 %.016, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %..1 = tail call i16 @llvm.smax.i16(i16 %i.ad, i16 %i.i)
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ab
  store i16 %..1, ptr %i.ae, align 2
  %i.af = or disjoint i64 %.016, 2                ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %..2 = tail call i16 @llvm.smax.i16(i16 %i.ah, i16 %i.i)
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  store i16 %..2, ptr %i.ai, align 2
  %i.aj = or disjoint i64 %.016, 3                ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %..3 = tail call i16 @llvm.smax.i16(i16 %i.al, i16 %i.i)
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aj
  store i16 %..3, ptr %i.am, align 2
  %i.an = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.an, %i.h
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1155

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_smaxi_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 2
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = trunc i64 %2 to i32                      ; 6 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 4
  %wide.load17 = load <4 x i32>, ptr %i.n, align 4
  %i.o = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %i.p = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load17, <4 x i32> %broadcast.splat)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %i.o, ptr %i.q, align 4
  store <4 x i32> %i.p, ptr %i.r, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 2                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.016.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.016.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016.prol
  %i.u = load i32, ptr %i.t, align 4
  %..prol = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %i.i)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016.prol
  store i32 %..prol, ptr %i.v, align 4
  %i.w = add nuw nsw i64 %.016.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1157

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.016.unr = phi i64 [ %.016.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub nsw i64 %.016.ph, %i.h
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.016 = phi i64 [ %i.ao, %scalar.ph ], [ %.016.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.aa = load i32, ptr %i.z, align 4
  %. = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.i)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %., ptr %i.ab, align 4
  %i.ac = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %..1 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.i)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  store i32 %..1, ptr %i.af, align 4
  %i.ag = add nuw nsw i64 %.016, 2                ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %..2 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.i)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  store i32 %..2, ptr %i.aj, align 4
  %i.ak = add nuw nsw i64 %.016, 3                ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %..3 = tail call i32 @llvm.smax.i32(i32 %i.am, i32 %i.i)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  store i32 %..3, ptr %i.an, align 4
  %i.ao = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1158

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_smaxi_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 1
  %i.e = zext nneg i32 %.v.i to i64               ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 5
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = ptrtoaddr ptr %1 to i64
  %i.h = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.e, 508                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8
  %wide.load17 = load <2 x i64>, ptr %i.j, align 8
  %i.k = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load, <2 x i64> %broadcast.splat)
  %i.l = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load17, <2 x i64> %broadcast.splat)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x i64> %i.k, ptr %i.m, align 8
  store <2 x i64> %i.l, ptr %i.n, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 3 uses
  %i.p = zext nneg i32 %.v.v.i to i64             ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = sub nsw i64 %i.p, %.016.ph
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.016.prol = phi i64 [ %i.v, %scalar.ph.prol ], [ %.016.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016.prol
  %i.t = load i64, ptr %i.s, align 8
  %..prol = tail call i64 @llvm.smax.i64(i64 %i.t, i64 %2)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.prol
  store i64 %..prol, ptr %i.u, align 8
  %i.v = add nuw nsw i64 %.016.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1160

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.016.unr = phi i64 [ %.016.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = icmp ult i64 %i.r, 3
  br i1 %i.w, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.016 = phi i64 [ %i.am, %scalar.ph ], [ %.016.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.y = load i64, ptr %i.x, align 8
  %. = tail call i64 @llvm.smax.i64(i64 %i.y, i64 %2)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %., ptr %i.z, align 8
  %i.aa = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %..1 = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 %2)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  store i64 %..1, ptr %i.ad, align 8
  %i.ae = add nuw nsw i64 %.016, 2                ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8
  %..2 = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 %2)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae
  store i64 %..2, ptr %i.ah, align 8
  %i.ai = add nuw nsw i64 %.016, 3                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8
  %..3 = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 %2)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  store i64 %..3, ptr %i.al, align 8
  %i.am = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, %i.e
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1161

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_smini_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = trunc i64 %2 to i8                       ; 6 uses
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 1
  %wide.load17 = load <16 x i8>, ptr %i.n, align 1
  %i.o = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load, <16 x i8> %broadcast.splat)
  %i.p = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load17, <16 x i8> %broadcast.splat)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <16 x i8> %i.o, ptr %i.q, align 1
  store <16 x i8> %i.p, ptr %i.r, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert19 = insertelement <8 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat20 = shufflevector <8 x i8> %broadcast.splatinsert19, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.t, align 1
  %i.u = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %wide.load22, <8 x i8> %broadcast.splat20)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.u, ptr %i.v, align 1
  %index.next23 = add nuw i64 %index21, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next23, %i.g
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1163

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.016 = phi i64 [ %.016.ph, %vec.epilog.scalar.ph.preheader ], [ %i.am, %vec.epilog.scalar.ph ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.y = load i8, ptr %i.x, align 1
  %. = tail call i8 @llvm.smin.i8(i8 %i.y, i8 %i.h)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i8 %., ptr %i.z, align 1
  %i.aa = or disjoint i64 %.016, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %..1 = tail call i8 @llvm.smin.i8(i8 %i.ac, i8 %i.h)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store i8 %..1, ptr %i.ad, align 1
  %i.ae = or disjoint i64 %.016, 2                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %..2 = tail call i8 @llvm.smin.i8(i8 %i.ag, i8 %i.h)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store i8 %..2, ptr %i.ah, align 1
  %i.ai = or disjoint i64 %.016, 3                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %..3 = tail call i8 @llvm.smin.i8(i8 %i.ak, i8 %i.h)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  store i8 %..3, ptr %i.al, align 1
  %i.am = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1164

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_smini_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 1
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = trunc i64 %2 to i16                      ; 6 uses
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.h, 12
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load17 = load <8 x i16>, ptr %i.o, align 2
  %i.p = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load, <8 x i16> %broadcast.splat)
  %i.q = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load17, <8 x i16> %broadcast.splat)
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <8 x i16> %i.p, ptr %i.r, align 2
  store <8 x i16> %i.q, ptr %i.s, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.ph, !prof !83

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert19 = insertelement <4 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat20 = shufflevector <4 x i16> %broadcast.splatinsert19, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index21
  %wide.load22 = load <4 x i16>, ptr %i.u, align 2
  %i.v = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load22, <4 x i16> %broadcast.splat20)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index21
  store <4 x i16> %i.v, ptr %i.w, align 2
  %index.next23 = add nuw i64 %index21, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next23, %i.h
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1166

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.016 = phi i64 [ %.016.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.an, %vec.epilog.scalar.ph ] ; 6 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.z = load i16, ptr %i.y, align 2
  %. = tail call i16 @llvm.smin.i16(i16 %i.z, i16 %i.i)
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %., ptr %i.aa, align 2
  %i.ab = or disjoint i64 %.016, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %..1 = tail call i16 @llvm.smin.i16(i16 %i.ad, i16 %i.i)
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ab
  store i16 %..1, ptr %i.ae, align 2
  %i.af = or disjoint i64 %.016, 2                ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %..2 = tail call i16 @llvm.smin.i16(i16 %i.ah, i16 %i.i)
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  store i16 %..2, ptr %i.ai, align 2
  %i.aj = or disjoint i64 %.016, 3                ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %..3 = tail call i16 @llvm.smin.i16(i16 %i.al, i16 %i.i)
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aj
  store i16 %..3, ptr %i.am, align 2
  %i.an = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.an, %i.h
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1167

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_smini_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 2
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = trunc i64 %2 to i32                      ; 6 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 4
  %wide.load17 = load <4 x i32>, ptr %i.n, align 4
  %i.o = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %i.p = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load17, <4 x i32> %broadcast.splat)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %i.o, ptr %i.q, align 4
  store <4 x i32> %i.p, ptr %i.r, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 2                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.016.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.016.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016.prol
  %i.u = load i32, ptr %i.t, align 4
  %..prol = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.i)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016.prol
  store i32 %..prol, ptr %i.v, align 4
  %i.w = add nuw nsw i64 %.016.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1169

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.016.unr = phi i64 [ %.016.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub nsw i64 %.016.ph, %i.h
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.016 = phi i64 [ %i.ao, %scalar.ph ], [ %.016.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.aa = load i32, ptr %i.z, align 4
  %. = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.i)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %., ptr %i.ab, align 4
  %i.ac = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %..1 = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.i)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  store i32 %..1, ptr %i.af, align 4
  %i.ag = add nuw nsw i64 %.016, 2                ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %..2 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.i)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  store i32 %..2, ptr %i.aj, align 4
  %i.ak = add nuw nsw i64 %.016, 3                ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %..3 = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.i)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  store i32 %..3, ptr %i.an, align 4
  %i.ao = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1170

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_smini_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 1
  %i.e = zext nneg i32 %.v.i to i64               ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 5
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = ptrtoaddr ptr %1 to i64
  %i.h = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.e, 508                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8
  %wide.load17 = load <2 x i64>, ptr %i.j, align 8
  %i.k = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load, <2 x i64> %broadcast.splat)
  %i.l = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load17, <2 x i64> %broadcast.splat)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x i64> %i.k, ptr %i.m, align 8
  store <2 x i64> %i.l, ptr %i.n, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 3 uses
  %i.p = zext nneg i32 %.v.v.i to i64             ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = sub nsw i64 %i.p, %.016.ph
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.016.prol = phi i64 [ %i.v, %scalar.ph.prol ], [ %.016.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016.prol
  %i.t = load i64, ptr %i.s, align 8
  %..prol = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %2)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.prol
  store i64 %..prol, ptr %i.u, align 8
  %i.v = add nuw nsw i64 %.016.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1172

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.016.unr = phi i64 [ %.016.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = icmp ult i64 %i.r, 3
  br i1 %i.w, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.016 = phi i64 [ %i.am, %scalar.ph ], [ %.016.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.y = load i64, ptr %i.x, align 8
  %. = tail call i64 @llvm.smin.i64(i64 %i.y, i64 %2)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %., ptr %i.z, align 8
  %i.aa = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %..1 = tail call i64 @llvm.smin.i64(i64 %i.ac, i64 %2)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  store i64 %..1, ptr %i.ad, align 8
  %i.ae = add nuw nsw i64 %.016, 2                ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8
  %..2 = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %2)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae
  store i64 %..2, ptr %i.ah, align 8
  %i.ai = add nuw nsw i64 %.016, 3                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8
  %..3 = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 %2)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  store i64 %..3, ptr %i.al, align 8
  %i.am = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, %i.e
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1173

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_umaxi_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = trunc i64 %2 to i8                       ; 6 uses
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 1
  %wide.load17 = load <16 x i8>, ptr %i.n, align 1
  %i.o = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> %broadcast.splat)
  %i.p = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load17, <16 x i8> %broadcast.splat)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <16 x i8> %i.o, ptr %i.q, align 1
  store <16 x i8> %i.p, ptr %i.r, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert19 = insertelement <8 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat20 = shufflevector <8 x i8> %broadcast.splatinsert19, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.t, align 1
  %i.u = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load22, <8 x i8> %broadcast.splat20)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.u, ptr %i.v, align 1
  %index.next23 = add nuw i64 %index21, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next23, %i.g
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1175

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.016 = phi i64 [ %.016.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aq, %vec.epilog.scalar.ph ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.y = load i8, ptr %i.x, align 1
  %i.z = tail call i8 @llvm.umax.i8(i8 %i.y, i8 %i.h)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = or disjoint i64 %.016, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = tail call i8 @llvm.umax.i8(i8 %i.ad, i8 %i.h)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = or disjoint i64 %.016, 2                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = tail call i8 @llvm.umax.i8(i8 %i.ai, i8 %i.h)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = or disjoint i64 %.016, 3                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = tail call i8 @llvm.umax.i8(i8 %i.an, i8 %i.h)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.aq, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1176

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_umaxi_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 1
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = trunc i64 %2 to i16                      ; 6 uses
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.h, 12
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load17 = load <8 x i16>, ptr %i.o, align 2
  %i.p = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %broadcast.splat)
  %i.q = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load17, <8 x i16> %broadcast.splat)
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <8 x i16> %i.p, ptr %i.r, align 2
  store <8 x i16> %i.q, ptr %i.s, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.ph, !prof !83

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert19 = insertelement <4 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat20 = shufflevector <4 x i16> %broadcast.splatinsert19, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index21
  %wide.load22 = load <4 x i16>, ptr %i.u, align 2
  %i.v = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load22, <4 x i16> %broadcast.splat20)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index21
  store <4 x i16> %i.v, ptr %i.w, align 2
  %index.next23 = add nuw i64 %index21, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next23, %i.h
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1178

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.016 = phi i64 [ %.016.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.ar, %vec.epilog.scalar.ph ] ; 6 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = tail call i16 @llvm.umax.i16(i16 %i.z, i16 %i.i)
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = or disjoint i64 %.016, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = tail call i16 @llvm.umax.i16(i16 %i.ae, i16 %i.i)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  store i16 %i.af, ptr %i.ag, align 2
  %i.ah = or disjoint i64 %.016, 2                ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call i16 @llvm.umax.i16(i16 %i.aj, i16 %i.i)
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ah
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = or disjoint i64 %.016, 3                ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = tail call i16 @llvm.umax.i16(i16 %i.ao, i16 %i.i)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.am
  store i16 %i.ap, ptr %i.aq, align 2
  %i.ar = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ar, %i.h
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1179

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_umaxi_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 2
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = trunc i64 %2 to i32                      ; 6 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 4
  %wide.load17 = load <4 x i32>, ptr %i.n, align 4
  %i.o = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %i.p = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load17, <4 x i32> %broadcast.splat)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %i.o, ptr %i.q, align 4
  store <4 x i32> %i.p, ptr %i.r, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 2                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.016.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.016.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016.prol
  %i.u = load i32, ptr %i.t, align 4
  %..prol = tail call i32 @llvm.umax.i32(i32 %i.u, i32 %i.i)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016.prol
  store i32 %..prol, ptr %i.v, align 4
  %i.w = add nuw nsw i64 %.016.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1181

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.016.unr = phi i64 [ %.016.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub nsw i64 %.016.ph, %i.h
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.016 = phi i64 [ %i.ao, %scalar.ph ], [ %.016.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.aa = load i32, ptr %i.z, align 4
  %. = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %i.i)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %., ptr %i.ab, align 4
  %i.ac = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %..1 = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 %i.i)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  store i32 %..1, ptr %i.af, align 4
  %i.ag = add nuw nsw i64 %.016, 2                ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %..2 = tail call i32 @llvm.umax.i32(i32 %i.ai, i32 %i.i)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  store i32 %..2, ptr %i.aj, align 4
  %i.ak = add nuw nsw i64 %.016, 3                ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %..3 = tail call i32 @llvm.umax.i32(i32 %i.am, i32 %i.i)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  store i32 %..3, ptr %i.an, align 4
  %i.ao = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1182

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_umaxi_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 1
  %i.e = zext nneg i32 %.v.i to i64               ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 5
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = ptrtoaddr ptr %1 to i64
  %i.h = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.e, 508                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8
  %wide.load17 = load <2 x i64>, ptr %i.j, align 8
  %i.k = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load, <2 x i64> %broadcast.splat)
  %i.l = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load17, <2 x i64> %broadcast.splat)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x i64> %i.k, ptr %i.m, align 8
  store <2 x i64> %i.l, ptr %i.n, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 3 uses
  %i.p = zext nneg i32 %.v.v.i to i64             ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = sub nsw i64 %i.p, %.016.ph
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.016.prol = phi i64 [ %i.v, %scalar.ph.prol ], [ %.016.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016.prol
  %i.t = load i64, ptr %i.s, align 8
  %..prol = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %2)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.prol
  store i64 %..prol, ptr %i.u, align 8
  %i.v = add nuw nsw i64 %.016.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1184

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.016.unr = phi i64 [ %.016.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = icmp ult i64 %i.r, 3
  br i1 %i.w, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.016 = phi i64 [ %i.am, %scalar.ph ], [ %.016.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.y = load i64, ptr %i.x, align 8
  %. = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %2)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %., ptr %i.z, align 8
  %i.aa = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %..1 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %2)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  store i64 %..1, ptr %i.ad, align 8
  %i.ae = add nuw nsw i64 %.016, 2                ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8
  %..2 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %2)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae
  store i64 %..2, ptr %i.ah, align 8
  %i.ai = add nuw nsw i64 %.016, 3                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8
  %..3 = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  store i64 %..3, ptr %i.al, align 8
  %i.am = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, %i.e
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1185

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_umini_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = trunc i64 %2 to i8                       ; 6 uses
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 1
  %wide.load17 = load <16 x i8>, ptr %i.n, align 1
  %i.o = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load, <16 x i8> %broadcast.splat)
  %i.p = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load17, <16 x i8> %broadcast.splat)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <16 x i8> %i.o, ptr %i.q, align 1
  store <16 x i8> %i.p, ptr %i.r, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert19 = insertelement <8 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat20 = shufflevector <8 x i8> %broadcast.splatinsert19, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.t, align 1
  %i.u = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %wide.load22, <8 x i8> %broadcast.splat20)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.u, ptr %i.v, align 1
  %index.next23 = add nuw i64 %index21, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next23, %i.g
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1187

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.016 = phi i64 [ %.016.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aq, %vec.epilog.scalar.ph ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.y = load i8, ptr %i.x, align 1
  %i.z = tail call i8 @llvm.umin.i8(i8 %i.y, i8 %i.h)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = or disjoint i64 %.016, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = tail call i8 @llvm.umin.i8(i8 %i.ad, i8 %i.h)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = or disjoint i64 %.016, 2                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = tail call i8 @llvm.umin.i8(i8 %i.ai, i8 %i.h)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = or disjoint i64 %.016, 3                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = tail call i8 @llvm.umin.i8(i8 %i.an, i8 %i.h)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.aq, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1188

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_umini_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 1
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = trunc i64 %2 to i16                      ; 6 uses
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.h, 12
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load17 = load <8 x i16>, ptr %i.o, align 2
  %i.p = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load, <8 x i16> %broadcast.splat)
  %i.q = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load17, <8 x i16> %broadcast.splat)
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <8 x i16> %i.p, ptr %i.r, align 2
  store <8 x i16> %i.q, ptr %i.s, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.ph, !prof !83

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert19 = insertelement <4 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat20 = shufflevector <4 x i16> %broadcast.splatinsert19, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index21
  %wide.load22 = load <4 x i16>, ptr %i.u, align 2
  %i.v = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load22, <4 x i16> %broadcast.splat20)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index21
  store <4 x i16> %i.v, ptr %i.w, align 2
  %index.next23 = add nuw i64 %index21, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next23, %i.h
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1190

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.016 = phi i64 [ %.016.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.ar, %vec.epilog.scalar.ph ] ; 6 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = tail call i16 @llvm.umin.i16(i16 %i.z, i16 %i.i)
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = or disjoint i64 %.016, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = tail call i16 @llvm.umin.i16(i16 %i.ae, i16 %i.i)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  store i16 %i.af, ptr %i.ag, align 2
  %i.ah = or disjoint i64 %.016, 2                ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call i16 @llvm.umin.i16(i16 %i.aj, i16 %i.i)
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ah
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = or disjoint i64 %.016, 3                ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = tail call i16 @llvm.umin.i16(i16 %i.ao, i16 %i.i)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.am
  store i16 %i.ap, ptr %i.aq, align 2
  %i.ar = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ar, %i.h
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1191

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_umini_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 2
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = trunc i64 %2 to i32                      ; 6 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 4
  %wide.load17 = load <4 x i32>, ptr %i.n, align 4
  %i.o = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %i.p = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load17, <4 x i32> %broadcast.splat)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %i.o, ptr %i.q, align 4
  store <4 x i32> %i.p, ptr %i.r, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 2                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.016.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.016.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016.prol
  %i.u = load i32, ptr %i.t, align 4
  %..prol = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.i)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016.prol
  store i32 %..prol, ptr %i.v, align 4
  %i.w = add nuw nsw i64 %.016.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1193

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.016.unr = phi i64 [ %.016.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub nsw i64 %.016.ph, %i.h
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.016 = phi i64 [ %i.ao, %scalar.ph ], [ %.016.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.aa = load i32, ptr %i.z, align 4
  %. = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.i)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %., ptr %i.ab, align 4
  %i.ac = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %..1 = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.i)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  store i32 %..1, ptr %i.af, align 4
  %i.ag = add nuw nsw i64 %.016, 2                ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %..2 = tail call i32 @llvm.umin.i32(i32 %i.ai, i32 %i.i)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  store i32 %..2, ptr %i.aj, align 4
  %i.ak = add nuw nsw i64 %.016, 3                ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %..3 = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.i)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  store i32 %..3, ptr %i.an, align 4
  %i.ao = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1194

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_umini_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
end_hunk_0
begin_hunk_1_@helper_sve2_adcl_s:bb.a
  %diff.check24 = icmp ugt i64 %i.s, -32
  %conflict.rdx25 = or i1 %conflict.rdx, %diff.check24
  br i1 %conflict.rdx25, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.t = and i64 %i.i, 3                          ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 4, i64 %i.t
  %n.vec = sub nsw i64 %i.i, %i.v                 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.w = shl nuw nsw i64 %index, 1                ; 2 uses
  %i.x = shl i64 %index, 1
  %i.y = or disjoint i64 %i.x, 4                  ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.w
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y
  %wide.vec = load <4 x i32>, ptr %i.z, align 4
  %i.ab = freeze <4 x i32> %wide.vec
  %i.ac = bitcast <4 x i32> %i.ab to <2 x i64>
  %i.ad = and <2 x i64> %i.ac, splat (i64 4294967295)
  %wide.vec26 = load <4 x i32>, ptr %i.aa, align 4
  %i.ae = freeze <4 x i32> %wide.vec26
  %i.af = bitcast <4 x i32> %i.ae to <2 x i64>
  %i.ag = and <2 x i64> %i.af, splat (i64 4294967295)
  %i.ah = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.w
  %i.ai = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.y
  %wide.vec28 = load <4 x i32>, ptr %i.ah, align 4
  %strided.vec29 = shufflevector <4 x i32> %wide.vec28, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec30 = load <4 x i32>, ptr %i.ai, align 4
  %strided.vec31 = shufflevector <4 x i32> %wide.vec30, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.aj = xor <2 x i32> %strided.vec29, %broadcast.splat
  %i.ak = xor <2 x i32> %strided.vec31, %broadcast.splat
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x i64>, ptr %i.al, align 8
  %wide.load32 = load <2 x i64>, ptr %i.am, align 8
  %i.an = lshr <2 x i64> %wide.load, splat (i64 32)
  %i.ao = lshr <2 x i64> %wide.load32, splat (i64 32)
  %i.ap = and <2 x i64> %i.an, splat (i64 1)
  %i.aq = and <2 x i64> %i.ao, splat (i64 1)
  %i.ar = zext <2 x i32> %i.aj to <2 x i64>
  %i.as = zext <2 x i32> %i.ak to <2 x i64>
  %i.at = add nuw nsw <2 x i64> %i.ad, %i.ar
  %i.au = add nuw nsw <2 x i64> %i.ag, %i.as
  %i.av = add nuw nsw <2 x i64> %i.at, %i.ap
  %i.aw = add nuw nsw <2 x i64> %i.au, %i.aq
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %i.av, ptr %i.ax, align 8
  store <2 x i64> %i.aw, ptr %i.ay, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2445

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.a
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %vector.body ] ; 7 uses
  %i.ba = zext nneg i32 %.v.v.i to i64            ; 2 uses
  %i.bb = add nsw i64 %.022.ph, %i.ba
  %i.bc = and i64 %i.bb, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bd = shl nuw nsw i64 %.022.ph, 1             ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bd
  %i.bg = load i32, ptr %gep.prol, align 4
  %i.bh = xor i32 %i.bg, %i.h
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.022.ph
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = lshr i64 %i.bj, 32
  %i.bl = and i64 %i.bk, 1
  %i.bm = zext i32 %i.bf to i64
  %i.bn = zext i32 %i.bh to i64
  %i.bo = add nuw nsw i64 %i.bn, %i.bm
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.022.ph
  store i64 %i.bp, ptr %i.bq, align 8
  %i.br = add nuw nsw i64 %.022.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.022.unr = phi i64 [ %.022.ph, %scalar.ph.preheader ], [ %i.br, %scalar.ph.prol ]
  %i.bs = icmp eq i64 %.022.ph, %i.ba
  br i1 %i.bs, label %.unr-lcssa, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.022 = phi i64 [ %i.cw, %scalar.ph ], [ %.022.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bt = shl nuw nsw i64 %.022, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bt
  %i.bw = load i32, ptr %gep, align 4
  %i.bx = xor i32 %i.bw, %i.h
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.022
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = lshr i64 %i.bz, 32
  %i.cb = and i64 %i.ca, 1
  %i.cc = zext i32 %i.bv to i64
  %i.cd = zext i32 %i.bx to i64
  %i.ce = add nuw nsw i64 %i.cd, %i.cc
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.022
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = add nuw nsw i64 %.022, 1                ; 3 uses
  %i.ci = shl nuw nsw i64 %i.ch, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ci
  %i.cl = load i32, ptr %gep.1, align 4
  %i.cm = xor i32 %i.cl, %i.h
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ch
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = lshr i64 %i.co, 32
  %i.cq = and i64 %i.cp, 1
  %i.cr = zext i32 %i.ck to i64
  %i.cs = zext i32 %i.cm to i64
  %i.ct = add nuw nsw i64 %i.cs, %i.cr
  %i.cu = add nuw nsw i64 %i.ct, %i.cq
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch
  store i64 %i.cu, ptr %i.cv, align 8
  %i.cw = add nuw nsw i64 %.022, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cw, %i.i
  br i1 %exitcond.not.1, label %.unr-lcssa, label %scalar.ph, !llvm.loop !2446

.unr-lcssa:                                       ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_adcl_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %4, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b
  %.v.i = add nuw nsw i32 %.v.v.i, 1
  %i.e = lshr i32 %4, 10
  %i.f = and i32 %i.e, 1
  %i.g = lshr i32 %4, 11
  %i.h = and i32 %i.g, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = zext nneg i32 %.v.i to i64
  %i.l = zext nneg i32 %i.f to i64
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.l
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.026 = phi i64 [ 0, %bb.a ], [ %i.ae, %bb.b ]  ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.026
  %i.n = load i64, ptr %i.m, align 8
  %i.o = zext i64 %i.n to i128
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.026
  %i.p = load i64, ptr %gep, align 8
  %i.q = xor i64 %i.p, %i.j
  %i.r = zext i64 %i.q to i128
  %i.s = or disjoint i64 %.026, 1                 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 1
  %i.w = zext nneg i64 %i.v to i128
  %i.x = add nuw nsw i128 %i.r, %i.o
  %i.y = add nuw nsw i128 %i.x, %i.w              ; 2 uses
  %i.z = trunc i128 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.026
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = lshr i128 %i.y, 64
  %i.ac = trunc nuw nsw i128 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = add nuw nsw i64 %.026, 2                ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, %i.k
  br i1 %i.af, label %bb.b, label %bb.c, !llvm.loop !2447

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqxtnb_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.n = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl nuw i64 %index, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <8 x i16>, ptr %i.p, align 2
  %wide.load20 = load <8 x i16>, ptr %i.q, align 2
  %i.r = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load, <8 x i16> splat (i16 -128))
  %i.s = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load20, <8 x i16> splat (i16 -128))
  %i.t = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.r, <8 x i16> splat (i16 127))
  %i.u = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.s, <8 x i16> splat (i16 127))
  %i.v = and <8 x i16> %i.t, splat (i16 255)
  %i.w = and <8 x i16> %i.u, splat (i16 255)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !2448

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !83

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index22.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.019.ph = phi i64 [ %i.n, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index22 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index22.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.aa = shl nuw i64 %index22, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %wide.load23 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load23, <4 x i16> splat (i16 -128))
  %i.ad = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %i.ac, <4 x i16> splat (i16 127))
  %i.ae = and <4 x i16> %i.ad, splat (i16 255)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store <4 x i16> %i.ae, ptr %i.af, align 2
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next24, %i.i
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2449

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.019 = phi i64 [ %i.an, %vec.epilog.scalar.ph ], [ %.019.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = tail call i16 @llvm.smax.i16(i16 %i.ai, i16 -128)
  %i.ak = tail call i16 @llvm.smin.i16(i16 %i.aj, i16 127)
  %i.al = and i16 %i.ak, 255
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.019
  store i16 %i.al, ptr %i.am, align 2
  %i.an = add nuw nsw i64 %.019, 2                ; 2 uses
  %i.ao = icmp samesign ult i64 %i.an, %i.g
  br i1 %i.ao, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !2450

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqxtnb_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.m = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl nuw i64 %index, 2                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4
  %wide.load20 = load <4 x i32>, ptr %i.p, align 4
  %i.q = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> splat (i32 -32768))
  %i.r = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load20, <4 x i32> splat (i32 -32768))
  %i.s = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.q, <4 x i32> splat (i32 32767))
  %i.t = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.r, <4 x i32> splat (i32 32767))
  %i.u = and <4 x i32> %i.s, splat (i32 65535)
  %i.v = and <4 x i32> %i.t, splat (i32 65535)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4
  store <4 x i32> %i.v, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2451

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.019.ph = phi i64 [ 0, %bb.a ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.af, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 -32768)
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 32767)
  %i.ad = and i32 %i.ac, 65535
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.019
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = add nuw nsw i64 %.019, 4                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %scalar.ph, label %.loopexit, !llvm.loop !2452

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqxtnb_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %2, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %narrow = add nuw nsw i32 %.v.v.i, 1            ; 2 uses
  %i.e = zext nneg i32 %narrow to i64             ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i32 %.v.v.i, 0
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.019 = phi i64 [ 0, %.new ], [ %i.t, %bb.b ]   ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call i64 @llvm.smax.i64(i64 %i.h, i64 -2147483648)
  %i.j = tail call i64 @llvm.smin.i64(i64 %i.i, i64 2147483647)
  %i.k = and i64 %i.j, 4294967295
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.019
  store i64 %i.k, ptr %i.l, align 8
  %i.m = or disjoint i64 %.019, 8                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8
  %i.p = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %i.q = tail call i64 @llvm.smin.i64(i64 %i.p, i64 2147483647)
  %i.r = and i64 %i.q, 4294967295
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  store i64 %i.r, ptr %i.s, align 8
  %i.t = add nuw nsw i64 %.019, 16                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %bb.b, !llvm.loop !2453

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.019.epil.init = phi i64 [ 0, %bb.a ], [ %i.t, %.unr-lcssa ] ; 2 uses
  %lcmp.mod20 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.019.epil.init
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %i.x = tail call i64 @llvm.smin.i64(i64 %i.w, i64 2147483647)
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.019.epil.init
  store i64 %i.y, ptr %i.z, align 8
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_uqxtnb_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.n = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl nuw i64 %index, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <8 x i16>, ptr %i.p, align 2
  %wide.load20 = load <8 x i16>, ptr %i.q, align 2
  %i.r = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load, <8 x i16> splat (i16 255))
  %i.s = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load20, <8 x i16> splat (i16 255))
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <8 x i16> %i.r, ptr %i.t, align 2
  store <8 x i16> %i.s, ptr %i.u, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !2454

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !83

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index22.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.019.ph = phi i64 [ %i.n, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index22 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index22.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.w = shl nuw i64 %index22, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %wide.load23 = load <4 x i16>, ptr %i.x, align 2
  %i.y = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load23, <4 x i16> splat (i16 255))
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  store <4 x i16> %i.y, ptr %i.z, align 2
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next24, %i.i
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2455

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.019 = phi i64 [ %i.af, %vec.epilog.scalar.ph ], [ %.019.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = tail call i16 @llvm.umin.i16(i16 %i.ac, i16 255)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.019
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = add nuw nsw i64 %.019, 2                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !2456

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_uqxtnb_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.m = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl nuw i64 %index, 2                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4
  %wide.load20 = load <4 x i32>, ptr %i.p, align 4
  %i.q = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load, <4 x i32> splat (i32 65535))
  %i.r = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load20, <4 x i32> splat (i32 65535))
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %i.q, ptr %i.s, align 4
  store <4 x i32> %i.r, ptr %i.t, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !2457

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.019.ph = phi i64 [ 0, %bb.a ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.z, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.w = load i32, ptr %i.v, align 4
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.w, i32 65535)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.019
  store i32 %i.x, ptr %i.y, align 4
  %i.z = add nuw nsw i64 %.019, 4                 ; 2 uses
  %i.aa = icmp samesign ult i64 %i.z, %i.g
  br i1 %i.aa, label %scalar.ph, label %.loopexit, !llvm.loop !2458

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_uqxtnb_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 56
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.m = shl nuw nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl nuw i64 %index, 3                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %wide.load20 = load <2 x i64>, ptr %i.p, align 8
  %i.q = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %wide.load, <2 x i64> splat (i64 4294967295))
  %i.r = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %wide.load20, <2 x i64> splat (i64 4294967295))
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x i64> %i.q, ptr %i.s, align 8
  store <2 x i64> %i.r, ptr %i.t, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !2459

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.019.ph = phi i64 [ 0, %bb.a ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.z, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.w = load i64, ptr %i.v, align 8
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.w, i64 4294967295)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.019
  store i64 %i.x, ptr %i.y, align 8
  %i.z = add nuw nsw i64 %.019, 8                 ; 2 uses
  %i.aa = icmp samesign ult i64 %i.z, %i.g
  br i1 %i.aa, label %scalar.ph, label %.loopexit, !llvm.loop !2460

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqxtunb_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.n = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl nuw i64 %index, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <8 x i16>, ptr %i.p, align 2
  %wide.load20 = load <8 x i16>, ptr %i.q, align 2
  %i.r = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load, <8 x i16> zeroinitializer)
  %i.s = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load20, <8 x i16> zeroinitializer)
  %i.t = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.r, <8 x i16> splat (i16 255))
  %i.u = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.s, <8 x i16> splat (i16 255))
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <8 x i16> %i.t, ptr %i.v, align 2
  store <8 x i16> %i.u, ptr %i.w, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2461

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !83

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index22.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.019.ph = phi i64 [ %i.n, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index22 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index22.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.y = shl nuw i64 %index22, 1                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %wide.load23 = load <4 x i16>, ptr %i.z, align 2
  %i.aa = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load23, <4 x i16> zeroinitializer)
  %i.ab = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.aa, <4 x i16> splat (i16 255))
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  store <4 x i16> %i.ab, ptr %i.ac, align 2
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next24, %i.i
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2462

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.019 = phi i64 [ %i.aj, %vec.epilog.scalar.ph ], [ %.019.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = tail call i16 @llvm.smax.i16(i16 %i.af, i16 0)
  %i.ah = tail call i16 @llvm.umin.i16(i16 %i.ag, i16 255)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.019
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = add nuw nsw i64 %.019, 2                ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %i.g
  br i1 %i.ak, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !2463

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqxtunb_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.m = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl nuw i64 %index, 2                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4
  %wide.load20 = load <4 x i32>, ptr %i.p, align 4
  %i.q = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> zeroinitializer)
  %i.r = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load20, <4 x i32> zeroinitializer)
  %i.s = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.q, <4 x i32> splat (i32 65535))
  %i.t = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.r, <4 x i32> splat (i32 65535))
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %i.s, ptr %i.u, align 4
  store <4 x i32> %i.t, ptr %i.v, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !2464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.019.ph = phi i64 [ 0, %bb.a ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.ac, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.y = load i32, ptr %i.x, align 4
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.z, i32 65535)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.019
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = add nuw nsw i64 %.019, 4                ; 2 uses
  %i.ad = icmp samesign ult i64 %i.ac, %i.g
  br i1 %i.ad, label %scalar.ph, label %.loopexit, !llvm.loop !2465

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqxtunb_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %2, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %narrow = add nuw nsw i32 %.v.v.i, 1            ; 2 uses
  %i.e = zext nneg i32 %narrow to i64             ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i32 %.v.v.i, 0
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.019 = phi i64 [ 0, %.new ], [ %i.r, %bb.b ]   ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call i64 @llvm.smax.i64(i64 %i.h, i64 0)
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 4294967295)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.019
  store i64 %i.j, ptr %i.k, align 8
  %i.l = or disjoint i64 %.019, 8                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8
  %i.o = tail call i64 @llvm.smax.i64(i64 %i.n, i64 0)
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 4294967295)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  store i64 %i.p, ptr %i.q, align 8
  %i.r = add nuw nsw i64 %.019, 16                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %bb.b, !llvm.loop !2466

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.019.epil.init = phi i64 [ 0, %bb.a ], [ %i.r, %.unr-lcssa ] ; 2 uses
  %lcmp.mod20 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.019.epil.init
  %i.t = load i64, ptr %i.s, align 8
  %i.u = tail call i64 @llvm.smax.i64(i64 %i.t, i64 0)
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 4294967295)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.019.epil.init
end_hunk_1
begin_hunk_2_@helper_sve2_uqxtnt_d:bb.a
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.b, !llvm.loop !2473

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.019.epil.init = phi i64 [ 0, %bb.a ], [ %i.ah, %.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.019.epil = phi i64 [ %.019.epil.init, %.epil.preheader ], [ %i.ao, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.019.epil
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 4294967295)
  %i.al = trunc nuw i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.019.epil
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %i.al, ptr %i.an, align 4
  %i.ao = add nuw nsw i64 %.019.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !2474

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqxtunt_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
.new:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = icmp eq i32 %i.b, 2
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = shl nuw nsw i32 %i.b, 3
  %.v.v.i = select i1 %i.c, i32 %i.e, i32 %i.f
  %i.g = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.g, 4
  %i.h = zext nneg i32 %narrow to i64
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.new
  %.019 = phi i64 [ 0, %.new ], [ %i.x, %bb.a ]   ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.j = load i16, ptr %i.i, align 2
  %i.k = tail call i16 @llvm.smax.i16(i16 %i.j, i16 0)
  %i.l = tail call i16 @llvm.umin.i16(i16 %i.k, i16 255)
  %i.m = trunc nuw i16 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.019
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.m, ptr %i.o, align 1
  %i.p = or disjoint i64 %.019, 2                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  %i.s = tail call i16 @llvm.smax.i16(i16 %i.r, i16 0)
  %i.t = tail call i16 @llvm.umin.i16(i16 %i.s, i16 255)
  %i.u = trunc nuw i16 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.u, ptr %i.w, align 1
  %i.x = add nuw nsw i64 %.019, 4
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %i.h
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %bb.a, !llvm.loop !2475

.unr-lcssa:                                       ; preds = %bb.a
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqxtunt_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
.new:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = icmp eq i32 %i.b, 2
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = shl nuw nsw i32 %i.b, 3
  %.v.v.i = select i1 %i.c, i32 %i.e, i32 %i.f
  %i.g = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.g, 2
  %i.h = zext nneg i32 %narrow to i64
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.new
  %.019 = phi i64 [ 0, %.new ], [ %i.x, %bb.a ]   ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.k, i32 65535)
  %i.m = trunc nuw i32 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.019
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i16 %i.m, ptr %i.o, align 2
  %i.p = or disjoint i64 %.019, 4                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.s, i32 65535)
  %i.u = trunc nuw i32 %i.t to i16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i16 %i.u, ptr %i.w, align 2
  %i.x = add nuw nsw i64 %.019, 8
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %i.h
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %bb.a, !llvm.loop !2476

.unr-lcssa:                                       ; preds = %bb.a
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqxtunt_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %2, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %narrow = add nuw nsw i32 %.v.v.i, 1            ; 2 uses
  %i.e = zext nneg i32 %narrow to i64             ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i32 %.v.v.i, 0
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.019 = phi i64 [ 0, %.new ], [ %i.v, %bb.b ]   ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call i64 @llvm.smax.i64(i64 %i.h, i64 0)
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 4294967295)
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.019
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.k, ptr %i.m, align 4
  %i.n = or disjoint i64 %.019, 8                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8
  %i.q = tail call i64 @llvm.smax.i64(i64 %i.p, i64 0)
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 4294967295)
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.s, ptr %i.u, align 4
  %i.v = add nuw nsw i64 %.019, 16                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %bb.b, !llvm.loop !2477

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.019.epil.init = phi i64 [ 0, %bb.a ], [ %i.v, %.unr-lcssa ] ; 2 uses
  %lcmp.mod20 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.019.epil.init
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call i64 @llvm.smax.i64(i64 %i.x, i64 0)
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 4294967295)
  %i.aa = trunc nuw i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.019.epil.init
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.aa, ptr %i.ac, align 4
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_shrnb_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = ashr i32 %2, 10                          ; 3 uses
  %i.i = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.i, 4
  %i.j = zext nneg i32 %narrow to i64             ; 4 uses
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.j, 12
  %n.vec = and i64 %i.j, 2147483632               ; 4 uses
  %i.o = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 1                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <8 x i16>, ptr %i.q, align 2
  %wide.load11 = load <8 x i16>, ptr %i.r, align 2
  %i.s = zext <8 x i16> %wide.load to <8 x i32>
  %i.t = zext <8 x i16> %wide.load11 to <8 x i32>
  %i.u = lshr <8 x i32> %i.s, %broadcast.splat
  %i.v = lshr <8 x i32> %i.t, %broadcast.splat
  %i.w = trunc nuw <8 x i32> %i.u to <8 x i16>
  %i.x = trunc nuw <8 x i32> %i.v to <8 x i16>
  %i.y = and <8 x i16> %i.w, splat (i16 255)
  %i.z = and <8 x i16> %i.x, splat (i16 255)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <8 x i16> %i.y, ptr %i.aa, align 2
  store <8 x i16> %i.z, ptr %i.ab, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !2478

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.010.ph = phi i64 [ %i.o, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert13 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat14 = shufflevector <4 x i32> %broadcast.splatinsert13, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = shl nuw i64 %index15, 1                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %wide.load16 = load <4 x i16>, ptr %i.ae, align 2
  %i.af = zext <4 x i16> %wide.load16 to <4 x i32>
  %i.ag = lshr <4 x i32> %i.af, %broadcast.splat14
  %i.ah = trunc nuw <4 x i32> %i.ag to <4 x i16>
  %i.ai = and <4 x i16> %i.ah, splat (i16 255)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  store <4 x i16> %i.ai, ptr %i.aj, align 2
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next17, %i.j
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2479

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.010 = phi i64 [ %i.as, %vec.epilog.scalar.ph ], [ %.010.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.010
  %i.am = load i16, ptr %i.al, align 2
  %i.an = zext i16 %i.am to i32
  %i.ao = lshr i32 %i.an, %i.h
  %i.ap = trunc nuw i32 %i.ao to i16
  %i.aq = and i16 %i.ap, 255
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  store i16 %i.aq, ptr %i.ar, align 2
  %i.as = add nuw nsw i64 %.010, 2                ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %i.g
  br i1 %i.at, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !2480

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_shrnb_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = ashr i32 %2, 10                          ; 2 uses
  %i.i = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.i, 2
  %i.j = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.j, 1073741816               ; 3 uses
  %i.n = shl nuw nsw i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl nuw i64 %index, 2                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <4 x i32>, ptr %i.p, align 4
  %wide.load11 = load <4 x i32>, ptr %i.q, align 4
  %i.r = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.s = lshr <4 x i32> %wide.load11, %broadcast.splat
  %i.t = and <4 x i32> %i.r, splat (i32 65535)
  %i.u = and <4 x i32> %i.s, splat (i32 65535)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %i.t, ptr %i.v, align 4
  store <4 x i32> %i.u, ptr %i.w, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2481

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.010.ph = phi i64 [ 0, %bb.a ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010 = phi i64 [ %i.ad, %scalar.ph ], [ %.010.ph, %scalar.ph.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.010
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = lshr i32 %i.z, %i.h
  %i.ab = and i32 %i.aa, 65535
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = add nuw nsw i64 %.010, 4                ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ad, %i.g
  br i1 %i.ae, label %scalar.ph, label %.loopexit, !llvm.loop !2482

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_shrnb_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = ashr i32 %2, 10
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.j, 1
  %i.k = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  %i.l = ptrtoaddr ptr %0 to i64
  %i.m = ptrtoaddr ptr %1 to i64
  %i.n = sub i64 %i.m, %i.l
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.k, 536870908                ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 3                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
end_hunk_2
begin_hunk_3_@helper_sve2_uqrshrnt_d:bb.a
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = lshr i64 %i.aa, %i.i
  %i.ac = lshr i64 %i.aa, %i.k
  %i.ad = and i64 %i.ac, 1
  %i.ae = add i64 %i.ad, %i.ab
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 4294967295)
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.ag, ptr %i.ai, align 4
  %i.aj = add nuw nsw i64 %.015.us, 16            ; 2 uses
  %niter40.next.1 = add i64 %niter40, 2           ; 2 uses
  %niter40.ncmp.1.not = icmp eq i64 %niter40.next.1, %unroll_iter39
  br i1 %niter40.ncmp.1.not, label %.split17.us.loopexit.unr-lcssa, label %do_urshr.exit.us, !llvm.loop !2560

.split:                                           ; preds = %bb.a
  %i.ak = icmp eq i32 %i.g, 64
  br i1 %i.ak, label %do_urshr.exit.us18.preheader, label %do_urshr.exit.preheader

do_urshr.exit.preheader:                          ; preds = %.split
  %i.al = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.al, 1
  %i.am = zext nneg i32 %narrow to i64            ; 2 uses
  %xtraiter = and i64 %i.am, 7                    ; 3 uses
  %i.an = icmp samesign ult i32 %.v.v.i, 56
  br i1 %i.an, label %do_urshr.exit.epil.preheader, label %do_urshr.exit.preheader.new

do_urshr.exit.preheader.new:                      ; preds = %do_urshr.exit.preheader
  %unroll_iter = and i64 %i.am, 536870904
  br label %do_urshr.exit

do_urshr.exit.us18.preheader:                     ; preds = %.split
  %i.ao = lshr exact i32 %.v.v.i, 3
  %narrow41 = add nuw nsw i32 %i.ao, 1
  %i.ap = zext nneg i32 %narrow41 to i64          ; 2 uses
  %xtraiter29 = and i64 %i.ap, 3                  ; 3 uses
  %i.aq = icmp samesign ult i32 %.v.v.i, 24
  br i1 %i.aq, label %do_urshr.exit.us18.epil.preheader, label %do_urshr.exit.us18.preheader.new

do_urshr.exit.us18.preheader.new:                 ; preds = %do_urshr.exit.us18.preheader
  %unroll_iter33 = and i64 %i.ap, 536870908
  br label %do_urshr.exit.us18

do_urshr.exit.us18:                               ; preds = %do_urshr.exit.us18, %do_urshr.exit.us18.preheader.new
  %.015.us19 = phi i64 [ 0, %do_urshr.exit.us18.preheader.new ], [ %i.bs, %do_urshr.exit.us18 ] ; 6 uses
  %niter34 = phi i64 [ 0, %do_urshr.exit.us18.preheader.new ], [ %niter34.next.3, %do_urshr.exit.us18 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %.015.us19
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = lshr i64 %i.as, 63
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.015.us19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %i.au, ptr %i.aw, align 4
  %i.ax = or disjoint i64 %.015.us19, 8           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 63
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.bb, ptr %i.bd, align 4
  %i.be = or disjoint i64 %.015.us19, 16          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = lshr i64 %i.bg, 63
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.bi, ptr %i.bk, align 4
  %i.bl = or disjoint i64 %.015.us19, 24          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = lshr i64 %i.bn, 63
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %i.bp, ptr %i.br, align 4
  %i.bs = add nuw nsw i64 %.015.us19, 32          ; 2 uses
  %niter34.next.3 = add i64 %niter34, 4           ; 2 uses
  %niter34.ncmp.3.not = icmp eq i64 %niter34.next.3, %unroll_iter33
  br i1 %niter34.ncmp.3.not, label %.split17.us.loopexit26.unr-lcssa, label %do_urshr.exit.us18, !llvm.loop !2560

do_urshr.exit:                                    ; preds = %do_urshr.exit, %do_urshr.exit.preheader.new
  %.015 = phi i64 [ 0, %do_urshr.exit.preheader.new ], [ %i.cj, %do_urshr.exit ] ; 9 uses
  %niter = phi i64 [ 0, %do_urshr.exit.preheader.new ], [ %niter.next.7, %do_urshr.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 0, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  store i32 0, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  store i32 0, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  store i32 0, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 44
  store i32 0, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 52
  store i32 0, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 60
  store i32 0, ptr %i.ci, align 4
  %i.cj = add nuw nsw i64 %.015, 64               ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.split17.us.loopexit27.unr-lcssa, label %do_urshr.exit, !llvm.loop !2560

.split17.us.loopexit.unr-lcssa:                   ; preds = %do_urshr.exit.us
  %lcmp.mod37.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.split17.us, label %do_urshr.exit.us.epil.preheader

do_urshr.exit.us.epil.preheader:                  ; preds = %.split17.us.loopexit.unr-lcssa, %do_urshr.exit.us.preheader
  %.015.us.epil.init = phi i64 [ 0, %do_urshr.exit.us.preheader ], [ %i.aj, %.split17.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i32 %narrow42 to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.015.us.epil.init
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.cm = lshr i64 %i.cl, %i.i
  %i.cn = lshr i64 %i.cl, %i.k
  %i.co = and i64 %i.cn, 1
  %i.cp = add i64 %i.co, %i.cm
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 4294967295)
  %i.cr = trunc nuw i64 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %.015.us.epil.init
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %i.cr, ptr %i.ct, align 4
  br label %.split17.us

.split17.us.loopexit26.unr-lcssa:                 ; preds = %do_urshr.exit.us18
  %lcmp.mod31.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod31.not, label %.split17.us, label %do_urshr.exit.us18.epil.preheader

do_urshr.exit.us18.epil.preheader:                ; preds = %.split17.us.loopexit26.unr-lcssa, %do_urshr.exit.us18.preheader
  %.015.us19.epil.init = phi i64 [ 0, %do_urshr.exit.us18.preheader ], [ %i.bs, %.split17.us.loopexit26.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter29, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %do_urshr.exit.us18.epil

do_urshr.exit.us18.epil:                          ; preds = %do_urshr.exit.us18.epil, %do_urshr.exit.us18.epil.preheader
  %.015.us19.epil = phi i64 [ %i.da, %do_urshr.exit.us18.epil ], [ %.015.us19.epil.init, %do_urshr.exit.us18.epil.preheader ] ; 3 uses
  %epil.iter30 = phi i64 [ %epil.iter30.next, %do_urshr.exit.us18.epil ], [ 0, %do_urshr.exit.us18.epil.preheader ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %.015.us19.epil
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = lshr i64 %i.cv, 63
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %.015.us19.epil
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cx, ptr %i.cz, align 4
  %i.da = add nuw nsw i64 %.015.us19.epil, 8
  %epil.iter30.next = add i64 %epil.iter30, 1     ; 2 uses
  %epil.iter30.cmp.not = icmp eq i64 %epil.iter30.next, %xtraiter29
  br i1 %epil.iter30.cmp.not, label %.split17.us, label %do_urshr.exit.us18.epil, !llvm.loop !2561

.split17.us.loopexit27.unr-lcssa:                 ; preds = %do_urshr.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split17.us, label %do_urshr.exit.epil.preheader

do_urshr.exit.epil.preheader:                     ; preds = %.split17.us.loopexit27.unr-lcssa, %do_urshr.exit.preheader
  %.015.epil.init = phi i64 [ 0, %do_urshr.exit.preheader ], [ %i.cj, %.split17.us.loopexit27.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %do_urshr.exit.epil

do_urshr.exit.epil:                               ; preds = %do_urshr.exit.epil, %do_urshr.exit.epil.preheader
  %.015.epil = phi i64 [ %i.dd, %do_urshr.exit.epil ], [ %.015.epil.init, %do_urshr.exit.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %do_urshr.exit.epil ], [ 0, %do_urshr.exit.epil.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %.015.epil
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 0, ptr %i.dc, align 4
  %i.dd = add nuw nsw i64 %.015.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split17.us, label %do_urshr.exit.epil, !llvm.loop !2562

.split17.us:                                      ; preds = %.split17.us.loopexit27.unr-lcssa, %do_urshr.exit.epil, %.split17.us.loopexit26.unr-lcssa, %do_urshr.exit.us18.epil, %do_urshr.exit.us.epil.preheader, %.split17.us.loopexit.unr-lcssa
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_addhnb_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check12 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load13 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load14 = load <8 x i16>, ptr %i.t, align 2
  %wide.load15 = load <8 x i16>, ptr %i.u, align 2
  %i.v = add <8 x i16> %wide.load14, %wide.load
  %i.w = add <8 x i16> %wide.load15, %wide.load13
  %i.x = lshr <8 x i16> %i.v, splat (i16 8)
  %i.y = lshr <8 x i16> %i.w, splat (i16 8)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !83

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index17.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.011.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index17 = phi i64 [ %index.next20, %vec.epilog.vector.body ], [ %index17.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ac = shl nuw i64 %index17, 1                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %wide.load18 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %wide.load19 = load <4 x i16>, ptr %i.ae, align 2
  %i.af = add <4 x i16> %wide.load19, %wide.load18
  %i.ag = lshr <4 x i16> %i.af, splat (i16 8)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next20 = add nuw i64 %index17, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next20, %i.i
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2564

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.011 = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.011.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.am = load i16, ptr %i.al, align 2
  %i.an = add i16 %i.am, %i.ak
  %i.ao = lshr i16 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.011, 2                ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.g
  br i1 %i.ar, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !2565

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_addhnb_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check12 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load13 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load14 = load <4 x i32>, ptr %i.s, align 4
  %wide.load15 = load <4 x i32>, ptr %i.t, align 4
  %i.u = add <4 x i32> %wide.load14, %wide.load
  %i.v = add <4 x i32> %wide.load15, %wide.load13
  %i.w = lshr <4 x i32> %i.u, splat (i32 16)
  %i.x = lshr <4 x i32> %i.v, splat (i32 16)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %i.w, ptr %i.y, align 4
  store <4 x i32> %i.x, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !2566

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.ai, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = add i32 %i.ae, %i.ac
  %i.ag = lshr i32 %i.af, 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.g
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !2567

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_addhnb_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check12 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
end_hunk_3
begin_hunk_4_@helper_sve2_addhnt_s:bb.a
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = add i64 %i.j, 2                          ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %diff.check = icmp ugt i64 %i.n, -16
  %i.o = sub i64 %i.l, %i.m
  %diff.check12 = icmp ugt i64 %i.o, -16
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741820               ; 3 uses
  %i.p = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 2                    ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %wide.load = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %wide.load13 = load <4 x i32>, ptr %i.s, align 4
  %i.t = add <4 x i32> %wide.load13, %wide.load
  %i.u = lshr <4 x i32> %i.t, splat (i32 16)
  %i.v = trunc nuw <4 x i32> %i.u to <4 x i16>    ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.ae = extractelement <4 x i16> %i.v, i64 0
  store i16 %i.ae, ptr %i.aa, align 2
  %i.af = extractelement <4 x i16> %i.v, i64 1
  store i16 %i.af, ptr %i.ab, align 2
  %i.ag = extractelement <4 x i16> %i.v, i64 2
  store i16 %i.ag, ptr %i.ac, align 2
  %i.ah = extractelement <4 x i16> %i.v, i64 3
  store i16 %i.ah, ptr %i.ad, align 2
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2572

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.as, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.am = load i32, ptr %i.al, align 4
  %i.an = add i32 %i.am, %i.ak
  %i.ao = lshr i32 %i.an, 16
  %i.ap = trunc nuw i32 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i16 %i.ap, ptr %i.ar, align 2
  %i.as = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %i.g
  br i1 %i.at, label %scalar.ph, label %.loopexit, !llvm.loop !2573

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_addhnt_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %narrow = add nuw nsw i32 %.v.v.i, 1
  %i.e = zext nneg i32 %narrow to i64             ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp samesign ult i32 %.v.v.i, 3
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 508
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.011 = phi i64 [ 0, %.new ], [ %i.at, %bb.b ]  ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, %i.h
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.m, ptr %i.o, align 4
  %i.p = or disjoint i64 %.011, 8                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %i.r
  %i.v = lshr i64 %i.u, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.w, ptr %i.y, align 4
  %i.z = or disjoint i64 %.011, 16                ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.z
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, %i.ab
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.ag, ptr %i.ai, align 4
  %i.aj = or disjoint i64 %.011, 24               ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = add i64 %i.an, %i.al
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 %i.aq, ptr %i.as, align 4
  %i.at = add nuw nsw i64 %.011, 32               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.b, !llvm.loop !2574

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.011.epil.init = phi i64 [ 0, %bb.a ], [ %i.at, %.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.011.epil = phi i64 [ %.011.epil.init, %.epil.preheader ], [ %i.bd, %bb.c ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.011.epil
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.011.epil
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, %i.av
  %i.az = lshr i64 %i.ay, 32
  %i.ba = trunc nuw i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.011.epil
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.ba, ptr %i.bc, align 4
  %i.bd = add nuw nsw i64 %.011.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !2575

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_raddhnb_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check12 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load13 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load14 = load <8 x i16>, ptr %i.t, align 2
  %wide.load15 = load <8 x i16>, ptr %i.u, align 2
  %i.v = add <8 x i16> %wide.load, splat (i16 128)
  %i.w = add <8 x i16> %wide.load13, splat (i16 128)
  %i.x = add <8 x i16> %i.v, %wide.load14
  %i.y = add <8 x i16> %i.w, %wide.load15
  %i.z = lshr <8 x i16> %i.x, splat (i16 8)
  %i.aa = lshr <8 x i16> %i.y, splat (i16 8)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <8 x i16> %i.z, ptr %i.ab, align 2
  store <8 x i16> %i.aa, ptr %i.ac, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !2576

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !83

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index17.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.011.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index17 = phi i64 [ %index.next20, %vec.epilog.vector.body ], [ %index17.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ae = shl nuw i64 %index17, 1                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %wide.load18 = load <4 x i16>, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %wide.load19 = load <4 x i16>, ptr %i.ag, align 2
  %i.ah = add <4 x i16> %wide.load18, splat (i16 128)
  %i.ai = add <4 x i16> %i.ah, %wide.load19
  %i.aj = lshr <4 x i16> %i.ai, splat (i16 8)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store <4 x i16> %i.aj, ptr %i.ak, align 2
  %index.next20 = add nuw i64 %index17, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next20, %i.i
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2577

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.011 = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.011.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = add i16 %i.an, 128
  %i.ar = add i16 %i.aq, %i.ap
  %i.as = lshr i16 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i16 %i.as, ptr %i.at, align 2
  %i.au = add nuw nsw i64 %.011, 2                ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %i.g
  br i1 %i.av, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !2578

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_raddhnb_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check12 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load13 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load14 = load <4 x i32>, ptr %i.s, align 4
  %wide.load15 = load <4 x i32>, ptr %i.t, align 4
  %i.u = add <4 x i32> %wide.load, splat (i32 32768)
  %i.v = add <4 x i32> %wide.load13, splat (i32 32768)
  %i.w = add <4 x i32> %i.u, %wide.load14
  %i.x = add <4 x i32> %i.v, %wide.load15
  %i.y = lshr <4 x i32> %i.w, splat (i32 16)
  %i.z = lshr <4 x i32> %i.x, splat (i32 16)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %i.y, ptr %i.aa, align 4
  store <4 x i32> %i.z, ptr %i.ab, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !2579

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.al, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ae, 32768
  %i.ai = add i32 %i.ah, %i.ag
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %i.g
  br i1 %i.am, label %scalar.ph, label %.loopexit, !llvm.loop !2580

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_raddhnb_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
end_hunk_4
begin_hunk_5_@helper_sve2_raddhnt_h:bb.a
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = add i16 %i.aw, 128
  %i.ba = add i16 %i.az, %i.ay
  %i.bb = lshr i16 %i.ba, 8
  %i.bc = trunc nuw i16 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %i.bc, ptr %i.be, align 1
  %i.bf = add nuw nsw i64 %.011, 2                ; 2 uses
  %i.bg = icmp samesign ult i64 %i.bf, %i.g
  br i1 %i.bg, label %scalar.ph, label %.loopexit, !llvm.loop !2584

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_raddhnt_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = add i64 %i.j, 2                          ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %diff.check = icmp ugt i64 %i.n, -16
  %i.o = sub i64 %i.l, %i.m
  %diff.check12 = icmp ugt i64 %i.o, -16
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741820               ; 3 uses
  %i.p = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 2                    ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %wide.load = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %wide.load13 = load <4 x i32>, ptr %i.s, align 4
  %i.t = add <4 x i32> %wide.load, splat (i32 32768)
  %i.u = add <4 x i32> %i.t, %wide.load13
  %i.v = lshr <4 x i32> %i.u, splat (i32 16)
  %i.w = trunc nuw <4 x i32> %i.v to <4 x i16>    ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.af = extractelement <4 x i16> %i.w, i64 0
  store i16 %i.af, ptr %i.ab, align 2
  %i.ag = extractelement <4 x i16> %i.w, i64 1
  store i16 %i.ag, ptr %i.ac, align 2
  %i.ah = extractelement <4 x i16> %i.w, i64 2
  store i16 %i.ah, ptr %i.ad, align 2
  %i.ai = extractelement <4 x i16> %i.w, i64 3
  store i16 %i.ai, ptr %i.ae, align 2
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !2585

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.au, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.al, 32768
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = trunc nuw i32 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i16 %i.ar, ptr %i.at, align 2
  %i.au = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %i.g
  br i1 %i.av, label %scalar.ph, label %.loopexit, !llvm.loop !2586

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_raddhnt_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %narrow = add nuw nsw i32 %.v.v.i, 1            ; 2 uses
  %i.e = zext nneg i32 %narrow to i64             ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i32 %.v.v.i, 0
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.011 = phi i64 [ 0, %.new ], [ %i.ab, %bb.b ]  ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.h, 2147483648
  %i.l = add i64 %i.k, %i.j
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.n, ptr %i.p, align 4
  %i.q = or disjoint i64 %.011, 8                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.s, 2147483648
  %i.w = add i64 %i.v, %i.u
  %i.x = lshr i64 %i.w, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.y, ptr %i.aa, align 4
  %i.ab = add nuw nsw i64 %.011, 16               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %bb.b, !llvm.loop !2587

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.011.epil.init = phi i64 [ 0, %bb.a ], [ %i.ab, %.unr-lcssa ] ; 3 uses
  %lcmp.mod12 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.011.epil.init
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %.011.epil.init
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.ad, 2147483648
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.011.epil.init
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %i.aj, ptr %i.al, align 4
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_subhnb_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check12 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load13 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load14 = load <8 x i16>, ptr %i.t, align 2
  %wide.load15 = load <8 x i16>, ptr %i.u, align 2
  %i.v = sub <8 x i16> %wide.load, %wide.load14
  %i.w = sub <8 x i16> %wide.load13, %wide.load15
  %i.x = lshr <8 x i16> %i.v, splat (i16 8)
  %i.y = lshr <8 x i16> %i.w, splat (i16 8)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2588

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !83

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index17.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.011.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index17 = phi i64 [ %index.next20, %vec.epilog.vector.body ], [ %index17.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ac = shl nuw i64 %index17, 1                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %wide.load18 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %wide.load19 = load <4 x i16>, ptr %i.ae, align 2
  %i.af = sub <4 x i16> %wide.load18, %wide.load19
  %i.ag = lshr <4 x i16> %i.af, splat (i16 8)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next20 = add nuw i64 %index17, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next20, %i.i
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2589

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.011 = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.011.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.am = load i16, ptr %i.al, align 2
  %i.an = sub i16 %i.ak, %i.am
  %i.ao = lshr i16 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.011, 2                ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.g
  br i1 %i.ar, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !2590

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_subhnb_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check12 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load13 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load14 = load <4 x i32>, ptr %i.s, align 4
  %wide.load15 = load <4 x i32>, ptr %i.t, align 4
  %i.u = sub <4 x i32> %wide.load, %wide.load14
  %i.v = sub <4 x i32> %wide.load13, %wide.load15
  %i.w = lshr <4 x i32> %i.u, splat (i32 16)
  %i.x = lshr <4 x i32> %i.v, splat (i32 16)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %i.w, ptr %i.y, align 4
  store <4 x i32> %i.x, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !2591

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.ai, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sub i32 %i.ac, %i.ae
  %i.ag = lshr i32 %i.af, 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.g
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !2592

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_subhnb_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check12 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
end_hunk_5
begin_hunk_6_@helper_sve2_subhnt_s:bb.a
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = add i64 %i.j, 2                          ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %diff.check = icmp ugt i64 %i.n, -16
  %i.o = sub i64 %i.l, %i.m
  %diff.check12 = icmp ugt i64 %i.o, -16
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741820               ; 3 uses
  %i.p = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 2                    ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %wide.load = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %wide.load13 = load <4 x i32>, ptr %i.s, align 4
  %i.t = sub <4 x i32> %wide.load, %wide.load13
  %i.u = lshr <4 x i32> %i.t, splat (i32 16)
  %i.v = trunc nuw <4 x i32> %i.u to <4 x i16>    ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.ae = extractelement <4 x i16> %i.v, i64 0
  store i16 %i.ae, ptr %i.aa, align 2
  %i.af = extractelement <4 x i16> %i.v, i64 1
  store i16 %i.af, ptr %i.ab, align 2
  %i.ag = extractelement <4 x i16> %i.v, i64 2
  store i16 %i.ag, ptr %i.ac, align 2
  %i.ah = extractelement <4 x i16> %i.v, i64 3
  store i16 %i.ah, ptr %i.ad, align 2
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2597

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.as, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.am = load i32, ptr %i.al, align 4
  %i.an = sub i32 %i.ak, %i.am
  %i.ao = lshr i32 %i.an, 16
  %i.ap = trunc nuw i32 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i16 %i.ap, ptr %i.ar, align 2
  %i.as = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %i.g
  br i1 %i.at, label %scalar.ph, label %.loopexit, !llvm.loop !2598

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_subhnt_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %narrow = add nuw nsw i32 %.v.v.i, 1
  %i.e = zext nneg i32 %narrow to i64             ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp samesign ult i32 %.v.v.i, 3
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 508
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.011 = phi i64 [ 0, %.new ], [ %i.at, %bb.b ]  ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.j = load i64, ptr %i.i, align 8
  %i.k = sub i64 %i.h, %i.j
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.m, ptr %i.o, align 4
  %i.p = or disjoint i64 %.011, 8                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.t = load i64, ptr %i.s, align 8
  %i.u = sub i64 %i.r, %i.t
  %i.v = lshr i64 %i.u, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.w, ptr %i.y, align 4
  %i.z = or disjoint i64 %.011, 16                ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.z
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.ag, ptr %i.ai, align 4
  %i.aj = or disjoint i64 %.011, 24               ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 %i.aq, ptr %i.as, align 4
  %i.at = add nuw nsw i64 %.011, 32               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.b, !llvm.loop !2599

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.011.epil.init = phi i64 [ 0, %bb.a ], [ %i.at, %.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.011.epil = phi i64 [ %.011.epil.init, %.epil.preheader ], [ %i.bd, %bb.c ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.011.epil
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.011.epil
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = sub i64 %i.av, %i.ax
  %i.az = lshr i64 %i.ay, 32
  %i.ba = trunc nuw i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.011.epil
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.ba, ptr %i.bc, align 4
  %i.bd = add nuw nsw i64 %.011.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !2600

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_rsubhnb_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check12 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load13 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load14 = load <8 x i16>, ptr %i.t, align 2
  %wide.load15 = load <8 x i16>, ptr %i.u, align 2
  %i.v = add <8 x i16> %wide.load, splat (i16 128)
  %i.w = add <8 x i16> %wide.load13, splat (i16 128)
  %i.x = sub <8 x i16> %i.v, %wide.load14
  %i.y = sub <8 x i16> %i.w, %wide.load15
  %i.z = lshr <8 x i16> %i.x, splat (i16 8)
  %i.aa = lshr <8 x i16> %i.y, splat (i16 8)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <8 x i16> %i.z, ptr %i.ab, align 2
  store <8 x i16> %i.aa, ptr %i.ac, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !2601

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !83

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index17.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.011.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index17 = phi i64 [ %index.next20, %vec.epilog.vector.body ], [ %index17.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ae = shl nuw i64 %index17, 1                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %wide.load18 = load <4 x i16>, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %wide.load19 = load <4 x i16>, ptr %i.ag, align 2
  %i.ah = add <4 x i16> %wide.load18, splat (i16 128)
  %i.ai = sub <4 x i16> %i.ah, %wide.load19
  %i.aj = lshr <4 x i16> %i.ai, splat (i16 8)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store <4 x i16> %i.aj, ptr %i.ak, align 2
  %index.next20 = add nuw i64 %index17, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next20, %i.i
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2602

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.011 = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.011.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = add i16 %i.an, 128
  %i.ar = sub i16 %i.aq, %i.ap
  %i.as = lshr i16 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i16 %i.as, ptr %i.at, align 2
  %i.au = add nuw nsw i64 %.011, 2                ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %i.g
  br i1 %i.av, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !2603

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_rsubhnb_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check12 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load13 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load14 = load <4 x i32>, ptr %i.s, align 4
  %wide.load15 = load <4 x i32>, ptr %i.t, align 4
  %i.u = add <4 x i32> %wide.load, splat (i32 32768)
  %i.v = add <4 x i32> %wide.load13, splat (i32 32768)
  %i.w = sub <4 x i32> %i.u, %wide.load14
  %i.x = sub <4 x i32> %i.v, %wide.load15
  %i.y = lshr <4 x i32> %i.w, splat (i32 16)
  %i.z = lshr <4 x i32> %i.x, splat (i32 16)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %i.y, ptr %i.aa, align 4
  store <4 x i32> %i.z, ptr %i.ab, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !2604

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.al, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ae, 32768
  %i.ai = sub i32 %i.ah, %i.ag
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %i.g
  br i1 %i.am, label %scalar.ph, label %.loopexit, !llvm.loop !2605

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_rsubhnb_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
end_hunk_6
