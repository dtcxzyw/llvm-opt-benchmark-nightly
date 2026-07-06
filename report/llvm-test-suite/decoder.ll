inline.NumInlined: 32
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@Get_Reference_Pixel:bb.a
  %i.adp = add nsw i32 %i.adf, %i.ado
  %i.adq = zext i16 %i.zu to i32
  %i.adr = zext i16 %i.aaa to i32
  %i.ads = mul nsw i32 %i.adr, -5
  %i.adt = add nsw i32 %i.ads, %i.adq
  %i.adu = zext i16 %i.aaf to i32
  %i.adv = mul nuw nsw i32 %i.adu, 20
  %i.adw = add nsw i32 %i.adv, %i.adt
  %i.adx = zext i16 %i.aal to i32
  %i.ady = mul nuw nsw i32 %i.adx, 20
  %i.adz = add nsw i32 %i.ady, %i.adw
  %i.aea = zext i16 %i.aar to i32
  %i.aeb = mul nsw i32 %i.aea, -5
  %i.aec = add nsw i32 %i.aeb, %i.adz
  %i.aed = zext i16 %i.aax to i32
  %i.aee = add nsw i32 %i.aec, %i.aed
  %i.aef = add nsw i32 %i.aee, 16
  %i.aeg = sdiv i32 %i.aef, 32
  %i.aeh = tail call range(i32 0, 536870915) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 536870915) %i.aeg, i32 0)
  %i.aei = tail call range(i32 -2147483648, 536870915) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870915) %i.aeh, i32 %i.aaz)
  %i.aej = add nsw i32 %i.adp, 16
  %i.aek = sdiv i32 %i.aej, 32
  %i.ael = tail call range(i32 0, 536870915) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 536870915) %i.aek, i32 0)
  %i.aem = tail call range(i32 -2147483648, 536870915) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870915) %i.ael, i32 %i.aaz)
  %i.aen = add nsw i32 %i.aem, %i.aei
  %i.aeo = sdiv i32 %i.aen, 2
  br label %bb.q

bb.q:                                             ; preds = %.preheader170.preheader, %bb.h, %bb.d, %bb.f, %bb.e, %bb.l, %bb.k, %bb.n, %bb.o, %bb.p, %bb.i, %bb.j, %bb.b
  %.8 = phi i32 [ %i.x, %bb.b ], [ %i.cj, %bb.e ], [ %i.cs, %bb.f ], [ %i.ch, %bb.d ], [ %i.oo, %bb.i ], [ %i.oz, %bb.j ], [ %i.om, %bb.h ], [ %i.pf, %bb.k ], [ %i.pl, %bb.l ], [ %i.lt, %.preheader170.preheader ], [ %i.za, %bb.n ], [ %i.zg, %bb.o ], [ %i.aeo, %bb.p ]
  %i.aep = trunc i32 %.8 to i8
  ret i8 %i.aep
}

; Function Attrs: nounwind uwtable
define dso_local void @UpdateDecoders() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4728
  %i.c = load i32, ptr %i.b, align 8, !tbaa !77
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %DecOneForthPix.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %DecOneForthPix.exit ], [ 0, %bb.a ] ; 5 uses
  %i.e = load ptr, ptr @decs, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  tail call void @Build_Status_Map(ptr noundef %i.g)
  %i.h = load ptr, ptr @decs, align 8, !tbaa !8   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.s = load ptr, ptr @img, align 8, !tbaa !8    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !75   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %i.w = load i32, ptr %i.v, align 4, !tbaa !74   ; 2 uses
  %i.x = icmp sgt i32 %i.u, 15
  %i.y = icmp sgt i32 %i.w, 15
  %or.cond.i = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond.i, label %.preheader.preheader.i, label %Error_Concealment.exit

