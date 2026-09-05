Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdsample-16?download=true
begin_hunk_0_@h2v2_fancy_upsample:bb.a
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv, 2
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count89
  br i1 %exitcond.not, label %._crit_edge68, label %.preheader, !llvm.loop !106

._crit_edge68:                                    ; preds = %._crit_edge.1, %.preheader.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !48     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next33, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %indvars34 = trunc i64 %indvars.iv to i32       ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 9 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 6 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !43   ; 3 uses
  %i.j = zext i32 %i.i to i64
  %.idx = shl nuw nsw i64 %i.j, 1                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 6 uses
  %i.n = add i64 %.idx, %i.h
  %i.o = add i64 %i.h, 4
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.q = xor i64 %i.h, -1
  %i.r = add i64 %i.p, %i.q                       ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 60
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.g, i64 4
  %i.u = add i64 %.idx, %i.h
  %i.v = add i64 %i.h, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.v)
  %i.w = xor i64 %i.h, -1
  %i.x = add i64 %umax, %i.w                      ; 2 uses
  %i.y = and i64 %i.x, -4
  %scevgep37 = getelementptr i8, ptr %scevgep, i64 %i.y
  %scevgep38 = getelementptr i8, ptr %i.m, i64 2
  %i.z = lshr i64 %i.x, 1
  %i.aa = and i64 %i.z, 9223372036854775806
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %i.aa
  %bound0 = icmp ult ptr %i.g, %scevgep39
  %bound1 = icmp ult ptr %i.m, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775800      ; 4 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.ab
  %i.ad = shl nuw i64 %n.vec, 1
  %i.ae = getelementptr i8, ptr %i.m, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.g, i64 %i.af
  %next.gep40 = getelementptr i8, ptr %i.ag, i64 16
  %i.ah = shl i64 %index, 1
  %next.gep41 = getelementptr i8, ptr %i.m, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep41, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep41, align 2, !tbaa !51, !alias.scope !133
  %wide.load42 = load <4 x i16>, ptr %i.ai, align 2, !tbaa !51, !alias.scope !133
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !51, !alias.scope !134, !noalias !133
  %interleaved.vec43 = shufflevector <4 x i16> %wide.load42, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec43, ptr %next.gep40, align 2, !tbaa !51, !alias.scope !134, !noalias !133
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader45

