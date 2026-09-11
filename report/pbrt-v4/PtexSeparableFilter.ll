Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexSeparableFilter?download=true
inline.NumInlined: 167
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4Ptex4v2_419PtexSeparableFilter5applyERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoE:bb.a
scalar.ph255.prol:                                ; preds = %scalar.ph255.preheader, %scalar.ph255.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph255.prol ], [ %indvars.iv.ph, %scalar.ph255.preheader ] ; 3 uses
  %prol.iter287 = phi i64 [ %prol.iter287.next, %scalar.ph255.prol ], [ 0, %scalar.ph255.preheader ]
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv.prol
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !41
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.prol ; 2 uses
  %i.td = load float, ptr %i.tc, align 4, !tbaa !41
  %i.te = fadd float %i.tb, %i.td
  store float %i.te, ptr %i.tc, align 4, !tbaa !41
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter287.next = add i64 %prol.iter287, 1   ; 2 uses
  %prol.iter287.cmp.not = icmp eq i64 %prol.iter287.next, %xtraiter285
  br i1 %prol.iter287.cmp.not, label %scalar.ph255.prol.loopexit, label %scalar.ph255.prol, !llvm.loop !103

scalar.ph255.prol.loopexit:                       ; preds = %scalar.ph255.prol, %scalar.ph255.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph255.preheader ], [ %indvars.iv.next.prol, %scalar.ph255.prol ]
  %i.tf = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.tg = icmp ugt i64 %i.tf, -4
  br i1 %i.tg, label %_ZN4Ptex4v2_419PtexSeparableKernel10applyConstEPfPvNS0_8DataTypeEi.exit.thread143, label %scalar.ph255

scalar.ph255:                                     ; preds = %scalar.ph255.prol.loopexit, %scalar.ph255
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph255 ], [ %indvars.iv.unr, %scalar.ph255.prol.loopexit ] ; 6 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv
  %i.ti = load float, ptr %i.th, align 4, !tbaa !41
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv ; 2 uses
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !41
  %i.tl = fadd float %i.ti, %i.tk
  store float %i.tl, ptr %i.tj, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv.next
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !41
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.next ; 2 uses
  %i.tp = load float, ptr %i.to, align 4, !tbaa !41
  %i.tq = fadd float %i.tn, %i.tp
  store float %i.tq, ptr %i.to, align 4, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv.next.1
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !41
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.next.1 ; 2 uses
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !41
  %i.tv = fadd float %i.ts, %i.tu
  store float %i.tv, ptr %i.tt, align 4, !tbaa !41
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv.next.2
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !41
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.next.2 ; 2 uses
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !41
  %i.ua = fadd float %i.tx, %i.tz
  store float %i.ua, ptr %i.ty, align 4, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_ZN4Ptex4v2_419PtexSeparableKernel10applyConstEPfPvNS0_8DataTypeEi.exit.thread143, label %scalar.ph255, !llvm.loop !104

_ZN4Ptex4v2_419PtexSeparableKernel10applyConstEPfPvNS0_8DataTypeEi.exit.thread143: ; preds = %scalar.ph255.prol.loopexit, %scalar.ph255, %middle.block265, %bb.ar, %_ZN4Ptex4v2_419PtexSeparableKernel5applyEPfPvNS0_8DataTypeEii.exit121, %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit.i
  %i.ub = load ptr, ptr %i.dx, align 8, !tbaa !26
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ud = load ptr, ptr %i.uc, align 8
  invoke void %i.ud(ptr noundef nonnull align 8 dereferenceable(8) %i.dx)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit123 unwind label %bb.as

bb.as:                                            ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel10applyConstEPfPvNS0_8DataTypeEi.exit.thread143
  %i.ue = landingpad { ptr, i32 }
          catch ptr null
  %i.uf = extractvalue { ptr, i32 } %i.ue, 0
  call void @__clang_call_terminate(ptr %i.uf) #10
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit123: ; preds = %bb.g, %_ZN4Ptex4v2_419PtexSeparableKernel10applyConstEPfPvNS0_8DataTypeEi.exit.thread143, %bb.a, %bb.b
  ret void

