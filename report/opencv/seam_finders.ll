Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/seam_finders?download=true
inline.NumInlined: 2970
inline.NumDeleted: 1133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv9partitionINS_6Point_IiEENS_6detail12DpSeamFinder11ClosePointsEEEiRKSt6vectorIT_SaIS7_EERS6_IiSaIiEET0_:bb.a
  %i.de = icmp sgt i32 %i.dd, -1
  br i1 %i.de, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = add nsw i32 %.088146, 1
  %i.dg = xor i32 %.088146, -1                    ; 2 uses
  store i32 %i.dg, ptr %i.dc, align 4, !tbaa !48
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dh = phi i32 [ %i.dg, %bb.s ], [ %i.dd, %bb.r ]
  %.1 = phi i32 [ %i.df, %bb.s ], [ %.088146, %bb.r ] ; 2 uses
  %i.di = xor i32 %i.dh, -1
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv162
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !48
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count166
  br i1 %exitcond167.not, label %._crit_edge.thread, label %.preheader, !llvm.loop !405

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0119.0184187, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.t, %._crit_edge
  %.088.lcssa193 = phi i32 [ 0, %._crit_edge ], [ %.1, %bb.t ]
  %i.dk = ptrtoint ptr %.sroa.0119.0184187 to i64
  %i.dl = sub i64 %.sroa.10.0183190, %i.dk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.0184187, i64 noundef %i.dl) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  %.088.lcssa194 = phi i32 [ 0, %._crit_edge ], [ %.088.lcssa193, %._crit_edge.thread ]
  ret i32 %.088.lcssa194

bb.u:                                             ; preds = %bb.n
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %.sroa.0119.0184187, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIiSaIiEED2Ev.exit118, label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u
  %.sroa.10.0183189 = phi i64 [ %i.p, %.thread ], [ %.sroa.10.0183190, %bb.u ]
  %.sroa.0119.0184188 = phi ptr [ %i.m, %.thread ], [ %.sroa.0119.0184187, %bb.u ] ; 2 uses
  %.pn.pn126 = phi { ptr, i32 } [ %.pn, %.thread ], [ %i.dm, %bb.u ]
  %i.dn = ptrtoint ptr %.sroa.0119.0184188 to i64
  %i.do = sub i64 %.sroa.10.0183189, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.0184188, i64 noundef %i.do) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

_ZNSt6vectorIiSaIiEED2Ev.exit118:                 ; preds = %bb.v, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn126, %bb.v ], [ %i.dm, %bb.u ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail12DpSeamFinder12computeCostsERKNS_3MatES4_NS_6Point_IiEES6_iRNS_4Mat_IfEES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i64 %3, i64 %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %.sroa.0148.0.extract.trunc = trunc i64 %3 to i32
  %.sroa.2149.0.extract.shift = lshr i64 %3, 32
  %.sroa.2149.0.extract.trunc = trunc nuw i64 %.sroa.2149.0.extract.shift to i32
  %.sroa.0147.0.extract.trunc = trunc i64 %4 to i32
  %.sroa.2.0.extract.shift = lshr i64 %4, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.b = sext i32 %5 to i64                       ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !137
  %i.f = and i32 %i.e, 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv6detail12DpSeamFinder12computeCostsERKNS_3MatES4_NS_6Point_IiEES6_iRNS_4Mat_IfEES9_, ptr noundef nonnull @.str.1, i32 noundef 750) #29
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %8, align 8, !tbaa !29     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !30
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ad

bb.g:                                             ; preds = %bb.a
  %i.n = load i32, ptr %1, align 8, !tbaa !108
  %i.o = and i32 %i.n, 4095
  switch i32 %i.o, label %.thread255 [
    i32 69, label %bb.h
    i32 64, label %bb.i
    i32 101, label %bb.j
    i32 96, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.p = load i32, ptr %2, align 8, !tbaa !108
  %i.q = and i32 %i.p, 4095
  %i.r = icmp eq i32 %i.q, 69
  br i1 %i.r, label %bb.p, label %.thread255

bb.i:                                             ; preds = %bb.g
  %i.s = load i32, ptr %2, align 8, !tbaa !108
  %i.t = and i32 %i.s, 4095
  %i.u = icmp eq i32 %i.t, 64
  br i1 %i.u, label %bb.p, label %.thread255

bb.j:                                             ; preds = %bb.g
  %i.v = load i32, ptr %2, align 8, !tbaa !108
  %i.w = and i32 %i.v, 4095
  %i.x = icmp eq i32 %i.w, 101
  br i1 %i.x, label %bb.p, label %.thread255

bb.k:                                             ; preds = %bb.g
  %i.y = load i32, ptr %2, align 8, !tbaa !108
  %i.z = and i32 %i.y, 4095
  %i.aa = icmp eq i32 %i.z, 96
  br i1 %i.aa, label %bb.p, label %.thread255

.thread255:                                       ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %.thread255
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv6detail12DpSeamFinder12computeCostsERKNS_3MatES4_NS_6Point_IiEES6_iRNS_4Mat_IfEES9_, ptr noundef nonnull @.str.1, i32 noundef 764) #29
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %.thread255
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.o
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !30
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, %bb.n
  %.pn163 = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %i.ac, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ad

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0153 = phi ptr [ @_ZN2cv6detail12_GLOBAL__N_113diffL2Square4IfEEfRKNS_3MatEiiS5_ii, %bb.j ], [ @_ZN2cv6detail12_GLOBAL__N_113diffL2Square3IfEEfRKNS_3MatEiiS5_ii, %bb.h ], [ @_ZN2cv6detail12_GLOBAL__N_113diffL2Square3IhEEfRKNS_3MatEiiS5_ii, %bb.i ], [ @_ZN2cv6detail12_GLOBAL__N_113diffL2Square4IhEEfRKNS_3MatEiiS5_ii, %bb.k ] ; 4 uses
  %i.ai = add nsw i32 %5, 1                       ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.b ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !47
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.b ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !48 ; 6 uses
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !48 ; 6 uses
  %i.ar = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.aq) ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !48 ; 6 uses
  %i.av = load i32, ptr %i.as, align 4, !tbaa !48 ; 6 uses
  %i.aw = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.av) ; 5 uses
  %i.ax = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %i.ap) ; 2 uses
  %i.ay = sub nsw i32 %i.ax, %i.ar                ; 2 uses
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.av, i32 %i.au) ; 2 uses
  %i.ba = sub nsw i32 %i.az, %i.aw                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !149 ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %.sroa.0148.0.extract.trunc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !150 ; 2 uses
  %i.bg = sub nsw i32 %i.bf, %.sroa.2149.0.extract.trunc ; 2 uses
  %i.bh = sub nsw i32 %i.bc, %.sroa.0147.0.extract.trunc ; 2 uses
  %i.bi = sub nsw i32 %i.bf, %.sroa.2.0.extract.trunc ; 2 uses
  %i.bj = add nuw nsw i32 %i.ay, 1
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef %i.ba, i32 noundef %i.bj, i32 noundef 5)
  %i.bk = icmp slt i32 %i.aw, %i.az
  br i1 %i.bk, label %.preheader256.lr.ph, label %._crit_edge

