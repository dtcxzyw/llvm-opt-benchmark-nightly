inline.NumInlined: 75479
inline.NumDeleted: 20342
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_127CosineSimilarityFunctionMapINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharEdEESD_EEEJSD_SD_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EERKSL_IKNS0_4TypeEERNS1_7EvalCtxERSN_:bb.a
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #43
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 120) #43
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i

bb.j:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i
  %i.bo = load i64, ptr %i.ap, align 8, !tbaa !776
  store i64 %i.bo, ptr %i.ax, align 8, !tbaa !776
  store ptr null, ptr %i.ap, align 8, !tbaa !776
  store i8 1, ptr %i.at, align 8, !tbaa !774
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i

_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i: ; preds = %bb.j, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i, %bb.f
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %39) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #37
  %i.bp = load ptr, ptr %i.af, align 8, !tbaa !782
  %i.bq = load ptr, ptr %42, align 8, !tbaa !771  ; 3 uses
  %.not.i.i.not.i = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i.i.not.i, label %bb.k, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i

bb.k:                                             ; preds = %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.124, i64 noundef 0, i64 noundef 0) #45
          to label %.noexc34 unwind label %bb.hg

.noexc34:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i: ; preds = %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !774, !range !392, !noundef !393
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #45
          to label %.noexc35 unwind label %bb.hg

.noexc35:                                         ; preds = %bb.l
  unreachable

_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i: ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i
  %i.bu = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %.noexc36 unwind label %bb.hg

.noexc36:                                         ; preds = %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #37
  invoke void @_ZN8facebook5velox4exec12VectorReaderINS0_3MapINS0_7VarcharEdEEEC2EPKNS0_13DecodedVectorE(ptr noundef nonnull align 8 dereferenceable(292) %40, ptr noundef %i.bu)
          to label %.noexc37 unwind label %bb.hg

.noexc37:                                         ; preds = %.noexc36
  %.val.i = load ptr, ptr %2, align 8, !tbaa !627
  %i.bv = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load ptr, ptr %i.bv, align 8, !tbaa !624
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #37
  %i.bw = load ptr, ptr %i.k, align 8, !tbaa !20157, !nonnull !393, !align !891
  %i.bx = load ptr, ptr %41, align 8, !tbaa !20152
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !649
  store ptr %i.by, ptr %37, align 8, !tbaa !761
  %i.bz = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 6 uses
  store ptr null, ptr %i.bz, align 8, !tbaa !770
  %i.ca = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %37)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc37
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.ca, ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bx, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %.noexc37
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bz) #37
  br label %.body.i

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i.i: ; preds = %bb.m
  %i.cc = load ptr, ptr %42, align 8, !tbaa !771  ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 40 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !774, !range !392, !noundef !393
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = load ptr, ptr %37, align 8, !tbaa !761
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !761
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 3 uses
  br i1 %i.cg, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i.i
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !776
  store ptr null, ptr %i.bz, align 8, !tbaa !776
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !776 ; 6 uses
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !776
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !725 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 112
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !777
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !778 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 88
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !781
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #43
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 120) #43
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i

bb.s:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i.i
  %i.cz = load i64, ptr %i.bz, align 8, !tbaa !776
  store i64 %i.cz, ptr %i.ci, align 8, !tbaa !776
  store ptr null, ptr %i.bz, align 8, !tbaa !776
  store i8 1, ptr %i.ce, align 8, !tbaa !774
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i

_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i: ; preds = %bb.s, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i, %bb.o
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %37) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #37
  %i.da = load ptr, ptr %i.af, align 8, !tbaa !782
  %i.db = load ptr, ptr %42, align 8, !tbaa !771  ; 3 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = sdiv exact i64 %i.de, 24                ; 2 uses
  %.not.i.i.i.i33 = icmp ugt i64 %i.df, 1
  br i1 %.not.i.i.i.i33, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.124, i64 noundef 1, i64 noundef %i.df) #45
          to label %.noexc.i unwind label %bb.hf

.noexc.i:                                         ; preds = %bb.t
  unreachable

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i.i: ; preds = %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !774, !range !392, !noundef !393
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #45
          to label %.noexc13.i unwind label %bb.hf

.noexc13.i:                                       ; preds = %bb.u
  unreachable

_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i.i: ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dk = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj)
          to label %.noexc14.i unwind label %bb.hf

.noexc14.i:                                       ; preds = %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #37
  invoke void @_ZN8facebook5velox4exec12VectorReaderINS0_3MapINS0_7VarcharEdEEEC2EPKNS0_13DecodedVectorE(ptr noundef nonnull align 8 dereferenceable(292) %38, ptr noundef %i.dk)
          to label %.noexc15.i unwind label %bb.hf

