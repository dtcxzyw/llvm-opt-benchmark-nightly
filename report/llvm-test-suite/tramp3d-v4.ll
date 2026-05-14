inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_ZNK14GridLayoutDataILi3EE7touchesI8IntervalILi3EESt20back_insert_iteratorISt6vectorI5INodeILi3EESaIS7_EEE21TouchesConstructINodeILi3EEEEiRKT_T0_RKT1_:bb.a
  %or.cond.i.i.i.i56 = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond.i.i.i.i56, label %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60, label %bb.g

bb.g:                                             ; preds = %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i55
  %spec.select.i.i.i.i57 = call i32 @llvm.smax.i32(i32 %i.dw, i32 %i.ds) ; 2 uses
  %.016.i.i.i.i58 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.dv)
  %reass.sub81 = sub i32 %.016.i.i.i.i58, %spec.select.i.i.i.i57
  %i.eb = add i32 %reass.sub81, 1
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60

_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60: ; preds = %bb.g, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i55
  %.sroa.9.0 = phi i32 [ 0, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i55 ], [ %i.eb, %bb.g ]
  %.sroa.7.0 = phi i32 [ 0, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i55 ], [ %spec.select.i.i.i.i57, %bb.g ]
  %i.ec = load i32, ptr %1, align 4, !tbaa !4, !noalias !6158 ; 3 uses
  %i.ed = load i32, ptr %i.al, align 4, !tbaa !4, !noalias !6158
  %i.ee = add i32 %i.ec, -1
  %i.ef = add i32 %i.ee, %i.ed                    ; 2 uses
  %i.eg = load i32, ptr %i.cw, align 4, !tbaa !4, !noalias !6158 ; 3 uses
  %i.eh = add nsw i32 %i.cy, -1
  %i.ei = add i32 %i.eh, %i.eg                    ; 2 uses
  %i.ej = icmp slt i32 %i.ef, %i.eg
  %i.ek = icmp sgt i32 %i.ec, %i.ei
  %or.cond.i.i.i.i.i61 = or i1 %i.ej, %i.ek
  br i1 %or.cond.i.i.i.i.i61, label %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit65, label %bb.h

bb.h:                                             ; preds = %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60
  %spec.select.i.i.i.i.i62 = call i32 @llvm.smax.i32(i32 %i.eg, i32 %i.ec) ; 2 uses
  %.016.i.i.i.i.i63 = call i32 @llvm.smin.i32(i32 %i.ei, i32 %i.ef)
  %reass.sub82 = sub i32 %.016.i.i.i.i.i63, %spec.select.i.i.i.i.i62
  %i.el = add i32 %reass.sub82, 1
  br label %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit65

_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit65: ; preds = %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60, %bb.h
  %.sroa.5.0 = phi i32 [ 0, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60 ], [ %i.el, %bb.h ]
  %.sroa.0.0 = phi i32 [ 0, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60 ], [ %spec.select.i.i.i.i.i62, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  %i.em = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.en = load i32, ptr %i.em, align 4, !tbaa !4  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cw, i64 52
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !2314 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6161)
  store i32 %.sroa.0.0, ptr %8, align 8, !tbaa !4, !alias.scope !6161
  store i32 %.sroa.5.0, ptr %i.ca, align 4, !tbaa !4, !alias.scope !6161
  store i32 %.sroa.7.0, ptr %i.cb, align 8, !tbaa !4, !alias.scope !6161
  store i32 %.sroa.9.0, ptr %i.cc, align 4, !tbaa !4, !alias.scope !6161
  store i32 %.sroa.11.0, ptr %i.cd, align 8, !tbaa !4, !alias.scope !6161
  store i32 %.sroa.13.0, ptr %i.ce, align 4, !tbaa !4, !alias.scope !6161
  %i.eq = load ptr, ptr %i.cg, align 8, !tbaa !2752, !noalias !6161 ; 5 uses
  store ptr %i.eq, ptr %i.cf, align 8, !tbaa !2658, !alias.scope !6161
  %i.er = load i64, ptr %3, align 8, !tbaa !2749, !noalias !6161
  %i.es = trunc i64 %i.er to i32                  ; 2 uses
  %i.et = load i32, ptr %i.ch, align 8, !tbaa !2751, !noalias !6161 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !193, !noalias !6161 ; 9 uses
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !196, !noalias !6161 ; 5 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey                    ; 4 uses
  %i.fa = ashr exact i64 %i.ez, 4                 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !197, !noalias !6161
  %.not.i.i.i.i.i = icmp eq ptr %i.ev, %i.fc
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit65
  store i32 %i.es, ptr %i.ev, align 4, !tbaa !4, !noalias !6161
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 %i.en, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !tbaa !4, !noalias !6161
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %i.ep, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !tbaa !4, !noalias !6161
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 %i.et, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !tbaa !4, !noalias !6161
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.fd, ptr %i.eu, align 8, !tbaa !193, !noalias !6161
  br label %_Z16touchesConstructI8IntervalILi3EES1_Li3EE5INodeIXT1_EERKT_RKT0_iiiiRK21TouchesConstructINodeIXT1_EE.exit

bb.j:                                             ; preds = %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit65
  %i.fe = icmp eq i64 %i.ez, 9223372036854775792
  br i1 %i.fe, label %bb.k, label %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #47, !noalias !6161
  unreachable

_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  %i.ff = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fa ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fa
  %i.fh = call i64 @llvm.umin.i64(i64 %i.ff, i64 576460752303423487)
  %i.fi = select i1 %i.fg, i64 576460752303423487, i64 %i.fh ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fj = shl nuw nsw i64 %i.fi, 4
  %i.fk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #46, !noalias !6161 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ez ; 4 uses
  store i32 %i.es, ptr %i.fl, align 4, !tbaa !4, !noalias !6161
  %.sroa.5.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %i.en, ptr %.sroa.5.0..sroa_idx6.i.i.i, align 4, !tbaa !4, !noalias !6161
  %.sroa.6.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i32 %i.ep, ptr %.sroa.6.0..sroa_idx8.i.i.i, align 4, !tbaa !4, !noalias !6161
  %.sroa.7.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 %i.et, ptr %.sroa.7.0..sroa_idx10.i.i.i, align 4, !tbaa !4, !noalias !6161
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ew, %i.ev
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.fk, %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ew, %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !198, !alias.scope !6164, !noalias !6161
  %i.fm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fm, %i.ev
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !203

_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fk, %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.ez) #49, !noalias !6161
  br label %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i.i
  store ptr %i.fk, ptr %i.eq, align 8, !tbaa !196, !noalias !6161
  store ptr %i.fo, ptr %i.eu, align 8, !tbaa !193, !noalias !6161
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fi
  store ptr %i.fp, ptr %i.fb, align 8, !tbaa !197, !noalias !6161
  br label %_Z16touchesConstructI8IntervalILi3EES1_Li3EE5INodeIXT1_EERKT_RKT0_iiiiRK21TouchesConstructINodeIXT1_EE.exit

_Z16touchesConstructI8IntervalILi3EES1_Li3EE5INodeIXT1_EERKT_RKT0_iiiiRK21TouchesConstructINodeIXT1_EE.exit: ; preds = %bb.i, %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i
  %i.fq = trunc i64 %i.fa to i32
  store i32 %i.fq, ptr %i.ci, align 8, !tbaa !2661, !alias.scope !6161
  %i.fr = load ptr, ptr %i.cj, align 8, !tbaa !2740 ; 11 uses
  %i.fs = load ptr, ptr %i.ck, align 8, !tbaa !2742
  %.not.i.i.i = icmp eq ptr %i.fr, %i.fs
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_Z16touchesConstructI8IntervalILi3EES1_Li3EE5INodeIXT1_EERKT_RKT0_iiiiRK21TouchesConstructINodeIXT1_EE.exit
  %i.ft = load i32, ptr %8, align 8, !tbaa !4
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !4
  %i.fu = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fx = load i32, ptr %i.cb, align 8, !tbaa !4
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !4
  %i.fy = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.gb = load i32, ptr %i.cd, align 8, !tbaa !4
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !4
  %i.gc = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 20
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.gf = load ptr, ptr %i.cf, align 8, !tbaa !2658
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !2658
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.gh = load i32, ptr %i.ci, align 8, !tbaa !2661
  store i32 %i.gh, ptr %i.gg, align 8, !tbaa !2661
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  store ptr %i.gi, ptr %i.cj, align 8, !tbaa !2740
  br label %_ZNSt20back_insert_iteratorISt6vectorI5INodeILi3EESaIS2_EEEaSEOS2_.exit