.preheader256.lr.ph:                              ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1724
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1716
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.bz = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.aq)
  %smin = sext i32 %i.bz to i64
  %i.ca = sext i32 %i.ar to i64
  %i.cb = add i32 %i.aq, %i.ap
  %i.cc = add i32 %i.cb, 1
  %i.cd = sub i32 %i.cc, %i.ar
  %i.ce = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.av)
  %smin286 = sext i32 %i.ce to i64
  %i.cf = sext i32 %i.aw to i64
  %i.cg = tail call i32 @llvm.smax.i32(i32 %i.au, i32 %i.av)
  br label %.preheader256

.preheader256:                                    ; preds = %.preheader256.lr.ph, %bb.v
  %indvars.iv287 = phi i64 [ %smin286, %.preheader256.lr.ph ], [ %indvars.iv.next288, %bb.v ] ; 4 uses
  %i.ch = sub nsw i64 %indvars.iv287, %i.cf
  %i.ci = trunc nsw i64 %indvars.iv287 to i32     ; 2 uses
  %i.cj = add nsw i32 %i.bg, %i.ci                ; 3 uses
  %i.ck = add nsw i32 %i.bi, %i.ci                ; 3 uses
  %i.cl = sext i32 %i.cj to i64
  %i.cm = sext i32 %i.ck to i64
  br label %bb.w

._crit_edge:                                      ; preds = %bb.v, %bb.p
  %i.cn = add nuw nsw i32 %i.ba, 1
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef %i.cn, i32 noundef %i.ay, i32 noundef 5)
  %i.co = icmp slt i32 %i.ar, %i.ax
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1716
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 11 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1500
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1624
  br i1 %i.co, label %.preheader.us.preheader, label %.split279.us

.preheader.us.preheader:                          ; preds = %._crit_edge
  %i.dd = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.aq) ; 5 uses
  %smin291 = sext i32 %i.dd to i64                ; 11 uses
  %i.de = sext i32 %i.ar to i64                   ; 15 uses
  %i.df = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.aq) ; 9 uses
  %i.dg = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.av)
  %smin312 = sext i32 %i.dg to i64
  %i.dh = sext i32 %i.aw to i64
  %i.di = add i32 %i.av, %i.au
  %i.dj = add i32 %i.di, 1
  %i.dk = sub i32 %i.dj, %i.aw
  %i.dl = sub i32 %i.df, %i.dd                    ; 2 uses
  %12 = xor i32 %i.dd, -1
  %13 = add i32 %i.df, %12                        ; 2 uses
  %xtraiter = and i32 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %14 = icmp ult i32 %13, 3
  %invariant.op = sub i64 1, %i.de
  %invariant.op368 = sub i64 2, %i.de
  %invariant.op370 = sub i64 3, %i.de
  %i.dm = xor i32 %i.dd, -1
  %i.dn = add i32 %i.df, %i.dm                    ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check350 = icmp ult i32 %i.dn, 7
  %n.vec352 = and i64 %i.dp, 8589934584           ; 3 uses
  %i.dq = add nsw i64 %n.vec352, %smin291
  %invariant.op372 = sub i64 %smin291, %i.de
  %cmp.n357 = icmp eq i64 %i.dp, %n.vec352
  %xtraiter365 = and i32 %i.dl, 3                 ; 2 uses
  %lcmp.mod366.not = icmp eq i32 %xtraiter365, 0
  %15 = icmp ult i32 %13, 3
  %invariant.op372.a = sub i64 1, %i.de
  %invariant.op374 = sub i64 2, %i.de
  %invariant.op376 = sub i64 3, %i.de
  %i.dr = xor i32 %i.dd, -1
  %i.ds = add i32 %i.df, %i.dr                    ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ds, 7
  %n.vec = and i64 %i.du, 8589934584              ; 3 uses
  %i.dv = add nsw i64 %n.vec, %smin291
  %invariant.op380 = sub i64 %smin291, %i.de
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge262.us
  %indvars.iv313 = phi i64 [ %smin312, %.preheader.us.preheader ], [ %indvars.iv.next314, %._crit_edge262.us ] ; 8 uses
  %i.dw = icmp sgt i64 %indvars.iv313, 0
  %i.dx = add nsw i64 %indvars.iv313, -1
  %i.dy = sub nsw i64 %indvars.iv313, %i.dh       ; 11 uses
  %i.dz = trunc nsw i64 %indvars.iv313 to i32     ; 2 uses
  %i.ea = add nsw i32 %i.bg, %i.dz                ; 3 uses
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  %i.ec = add nsw i32 %i.bi, %i.dz                ; 3 uses
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  %i.ee = sext i32 %i.ea to i64
  %i.ef = sext i32 %i.eb to i64
  %i.eg = sext i32 %i.ec to i64
  %i.eh = sext i32 %i.ed to i64
  br i1 %i.dw, label %.lr.ph.split.us.us, label %.lr.ph.split.us266