.noexc15.i:                                       ; preds = %.noexc14.i
  %i.dl = getelementptr inbounds nuw i8, ptr %40, i64 272
  %i.dm = getelementptr inbounds nuw i8, ptr %40, i64 280
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !17754, !nonnull !393, !align !891
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !20158, !range !392, !noundef !393 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %40, i64 288
  %.sroa.02.0.insert.ext.i.i.i.i.i.i = zext nneg i8 %i.dp to i16
  %.sroa.02.0.insert.insert.i.i.i.i.i.i = or disjoint i16 %.sroa.02.0.insert.ext.i.i.i.i.i.i, 256
  store i16 %.sroa.02.0.insert.insert.i.i.i.i.i.i, ptr %i.dq, align 8
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !7366, !nonnull !393, !align !891
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !20158, !range !392, !noundef !393 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %40, i64 290
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = zext nneg i8 %i.dt to i16
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, 256
  store i16 %.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr %i.du, align 2
  %i.dv = load ptr, ptr %40, align 8, !tbaa !20159, !nonnull !393, !align !891
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !20158, !range !392, !noundef !393
  %i.dy = or i8 %i.dx, %i.dp
  %or.cond.i.not.i.i.i.i.i = icmp eq i8 %i.dy, 0
  %43 = select i1 %or.cond.i.not.i.i.i.i.i, i8 %i.dt, i8 1
  %i.dz = load i8, ptr %i.m, align 1, !tbaa !20155, !range !392, !noundef !393
  %i.ea = or i8 %43, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %38, i64 272
  %i.ec = getelementptr inbounds nuw i8, ptr %38, i64 280
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !17754, !nonnull !393, !align !891
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !20158, !range !392, !noundef !393 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %38, i64 288
  %.sroa.02.0.insert.ext.i.i33.i.i.i.i = zext nneg i8 %i.ef to i16
  %.sroa.02.0.insert.insert.i.i34.i.i.i.i = or disjoint i16 %.sroa.02.0.insert.ext.i.i33.i.i.i.i, 256
  store i16 %.sroa.02.0.insert.insert.i.i34.i.i.i.i, ptr %i.eg, align 8
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !7366, !nonnull !393, !align !891
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !20158, !range !392, !noundef !393 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %38, i64 290
  %.sroa.0.0.insert.ext.i.i35.i.i.i.i = zext nneg i8 %i.ej to i16
  %.sroa.0.0.insert.insert.i.i36.i.i.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i35.i.i.i.i, 256
  store i16 %.sroa.0.0.insert.insert.i.i36.i.i.i.i, ptr %i.ek, align 2
  %i.el = load ptr, ptr %38, align 8, !tbaa !20159, !nonnull !393, !align !891
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  %i.en = load i8, ptr %i.em, align 8, !tbaa !20158, !range !392, !noundef !393
  %i.eo = or i8 %i.en, %i.ef
  %or.cond.i.not.i37.i.i.i.i = icmp eq i8 %i.eo, 0
  %44 = select i1 %or.cond.i.not.i37.i.i.i.i, i8 %i.ej, i8 1
  %45 = or i8 %i.ea, %44                          ; 2 uses
  store i8 %45, ptr %i.m, align 1, !tbaa !20155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store ptr null, ptr %i.g, align 8, !tbaa !898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  %.val28.val.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !20162
  store ptr %.val28.val.i.i.i.i, ptr %i.h, align 8, !tbaa !7361
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #37
  store ptr %41, ptr %36, align 8, !tbaa !20163
  %i.ep = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.g, ptr %i.ep, align 8, !tbaa !3148
  %i.eq = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %i.h, ptr %i.eq, align 8, !tbaa !7364
  %i.er = trunc nuw i8 %45 to i1
  %.val29.i.i.i.i = load ptr, ptr %41, align 8, !tbaa !20152 ; 20 uses
  %.val30.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !20157 ; 14 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 36 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 37 ; 2 uses
  br i1 %i.er, label %bb.v, label %bb.dr

bb.v:                                             ; preds = %.noexc15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  store ptr %38, ptr %35, align 8
  %.sroa.4122.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 7 uses
  store ptr %40, ptr %.sroa.4122.0..sroa_idx.i.i.i.i, align 8
  %.sroa.5123.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr %0, ptr %.sroa.5123.0..sroa_idx.i.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 24
  store ptr %41, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 7 uses
  store ptr %36, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !716, !range !392, !noundef !393
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i, label %bb.w

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %bb.v
  %.0.in.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %i.es, align 1, !tbaa !365, !range !392
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.ew = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 28
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !717
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.x, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !723 ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 24
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !724
  %i.fd = icmp eq i32 %i.fa, %i.fc
  br i1 %i.fd, label %bb.y, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.fe = load ptr, ptr %.val29.i.i.i.i, align 8, !tbaa !725 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.fa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.z, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ff = and i32 %i.fa, 2147483584               ; 3 uses
  %i.fg = zext nneg i32 %i.ff to i64
  %.not37.i.i.not.i.i.i.i.i.i.i.i.i260.not = icmp eq i32 %i.ff, 0
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i.i.i260.not, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph262

bb.aa:                                            ; preds = %.lr.ph262
  %indvars.iv.next.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i261, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i, %i.fg
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i.i.i, label %.lr.ph262, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !726

.lr.ph262:                                        ; preds = %bb.z, %bb.aa
  %indvars.iv.i.i.i.i.i.i.i.i.i261 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.fh = lshr exact i64 %indvars.iv.i.i.i.i.i.i.i.i.i261, 3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !366
  %i.fk = icmp eq i64 %i.fj, -1
  br i1 %i.fk, label %bb.aa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !726