.lr.ph.preheader45:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.02326.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.02425.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader45, %.lr.ph
  %.02326 = phi ptr [ %i.an, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader45 ] ; 3 uses
  %.02425 = phi ptr [ %i.ak, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader45 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02425, i64 2
  %i.al = load i16, ptr %.02425, align 2, !tbaa !51 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02326, i64 2
  store i16 %i.al, ptr %.02326, align 2, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %.02326, i64 4 ; 2 uses
  store i16 %i.al, ptr %i.am, align 2, !tbaa !51
  %i.ao = icmp ult ptr %i.an, %i.k
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %i.ap = or disjoint i32 %indvars34, 1
  tail call void @j16copy_sample_rows(ptr noundef nonnull %i.a, i32 noundef %indvars34, ptr noundef nonnull %i.a, i32 noundef %i.ap, i32 noundef 1, i32 noundef %i.i) #6
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !39
  %i.ar = trunc nuw i64 %indvars.iv.next to i32
  %i.as = icmp sgt i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.b, label %._crit_edge31, !llvm.loop !132

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !48     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !143
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !32
  %.fr50 = freeze i8 %i.i                         ; 8 uses
  %i.j = zext i8 %.fr50 to i32                    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 290
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !32
  %.fr = freeze i8 %i.m                           ; 3 uses
  %i.n = zext i8 %.fr to i32                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !39   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge44

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %.not = icmp eq i8 %.fr50, 0
  %i.s = icmp ugt i8 %.fr, 1                      ; 2 uses
  %i.t = add nsw i32 %i.n, -1                     ; 2 uses
  br i1 %.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.u = zext i8 %.fr to i64                      ; 2 uses
  br i1 %i.s, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.v = zext i8 %.fr50 to i64                    ; 5 uses
  %min.iters.check97 = icmp ult i8 %.fr50, 4
  %min.iters.check99 = icmp ult i8 %.fr50, 16
  %i.w = and i64 %i.v, 12
  %n.vec101 = and i64 %i.v, 240                   ; 5 uses
  %i.x = trunc nuw nsw i64 %n.vec101 to i32
  %i.y = sub nsw i32 %i.j, %i.x
  %i.z = shl nuw nsw i64 %n.vec101, 1
  %cmp.n109 = icmp eq i64 %n.vec101, %i.v
  %min.epilog.iters.check115 = icmp eq i64 %i.w, 0
  %n.vec117 = and i64 %i.v, 252                   ; 4 uses
  %i.aa = trunc nuw nsw i64 %n.vec117 to i32
  %i.ab = sub nsw i32 %i.j, %i.aa
  %i.ac = shl nuw nsw i64 %n.vec117, 1
  %cmp.n125 = icmp eq i64 %n.vec117, %i.v
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; 2 uses
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; 3 uses
  %indvars69 = trunc i64 %indvars.iv65 to i32     ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv65
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 2 uses
  %i.af = load i32, ptr %i.r, align 8, !tbaa !43  ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %.idx54 = shl nuw nsw i64 %i.ag, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx54
  %.not55 = icmp eq i32 %i.af, 0
  br i1 %.not55, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph.split.us.split.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  br label %iter.check112

._crit_edge.split.us.us.us:                       ; preds = %..loopexit_crit_edge.us.us.us, %.lr.ph.split.us.split.us
  %4 = add nuw nsw i32 %indvars69, 1
  tail call void @j16copy_sample_rows(ptr noundef %i.c, i32 noundef %indvars69, ptr noundef %i.c, i32 noundef %4, i32 noundef %i.t, i32 noundef %i.af) #6
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, %i.u ; 2 uses
  %5 = load i32, ptr %i.o, align 4, !tbaa !39
  %6 = trunc nuw i64 %indvars.iv.next66 to i32
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %.lr.ph.split.us.split.us, label %._crit_edge44, !llvm.loop !135

iter.check112:                                    ; preds = %.lr.ph.us.us.us.preheader, %..loopexit_crit_edge.us.us.us
  %.03339.us.us.us = phi ptr [ %.lcssa, %..loopexit_crit_edge.us.us.us ], [ %i.ae, %.lr.ph.us.us.us.preheader ] ; 5 uses
  %.03438.us.us.us = phi ptr [ %i.av, %..loopexit_crit_edge.us.us.us ], [ %i.aj, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.ak = load i16, ptr %.03438.us.us.us, align 2, !tbaa !51 ; 3 uses
  br i1 %min.iters.check97, label %vec.epilog.scalar.ph113.preheader, label %vector.main.loop.iter.check98

vector.main.loop.iter.check98:                    ; preds = %iter.check112
  br i1 %min.iters.check99, label %vec.epilog.ph116, label %vector.ph100

vector.ph100:                                     ; preds = %vector.main.loop.iter.check98
  %i.al = getelementptr i8, ptr %.03339.us.us.us, i64 %i.z ; 2 uses
  %broadcast.splatinsert102 = insertelement <8 x i16> poison, i16 %i.ak, i64 0
  %broadcast.splat103 = shufflevector <8 x i16> %broadcast.splatinsert102, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph100
  %index105 = phi i64 [ 0, %vector.ph100 ], [ %index.next107, %vector.body104 ] ; 2 uses
  %i.am = shl i64 %index105, 1
  %next.gep106 = getelementptr i8, ptr %.03339.us.us.us, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep106, i64 16
  store <8 x i16> %broadcast.splat103, ptr %next.gep106, align 2, !tbaa !51
  store <8 x i16> %broadcast.splat103, ptr %i.an, align 2, !tbaa !51
  %index.next107 = add nuw i64 %index105, 16      ; 2 uses
  %i.ao = icmp eq i64 %index.next107, %n.vec101
  br i1 %i.ao, label %middle.block108, label %vector.body104, !llvm.loop !136

middle.block108:                                  ; preds = %vector.body104
  br i1 %cmp.n109, label %..loopexit_crit_edge.us.us.us, label %vec.epilog.iter.check114

vec.epilog.iter.check114:                         ; preds = %middle.block108
  br i1 %min.epilog.iters.check115, label %vec.epilog.scalar.ph113.preheader, label %vec.epilog.ph116, !prof !144

vec.epilog.ph116:                                 ; preds = %vector.main.loop.iter.check98, %vec.epilog.iter.check114
  %vec.epilog.resume.val110 = phi i64 [ %n.vec101, %vec.epilog.iter.check114 ], [ 0, %vector.main.loop.iter.check98 ]
  %i.ap = getelementptr i8, ptr %.03339.us.us.us, i64 %i.ac ; 2 uses
  %broadcast.splatinsert118 = insertelement <4 x i16> poison, i16 %i.ak, i64 0
  %broadcast.splat119 = shufflevector <4 x i16> %broadcast.splatinsert118, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body120

vec.epilog.vector.body120:                        ; preds = %vec.epilog.vector.body120, %vec.epilog.ph116
  %index121 = phi i64 [ %vec.epilog.resume.val110, %vec.epilog.ph116 ], [ %index.next123, %vec.epilog.vector.body120 ] ; 2 uses
  %i.aq = shl i64 %index121, 1
  %next.gep122 = getelementptr i8, ptr %.03339.us.us.us, i64 %i.aq
  store <4 x i16> %broadcast.splat119, ptr %next.gep122, align 2, !tbaa !51
  %index.next123 = add nuw i64 %index121, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next123, %n.vec117
  br i1 %i.ar, label %vec.epilog.middle.block124, label %vec.epilog.vector.body120, !llvm.loop !137

vec.epilog.middle.block124:                       ; preds = %vec.epilog.vector.body120
  br i1 %cmp.n125, label %..loopexit_crit_edge.us.us.us, label %vec.epilog.scalar.ph113.preheader

vec.epilog.scalar.ph113.preheader:                ; preds = %iter.check112, %vec.epilog.iter.check114, %vec.epilog.middle.block124
  %.03237.us.us.us.ph = phi i32 [ %i.j, %iter.check112 ], [ %i.y, %vec.epilog.iter.check114 ], [ %i.ab, %vec.epilog.middle.block124 ]
  %.136.us.us.us.ph = phi ptr [ %.03339.us.us.us, %iter.check112 ], [ %i.al, %vec.epilog.iter.check114 ], [ %i.ap, %vec.epilog.middle.block124 ]
  br label %vec.epilog.scalar.ph113

vec.epilog.scalar.ph113:                          ; preds = %vec.epilog.scalar.ph113.preheader, %vec.epilog.scalar.ph113
  %.03237.us.us.us = phi i32 [ %i.at, %vec.epilog.scalar.ph113 ], [ %.03237.us.us.us.ph, %vec.epilog.scalar.ph113.preheader ] ; 2 uses
  %.136.us.us.us = phi ptr [ %i.as, %vec.epilog.scalar.ph113 ], [ %.136.us.us.us.ph, %vec.epilog.scalar.ph113.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.136.us.us.us, i64 2 ; 2 uses
  store i16 %i.ak, ptr %.136.us.us.us, align 2, !tbaa !51
  %i.at = add nsw i32 %.03237.us.us.us, -1
  %i.au = icmp sgt i32 %.03237.us.us.us, 1
  br i1 %i.au, label %vec.epilog.scalar.ph113, label %..loopexit_crit_edge.us.us.us, !llvm.loop !138

..loopexit_crit_edge.us.us.us:                    ; preds = %vec.epilog.scalar.ph113, %vec.epilog.middle.block124, %middle.block108
  %.lcssa = phi ptr [ %i.ap, %vec.epilog.middle.block124 ], [ %i.al, %middle.block108 ], [ %i.as, %vec.epilog.scalar.ph113 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.03438.us.us.us, i64 2
  %i.aw = icmp ult ptr %.lcssa, %i.ah
  br i1 %i.aw, label %iter.check112, label %._crit_edge.split.us.us.us, !llvm.loop !139

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ax = zext nneg i32 %i.p to i64
  %.pre = load i32, ptr %i.r, align 8, !tbaa !43  ; 2 uses
  %i.ay = zext i32 %.pre to i64
  %.idx = shl nuw nsw i64 %i.ay, 1
  %.not53 = icmp eq i32 %.pre, 0
  %i.az = zext i8 %.fr50 to i64                   ; 5 uses
  %min.iters.check = icmp ult i8 %.fr50, 4
  %min.iters.check86 = icmp ult i8 %.fr50, 16
  %i.ba = and i64 %i.az, 12
  %n.vec = and i64 %i.az, 240                     ; 5 uses
  %i.bb = trunc nuw nsw i64 %n.vec to i32
  %i.bc = sub nsw i32 %i.j, %i.bb
  %i.bd = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.az
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  %n.vec88 = and i64 %i.az, 252                   ; 4 uses
  %i.be = trunc nuw nsw i64 %n.vec88 to i32
  %i.bf = sub nsw i32 %i.j, %i.be
  %i.bg = shl nuw nsw i64 %n.vec88, 1
  %cmp.n94 = icmp eq i64 %n.vec88, %i.az
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.split.us.us, %.lr.ph.split.us.split
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %._crit_edge.split.us.us ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split.us.us ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx
  br i1 %.not53, label %._crit_edge.split.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv60
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !50
  br label %iter.check

._crit_edge.split.us.us:                          ; preds = %..loopexit_crit_edge.us.us, %bb.b
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.u ; 2 uses
  %8 = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %8, label %bb.b, label %._crit_edge44, !llvm.loop !135

iter.check:                                       ; preds = %.lr.ph.us.us.preheader, %..loopexit_crit_edge.us.us
  %.03339.us.us = phi ptr [ %.lcssa85, %..loopexit_crit_edge.us.us ], [ %i.bi, %.lr.ph.us.us.preheader ] ; 5 uses
  %.03438.us.us = phi ptr [ %i.bx, %..loopexit_crit_edge.us.us ], [ %i.bl, %.lr.ph.us.us.preheader ] ; 2 uses
  %i.bm = load i16, ptr %.03438.us.us, align 2, !tbaa !51 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = getelementptr i8, ptr %.03339.us.us, i64 %i.bd ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bm, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.03339.us.us, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !51
  store <8 x i16> %broadcast.splat, ptr %i.bp, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !144

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.br = getelementptr i8, ptr %.03339.us.us, i64 %i.bg ; 2 uses
  %broadcast.splatinsert89 = insertelement <4 x i16> poison, i16 %i.bm, i64 0
  %broadcast.splat90 = shufflevector <4 x i16> %broadcast.splatinsert89, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.bs = shl i64 %index91, 1
  %next.gep92 = getelementptr i8, ptr %.03339.us.us, i64 %i.bs
  store <4 x i16> %broadcast.splat90, ptr %next.gep92, align 2, !tbaa !51
  %index.next93 = add nuw i64 %index91, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next93, %n.vec88
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n94, label %..loopexit_crit_edge.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03237.us.us.ph = phi i32 [ %i.j, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  %.136.us.us.ph = phi ptr [ %.03339.us.us, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.03237.us.us = phi i32 [ %i.bv, %vec.epilog.scalar.ph ], [ %.03237.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.136.us.us = phi ptr [ %i.bu, %vec.epilog.scalar.ph ], [ %.136.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 2 ; 2 uses
  store i16 %i.bm, ptr %.136.us.us, align 2, !tbaa !51
  %i.bv = add nsw i32 %.03237.us.us, -1
  %i.bw = icmp sgt i32 %.03237.us.us, 1
  br i1 %i.bw, label %vec.epilog.scalar.ph, label %..loopexit_crit_edge.us.us, !llvm.loop !142

..loopexit_crit_edge.us.us:                       ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa85 = phi ptr [ %i.br, %vec.epilog.middle.block ], [ %i.bn, %middle.block ], [ %i.bu, %vec.epilog.scalar.ph ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.03438.us.us, i64 2
  %i.by = icmp ult ptr %.lcssa85, %i.bj
  br i1 %i.by, label %iter.check, label %._crit_edge.split.us.us, !llvm.loop !139

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.c
  %.042.us45 = phi i32 [ %i.cb, %bb.c ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.bz = load i32, ptr %i.r, align 8, !tbaa !43
  %.not52 = icmp eq i32 %i.bz, 0
  br i1 %.not52, label %bb.c, label %.loopexit.preheader

bb.c:                                             ; preds = %.lr.ph.split.split.us
  %i.ca = add nuw nsw i32 %.042.us45, 1
  tail call void @j16copy_sample_rows(ptr noundef %i.c, i32 noundef %.042.us45, ptr noundef %i.c, i32 noundef %i.ca, i32 noundef %i.t, i32 noundef 0) #6
  %i.cb = add nuw nsw i32 %.042.us45, %i.n        ; 2 uses
  %i.cc = load i32, ptr %i.o, align 4, !tbaa !39
  %i.cd = icmp slt i32 %i.cb, %i.cc
  br i1 %i.cd, label %.lr.ph.split.split.us, label %._crit_edge44, !llvm.loop !135

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.ce = load i32, ptr %i.r, align 8, !tbaa !43
  %.not51 = icmp eq i32 %i.ce, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split, %bb.e
  %.042 = phi i32 [ 0, %.lr.ph.split.split ], [ %i.cf, %bb.e ]
  br i1 %.not51, label %bb.e, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %bb.d, %.lr.ph.split.split.us
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %.loopexit
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.cf = add nuw nsw i32 %.042, %i.n             ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %i.p
  br i1 %i.cg, label %bb.d, label %._crit_edge44, !llvm.loop !135

._crit_edge44:                                    ; preds = %._crit_edge.split.us.us, %._crit_edge.split.us.us.us, %bb.e, %bb.c, %bb.a
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @j16copy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !8, i64 0}
!10 = !{!"p1 _ZTS15jpeg_memory_mgr", !8, i64 0}
!11 = !{!"p1 _ZTS17jpeg_progress_mgr", !8, i64 0}
!12 = !{!"p1 _ZTS15jpeg_source_mgr", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"any p2 pointer", !8, i64 0}
!15 = !{!"p2 omnipotent char", !14, i64 0}
!16 = !{!"p1 int", !8, i64 0}
!17 = !{!"short", !4, i64 0}
!18 = !{!"p1 _ZTS18jpeg_marker_struct", !8, i64 0}
!19 = !{!"p1 omnipotent char", !8, i64 0}
!20 = !{!"p1 _ZTS18jpeg_decomp_master", !8, i64 0}
!21 = !{!"p1 _ZTS22jpeg_d_main_controller", !8, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_coef_controller", !8, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_post_controller", !8, i64 0}
!24 = !{!"p1 _ZTS21jpeg_input_controller", !8, i64 0}
!25 = !{!"p1 _ZTS18jpeg_marker_reader", !8, i64 0}
!26 = !{!"p1 _ZTS20jpeg_entropy_decoder", !8, i64 0}
!27 = !{!"p1 _ZTS16jpeg_inverse_dct", !8, i64 0}
!28 = !{!"p1 _ZTS14jpeg_upsampler", !8, i64 0}
!29 = !{!"p1 _ZTS22jpeg_color_deconverter", !8, i64 0}
!30 = !{!"p1 _ZTS20jpeg_color_quantizer", !8, i64 0}
!31 = !{!"jpeg_decompress_struct", !9, i64 0, !10, i64 8, !11, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !13, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !15, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !16, i64 192, !4, i64 200, !4, i64 232, !4, i64 264, !5, i64 296, !8, i64 304, !5, i64 312, !5, i64 316, !4, i64 320, !4, i64 336, !4, i64 352, !5, i64 368, !5, i64 372, !4, i64 376, !4, i64 377, !4, i64 378, !17, i64 380, !17, i64 382, !5, i64 384, !4, i64 388, !5, i64 392, !18, i64 400, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !19, i64 424, !5, i64 432, !4, i64 440, !5, i64 472, !5, i64 476, !5, i64 480, !4, i64 484, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !20, i64 544, !21, i64 552, !22, i64 560, !23, i64 568, !24, i64 576, !25, i64 584, !26, i64 592, !27, i64 600, !28, i64 608, !29, i64 616, !30, i64 624}
!32 = !{!4, !4, i64 0}
!33 = !{!31, !28, i64 608}
!34 = !{!"jpeg_upsampler", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !5, i64 64}
!35 = !{!"", !34, i64 0, !4, i64 72, !4, i64 152, !5, i64 232, !5, i64 236, !4, i64 240, !4, i64 280, !4, i64 290}
!36 = !{!31, !5, i64 56}
!37 = !{!31, !8, i64 304}
!38 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !8, i64 80, !8, i64 88}
!39 = !{!31, !5, i64 412}
!40 = !{!5, !5, i64 0}
!41 = !{!38, !5, i64 40}
!42 = !{!8, !8, i64 0}
!43 = !{!31, !5, i64 136}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!35, !5, i64 232}
!46 = !{!35, !5, i64 236}
!47 = !{!"p2 short", !14, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"p1 short", !8, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!17, !17, i64 0}
!52 = !{!"llvm.loop.isvectorized", i32 1}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = distinct !{!54, !44}
!55 = !{!31, !20, i64 544}
!56 = !{!"jpeg_decomp_master", !8, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 72, !5, i64 112, !5, i64 116, !18, i64 120, !5, i64 128, !5, i64 132, !5, i64 136}
!57 = !{!56, !5, i64 20}
!58 = !{!31, !5, i64 296}
!59 = !{!31, !9, i64 0}
!60 = !{!"long", !4, i64 0}
!61 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !4, i64 44, !5, i64 124, !60, i64 128, !15, i64 136, !5, i64 144, !15, i64 152, !5, i64 160, !5, i64 164}
!62 = !{!61, !5, i64 40}
!63 = !{!61, !8, i64 0}
!64 = !{!56, !5, i64 112}
!65 = !{!31, !10, i64 8}
!66 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !60, i64 88, !60, i64 96}
!67 = !{!66, !8, i64 0}
!68 = !{!35, !8, i64 0}
!69 = !{!35, !8, i64 24}
!70 = !{!35, !5, i64 64}
!71 = !{!31, !5, i64 392}
!72 = !{!31, !5, i64 100}
!73 = !{!31, !5, i64 416}
!74 = !{!38, !5, i64 8}
!75 = !{!38, !5, i64 36}
!76 = !{!38, !5, i64 12}
!77 = !{!31, !5, i64 408}
!78 = !{!38, !5, i64 48}
!79 = !{!66, !8, i64 16}
!80 = !{!31, !5, i64 140}
!81 = distinct !{!81, !44}
!82 = !{!31, !29, i64 616}
!83 = !{!"jpeg_color_deconverter", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!84 = !{!83, !8, i64 24}
!85 = distinct !{!85, !44}
!86 = distinct !{!86, !"LVerDomain"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !44, !52, !53}
!90 = distinct !{!90, !44, !52}
!91 = !{!87}
!92 = !{!88}
!93 = distinct !{!93, !"LVerDomain"}
!94 = distinct !{!94, !93}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !44, !52, !53}
!97 = distinct !{!97, !44, !52}
!98 = distinct !{!98, !44}
!99 = !{!94}
!100 = !{!95}
!101 = distinct !{!101, !44, !52, !53}
!102 = distinct !{!102, !44, !52}
!103 = distinct !{!103, !44, !52, !53}
!104 = distinct !{!104, !44, !52}
!105 = distinct !{!105, !44}
!106 = distinct !{!106, !44}
!107 = distinct !{!107, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !107}
!111 = distinct !{!111, !44, !52, !53}
!112 = distinct !{!112, !44, !52}
!113 = distinct !{!113, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !113}
!117 = distinct !{!117, !44, !52, !53}
!118 = distinct !{!118, !44, !52}
!119 = !{!108}
!120 = !{!109}
!121 = !{!110}
!122 = !{!108, !109}
!123 = !{!114}
!124 = !{!115}
!125 = !{!116}
!126 = !{!114, !115}
!127 = distinct !{!127, !"LVerDomain"}
!128 = distinct !{!128, !127}
!129 = distinct !{!129, !127}
!130 = distinct !{!130, !44, !52, !53}
!131 = distinct !{!131, !44, !52}
!132 = distinct !{!132, !44}
!133 = !{!128}
!134 = !{!129}
!135 = distinct !{!135, !44}
!136 = distinct !{!136, !44, !52, !53}
!137 = distinct !{!137, !44, !52, !53}
!138 = distinct !{!138, !44, !53, !52}
!139 = distinct !{!139, !44}
!140 = distinct !{!140, !44, !52, !53}
!141 = distinct !{!141, !44, !52, !53}
!142 = distinct !{!142, !44, !53, !52}
!143 = !{!38, !5, i64 4}
!144 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