.lr.ph.split.us266:                               ; preds = %.preheader.us
  %i.ei = load i32, ptr %i.ct, align 4, !tbaa !63
  %.fr280 = freeze i32 %i.ei
  %i.ej = icmp slt i32 %.fr280, 2
  %i.ek = load ptr, ptr %i.cu, align 8, !tbaa !64 ; 7 uses
  br i1 %i.ej, label %.lr.ph.split.us266.split.us.preheader, label %.lr.ph.split.us266.split.preheader

.lr.ph.split.us266.split.preheader:               ; preds = %.lr.ph.split.us266
  br i1 %lcmp.mod.not, label %.lr.ph.split.us266.split.prol.loopexit, label %.lr.ph.split.us266.split.prol

.lr.ph.split.us266.split.prol:                    ; preds = %.lr.ph.split.us266.split.preheader, %.lr.ph.split.us266.split.prol
  %indvars.iv292.prol = phi i64 [ %indvars.iv.next293.prol, %.lr.ph.split.us266.split.prol ], [ %smin291, %.lr.ph.split.us266.split.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.split.us266.split.prol ], [ 0, %.lr.ph.split.us266.split.preheader ]
  %i.el = sub nsw i64 %indvars.iv292.prol, %i.de
  %i.em = load i64, ptr %i.cv, align 8
  %i.en = mul i64 %i.em, %i.dy
  %.sink.i216.us269.prol = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en
  %i.eo = getelementptr inbounds [4 x i8], ptr %.sink.i216.us269.prol, i64 %i.el
  store float 1.950750e+05, ptr %i.eo, align 4, !tbaa !156
  %indvars.iv.next293.prol = add nsw i64 %indvars.iv292.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us266.split.prol.loopexit, label %.lr.ph.split.us266.split.prol, !llvm.loop !406

.lr.ph.split.us266.split.prol.loopexit:           ; preds = %.lr.ph.split.us266.split.prol, %.lr.ph.split.us266.split.preheader
  %indvars.iv292.unr = phi i64 [ %smin291, %.lr.ph.split.us266.split.preheader ], [ %indvars.iv.next293.prol, %.lr.ph.split.us266.split.prol ]
  br i1 %14, label %._crit_edge262.us, label %.lr.ph.split.us266.split

.lr.ph.split.us266.split.us.preheader:            ; preds = %.lr.ph.split.us266
  br i1 %min.iters.check350, label %.lr.ph.split.us266.split.us.preheader362, label %vector.body353

vector.body353:                                   ; preds = %.lr.ph.split.us266.split.us.preheader, %vector.body353
  %index354 = phi i64 [ %index.next355, %vector.body353 ], [ 0, %.lr.ph.split.us266.split.us.preheader ] ; 2 uses
  %.reass373 = add i64 %index354, %invariant.op372
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %.reass373 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x float> splat (float 1.950750e+05), ptr %i.ep, align 4, !tbaa !156
  store <4 x float> splat (float 1.950750e+05), ptr %i.eq, align 4, !tbaa !156
  %index.next355 = add nuw i64 %index354, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next355, %n.vec352
  br i1 %i.er, label %middle.block356, label %vector.body353, !llvm.loop !407

middle.block356:                                  ; preds = %vector.body353
  br i1 %cmp.n357, label %._crit_edge262.us, label %.lr.ph.split.us266.split.us.preheader362

.lr.ph.split.us266.split.us.preheader362:         ; preds = %.lr.ph.split.us266.split.us.preheader, %middle.block356
  %indvars.iv296.ph = phi i64 [ %smin291, %.lr.ph.split.us266.split.us.preheader ], [ %i.dq, %middle.block356 ]
  br label %.lr.ph.split.us266.split.us

.lr.ph.split.us266.split.us:                      ; preds = %.lr.ph.split.us266.split.us.preheader362, %.lr.ph.split.us266.split.us
  %indvars.iv296 = phi i64 [ %indvars.iv.next297, %.lr.ph.split.us266.split.us ], [ %indvars.iv296.ph, %.lr.ph.split.us266.split.us.preheader362 ] ; 2 uses
  %i.es = sub nsw i64 %indvars.iv296, %i.de
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.es
  store float 1.950750e+05, ptr %i.et, align 4, !tbaa !156
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %lftr.wideiv298 = trunc i64 %indvars.iv.next297 to i32
  %exitcond299.not = icmp eq i32 %i.df, %lftr.wideiv298
  br i1 %exitcond299.not, label %._crit_edge262.us, label %.lr.ph.split.us266.split.us, !llvm.loop !408