.critedge.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.aa, %bb.z
  %.not38.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fa, %i.ff
  br i1 %.not38.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i
  %i.fl = lshr i32 %i.fa, 6
  %i.fm = and i32 %i.fa, 63
  %i.fn = zext nneg i32 %i.fm to i64
  %notmask.i40.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.fn
  %i.fo = zext nneg i32 %i.fl to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !366
  %.demorgan.i.i.i.i.i.i.i.i.i = or i64 %i.fq, %notmask.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.fr = icmp eq i64 %.demorgan.i.i.i.i.i.i.i.i.i, -1
  %i.fs = zext i1 %i.fr to i16
  %i.ft = or disjoint i16 %i.fs, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph262, %bb.ab, %.critedge.i.i.i.i.i.i.i.i.i.i.i, %bb.y, %bb.x, %bb.w
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i = phi i16 [ 256, %bb.x ], [ 256, %bb.w ], [ 257, %bb.y ], [ 257, %.critedge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ft, %bb.ab ], [ 256, %.lr.ph262 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i, ptr %i.es, align 4
  %i.fu = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.fu, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.bf

bb.ac:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 32
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !723 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 28
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !717 ; 2 uses
  %i.fz = icmp slt i32 %i.fy, %i.fw
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_127CosineSimilarityFunctionMapINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharEdEESD_EEEJSD_SD_EEEE12ApplyContext22applyToSelectedNoThrowIZNKSG_7iterateIJNS1_12VectorReaderISD_EESL_EEEvRSH_DpRT_EUlT_E_EEvSQ_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ac
  %i.ga = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %31, i64 20
  %i.gd = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %30, i64 20
  %i.gg = sext i32 %i.fy to i64
  br label %bb.ad

bb.ad:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_127CosineSimilarityFunctionMapINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharEdEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i = phi i64 [ %i.gg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_127CosineSimilarityFunctionMapINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharEdEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !1890
  %i.gh = load ptr, ptr %.sroa.4122.0..sroa_idx.i.i.i.i, align 8, !tbaa !20165, !nonnull !393, !align !891
  %i.gi = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i to i32 ; 6 uses
  %i.gj = invoke noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_3MapINS0_7VarcharEdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(292) %i.gh, i32 noundef %i.gi)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ad
  br i1 %i.gj, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.gk = load ptr, ptr %35, align 8, !tbaa !20169, !nonnull !393, !align !891
  %i.gl = invoke noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_3MapINS0_7VarcharEdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(292) %i.gk, i32 noundef %i.gi)
          to label %.noexc5.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i

.noexc5.i.i.i.i.i.i.i.i:                          ; preds = %bb.ae
  br i1 %i.gl, label %bb.an, label %bb.af

bb.af:                                            ; preds = %.noexc5.i.i.i.i.i.i.i.i
  %i.gm = load ptr, ptr %.sroa.4122.0..sroa_idx.i.i.i.i, align 8, !tbaa !20165, !nonnull !393, !align !891 ; 5 uses
  %i.gn = load ptr, ptr %35, align 8, !tbaa !20169, !nonnull !393, !align !891 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37, !noalias !20170
  call void @llvm.experimental.noalias.scope.decl(metadata !20173)
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !20159, !noalias !20173, !nonnull !393, !align !891 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 58
  %i.gq = load i8, ptr %i.gp, align 2, !tbaa !792, !range !392, !noalias !20173, !noundef !393
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %.noexc8.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 59
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !793, !range !392, !noalias !20173, !noundef !393
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !794, !noalias !20173
  br label %.noexc8.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !795, !noalias !20173
  %i.gz = shl nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 2
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !3, !noalias !20173
  br label %.noexc8.i.i.i.i.i.i.i.i

.noexc8.i.i.i.i.i.i.i.i:                          ; preds = %bb.ai, %bb.ah, %bb.af
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hb, %bb.ai ], [ %i.gw, %bb.ah ], [ %i.gi, %bb.af ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gm, i64 272
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gm, i64 280
  %i.he = getelementptr inbounds nuw i8, ptr %i.gm, i64 256
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !20176, !noalias !20173
  %i.hg = sext i32 %.0.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3, !noalias !20173
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gm, i64 264
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !20177, !noalias !20173
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.hg
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3, !noalias !20173
  store ptr %i.hc, ptr %31, align 8, !tbaa !20178, !alias.scope !20173
  store ptr %i.hd, ptr %i.ga, align 8, !tbaa !20180, !alias.scope !20173
  store i32 %i.hi, ptr %i.gb, align 8, !tbaa !20181, !alias.scope !20173
  store i32 %i.hm, ptr %i.gc, align 4, !tbaa !20182, !alias.scope !20173
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37, !noalias !20183
  call void @llvm.experimental.noalias.scope.decl(metadata !20186)
  %i.hn = load ptr, ptr %i.gn, align 8, !tbaa !20159, !noalias !20186, !nonnull !393, !align !891 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 58
  %i.hp = load i8, ptr %i.ho, align 2, !tbaa !792, !range !392, !noalias !20186, !noundef !393
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %.noexc11.i.i.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.noexc8.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %40, i64 136
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 104
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20269
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !20495
  %i.cj = getelementptr inbounds nuw i8, ptr %40, i64 144
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 120
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !20271
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !20497
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 128
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !624
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(162) %40, ptr noundef nonnull align 8 dereferenceable(94) %i.cn, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i unwind label %bb.m

bb.m:                                             ; preds = %.noexc36
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(162) %40) #37
  br label %.body