bb.n:                                             ; preds = %_Z16touchesConstructI8IntervalILi3EES1_Li3EE5INodeIXT1_EERKT_RKT0_iiiiRK21TouchesConstructINodeIXT1_EE.exit
  call void @_ZNSt6vectorI5INodeILi3EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.fr, ptr noundef nonnull align 8 dereferenceable(36) %8)
  br label %_ZNSt20back_insert_iteratorISt6vectorI5INodeILi3EESaIS2_EEEaSEOS2_.exit

_ZNSt20back_insert_iteratorISt6vectorI5INodeILi3EESaIS2_EEEaSEOS2_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  %i.gj = add nsw i32 %.041, 1
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorI5INodeILi3EESaIS2_EEEaSEOS2_.exit, %bb.d
  %.1 = phi i32 [ %.041, %bb.d ], [ %i.gj, %_ZNSt20back_insert_iteratorISt6vectorI5INodeILi3EESaIS2_EEEaSEOS2_.exit ] ; 2 uses
  %i.gk = add nsw i32 %.sroa.0.0108, 1
  %i.gl = icmp eq i32 %.sroa.0.0108, %spec.select ; 2 uses
  %i.gm = zext i1 %i.gl to i32
  %spec.select165 = add nsw i32 %.sroa.8.0, %i.gm ; 2 uses
  %spec.select166 = select i1 %i.gl, i32 %spec.select164, i32 %i.gk
  %i.gn = icmp eq i32 %spec.select165, %i.cm      ; 2 uses
  %i.go = zext i1 %i.gn to i32
  %.sroa.15.2 = add nsw i32 %.sroa.15.0, %i.go    ; 2 uses
  %.sroa.8.3 = select i1 %i.gn, i32 %.sroa.6.0, i32 %spec.select165
  %i.gp = icmp eq i32 %.sroa.15.2, %i.cl
  br i1 %i.gp, label %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit.thread, label %bb.d

_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit.thread: ; preds = %bb.o, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i, %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit
  %.0 = phi i32 [ 0, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i ], [ 0, %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit ], [ %.1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_S4_ISA_d16ConstantFunctionESC_EN3CFL10CflFunctorILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.DataObjectRequest.349, align 8 ; 5 uses
  %6 = alloca %struct.ExpressionApply.578, align 8 ; 4 uses
  %.sroa.0.i = alloca %"struct.CFL::CflFunctor", align 8 ; 4 uses
  %7 = alloca %class.Interval.108, align 4        ; 9 uses
  %8 = alloca %struct.MultiArg4.570, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6171)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %2, align 4, !tbaa !4, !noalias !6174 ; 2 uses
  %i.c = load i32, ptr %3, align 8, !tbaa !4, !noalias !6174 ; 2 uses
  %i.d = sub nsw i32 %i.b, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4, !noalias !6174 ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !4, !noalias !6174
  %i.h = add i32 %i.f, %i.b
  %reass.sub.i.i.i = sub i32 %i.h, %i.d
  %i.i = add i32 %reass.sub.i.i.i, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.d, ptr %7, align 4, !tbaa !4, !alias.scope !6174
  store i32 %i.i, ptr %i.j, align 4, !tbaa !4, !alias.scope !6174
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4, !noalias !6174 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4, !noalias !6174 ; 2 uses
  %i.o = sub nsw i32 %i.l, %i.n                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4, !noalias !6174 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !4, !noalias !6174
  %i.t = add i32 %i.q, %i.l
  %reass.sub.i.1.i.i = sub i32 %i.t, %i.o
  %i.u = add i32 %reass.sub.i.1.i.i, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.o, ptr %i.v, align 4, !tbaa !4, !alias.scope !6174
  store i32 %i.u, ptr %i.w, align 4, !tbaa !4, !alias.scope !6174
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4, !noalias !6174 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !4, !noalias !6174 ; 2 uses
  %i.ab = sub nsw i32 %i.y, %i.aa                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4, !noalias !6174 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4, !noalias !6174
  %i.ag = add i32 %i.ad, %i.y
  %reass.sub.i.2.i.i = sub i32 %i.ag, %i.ab
  %i.ah = add i32 %reass.sub.i.2.i.i, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.ab, ptr %i.ai, align 4, !tbaa !4, !alias.scope !6174
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !4, !alias.scope !6174
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @_ZNK9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d16ConstantFunctionES8_EclI8IntervalILi3EEEEN5View1ISB_T_E6Type_tERKSG_(ptr dead_on_unwind nonnull writable sret(%struct.MultiArg4.570) align 8 %8, ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 4 dereferenceable(24) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.ak = call noalias noundef nonnull dereferenceable(728) ptr @_Znwm(i64 noundef 728) #46 ; 19 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !2454
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ao, align 8, !tbaa !2701
  %i.ap = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d16ConstantFunctionES9_E15EvaluateLocLoopIN3CFL10CflFunctorILi3EEELi3EEE, i64 16), ptr %i.ak, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d16ConstantFunctionES8_EC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(576) %i.ar, ptr noundef nonnull align 8 dereferenceable(576) %8)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 624
  store i32 %i.c, ptr %i.at, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 628
  store i32 %i.f, ptr %i.au, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 632
  store i32 %i.n, ptr %i.av, align 8, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 636
  store i32 %i.q, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 640
  store i32 %i.aa, ptr %i.ax, align 8, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 644
  store i32 %i.ad, ptr %i.ay, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 648 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.al)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 688
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.ak, ptr %5, align 8, !tbaa !6175
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d16ConstantFunctionES8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #48, !inline_history !6179
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #48, !inline_history !6179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bi) #48
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d16ConstantFunctionES8_EclI8IntervalILi3EEEEN5View1ISB_T_E6Type_tERKSG_(ptr dead_on_unwind noalias writable sret(%struct.MultiArg4.570) align 8 %0, ptr noundef nonnull align 8 dereferenceable(576) %1, ptr noundef nonnull align 4 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %class.Interval.108, align 4        ; 3 uses
  %4 = alloca %class.Interval.108, align 16       ; 5 uses
  %5 = alloca %class.Interval.108, align 4        ; 3 uses
  %6 = alloca %class.Interval.108, align 16       ; 5 uses
  %7 = alloca %class.Interval.108, align 4        ; 3 uses
  %8 = alloca %class.Interval.108, align 16       ; 5 uses
  %9 = alloca %class.Interval.108, align 4        ; 3 uses
  %10 = alloca %class.Interval.108, align 16      ; 5 uses
  %11 = alloca %class.Field.571, align 8          ; 5 uses
  %12 = alloca %class.Field.571, align 8          ; 5 uses
  %13 = alloca %class.Field.138, align 8          ; 5 uses
  %14 = alloca %class.Field.571, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48, !noalias !6180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6187)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48, !noalias !6190
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %9, ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !6190
  call void @llvm.experimental.noalias.scope.decl(metadata !6191)
  call void @llvm.experimental.noalias.scope.decl(metadata !6194)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = load <4 x i32>, ptr %2, align 4, !tbaa !4, !noalias !6197
  store <4 x i32> %i.b, ptr %10, align 16, !tbaa !4, !alias.scope !6198, !noalias !6180
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.d = load <2 x i32>, ptr %i.a, align 4, !tbaa !4, !noalias !6197
  store <2 x i32> %i.d, ptr %i.c, align 16, !tbaa !4, !alias.scope !6198, !noalias !6180
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48, !noalias !6190
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IdS6_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 4 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48, !noalias !6180
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48, !noalias !6199
  call void @llvm.experimental.noalias.scope.decl(metadata !6206)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48, !noalias !6209
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.e), !noalias !6209
  call void @llvm.experimental.noalias.scope.decl(metadata !6210)
  call void @llvm.experimental.noalias.scope.decl(metadata !6213)
  %i.f = load <4 x i32>, ptr %2, align 4, !tbaa !4, !noalias !6216
  store <4 x i32> %i.f, ptr %8, align 16, !tbaa !4, !alias.scope !6217, !noalias !6199
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.h = load <2 x i32>, ptr %i.a, align 4, !tbaa !4, !noalias !6216
  store <2 x i32> %i.h, ptr %i.g, align 16, !tbaa !4, !alias.scope !6217, !noalias !6199
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48, !noalias !6209
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IdS6_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %12, ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 4 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48, !noalias !6199
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48, !noalias !6218
  call void @llvm.experimental.noalias.scope.decl(metadata !6225)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48, !noalias !6228
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.i), !noalias !6228
  call void @llvm.experimental.noalias.scope.decl(metadata !6229)
  call void @llvm.experimental.noalias.scope.decl(metadata !6232)
  %i.j = load <4 x i32>, ptr %2, align 4, !tbaa !4, !noalias !6235
  store <4 x i32> %i.j, ptr %6, align 16, !tbaa !4, !alias.scope !6236, !noalias !6218
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = load <2 x i32>, ptr %i.a, align 4, !tbaa !4, !noalias !6235
  store <2 x i32> %i.l, ptr %i.k, align 16, !tbaa !4, !alias.scope !6236, !noalias !6218
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48, !noalias !6228
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionEC2IdS6_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %13, ptr noundef nonnull align 8 dereferenceable(144) %i.i, ptr noundef nonnull align 4 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48, !noalias !6218
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48, !noalias !6237
  call void @llvm.experimental.noalias.scope.decl(metadata !6244)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48, !noalias !6247
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.m), !noalias !6247
  call void @llvm.experimental.noalias.scope.decl(metadata !6248)
  call void @llvm.experimental.noalias.scope.decl(metadata !6251)
  %i.n = load <4 x i32>, ptr %2, align 4, !tbaa !4, !noalias !6254
  store <4 x i32> %i.n, ptr %4, align 16, !tbaa !4, !alias.scope !6255, !noalias !6237
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load <2 x i32>, ptr %i.a, align 4, !tbaa !4, !noalias !6254
  store <2 x i32> %i.p, ptr %i.o, align 16, !tbaa !4, !alias.scope !6255, !noalias !6237
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48, !noalias !6247
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IdS6_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %14, ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 4 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48, !noalias !6237
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d16ConstantFunctionES8_EC2ERKS8_SD_RKSA_SD_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(144) %12, ptr noundef nonnull align 8 dereferenceable(144) %13, ptr noundef nonnull align 8 dereferenceable(144) %14)
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %14) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %13) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %12) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %11) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d16ConstantFunctionES8_EC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(576) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !6256
  store i32 %i.a, ptr %0, align 8, !tbaa !6256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !6261
  store i32 %i.f, ptr %i.d, align 8, !tbaa !6261
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !6262
  store i64 %i.i, ptr %i.g, align 8, !tbaa !6262
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !6263 ; 4 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !6263
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !719
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !719
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !4
  store i32 %i.q, ptr %i.o, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !4
  store i32 %i.w, ptr %i.u, align 8, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !4
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !947
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !741 ; 4 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !741
  %.not.i.i8.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i8.i.i, label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !719
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !719
  br label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit

_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit: ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !6256
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !6256
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.au = load i32, ptr %i.at, align 8, !tbaa !6261
  store i32 %i.au, ptr %i.as, align 8, !tbaa !6261
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !6262
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !6262
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !6263 ; 4 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !6263
  %.not.i.i.i.i5 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i5, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i6, label %bb.d

bb.d:                                             ; preds = %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !719
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !719
end_hunk_0
begin_hunk_1_@_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_SH_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISL_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSO_4sizeEERKT2_:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !2661, !noalias !12573
  store i32 %i.ca, ptr %i.ao, align 8, !tbaa !2661, !alias.scope !12573
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  store i32 %i.ay, ptr %7, align 4, !tbaa !4, !alias.scope !12581
  store i32 %i.bb, ptr %i.ap, align 4, !tbaa !4, !alias.scope !12581
  store i32 %i.bh, ptr %i.aq, align 4, !tbaa !4, !alias.scope !12581
  store i32 %i.bk, ptr %i.ar, align 4, !tbaa !4, !alias.scope !12581
  store i32 %i.bq, ptr %i.as, align 4, !tbaa !4, !alias.scope !12581
  store i32 %i.bt, ptr %i.at, align 4, !tbaa !4, !alias.scope !12581
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @_ZNK9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_SD_EclI5INodeILi3EEEEN5View1ISE_T_E6Type_tERKSJ_(ptr dead_on_unwind nonnull writable sret(%struct.MultiArg4.665) align 8 %8, ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(36) %6)
  call void @_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.au) #48
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.av) #48
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.aw) #48
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  %i.cc = load ptr, ptr %5, align 8, !tbaa !6055
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2645
  %.not = icmp eq ptr %i.cb, %i.ce
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12584

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @_ZN13RefCountedPtrI21SimpleIntersectorDataILi3EEE10invalidateEv(ptr noundef nonnull align 8 dereferenceable(9) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.Field.571, align 8           ; 5 uses
  %6 = alloca %class.Field.571, align 8           ; 5 uses
  %7 = alloca %class.Field.571, align 8           ; 5 uses
  %8 = alloca %class.Field.571, align 8           ; 5 uses
  %9 = alloca %struct.EngineView, align 1         ; 7 uses
  %10 = alloca %struct.MultiArg4.666, align 8     ; 8 uses
  %11 = alloca %class.Interval.108, align 16      ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #46 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.a, align 4, !tbaa !719
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !6080
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !6083
  %i.h = load i64, ptr %i.c, align 8, !tbaa !6086
  %i.i = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2830
  tail call void @_ZNK14GatherContexts18GatherContextsData10addContextEi(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144  ; 4 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !141  ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit.thread, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i

_ZNK14GatherContexts17mostCommonContextEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  br label %bb.d

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i: ; preds = %bb.a
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %i.u)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !1547 ; 6 uses
  %.not24.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not24.i.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i, %.critedge.i.i.i
  %.sroa.04.027.i.i.i = phi ptr [ %spec.select7.i.i.i, %.critedge.i.i.i ], [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ]
  %.026.i.i.i = phi i32 [ %spec.select.i.i.i, %.critedge.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ] ; 2 uses
  %.sroa.010.025.i.i.i = phi ptr [ %.sroa.010.1.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.v, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ] ; 3 uses
  %.sroa.010.116.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i.i.i, i64 4 ; 3 uses
  %.not1517.i.i.i = icmp eq ptr %.sroa.010.116.i.i.i, %i.w
  br i1 %.not1517.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.x = load i32, ptr %.sroa.010.025.i.i.i, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.010.119.i.i.i = phi ptr [ %.sroa.010.116.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.010.1.i.i.i, %bb.c ] ; 3 uses
  %.0618.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i ], [ %i.aa, %bb.c ] ; 2 uses
  %i.y = load i32, ptr %.sroa.010.119.i.i.i, align 4, !tbaa !4
  %i.z = icmp eq i32 %i.y, %i.x
  br i1 %i.z, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.aa = add nuw nsw i32 %.0618.i.i.i, 1         ; 2 uses
  %.sroa.010.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.119.i.i.i, i64 4 ; 3 uses
  %.not15.i.i.i = icmp eq ptr %.sroa.010.1.i.i.i, %i.w
  br i1 %.not15.i.i.i, label %.critedge.i.i.i, label %bb.b, !llvm.loop !2688

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b, %.preheader.i.i.i
  %.06.lcssa.i.i.i = phi i32 [ 1, %.preheader.i.i.i ], [ %.0618.i.i.i, %bb.b ], [ %i.aa, %bb.c ] ; 2 uses
  %.sroa.010.1.lcssa.i.i.i = phi ptr [ %.sroa.010.116.i.i.i, %.preheader.i.i.i ], [ %.sroa.010.119.i.i.i, %bb.b ], [ %.sroa.010.1.i.i.i, %bb.c ] ; 2 uses
  %i.ab = icmp samesign ugt i32 %.06.lcssa.i.i.i, %.026.i.i.i
  %spec.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %.06.lcssa.i.i.i, i32 %.026.i.i.i)
  %spec.select7.i.i.i = select i1 %i.ab, ptr %.sroa.010.025.i.i.i, ptr %.sroa.04.027.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.010.1.lcssa.i.i.i, %i.w
  br i1 %.not.i.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit, label %.preheader.i.i.i, !llvm.loop !2689

