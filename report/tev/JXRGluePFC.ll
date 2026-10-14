Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/JXRGluePFC?download=true
inline.NumInlined: 75
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Gray32Float_Gray16Half:bb.a
  %i.m = bitcast float %i.l to i32                ; 3 uses
  %i.n = fcmp uno float %i.l, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = trunc i32 %i.m to i16
  %i.p = or i16 %i.o, 32767
  br label %Convert_Float_To_Half.exit

bb.d:                                             ; preds = %bb.b
  %i.q = fcmp olt float %i.l, -6.550400e+04
  br i1 %i.q, label %Convert_Float_To_Half.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = fcmp ogt float %i.l, 6.550400e+04
  br i1 %i.r, label %Convert_Float_To_Half.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call float @llvm.fabs.f32(float %i.l)
  %or.cond.i = fcmp olt float %i.s, f0x38800000
  %i.t = lshr i32 %i.m, 16                        ; 2 uses
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = trunc nuw i32 %i.t to i16
  %i.v = and i16 %i.u, -32768
  br label %Convert_Float_To_Half.exit

bb.h:                                             ; preds = %bb.f
  %i.w = and i32 %i.t, 32768
  %i.x = lshr i32 %i.m, 13                        ; 2 uses
  %i.y = and i32 %i.x, 64512
  %i.z = add nuw nsw i32 %i.y, 16384
  %i.aa = and i32 %i.x, 1023
  %i.ab = or disjoint i32 %i.aa, %i.w
  %i.ac = or i32 %i.ab, %i.z
  %i.ad = trunc i32 %i.ac to i16
  br label %Convert_Float_To_Half.exit

Convert_Float_To_Half.exit:                       ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %bb.h
  %.0.i = phi i16 [ %i.p, %bb.c ], [ %i.ad, %bb.h ], [ -1025, %bb.d ], [ %i.v, %bb.g ], [ 31743, %bb.e ]
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv
  store i16 %.0.i, ptr %i.ae, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !136

._crit_edge:                                      ; preds = %Convert_Float_To_Half.exit
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge21.split, label %.lr.ph, !llvm.loop !137