_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i: ; preds = %.noexc36
  %i.cp = getelementptr inbounds nuw i8, ptr %40, i64 152 ; 2 uses
  store ptr %40, ptr %i.cp, align 8, !tbaa !776
  %i.cq = getelementptr inbounds nuw i8, ptr %40, i64 161
  store i8 0, ptr %i.cq, align 1, !tbaa !716
  %.val.i = load ptr, ptr %2, align 8, !tbaa !627
  %i.cr = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load ptr, ptr %i.cr, align 8, !tbaa !624
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #37
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !20492, !nonnull !393, !align !891
  %i.ct = load ptr, ptr %41, align 8, !tbaa !20487
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !649
  store ptr %i.cu, ptr %37, align 8, !tbaa !761
  %i.cv = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 6 uses
  store ptr null, ptr %i.cv, align 8, !tbaa !770
  %i.cw = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %37)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.cw, ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef nonnull align 8 dereferenceable(38) %i.ct, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cv) #37
  br label %.body.i

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i.i: ; preds = %bb.n
  %i.cy = load ptr, ptr %42, align 8, !tbaa !771  ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !774, !range !392, !noundef !393
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = load ptr, ptr %37, align 8, !tbaa !761
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !761
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 3 uses
  br i1 %i.dc, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i.i
  %i.df = load ptr, ptr %i.cv, align 8, !tbaa !776
  store ptr null, ptr %i.cv, align 8, !tbaa !776
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !776 ; 6 uses
  store ptr %i.df, ptr %i.de, align 8, !tbaa !776
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !725 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 112
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !777
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !778 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !781
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #43
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 120) #43
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i

bb.t:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i.i
  %i.dv = load i64, ptr %i.cv, align 8, !tbaa !776
  store i64 %i.dv, ptr %i.de, align 8, !tbaa !776
  store ptr null, ptr %i.cv, align 8, !tbaa !776
  store i8 1, ptr %i.da, align 8, !tbaa !774
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i

_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i: ; preds = %bb.t, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i, %bb.p
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %37) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #37
  %i.dw = load ptr, ptr %i.af, align 8, !tbaa !782
  %i.dx = load ptr, ptr %42, align 8, !tbaa !771  ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 24                ; 2 uses
  %.not.i.i.i.i33 = icmp ugt i64 %i.eb, 1
  br i1 %.not.i.i.i.i33, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.124, i64 noundef 1, i64 noundef %i.eb) #45
          to label %.noexc.i unwind label %bb.hl

.noexc.i:                                         ; preds = %bb.u
  unreachable

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i.i: ; preds = %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !774, !range !392, !noundef !393
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #45
          to label %.noexc13.i unwind label %bb.hl

.noexc13.i:                                       ; preds = %bb.v
  unreachable

_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i.i: ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.eg = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef)
          to label %.noexc14.i unwind label %bb.hl ; 2 uses

.noexc14.i:                                       ; preds = %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #37
  store i32 0, ptr %38, align 8, !tbaa !20268
  %i.eh = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %38, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.ei, align 8, !tbaa !811
  %i.ej = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.ek = getelementptr inbounds nuw i8, ptr %38, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ej, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.ek, align 1, !tbaa !812
  %i.el = getelementptr inbounds nuw i8, ptr %38, i64 64
  store i32 0, ptr %i.el, align 8, !tbaa !794
  %i.em = getelementptr inbounds nuw i8, ptr %38, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.em, i8 0, i64 48, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %38, i64 120 ; 2 uses
  store ptr %i.eg, ptr %i.en, align 8, !tbaa !776
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !20266
  %i.eq = call noundef nonnull align 8 dereferenceable(144) ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ep, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #37 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %38, i64 128
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !20493
  %i.es = getelementptr inbounds nuw i8, ptr %38, i64 136
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !20269
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !20495
  %i.ev = getelementptr inbounds nuw i8, ptr %38, i64 144
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 120
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !20271
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !20497
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 128
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !624
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(162) %38, ptr noundef nonnull align 8 dereferenceable(94) %i.ez, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i.i unwind label %bb.w

bb.w:                                             ; preds = %.noexc14.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(162) %38) #37
  br label %.body.i

