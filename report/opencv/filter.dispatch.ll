Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/filter.dispatch?download=true
inline.NumInlined: 4426
inline.NumDeleted: 1773
loop-unroll.NumRuntimeUnrolled: 196
loop-unroll.NumUnrolled: 196
begin_hunk_0_@_ZN2cvL24createBitExactKernel_32SERKNS_3MatERS0_i:bb.a
  %.0.i40.us62 = phi ptr [ %i.ez, %bb.l ], [ %i.fb, %bb.m ]
  %i.fc = load double, ptr %.0.i40.us62, align 8, !tbaa !155
  %i.fd = sitofp i32 %i.er to double
  %i.fe = fsub double %i.fc, %i.fd
  %i.ff = call double @llvm.fabs.f64(double %i.fe)
  %i.fg = fcmp ule double %i.ff, %i.n             ; 2 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp ne i64 %indvars.iv.next154, %wide.trip.count156
  %or.cond251.not = select i1 %i.fg, i1 %exitcond157.not, i1 false
  br i1 %or.cond251.not, label %_ZN2cv3Mat2atIiEERT_i.exit.us59, label %.critedge, !llvm.loop !606

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fh = load i32, ptr %i.s, align 4, !tbaa !122 ; 9 uses
  %i.fi = load ptr, ptr %i.t, align 8, !tbaa !105 ; 5 uses
  %i.fj = load i64, ptr %i.u, align 8, !tbaa !97  ; 3 uses
  br i1 %i.x, label %.lr.ph.split.split.split.split.us, label %.lr.ph.split.split.split.split

.lr.ph.split.split.split.split.us:                ; preds = %.lr.ph.split.split.split
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !12
  %i.fl = load double, ptr %i.ak, align 8, !tbaa !155
  %i.fm = sitofp i32 %i.fk to double
  %i.fn = fsub double %i.fl, %i.fm
  %i.fo = call double @llvm.fabs.f64(double %i.fn)
  %i.fp = fcmp ule double %i.fo, %i.n
  br i1 %i.fp, label %.lr.ph90.preheader, label %.critedge

.lr.ph90.preheader:                               ; preds = %.lr.ph.split.split.split.split.us
  %wide.trip.count151 = and i64 %i.j, 2147483647  ; 2 uses
  %exitcond152.not228 = icmp eq i64 %wide.trip.count151, 1
  br i1 %exitcond152.not228, label %.critedge, label %_ZN2cv3Mat2atIiEERT_i.exit.us68.lr.ph, !llvm.loop !606

_ZN2cv3Mat2atIiEERT_i.exit.us68.lr.ph:            ; preds = %.lr.ph90.preheader
  br label %_ZN2cv3Mat2atIiEERT_i.exit.us68, !llvm.loop !606

_ZN2cv3Mat2atIiEERT_i.exit.us68:                  ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us68.lr.ph, %.lr.ph90
  %indvars.iv148229 = phi i64 [ 1, %_ZN2cv3Mat2atIiEERT_i.exit.us68.lr.ph ], [ %indvars.iv.next149, %.lr.ph90 ] ; 3 uses
  %i.fq = trunc nuw nsw i64 %indvars.iv148229 to i32 ; 2 uses
  %i.fr = sdiv i32 %i.fq, %i.fh                   ; 2 uses
  %i.fs = mul nsw i32 %i.fr, %i.fh                ; 0 uses
  %.recomposed275 = srem i32 %i.fq, %i.fh
  %i.ft = sext i32 %i.fr to i64
  %i.fu = mul i64 %i.fj, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fu
  %i.fw = sext i32 %.recomposed275 to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !12
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv148229
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !155
  %i.gb = sitofp i32 %i.fy to double
  %i.gc = fsub double %i.ga, %i.gb
  %i.gd = call double @llvm.fabs.f64(double %i.gc)
  %i.ge = fcmp ule double %i.gd, %i.n
  br i1 %i.ge, label %.lr.ph90, label %_ZN2cv3Mat2atIiEERT_i.exit.us78..critedge.loopexit221_crit_edge, !llvm.loop !606