bb.at:                                            ; preds = %bb.h, %bb.u, %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit, %bb.v
  %.pn84 = phi { ptr, i32 } [ %i.dy, %bb.h ], [ %i.jt, %bb.u ], [ %.pn.pn, %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit ], [ %i.ju, %bb.v ]
  %i.ug = load ptr, ptr %i.dx, align 8, !tbaa !26
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8
  invoke void %i.ui(ptr noundef nonnull align 8 dereferenceable(8) %i.dx)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit125 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.uj = landingpad { ptr, i32 }
          catch ptr null
  %i.uk = extractvalue { ptr, i32 } %i.uj, 0
  call void @__clang_call_terminate(ptr %i.uk) #10
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit125: ; preds = %bb.at
  resume { ptr, i32 } %.pn84
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_419PtexSeparableKernel6splitTERS1_(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(124) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !48   ; 5 uses
  %i.e = add nsw i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = zext nneg i8 %i.g to i32
  %.neg = shl nsw i32 -1, %i.h
  %i.i = add i32 %i.e, %.neg                      ; 4 uses
  %i.j = icmp slt i32 %i.i, %i.d
  %.sroa.0.0.copyload = load i16, ptr %0, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = sext i32 %i.d to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  %i.u = sext i32 %i.i to i64                     ; 2 uses
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.v
  store i16 %.sroa.0.0.copyload, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.l, ptr %i.x, align 4, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.n, ptr %i.z, align 4, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.i, ptr %i.aa, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = sext i32 %i.n to i64
  %i.ad = shl nsw i64 %i.ac, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 4 %i.p, i64 %i.ad, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.af = shl nsw i64 %i.u, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 4 %i.w, i64 %i.af, i1 false)
  %i.ag = load i32, ptr %i.c, align 8, !tbaa !48
  %i.ah = sub nsw i32 %i.ag, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !40
  store i16 %.sroa.0.0.copyload, ptr %1, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.l, ptr %i.ak, align 4, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.al, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.n, ptr %i.am, align 4, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.d, ptr %i.an, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ap = sext i32 %i.n to i64
  %i.aq = shl nsw i64 %i.ap, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 4 %i.p, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.as = sext i32 %i.d to i64
  %i.at = shl nsw i64 %i.as, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 4 %i.r, i64 %i.at, i1 false)
  %i.au = load i8, ptr %i.f, align 1, !tbaa !55
  %i.av = zext nneg i8 %i.au to i32
  %.neg8 = shl nsw i32 -1, %i.av
  %i.aw = add i32 %.neg8, %i.b
  store i32 %i.aw, ptr %i.al, align 8, !tbaa !49
  store i32 0, ptr %i.a, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink10 = phi ptr [ %i.ab, %bb.b ], [ %i.ao, %bb.c ]
  %.sink9 = phi ptr [ %i.ae, %bb.b ], [ %i.ar, %bb.c ]
  %.sink = phi i32 [ 0, %bb.b ], [ %i.aj, %bb.c ]
  %storemerge = phi i32 [ %i.ah, %bb.b ], [ 0, %bb.c ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sink10, ptr %i.ax, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.sink9, ptr %i.ay, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 %.sink, ptr %i.az, align 8, !tbaa !40
  store i32 %storemerge, ptr %i.c, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_419PtexSeparableFilter13applyToCornerERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 5 uses
  %i.b = alloca [10 x i32], align 16              ; 5 uses
  %i.c = alloca [10 x ptr], align 16              ; 5 uses
  %5 = alloca %"class.Ptex::v2_4::PtexSeparableKernel", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.e = load i8, ptr %i.d, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = and i8 %i.e, 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.j
  %indvars.iv155 = phi i32 [ -2, %bb.a ], [ %indvars.iv.next156, %bb.j ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.j ] ; 7 uses
  %.068136 = phi i32 [ %2, %bb.a ], [ %i.k, %bb.j ]
  %.074134.in = phi i8 [ %i.g, %bb.a ], [ %i.ag, %bb.j ]
  %.077133 = phi ptr [ %3, %bb.a ], [ %i.aa, %bb.j ] ; 2 uses
  %.079132 = phi i32 [ %4, %bb.a ], [ %i.s, %bb.j ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.077133, i64 4
  %i.i = sext i32 %.079132 to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.077133, i64 2
  %i.m = load i8, ptr %i.l, align 2, !tbaa !56
  %i.n = zext i8 %i.m to i32
  %i.o = shl nsw i32 %.079132, 1
  %i.p = lshr i32 %i.n, %i.o
  %.fr118 = freeze i32 %i.p
  %i.q = and i32 %.fr118, 3                       ; 2 uses
  %i.r = add nuw nsw i32 %i.q, 1
  %.cmp.not = icmp eq i32 %i.q, 3
  %i.s = select i1 %.cmp.not, i32 0, i32 %i.r     ; 5 uses
  %i.t = icmp slt i32 %i.k, 0
  br i1 %i.t, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %i.k, %2
  %i.v = icmp eq i32 %i.s, %4
  %or.cond82 = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond82, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef nonnull align 4 dereferenceable(20) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef %i.k) ; 5 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.k, ptr %i.ab, align 4, !tbaa !28
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.s, ptr %i.ac, align 4, !tbaa !28
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !116
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !34
  %i.ag = and i8 %i.af, 8                         ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 0
  %i.ai = icmp ne i8 %.074134.in, 0
  %or.cond.not = and i1 %i.ah, %i.ai
  br i1 %or.cond.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.aj = add nuw nsw i32 %i.s, 3
  %i.ak = and i32 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = icmp eq i32 %i.ao, %.068136
  br i1 %i.ap, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp eq i64 %indvars.iv, 1              ; 2 uses
  %.neg = sext i1 %i.aq to i32
  %i.ar = select i1 %i.aq, i32 2, i32 0
  %i.as = add nsw i32 %i.ar, %4
  %i.at = and i32 %i.as, 3
  switch i32 %i.at, label %default.unreachable [
    i32 0, label %bb.g
    i32 3, label %bb.i
    i32 2, label %bb.h
    i32 1, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !55
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !49
  %i.ba = add nsw i32 %i.ax, %i.az
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !49
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bb = load i8, ptr %1, align 8, !tbaa !54
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = shl nuw i32 1, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !46
  %i.bg = add nsw i32 %i.bd, %i.bf
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !46
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.bh = load i8, ptr %1, align 8, !tbaa !54
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !46
  %i.bm = add nsw i32 %i.bj, %i.bl
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !55
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !49
  %i.bt = add nsw i32 %i.bq, %i.bs
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !49
  br label %bb.k

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  %indvars.iv.next156 = add nsw i32 %indvars.iv155, 1
  br i1 %exitcond.not, label %.thread116, label %bb.b, !llvm.loop !109

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.bu = load i8, ptr %1, align 8, !tbaa !42
  %i.bv = add i8 %i.bu, 1
  store i8 %i.bv, ptr %1, align 8, !tbaa !42
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !47
  %i.by = add i8 %i.bx, 1
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !47
  %i.bz = add i32 %4, 3
  %i.ca = add i32 %i.bz, %.neg
  %i.cb = sub i32 %i.ca, %i.s
  tail call void @_ZN4Ptex4v2_419PtexSeparableKernel6rotateEi(ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %i.cb)
  tail call void @_ZN4Ptex4v2_419PtexSeparableFilter13splitAndApplyERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(20) %i.aa)
  br label %bb.q

bb.l:                                             ; preds = %bb.b, %bb.c
  %i.cc = trunc nuw nsw i64 %indvars.iv to i32
  %i.cd = add nsw i32 %i.cc, -2                   ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !116
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !28
  tail call void @_ZN4Ptex4v2_419PtexSeparableFilter17applyToCornerFaceERNS0_19PtexSeparableKernelERKNS0_8FaceInfoEiiS6_i(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 4 dereferenceable(20) %3, i32 noundef %4, i32 noundef %i.cg, ptr noundef nonnull align 4 dereferenceable(20) %i.ci, i32 noundef %i.ck)
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.cl = icmp samesign ugt i64 %indvars.iv, 3
  br i1 %i.cl, label %bb.o, label %.thread116

bb.o:                                             ; preds = %bb.n
  %i.cm = add nsw i32 %4, 2
  tail call void @_ZN4Ptex4v2_419PtexSeparableKernel6rotateEi(ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !38 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !43 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %.idx.i.i = shl nsw i64 %i.cr, 2                ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not8.i.i, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.ct = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.cu = lshr exact i64 %i.ct, 2
  %i.cv = add nuw nsw i64 %i.cu, 1
  %xtraiter213 = and i64 %i.cv, 7                 ; 2 uses
  %lcmp.mod214.not = icmp eq i64 %xtraiter213, 0
  br i1 %lcmp.mod214.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi float [ %i.cx, %.lr.ph.i.i.prol ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %.079.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i.prol ], [ %i.co, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter215 = phi i64 [ %prol.iter215.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cw = load float, ptr %.079.i.i.prol, align 4, !tbaa !41
  %i.cx = fadd float %.010.i.i.prol, %i.cw        ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %prol.iter215.next = add i64 %prol.iter215, 1   ; 2 uses
  %prol.iter215.cmp.not = icmp eq i64 %prol.iter215.next, %xtraiter213
  br i1 %prol.iter215.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !110

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa195.unr = phi float [ poison, %.lr.ph.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %i.co, %.lr.ph.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.prol ]
  %i.cz = icmp ult i64 %i.ct, 28
  br i1 %i.cz, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi float [ %i.dw, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.079.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.da = load float, ptr %.079.i.i, align 4, !tbaa !41
  %i.db = fadd float %.010.i.i, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !41
  %i.de = fadd float %i.db, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !41
  %i.dh = fadd float %i.de, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12
  %i.dj = load float, ptr %i.di, align 4, !tbaa !41
  %i.dk = fadd float %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !41
  %i.dn = fadd float %i.dk, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20
  %i.dp = load float, ptr %i.do, align 4, !tbaa !41
  %i.dq = fadd float %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !41
  %i.dt = fadd float %i.dq, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28
  %i.dv = load float, ptr %i.du, align 4, !tbaa !41
  %i.dw = fadd float %i.dt, %i.dv                 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.dx, %i.cs
  br i1 %.not.i.i.7, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.o
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.o ], [ %.lcssa195.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.dw, %.lr.ph.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !39 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !48 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %.idx.i1.i = shl nsw i64 %i.ec, 2               ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 %.idx.i1.i
  %.not8.i2.i = icmp eq i32 %i.eb, 0
  br i1 %.not8.i2.i, label %.lr.ph, label %.lr.ph.i3.i.preheader

.lr.ph.i3.i.preheader:                            ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i
  %i.ee = add nsw i64 %.idx.i1.i, -4              ; 2 uses
  %i.ef = lshr exact i64 %i.ee, 2
  %i.eg = add nuw nsw i64 %i.ef, 1
  %xtraiter216 = and i64 %i.eg, 7                 ; 2 uses
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  br i1 %lcmp.mod217.not, label %.lr.ph.i3.i.prol.loopexit, label %.lr.ph.i3.i.prol

.lr.ph.i3.i.prol:                                 ; preds = %.lr.ph.i3.i.preheader, %.lr.ph.i3.i.prol
  %.010.i4.i.prol = phi float [ %i.ei, %.lr.ph.i3.i.prol ], [ 0.000000e+00, %.lr.ph.i3.i.preheader ]
  %.079.i5.i.prol = phi ptr [ %i.ej, %.lr.ph.i3.i.prol ], [ %i.dz, %.lr.ph.i3.i.preheader ] ; 2 uses
  %prol.iter218 = phi i64 [ %prol.iter218.next, %.lr.ph.i3.i.prol ], [ 0, %.lr.ph.i3.i.preheader ]
  %i.eh = load float, ptr %.079.i5.i.prol, align 4, !tbaa !41
  %i.ei = fadd float %.010.i4.i.prol, %i.eh       ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.079.i5.i.prol, i64 4 ; 2 uses
  %prol.iter218.next = add i64 %prol.iter218, 1   ; 2 uses
  %prol.iter218.cmp.not = icmp eq i64 %prol.iter218.next, %xtraiter216
  br i1 %prol.iter218.cmp.not, label %.lr.ph.i3.i.prol.loopexit, label %.lr.ph.i3.i.prol, !llvm.loop !111

.lr.ph.i3.i.prol.loopexit:                        ; preds = %.lr.ph.i3.i.prol, %.lr.ph.i3.i.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph.i3.i.preheader ], [ %i.ei, %.lr.ph.i3.i.prol ]
  %.010.i4.i.unr = phi float [ 0.000000e+00, %.lr.ph.i3.i.preheader ], [ %i.ei, %.lr.ph.i3.i.prol ]
  %.079.i5.i.unr = phi ptr [ %i.dz, %.lr.ph.i3.i.preheader ], [ %i.ej, %.lr.ph.i3.i.prol ]
  %i.ek = icmp ult i64 %i.ee, 28
  br i1 %i.ek, label %.lr.ph, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.lr.ph.i3.i.prol.loopexit, %.lr.ph.i3.i
  %.010.i4.i = phi float [ %i.fh, %.lr.ph.i3.i ], [ %.010.i4.i.unr, %.lr.ph.i3.i.prol.loopexit ]
  %.079.i5.i = phi ptr [ %i.fi, %.lr.ph.i3.i ], [ %.079.i5.i.unr, %.lr.ph.i3.i.prol.loopexit ] ; 9 uses
  %i.el = load float, ptr %.079.i5.i, align 4, !tbaa !41
  %i.em = fadd float %.010.i4.i, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 4
  %i.eo = load float, ptr %i.en, align 4, !tbaa !41
  %i.ep = fadd float %i.em, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 8
  %i.er = load float, ptr %i.eq, align 4, !tbaa !41
  %i.es = fadd float %i.ep, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 12
  %i.eu = load float, ptr %i.et, align 4, !tbaa !41
  %i.ev = fadd float %i.es, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 16
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !41
  %i.ey = fadd float %i.ev, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 20
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !41
  %i.fb = fadd float %i.ey, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 24
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !41
  %i.fe = fadd float %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 28
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !41
  %i.fh = fadd float %i.fe, %i.fg                 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 32 ; 2 uses
  %.not.i6.i.7 = icmp eq ptr %i.fi, %i.ed
  br i1 %.not.i6.i.7, label %.lr.ph, label %.lr.ph.i3.i, !llvm.loop !2

.lr.ph:                                           ; preds = %.lr.ph.i3.i.prol.loopexit, %.lr.ph.i3.i, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i
  %.0.lcssa.i7.i = phi float [ 0.000000e+00, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i ], [ %.lcssa.unr, %.lr.ph.i3.i.prol.loopexit ], [ %i.fh, %.lr.ph.i3.i ]
  %i.fj = fmul float %.0.lcssa.i.i, %.0.lcssa.i7.i ; 2 uses
  %i.fk = tail call noundef float @_ZN4Ptex4v2_419PtexSeparableKernel13makeSymmetricEf(ptr noundef nonnull align 8 dereferenceable(124) %1, float noundef %i.fj)
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 120
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv155, i32 1)
  %6 = add nuw nsw i32 %smax, 1
  %wide.trip.count = zext nneg i32 %6 to i64
  %i.fs = insertelement <2 x ptr> poison, ptr %i.fo, i64 0
  %i.ft = insertelement <2 x ptr> %i.fs, ptr %i.fp, i64 1
  br label %bb.p

._crit_edge:                                      ; preds = %bb.p
  %i.fu = uitofp nneg i32 %i.cd to float
  %i.fv = fneg float %i.fj
  %i.fw = call float @llvm.fmuladd.f32(float %i.fk, float %i.fu, float %i.fv)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fy = load float, ptr %i.fx, align 8, !tbaa !50
  %i.fz = fadd float %i.fw, %i.fy
  store float %i.fz, ptr %i.fx, align 8, !tbaa !50
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv152 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next153, %bb.p ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %.sroa.0.0.copyload.i = load i16, ptr %1, align 8
  %i.ga = load ptr, ptr %i.cn, align 8, !tbaa !38
  %i.gb = load ptr, ptr %i.dy, align 8, !tbaa !39
  %i.gc = load i32, ptr %i.fm, align 8, !tbaa !40
  store i16 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.gd = load <4 x i32>, ptr %i.fl, align 4, !tbaa !28 ; 2 uses
  store <4 x i32> %i.gd, ptr %i.fn, align 4, !tbaa !28
  %i.ge = shufflevector <4 x i32> %i.gd, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.gf = sext <2 x i32> %i.ge to <2 x i64>
  %i.gg = shl nsw <2 x i64> %i.gf, splat (i64 2)  ; 2 uses
  %i.gh = extractelement <2 x i64> %i.gg, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fo, ptr align 4 %i.ga, i64 %i.gh, i1 false)
  %i.gi = extractelement <2 x i64> %i.gg, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr align 4 %i.gb, i64 %i.gi, i1 false)
  store <2 x ptr> %i.ft, ptr %i.fq, align 8, !tbaa !57
  store i32 %i.gc, ptr %i.fr, align 8, !tbaa !40
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv152
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !28
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv152
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !116
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv152
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !28
  call void @_ZN4Ptex4v2_419PtexSeparableFilter17applyToCornerFaceERNS0_19PtexSeparableKernelERKNS0_8FaceInfoEiiS6_i(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 4 dereferenceable(20) %3, i32 noundef 2, i32 noundef %i.gk, ptr noundef nonnull align 4 dereferenceable(20) %i.gm, i32 noundef %i.go)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count
  br i1 %exitcond159.not, label %._crit_edge, label %bb.p, !llvm.loop !112

.thread116:                                       ; preds = %bb.j, %bb.n
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !38 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !43 ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %.idx.i.i83 = shl nsw i64 %i.gt, 2              ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gq, i64 %.idx.i.i83
  %.not8.i.i84 = icmp eq i32 %i.gs, 0
  br i1 %.not8.i.i84, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i89, label %.lr.ph.i.i85.preheader

.lr.ph.i.i85.preheader:                           ; preds = %.thread116
  %i.gv = add nsw i64 %.idx.i.i83, -4             ; 2 uses
  %i.gw = lshr exact i64 %i.gv, 2
  %i.gx = add nuw nsw i64 %i.gw, 1
  %xtraiter = and i64 %i.gx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i85.prol.loopexit, label %.lr.ph.i.i85.prol

.lr.ph.i.i85.prol:                                ; preds = %.lr.ph.i.i85.preheader, %.lr.ph.i.i85.prol
  %.010.i.i86.prol = phi float [ %i.gz, %.lr.ph.i.i85.prol ], [ 0.000000e+00, %.lr.ph.i.i85.preheader ]
  %.079.i.i87.prol = phi ptr [ %i.ha, %.lr.ph.i.i85.prol ], [ %i.gq, %.lr.ph.i.i85.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i85.prol ], [ 0, %.lr.ph.i.i85.preheader ]
  %i.gy = load float, ptr %.079.i.i87.prol, align 4, !tbaa !41
  %i.gz = fadd float %.010.i.i86.prol, %i.gy      ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.079.i.i87.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i85.prol.loopexit, label %.lr.ph.i.i85.prol, !llvm.loop !113

.lr.ph.i.i85.prol.loopexit:                       ; preds = %.lr.ph.i.i85.prol, %.lr.ph.i.i85.preheader
  %.lcssa197.unr = phi float [ poison, %.lr.ph.i.i85.preheader ], [ %i.gz, %.lr.ph.i.i85.prol ]
  %.010.i.i86.unr = phi float [ 0.000000e+00, %.lr.ph.i.i85.preheader ], [ %i.gz, %.lr.ph.i.i85.prol ]
  %.079.i.i87.unr = phi ptr [ %i.gq, %.lr.ph.i.i85.preheader ], [ %i.ha, %.lr.ph.i.i85.prol ]
  %i.hb = icmp ult i64 %i.gv, 28
  br i1 %i.hb, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i89, label %.lr.ph.i.i85

.lr.ph.i.i85:                                     ; preds = %.lr.ph.i.i85.prol.loopexit, %.lr.ph.i.i85
  %.010.i.i86 = phi float [ %i.hy, %.lr.ph.i.i85 ], [ %.010.i.i86.unr, %.lr.ph.i.i85.prol.loopexit ]
  %.079.i.i87 = phi ptr [ %i.hz, %.lr.ph.i.i85 ], [ %.079.i.i87.unr, %.lr.ph.i.i85.prol.loopexit ] ; 9 uses
  %i.hc = load float, ptr %.079.i.i87, align 4, !tbaa !41
  %i.hd = fadd float %.010.i.i86, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %.079.i.i87, i64 4
  %i.hf = load float, ptr %i.he, align 4, !tbaa !41
  %i.hg = fadd float %i.hd, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %.079.i.i87, i64 8
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !41
  %i.hj = fadd float %i.hg, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %.079.i.i87, i64 12
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !41
  %i.hm = fadd float %i.hj, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %.079.i.i87, i64 16
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !41
  %i.hp = fadd float %i.hm, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %.079.i.i87, i64 20
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !41
  %i.hs = fadd float %i.hp, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %.079.i.i87, i64 24
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !41
  %i.hv = fadd float %i.hs, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %.079.i.i87, i64 28
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !41
  %i.hy = fadd float %i.hv, %i.hx                 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.079.i.i87, i64 32 ; 2 uses
  %.not.i.i88.7 = icmp eq ptr %i.hz, %i.gu
  br i1 %.not.i.i88.7, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i89, label %.lr.ph.i.i85, !llvm.loop !2

_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i89: ; preds = %.lr.ph.i.i85.prol.loopexit, %.lr.ph.i.i85, %.thread116
  %.0.lcssa.i.i90 = phi float [ 0.000000e+00, %.thread116 ], [ %.lcssa197.unr, %.lr.ph.i.i85.prol.loopexit ], [ %i.hy, %.lr.ph.i.i85 ]
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !39 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !48 ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %.idx.i1.i91 = shl nsw i64 %i.ie, 2             ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.ib, i64 %.idx.i1.i91
  %.not8.i2.i92 = icmp eq i32 %i.id, 0
  br i1 %.not8.i2.i92, label %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit98, label %.lr.ph.i3.i93.preheader

.lr.ph.i3.i93.preheader:                          ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i89
  %i.ig = add nsw i64 %.idx.i1.i91, -4            ; 2 uses
  %i.ih = lshr exact i64 %i.ig, 2
  %i.ii = add nuw nsw i64 %i.ih, 1
  %xtraiter210 = and i64 %i.ii, 7                 ; 2 uses
  %lcmp.mod211.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %.lr.ph.i3.i93.prol.loopexit, label %.lr.ph.i3.i93.prol

.lr.ph.i3.i93.prol:                               ; preds = %.lr.ph.i3.i93.preheader, %.lr.ph.i3.i93.prol
  %.010.i4.i94.prol = phi float [ %i.ik, %.lr.ph.i3.i93.prol ], [ 0.000000e+00, %.lr.ph.i3.i93.preheader ]
  %.079.i5.i95.prol = phi ptr [ %i.il, %.lr.ph.i3.i93.prol ], [ %i.ib, %.lr.ph.i3.i93.preheader ] ; 2 uses
  %prol.iter212 = phi i64 [ %prol.iter212.next, %.lr.ph.i3.i93.prol ], [ 0, %.lr.ph.i3.i93.preheader ]
  %i.ij = load float, ptr %.079.i5.i95.prol, align 4, !tbaa !41
  %i.ik = fadd float %.010.i4.i94.prol, %i.ij     ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.079.i5.i95.prol, i64 4 ; 2 uses
  %prol.iter212.next = add i64 %prol.iter212, 1   ; 2 uses
  %prol.iter212.cmp.not = icmp eq i64 %prol.iter212.next, %xtraiter210
  br i1 %prol.iter212.cmp.not, label %.lr.ph.i3.i93.prol.loopexit, label %.lr.ph.i3.i93.prol, !llvm.loop !114

.lr.ph.i3.i93.prol.loopexit:                      ; preds = %.lr.ph.i3.i93.prol, %.lr.ph.i3.i93.preheader
  %.lcssa196.unr = phi float [ poison, %.lr.ph.i3.i93.preheader ], [ %i.ik, %.lr.ph.i3.i93.prol ]
  %.010.i4.i94.unr = phi float [ 0.000000e+00, %.lr.ph.i3.i93.preheader ], [ %i.ik, %.lr.ph.i3.i93.prol ]
  %.079.i5.i95.unr = phi ptr [ %i.ib, %.lr.ph.i3.i93.preheader ], [ %i.il, %.lr.ph.i3.i93.prol ]
  %i.im = icmp ult i64 %i.ig, 28
  br i1 %i.im, label %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit98, label %.lr.ph.i3.i93

.lr.ph.i3.i93:                                    ; preds = %.lr.ph.i3.i93.prol.loopexit, %.lr.ph.i3.i93
  %.010.i4.i94 = phi float [ %i.jj, %.lr.ph.i3.i93 ], [ %.010.i4.i94.unr, %.lr.ph.i3.i93.prol.loopexit ]
  %.079.i5.i95 = phi ptr [ %i.jk, %.lr.ph.i3.i93 ], [ %.079.i5.i95.unr, %.lr.ph.i3.i93.prol.loopexit ] ; 9 uses
  %i.in = load float, ptr %.079.i5.i95, align 4, !tbaa !41
  %i.io = fadd float %.010.i4.i94, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %.079.i5.i95, i64 4
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !41
  %i.ir = fadd float %i.io, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %.079.i5.i95, i64 8
  %i.it = load float, ptr %i.is, align 4, !tbaa !41
  %i.iu = fadd float %i.ir, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %.079.i5.i95, i64 12
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !41
  %i.ix = fadd float %i.iu, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %.079.i5.i95, i64 16
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !41
  %i.ja = fadd float %i.ix, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %.079.i5.i95, i64 20
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !41
  %i.jd = fadd float %i.ja, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %.079.i5.i95, i64 24
  %i.jf = load float, ptr %i.je, align 4, !tbaa !41
  %i.jg = fadd float %i.jd, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %.079.i5.i95, i64 28
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !41
  %i.jj = fadd float %i.jg, %i.ji                 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.079.i5.i95, i64 32 ; 2 uses
  %.not.i6.i96.7 = icmp eq ptr %i.jk, %i.if
  br i1 %.not.i6.i96.7, label %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit98, label %.lr.ph.i3.i93, !llvm.loop !2

_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit98: ; preds = %.lr.ph.i3.i93.prol.loopexit, %.lr.ph.i3.i93, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i89
  %.0.lcssa.i7.i97 = phi float [ 0.000000e+00, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i89 ], [ %.lcssa196.unr, %.lr.ph.i3.i93.prol.loopexit ], [ %i.jj, %.lr.ph.i3.i93 ]
  %i.jl = fmul float %.0.lcssa.i.i90, %.0.lcssa.i7.i97
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.jn = load float, ptr %i.jm, align 8, !tbaa !50
  %i.jo = fsub float %i.jn, %i.jl
  store float %i.jo, ptr %i.jm, align 8, !tbaa !50
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.m, %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit98, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_419PtexSeparableKernel6splitBERS1_(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(124) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4Ptex4v2_419PtexSeparableKernel13makeSymmetricEf:bb.a
  %i.dl = fadd float %.02761.epil.init, %i.dk
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %i.ec, %._crit_edge.loopexit.unr-lcssa ], [ %i.dl, %.epil.preheader ] ; 2 uses
  %i.dm = fmul float %.lcssa, %.lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.027.lcssa = phi float [ 0.000000e+00, %bb.g ], [ %i.dm, %._crit_edge.loopexit ] ; 4 uses
  %i.dn = fcmp oeq float %.027.lcssa, 0.000000e+00
  %i.do = fdiv float %1, %.027.lcssa
  %i.dp = select i1 %i.dn, float 1.000000e+00, float %i.do ; 4 uses
  %i.dq = fcmp ult float %i.dp, 1.000000e+00
  br i1 %i.dq, label %bb.i, label %.loopexit

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %.02761 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.ec, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !41
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !41
  %i.dv = fadd float %i.ds, %i.du                 ; 3 uses
  store float %i.dv, ptr %i.dt, align 4, !tbaa !41
  store float %i.dv, ptr %i.dr, align 4, !tbaa !41
  %i.dw = fadd float %.02761, %i.dv
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !41
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !41
  %i.eb = fadd float %i.dy, %i.ea                 ; 3 uses
  store float %i.eb, ptr %i.dz, align 4, !tbaa !41
  store float %i.eb, ptr %i.dx, align 4, !tbaa !41
  %i.ec = fadd float %i.dw, %i.eb                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !126

bb.i:                                             ; preds = %._crit_edge
  %i.ed = fcmp olt float %i.dp, -1.000000e+00
  br i1 %i.ed, label %.preheader, label %.preheader45

.preheader45:                                     ; preds = %bb.i
  br i1 %i.da, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %.preheader45
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !38 ; 2 uses
  %wide.trip.count80 = zext nneg i32 %i.cz to i64 ; 3 uses
  %min.iters.check144 = icmp ult i32 %i.cz, 8
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph63
  %n.vec146 = and i64 %wide.trip.count80, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index148 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.eg, align 4, !tbaa !41
  %wide.load149 = load <4 x float>, ptr %i.eh, align 4, !tbaa !41
  %i.ei = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ej = fmul <4 x float> %broadcast.splat, %wide.load149
  store <4 x float> %i.ei, ptr %i.eg, align 4, !tbaa !41
  store <4 x float> %i.ej, ptr %i.eh, align 4, !tbaa !41
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next150, %n.vec146
  br i1 %i.ek, label %middle.block151, label %vector.body147, !llvm.loop !127

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %n.vec146, %wide.trip.count80
  br i1 %cmp.n152, label %.loopexit, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %.lr.ph63, %middle.block151
  %indvars.iv77.ph = phi i64 [ 0, %.lr.ph63 ], [ %n.vec146, %middle.block151 ]
  br label %scalar.ph143

.preheader:                                       ; preds = %bb.i
  br i1 %i.da, label %.lr.ph65, label %._crit_edge66

.lr.ph65:                                         ; preds = %.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !38 ; 2 uses
  %wide.trip.count85 = zext nneg i32 %i.cz to i64 ; 3 uses
  %min.iters.check155 = icmp ult i32 %i.cz, 8
  br i1 %min.iters.check155, label %scalar.ph154.preheader, label %vector.ph156

vector.ph156:                                     ; preds = %.lr.ph65
  %n.vec157 = and i64 %wide.trip.count85, 2147483640 ; 3 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body158 ] ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index159 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %wide.load160 = load <4 x float>, ptr %i.en, align 4, !tbaa !41
  %wide.load161 = load <4 x float>, ptr %i.eo, align 4, !tbaa !41
  %i.ep = fneg <4 x float> %wide.load160
  %i.eq = fneg <4 x float> %wide.load161
  store <4 x float> %i.ep, ptr %i.en, align 4, !tbaa !41
  store <4 x float> %i.eq, ptr %i.eo, align 4, !tbaa !41
  %index.next162 = add nuw i64 %index159, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.er, label %middle.block163, label %vector.body158, !llvm.loop !128

