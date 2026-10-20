Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ufmt_cmn?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z13ufmt_64tou_78PDsPimhai:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z12ufmt_ptou_78PDsPiPva(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr noundef %2, i8 noundef signext %3) local_unnamed_addr #3 {
.split32.us:
  %.not = icmp eq i8 %3, 0
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = icmp ult ptr %2, inttoptr (i64 -6917529027641081856 to ptr)
  %.6.extract.shift62 = lshr i64 %i.a, 48
  %.6.extract.trunc63 = trunc i64 %.6.extract.shift62 to i8
  %i.c = icmp ult i8 %.6.extract.trunc63, -96
  %. = select i1 %.not, i16 55, i16 87            ; 2 uses
  %i.d = bitcast i64 %i.a to <8 x i8>             ; 3 uses
  %i.e = shufflevector <8 x i8> %i.d, <8 x i8> poison, <8 x i32> <i32 7, i32 7, i32 6, i32 6, i32 5, i32 5, i32 4, i32 4> ; 2 uses
  %i.f = lshr <8 x i8> %i.e, <i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15>
  %i.g = and <8 x i8> %i.e, <i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15> ; 3 uses
  %i.h = shufflevector <8 x i8> %i.f, <8 x i8> %i.g, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 2 uses
  %i.i = extractelement <8 x i8> %i.g, i64 1
  %i.j = icmp samesign ult i8 %i.i, 10
  %i.k = extractelement <8 x i8> %i.g, i64 3
  %i.l = icmp samesign ult i8 %i.k, 10
  %i.m = shufflevector <8 x i8> %i.d, <8 x i8> poison, <4 x i32> <i32 5, i32 5, i32 4, i32 4>
  %i.n = and <4 x i8> %i.m, <i8 -1, i8 15, i8 -1, i8 15>
  %i.o = icmp ult <4 x i8> %i.n, <i8 -96, i8 10, i8 -96, i8 10>
  %i.p = or disjoint <8 x i8> %i.h, splat (i8 48)
  %i.q = trunc nuw nsw i16 %. to i8
  %i.r = insertelement <8 x i8> poison, i8 %i.q, i64 0
  %i.s = shufflevector <8 x i8> %i.r, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.t = add nuw <8 x i8> %i.s, %i.h
  %i.u = insertelement <8 x i1> poison, i1 %i.b, i64 0
  %i.v = insertelement <8 x i1> %i.u, i1 %i.j, i64 1
  %i.w = insertelement <8 x i1> %i.v, i1 %i.c, i64 2
  %i.x = insertelement <8 x i1> %i.w, i1 %i.l, i64 3
  %i.y = shufflevector <4 x i1> %i.o, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.z = shufflevector <8 x i1> %i.x, <8 x i1> %i.y, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aa = select <8 x i1> %i.z, <8 x i8> %i.p, <8 x i8> %i.t
  %i.ab = zext <8 x i8> %i.aa to <8 x i16>
  store <8 x i16> %i.ab, ptr %0, align 2, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = shufflevector <8 x i8> %i.d, <8 x i8> poison, <8 x i32> <i32 3, i32 3, i32 2, i32 2, i32 1, i32 1, i32 0, i32 0> ; 3 uses
  %i.ae = and <8 x i8> %i.ad, <i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15>
  %i.af = lshr <8 x i8> %i.ad, <i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15>
  %i.ag = and <8 x i8> %i.ad, <i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15>
  %i.ah = shufflevector <8 x i8> %i.af, <8 x i8> %i.ag, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 2 uses
  %i.ai = icmp ult <8 x i8> %i.ae, <i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10>
  %i.aj = or disjoint <8 x i8> %i.ah, splat (i8 48)
  %i.ak = trunc nuw nsw i16 %. to i8
  %i.al = insertelement <8 x i8> poison, i8 %i.ak, i64 0
  %i.am = shufflevector <8 x i8> %i.al, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.an = add nuw <8 x i8> %i.am, %i.ah
  %i.ao = select <8 x i1> %i.ai, <8 x i8> %i.aj, <8 x i8> %i.an
  %i.ap = zext <8 x i8> %i.ao to <8 x i16>
  store <8 x i16> %i.ap, ptr %i.ac, align 2, !tbaa !9
  store i32 16, ptr %1, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @_Z13ufmt_uto64_78PKDsPia(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(none) %1, i8 noundef signext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !11
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [2 x i8], ptr %0, i64 %i.b
  %i.d = load i16, ptr %0, align 2, !tbaa !9      ; 3 uses
  %i.e = add i16 %i.d, -48
  %or.cond.i.i16 = icmp ult i16 %i.e, 10
  %i.f = and i16 %i.d, -33
  %i.g = add i16 %i.f, -65
  %i.h = icmp ult i16 %i.g, 26
  %or.cond20.i.i17 = or i1 %or.cond.i.i16, %i.h
  br i1 %or.cond20.i.i17, label %_Z15ufmt_isdigit_78Dsi.exit.lr.ph, label %_Z15ufmt_isdigit_78Dsi.exit.thread

_Z15ufmt_isdigit_78Dsi.exit.lr.ph:                ; preds = %bb.a
  %i.i = sext i8 %2 to i32
  %i.j = sext i8 %2 to i64
  br label %_Z15ufmt_isdigit_78Dsi.exit

_Z15ufmt_isdigit_78Dsi.exit:                      ; preds = %_Z15ufmt_isdigit_78Dsi.exit.lr.ph, %_Z18ufmt_digitvalue_78Ds.exit
  %i.k = phi i16 [ %i.d, %_Z15ufmt_isdigit_78Dsi.exit.lr.ph ], [ %i.ac, %_Z18ufmt_digitvalue_78Ds.exit ] ; 4 uses
  %.020 = phi i64 [ 0, %_Z15ufmt_isdigit_78Dsi.exit.lr.ph ], [ %i.aa, %_Z18ufmt_digitvalue_78Ds.exit ] ; 2 uses
  %.01319 = phi i32 [ 0, %_Z15ufmt_isdigit_78Dsi.exit.lr.ph ], [ %i.ab, %_Z18ufmt_digitvalue_78Ds.exit ] ; 2 uses
  %.01418 = phi ptr [ %0, %_Z15ufmt_isdigit_78Dsi.exit.lr.ph ], [ %i.w, %_Z18ufmt_digitvalue_78Ds.exit ] ; 2 uses
  %i.l = zext nneg i16 %i.k to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = icmp samesign ugt i16 %i.k, 64           ; 2 uses
  %i.o = icmp samesign ugt i16 %i.k, 96           ; 2 uses
  %.neg.i.i = select i1 %i.o, i32 -39, i32 -7
  %.neg18.i.i = select i1 %i.n, i32 %.neg.i.i, i32 0
  %i.p = add nsw i32 %i.m, %.neg18.i.i            ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.i
  %i.r = icmp sgt i32 %i.p, -1
  %i.s = and i1 %i.q, %i.r
  %i.t = icmp ult ptr %.01418, %i.c
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %_Z18ufmt_digitvalue_78Ds.exit, label %_Z15ufmt_isdigit_78Dsi.exit.thread

_Z18ufmt_digitvalue_78Ds.exit:                    ; preds = %_Z15ufmt_isdigit_78Dsi.exit
  %i.v = mul i64 %.020, %i.j
  %i.w = getelementptr inbounds nuw i8, ptr %.01418, i64 2 ; 2 uses
  %i.x = zext i16 %i.k to i64
  %.neg.i = select i1 %i.o, i64 -39, i64 -7
  %.neg18.i = select i1 %i.n, i64 %.neg.i, i64 0
  %i.y = add i64 %i.v, -48
  %i.z = add i64 %i.y, %i.x
  %i.aa = add i64 %i.z, %.neg18.i                 ; 2 uses
  %i.ab = add nuw nsw i32 %.01319, 1              ; 2 uses
  %i.ac = load i16, ptr %i.w, align 2, !tbaa !9   ; 3 uses
  %i.ad = add i16 %i.ac, -48
  %or.cond.i.i = icmp ult i16 %i.ad, 10
  %i.ae = and i16 %i.ac, -33
  %i.af = add i16 %i.ae, -65
  %i.ag = icmp ult i16 %i.af, 26
  %or.cond20.i.i = or i1 %or.cond.i.i, %i.ag
  br i1 %or.cond20.i.i, label %_Z15ufmt_isdigit_78Dsi.exit, label %_Z15ufmt_isdigit_78Dsi.exit.thread, !llvm.loop !18

_Z15ufmt_isdigit_78Dsi.exit.thread:               ; preds = %_Z15ufmt_isdigit_78Dsi.exit, %_Z18ufmt_digitvalue_78Ds.exit, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ %i.ab, %_Z18ufmt_digitvalue_78Ds.exit ], [ %.01319, %_Z15ufmt_isdigit_78Dsi.exit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aa, %_Z18ufmt_digitvalue_78Ds.exit ], [ %.020, %_Z15ufmt_isdigit_78Dsi.exit ]
  store i32 %.013.lcssa, ptr %1, align 4, !tbaa !11
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z12ufmt_utop_78PKDsPi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %union.anon, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store ptr null, ptr %2, align 8, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.b = load i16, ptr %i.a, align 2, !tbaa !9    ; 2 uses
  %i.c = icmp eq i16 %i.b, 48
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext i16 %i.b to i32
  %i.e = tail call signext i8 @u_isspace_78(i32 noundef %i.d)
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.c
  %indvars56.le = trunc i64 %indvars.iv to i32    ; 4 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.g = icmp sgt i32 %i.f, %indvars56.le
  br i1 %i.g, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