.lr.ph90:                                         ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us68
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148229, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %.lr.ph88..critedge.loopexit221_crit_edge, label %_ZN2cv3Mat2atIiEERT_i.exit.us68, !llvm.loop !606

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split
  br i1 %or.cond.i39, label %.lr.ph.split.split.split.split.split.us, label %_ZN2cv3Mat2atIiEERT_i.exit.preheader

_ZN2cv3Mat2atIiEERT_i.exit.preheader:             ; preds = %.lr.ph.split.split.split.split
  %wide.trip.count = and i64 %i.j, 2147483647
  br label %_ZN2cv3Mat2atIiEERT_i.exit

.lr.ph.split.split.split.split.split.us:          ; preds = %.lr.ph.split.split.split.split
  %i.gf = load i32, ptr %i.fi, align 4, !tbaa !12
  %i.gg = load double, ptr %i.ak, align 8, !tbaa !155
  %i.gh = sitofp i32 %i.gf to double
  %i.gi = fsub double %i.gg, %i.gh
  %i.gj = call double @llvm.fabs.f64(double %i.gi)
  %i.gk = fcmp ule double %i.gj, %i.n
  br i1 %i.gk, label %.lr.ph88.preheader, label %.critedge

.lr.ph88.preheader:                               ; preds = %.lr.ph.split.split.split.split.split.us
  %wide.trip.count146 = and i64 %i.j, 2147483647  ; 2 uses
  %exitcond147.not225 = icmp eq i64 %wide.trip.count146, 1
  br i1 %exitcond147.not225, label %.critedge, label %_ZN2cv3Mat2atIiEERT_i.exit.us78.lr.ph, !llvm.loop !606

_ZN2cv3Mat2atIiEERT_i.exit.us78.lr.ph:            ; preds = %.lr.ph88.preheader
  br label %_ZN2cv3Mat2atIiEERT_i.exit.us78, !llvm.loop !606

_ZN2cv3Mat2atIiEERT_i.exit.us78:                  ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us78.lr.ph, %.lr.ph88
  %indvars.iv143226 = phi i64 [ 1, %_ZN2cv3Mat2atIiEERT_i.exit.us78.lr.ph ], [ %indvars.iv.next144, %.lr.ph88 ] ; 3 uses
  %i.gl = trunc nuw nsw i64 %indvars.iv143226 to i32 ; 2 uses
  %i.gm = sdiv i32 %i.gl, %i.fh                   ; 2 uses
  %i.gn = mul nsw i32 %i.gm, %i.fh                ; 0 uses
  %.recomposed276 = srem i32 %i.gl, %i.fh
  %i.go = sext i32 %i.gm to i64
  %i.gp = mul i64 %i.fj, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.gp
  %i.gr = sext i32 %.recomposed276 to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !12
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv143226
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !155
  %i.gw = sitofp i32 %i.gt to double
  %i.gx = fsub double %i.gv, %i.gw
  %i.gy = call double @llvm.fabs.f64(double %i.gx)
  %i.gz = fcmp ule double %i.gy, %i.n
  br i1 %i.gz, label %.lr.ph88, label %_ZN2cv3Mat2atIiEERT_i.exit.us78..critedge.loopexit221_crit_edge, !llvm.loop !606

.lr.ph88:                                         ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us78
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143226, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %.lr.ph88..critedge.loopexit221_crit_edge, label %_ZN2cv3Mat2atIiEERT_i.exit.us78, !llvm.loop !606

bb.n:                                             ; preds = %bb.a
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.r