.lr.ph.split.us266.split:                         ; preds = %.lr.ph.split.us266.split.prol.loopexit, %.lr.ph.split.us266.split
  %indvars.iv292 = phi i64 [ %indvars.iv.next293.3, %.lr.ph.split.us266.split ], [ %indvars.iv292.unr, %.lr.ph.split.us266.split.prol.loopexit ] ; 5 uses
  %i.eu = sub nsw i64 %indvars.iv292, %i.de
  %i.ev = load i64, ptr %i.cv, align 8
  %i.ew = mul i64 %i.ev, %i.dy
  %.sink.i216.us269 = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ew
  %i.ex = getelementptr inbounds [4 x i8], ptr %.sink.i216.us269, i64 %i.eu
  store float 1.950750e+05, ptr %i.ex, align 4, !tbaa !156
  %.reass = add i64 %indvars.iv292, %invariant.op
  %i.ey = load i64, ptr %i.cv, align 8
  %i.ez = mul i64 %i.ey, %i.dy
  %.sink.i216.us269.1 = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ez
  %i.fa = getelementptr inbounds [4 x i8], ptr %.sink.i216.us269.1, i64 %.reass
  store float 1.950750e+05, ptr %i.fa, align 4, !tbaa !156
  %.reass369 = add i64 %indvars.iv292, %invariant.op368
  %i.fb = load i64, ptr %i.cv, align 8
  %i.fc = mul i64 %i.fb, %i.dy
  %.sink.i216.us269.2 = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fc
  %i.fd = getelementptr inbounds [4 x i8], ptr %.sink.i216.us269.2, i64 %.reass369
  store float 1.950750e+05, ptr %i.fd, align 4, !tbaa !156
  %.reass371 = add i64 %indvars.iv292, %invariant.op370
  %i.fe = load i64, ptr %i.cv, align 8
  %i.ff = mul i64 %i.fe, %i.dy
  %.sink.i216.us269.3 = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ff
  %i.fg = getelementptr inbounds [4 x i8], ptr %.sink.i216.us269.3, i64 %.reass371
  store float 1.950750e+05, ptr %i.fg, align 4, !tbaa !156
  %indvars.iv.next293.3 = add nsw i64 %indvars.iv292, 4 ; 2 uses
  %lftr.wideiv294.3 = trunc i64 %indvars.iv.next293.3 to i32
  %exitcond295.not.3 = icmp eq i32 %i.df, %lftr.wideiv294.3
  br i1 %exitcond295.not.3, label %._crit_edge262.us, label %.lr.ph.split.us266.split, !llvm.loop !409

.lr.ph.split.us.us:                               ; preds = %.preheader.us
  %i.fh = load i32, ptr %i.cp, align 8, !tbaa !129
  %i.fi = sext i32 %i.fh to i64
  %i.fj = icmp slt i64 %indvars.iv313, %i.fi
  br i1 %i.fj, label %.lr.ph.split.us.split.us274, label %.lr.ph.split.us.split.us.us

.lr.ph.split.us.split.us.us:                      ; preds = %.lr.ph.split.us.us
  %i.fk = load i32, ptr %i.ct, align 4, !tbaa !63
  %.fr = freeze i32 %i.fk
  %i.fl = icmp slt i32 %.fr, 2
  %i.fm = load ptr, ptr %i.cu, align 8, !tbaa !64 ; 7 uses
  br i1 %i.fl, label %.lr.ph.split.us.split.us.split.us.us.preheader, label %.lr.ph.split.us.split.us.split.us271.preheader

.lr.ph.split.us.split.us.split.us271.preheader:   ; preds = %.lr.ph.split.us.split.us.us
  br i1 %lcmp.mod366.not, label %.lr.ph.split.us.split.us.split.us271.prol.loopexit, label %.lr.ph.split.us.split.us.split.us271.prol

.lr.ph.split.us.split.us.split.us271.prol:        ; preds = %.lr.ph.split.us.split.us.split.us271.preheader, %.lr.ph.split.us.split.us.split.us271.prol
  %indvars.iv300.prol = phi i64 [ %indvars.iv.next301.prol, %.lr.ph.split.us.split.us.split.us271.prol ], [ %smin291, %.lr.ph.split.us.split.us.split.us271.preheader ] ; 2 uses
  %prol.iter367 = phi i32 [ %prol.iter367.next, %.lr.ph.split.us.split.us.split.us271.prol ], [ 0, %.lr.ph.split.us.split.us.split.us271.preheader ]
  %i.fn = sub nsw i64 %indvars.iv300.prol, %i.de
  %i.fo = load i64, ptr %i.cv, align 8
  %i.fp = mul i64 %i.fo, %i.dy
  %.sink.i216.us.us.us.prol = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fp
  %i.fq = getelementptr inbounds [4 x i8], ptr %.sink.i216.us.us.us.prol, i64 %i.fn
  store float 1.950750e+05, ptr %i.fq, align 4, !tbaa !156
  %indvars.iv.next301.prol = add nsw i64 %indvars.iv300.prol, 1 ; 2 uses
  %prol.iter367.next = add i32 %prol.iter367, 1   ; 2 uses
  %prol.iter367.cmp.not = icmp eq i32 %prol.iter367.next, %xtraiter365
  br i1 %prol.iter367.cmp.not, label %.lr.ph.split.us.split.us.split.us271.prol.loopexit, label %.lr.ph.split.us.split.us.split.us271.prol, !llvm.loop !410

