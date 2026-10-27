Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/checker_model?download=true
inline.NumInlined: 866
inline.NumDeleted: 377
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv3mcc11CChartModel14copyToColorMatERKNS_12_OutputArrayEi:bb.a
  %exitcond41.not = icmp eq i64 %i.ad, %i.e
  br i1 %exitcond41.not, label %._crit_edge.split.us.us, label %bb.b, !llvm.loop !110

._crit_edge.split.us.us:                          ; preds = %bb.b
  %i.ae = add nuw i64 %.02632.us, 1               ; 2 uses
  %exitcond42.not = icmp eq i64 %i.ae, %i.b
  br i1 %exitcond42.not, label %._crit_edge33.split, label %.preheader.us, !llvm.loop !111

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge.split
  %.02632 = phi i64 [ %i.ah, %._crit_edge.split ], [ 0, %.preheader.lr.ph.split ] ; 2 uses
  %.02731 = phi i64 [ %i.ax, %._crit_edge.split ], [ 0, %.preheader.lr.ph.split ]
  %i.af = shl i64 %.02632, 32
  %i.ag = ashr exact i64 %i.af, 32
  br label %bb.c

._crit_edge33.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader.lr.ph, %bb.a
  invoke void @_ZNK2cv12_OutputArray6assignERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.d unwind label %bb.e

._crit_edge.split:                                ; preds = %bb.c
  %i.ah = add nuw i64 %.02632, 1                  ; 2 uses
  %exitcond40.not = icmp eq i64 %i.ah, %i.b
  br i1 %exitcond40.not, label %._crit_edge33.split, label %.preheader, !llvm.loop !111

bb.c:                                             ; preds = %.preheader, %bb.c
  %.02530 = phi i64 [ 0, %.preheader ], [ %i.ay, %bb.c ] ; 2 uses
  %.129 = phi i64 [ %.02731, %.preheader ], [ %i.ax, %bb.c ] ; 2 uses
  %i.ai = load i64, ptr %i.i, align 8
  %i.aj = mul i64 %i.ai, %i.ag
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aj
  %i.ak = shl i64 %.02530, 32
  %i.al = ashr exact i64 %i.ak, 32
  %i.am = getelementptr inbounds [12 x i8], ptr %.sink.i, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.129
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %i.j ; 3 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !13
  store float %i.aq, ptr %i.am, align 4, !tbaa !13
  %i.ar = getelementptr i8, ptr %i.ap, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store float %i.as, ptr %i.at, align 4, !tbaa !13
  %i.au = getelementptr i8, ptr %i.ap, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store float %i.av, ptr %i.aw, align 4, !tbaa !13
  %i.ax = add i64 %.129, 1                        ; 2 uses
  %i.ay = add nuw i64 %.02530, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %i.e
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.c, !llvm.loop !110

bb.d:                                             ; preds = %._crit_edge33.split
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.e:                                             ; preds = %._crit_edge33.split
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.az
}

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare void @_ZNK2cv12_OutputArray6assignERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3mcc11CChartModel8rotate90Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 10 uses
  %2 = alloca %"class.std::vector", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46
  %i.c = load i32, ptr %0, align 8, !tbaa !45
  %.sroa.451.0.insert.ext = zext i32 %i.c to i64
  %.sroa.451.0.insert.shift = shl nuw i64 %.sroa.451.0.insert.ext, 32
  %.sroa.050.0.insert.ext = zext i32 %i.b to i64
  %.sroa.050.0.insert.insert = or disjoint i64 %.sroa.451.0.insert.shift, %.sroa.050.0.insert.ext
  store i64 %.sroa.050.0.insert.insert, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.k, label %.noexc, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
  unreachable

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  store i64 0, ptr %1, align 8
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #22 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !17
  %i.m = getelementptr i8, ptr %i.l, i64 %i.j
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 0, i64 %i.j, i1 false), !tbaa !13
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %i.n = phi ptr [ %i.l, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.sink.i = phi ptr [ %i.m, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.p, align 8, !tbaa !18
  store ptr %.sink.i, ptr %i.o, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.b, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i31

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc38 unwind label %bb.c

.noexc38:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i31: ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  store i64 0, ptr %2, align 8
  %.not.i.i.i.i32 = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i32, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i37, label %.lr.ph.preheader.i.i.i.i.i33

.lr.ph.preheader.i.i.i.i.i33:                     ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i31
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22
          to label %.noexc39 unwind label %bb.c   ; 4 uses

.noexc39:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i33
  store ptr %i.y, ptr %2, align 8, !tbaa !17
  %i.z = getelementptr i8, ptr %i.y, i64 %i.w
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.w, i1 false), !tbaa !13
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i37

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i37: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i31, %.noexc39
  %i.aa = phi ptr [ %i.y, %.noexc39 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i31 ]
  %.sink.i35 = phi ptr [ %i.z, %.noexc39 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i31 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %.sink.i35, ptr %i.ac, align 8, !tbaa !18
  store ptr %.sink.i35, ptr %i.ab, align 8, !tbaa !19
  %i.ad = load i32, ptr %0, align 8, !tbaa !45    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.preheader.lr.ph, label %._crit_edge56.split

.preheader.lr.ph:                                 ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i37
  %i.af = load i32, ptr %i.a, align 4, !tbaa !46  ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.preheader.lr.ph.split, label %._crit_edge56.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.aj = zext nneg i32 %i.af to i64
  %i.ak = zext nneg i32 %i.ad to i64
  %wide.trip.count65 = zext nneg i32 %i.ad to i64
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv62 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next63, %._crit_edge ] ; 2 uses
  %.02355 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next, %._crit_edge ]
  br label %bb.d