_ZNK14GatherContexts17mostCommonContextEv.exit:   ; preds = %.critedge.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ], [ %spec.select7.i.i.i, %.critedge.i.i.i ]
  %i.ac = load i32, ptr %.sroa.04.0.lcssa.i.i.i, align 4, !tbaa !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  %i.ad = icmp eq i32 %i.ac, -1
  %i.ae = load i32, ptr @_ZN5Pooma11myContext_gE, align 4
  %i.af = icmp eq i32 %i.ae, %i.ac
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK14GatherContexts17mostCommonContextEv.exit.thread, %_ZNK14GatherContexts17mostCommonContextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48, !noalias !12585
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 1 dereferenceable(1) %9), !noalias !12585
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48, !noalias !12585
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(144) %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %9), !noalias !12585
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48, !noalias !12585
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull align 8 dereferenceable(144) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %9), !noalias !12585
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48, !noalias !12585
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 432
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 1 dereferenceable(1) %9), !noalias !12585
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EC2ERKS8_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(576) %10, ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull align 8 dereferenceable(144) %8)
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48, !noalias !12585
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %7) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48, !noalias !12585
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48, !noalias !12585
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48, !noalias !12585
  %i.aj = load <4 x i32>, ptr %2, align 4, !tbaa !4
  store <4 x i32> %i.aj, ptr %11, align 16, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load <2 x i32>, ptr %i.al, align 4, !tbaa !4
  store <2 x i32> %i.am, ptr %i.ak, align 16, !tbaa !4
  call void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %10, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.an) #48
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ao) #48
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ap) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %10) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  br label %bb.e

bb.e:                                             ; preds = %_ZNK14GatherContexts17mostCommonContextEv.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !719
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !719
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.f, label %_ZN14GatherContextsD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !143
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #49
  br label %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i

_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #49
  br label %_ZN14GatherContextsD2Ev.exit

_ZN14GatherContextsD2Ev.exit:                     ; preds = %bb.e, %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.DataObjectRequest.349, align 8 ; 5 uses
  %6 = alloca %struct.ExpressionApply.578, align 8 ; 4 uses
  %.sroa.0.i = alloca %"struct.Forgas::APressure", align 8 ; 4 uses
  %7 = alloca %class.Interval.108, align 4        ; 9 uses
  %8 = alloca %struct.MultiArg4.666, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12595)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %2, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.c = load i32, ptr %3, align 8, !tbaa !4, !noalias !12598 ; 2 uses
  %i.d = sub nsw i32 %i.b, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !4, !noalias !12598
  %i.h = add i32 %i.f, %i.b
  %reass.sub.i.i.i = sub i32 %i.h, %i.d
  %i.i = add i32 %reass.sub.i.i.i, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.d, ptr %7, align 4, !tbaa !4, !alias.scope !12598
  store i32 %i.i, ptr %i.j, align 4, !tbaa !4, !alias.scope !12598
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.o = sub nsw i32 %i.l, %i.n                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !4, !noalias !12598
  %i.t = add i32 %i.q, %i.l
  %reass.sub.i.1.i.i = sub i32 %i.t, %i.o
  %i.u = add i32 %reass.sub.i.1.i.i, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.o, ptr %i.v, align 4, !tbaa !4, !alias.scope !12598
  store i32 %i.u, ptr %i.w, align 4, !tbaa !4, !alias.scope !12598
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !4, !noalias !12598 ; 2 uses
  %i.ab = sub nsw i32 %i.y, %i.aa                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4, !noalias !12598
  %i.ag = add i32 %i.ad, %i.y
  %reass.sub.i.2.i.i = sub i32 %i.ag, %i.ab
  %i.ah = add i32 %reass.sub.i.2.i.i, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.ab, ptr %i.ai, align 4, !tbaa !4, !alias.scope !12598
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !4, !alias.scope !12598
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @_ZNK9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EclI8IntervalILi3EEEEN5View1IS9_T_E6Type_tERKSE_(ptr dead_on_unwind nonnull writable sret(%struct.MultiArg4.666) align 8 %8, ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 4 dereferenceable(24) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.ak = call noalias noundef nonnull dereferenceable(728) ptr @_Znwm(i64 noundef 728) #46 ; 19 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !2454
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ao, align 8, !tbaa !2701
  %i.ap = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas9APressureILi3EEELi3EEE, i64 16), ptr %i.ak, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(576) %i.ar, ptr noundef nonnull align 8 dereferenceable(576) %8)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 624
  store i32 %i.c, ptr %i.at, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 628
  store i32 %i.f, ptr %i.au, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 632
  store i32 %i.n, ptr %i.av, align 8, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 636
  store i32 %i.q, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 640
  store i32 %i.aa, ptr %i.ax, align 8, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 644
  store i32 %i.ad, ptr %i.ay, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 648 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.al)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 688
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.ak, ptr %5, align 8, !tbaa !6175
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #48, !inline_history !12599
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #48, !inline_history !12599
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bi) #48
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas9APressureILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(728) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas9APressureILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.x) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas9APressureILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(728) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas9APressureILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(728) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 728) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas9APressureILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(728) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.873, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !8886
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !12600
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_EN6Forgas9APressureILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_EN6Forgas9APressureILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12600 ; 2 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8886 ; 9 uses
  %.not2330 = icmp sgt i32 %i.c, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2330, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge36, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !6263
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !6266
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !6262
  %i.af = getelementptr inbounds [88 x i8], ptr %i.ad, i64 %i.ae ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2836 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !741 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2836 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 116
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 248
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !2836 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 204
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !4  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  %i.bc = zext i32 %i.a to i64
  %i.bd = add i32 %i.g, %i.a
  %i.be = add i32 %i.i, %i.c
  %i.bf = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge32.split
  %.02234 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.bg, %._crit_edge32.split ] ; 7 uses
  %i.bg = add i32 %.02234, 1                      ; 3 uses
  %i.bh = mul nsw i32 %i.al, %.02234              ; 2 uses
  %invariant.op = add i32 %i.bh, 1
  %i.bi = mul nsw i32 %i.at, %.02234
  %i.bj = mul nsw i32 %i.ba, %i.bg
  %i.bk = mul nsw i32 %i.ba, %.02234
  br label %.preheader

._crit_edge36:                                    ; preds = %._crit_edge32.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02131 = phi i32 [ %i.c, %.preheader27 ], [ %i.bm, %._crit_edge ] ; 7 uses
  %i.bl = mul nsw i32 %i.aj, %.02131
  %i.bm = add nsw i32 %.02131, 1                  ; 3 uses
  %i.bn = mul nsw i32 %i.ar, %i.bm
  %i.bo = mul nsw i32 %i.ar, %.02131
  %i.bp = mul nsw i32 %i.ay, %.02131
  br label %bb.b

