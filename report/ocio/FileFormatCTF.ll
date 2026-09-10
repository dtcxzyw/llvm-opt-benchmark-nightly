Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatCTF?download=true
inline.NumInlined: 2801
inline.NumDeleted: 1168
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo:bb.a

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc117
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 384) #28, !noalias !277
  br label %.body

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit: ; preds = %.noexc117
  store ptr %i.cr, ptr %9, align 8, !tbaa !276
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !78 ; 8 uses
  store ptr %i.co, ptr %i.cu, align 8, !tbaa !78
  %.not.i.i.i.i120 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i120, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129, label %bb.al

bb.al:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.cw, align 8, !tbaa !80
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !81
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #26, !inline_history !257
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #26, !inline_history !257
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129

bb.an:                                            ; preds = %bb.al
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i.i121 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i.i121, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.di = add nsw i32 %i.cz, -1
  store i32 %i.di, ptr %i.cw, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122

bb.ap:                                            ; preds = %bb.an
  %i.dj = atomicrmw volatile add ptr %i.cw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i123 = phi i32 [ %i.cz, %bb.ao ], [ %i.dj, %bb.ap ]
  %i.dk = icmp eq i32 %.0.i.i.i.i.i.i123, 1
  br i1 %i.dk, label %bb.aq, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129, !prof !83

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122, %bb.am, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  %i.dl = load float, ptr %i.b, align 4, !tbaa !96 ; 2 uses
  %i.dm = fcmp une float %i.dl, 0.000000e+00
  %i.dn = load float, ptr %i.c, align 4           ; 2 uses
  %i.do = fcmp une float %i.dn, 1.000000e+00
  %or.cond = select i1 %i.dm, i1 true, i1 %i.do
  br i1 %or.cond, label %bb.ar, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129
  %i.dp = load ptr, ptr %9, align 8, !tbaa !99
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 200
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !102
  invoke void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef %i.dr, i32 noundef %i.bo, i32 noundef 3, float noundef %i.dl, float noundef %i.dn)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.ah

bb.as:                                            ; preds = %bb.ak
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJNS1_9HalfFlagsEibEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ag, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129, %bb.ar
  %i.dt = load ptr, ptr %9, align 8, !tbaa !99
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 176 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = invoke noundef i64 %i.dx(ptr noundef nonnull align 8 dereferenceable(48) %i.du)
          to label %bb.at unwind label %bb.bd

bb.at:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.dz = load ptr, ptr %9, align 8, !tbaa !99
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 200
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !102
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.eb, i64 noundef %i.dy, i64 noundef 1, i64 noundef 3)
          to label %bb.au unwind label %bb.be

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN16OpenColorIO_v2_525GetInputToShaperProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.311") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.av unwind label %bb.bf

bb.av:                                            ; preds = %bb.au
  %i.ec = load ptr, ptr %11, align 8, !tbaa !274
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.aw unwind label %bb.bg

bb.aw:                                            ; preds = %bb.av
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !78 ; 8 uses
  %.not.i.i130 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i130, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.ef, align 8, !tbaa !80
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !81
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !22
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #26, !inline_history !260
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !22
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #26, !inline_history !260
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i131 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i131, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132

bb.bb:                                            ; preds = %bb.az
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i133 = phi i32 [ %i.ei, %bb.ba ], [ %i.es, %bb.bb ]
  %i.et = icmp eq i32 %.0.i.i.i.i133, 1
  br i1 %i.et, label %bb.bc, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #26
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aw, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.be:                                            ; preds = %bb.at
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bf:                                            ; preds = %bb.au
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.av
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #26
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.bg ], [ %i.ew, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bh ], [ %i.ev, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.body

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ey = mul nuw nsw i32 %.sroa.speculated, %.sroa.speculated
  %i.ez = mul nuw nsw i32 %i.ey, %.sroa.speculated ; 2 uses
  %i.fa = mul nuw nsw i32 %i.ez, 3
  %i.fb = zext nneg i32 %i.fa to i64              ; 2 uses
  %i.fc = shl nuw nsw i64 %i.fb, 2                ; 2 uses
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #27
          to label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i unwind label %bb.bm ; 5 uses

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 8
  store float 0.000000e+00, ptr %i.fd, align 4, !tbaa !96
  %i.fg = getelementptr i8, ptr %i.fd, i64 4
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.fc, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.fg, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !96
  store ptr %i.fd, ptr %12, align 8, !tbaa !102
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fb ; 2 uses
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !103
  store ptr %i.fh, ptr %i.fe, align 8, !tbaa !104
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE(ptr noundef nonnull %i.fd, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 1)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.fi = load ptr, ptr %12, align 8, !tbaa !102
  %i.fj = zext nneg i32 %i.ez to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.fi, i64 noundef %i.fj, i64 noundef 1, i64 noundef 3)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  br i1 %i.bn, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN16OpenColorIO_v2_526GetShaperToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.311") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144 unwind label %bb.bo

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144: ; preds = %bb.bl
  %i.fk = load ptr, ptr %15, align 8, !tbaa !274  ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !78 ; 2 uses
  store ptr %i.fk, ptr %14, align 8, !tbaa !278
  %i.fn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit

bb.bm:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.bn:                                            ; preds = %bb.bj
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bo:                                            ; preds = %bb.bl
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.cf

bb.bp:                                            ; preds = %bb.bk
  %i.fr = load ptr, ptr %8, align 8, !tbaa !274   ; 2 uses
  store ptr %i.fr, ptr %14, align 8, !tbaa !274
  %i.fs = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !78 ; 4 uses
  %.not.i.i.i145 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i145, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 3 uses
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i146 = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i.i146, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.bq
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !82
  %i.fy = add nsw i32 %i.fx, 1
  store i32 %i.fy, ptr %i.fv, align 4, !tbaa !82
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.bq
  %i.fz = atomicrmw volatile add ptr %i.fv, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.fs, align 8, !tbaa !78 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.ga, align 8, !tbaa !80
  %i.ge = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !81
  %i.gf = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !22
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26, !inline_history !261
  %i.gi = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !22
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26, !inline_history !261
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i9.i.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i9.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i.i = phi i32 [ %i.gd, %bb.bu ], [ %i.gn, %bb.bv ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.go, label %bb.bw, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !83

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bs, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !78
  %.pre = load ptr, ptr %14, align 8, !tbaa !274
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.bp, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144
  %i.gp = phi ptr [ %i.fu, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ null, %bb.bp ], [ %i.fm, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144 ] ; 8 uses
  %i.gq = phi ptr [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ %i.fr, %bb.bp ], [ %i.fk, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144 ]
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bx unwind label %bb.ce

bb.bx:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit
  %.not.i.i147 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i147, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 4294967297
  %i.gu = trunc i64 %i.gs to i32                  ; 2 uses
  br i1 %i.gt, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.gr, align 8, !tbaa !80
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !81
  %i.gw = load ptr, ptr %i.gp, align 8, !tbaa !22
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #26, !inline_history !260
  %i.gz = load ptr, ptr %i.gp, align 8, !tbaa !22
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #26, !inline_history !260
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

bb.ca:                                            ; preds = %bb.by
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i148 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i148, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

bb.cc:                                            ; preds = %bb.ca
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i150 = phi i32 [ %i.gu, %bb.cb ], [ %i.he, %bb.cc ]
  %i.hf = icmp eq i32 %.0.i.i.i.i150, 1
  br i1 %i.hf, label %bb.cd, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, !prof !83

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #26
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151: ; preds = %bb.bx, %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  br label %bb.cu

bb.ce:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bo
  %.pn82 = phi { ptr, i32 } [ %i.hg, %bb.ce ], [ %i.fq, %bb.bo ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bn
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %bb.cf ], [ %i.fp, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.gm

bb.ch:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.not265 = icmp eq i32 %spec.store.select, 0
  br i1 %.not265, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit155, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hi = mul nsw i32 %spec.store.select, 3
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.hl = icmp slt i32 %spec.store.select, 0
  br i1 %i.hl, label %bb.cj, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i222

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #29
          to label %.noexc230 unwind label %bb.cm

.noexc230:                                        ; preds = %bb.cj
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i222: ; preds = %bb.ci
  %i.hm = shl nuw nsw i64 %i.hj, 2                ; 2 uses
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #27
          to label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i229 unwind label %bb.cm ; 5 uses

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i229: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i222
  store float 0.000000e+00, ptr %i.hn, align 4, !tbaa !96
  %24 = getelementptr i8, ptr %i.hn, i64 4
  %.idx.i.i.i.i.i31.i225 = add nsw i64 %i.hm, -4
  call void @llvm.memset.p0.i64(ptr align 4 %24, i8 0, i64 %.idx.i.i.i.i.i31.i225, i1 false), !tbaa !96
  store ptr %i.hn, ptr %16, align 8, !tbaa !102
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hj ; 2 uses
  store ptr %i.ho, ptr %i.hh, align 8, !tbaa !103
  store ptr %i.ho, ptr %i.hk, align 8, !tbaa !104
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit155

_ZNSt6vectorIfSaIfEE6resizeEm.exit155:            ; preds = %bb.ch, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i229
  %i.hp = phi ptr [ null, %bb.ch ], [ %i.hn, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i229 ]
  %i.hq = load i64, ptr %i.bd, align 8, !tbaa !28
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit155
  invoke void @_ZN16OpenColorIO_v2_514GetShaperRangeERKNS_5BakerERfS3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.hs = load ptr, ptr %16, align 8, !tbaa !102
  %i.ht = load float, ptr %i.b, align 4, !tbaa !96
  %i.hu = load float, ptr %i.c, align 4, !tbaa !96
  invoke void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef %i.hs, i32 noundef %spec.store.select, i32 noundef 3, float noundef %i.ht, float noundef %i.hu)
          to label %bb.co unwind label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i222, %bb.cj, %bb.cn, %bb.cl, %bb.ck
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.cn:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit155
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut1DEPfii(ptr noundef nonnull %i.hp, i32 noundef %spec.store.select, i32 noundef 3)
          to label %bb.co unwind label %bb.cm

bb.co:                                            ; preds = %bb.cn, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.hw = load ptr, ptr %16, align 8, !tbaa !102
  %i.hx = zext nneg i32 %spec.store.select to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull %i.hw, i64 noundef %i.hx, i64 noundef 1, i64 noundef 3)
          to label %bb.cp unwind label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.hy = load ptr, ptr %8, align 8, !tbaa !274
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.cu