_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i.i: ; preds = %.noexc14.i
  %i.fb = getelementptr inbounds nuw i8, ptr %38, i64 152
  store ptr %38, ptr %i.fb, align 8, !tbaa !776
  %i.fc = getelementptr inbounds nuw i8, ptr %38, i64 161
  store i8 0, ptr %i.fc, align 1, !tbaa !716
  %i.fd = load ptr, ptr %i.cp, align 8, !tbaa !7366, !nonnull !393, !align !891
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !20158, !range !392, !noundef !393 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %40, i64 160
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = zext nneg i8 %i.ff to i16
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, 256
  store i16 %.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr %i.fg, align 8
  %i.fh = load ptr, ptr %i.cb, align 8, !tbaa !20498, !nonnull !393, !align !891
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !20158, !range !392, !noundef !393
  %43 = trunc nuw i8 %i.fj to i1
  %44 = select i1 %43, i8 1, i8 %i.ff
  %45 = load i8, ptr %i.m, align 1, !tbaa !20490, !range !392, !noundef !393
  %46 = or i8 %44, %45
  %i.fk = getelementptr inbounds nuw i8, ptr %38, i64 56
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !20158, !range !392, !noundef !393 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %38, i64 160
  %.sroa.0.0.insert.ext.i.i33.i.i.i.i = zext nneg i8 %i.fl to i16
  %.sroa.0.0.insert.insert.i.i34.i.i.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i33.i.i.i.i, 256
  store i16 %.sroa.0.0.insert.insert.i.i34.i.i.i.i, ptr %i.fm, align 8
  %i.fn = load ptr, ptr %i.en, align 8, !tbaa !20498, !nonnull !393, !align !891
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !20158, !range !392, !noundef !393
  %47 = trunc nuw i8 %i.fp to i1
  %48 = select i1 %47, i8 1, i8 %i.fl
  %49 = or i8 %46, %48                            ; 2 uses
  store i8 %49, ptr %i.m, align 1, !tbaa !20490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store ptr null, ptr %i.g, align 8, !tbaa !898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  %.val28.val.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !20499
  store ptr %.val28.val.i.i.i.i, ptr %i.h, align 8, !tbaa !7361
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #37
  store ptr %41, ptr %36, align 8, !tbaa !20500
  %i.fq = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.g, ptr %i.fq, align 8, !tbaa !3148
  %i.fr = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %i.h, ptr %i.fr, align 8, !tbaa !7364
  %i.fs = trunc nuw i8 %49 to i1
  %.val29.i.i.i.i = load ptr, ptr %41, align 8, !tbaa !20487 ; 20 uses
  %.val30.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !20492 ; 14 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 36 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 37 ; 2 uses
  br i1 %i.fs, label %bb.x, label %bb.eb

bb.x:                                             ; preds = %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  store ptr %38, ptr %35, align 8
  %.sroa.4125.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 7 uses
  store ptr %40, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8
  %.sroa.5126.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr %0, ptr %.sroa.5126.0..sroa_idx.i.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 24
  store ptr %41, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 7 uses
  store ptr %36, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !716, !range !392, !noundef !393
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i, label %bb.y

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %.0.in.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ft, align 1, !tbaa !365, !range !392
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.fx = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 28
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !717
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.z, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ga = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 32
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !723 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 24
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !724
  %i.ge = icmp eq i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.aa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.gf = load ptr, ptr %.val29.i.i.i.i, align 8, !tbaa !725 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.gb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gg = and i32 %i.gb, 2147483584               ; 3 uses
  %i.gh = zext nneg i32 %i.gg to i64
  %.not37.i.i.not.i.i.i.i.i.i.i.i.i265.not = icmp eq i32 %i.gg, 0
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i.i.i265.not, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph267

bb.ac:                                            ; preds = %.lr.ph267
  %indvars.iv.next.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i266, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i, %i.gh
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i.i.i, label %.lr.ph267, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !726

.lr.ph267:                                        ; preds = %bb.ab, %bb.ac
  %indvars.iv.i.i.i.i.i.i.i.i.i266 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.gi = lshr exact i64 %indvars.iv.i.i.i.i.i.i.i.i.i266, 3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !366
  %i.gl = icmp eq i64 %i.gk, -1
  br i1 %i.gl, label %bb.ac, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !726

.critedge.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ac, %bb.ab
  %.not38.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gb, %i.gg
  br i1 %.not38.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i
  %i.gm = lshr i32 %i.gb, 6
  %i.gn = and i32 %i.gb, 63
  %i.go = zext nneg i32 %i.gn to i64
  %notmask.i40.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.go
  %i.gp = zext nneg i32 %i.gm to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !366
  %.demorgan.i.i.i.i.i.i.i.i.i = or i64 %i.gr, %notmask.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.gs = icmp eq i64 %.demorgan.i.i.i.i.i.i.i.i.i, -1
  %i.gt = zext i1 %i.gs to i16
  %i.gu = or disjoint i16 %i.gt, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph267, %bb.ad, %.critedge.i.i.i.i.i.i.i.i.i.i.i, %bb.aa, %bb.z, %bb.y
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i = phi i16 [ 256, %bb.z ], [ 256, %bb.y ], [ 257, %bb.aa ], [ 257, %.critedge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gu, %bb.ad ], [ 256, %.lr.ph267 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i, ptr %i.ft, align 4
  %i.gv = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.gv, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.bh

bb.ae:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 32
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !723 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 28
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !717 ; 2 uses
  %i.ha = icmp slt i32 %i.gz, %i.gx
  br i1 %i.ha, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE12ApplyContext22applyToSelectedNoThrowIZNKSF_7iterateIJNS1_12VectorReaderISC_EESK_EEEvRSG_DpRT_EUlT_E_EEvSP_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ae
  %i.hb = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.hd = sext i32 %i.gz to i64
  br label %bb.af

bb.af:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i = phi i64 [ %i.hd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !1890
  %i.he = load ptr, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8, !tbaa !20502, !nonnull !393, !align !891
  %i.hf = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i to i32 ; 6 uses
  %i.hg = invoke noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %i.he, i32 noundef %i.hf)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.af
  br i1 %i.hg, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.hh = load ptr, ptr %35, align 8, !tbaa !20506, !nonnull !393, !align !891
  %i.hi = invoke noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %i.hh, i32 noundef %i.hf)
          to label %.noexc5.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i

