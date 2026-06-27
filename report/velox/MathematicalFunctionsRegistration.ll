inline.NumInlined: 75479
inline.NumDeleted: 20342
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %40, i64 136
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 104
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20273
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !20499
  %i.cj = getelementptr inbounds nuw i8, ptr %40, i64 144
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 120
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !20275
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !20501
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
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !20496, !nonnull !393, !align !891
  %i.ct = load ptr, ptr %41, align 8, !tbaa !20491
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
  store i32 0, ptr %38, align 8, !tbaa !20272
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
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !20270
  %i.eq = call noundef nonnull align 8 dereferenceable(144) ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ep, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #37 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %38, i64 128
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !20497
  %i.es = getelementptr inbounds nuw i8, ptr %38, i64 136
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !20273
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !20499
  %i.ev = getelementptr inbounds nuw i8, ptr %38, i64 144
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 120
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !20275
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !20501
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
  %i.fd = load ptr, ptr %i.cp, align 8, !tbaa !7369, !nonnull !393, !align !891
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !20162, !range !392, !noundef !393 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %40, i64 160
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = zext nneg i8 %i.ff to i16
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, 256
  store i16 %.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr %i.fg, align 8
  %i.fh = load ptr, ptr %i.cb, align 8, !tbaa !20502, !nonnull !393, !align !891
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !20162, !range !392, !noundef !393
  %i.fk = load i8, ptr %i.m, align 1, !tbaa !20494, !range !392, !noundef !393
  %i.fl = getelementptr inbounds nuw i8, ptr %38, i64 56
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !20162, !range !392, !noundef !393 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %38, i64 160
  %.sroa.0.0.insert.ext.i.i33.i.i.i.i = zext nneg i8 %i.fm to i16
  %.sroa.0.0.insert.insert.i.i34.i.i.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i33.i.i.i.i, 256
  store i16 %.sroa.0.0.insert.insert.i.i34.i.i.i.i, ptr %i.fn, align 8
  %i.fo = load ptr, ptr %i.en, align 8, !tbaa !20502, !nonnull !393, !align !891
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !20162, !range !392, !noundef !393
  %43 = or i8 %i.fj, %i.fk
  %44 = or i8 %43, %i.fq
  %45 = or i8 %44, %i.ff
  %i.fr = or i8 %45, %i.fm                        ; 2 uses
  store i8 %i.fr, ptr %i.m, align 1, !tbaa !20494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store ptr null, ptr %i.g, align 8, !tbaa !898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  %.val28.val.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !20503
  store ptr %.val28.val.i.i.i.i, ptr %i.h, align 8, !tbaa !7364
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #37
  store ptr %41, ptr %36, align 8, !tbaa !20504
  %i.fs = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.g, ptr %i.fs, align 8, !tbaa !3150
  %i.ft = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %i.h, ptr %i.ft, align 8, !tbaa !7367
  %i.fu = trunc nuw i8 %i.fr to i1
  %.val29.i.i.i.i = load ptr, ptr %41, align 8, !tbaa !20491 ; 20 uses
  %.val30.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !20496 ; 14 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 36 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 37 ; 2 uses
  br i1 %i.fu, label %bb.x, label %bb.eb

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
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !716, !range !392, !noundef !393
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i, label %bb.y

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %.0.in.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %i.fv, align 1, !tbaa !365, !range !392
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.fz = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 28
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !717
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.z, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.gc = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 32
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !723 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 24
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !724
  %i.gg = icmp eq i32 %i.gd, %i.gf
  br i1 %i.gg, label %bb.aa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.gh = load ptr, ptr %.val29.i.i.i.i, align 8, !tbaa !725 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.gd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gi = and i32 %i.gd, 2147483584               ; 3 uses
  %i.gj = zext nneg i32 %i.gi to i64
  %.not37.i.i.not.i.i.i.i.i.i.i.i.i265.not = icmp eq i32 %i.gi, 0
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i.i.i265.not, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph267

bb.ac:                                            ; preds = %.lr.ph267
  %indvars.iv.next.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i266, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i, %i.gj
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i.i.i, label %.lr.ph267, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !726

.lr.ph267:                                        ; preds = %bb.ab, %bb.ac
  %indvars.iv.i.i.i.i.i.i.i.i.i266 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.gk = lshr exact i64 %indvars.iv.i.i.i.i.i.i.i.i.i266, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !366
  %i.gn = icmp eq i64 %i.gm, -1
  br i1 %i.gn, label %bb.ac, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !726