_ZN2cv3Mat2atIiEERT_i.exit:                       ; preds = %_ZN2cv3Mat2atIdEERT_i.exit, %_ZN2cv3Mat2atIiEERT_i.exit.preheader
  %indvars.iv = phi i64 [ 0, %_ZN2cv3Mat2atIiEERT_i.exit.preheader ], [ %indvars.iv.next, %_ZN2cv3Mat2atIdEERT_i.exit ] ; 3 uses
  %i.hb = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.hc = sdiv i32 %i.hb, %i.fh                   ; 2 uses
  %i.hd = mul nsw i32 %i.hc, %i.fh                ; 0 uses
  %.recomposed277 = srem i32 %i.hb, %i.fh
  %i.he = sext i32 %i.hc to i64
  %i.hf = mul i64 %i.fj, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.hf
  %i.hh = sext i32 %.recomposed277 to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !12
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2cv3Mat2atIiEERT_i.exit
  %i.hk = mul i64 %i.am, %indvars.iv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.hk
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.p:                                             ; preds = %_ZN2cv3Mat2atIiEERT_i.exit
  %i.hm = sdiv i32 %i.hb, %i.ai                   ; 2 uses
  %i.hn = mul nsw i32 %i.hm, %i.ai                ; 0 uses
  %.recomposed278 = srem i32 %i.hb, %i.ai
  %i.ho = sext i32 %i.hm to i64
  %i.hp = mul i64 %i.am, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.hp
  %i.hr = sext i32 %.recomposed278 to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hr
  br label %_ZN2cv3Mat2atIdEERT_i.exit

_ZN2cv3Mat2atIdEERT_i.exit:                       ; preds = %bb.p, %bb.o
  %.0.i40 = phi ptr [ %i.hs, %bb.p ], [ %i.hl, %bb.o ]
  %i.ht = load double, ptr %.0.i40, align 8, !tbaa !155
  %i.hu = sitofp i32 %i.hj to double
  %i.hv = fsub double %i.ht, %i.hu
  %i.hw = call double @llvm.fabs.f64(double %i.hv)
  %i.hx = fcmp ule double %i.hw, %i.n             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond253.not = select i1 %i.hx, i1 %exitcond.not, i1 false
  br i1 %or.cond253.not, label %_ZN2cv3Mat2atIiEERT_i.exit, label %.critedge, !llvm.loop !606

bb.q:                                             ; preds = %bb.b
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph88..critedge.loopexit221_crit_edge:         ; preds = %.lr.ph88, %.lr.ph90, %.lr.ph104, %.lr.ph106, %.lr.ph120, %.lr.ph122
  br label %.critedge, !llvm.loop !606

_ZN2cv3Mat2atIiEERT_i.exit.us78..critedge.loopexit221_crit_edge: ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us78, %_ZN2cv3Mat2atIiEERT_i.exit.us68, %_ZN2cv3Mat2atIiEERT_i.exit.us59.us94, %_ZN2cv3Mat2atIiEERT_i.exit.us59.us, %_ZN2cv3Mat2atIiEERT_i.exit.us48.us110, %_ZN2cv3Mat2atIiEERT_i.exit.us48.us
  br label %.critedge, !llvm.loop !606