.noexc5.i.i.i.i.i.i.i.i:                          ; preds = %bb.ag
  br i1 %i.hi, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %.noexc5.i.i.i.i.i.i.i.i
  %i.hj = load ptr, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8, !tbaa !20502, !nonnull !393, !align !891 ; 4 uses
  %i.hk = load ptr, ptr %35, align 8, !tbaa !20506, !nonnull !393, !align !891 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37, !noalias !20507
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 120
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !20498, !nonnull !393, !align !891 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 58
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !792, !range !392, !noundef !393
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %.noexc8.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 59
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !793, !range !392, !noundef !393
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !794
  br label %.noexc8.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !795
  %i.hx = shl nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 2
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  br label %.noexc8.i.i.i.i.i.i.i.i

.noexc8.i.i.i.i.i.i.i.i:                          ; preds = %bb.ak, %bb.aj, %bb.ah
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hz, %bb.ak ], [ %i.hu, %bb.aj ], [ %i.hf, %bb.ah ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 152
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hj, i64 136
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !20495
  %i.id = sext i32 %.0.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !3
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hj, i64 144
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !20497
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.id
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3
  %.sroa.4.8.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %i.ij to i64
  %.sroa.4.8.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %.sroa.2.8.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %i.if to i64
  %.sroa.2.8.insert.insert.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i.i.i.i
  store ptr %i.ia, ptr %31, align 8, !noalias !20507
  store i64 %.sroa.2.8.insert.insert.i.i.i.i.i.i.i.i.i, ptr %i.hb, align 8, !noalias !20507
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37, !noalias !20510
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hk, i64 120
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !20498, !nonnull !393, !align !891 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 58
  %i.in = load i8, ptr %i.im, align 2, !tbaa !792, !range !392, !noundef !393
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %.noexc11.i.i.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc8.i.i.i.i.i.i.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 59
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !793, !range !392, !noundef !393
  %i.ir = trunc nuw i8 %i.iq to i1
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %40, i64 136
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 104
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20269
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !20495
  %i.cj = getelementptr inbounds nuw i8, ptr %40, i64 144
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 120
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !20271
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !20497
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 128
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !624
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(162) %40, ptr noundef nonnull align 8 dereferenceable(94) %i.cn, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i unwind label %bb.m

bb.m:                                             ; preds = %.noexc36
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(162) %40) #37
  br label %.body

_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i: ; preds = %.noexc36
  %i.cp = getelementptr inbounds nuw i8, ptr %40, i64 152 ; 2 uses
  store ptr %40, ptr %i.cp, align 8, !tbaa !776
  %i.cq = getelementptr inbounds nuw i8, ptr %40, i64 161
  store i8 0, ptr %i.cq, align 1, !tbaa !716
  %.val.i = load ptr, ptr %2, align 8, !tbaa !627
  %i.cr = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load ptr, ptr %i.cr, align 8, !tbaa !624
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #37
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !20692, !nonnull !393, !align !891
  %i.ct = load ptr, ptr %41, align 8, !tbaa !20687
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !649
  store ptr %i.cu, ptr %37, align 8, !tbaa !761
  %i.cv = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 6 uses
  store ptr null, ptr %i.cv, align 8, !tbaa !770
  %i.cw = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %37)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.cw, ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef nonnull align 8 dereferenceable(38) %i.ct, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cv) #37
  br label %.body.i

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i.i: ; preds = %bb.n
  %i.cy = load ptr, ptr %42, align 8, !tbaa !771  ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !774, !range !392, !noundef !393
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = load ptr, ptr %37, align 8, !tbaa !761
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !761
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 3 uses
  br i1 %i.dc, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i.i
  %i.df = load ptr, ptr %i.cv, align 8, !tbaa !776
  store ptr null, ptr %i.cv, align 8, !tbaa !776
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !776 ; 6 uses
  store ptr %i.df, ptr %i.de, align 8, !tbaa !776
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !725 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 112
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !777
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !778 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !781
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #43
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 120) #43
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i

bb.t:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i.i
  %i.dv = load i64, ptr %i.cv, align 8, !tbaa !776
  store i64 %i.dv, ptr %i.de, align 8, !tbaa !776
  store ptr null, ptr %i.cv, align 8, !tbaa !776
  store i8 1, ptr %i.da, align 8, !tbaa !774
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i

_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i: ; preds = %bb.t, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i, %bb.p
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %37) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #37
  %i.dw = load ptr, ptr %i.af, align 8, !tbaa !782
  %i.dx = load ptr, ptr %42, align 8, !tbaa !771  ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 24                ; 2 uses
  %.not.i.i.i.i33 = icmp ugt i64 %i.eb, 1
  br i1 %.not.i.i.i.i33, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.124, i64 noundef 1, i64 noundef %i.eb) #45
          to label %.noexc.i unwind label %bb.hl