.critedge.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ac, %bb.ab
  %.not38.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gd, %i.gi
  br i1 %.not38.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i
  %i.go = lshr i32 %i.gd, 6
  %i.gp = and i32 %i.gd, 63
  %i.gq = zext nneg i32 %i.gp to i64
  %notmask.i40.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.gq
  %i.gr = zext nneg i32 %i.go to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !366
  %.demorgan.i.i.i.i.i.i.i.i.i = or i64 %i.gt, %notmask.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = icmp eq i64 %.demorgan.i.i.i.i.i.i.i.i.i, -1
  %i.gv = zext i1 %i.gu to i16
  %i.gw = or disjoint i16 %i.gv, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph267, %bb.ad, %.critedge.i.i.i.i.i.i.i.i.i.i.i, %bb.aa, %bb.z, %bb.y
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i = phi i16 [ 256, %bb.z ], [ 256, %bb.y ], [ 257, %bb.aa ], [ 257, %.critedge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gw, %bb.ad ], [ 256, %.lr.ph267 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i, ptr %i.fv, align 4
  %i.gx = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.gx, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.bh

bb.ae:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 32
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !723 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 28
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !717 ; 2 uses
  %i.hc = icmp slt i32 %i.hb, %i.gz
  br i1 %i.hc, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE12ApplyContext22applyToSelectedNoThrowIZNKSF_7iterateIJNS1_12VectorReaderISC_EESK_EEEvRSG_DpRT_EUlT_E_EEvSP_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ae
  %i.hd = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.hf = sext i32 %i.hb to i64
  br label %bb.af

bb.af:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i = phi i64 [ %i.hf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !1891
  %i.hg = load ptr, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8, !tbaa !20506, !nonnull !393, !align !891
  %i.hh = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i to i32 ; 6 uses
  %i.hi = invoke noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %i.hg, i32 noundef %i.hh)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.af
  br i1 %i.hi, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.hj = load ptr, ptr %35, align 8, !tbaa !20510, !nonnull !393, !align !891
  %i.hk = invoke noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %i.hj, i32 noundef %i.hh)
          to label %.noexc5.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i

.noexc5.i.i.i.i.i.i.i.i:                          ; preds = %bb.ag
  br i1 %i.hk, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %.noexc5.i.i.i.i.i.i.i.i
  %i.hl = load ptr, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8, !tbaa !20506, !nonnull !393, !align !891 ; 4 uses
  %i.hm = load ptr, ptr %35, align 8, !tbaa !20510, !nonnull !393, !align !891 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37, !noalias !20511
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 120
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !20502, !nonnull !393, !align !891 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 58
  %i.hq = load i8, ptr %i.hp, align 2, !tbaa !792, !range !392, !noundef !393
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %.noexc8.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 59
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !793, !range !392, !noundef !393
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !794
  br label %.noexc8.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !795
  %i.hz = shl nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 2
  %i.ia = getelementptr inbounds i8, ptr %i.hy, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  br label %.noexc8.i.i.i.i.i.i.i.i