._crit_edge56.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i37
  %i.al = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i33, %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit44

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %._crit_edge56.split, label %.preheader, !llvm.loop !112

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv57 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next58, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ %.02355, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.an = xor i64 %indvars.iv57, -1
  %i.ao = add nsw i64 %i.aj, %i.an
  %i.ap = mul nsw i64 %i.ao, %i.ak
  %i.aq = add nsw i64 %i.ap, %indvars.iv62        ; 2 uses
  %.idx = shl i64 %i.aq, 5
  %i.ar = getelementptr i8, ptr %i.ah, i64 %.idx  ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 24
  %.idx74 = shl i64 %indvars.iv, 5
  %i.at = getelementptr i8, ptr %i.n, i64 %.idx74 ; 4 uses
  %i.au = load i64, ptr %i.as, align 4, !tbaa !13
  store i64 %i.au, ptr %i.at, align 4, !tbaa !13
  %i.av = getelementptr i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.ar, align 4, !tbaa !13
  store i64 %i.aw, ptr %i.av, align 4, !tbaa !13
  %i.ax = getelementptr i8, ptr %i.ar, i64 8
  %i.ay = getelementptr i8, ptr %i.at, i64 16
  %i.az = load i64, ptr %i.ax, align 4, !tbaa !13
  store i64 %i.az, ptr %i.ay, align 4, !tbaa !13
  %i.ba = getelementptr i8, ptr %i.ar, i64 16
  %i.bb = getelementptr i8, ptr %i.at, i64 24
  %i.bc = load i64, ptr %i.ba, align 4, !tbaa !13
  store i64 %i.bc, ptr %i.bb, align 4, !tbaa !13
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aq
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.bf = load i64, ptr %i.bd, align 4, !tbaa !13
  store i64 %i.bf, ptr %i.be, align 4, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !113

bb.e:                                             ; preds = %._crit_edge56.split
  %i.bg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.i       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bi = load <2 x i32>, ptr %i.bh, align 8, !tbaa !13
  %i.bj = shufflevector <2 x i32> %i.bi, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bj, ptr %i.bh, align 8, !tbaa !13
  %i.bk = load ptr, ptr %2, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bp = load ptr, ptr %1, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit42, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.bq = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit42

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit42:  ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.i:                                             ; preds = %bb.e, %._crit_edge56.split
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %2, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit44, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.bz) #23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit44

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit44:  ; preds = %bb.j, %bb.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.am, %bb.c ], [ %i.bu, %bb.i ], [ %i.bu, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ca = load ptr, ptr %1, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit46, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit44
  %i.cb = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ce) #23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit46

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit46:  ; preds = %bb.k, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !17     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = load ptr, ptr %0, align 8, !tbaa !17     ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 4 uses
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false), !tbaa !13
  %i.t = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #23
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !18
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19  ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 8
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !20

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 8
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.c, align 4, !tbaa !13
  store i64 %i.af, ptr %i.i, align 4, !tbaa !13
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ac, 8
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !20

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ac, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !17
  %.pre25 = load ptr, ptr %i.z, align 8, !tbaa !19 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !17  ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !19
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN2cv6Point_IfEES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i64 %i.ac, 8
end_hunk_0