.noexc.i:                                         ; preds = %bb.u
  unreachable

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i.i: ; preds = %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !774, !range !392, !noundef !393
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #45
          to label %.noexc13.i unwind label %bb.hl

.noexc13.i:                                       ; preds = %bb.v
  unreachable

_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i.i: ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.eg = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef)
          to label %.noexc14.i unwind label %bb.hl ; 2 uses

.noexc14.i:                                       ; preds = %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #37
  store i32 0, ptr %38, align 8, !tbaa !20268
  %i.eh = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %38, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.ei, align 8, !tbaa !811
  %i.ej = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.ek = getelementptr inbounds nuw i8, ptr %38, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ej, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.ek, align 1, !tbaa !812
  %i.el = getelementptr inbounds nuw i8, ptr %38, i64 64
  store i32 0, ptr %i.el, align 8, !tbaa !794
  %i.em = getelementptr inbounds nuw i8, ptr %38, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.em, i8 0, i64 48, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %38, i64 120 ; 2 uses
  store ptr %i.eg, ptr %i.en, align 8, !tbaa !776
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !20266
  %i.eq = call noundef nonnull align 8 dereferenceable(144) ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ep, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #37 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %38, i64 128
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !20493
  %i.es = getelementptr inbounds nuw i8, ptr %38, i64 136
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !20269
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !20495
  %i.ev = getelementptr inbounds nuw i8, ptr %38, i64 144
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 120
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !20271
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !20497
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 128
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !624
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(162) %38, ptr noundef nonnull align 8 dereferenceable(94) %i.ez, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i.i unwind label %bb.w

bb.w:                                             ; preds = %.noexc14.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(162) %38) #37
  br label %.body.i

_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i.i: ; preds = %.noexc14.i
  %i.fb = getelementptr inbounds nuw i8, ptr %38, i64 152
  store ptr %38, ptr %i.fb, align 8, !tbaa !776
  %i.fc = getelementptr inbounds nuw i8, ptr %38, i64 161
  store i8 0, ptr %i.fc, align 1, !tbaa !716
  %i.fd = load ptr, ptr %i.cp, align 8, !tbaa !7366, !nonnull !393, !align !891
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !20158, !range !392, !noundef !393 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %40, i64 160
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = zext nneg i8 %i.ff to i16
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, 256
  store i16 %.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr %i.fg, align 8
  %i.fh = load ptr, ptr %i.cb, align 8, !tbaa !20498, !nonnull !393, !align !891
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !20158, !range !392, !noundef !393
  %43 = trunc nuw i8 %i.fj to i1
  %44 = select i1 %43, i8 1, i8 %i.ff
  %45 = load i8, ptr %i.m, align 1, !tbaa !20690, !range !392, !noundef !393
  %46 = or i8 %44, %45
  %i.fk = getelementptr inbounds nuw i8, ptr %38, i64 56
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !20158, !range !392, !noundef !393 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %38, i64 160
  %.sroa.0.0.insert.ext.i.i33.i.i.i.i = zext nneg i8 %i.fl to i16
  %.sroa.0.0.insert.insert.i.i34.i.i.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i33.i.i.i.i, 256
  store i16 %.sroa.0.0.insert.insert.i.i34.i.i.i.i, ptr %i.fm, align 8
  %i.fn = load ptr, ptr %i.en, align 8, !tbaa !20498, !nonnull !393, !align !891
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !20158, !range !392, !noundef !393
  %47 = trunc nuw i8 %i.fp to i1
  %48 = select i1 %47, i8 1, i8 %i.fl
  %49 = or i8 %46, %48                            ; 2 uses
  store i8 %49, ptr %i.m, align 1, !tbaa !20690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store ptr null, ptr %i.g, align 8, !tbaa !898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  %.val28.val.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !20693
  store ptr %.val28.val.i.i.i.i, ptr %i.h, align 8, !tbaa !7361
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #37
  store ptr %41, ptr %36, align 8, !tbaa !20694
  %i.fq = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.g, ptr %i.fq, align 8, !tbaa !3148
  %i.fr = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %i.h, ptr %i.fr, align 8, !tbaa !7364
  %i.fs = trunc nuw i8 %49 to i1
  %.val29.i.i.i.i = load ptr, ptr %41, align 8, !tbaa !20687 ; 20 uses
  %.val30.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !20692 ; 14 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 36 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 37 ; 2 uses
  br i1 %i.fs, label %bb.x, label %bb.eb