.lr.ph.split.us.split.us.split.us271.prol.loopexit: ; preds = %.lr.ph.split.us.split.us.split.us271.prol, %.lr.ph.split.us.split.us.split.us271.preheader
  %indvars.iv300.unr = phi i64 [ %smin291, %.lr.ph.split.us.split.us.split.us271.preheader ], [ %indvars.iv.next301.prol, %.lr.ph.split.us.split.us.split.us271.prol ]
  br i1 %15, label %._crit_edge262.us, label %.lr.ph.split.us.split.us.split.us271

.lr.ph.split.us.split.us.split.us.us.preheader:   ; preds = %.lr.ph.split.us.split.us.us
  br i1 %min.iters.check, label %.lr.ph.split.us.split.us.split.us.us.preheader359, label %vector.body

vector.body:                                      ; preds = %.lr.ph.split.us.split.us.split.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.split.us.split.us.split.us.us.preheader ] ; 2 uses
  %.reass381 = add i64 %index, %invariant.op380
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %.reass381 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <4 x float> splat (float 1.950750e+05), ptr %i.fr, align 4, !tbaa !156
  store <4 x float> splat (float 1.950750e+05), ptr %i.fs, align 4, !tbaa !156
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !411

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge262.us, label %.lr.ph.split.us.split.us.split.us.us.preheader359

.lr.ph.split.us.split.us.split.us.us.preheader359: ; preds = %.lr.ph.split.us.split.us.split.us.us.preheader, %middle.block
  %indvars.iv304.ph = phi i64 [ %smin291, %.lr.ph.split.us.split.us.split.us.us.preheader ], [ %i.dv, %middle.block ]
  br label %.lr.ph.split.us.split.us.split.us.us

.lr.ph.split.us.split.us.split.us271:             ; preds = %.lr.ph.split.us.split.us.split.us271.prol.loopexit, %.lr.ph.split.us.split.us.split.us271
  %indvars.iv300 = phi i64 [ %indvars.iv.next301.3, %.lr.ph.split.us.split.us.split.us271 ], [ %indvars.iv300.unr, %.lr.ph.split.us.split.us.split.us271.prol.loopexit ] ; 5 uses
  %i.fu = sub nsw i64 %indvars.iv300, %i.de
  %i.fv = load i64, ptr %i.cv, align 8
  %i.fw = mul i64 %i.fv, %i.dy
  %.sink.i216.us.us.us = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fw
  %i.fx = getelementptr inbounds [4 x i8], ptr %.sink.i216.us.us.us, i64 %i.fu
  store float 1.950750e+05, ptr %i.fx, align 4, !tbaa !156
  %.reass373.a = add i64 %indvars.iv300, %invariant.op372.a
  %i.fy = load i64, ptr %i.cv, align 8
  %i.fz = mul i64 %i.fy, %i.dy
  %.sink.i216.us.us.us.1 = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fz
  %i.ga = getelementptr inbounds [4 x i8], ptr %.sink.i216.us.us.us.1, i64 %.reass373.a
  store float 1.950750e+05, ptr %i.ga, align 4, !tbaa !156
  %.reass375 = add i64 %indvars.iv300, %invariant.op374
  %i.gb = load i64, ptr %i.cv, align 8
  %i.gc = mul i64 %i.gb, %i.dy
  %.sink.i216.us.us.us.2 = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gc
  %i.gd = getelementptr inbounds [4 x i8], ptr %.sink.i216.us.us.us.2, i64 %.reass375
  store float 1.950750e+05, ptr %i.gd, align 4, !tbaa !156
  %.reass377 = add i64 %indvars.iv300, %invariant.op376
  %i.ge = load i64, ptr %i.cv, align 8
  %i.gf = mul i64 %i.ge, %i.dy
  %.sink.i216.us.us.us.3 = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gf
  %i.gg = getelementptr inbounds [4 x i8], ptr %.sink.i216.us.us.us.3, i64 %.reass377
  store float 1.950750e+05, ptr %i.gg, align 4, !tbaa !156
  %indvars.iv.next301.3 = add nsw i64 %indvars.iv300, 4 ; 2 uses
  %lftr.wideiv302.3 = trunc i64 %indvars.iv.next301.3 to i32
  %exitcond303.not.3 = icmp eq i32 %i.df, %lftr.wideiv302.3
  br i1 %exitcond303.not.3, label %._crit_edge262.us, label %.lr.ph.split.us.split.us.split.us271, !llvm.loop !409

.lr.ph.split.us.split.us.split.us.us:             ; preds = %.lr.ph.split.us.split.us.split.us.us.preheader359, %.lr.ph.split.us.split.us.split.us.us
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %.lr.ph.split.us.split.us.split.us.us ], [ %indvars.iv304.ph, %.lr.ph.split.us.split.us.split.us.us.preheader359 ] ; 2 uses
  %i.gh = sub nsw i64 %indvars.iv304, %i.de
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.gh
  store float 1.950750e+05, ptr %i.gi, align 4, !tbaa !156
  %indvars.iv.next305 = add nsw i64 %indvars.iv304, 1 ; 2 uses
  %lftr.wideiv306 = trunc i64 %indvars.iv.next305 to i32
  %exitcond307.not = icmp eq i32 %i.df, %lftr.wideiv306
  br i1 %exitcond307.not, label %._crit_edge262.us, label %.lr.ph.split.us.split.us.split.us.us, !llvm.loop !412