.critedge:                                        ; preds = %_ZN2cv3Mat2atIdEERT_i.exit, %_ZN2cv3Mat2atIdEERT_i.exit.us61, %_ZN2cv3Mat2atIdEERT_i.exit.us50, %_ZN2cv3Mat2atIdEERT_i.exit.us, %.lr.ph88.preheader, %.lr.ph88..critedge.loopexit221_crit_edge, %_ZN2cv3Mat2atIiEERT_i.exit.us78..critedge.loopexit221_crit_edge, %.lr.ph90.preheader, %.lr.ph104.preheader, %.lr.ph106.preheader, %.lr.ph120.preheader, %.lr.ph122.preheader, %.lr.ph.split.split.split.us.split.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.us.split.us, %.lr.ph.split.split.us.split.split.us, %bb.c
  %.not.lcssa = phi i1 [ true, %bb.c ], [ false, %.lr.ph.split.split.us.split.split.us ], [ false, %.lr.ph.split.split.split.split.split.us ], [ true, %.lr.ph90.preheader ], [ true, %.lr.ph88..critedge.loopexit221_crit_edge ], [ false, %.lr.ph.split.split.split.split.us ], [ false, %.lr.ph.split.split.split.us.split.us ], [ false, %.lr.ph.split.split.split.us.split.split.us ], [ true, %.lr.ph88.preheader ], [ true, %.lr.ph122.preheader ], [ true, %.lr.ph120.preheader ], [ %i.fg, %_ZN2cv3Mat2atIdEERT_i.exit.us61 ], [ %i.bg, %_ZN2cv3Mat2atIdEERT_i.exit.us ], [ true, %.lr.ph106.preheader ], [ false, %.lr.ph.split.split.us.split.us ], [ true, %.lr.ph104.preheader ], [ %i.dg, %_ZN2cv3Mat2atIdEERT_i.exit.us50 ], [ false, %_ZN2cv3Mat2atIiEERT_i.exit.us78..critedge.loopexit221_crit_edge ], [ %i.hx, %_ZN2cv3Mat2atIdEERT_i.exit ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i1 %.not.lcssa

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.ha, %bb.n ], [ %i.hy, %bb.q ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn34.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv18preprocess2DKernelERKNS_3MatERSt6vectorINS_6Point_IiEESaIS5_EERS3_IhSaIhEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.18", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !18
  store i32 16842752, ptr %3, align 8, !tbaa !193
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !194
  %i.d = call noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.e = load i32, ptr %0, align 8, !tbaa !107
  %i.f = and i32 %i.e, 4095                       ; 3 uses
  switch i32 %i.f, label %bb.b [
    i32 6, label %bb.e
    i32 5, label %bb.e
    i32 4, label %bb.e
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv18preprocess2DKernelERKNS_3MatERSt6vectorINS_6Point_IiEESaIS5_EERS3_IhSaIhEE, ptr noundef nonnull @.str.19, i32 noundef 403) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !25
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %spec.store.select = call i32 @llvm.umax.i32(i32 %i.d, i32 1)
  %i.m = sext i32 %spec.store.select to i64       ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !237  ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !238    ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.m
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = sub nuw nsw i64 %i.m, %i.t
  call void @_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.v)
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ugt i64 %i.t, %i.m
  br i1 %i.w, label %bb.h, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.x
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.x, ptr %i.n, align 8, !tbaa !237
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit: ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.y = add nuw nsw i32 0, 1
  %i.z = shl nuw nsw i32 %i.f, 2
  %i.aa = and i32 %i.z, 124
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = lshr i64 1275511473185297, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 15
  %i.af = mul nuw nsw i32 %i.ae, %i.y
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = mul nsw i64 %i.ag, %i.m                 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66 ; 2 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !67    ; 5 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp ugt i64 %i.ah, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit
  %i.ap = sub nuw i64 %i.ah, %i.an
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ap)
  %.pre = load ptr, ptr %2, align 8, !tbaa !67
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit
  %i.aq = icmp ult i64 %i.ah, %i.an
  br i1 %i.aq, label %bb.k, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.aj, %i.ar
  br i1 %.not.i.i81, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.ar, ptr %i.ai, align 8, !tbaa !66
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.as = phi ptr [ %.pre, %bb.i ], [ %i.ak, %bb.j ], [ %i.ak, %bb.k ], [ %i.ak, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !130
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !122 ; 6 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph104.split, label %._crit_edge105

.lr.ph104.split:                                  ; preds = %.lr.ph104, %._crit_edge
  %i.bb = phi i32 [ %i.dt, %._crit_edge ], [ %i.az, %.lr.ph104 ] ; 5 uses
  %i.bc = phi i32 [ %i.du, %._crit_edge ], [ %i.az, %.lr.ph104 ] ; 4 uses
  %i.bd = phi i32 [ %i.dv, %._crit_edge ], [ %i.az, %.lr.ph104 ] ; 3 uses
  %i.be = phi i32 [ %i.dw, %._crit_edge ], [ %i.az, %.lr.ph104 ] ; 2 uses
  %i.bf = phi i32 [ %i.dx, %._crit_edge ], [ %i.az, %.lr.ph104 ] ; 2 uses
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %._crit_edge ], [ 0, %.lr.ph104 ] ; 3 uses
  %.072103 = phi i32 [ %.173.lcssa, %._crit_edge ], [ 0, %.lr.ph104 ] ; 5 uses
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !105
  %i.bh = load i64, ptr %i.ax, align 8, !tbaa !97
  %i.bi = mul i64 %i.bh, %indvars.iv120
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi ; 4 uses
  %i.bk = icmp sgt i32 %i.bf, 0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph104.split
  %.sroa.483.0.insert.shift = shl nuw nsw i64 %indvars.iv120, 32 ; 4 uses
  switch i32 %i.f, label %.lr.ph.split [
    i32 0, label %.lr.ph.split.us
    i32 4, label %.lr.ph.split.us90
    i32 5, label %.lr.ph.split.us96
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %i.bl = phi i32 [ %i.bv, %bb.m ], [ %i.bb, %.lr.ph ]
  %i.bm = phi i32 [ %i.bw, %bb.m ], [ %i.bc, %.lr.ph ]
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %bb.m ], [ 0, %.lr.ph ] ; 3 uses
  %.17389.us = phi i32 [ %.6.us, %bb.m ], [ %.072103, %.lr.ph ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv114
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !25  ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.bq = sext i32 %.17389.us to i64              ; 2 uses
  %i.br = load ptr, ptr %1, align 8, !tbaa !238
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  %.sroa.086.0.insert.insert.us = or disjoint i64 %.sroa.483.0.insert.shift, %indvars.iv114
  store i64 %.sroa.086.0.insert.insert.us, ptr %i.bs, align 4, !tbaa !12
  %i.bt = add nsw i32 %.17389.us, 1
  %i.bu = getelementptr inbounds i8, ptr %i.as, i64 %i.bq
  store i8 %i.bo, ptr %i.bu, align 1, !tbaa !25
  %.pre125 = load i32, ptr %i.ay, align 4, !tbaa !122 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.us
  %i.bv = phi i32 [ %.pre125, %bb.l ], [ %i.bl, %.lr.ph.split.us ] ; 2 uses
  %i.bw = phi i32 [ %.pre125, %bb.l ], [ %i.bm, %.lr.ph.split.us ] ; 6 uses
  %.6.us = phi i32 [ %i.bt, %bb.l ], [ %.17389.us, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next115, %i.bx
  br i1 %i.by, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !608

.lr.ph.split.us90:                                ; preds = %.lr.ph, %bb.o
  %i.bz = phi i32 [ %i.ck, %bb.o ], [ %i.bb, %.lr.ph ]
  %i.ca = phi i32 [ %i.cl, %bb.o ], [ %i.bc, %.lr.ph ]
  %i.cb = phi i32 [ %i.cm, %bb.o ], [ %i.bd, %.lr.ph ]
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %bb.o ], [ 0, %.lr.ph ] ; 3 uses
  %.17389.us91 = phi i32 [ %.6.us93, %bb.o ], [ %.072103, %.lr.ph ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv111
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !12 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us90
  %i.cf = sext i32 %.17389.us91 to i64            ; 2 uses
  %i.cg = load ptr, ptr %1, align 8, !tbaa !238
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %.sroa.084.0.insert.insert.us = or disjoint i64 %.sroa.483.0.insert.shift, %indvars.iv111
  store i64 %.sroa.084.0.insert.insert.us, ptr %i.ch, align 4, !tbaa !12
  %i.ci = add nsw i32 %.17389.us91, 1
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.cf
  store i32 %i.cd, ptr %i.cj, align 4, !tbaa !12
  %.pre124 = load i32, ptr %i.ay, align 4, !tbaa !122 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.us90
  %i.ck = phi i32 [ %.pre124, %bb.n ], [ %i.bz, %.lr.ph.split.us90 ] ; 2 uses
  %i.cl = phi i32 [ %.pre124, %bb.n ], [ %i.ca, %.lr.ph.split.us90 ] ; 2 uses
  %i.cm = phi i32 [ %.pre124, %bb.n ], [ %i.cb, %.lr.ph.split.us90 ] ; 5 uses
  %.6.us93 = phi i32 [ %i.ci, %bb.n ], [ %.17389.us91, %.lr.ph.split.us90 ] ; 2 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next112, %i.cn
  br i1 %i.co, label %.lr.ph.split.us90, label %._crit_edge, !llvm.loop !608

.lr.ph.split.us96:                                ; preds = %.lr.ph, %bb.q
  %i.cp = phi i32 [ %i.db, %bb.q ], [ %i.bb, %.lr.ph ]
  %i.cq = phi i32 [ %i.dc, %bb.q ], [ %i.bc, %.lr.ph ]
  %i.cr = phi i32 [ %i.dd, %bb.q ], [ %i.bd, %.lr.ph ]
  %i.cs = phi i32 [ %i.de, %bb.q ], [ %i.be, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.lr.ph ] ; 3 uses
  %.17389.us97 = phi i32 [ %.6.us99, %bb.q ], [ %.072103, %.lr.ph ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !240 ; 2 uses
  %i.cv = fcmp oeq float %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us96
  %i.cw = sext i32 %.17389.us97 to i64            ; 2 uses
  %i.cx = load ptr, ptr %1, align 8, !tbaa !238
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw
  %.sroa.082.0.insert.insert.us = or disjoint i64 %.sroa.483.0.insert.shift, %indvars.iv
  store i64 %.sroa.082.0.insert.insert.us, ptr %i.cy, align 4, !tbaa !12
  %i.cz = add nsw i32 %.17389.us97, 1
  %i.da = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.cw
  store float %i.cu, ptr %i.da, align 4, !tbaa !240
  %.pre123 = load i32, ptr %i.ay, align 4, !tbaa !122 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.split.us96
  %i.db = phi i32 [ %i.cp, %.lr.ph.split.us96 ], [ %.pre123, %bb.p ] ; 2 uses
  %i.dc = phi i32 [ %i.cq, %.lr.ph.split.us96 ], [ %.pre123, %bb.p ] ; 2 uses
  %i.dd = phi i32 [ %i.cr, %.lr.ph.split.us96 ], [ %.pre123, %bb.p ] ; 2 uses
  %i.de = phi i32 [ %i.cs, %.lr.ph.split.us96 ], [ %.pre123, %bb.p ] ; 4 uses
  %.6.us99 = phi i32 [ %.17389.us97, %.lr.ph.split.us96 ], [ %i.cz, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %.lr.ph.split.us96, label %._crit_edge, !llvm.loop !608

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.s
  %i.dh = phi i32 [ %i.dq, %bb.s ], [ %i.bb, %.lr.ph ]
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %bb.s ], [ 0, %.lr.ph ] ; 3 uses
  %.17389 = phi i32 [ %.6, %bb.s ], [ %.072103, %.lr.ph ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv117
  %i.dj = load double, ptr %i.di, align 8, !tbaa !155 ; 2 uses
  %i.dk = fcmp oeq double %i.dj, 0.000000e+00
  br i1 %i.dk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split
  %i.dl = sext i32 %.17389 to i64                 ; 2 uses
  %i.dm = load ptr, ptr %1, align 8, !tbaa !238
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dl
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.483.0.insert.shift, %indvars.iv117
  store i64 %.sroa.0.0.insert.insert, ptr %i.dn, align 4, !tbaa !12
  %i.do = add nsw i32 %.17389, 1
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.dl
  store double %i.dj, ptr %i.dp, align 8, !tbaa !155
  %.pre126 = load i32, ptr %i.ay, align 4, !tbaa !122
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.split
  %i.dq = phi i32 [ %i.dh, %.lr.ph.split ], [ %.pre126, %bb.r ] ; 7 uses
  %.6 = phi i32 [ %.17389, %.lr.ph.split ], [ %i.do, %bb.r ] ; 2 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
end_hunk_0