.noexc8.i.i.i.i.i.i.i.i:                          ; preds = %bb.ak, %bb.aj, %bb.ah
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ib, %bb.ak ], [ %i.hw, %bb.aj ], [ %i.hh, %bb.ah ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hl, i64 152
  %i.id = getelementptr inbounds nuw i8, ptr %i.hl, i64 136
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !20499
  %i.if = sext i32 %.0.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hl, i64 144
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !20501
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.if
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !3
  %.sroa.4.8.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %i.il to i64
  %.sroa.4.8.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %.sroa.2.8.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %i.ih to i64
  %.sroa.2.8.insert.insert.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i.i.i.i
  store ptr %i.ic, ptr %31, align 8, !noalias !20511
  store i64 %.sroa.2.8.insert.insert.i.i.i.i.i.i.i.i.i, ptr %i.hd, align 8, !noalias !20511
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37, !noalias !20514
  %i.im = getelementptr inbounds nuw i8, ptr %i.hm, i64 120
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !20502, !nonnull !393, !align !891 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 58
  %i.ip = load i8, ptr %i.io, align 2, !tbaa !792, !range !392, !noundef !393
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %.noexc11.i.i.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc8.i.i.i.i.i.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 59
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !793, !range !392, !noundef !393
  %i.it = trunc nuw i8 %i.is to i1
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %40, i64 136
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 104
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20273
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !20499
  %i.cj = getelementptr inbounds nuw i8, ptr %40, i64 144
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 120
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !20275
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !20501
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
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !20696, !nonnull !393, !align !891
  %i.ct = load ptr, ptr %41, align 8, !tbaa !20691
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
  store i32 0, ptr %38, align 8, !tbaa !20272
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
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !20270
  %i.eq = call noundef nonnull align 8 dereferenceable(144) ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ep, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #37 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %38, i64 128
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !20497
  %i.es = getelementptr inbounds nuw i8, ptr %38, i64 136
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !20273
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !20499
  %i.ev = getelementptr inbounds nuw i8, ptr %38, i64 144
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 120
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !20275
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !20501
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
  %i.fd = load ptr, ptr %i.cp, align 8, !tbaa !7369, !nonnull !393, !align !891
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !20162, !range !392, !noundef !393 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %40, i64 160
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = zext nneg i8 %i.ff to i16
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, 256
  store i16 %.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr %i.fg, align 8
  %i.fh = load ptr, ptr %i.cb, align 8, !tbaa !20502, !nonnull !393, !align !891
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !20162, !range !392, !noundef !393
  %i.fk = load i8, ptr %i.m, align 1, !tbaa !20694, !range !392, !noundef !393
  %i.fl = getelementptr inbounds nuw i8, ptr %38, i64 56
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !20162, !range !392, !noundef !393 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %38, i64 160
  %.sroa.0.0.insert.ext.i.i33.i.i.i.i = zext nneg i8 %i.fm to i16
  %.sroa.0.0.insert.insert.i.i34.i.i.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i33.i.i.i.i, 256
  store i16 %.sroa.0.0.insert.insert.i.i34.i.i.i.i, ptr %i.fn, align 8
  %i.fo = load ptr, ptr %i.en, align 8, !tbaa !20502, !nonnull !393, !align !891
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !20162, !range !392, !noundef !393
  %43 = or i8 %i.fj, %i.fk
  %44 = or i8 %43, %i.fq
  %45 = or i8 %44, %i.ff
  %i.fr = or i8 %45, %i.fm                        ; 2 uses
  store i8 %i.fr, ptr %i.m, align 1, !tbaa !20694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store ptr null, ptr %i.g, align 8, !tbaa !898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  %.val28.val.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !20697
  store ptr %.val28.val.i.i.i.i, ptr %i.h, align 8, !tbaa !7364
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #37
  store ptr %41, ptr %36, align 8, !tbaa !20698
  %i.fs = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.g, ptr %i.fs, align 8, !tbaa !3150
  %i.ft = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %i.h, ptr %i.ft, align 8, !tbaa !7367
  %i.fu = trunc nuw i8 %i.fr to i1
  %.val29.i.i.i.i = load ptr, ptr %41, align 8, !tbaa !20691 ; 20 uses
  %.val30.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !20696 ; 14 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 36 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 37 ; 2 uses
  br i1 %i.fu, label %bb.x, label %bb.eb

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
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !716, !range !392, !noundef !393
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i, label %bb.y

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %.0.in.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %i.fv, align 1, !tbaa !365, !range !392
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.fz = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 28
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !717
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.z, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.gc = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 32
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !723 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 24
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !724
  %i.gg = icmp eq i32 %i.gd, %i.gf
  br i1 %i.gg, label %bb.aa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.gh = load ptr, ptr %.val29.i.i.i.i, align 8, !tbaa !725 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.gd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gi = and i32 %i.gd, 2147483584               ; 3 uses
  %i.gj = zext nneg i32 %i.gi to i64
  %.not37.i.i.not.i.i.i.i.i.i.i.i.i265.not = icmp eq i32 %i.gi, 0
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i.i.i265.not, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph267

bb.ac:                                            ; preds = %.lr.ph267
  %indvars.iv.next.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i266, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i, %i.gj
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i.i.i, label %.lr.ph267, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !726

.lr.ph267:                                        ; preds = %bb.ab, %bb.ac
  %indvars.iv.i.i.i.i.i.i.i.i.i266 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.gk = lshr exact i64 %indvars.iv.i.i.i.i.i.i.i.i.i266, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !366
  %i.gn = icmp eq i64 %i.gm, -1
  br i1 %i.gn, label %bb.ac, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !726

.critedge.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ac, %bb.ab
  %.not38.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gd, %i.gi
  br i1 %.not38.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i
  %i.go = lshr i32 %i.gd, 6
  %i.gp = and i32 %i.gd, 63
  %i.gq = zext nneg i32 %i.gp to i64
  %notmask.i40.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.gq
  %i.gr = zext nneg i32 %i.go to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !366
  %.demorgan.i.i.i.i.i.i.i.i.i = or i64 %i.gt, %notmask.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = icmp eq i64 %.demorgan.i.i.i.i.i.i.i.i.i, -1
  %i.gv = zext i1 %i.gu to i16
  %i.gw = or disjoint i16 %i.gv, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph267, %bb.ad, %.critedge.i.i.i.i.i.i.i.i.i.i.i, %bb.aa, %bb.z, %bb.y
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i = phi i16 [ 256, %bb.z ], [ 256, %bb.y ], [ 257, %bb.aa ], [ 257, %.critedge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gw, %bb.ad ], [ 256, %.lr.ph267 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i, ptr %i.fv, align 4
  %i.gx = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.gx, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.bh

bb.ae:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 32
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !723 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i, i64 28
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !717 ; 2 uses
  %i.hc = icmp slt i32 %i.hb, %i.gz
  br i1 %i.hc, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE12ApplyContext22applyToSelectedNoThrowIZNKSF_7iterateIJNS1_12VectorReaderISC_EESK_EEEvRSG_DpRT_EUlT_E_EEvSP_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ae
  %i.hd = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.hf = sext i32 %i.hb to i64
  br label %bb.af

bb.af:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i = phi i64 [ %i.hf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !1891
  %i.hg = load ptr, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8, !tbaa !20700, !nonnull !393, !align !891
  %i.hh = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i to i32 ; 6 uses
  %i.hi = invoke noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %i.hg, i32 noundef %i.hh)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.af
  br i1 %i.hi, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.hj = load ptr, ptr %35, align 8, !tbaa !20703, !nonnull !393, !align !891
  %i.hk = invoke noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %i.hj, i32 noundef %i.hh)
          to label %.noexc5.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i

.noexc5.i.i.i.i.i.i.i.i:                          ; preds = %bb.ag
  br i1 %i.hk, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %.noexc5.i.i.i.i.i.i.i.i
  %i.hl = load ptr, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8, !tbaa !20700, !nonnull !393, !align !891 ; 4 uses
  %i.hm = load ptr, ptr %35, align 8, !tbaa !20703, !nonnull !393, !align !891 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37, !noalias !20704
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 120
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !20502, !nonnull !393, !align !891 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 58
  %i.hq = load i8, ptr %i.hp, align 2, !tbaa !792, !range !392, !noundef !393
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %.noexc8.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 59
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !793, !range !392, !noundef !393
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !794
  br label %.noexc8.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !795
  %i.hz = shl nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 2
  %i.ia = getelementptr inbounds i8, ptr %i.hy, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  br label %.noexc8.i.i.i.i.i.i.i.i

.noexc8.i.i.i.i.i.i.i.i:                          ; preds = %bb.ak, %bb.aj, %bb.ah
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ib, %bb.ak ], [ %i.hw, %bb.aj ], [ %i.hh, %bb.ah ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hl, i64 152
  %i.id = getelementptr inbounds nuw i8, ptr %i.hl, i64 136
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !20499
  %i.if = sext i32 %.0.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hl, i64 144
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !20501
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.if
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !3
  %.sroa.4.8.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %i.il to i64
  %.sroa.4.8.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %.sroa.2.8.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %i.ih to i64
  %.sroa.2.8.insert.insert.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i.i.i.i
  store ptr %i.ic, ptr %31, align 8, !noalias !20704
  store i64 %.sroa.2.8.insert.insert.i.i.i.i.i.i.i.i.i, ptr %i.hd, align 8, !noalias !20704
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37, !noalias !20707
  %i.im = getelementptr inbounds nuw i8, ptr %i.hm, i64 120
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !20502, !nonnull !393, !align !891 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 58
  %i.ip = load i8, ptr %i.io, align 2, !tbaa !792, !range !392, !noundef !393
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %.noexc11.i.i.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc8.i.i.i.i.i.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 59
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !793, !range !392, !noundef !393
  %i.it = trunc nuw i8 %i.is to i1
end_hunk_1