.critedge:                                        ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !19

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv57 = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next58, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv57
  %i.i = load i16, ptr %i.h, align 2, !tbaa !9    ; 5 uses
  %i.j = add i16 %i.i, -48
  %or.cond.i.i = icmp ult i16 %i.j, 10
  %i.k = and i16 %i.i, -33
  %i.l = add i16 %i.k, -65
  %i.m = icmp ult i16 %i.l, 26
  %or.cond20.i.i = or i1 %or.cond.i.i, %i.m
  br i1 %or.cond20.i.i, label %_Z15ufmt_isdigit_78Dsi.exit, label %.critedge2.loopexit.split.loop.exit

_Z15ufmt_isdigit_78Dsi.exit:                      ; preds = %.lr.ph
  %i.n = zext nneg i16 %i.i to i32
  %i.o = add nsw i32 %i.n, -48
  %i.p = icmp samesign ugt i16 %i.i, 64
  %i.q = icmp samesign ugt i16 %i.i, 96
  %.neg.i.i = select i1 %i.q, i32 -39, i32 -7
  %.neg18.i.i = select i1 %i.p, i32 %.neg.i.i, i32 0
  %i.r = add nsw i32 %i.o, %.neg18.i.i
  %i.s = icmp ugt i32 %i.r, 15
  br i1 %i.s, label %.critedge2.loopexit.split.loop.exit68, label %bb.d