._crit_edge32.split:                              ; preds = %._crit_edge
  %exitcond44.not = icmp eq i32 %i.bg, %i.bf
  br i1 %exitcond44.not, label %._crit_edge36, label %.preheader27, !llvm.loop !12602

._crit_edge:                                      ; preds = %_ZNK6Forgas9APressureILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit
  %exitcond43.not = icmp eq i32 %i.bm, %i.be
end_hunk_1
begin_hunk_2_@_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISL_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSO_4sizeEERKT2_:bb.a
  store i32 %i.bk, ptr %i.an, align 4, !tbaa !4, !alias.scope !13188, !noalias !13181
  store i32 %i.bo, ptr %i.ao, align 8, !tbaa !4, !alias.scope !13188, !noalias !13181
  store i32 %i.bt, ptr %i.ap, align 4, !tbaa !4, !alias.scope !13188, !noalias !13181
  store i32 %i.bx, ptr %i.aq, align 8, !tbaa !4, !alias.scope !13188, !noalias !13181
  store i32 %i.cc, ptr %i.ar, align 4, !tbaa !4, !alias.scope !13188, !noalias !13181
  store ptr %i.ce, ptr %i.as, align 8, !tbaa !2658, !alias.scope !13188, !noalias !13181
  store i32 %i.cg, ptr %i.at, align 8, !tbaa !2661, !alias.scope !13188, !noalias !13181
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48, !noalias !13191
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEEC2Id10MultiPatchI7GridTagS6_I5BrickEEEERKS_IS5_T_T0_ERK5INodeILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(36) %8), !noalias !13178
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48, !noalias !13181
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48, !noalias !13178
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48, !noalias !13192
  call void @llvm.experimental.noalias.scope.decl(metadata !13199)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48, !noalias !13202
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.au), !noalias !13202
  store i32 %i.bf, ptr %6, align 8, !tbaa !4, !alias.scope !13199, !noalias !13192
  store i32 %i.bk, ptr %i.av, align 4, !tbaa !4, !alias.scope !13199, !noalias !13192
  store i32 %i.bo, ptr %i.aw, align 8, !tbaa !4, !alias.scope !13199, !noalias !13192
  store i32 %i.bt, ptr %i.ax, align 4, !tbaa !4, !alias.scope !13199, !noalias !13192
  store i32 %i.bx, ptr %i.ay, align 8, !tbaa !4, !alias.scope !13199, !noalias !13192
  store i32 %i.cc, ptr %i.az, align 4, !tbaa !4, !alias.scope !13199, !noalias !13192
  store ptr %i.ce, ptr %i.ba, align 8, !tbaa !2658, !alias.scope !13199, !noalias !13192
  store i32 %i.cg, ptr %i.bb, align 8, !tbaa !2661, !alias.scope !13199, !noalias !13192
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48, !noalias !13202
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEEC2Id10MultiPatchI7GridTagS6_I5BrickEEEERKS_IS5_T_T0_ERK5INodeILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %10, ptr noundef nonnull align 8 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(36) %6), !noalias !13178
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48, !noalias !13192
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESA_EC2ERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(144) %10)
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %10) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48, !noalias !13178
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %9) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48, !noalias !13178
  call void @_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bc) #48
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %13) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #48
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #48
  %i.ci = load ptr, ptr %11, align 8, !tbaa !6055
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !2645
  %.not = icmp eq ptr %i.ch, %i.ck
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13203

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @_ZN13RefCountedPtrI21SimpleIntersectorDataILi3EEE10invalidateEv(ptr noundef nonnull align 8 dereferenceable(9) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.Field.571, align 8           ; 5 uses
  %6 = alloca %class.Field.571, align 8           ; 5 uses
  %7 = alloca %struct.EngineView, align 1         ; 5 uses
  %8 = alloca %struct.MultiArg2.649, align 8      ; 6 uses
  %9 = alloca %class.Interval.108, align 16       ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #46 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.a, align 4, !tbaa !719
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !6080
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !6083
  %i.h = load i64, ptr %i.c, align 8, !tbaa !6086
  %i.i = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2830
  tail call void @_ZNK14GatherContexts18GatherContextsData10addContextEi(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144  ; 4 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !141  ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit.thread, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i

_ZNK14GatherContexts17mostCommonContextEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  br label %bb.d

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i: ; preds = %bb.a
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %i.u)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !1547 ; 6 uses
  %.not24.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not24.i.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i, %.critedge.i.i.i
  %.sroa.04.027.i.i.i = phi ptr [ %spec.select7.i.i.i, %.critedge.i.i.i ], [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ]
  %.026.i.i.i = phi i32 [ %spec.select.i.i.i, %.critedge.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ] ; 2 uses
  %.sroa.010.025.i.i.i = phi ptr [ %.sroa.010.1.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.v, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ] ; 3 uses
  %.sroa.010.116.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i.i.i, i64 4 ; 3 uses
  %.not1517.i.i.i = icmp eq ptr %.sroa.010.116.i.i.i, %i.w
  br i1 %.not1517.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.x = load i32, ptr %.sroa.010.025.i.i.i, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.010.119.i.i.i = phi ptr [ %.sroa.010.116.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.010.1.i.i.i, %bb.c ] ; 3 uses
  %.0618.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i ], [ %i.aa, %bb.c ] ; 2 uses
  %i.y = load i32, ptr %.sroa.010.119.i.i.i, align 4, !tbaa !4
  %i.z = icmp eq i32 %i.y, %i.x
  br i1 %i.z, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.aa = add nuw nsw i32 %.0618.i.i.i, 1         ; 2 uses
  %.sroa.010.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.119.i.i.i, i64 4 ; 3 uses
  %.not15.i.i.i = icmp eq ptr %.sroa.010.1.i.i.i, %i.w
  br i1 %.not15.i.i.i, label %.critedge.i.i.i, label %bb.b, !llvm.loop !2688

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b, %.preheader.i.i.i
  %.06.lcssa.i.i.i = phi i32 [ 1, %.preheader.i.i.i ], [ %.0618.i.i.i, %bb.b ], [ %i.aa, %bb.c ] ; 2 uses
  %.sroa.010.1.lcssa.i.i.i = phi ptr [ %.sroa.010.116.i.i.i, %.preheader.i.i.i ], [ %.sroa.010.119.i.i.i, %bb.b ], [ %.sroa.010.1.i.i.i, %bb.c ] ; 2 uses
  %i.ab = icmp samesign ugt i32 %.06.lcssa.i.i.i, %.026.i.i.i
  %spec.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %.06.lcssa.i.i.i, i32 %.026.i.i.i)
  %spec.select7.i.i.i = select i1 %i.ab, ptr %.sroa.010.025.i.i.i, ptr %.sroa.04.027.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.010.1.lcssa.i.i.i, %i.w
  br i1 %.not.i.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit, label %.preheader.i.i.i, !llvm.loop !2689

_ZNK14GatherContexts17mostCommonContextEv.exit:   ; preds = %.critedge.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ], [ %spec.select7.i.i.i, %.critedge.i.i.i ]
  %i.ac = load i32, ptr %.sroa.04.0.lcssa.i.i.i, align 4, !tbaa !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  %i.ad = icmp eq i32 %i.ac, -1
  %i.ae = load i32, ptr @_ZN5Pooma11myContext_gE, align 4
  %i.af = icmp eq i32 %i.ae, %i.ac
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK14GatherContexts17mostCommonContextEv.exit.thread, %_ZNK14GatherContexts17mostCommonContextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48, !noalias !13204
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %7), !noalias !13204
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48, !noalias !13204
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(144) %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %7), !noalias !13204
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(144) %6)
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48, !noalias !13204
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48, !noalias !13204
  %i.ah = load <4 x i32>, ptr %2, align 4, !tbaa !4
  store <4 x i32> %i.ah, ptr %9, align 16, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load <2 x i32>, ptr %i.aj, align 4, !tbaa !4
  store <2 x i32> %i.ak, ptr %i.ai, align 16, !tbaa !4
  call void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.al) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  br label %bb.e