.lr.ph.split.us.split.us274:                      ; preds = %.lr.ph.split.us.us, %bb.u
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %bb.u ], [ %smin291, %.lr.ph.split.us.us ] ; 5 uses
  %i.gj = load i32, ptr %i.cp, align 8, !tbaa !129
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv313, %i.gk
  br i1 %i.gl, label %bb.q, label %.sink.split

bb.q:                                             ; preds = %.lr.ph.split.us.split.us274
  %i.gm = load i32, ptr %i.cq, align 4, !tbaa !63
  %i.gn = icmp slt i32 %i.gm, 2                   ; 2 uses
  %i.go = load ptr, ptr %i.cr, align 8, !tbaa !64 ; 2 uses
  %i.gp = load i64, ptr %i.cs, align 8            ; 2 uses
  %i.gq = mul i64 %i.gp, %indvars.iv313
  %.sink.idx.i199.us.us = select i1 %i.gn, i64 0, i64 %i.gq
  %.sink.i200.us.us = getelementptr inbounds nuw i8, ptr %i.go, i64 %.sink.idx.i199.us.us
  %i.gr = getelementptr inbounds [4 x i8], ptr %.sink.i200.us.us, i64 %indvars.iv308
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !48
  %i.gt = icmp eq i32 %i.gs, %i.ai
  br i1 %i.gt, label %bb.r, label %.sink.split

bb.r:                                             ; preds = %bb.q
  %i.gu = mul i64 %i.gp, %i.dx
  %.sink.idx.i201.us.us = select i1 %i.gn, i64 0, i64 %i.gu
  %.sink.i202.us.us = getelementptr inbounds nuw i8, ptr %i.go, i64 %.sink.idx.i201.us.us
  %i.gv = getelementptr inbounds [4 x i8], ptr %.sink.i202.us.us, i64 %indvars.iv308
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !48
  %i.gx = icmp eq i32 %i.gw, %i.ai
  br i1 %i.gx, label %bb.s, label %.sink.split