._crit_edge21.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGB555_RGB24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = zext nneg i32 %i.d to i64                ; 3 uses
  %i.h = zext nneg i32 %i.b to i64
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %indvars.iv.next.prol = add nsw i64 %i.g, -1    ; 3 uses
  %i.i = mul nuw nsw i64 %indvars.iv.next.prol, 3
  %i.j = icmp eq i32 %i.d, 1
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %i.k = icmp samesign ugt i64 %indvars.iv32, 1
  br i1 %i.k, label %.lr.ph, label %._crit_edge.split, !llvm.loop !138

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %indvars.iv32 = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next33, %..loopexit_crit_edge ] ; 2 uses
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, -1 ; 2 uses
  %i.l = trunc nuw nsw i64 %indvars.iv.next33 to i32
  %i.m = mul i32 %3, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.n ; 6 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next.prol
  %i.q = load i16, ptr %i.p, align 2, !tbaa !27   ; 3 uses
  %i.r = lshr i16 %i.q, 7
  %i.s = trunc i16 %i.r to i8
  %i.t = and i8 %i.s, -8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i ; 3 uses
  store i8 %i.t, ptr %i.u, align 1, !tbaa !18
  %i.v = lshr i16 %i.q, 2
  %i.w = trunc i16 %i.v to i8
  %i.x = and i8 %i.w, -8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !18
  %.tr.prol = trunc i16 %i.q to i8
  %i.z = shl i8 %.tr.prol, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !18
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %i.j, label %..loopexit_crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !27 ; 3 uses
  %i.ad = lshr i16 %i.ac, 7
  %i.ae = trunc i16 %i.ad to i8
  %i.af = and i8 %i.ae, -8
  %i.ag = mul nuw nsw i64 %indvars.iv.next, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ag ; 3 uses
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !18
  %i.ai = lshr i16 %i.ac, 2
  %i.aj = trunc i16 %i.ai to i8
  %i.ak = and i8 %i.aj, -8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !18
  %.tr = trunc i16 %i.ac to i8
  %i.am = shl i8 %.tr, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %i.am, ptr %i.an, align 1, !tbaa !18
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next.1
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !27 ; 3 uses
  %i.aq = lshr i16 %i.ap, 7
  %i.ar = trunc i16 %i.aq to i8
  %i.as = and i8 %i.ar, -8
  %i.at = mul nuw nsw i64 %indvars.iv.next.1, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.at ; 3 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !18
  %i.av = lshr i16 %i.ap, 2
  %i.aw = trunc i16 %i.av to i8
  %i.ax = and i8 %i.aw, -8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !18
  %.tr.1 = trunc i16 %i.ap to i8
  %i.az = shl i8 %.tr.1, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !18
  %i.bb = icmp sgt i64 %indvars.iv, 2
  br i1 %i.bb, label %.lr.ph.new, label %..loopexit_crit_edge, !llvm.loop !139

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGB101010_RGB48(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = zext nneg i32 %i.d to i64                ; 5 uses
  %i.h = zext nneg i32 %i.b to i64
  %min.iters.check = icmp ult i32 %i.d, 4
  %n.vec = and i64 %i.g, 2147483644               ; 2 uses
  %i.i = and i64 %i.g, 3
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %i.j = icmp samesign ugt i64 %indvars.iv32, 1
  br i1 %i.j, label %.lr.ph, label %._crit_edge.split, !llvm.loop !140

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %indvars.iv32 = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next33, %..loopexit_crit_edge ] ; 2 uses
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, -1 ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv.next33 to i32
  %i.l = mul i32 %3, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.o = xor i64 %index, -1
  %i.p = add i64 %i.o, %i.g                       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -12
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !21 ; 2 uses
  %i.s = mul nuw nsw i64 %i.p, 6
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -18
  %i.v = trunc <4 x i32> %wide.load to <4 x i16>
  %reverse38 = shl <4 x i16> %i.v, splat (i16 6)
  %4 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %5 = lshr <8 x i32> %4, <i32 14, i32 14, i32 14, i32 14, i32 4, i32 4, i32 4, i32 4>
  %i.w = trunc <8 x i32> %5 to <8 x i16>
  %i.x = and <8 x i16> %i.w, splat (i16 -64)
  %i.y = shufflevector <4 x i16> %reverse38, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x i16> %i.x, <8 x i16> %i.y, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i16> %interleaved.vec, ptr %i.u, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21 ; 3 uses
  %i.ac = lshr i32 %i.ab, 14
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = and i16 %i.ad, -64
  %.idx = mul nuw nsw i64 %indvars.iv.next, 6
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx ; 3 uses
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !27
  %i.ag = lshr i32 %i.ab, 4
  %i.ah = trunc i32 %i.ag to i16
  %i.ai = and i16 %i.ah, -64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !27
  %.tr = trunc i32 %i.ab to i16
  %i.ak = shl i16 %.tr, 6
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !27
  %i.am = icmp sgt i64 %indvars.iv, 1
  br i1 %i.am, label %scalar.ph, label %..loopexit_crit_edge, !llvm.loop !142

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGB24_RGB555(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge28.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count33 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv30 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next31, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv30 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 10 uses
  %i.k = mul nuw nsw i64 %index, 3
  %i.l = mul nuw i64 %index, 3
  %i.m = mul nuw i64 %index, 3
  %i.n = mul nuw i64 %index, 3
  %i.o = mul nuw i64 %index, 3
  %i.p = mul nuw i64 %index, 3
  %i.q = mul nuw i64 %index, 3
  %i.r = mul nuw i64 %index, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 18
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 21
  %i.ah = load i8, ptr %i.s, align 1, !tbaa !18
  %i.ai = load i8, ptr %i.u, align 1, !tbaa !18
  %i.aj = load i8, ptr %i.w, align 1, !tbaa !18
  %i.ak = load i8, ptr %i.y, align 1, !tbaa !18
  %i.al = load i8, ptr %i.aa, align 1, !tbaa !18
  %i.am = load i8, ptr %i.ac, align 1, !tbaa !18
  %i.an = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.ao = load i8, ptr %i.ag, align 1, !tbaa !18
  %i.ap = insertelement <8 x i8> poison, i8 %i.ah, i64 0
  %i.aq = insertelement <8 x i8> %i.ap, i8 %i.ai, i64 1
  %i.ar = insertelement <8 x i8> %i.aq, i8 %i.aj, i64 2
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ak, i64 3
  %i.at = insertelement <8 x i8> %i.as, i8 %i.al, i64 4
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 5
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 6
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 19
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 22
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !18
  %i.bg = load i8, ptr %i.ay, align 1, !tbaa !18
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !18
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !18
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !18
  %i.bl = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bm = load i8, ptr %i.be, align 1, !tbaa !18
  %i.bn = insertelement <8 x i8> poison, i8 %i.bf, i64 0
  %i.bo = insertelement <8 x i8> %i.bn, i8 %i.bg, i64 1
  %i.bp = insertelement <8 x i8> %i.bo, i8 %i.bh, i64 2
  %i.bq = insertelement <8 x i8> %i.bp, i8 %i.bi, i64 3
  %i.br = insertelement <8 x i8> %i.bq, i8 %i.bj, i64 4
  %i.bs = insertelement <8 x i8> %i.br, i8 %i.bk, i64 5
  %i.bt = insertelement <8 x i8> %i.bs, i8 %i.bl, i64 6
  %i.bu = insertelement <8 x i8> %i.bt, i8 %i.bm, i64 7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.af, i64 23
  %i.cd = load i8, ptr %i.bv, align 1, !tbaa !18
  %i.ce = load i8, ptr %i.bw, align 1, !tbaa !18
  %i.cf = load i8, ptr %i.bx, align 1, !tbaa !18
  %i.cg = load i8, ptr %i.by, align 1, !tbaa !18
  %i.ch = load i8, ptr %i.bz, align 1, !tbaa !18
  %i.ci = load i8, ptr %i.ca, align 1, !tbaa !18
  %i.cj = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.ck = load i8, ptr %i.cc, align 1, !tbaa !18
  %i.cl = insertelement <8 x i8> poison, i8 %i.cd, i64 0
  %i.cm = insertelement <8 x i8> %i.cl, i8 %i.ce, i64 1
  %i.cn = insertelement <8 x i8> %i.cm, i8 %i.cf, i64 2
  %i.co = insertelement <8 x i8> %i.cn, i8 %i.cg, i64 3
  %i.cp = insertelement <8 x i8> %i.co, i8 %i.ch, i64 4
  %i.cq = insertelement <8 x i8> %i.cp, i8 %i.ci, i64 5
  %i.cr = insertelement <8 x i8> %i.cq, i8 %i.cj, i64 6
  %i.cs = insertelement <8 x i8> %i.cr, i8 %i.ck, i64 7
  %i.ct = and <8 x i8> %i.aw, splat (i8 -8)
  %i.cu = zext <8 x i8> %i.ct to <8 x i16>
  %i.cv = shl nuw nsw <8 x i16> %i.cu, splat (i16 7)
  %i.cw = and <8 x i8> %i.bu, splat (i8 -8)
  %i.cx = zext <8 x i8> %i.cw to <8 x i16>
  %i.cy = shl nuw nsw <8 x i16> %i.cx, splat (i16 2)
  %i.cz = or disjoint <8 x i16> %i.cy, %i.cv
  %i.da = lshr <8 x i8> %i.cs, splat (i8 3)
  %i.db = zext nneg <8 x i8> %i.da to <8 x i16>
  %i.dc = or disjoint <8 x i16> %i.cz, %i.db
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index
  store <8 x i16> %i.dc, ptr %i.dd, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.df = mul nuw nsw i64 %indvars.iv, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !18
  %i.dj = load <2 x i8>, ptr %i.dg, align 1, !tbaa !18
  %i.dk = and <2 x i8> %i.dj, splat (i8 -8)
  %i.dl = zext <2 x i8> %i.dk to <2 x i16>
  %i.dm = shl nuw nsw <2 x i16> %i.dl, <i16 7, i16 2> ; 2 uses
  %shift = shufflevector <2 x i16> %i.dm, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i16> %shift, %i.dm
  %i.dn = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.do = lshr i8 %i.di, 3
  %i.dp = zext nneg i8 %i.do to i16
  %i.dq = or disjoint i16 %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !27
end_hunk_0