bb.e:                                             ; preds = %_ZNK14GatherContexts17mostCommonContextEv.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  %i.am = load i32, ptr %i.a, align 4, !tbaa !719
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.a, align 4, !tbaa !719
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.f, label %_ZN14GatherContextsD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #49
  br label %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i

_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #49
  br label %_ZN14GatherContextsD2Ev.exit

_ZN14GatherContextsD2Ev.exit:                     ; preds = %bb.e, %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.DataObjectRequest.349, align 8 ; 5 uses
  %6 = alloca %struct.ExpressionApply.578, align 8 ; 4 uses
  %.sroa.0.i = alloca %"struct.Forgas::CoriolisX", align 8 ; 4 uses
  %7 = alloca %class.Interval.108, align 4        ; 3 uses
  %8 = alloca %class.Interval.108, align 4        ; 9 uses
  %9 = alloca %class.Interval.108, align 4        ; 3 uses
  %10 = alloca %class.Interval.108, align 4       ; 9 uses
  %11 = alloca %class.Field.571, align 8          ; 5 uses
  %12 = alloca %class.Field.571, align 8          ; 5 uses
  %13 = alloca %struct.MultiArg2.649, align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %2, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.c = load i32, ptr %3, align 8, !tbaa !4, !noalias !13211 ; 2 uses
  %i.d = sub nsw i32 %i.b, %i.c                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !4, !noalias !13211
  %i.h = add i32 %i.f, %i.b
  %reass.sub.i.i.i = sub i32 %i.h, %i.d
  %i.i = add i32 %reass.sub.i.i.i, %i.g           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.n = sub nsw i32 %i.k, %i.m                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !4, !noalias !13211
  %i.s = add i32 %i.p, %i.k
  %reass.sub.i.1.i.i = sub i32 %i.s, %i.n
  %i.t = add i32 %reass.sub.i.1.i.i, %i.r         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !4, !noalias !13211 ; 2 uses
  %i.y = sub nsw i32 %i.v, %i.x                   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4, !noalias !13211
  %i.ad = add i32 %i.aa, %i.v
  %reass.sub.i.2.i.i = sub i32 %i.ad, %i.y
  %i.ae = add i32 %reass.sub.i.2.i.i, %i.ac       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #48, !noalias !13216
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48, !noalias !13219
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13226)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48, !noalias !13229
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %9, ptr noundef nonnull align 8 dereferenceable(288) %0), !noalias !13229
  store i32 %i.d, ptr %10, align 4, !tbaa !4, !alias.scope !13230, !noalias !13219
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.i, ptr %i.af, align 4, !tbaa !4, !alias.scope !13230, !noalias !13219
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.n, ptr %i.ag, align 4, !tbaa !4, !alias.scope !13230, !noalias !13219
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.t, ptr %i.ah, align 4, !tbaa !4, !alias.scope !13230, !noalias !13219
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !4, !alias.scope !13230, !noalias !13219
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !4, !alias.scope !13230, !noalias !13219
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48, !noalias !13229
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IdS6_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(24) %10), !noalias !13216
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48, !noalias !13219
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #48, !noalias !13216
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48, !noalias !13235
  call void @llvm.experimental.noalias.scope.decl(metadata !13242)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48, !noalias !13245
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.ak), !noalias !13245
  store i32 %i.d, ptr %8, align 4, !tbaa !4, !alias.scope !13246, !noalias !13235
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.i, ptr %i.al, align 4, !tbaa !4, !alias.scope !13246, !noalias !13235
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.n, ptr %i.am, align 4, !tbaa !4, !alias.scope !13246, !noalias !13235
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.t, ptr %i.an, align 4, !tbaa !4, !alias.scope !13246, !noalias !13235
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.y, ptr %i.ao, align 4, !tbaa !4, !alias.scope !13246, !noalias !13235
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.ae, ptr %i.ap, align 4, !tbaa !4, !alias.scope !13246, !noalias !13235
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48, !noalias !13245
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IdS6_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %12, ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull align 4 dereferenceable(24) %8), !noalias !13216
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48, !noalias !13235
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(144) %12)
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %12) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #48, !noalias !13216
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %11) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48, !noalias !13216
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.aq = call noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #46 ; 19 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !2454
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.au, align 8, !tbaa !2701
  %i.av = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEE, i64 16), ptr %i.aq, align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(288) %i.ax, ptr noundef nonnull align 8 dereferenceable(288) %13)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 336
  store i32 %i.c, ptr %i.az, align 8, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 340
  store i32 %i.f, ptr %i.ba, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 344
  store i32 %i.m, ptr %i.bb, align 8, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 348
  store i32 %i.p, ptr %i.bc, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 352
  store i32 %i.x, ptr %i.bd, align 8, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 356
  store i32 %i.aa, ptr %i.be, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 360 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %i.ar)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 400
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.aq, ptr %5, align 8, !tbaa !6175
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #48, !inline_history !13251
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #48, !inline_history !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bo) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %13) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 440) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.893, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !8422
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13252
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13252 ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2330 = icmp sgt i32 %i.c, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8 ; 2 uses
  %.not2426 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2330, i1 true, i1 %.not2426
  br i1 %or.cond, label %._crit_edge36, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8422 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !6263
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !6266
  %i.z = load i64, ptr %i.v, align 8, !tbaa !6262
  %i.aa = getelementptr inbounds [88 x i8], ptr %i.y, i64 %i.z ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2836 ; 16 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2836 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !4  ; 5 uses
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !6263
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6266
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !6262
  %i.ar = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2836 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !4  ; 5 uses
  %i.ay = zext i32 %i.a to i64                    ; 4 uses
  %i.az = add i32 %i.g, %i.a
  %i.ba = add i32 %i.i, %i.c
  %i.bb = add i32 %i.k, %i.e
  %i.bc = add i32 %i.g, -1                        ; 3 uses
  %i.bd = mul i32 %i.e, %i.ax
  %i.be = add i32 %i.a, %i.bd
  %i.bf = mul i32 %i.c, %i.av
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.bi = add i32 %i.a, %i.bh                     ; 2 uses
  %i.bj = add i32 %i.c, 1
  %i.bk = mul i32 %i.ae, %i.bj                    ; 2 uses
  %i.bl = mul i32 %i.c, %i.ae                     ; 2 uses
  %i.bm = add i32 %i.bi, %i.bk
  %i.bn = add i32 %i.bi, %i.bl
  %i.bo = insertelement <2 x i32> poison, i32 %i.bn, i64 0
  %i.bp = insertelement <2 x i32> %i.bo, i32 %i.bm, i64 1
  %i.bq = add <2 x i32> %i.bp, splat (i32 -1)
  %i.br = add i32 %i.a, %i.bh                     ; 2 uses
  %i.bs = add i32 %i.br, %i.bl
  %i.bt = add i32 %i.br, %i.bk
  %i.bu = mul i32 %i.e, %i.am
  %i.bv = add i32 %i.a, %i.bu
  %i.bw = mul i32 %i.c, %i.ak
  %i.bx = add i32 %i.bv, %i.bw
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 16
  %i.by = mul i32 %i.e, %i.ax
  %i.bz = add i32 %i.a, %i.by
  %i.ca = mul i32 %i.c, %i.av
  %i.cb = add i32 %i.bz, %i.ca
  %i.cc = add i32 %i.g, -1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = add nuw nsw i64 %i.ce, 8                ; 6 uses
  %scevgep57 = getelementptr i8, ptr %i.at, i64 %i.cf
  %i.cg = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.ch = add i32 %i.a, %i.cg                     ; 2 uses
  %i.ci = add i32 %i.c, 1
  %i.cj = mul i32 %i.ae, %i.ci                    ; 2 uses
  %i.ck = add i32 %i.ch, %i.cj
  %scevgep60 = getelementptr i8, ptr %i.ac, i64 %i.cf
  %i.cl = mul i32 %i.c, %i.ae                     ; 2 uses
  %i.cm = add i32 %i.ch, %i.cl
  %scevgep63 = getelementptr i8, ptr %i.ac, i64 %i.cf
  %i.cn = add i32 %i.a, %i.cg                     ; 2 uses
  %i.co = add i32 %i.cn, %i.cj