bb.x:                                             ; preds = %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEEC2EPKNS0_13DecodedVectorE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  store ptr %38, ptr %35, align 8
  %.sroa.4125.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 7 uses
  store ptr %40, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8
  %.sroa.5126.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr %0, ptr %.sroa.5126.0..sroa_idx.i.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 24
  store ptr %41, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 7 uses
  store ptr %36, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !716, !range !392, !noundef !393
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i, label %bb.y

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %.0.in.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ft, align 1, !tbaa !365, !range !392
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.fx = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 28
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !717
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.z, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ga = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 32
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !723 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 24
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !724
  %i.ge = icmp eq i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.aa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.gf = load ptr, ptr %.val29.i.i.i.i, align 8, !tbaa !725 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.gb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gg = and i32 %i.gb, 2147483584               ; 3 uses
  %i.gh = zext nneg i32 %i.gg to i64
  %.not37.i.i.not.i.i.i.i.i.i.i.i.i265.not = icmp eq i32 %i.gg, 0
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i.i.i265.not, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph267

bb.ac:                                            ; preds = %.lr.ph267
  %indvars.iv.next.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i266, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i, %i.gh
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i.i.i, label %.lr.ph267, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !726

.lr.ph267:                                        ; preds = %bb.ab, %bb.ac
  %indvars.iv.i.i.i.i.i.i.i.i.i266 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.gi = lshr exact i64 %indvars.iv.i.i.i.i.i.i.i.i.i266, 3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !366
  %i.gl = icmp eq i64 %i.gk, -1
  br i1 %i.gl, label %bb.ac, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !726

.critedge.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ac, %bb.ab
  %.not38.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gb, %i.gg
  br i1 %.not38.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i
  %i.gm = lshr i32 %i.gb, 6
  %i.gn = and i32 %i.gb, 63
  %i.go = zext nneg i32 %i.gn to i64
  %notmask.i40.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.go
  %i.gp = zext nneg i32 %i.gm to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !366
  %.demorgan.i.i.i.i.i.i.i.i.i = or i64 %i.gr, %notmask.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.gs = icmp eq i64 %.demorgan.i.i.i.i.i.i.i.i.i, -1
  %i.gt = zext i1 %i.gs to i16
  %i.gu = or disjoint i16 %i.gt, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph267, %bb.ad, %.critedge.i.i.i.i.i.i.i.i.i.i.i, %bb.aa, %bb.z, %bb.y
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i = phi i16 [ 256, %bb.z ], [ 256, %bb.y ], [ 257, %bb.aa ], [ 257, %.critedge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gu, %bb.ad ], [ 256, %.lr.ph267 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i, ptr %i.ft, align 4
  %i.gv = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.gv, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.bh

bb.ae:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 32
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !723 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 28
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !717 ; 2 uses
  %i.ha = icmp slt i32 %i.gz, %i.gx
  br i1 %i.ha, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE12ApplyContext22applyToSelectedNoThrowIZNKSF_7iterateIJNS1_12VectorReaderISC_EESK_EEEvRSG_DpRT_EUlT_E_EEvSP_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ae
  %i.hb = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.hd = sext i32 %i.gz to i64
  br label %bb.af

bb.af:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i = phi i64 [ %i.hd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !1890
  %i.he = load ptr, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8, !tbaa !20696, !nonnull !393, !align !891
  %i.hf = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i to i32 ; 6 uses
  %i.hg = invoke noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %i.he, i32 noundef %i.hf)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.af
  br i1 %i.hg, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.hh = load ptr, ptr %35, align 8, !tbaa !20699, !nonnull !393, !align !891
  %i.hi = invoke noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %i.hh, i32 noundef %i.hf)
          to label %.noexc5.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i

.noexc5.i.i.i.i.i.i.i.i:                          ; preds = %bb.ag
  br i1 %i.hi, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %.noexc5.i.i.i.i.i.i.i.i
  %i.hj = load ptr, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8, !tbaa !20696, !nonnull !393, !align !891 ; 4 uses
  %i.hk = load ptr, ptr %35, align 8, !tbaa !20699, !nonnull !393, !align !891 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37, !noalias !20700
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 120
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !20498, !nonnull !393, !align !891 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 58
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !792, !range !392, !noundef !393
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %.noexc8.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 59
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !793, !range !392, !noundef !393
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !794
  br label %.noexc8.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !795
  %i.hx = shl nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 2
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  br label %.noexc8.i.i.i.i.i.i.i.i

.noexc8.i.i.i.i.i.i.i.i:                          ; preds = %bb.ak, %bb.aj, %bb.ah
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hz, %bb.ak ], [ %i.hu, %bb.aj ], [ %i.hf, %bb.ah ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 152
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hj, i64 136
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !20495
  %i.id = sext i32 %.0.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !3
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hj, i64 144
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !20497
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.id
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3
  %.sroa.4.8.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %i.ij to i64
  %.sroa.4.8.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %.sroa.2.8.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %i.if to i64
  %.sroa.2.8.insert.insert.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i.i.i.i
  store ptr %i.ia, ptr %31, align 8, !noalias !20700
  store i64 %.sroa.2.8.insert.insert.i.i.i.i.i.i.i.i.i, ptr %i.hb, align 8, !noalias !20700
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37, !noalias !20703
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hk, i64 120
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !20498, !nonnull !393, !align !891 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 58
  %i.in = load i8, ptr %i.im, align 2, !tbaa !792, !range !392, !noundef !393
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %.noexc11.i.i.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc8.i.i.i.i.i.i.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 59
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !793, !range !392, !noundef !393
  %i.ir = trunc nuw i8 %i.iq to i1
end_hunk_2