bb.s:                                             ; preds = %bb.r
  %i.gy = trunc nsw i64 %indvars.iv308 to i32     ; 2 uses
  %i.gz = add nsw i32 %i.bd, %i.gy                ; 3 uses
  %i.ha = add nsw i32 %i.bh, %i.gy                ; 3 uses
  %i.hb = tail call noundef float %.0153(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.eb, i32 noundef %i.gz, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %i.ec, i32 noundef %i.ha), !callees !417
  %i.hc = tail call noundef float %.0153(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.ea, i32 noundef %i.gz, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %i.ed, i32 noundef %i.ha), !callees !417
  %i.hd = fadd float %i.hb, %i.hc
  %i.he = fmul float %i.hd, 5.000000e-01          ; 2 uses
  %i.hf = load i32, ptr %i.cw, align 8, !tbaa !107
  switch i32 %i.hf, label %bb.u [
    i32 0, label %.sink.split
    i32 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.hg = load i32, ptr %i.cx, align 4, !tbaa !63
  %i.hh = icmp slt i32 %i.hg, 2                   ; 2 uses
  %i.hi = load ptr, ptr %i.cy, align 8, !tbaa !64 ; 2 uses
  %i.hj = load i64, ptr %i.cz, align 8            ; 2 uses
  %i.hk = mul i64 %i.hj, %i.ee
  %.sink.idx.i205.us.us = select i1 %i.hh, i64 0, i64 %i.hk
  %.sink.i206.us.us = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.sink.idx.i205.us.us
  %i.hl = sext i32 %i.gz to i64                   ; 2 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %.sink.i206.us.us, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !156
  %i.ho = tail call noundef float @llvm.fabs.f32(float %i.hn)
  %i.hp = mul i64 %i.hj, %i.ef
  %.sink.idx.i207.us.us = select i1 %i.hh, i64 0, i64 %i.hp
  %.sink.i208.us.us = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.sink.idx.i207.us.us
  %i.hq = getelementptr inbounds [4 x i8], ptr %.sink.i208.us.us, i64 %i.hl
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !156
  %i.hs = tail call noundef float @llvm.fabs.f32(float %i.hr)
  %i.ht = fadd float %i.ho, %i.hs
  %i.hu = load i32, ptr %i.da, align 4, !tbaa !63
  %i.hv = icmp slt i32 %i.hu, 2                   ; 2 uses
  %i.hw = load ptr, ptr %i.db, align 8, !tbaa !64 ; 2 uses
  %i.hx = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.hy = mul i64 %i.hx, %i.eg
  %.sink.idx.i209.us.us = select i1 %i.hv, i64 0, i64 %i.hy
  %.sink.i210.us.us = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.sink.idx.i209.us.us
  %i.hz = sext i32 %i.ha to i64                   ; 2 uses
  %i.ia = getelementptr inbounds [4 x i8], ptr %.sink.i210.us.us, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !156
  %i.ic = tail call noundef float @llvm.fabs.f32(float %i.ib)
  %i.id = fadd float %i.ht, %i.ic
  %i.ie = mul i64 %i.hx, %i.eh
  %.sink.idx.i211.us.us = select i1 %i.hv, i64 0, i64 %i.ie
  %.sink.i212.us.us = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.sink.idx.i211.us.us
  %i.if = getelementptr inbounds [4 x i8], ptr %.sink.i212.us.us, i64 %i.hz
  %i.ig = load float, ptr %i.if, align 4, !tbaa !156
  %i.ih = tail call noundef float @llvm.fabs.f32(float %i.ig)
  %i.ii = fadd float %i.id, %i.ih
  %i.ij = fadd float %i.ii, 1.000000e+00
  %i.ik = fdiv float %i.he, %i.ij
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %.lr.ph.split.us.split.us274, %bb.q, %bb.r, %bb.t
  %.sink = phi float [ 1.950750e+05, %.lr.ph.split.us.split.us274 ], [ %i.ik, %bb.t ], [ 1.950750e+05, %bb.r ], [ 1.950750e+05, %bb.q ], [ %i.he, %bb.s ]
  %i.il = sub nsw i64 %indvars.iv308, %i.de
  %i.im = load i32, ptr %i.ct, align 4, !tbaa !63
  %i.in = icmp slt i32 %i.im, 2
  %i.io = load ptr, ptr %i.cu, align 8, !tbaa !64
  %i.ip = load i64, ptr %i.cv, align 8
  %i.iq = mul i64 %i.ip, %i.dy
  %.sink.idx.i203.us.us = select i1 %i.in, i64 0, i64 %i.iq
  %.sink.i204.us.us = getelementptr inbounds nuw i8, ptr %i.io, i64 %.sink.idx.i203.us.us
  %i.ir = getelementptr inbounds [4 x i8], ptr %.sink.i204.us.us, i64 %i.il
  store float %.sink, ptr %i.ir, align 4, !tbaa !156
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.s
  %indvars.iv.next309 = add nsw i64 %indvars.iv308, 1 ; 2 uses
  %lftr.wideiv310 = trunc i64 %indvars.iv.next309 to i32
  %exitcond311.not = icmp eq i32 %i.df, %lftr.wideiv310
  br i1 %exitcond311.not, label %._crit_edge262.us, label %.lr.ph.split.us.split.us274, !llvm.loop !413

._crit_edge262.us:                                ; preds = %.lr.ph.split.us266.split.prol.loopexit, %.lr.ph.split.us266.split, %.lr.ph.split.us266.split.us, %.lr.ph.split.us.split.us.split.us271.prol.loopexit, %.lr.ph.split.us.split.us.split.us271, %.lr.ph.split.us.split.us.split.us.us, %bb.u, %middle.block356, %middle.block
  %indvars.iv.next314 = add nsw i64 %indvars.iv313, 1 ; 2 uses
  %lftr.wideiv315 = trunc i64 %indvars.iv.next314 to i32
  %exitcond316.not = icmp eq i32 %i.dk, %lftr.wideiv315
  br i1 %exitcond316.not, label %.split279.us, label %.preheader.us, !llvm.loop !414

bb.v:                                             ; preds = %bb.ac
  %indvars.iv.next288 = add nsw i64 %indvars.iv287, 1 ; 2 uses
  %lftr.wideiv289 = trunc i64 %indvars.iv.next288 to i32
  %exitcond290.not = icmp eq i32 %i.cg, %lftr.wideiv289
  br i1 %exitcond290.not, label %._crit_edge, label %.preheader256, !llvm.loop !415

bb.w:                                             ; preds = %.preheader256, %bb.ac
  %indvars.iv = phi i64 [ %smin, %.preheader256 ], [ %indvars.iv.next, %bb.ac ] ; 6 uses
  %i.is = icmp sgt i64 %indvars.iv, 0
  br i1 %i.is, label %bb.x, label %.sink.split336

bb.x:                                             ; preds = %bb.w
  %i.it = load i32, ptr %i.bl, align 4, !tbaa !128
  %i.iu = sext i32 %i.it to i64
  %i.iv = icmp slt i64 %indvars.iv, %i.iu
  br i1 %i.iv, label %bb.y, label %.sink.split336

bb.y:                                             ; preds = %bb.x
  %i.iw = load i32, ptr %i.bm, align 4, !tbaa !63
  %i.ix = icmp slt i32 %i.iw, 2
  %i.iy = load ptr, ptr %i.bn, align 8, !tbaa !64
  %i.iz = load i64, ptr %i.bo, align 8
  %i.ja = mul i64 %i.iz, %indvars.iv287
  %.sink.idx.i = select i1 %i.ix, i64 0, i64 %i.ja
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.sink.idx.i
  %i.jb = getelementptr [4 x i8], ptr %.sink.i, i64 %indvars.iv ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !48
  %i.jd = icmp eq i32 %i.jc, %i.ai
  br i1 %i.jd, label %bb.z, label %.sink.split336

bb.z:                                             ; preds = %bb.y
  %i.je = getelementptr i8, ptr %i.jb, i64 -4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !48
  %i.jg = icmp eq i32 %i.jf, %i.ai
  br i1 %i.jg, label %bb.aa, label %.sink.split336

bb.aa:                                            ; preds = %bb.z
  %i.jh = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ji = add nsw i32 %i.bd, %i.jh                ; 3 uses
  %i.jj = add nsw i32 %i.ji, -1                   ; 2 uses
  %i.jk = add nsw i32 %i.bh, %i.jh                ; 3 uses
  %i.jl = tail call noundef float %.0153(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.cj, i32 noundef %i.jj, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %i.ck, i32 noundef %i.jk), !callees !417
  %i.jm = add nsw i32 %i.jk, -1                   ; 2 uses
  %i.jn = tail call noundef float %.0153(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.cj, i32 noundef %i.ji, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %i.ck, i32 noundef %i.jm), !callees !417
  %i.jo = fadd float %i.jl, %i.jn
  %i.jp = fmul float %i.jo, 5.000000e-01          ; 2 uses
  %i.jq = load i32, ptr %i.bs, align 8, !tbaa !107
  switch i32 %i.jq, label %bb.ac [
    i32 0, label %.sink.split336
    i32 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.jr = load i32, ptr %i.bt, align 4, !tbaa !63
  %i.js = icmp slt i32 %i.jr, 2
  %i.jt = load ptr, ptr %i.bu, align 8, !tbaa !64
  %i.ju = load i64, ptr %i.bv, align 8
  %i.jv = mul i64 %i.ju, %i.cl
  %.sink.idx.i179 = select i1 %i.js, i64 0, i64 %i.jv
  %.sink.i180 = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.sink.idx.i179 ; 2 uses
  %i.jw = sext i32 %i.ji to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %.sink.i180, i64 %i.jw
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !156
  %i.jz = tail call noundef float @llvm.fabs.f32(float %i.jy)
  %i.ka = sext i32 %i.jj to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %.sink.i180, i64 %i.ka
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !156
  %i.kd = tail call noundef float @llvm.fabs.f32(float %i.kc)
  %i.ke = fadd float %i.jz, %i.kd
  %i.kf = load i32, ptr %i.bw, align 4, !tbaa !63
  %i.kg = icmp slt i32 %i.kf, 2
  %i.kh = load ptr, ptr %i.bx, align 8, !tbaa !64
  %i.ki = load i64, ptr %i.by, align 8
  %i.kj = mul i64 %i.ki, %i.cm
  %.sink.idx.i183 = select i1 %i.kg, i64 0, i64 %i.kj
  %.sink.i184 = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.sink.idx.i183 ; 2 uses
  %i.kk = sext i32 %i.jk to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %.sink.i184, i64 %i.kk
  %i.km = load float, ptr %i.kl, align 4, !tbaa !156
  %i.kn = tail call noundef float @llvm.fabs.f32(float %i.km)
  %i.ko = fadd float %i.ke, %i.kn
  %i.kp = sext i32 %i.jm to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %.sink.i184, i64 %i.kp
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !156
  %i.ks = tail call noundef float @llvm.fabs.f32(float %i.kr)
  %i.kt = fadd float %i.ko, %i.ks
  %i.ku = fadd float %i.kt, 1.000000e+00
  %i.kv = fdiv float %i.jp, %i.ku
  br label %.sink.split336

.sink.split336:                                   ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.sink337 = phi float [ %i.jp, %bb.aa ], [ %i.kv, %bb.ab ], [ 1.950750e+05, %bb.z ], [ 1.950750e+05, %bb.y ], [ 1.950750e+05, %bb.x ], [ 1.950750e+05, %bb.w ]
  %i.kw = sub nsw i64 %indvars.iv, %i.ca
  %i.kx = load i32, ptr %i.bp, align 4, !tbaa !63
  %i.ky = icmp slt i32 %i.kx, 2
  %i.kz = load ptr, ptr %i.bq, align 8, !tbaa !64
  %i.la = load i64, ptr %i.br, align 8
  %i.lb = mul i64 %i.la, %i.ch
  %.sink.idx.i177 = select i1 %i.ky, i64 0, i64 %i.lb
  %.sink.i178 = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.sink.idx.i177
  %i.lc = getelementptr inbounds [4 x i8], ptr %.sink.i178, i64 %i.kw
  store float %.sink337, ptr %i.lc, align 4, !tbaa !156
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split336, %bb.aa
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.cd, %lftr.wideiv
  br i1 %exitcond.not, label %bb.v, label %bb.w, !llvm.loop !416

.split279.us:                                     ; preds = %._crit_edge262.us, %._crit_edge
  ret void

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn163.pn = phi { ptr, i32 } [ %.pn163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn163.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef float @_ZN2cv6detail12_GLOBAL__N_113diffL2Square3IfEEfRKNS_3MatEiiS5_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34
  %i.e = sext i32 %1 to i64
  %i.f = mul i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34
  %i.l = sext i32 %4 to i64
  %i.m = mul i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = mul nsw i32 %2, 3
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.p ; 2 uses
  %i.r = mul nsw i32 %5, 3
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.s ; 2 uses
  %i.u = load <2 x float>, ptr %i.q, align 4, !tbaa !156
  %i.v = load <2 x float>, ptr %i.t, align 4, !tbaa !156
  %i.w = fsub <2 x float> %i.u, %i.v              ; 2 uses
  %i.x = fmul <2 x float> %i.w, %i.w              ; 2 uses
  %shift = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.x, %shift
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.z = getelementptr i8, ptr %i.q, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !156
  %i.ab = getelementptr i8, ptr %i.t, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !156
  %i.ad = fsub float %i.aa, %i.ac                 ; 2 uses
  %i.ae = fmul float %i.ad, %i.ad
  %i.af = fadd float %i.y, %i.ae
  ret float %i.af
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef float @_ZN2cv6detail12_GLOBAL__N_113diffL2Square3IhEEfRKNS_3MatEiiS5_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34
  %i.e = sext i32 %1 to i64
  %i.f = mul i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34
  %i.l = sext i32 %4 to i64
  %i.m = mul i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = mul nsw i32 %2, 3
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 %i.p ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !30
  %i.s = zext i8 %i.r to i32
  %i.t = mul nsw i32 %5, 3
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.n, i64 %i.u ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !30
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 %i.s, %i.x                   ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.y
  %i.aa = getelementptr i8, ptr %i.q, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !30
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr i8, ptr %i.v, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !30
end_hunk_0