bb.d:                                             ; preds = %_Z15ufmt_isdigit_78Dsi.exit
  %indvars.iv.next58 = add nuw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !20

.critedge2.loopexit.split.loop.exit:              ; preds = %.lr.ph
  %i.t = trunc nuw nsw i64 %indvars.iv57 to i32
  br label %.critedge2

.critedge2.loopexit.split.loop.exit68:            ; preds = %_Z15ufmt_isdigit_78Dsi.exit
  %i.u = trunc nuw nsw i64 %indvars.iv57 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.d, %.critedge2.loopexit.split.loop.exit, %.critedge2.loopexit.split.loop.exit68, %.preheader
  %.133.lcssa = phi i32 [ %indvars56.le, %.preheader ], [ %i.u, %.critedge2.loopexit.split.loop.exit68 ], [ %i.t, %.critedge2.loopexit.split.loop.exit ], [ %i.f, %bb.d ] ; 5 uses
  %i.v = sub nsw i32 %.133.lcssa, %indvars56.le
  %i.w = icmp sgt i32 %i.v, 16
  %i.x = add nsw i32 %.133.lcssa, -16
  %spec.select = select i1 %i.w, i32 %i.x, i32 %indvars56.le ; 3 uses
  store i32 %.133.lcssa, ptr %1, align 4, !tbaa !11
  %3 = add nsw i32 %.133.lcssa, -1                ; 2 uses
  %.not3750 = icmp slt i32 %3, %spec.select
  br i1 %.not3750, label %._crit_edge, label %.lr.ph53

.lr.ph53:                                         ; preds = %.critedge2, %bb.f
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.f ], [ 0, %.critedge2 ] ; 2 uses
  %.251.a = phi i32 [ %4, %bb.f ], [ %3, %.critedge2 ] ; 3 uses
  %.251 = phi i32 [ %.3, %bb.f ], [ %.133.lcssa, %.critedge2 ]
  %i.y = sext i32 %.251.a to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %0, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !9   ; 5 uses
  %i.ab = add i16 %i.aa, -48
  %or.cond.i = icmp ult i16 %i.ab, 10
  %i.ac = and i16 %i.aa, -33
  %i.ad = add i16 %i.ac, -65
  %i.ae = icmp ult i16 %i.ad, 26
  %or.cond20.i = or i1 %or.cond.i, %i.ae
  br i1 %or.cond20.i, label %bb.e, label %_Z18ufmt_digitvalue_78Ds.exit