middle.block163:                                  ; preds = %vector.body158
  %cmp.n164 = icmp eq i64 %n.vec157, %wide.trip.count85
  br i1 %cmp.n164, label %._crit_edge66, label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %.lr.ph65, %middle.block163
  %indvars.iv82.ph = phi i64 [ 0, %.lr.ph65 ], [ %n.vec157, %middle.block163 ]
  br label %scalar.ph154

._crit_edge66:                                    ; preds = %scalar.ph154, %middle.block163, %.preheader
  %i.es = fneg float %.027.lcssa
  br label %.loopexit

scalar.ph154:                                     ; preds = %scalar.ph154.preheader, %scalar.ph154
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %scalar.ph154 ], [ %indvars.iv82.ph, %scalar.ph154.preheader ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv82 ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !41
  %i.ev = fneg float %i.eu
  store float %i.ev, ptr %i.et, align 4, !tbaa !41
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge66, label %scalar.ph154, !llvm.loop !129

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %scalar.ph143 ], [ %indvars.iv77.ph, %scalar.ph143.preheader ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv77 ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !41
  %i.ey = fmul float %i.dp, %i.ex
  store float %i.ey, ptr %i.ew, align 4, !tbaa !41
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %.loopexit, label %scalar.ph143, !llvm.loop !130

.loopexit:                                        ; preds = %scalar.ph143, %middle.block151, %.preheader45, %._crit_edge66, %._crit_edge
  %.1 = phi float [ %.027.lcssa, %._crit_edge ], [ %i.es, %._crit_edge66 ], [ %1, %.preheader45 ], [ %1, %middle.block151 ], [ %1, %scalar.ph143 ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_419PtexSeparableFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #10
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_419PtexSeparableFilter7releaseEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(80) %0) #11
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !45}
!1 = distinct !{!1, !45}
!2 = distinct !{!2, !45}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_ZTSN4Ptex4v2_410PtexFilterE"}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTSN4Ptex4v2_411PtexTextureE", !13, i64 0}
!15 = !{!"_ZTSN4Ptex4v2_410PtexFilter10FilterTypeE", !8, i64 0}
!16 = !{!"bool", !8, i64 0}
!17 = !{!"float", !8, i64 0}
!18 = !{!"_ZTSN4Ptex4v2_410PtexFilter7OptionsE", !9, i64 0, !15, i64 4, !16, i64 8, !17, i64 12, !16, i64 16}
!19 = !{!"p1 float", !13, i64 0}
!20 = !{!"_ZTSN4Ptex4v2_48DataTypeE", !8, i64 0}
!21 = !{!"_ZTSN4Ptex4v2_410BorderModeE", !8, i64 0}
!22 = !{!"_ZTSN4Ptex4v2_414EdgeFilterModeE", !8, i64 0}
!23 = !{!"_ZTSN4Ptex4v2_419PtexSeparableFilterE", !12, i64 0, !14, i64 8, !18, i64 16, !19, i64 40, !17, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !20, i64 64, !21, i64 68, !21, i64 72, !22, i64 76}
!24 = !{!23, !14, i64 8}
!25 = !{!"vtable pointer", !7, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!23, !20, i64 64}
!28 = !{!9, !9, i64 0}
!29 = !{!23, !9, i64 52}
!30 = !{!23, !9, i64 60}
!31 = !{!23, !9, i64 56}
!32 = !{!"_ZTSN4Ptex4v2_43ResE", !8, i64 0, !8, i64 1}
!33 = !{!"_ZTSN4Ptex4v2_48FaceInfoE", !32, i64 0, !8, i64 2, !8, i64 3, !8, i64 4}
!34 = !{!33, !8, i64 3}
!35 = !{!23, !21, i64 68}
!36 = !{!23, !21, i64 72}
!37 = !{!"_ZTSN4Ptex4v2_419PtexSeparableKernelE", !32, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !19, i64 24, !19, i64 32, !8, i64 40, !8, i64 80, !9, i64 120}
!38 = !{!37, !19, i64 24}
!39 = !{!37, !19, i64 32}
!40 = !{!37, !9, i64 120}
!41 = !{!17, !17, i64 0}
!42 = !{!37, !8, i64 0}
!43 = !{!37, !9, i64 12}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!37, !9, i64 4}
!47 = !{!37, !8, i64 1}
!48 = !{!37, !9, i64 16}
!49 = !{!37, !9, i64 8}
!50 = !{!23, !17, i64 48}
!51 = !{!23, !19, i64 40}
!52 = !{!"llvm.loop.isvectorized", i32 1}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = !{!32, !8, i64 0}
!55 = !{!32, !8, i64 1}
!56 = !{!33, !8, i64 2}
!57 = !{!19, !19, i64 0}
!58 = distinct !{!58, !44}
!59 = distinct !{!59, !44}
!60 = distinct !{!60, !45}
!61 = distinct !{!61, !45}
!62 = distinct !{!62, !45}
!63 = distinct !{!63, !45}
!64 = distinct !{!64, !44}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !45, !52, !53}
!67 = distinct !{!67, !44}
!68 = distinct !{!68, !45, !52}
!69 = !{!33, !8, i64 0}
!70 = !{!33, !8, i64 1}
!71 = distinct !{!71, !44}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !44}
!74 = distinct !{!74, !44}
!75 = distinct !{!75, !44}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !44}
!78 = distinct !{!78, !44}
!79 = distinct !{!79, !44}
!80 = distinct !{!80, !44}
!81 = !{!23, !16, i64 32}
!82 = !{i8 0, i8 2}
!83 = !{}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !45, !52, !53}
!86 = distinct !{!86, !45, !53, !52}
!87 = distinct !{!87, !45}
!88 = distinct !{!88, !45, !52, !53}
!89 = distinct !{!89, !45, !53, !52}
!90 = distinct !{!90, !45}
!91 = distinct !{!91, !44}
!92 = distinct !{!92, !44}
!93 = distinct !{null}
!94 = distinct !{!94, !45}
!95 = distinct !{!95, !44}
!96 = distinct !{!96, !44}
!97 = distinct !{null}
!98 = distinct !{!98, !45}
!99 = distinct !{!99, !"LVerDomain"}
!100 = distinct !{!100, !99}
!101 = distinct !{!101, !99}
!102 = distinct !{!102, !45, !52, !53}
!103 = distinct !{!103, !44}
!104 = distinct !{!104, !45, !52}
!105 = !{!13, !13, i64 0}
!106 = !{!23, !22, i64 76}
!107 = !{!100}
!108 = !{!101}
!109 = distinct !{!109, !45}
!110 = distinct !{!110, !44}
!111 = distinct !{!111, !44}
!112 = distinct !{!112, !45}
!113 = distinct !{!113, !44}
!114 = distinct !{!114, !44}
!115 = !{!"p1 _ZTSN4Ptex4v2_48FaceInfoE", !13, i64 0}
!116 = !{!115, !115, i64 0}
!117 = distinct !{!117, !44}
!118 = distinct !{!118, !44}
!119 = distinct !{!119, !45}
!120 = distinct !{!120, !45, !52, !53}
!121 = distinct !{!121, !45, !53, !52}
!122 = distinct !{!122, !45}
!123 = distinct !{!123, !45, !52, !53}
!124 = distinct !{!124, !45, !53, !52}
!125 = distinct !{!125, !45}
!126 = distinct !{!126, !45}
!127 = distinct !{!127, !45, !52, !53}
!128 = distinct !{!128, !45, !52, !53}
!129 = distinct !{!129, !45, !53, !52}
!130 = distinct !{!130, !45, !53, !52}
end_hunk_1