.preheader.preheader.i:                           ; preds = %.lr.ph
  %i.z = lshr i32 %i.w, 4
  %i.aa = lshr i32 %i.u, 4
  %wide.trip.count21.i = zext nneg i32 %i.aa to i64
  %wide.trip.count.i = zext nneg i32 %i.z to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv18.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next19.i, %._crit_edge.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv18.i
  %i.ac = trunc nuw nsw i64 %indvars.iv18.i to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !73
  %.not.i = icmp eq i8 %i.af, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call void @Conceal_Error(ptr noundef readonly %i.l, i32 noundef %i.ac, i32 noundef %i.ag, ptr noundef readonly %i.r, ptr noundef nonnull readonly %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !81

._crit_edge.i:                                    ; preds = %bb.d
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %wide.trip.count21.i
  br i1 %exitcond22.not.i, label %Error_Concealment.exit.loopexit, label %.preheader.i, !llvm.loop !82

Error_Concealment.exit.loopexit:                  ; preds = %._crit_edge.i
  %.pre = load ptr, ptr @decs, align 8, !tbaa !8  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre11 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80
  %.phi.trans.insert12 = getelementptr inbounds nuw [8 x i8], ptr %.pre11, i64 %indvars.iv
  %.pre13 = load ptr, ptr %.phi.trans.insert12, align 8, !tbaa !47
  %.pre14 = load ptr, ptr @img, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %.pre14, i64 68
  %.pre16 = load i32, ptr %.phi.trans.insert15, align 4, !tbaa !75
  br label %Error_Concealment.exit

Error_Concealment.exit:                           ; preds = %Error_Concealment.exit.loopexit, %.lr.ph
  %i.ah = phi i32 [ %.pre16, %Error_Concealment.exit.loopexit ], [ %i.u, %.lr.ph ]
  %i.ai = phi ptr [ %.pre14, %Error_Concealment.exit.loopexit ], [ %i.s, %.lr.ph ] ; 3 uses
  %i.aj = phi ptr [ %.pre13, %Error_Concealment.exit.loopexit ], [ %i.l, %.lr.ph ]
  %i.ak = phi ptr [ %.pre, %Error_Concealment.exit.loopexit ], [ %i.h, %.lr.ph ]
  %i.al = icmp sgt i32 %i.ah, 0
  br i1 %i.al, label %.lr.ph.i, label %DecOneForthPix.exit

.lr.ph.i:                                         ; preds = %Error_Concealment.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.aq = load i32, ptr %i.ai, align 8, !tbaa !10
  %i.ar = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %i.as = sub nsw i32 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 15240
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83
  %i.av = srem i32 %i.as, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aw
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i7 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i8, %bb.e ] ; 3 uses
  %i.ay = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.bi, %bb.e ]
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i7
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i7
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 52
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !74
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bb, ptr align 2 %i.bd, i64 %i.bh, i1 false)
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1 ; 2 uses
  %i.bi = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 68
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !75
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next.i8, %i.bl
  br i1 %i.bm, label %bb.e, label %DecOneForthPix.exit, !llvm.loop !84