bb.e:                                             ; preds = %.lr.ph53
  %i.af = trunc i16 %i.aa to i8
  %i.ag = add i8 %i.af, -48
  %i.ah = icmp samesign ugt i16 %i.aa, 64
  %i.ai = icmp samesign ugt i16 %i.aa, 96
  %.neg.i = select i1 %i.ai, i8 -39, i8 -7
  %.neg18.i = select i1 %i.ah, i8 %.neg.i, i8 0
  %i.aj = add i8 %i.ag, %.neg18.i
  br label %_Z18ufmt_digitvalue_78Ds.exit

_Z18ufmt_digitvalue_78Ds.exit:                    ; preds = %.lr.ph53, %bb.e
  %.0.i = phi i8 [ %i.aj, %bb.e ], [ -1, %.lr.ph53 ] ; 2 uses
  %i.ak = icmp sgt i32 %.251.a, %spec.select
  br i1 %i.ak, label %_Z18ufmt_digitvalue_78Ds.exit43, label %bb.f

_Z18ufmt_digitvalue_78Ds.exit43:                  ; preds = %_Z18ufmt_digitvalue_78Ds.exit
  %i.al = add nsw i32 %.251, -2                   ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %0, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !9  ; 4 uses
  %i.ap = add i16 %i.ao, -48
  %or.cond.i38 = icmp ult i16 %i.ap, 10
  %i.aq = and i16 %i.ao, -33
  %i.ar = add i16 %i.aq, -65
  %i.as = icmp ult i16 %i.ar, 26
  %or.cond20.i39 = or i1 %or.cond.i38, %i.as
  %i.at = trunc i16 %i.ao to i8
  %i.au = icmp samesign ugt i16 %i.ao, 64
  %.neg18.i42 = select i1 %i.au, i8 9, i8 0
  %i.av = add i8 %.neg18.i42, %i.at
  %i.aw = shl i8 %i.av, 4
  %.0.i40 = select i1 %or.cond20.i39, i8 %i.aw, i8 -16
  %i.ax = add i8 %.0.i40, %.0.i
  br label %bb.f

bb.f:                                             ; preds = %_Z18ufmt_digitvalue_78Ds.exit43, %_Z18ufmt_digitvalue_78Ds.exit
  %.3 = phi i32 [ %i.al, %_Z18ufmt_digitvalue_78Ds.exit43 ], [ %.251.a, %_Z18ufmt_digitvalue_78Ds.exit ] ; 2 uses
  %.0.in = phi i8 [ %i.ax, %_Z18ufmt_digitvalue_78Ds.exit43 ], [ %.0.i, %_Z18ufmt_digitvalue_78Ds.exit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv60
  store i8 %.0.in, ptr %i.ay, align 1, !tbaa !22
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %4 = add nsw i32 %.3, -1                        ; 2 uses
  %.not37 = icmp slt i32 %4, %spec.select
  br i1 %.not37, label %._crit_edge.loopexit, label %.lr.ph53, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load ptr, ptr %2, align 8, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge2
  %i.az = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %.critedge2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret ptr %i.az
}

declare signext i8 @u_isspace_78(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z26ufmt_defaultCPToUnicode_78PKciPDsi(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !27
  %i.d = call ptr @u_getDefaultConverter_78(ptr noundef nonnull %i.c) ; 3 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !27
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %1, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9
  %i.j = trunc i64 %i.i to i32
  %i.k = add nsw i32 %i.j, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010 = phi i32 [ %i.k, %bb.c ], [ %1, %bb.b ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %2, ptr %i.b, align 8, !tbaa !29
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %2, i64 %i.l
  %i.n = sext i32 %.010 to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -1
  call void @ucnv_toUnicode_78(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.p, ptr noundef null, i8 noundef signext 1, ptr noundef nonnull %i.c)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !29
  store i16 0, ptr %i.q, align 2, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @u_releaseDefaultConverter_78(ptr noundef nonnull %i.d)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi ptr [ %2, %bb.f ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret ptr %.0
}

declare ptr @u_getDefaultConverter_78(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare void @ucnv_toUnicode_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #5

declare void @u_releaseDefaultConverter_78(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"char16_t", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!5, !5, i64 0}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10, !16, !17}
!14 = distinct !{!14, !10, !17, !16}
!15 = distinct !{!15, !10}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{!4, !4, i64 0}
!23 = !{!"any pointer", !4, i64 0}
!24 = !{!"p1 omnipotent char", !23, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"_ZTS10UErrorCode", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"p1 char16_t", !23, i64 0}
!29 = !{!28, !28, i64 0}
end_hunk_0