end_hunk_2
begin_hunk_3_@_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISL_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSO_4sizeEERKT2_:bb.a
  store i32 %i.bk, ptr %i.an, align 4, !tbaa !4, !alias.scope !13298, !noalias !13291
  store i32 %i.bo, ptr %i.ao, align 8, !tbaa !4, !alias.scope !13298, !noalias !13291
  store i32 %i.bt, ptr %i.ap, align 4, !tbaa !4, !alias.scope !13298, !noalias !13291
  store i32 %i.bx, ptr %i.aq, align 8, !tbaa !4, !alias.scope !13298, !noalias !13291
  store i32 %i.cc, ptr %i.ar, align 4, !tbaa !4, !alias.scope !13298, !noalias !13291
  store ptr %i.ce, ptr %i.as, align 8, !tbaa !2658, !alias.scope !13298, !noalias !13291
  store i32 %i.cg, ptr %i.at, align 8, !tbaa !2661, !alias.scope !13298, !noalias !13291
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48, !noalias !13301
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEEC2Id10MultiPatchI7GridTagS6_I5BrickEEEERKS_IS5_T_T0_ERK5INodeILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(36) %8), !noalias !13288
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48, !noalias !13291
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48, !noalias !13288
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48, !noalias !13302
  call void @llvm.experimental.noalias.scope.decl(metadata !13309)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48, !noalias !13312
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.au), !noalias !13312
  store i32 %i.bf, ptr %6, align 8, !tbaa !4, !alias.scope !13309, !noalias !13302
  store i32 %i.bk, ptr %i.av, align 4, !tbaa !4, !alias.scope !13309, !noalias !13302
  store i32 %i.bo, ptr %i.aw, align 8, !tbaa !4, !alias.scope !13309, !noalias !13302
  store i32 %i.bt, ptr %i.ax, align 4, !tbaa !4, !alias.scope !13309, !noalias !13302
  store i32 %i.bx, ptr %i.ay, align 8, !tbaa !4, !alias.scope !13309, !noalias !13302
  store i32 %i.cc, ptr %i.az, align 4, !tbaa !4, !alias.scope !13309, !noalias !13302
  store ptr %i.ce, ptr %i.ba, align 8, !tbaa !2658, !alias.scope !13309, !noalias !13302
  store i32 %i.cg, ptr %i.bb, align 8, !tbaa !2661, !alias.scope !13309, !noalias !13302
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48, !noalias !13312
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEEC2Id10MultiPatchI7GridTagS6_I5BrickEEEERKS_IS5_T_T0_ERK5INodeILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %10, ptr noundef nonnull align 8 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(36) %6), !noalias !13288
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48, !noalias !13302
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESA_EC2ERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(144) %10)
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %10) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48, !noalias !13288
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %9) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48, !noalias !13288
  call void @_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bc) #48
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %13) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #48
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #48
  %i.ci = load ptr, ptr %11, align 8, !tbaa !6055
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !2645
  %.not = icmp eq ptr %i.ch, %i.ck
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13313

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @_ZN13RefCountedPtrI21SimpleIntersectorDataILi3EEE10invalidateEv(ptr noundef nonnull align 8 dereferenceable(9) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.Field.571, align 8           ; 5 uses
  %6 = alloca %class.Field.571, align 8           ; 5 uses
  %7 = alloca %struct.EngineView, align 1         ; 5 uses
  %8 = alloca %struct.MultiArg2.649, align 8      ; 6 uses
  %9 = alloca %class.Interval.108, align 16       ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #46 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.a, align 4, !tbaa !719
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !6080
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !6083
  %i.h = load i64, ptr %i.c, align 8, !tbaa !6086
  %i.i = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2830
  tail call void @_ZNK14GatherContexts18GatherContextsData10addContextEi(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144  ; 4 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !141  ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit.thread, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i

_ZNK14GatherContexts17mostCommonContextEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  br label %bb.d

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i: ; preds = %bb.a
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %i.u)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !1547 ; 6 uses
  %.not24.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not24.i.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i, %.critedge.i.i.i
  %.sroa.04.027.i.i.i = phi ptr [ %spec.select7.i.i.i, %.critedge.i.i.i ], [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ]
  %.026.i.i.i = phi i32 [ %spec.select.i.i.i, %.critedge.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ] ; 2 uses
  %.sroa.010.025.i.i.i = phi ptr [ %.sroa.010.1.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.v, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ] ; 3 uses
  %.sroa.010.116.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i.i.i, i64 4 ; 3 uses
  %.not1517.i.i.i = icmp eq ptr %.sroa.010.116.i.i.i, %i.w
  br i1 %.not1517.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.x = load i32, ptr %.sroa.010.025.i.i.i, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.010.119.i.i.i = phi ptr [ %.sroa.010.116.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.010.1.i.i.i, %bb.c ] ; 3 uses
  %.0618.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i ], [ %i.aa, %bb.c ] ; 2 uses
  %i.y = load i32, ptr %.sroa.010.119.i.i.i, align 4, !tbaa !4
  %i.z = icmp eq i32 %i.y, %i.x
  br i1 %i.z, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.aa = add nuw nsw i32 %.0618.i.i.i, 1         ; 2 uses
  %.sroa.010.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.119.i.i.i, i64 4 ; 3 uses
  %.not15.i.i.i = icmp eq ptr %.sroa.010.1.i.i.i, %i.w
  br i1 %.not15.i.i.i, label %.critedge.i.i.i, label %bb.b, !llvm.loop !2688

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b, %.preheader.i.i.i
  %.06.lcssa.i.i.i = phi i32 [ 1, %.preheader.i.i.i ], [ %.0618.i.i.i, %bb.b ], [ %i.aa, %bb.c ] ; 2 uses
  %.sroa.010.1.lcssa.i.i.i = phi ptr [ %.sroa.010.116.i.i.i, %.preheader.i.i.i ], [ %.sroa.010.119.i.i.i, %bb.b ], [ %.sroa.010.1.i.i.i, %bb.c ] ; 2 uses
  %i.ab = icmp samesign ugt i32 %.06.lcssa.i.i.i, %.026.i.i.i
  %spec.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %.06.lcssa.i.i.i, i32 %.026.i.i.i)
  %spec.select7.i.i.i = select i1 %i.ab, ptr %.sroa.010.025.i.i.i, ptr %.sroa.04.027.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.010.1.lcssa.i.i.i, %i.w
  br i1 %.not.i.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit, label %.preheader.i.i.i, !llvm.loop !2689

_ZNK14GatherContexts17mostCommonContextEv.exit:   ; preds = %.critedge.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ], [ %spec.select7.i.i.i, %.critedge.i.i.i ]
  %i.ac = load i32, ptr %.sroa.04.0.lcssa.i.i.i, align 4, !tbaa !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  %i.ad = icmp eq i32 %i.ac, -1
  %i.ae = load i32, ptr @_ZN5Pooma11myContext_gE, align 4
  %i.af = icmp eq i32 %i.ae, %i.ac
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK14GatherContexts17mostCommonContextEv.exit.thread, %_ZNK14GatherContexts17mostCommonContextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48, !noalias !13314
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %7), !noalias !13314
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48, !noalias !13314
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(144) %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %7), !noalias !13314
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(144) %6)
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48, !noalias !13314
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48, !noalias !13314
  %i.ah = load <4 x i32>, ptr %2, align 4, !tbaa !4
  store <4 x i32> %i.ah, ptr %9, align 16, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load <2 x i32>, ptr %i.aj, align 4, !tbaa !4
  store <2 x i32> %i.ak, ptr %i.ai, align 16, !tbaa !4
  call void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.al) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  br label %bb.e