DecOneForthPix.exit:                              ; preds = %bb.e, %Error_Concealment.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = load ptr, ptr @input, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4728
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !77
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %.lr.ph, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %DecOneForthPix.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Build_Status_Map(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !75   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !74   ; 2 uses
  %i.f = icmp sgt i32 %i.c, 15
  %i.g = icmp sgt i32 %i.e, 15
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge48.split

.preheader.preheader:                             ; preds = %bb.a
  %i.h = lshr i32 %i.e, 4                         ; 2 uses
  %i.i = lshr i32 %i.c, 4
  %i.j = add nsw i32 %i.h, -1
  %i.k = zext i32 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1
  %wide.trip.count57 = zext nneg i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next55, %._crit_edge ] ; 2 uses
  %.047 = phi i32 [ 0, %.preheader.preheader ], [ %.537, %._crit_edge ]
  %.02445 = phi i64 [ 0, %.preheader.preheader ], [ %i.bi, %._crit_edge ] ; 2 uses
  %.02644 = phi i32 [ -1, %.preheader.preheader ], [ %.22834, %._crit_edge ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv54 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %indvars.iv49 = phi i64 [ %.02445, %.preheader ], [ %indvars.iv.next50, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.141 = phi i32 [ %.047, %.preheader ], [ %.537, %bb.f ]
  %.12738 = phi i32 [ %.02644, %.preheader ], [ %.22834, %bb.f ] ; 3 uses
  %i.n = load ptr, ptr @input, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %i.p = load i32, ptr %i.o, align 8, !tbaa !86
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @img, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 14224
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw [536 x i8], ptr %i.s, i64 %indvars.iv49
  %i.u = load i32, ptr %i.t, align 8, !tbaa !88
  %.not29 = icmp eq i32 %i.u, %.12738
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = tail call i32 @rand() #7
  %i.w = load ptr, ptr @input, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4724
  %i.y = load i32, ptr %i.x, align 4, !tbaa !89
  %i.z = tail call i32 @rand() #7
  %i.aa = load ptr, ptr @input, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4720
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !90
  %i.ad = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.ae = insertelement <2 x i32> %i.ad, i32 %i.v, i64 1
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = fdiv nnan <2 x double> %i.af, splat (double f0x41DFFFFFFFC00000)
  %i.ah = fmul nnan <2 x double> %i.ag, splat (double 1.000000e+02)
  %i.ai = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.y, i64 1
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>
  %i.al = fcmp olt <2 x double> %i.ah, %i.ak      ; 2 uses
  %i.am = extractelement <2 x i1> %i.al, i64 1
  %.2 = select i1 %i.am, i32 3, i32 0             ; 2 uses
  %i.an = add nuw nsw i32 %.2, 2
  %i.ao = extractelement <2 x i1> %i.al, i64 0
  %.3 = select i1 %i.ao, i32 %i.an, i32 %.2
  %i.ap = tail call i32 @rand() #7
  %i.aq = sitofp i32 %i.ap to double
  %i.ar = fdiv nnan double %i.aq, f0x41DFFFFFFFC00000
  %i.as = fmul nnan double %i.ar, 1.000000e+02
  %i.at = load ptr, ptr @input, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4716
  %i.av = load i32, ptr %i.au, align 4, !tbaa !91
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fcmp olt double %i.as, %i.aw
  %i.ay = add nsw i32 %.12738, 1                  ; 2 uses
  br i1 %i.ax, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.228 = phi i32 [ %i.ay, %bb.d ], [ %.12738, %bb.c ] ; 2 uses
  %.5 = phi i32 [ %.3, %bb.d ], [ %.141, %bb.c ]  ; 2 uses
  %.not30 = icmp eq i32 %.5, 0
  br i1 %.not30, label %.sink.split, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %.536 = phi i32 [ %.5, %bb.e ], [ 1, %bb.d ]    ; 3 uses
  %.22835 = phi i32 [ %.228, %bb.e ], [ %i.ay, %bb.d ] ; 2 uses
  %i.az = trunc nuw nsw i32 %.536 to i8
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !72
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !73
  %i.bc = load ptr, ptr @input, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4016
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !92
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %.thread, %bb.e
  %.sink = phi i8 [ 0, %bb.e ], [ 1, %.thread ]
  %.537.ph = phi i32 [ 0, %bb.e ], [ %.536, %.thread ]
  %.22834.ph = phi i32 [ %.228, %bb.e ], [ %.22835, %.thread ]
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  store i8 %.sink, ptr %i.bh, align 1, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.thread
  %.537 = phi i32 [ %.536, %.thread ], [ %.537.ph, %.sink.split ] ; 2 uses
  %.22834 = phi i32 [ %.22835, %.thread ], [ %.22834.ph, %.sink.split ] ; 2 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.f
  %i.bi = add nuw nsw i64 %i.l, %.02445
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge48.split, label %.preheader, !llvm.loop !94

._crit_edge48.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Error_Concealment(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !75   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !74   ; 2 uses
  %i.f = icmp sgt i32 %i.c, 15
  %i.g = icmp sgt i32 %i.e, 15
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge16.split

.preheader.preheader:                             ; preds = %bb.a
  %i.h = lshr i32 %i.e, 4
  %i.i = lshr i32 %i.c, 4
  %wide.trip.count21 = zext nneg i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv18 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next19, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv18
  %i.k = trunc nuw nsw i64 %indvars.iv18 to i32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !73
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @Conceal_Error(ptr noundef %0, i32 noundef %i.k, i32 noundef %i.o, ptr noundef %2, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count21
  br i1 %exitcond22.not, label %._crit_edge16.split, label %.preheader, !llvm.loop !82

._crit_edge16.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @DecOneForthPix(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !75
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !10
  %i.f = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %i.g = sub nsw i32 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 15240
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83
  %i.j = srem i32 %i.g, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %1, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.m = phi ptr [ %i.a, %.lr.ph ], [ %i.w, %bb.b ]
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !74
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.p, ptr align 2 %i.r, i64 %i.v, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !75
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @compute_residue_b8block(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = srem i32 %0, 2
  %i.b = shl nsw i32 %i.a, 3                      ; 3 uses
  %i.c = add nsw i32 %i.b, 8                      ; 2 uses
  %i.d = sdiv i32 %0, 2
  %i.e = shl i32 %i.d, 3                          ; 3 uses
  %i.f = add nsw i32 %i.e, 8                      ; 2 uses
  %i.g = icmp sgt i32 %1, -1
  %i.h = load ptr, ptr @enc_picture, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 6440
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 16 uses
  %i.k = load ptr, ptr @img, align 8, !tbaa !8    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 180 ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 176 ; 16 uses
  br i1 %i.g, label %.preheader37, label %.preheader39

.preheader39:                                     ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12624
  %i.o = load ptr, ptr @decs, align 8, !tbaa !8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58   ; 8 uses
  %i.q = sext i32 %i.e to i64                     ; 10 uses
  %i.r = sext i32 %i.f to i64
  %i.s = sext i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.c to i64
  %invariant.gep60 = getelementptr [8 x i8], ptr %i.j, i64 %i.q
  %i.t = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59
  %indvars.iv.next = or disjoint i64 %i.q, 1      ; 4 uses
  %i.v = icmp slt i64 %indvars.iv.next, %i.r
  %i.w = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.x = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %indvars.iv.next.1 = or disjoint i64 %i.q, 2    ; 3 uses
  %i.y = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next.1
  %i.z = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %indvars.iv.next.2 = or disjoint i64 %i.q, 3    ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next.2
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  %indvars.iv.next.3 = or disjoint i64 %i.q, 4    ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next.3
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.3
  %indvars.iv.next.4 = or disjoint i64 %i.q, 5    ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next.4
  %i.af = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.4
  %indvars.iv.next.5 = or disjoint i64 %i.q, 6    ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next.5
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.5
  %indvars.iv.next.6 = or disjoint i64 %i.q, 7    ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next.6
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.6
  br label %.preheader38

.preheader37:                                     ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 4816
  %i.al = zext nneg i32 %1 to i64
  %i.am = getelementptr inbounds nuw [512 x i8], ptr %i.ak, i64 %i.al
  %i.an = load ptr, ptr @decs, align 8, !tbaa !8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !58 ; 8 uses
  %i.ap = sext i32 %i.e to i64                    ; 10 uses
  %i.aq = sext i32 %i.f to i64
  %i.ar = sext i32 %i.b to i64
  %wide.trip.count57 = zext nneg i32 %i.c to i64
  %invariant.gep62 = getelementptr [8 x i8], ptr %i.j, i64 %i.ap
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59
  %indvars.iv.next52 = or disjoint i64 %i.ap, 1   ; 4 uses
  %i.au = icmp slt i64 %indvars.iv.next52, %i.aq
  %i.av = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52
  %indvars.iv.next52.1 = or disjoint i64 %i.ap, 2 ; 3 uses
  %i.ax = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52.1
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52.1
  %indvars.iv.next52.2 = or disjoint i64 %i.ap, 3 ; 3 uses
  %i.az = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52.2
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52.2
  %indvars.iv.next52.3 = or disjoint i64 %i.ap, 4 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52.3
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52.3
  %indvars.iv.next52.4 = or disjoint i64 %i.ap, 5 ; 3 uses
  %i.bd = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52.4
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52.4
  %indvars.iv.next52.5 = or disjoint i64 %i.ap, 6 ; 3 uses
  %i.bf = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52.5
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52.5
  %indvars.iv.next52.6 = or disjoint i64 %i.ap, 7 ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52.6
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52.6
  br label %.preheader

.preheader:                                       ; preds = %.preheader37, %bb.c
end_hunk_0