bb.cr:                                            ; preds = %bb.co
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cp
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #26
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn85 = phi { ptr, i32 } [ %i.ia, %bb.cs ], [ %i.hz, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.gk

bb.cu:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, %bb.cq
  %i.ib = phi i1 [ false, %bb.cq ], [ %i.bn, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %18)
          to label %bb.cv unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  br i1 %i.bh, label %bb.dm, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ic = load float, ptr %i.b, align 4, !tbaa !96 ; 2 uses
  %i.id = fcmp une float %i.ic, 0.000000e+00
  %i.ie = load float, ptr %i.c, align 4           ; 2 uses
  %i.if = fcmp une float %i.ie, 1.000000e+00
  %or.cond6 = select i1 %i.id, i1 true, i1 %i.if
  br i1 %or.cond6, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.ig = fpext float %i.ic to double
  %i.ih = fpext float %i.ie to double
  invoke void @_ZN16OpenColorIO_v2_513CreateRangeOpERNS_10OpRcPtrVecEddddNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %18, double noundef %i.ig, double noundef %i.ih, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 0)
          to label %bb.da unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cu
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.cz:                                            ; preds = %bb.dp, %bb.do, %bb.cx
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.da:                                            ; preds = %bb.cx, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.ik = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #27
          to label %.noexc157 unwind label %bb.dk ; 7 uses

.noexc157:                                        ; preds = %bb.da
  %i.il = sext i32 %spec.store.select to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i32 1, ptr %i.im, align 8, !tbaa !80, !noalias !279
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 1, ptr %i.in, align 4, !tbaa !81, !noalias !279
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ik, align 8, !tbaa !22, !noalias !279
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.io, i64 noundef %i.il)
          to label %bb.db unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i156, !noalias !279

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i156: ; preds = %.noexc157
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef 384) #28, !noalias !279
  br label %.body158

bb.db:                                            ; preds = %.noexc157
  %i.iq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store ptr %i.ik, ptr %i.iq, align 8, !tbaa !78, !alias.scope !279
  store ptr %i.io, ptr %19, align 8, !tbaa !276, !alias.scope !279
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 216
  %i.is = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.dc unwind label %bb.dl     ; 0 uses

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN16OpenColorIO_v2_513CreateLut1DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut1DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 0)
          to label %bb.dd unwind label %bb.dl

bb.dd:                                            ; preds = %bb.dc
  %i.it = load ptr, ptr %i.iq, align 8, !tbaa !78 ; 8 uses
  %.not.i.i160 = icmp eq ptr %i.it, null
  br i1 %.not.i.i160, label %bb.dq, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 4 uses
  %i.iv = load atomic i64, ptr %i.iu acquire, align 8 ; 2 uses
  %i.iw = icmp eq i64 %i.iv, 4294967297
  %i.ix = trunc i64 %i.iv to i32                  ; 2 uses
  br i1 %i.iw, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.iu, align 8, !tbaa !80
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  store i32 0, ptr %i.iy, align 4, !tbaa !81
  %i.iz = load ptr, ptr %i.it, align 8, !tbaa !22
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.it) #26, !inline_history !264
  %i.jc = load ptr, ptr %i.it, align 8, !tbaa !22
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.it) #26, !inline_history !264
  br label %bb.dq

bb.dg:                                            ; preds = %bb.de
  %i.jf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i161 = icmp eq i8 %i.jf, 0
  br i1 %.not.i.i.i161, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.jg = add nsw i32 %i.ix, -1
  store i32 %i.jg, ptr %i.iu, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i162

bb.di:                                            ; preds = %bb.dg
  %i.jh = atomicrmw volatile add ptr %i.iu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i162

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i162: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i163 = phi i32 [ %i.ix, %bb.dh ], [ %i.jh, %bb.di ]
  %i.ji = icmp eq i32 %.0.i.i.i.i163, 1
  br i1 %i.ji, label %bb.dj, label %bb.dq, !prof !83

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i162
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.it) #26
  br label %bb.dq

bb.dk:                                            ; preds = %bb.da
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.body158

bb.dl:                                            ; preds = %bb.dc, %bb.db
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #26
  br label %.body158

.body158:                                         ; preds = %bb.dk, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i156, %bb.dl
  %.pn87 = phi { ptr, i32 } [ %i.jk, %bb.dl ], [ %i.jj, %bb.dk ], [ %i.ip, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.gi

bb.dm:                                            ; preds = %bb.cv
  br i1 %i.ib, label %bb.dn, label %bb.dr
end_hunk_0