bb.e:                                             ; preds = %_ZNK14GatherContexts17mostCommonContextEv.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  %i.am = load i32, ptr %i.a, align 4, !tbaa !719
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.a, align 4, !tbaa !719
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.f, label %_ZN14GatherContextsD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #49
  br label %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i

_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #49
  br label %_ZN14GatherContextsD2Ev.exit

_ZN14GatherContextsD2Ev.exit:                     ; preds = %bb.e, %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.DataObjectRequest.349, align 8 ; 5 uses
  %6 = alloca %struct.ExpressionApply.578, align 8 ; 4 uses
  %.sroa.0.i = alloca %"struct.Forgas::CoriolisY", align 8 ; 4 uses
  %7 = alloca %class.Interval.108, align 4        ; 3 uses
  %8 = alloca %class.Interval.108, align 4        ; 9 uses
  %9 = alloca %class.Interval.108, align 4        ; 3 uses
  %10 = alloca %class.Interval.108, align 4       ; 9 uses
  %11 = alloca %class.Field.571, align 8          ; 5 uses
  %12 = alloca %class.Field.571, align 8          ; 5 uses
  %13 = alloca %struct.MultiArg2.649, align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %2, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.c = load i32, ptr %3, align 8, !tbaa !4, !noalias !13321 ; 2 uses
  %i.d = sub nsw i32 %i.b, %i.c                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !4, !noalias !13321
  %i.h = add i32 %i.f, %i.b
  %reass.sub.i.i.i = sub i32 %i.h, %i.d
  %i.i = add i32 %reass.sub.i.i.i, %i.g           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.n = sub nsw i32 %i.k, %i.m                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !4, !noalias !13321
  %i.s = add i32 %i.p, %i.k
  %reass.sub.i.1.i.i = sub i32 %i.s, %i.n
  %i.t = add i32 %reass.sub.i.1.i.i, %i.r         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !4, !noalias !13321 ; 2 uses
  %i.y = sub nsw i32 %i.v, %i.x                   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4, !noalias !13321
  %i.ad = add i32 %i.aa, %i.v
  %reass.sub.i.2.i.i = sub i32 %i.ad, %i.y
  %i.ae = add i32 %reass.sub.i.2.i.i, %i.ac       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #48, !noalias !13326
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48, !noalias !13329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13336)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48, !noalias !13339
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %9, ptr noundef nonnull align 8 dereferenceable(288) %0), !noalias !13339
  store i32 %i.d, ptr %10, align 4, !tbaa !4, !alias.scope !13340, !noalias !13329
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.i, ptr %i.af, align 4, !tbaa !4, !alias.scope !13340, !noalias !13329
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.n, ptr %i.ag, align 4, !tbaa !4, !alias.scope !13340, !noalias !13329
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.t, ptr %i.ah, align 4, !tbaa !4, !alias.scope !13340, !noalias !13329
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !4, !alias.scope !13340, !noalias !13329
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !4, !alias.scope !13340, !noalias !13329
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48, !noalias !13339
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IdS6_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(24) %10), !noalias !13326
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48, !noalias !13329
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #48, !noalias !13326
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48, !noalias !13345
  call void @llvm.experimental.noalias.scope.decl(metadata !13352)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48, !noalias !13355
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.ak), !noalias !13355
  store i32 %i.d, ptr %8, align 4, !tbaa !4, !alias.scope !13356, !noalias !13345
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.i, ptr %i.al, align 4, !tbaa !4, !alias.scope !13356, !noalias !13345
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.n, ptr %i.am, align 4, !tbaa !4, !alias.scope !13356, !noalias !13345
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.t, ptr %i.an, align 4, !tbaa !4, !alias.scope !13356, !noalias !13345
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.y, ptr %i.ao, align 4, !tbaa !4, !alias.scope !13356, !noalias !13345
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.ae, ptr %i.ap, align 4, !tbaa !4, !alias.scope !13356, !noalias !13345
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48, !noalias !13355
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IdS6_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %12, ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull align 4 dereferenceable(24) %8), !noalias !13326
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48, !noalias !13345
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(144) %12)
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %12) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #48, !noalias !13326
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %11) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48, !noalias !13326
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.aq = call noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #46 ; 19 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !2454
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.au, align 8, !tbaa !2701
  %i.av = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEE, i64 16), ptr %i.aq, align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(288) %i.ax, ptr noundef nonnull align 8 dereferenceable(288) %13)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 336
  store i32 %i.c, ptr %i.az, align 8, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 340
  store i32 %i.f, ptr %i.ba, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 344
  store i32 %i.m, ptr %i.bb, align 8, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 348
  store i32 %i.p, ptr %i.bc, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 352
  store i32 %i.x, ptr %i.bd, align 8, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 356
  store i32 %i.aa, ptr %i.be, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 360 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %i.ar)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 400
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.aq, ptr %5, align 8, !tbaa !6175
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #48, !inline_history !13361
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #48, !inline_history !13361
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bo) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %13) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 440) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.896, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !8422
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13362
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13362 ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2330 = icmp sgt i32 %i.c, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8 ; 2 uses
  %.not2426 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2330, i1 true, i1 %.not2426
  br i1 %or.cond, label %._crit_edge36, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8422 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !6263
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !6266
  %i.z = load i64, ptr %i.v, align 8, !tbaa !6262
  %i.aa = getelementptr inbounds [88 x i8], ptr %i.y, i64 %i.z ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2836 ; 16 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2836 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.am = load i32, ptr %i.al, align 8, !tbaa !4  ; 5 uses
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !6263
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6266
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !6262
  %i.ar = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2836 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !4  ; 5 uses
  %i.ay = zext i32 %i.a to i64                    ; 4 uses
  %i.az = add i32 %i.g, %i.a
  %i.ba = add i32 %i.i, %i.c
  %i.bb = add i32 %i.k, %i.e
  %i.bc = add i32 %i.g, -1                        ; 3 uses
  %i.bd = mul i32 %i.e, %i.ax
  %i.be = add i32 %i.a, %i.bd
  %i.bf = mul i32 %i.c, %i.av
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.bi = add i32 %i.a, %i.bh                     ; 2 uses
  %i.bj = mul i32 %i.c, %i.ae
  %i.bk = add i32 %i.c, -1
  %i.bl = mul i32 %i.ae, %i.bk                    ; 2 uses
  %i.bm = add i32 %i.a, %i.bh
  %i.bn = add i32 %i.bm, %i.bl
  %i.bo = add i32 %i.bi, %i.bj                    ; 2 uses
  %i.bp = add i32 %i.bo, 1
  %i.bq = add i32 %i.bi, %i.bl
  %i.br = add i32 %i.bn, 1
  %i.bs = mul i32 %i.e, %i.am
  %i.bt = add i32 %i.a, %i.bs
  %i.bu = mul i32 %i.c, %i.ak
  %i.bv = add i32 %i.bt, %i.bu
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 16
  %i.bw = mul i32 %i.e, %i.ax
  %i.bx = add i32 %i.a, %i.bw
  %i.by = mul i32 %i.c, %i.av
  %i.bz = add i32 %i.bx, %i.by
  %i.ca = add i32 %i.g, -1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 8                ; 6 uses
  %scevgep57 = getelementptr i8, ptr %i.at, i64 %i.cd
  %i.ce = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.cf = add i32 %i.a, %i.ce
  %i.cg = add i32 %i.c, -1
  %i.ch = mul i32 %i.ae, %i.cg
  %i.ci = add i32 %i.cf, %i.ch                    ; 2 uses
  %i.cj = add i32 %i.ci, 1
  %scevgep60 = getelementptr i8, ptr %i.ac, i64 %i.cd
  %scevgep63 = getelementptr i8, ptr %i.ac, i64 %i.cd
  %i.ck = add i32 %i.a, %i.ce
  %i.cl = mul i32 %i.c, %i.ae
  %i.cm = add i32 %i.ck, %i.cl                    ; 2 uses
  %i.cn = add i32 %i.cm, 1
  %scevgep66 = getelementptr i8, ptr %i.ac, i64 %i.cd
end_hunk_3
