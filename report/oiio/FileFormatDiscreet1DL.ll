inline.NumInlined: 455
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.noexc, %.noexc49, %.loopexit.i, %.noexc57
  %.568.i.ph = phi i32 [ 3, %.noexc49 ], [ 4, %.noexc57 ], [ %.014.i.i, %.loopexit.i ], [ 1, %.noexc ], [ %.568.i.ph.ph, %.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.cs

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, %bb.cp
  %.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ], [ %i.om, %bb.cp ] ; 9 uses
  %.568.i = phi i32 [ %.265.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ], [ %.467.lcssa280.i, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.not = icmp eq i32 %.568.i, 0
  br i1 %.not, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit, label %bb.cs

bb.cs:                                            ; preds = %.thread, %bb.cr
  %.568.i130 = phi i32 [ %.568.i.ph, %.thread ], [ %.568.i, %bb.cr ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.ct unwind label %bb.da

bb.ct:                                            ; preds = %bb.cs
  %i.on = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.3, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ct
  %i.oo = load ptr, ptr %3, align 8, !tbaa !26
  %i.op = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.oo)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.op, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.cu
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.5, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.os = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.6, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %switch.tableidx = add i32 %.568.i130, -1       ; 2 uses
  %i.ot = icmp ult i32 %switch.tableidx, 4
  br i1 %i.ot, label %switch.lookup, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit

switch.lookup:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %i.ou = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE, i64 %i.ou
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.21, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 ]
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %.0.i)
          to label %bb.cv unwind label %bb.db     ; 0 uses

bb.cv:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit
  %i.ow = icmp eq i32 %.568.i130, 4
  br i1 %i.ow, label %bb.cw, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71

bb.cw:                                            ; preds = %bb.cv
  %i.ox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.7, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %bb.cw
  %i.oy = load i32, ptr %i.o, align 4, !tbaa !3
  %i.oz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef %i.oy)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.pa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, ptr noundef nonnull @.str.8, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68: ; preds = %bb.cx
  %i.pb = load ptr, ptr %13, align 8, !tbaa !26
  %i.pc = load i64, ptr %i.q, align 8, !tbaa !13
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.pb, i64 noundef %i.pc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.db

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.pe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %bb.db ; 0 uses

bb.cy:                                            ; preds = %bb.a
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cz:                                            ; preds = %bb.b
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %.body

.loopexit:                                        ; preds = %bb.am, %.noexc51, %_ZNSi7getlineEPcl.exit.i.i, %.noexc.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ck, %bb.j, %bb.ak, %bb.bk, %bb.cl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.da:                                            ; preds = %bb.cs
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.db:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68, %bb.cx, %bb.cw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %bb.cu, %bb.ct, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.cv
  %i.pj = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.dc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.dc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.pk = load ptr, ptr %19, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pj, ptr noundef %i.pk)
          to label %bb.dd unwind label %bb.de

bb.dd:                                            ; preds = %bb.dc
  invoke void @__cxa_throw(ptr nonnull %i.pj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #29
          to label %bb.ee unwind label %bb.de

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.pl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.df

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.035 = phi i1 [ false, %bb.dd ], [ true, %bb.dc ] ; 2 uses
  %i.pm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pn = load ptr, ptr %19, align 8, !tbaa !26   ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.de
  %i.pq = load i64, ptr %i.po, align 8, !tbaa !16
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pr) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br i1 %.035, label %bb.df, label %bb.dg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br i1 %.035, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn39133 = phi { ptr, i32 } [ %i.pl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @__cxa_free_exception(ptr %i.pj) #26
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.df, %bb.db
  %.pn39.pn = phi { ptr, i32 } [ %.pn39133, %bb.df ], [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.pi, %bb.db ], [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18) #26
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.da
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %bb.dg ], [ %i.ph, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit: ; preds = %bb.cr
  %i.ps = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !85
  %switch.selectcmp135 = icmp eq i32 %i.pt, -16
  %switch.select136 = zext i1 %switch.selectcmp135 to i32
  %i.pu = getelementptr inbounds nuw i8, ptr %.1, i64 12 ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !84
  %switch.tableidx318 = add i32 %i.pv, 32         ; 2 uses
  %i.pw = icmp ult i32 %switch.tableidx318, 49
  br i1 %i.pw, label %switch.lookup319, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77

switch.lookup319:                                 ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit
  %i.px = zext nneg i32 %switch.tableidx318 to i64
  %switch.gep320 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE.12, i64 %i.px
  %switch.load321 = load i8, ptr %switch.gep320, align 1
  %switch.ext = zext i8 %switch.load321 to i32
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit, %switch.lookup319
  %.0.i76 = phi i32 [ %switch.ext, %switch.lookup319 ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit ] ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !86 ; 6 uses
  %i.qa = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.di unwind label %bb.ec     ; 8 uses

bb.di:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %i.qa, align 8, !tbaa !7
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qb, i8 0, i64 16, i1 false)
  %i.qc = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #25
          to label %.noexc.i78 unwind label %bb.dr ; 6 uses

.noexc.i78:                                       ; preds = %bb.di
  %i.qd = sext i32 %i.pz to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i32 1, ptr %i.qe, align 8, !tbaa !87, !noalias !89
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 12
  store i32 1, ptr %i.qf, align 4, !tbaa !92, !noalias !89
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.qc, align 8, !tbaa !7, !noalias !89
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qc, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1ENS0_9HalfFlagsEmb(ptr noundef nonnull align 8 dereferenceable(364) %i.qg, i32 noundef %switch.select136, i64 noundef range(i64 -2147483648, 2147483648) %i.qd, i1 noundef zeroext false)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !89

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc.i78
  %i.qh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qc, i64 noundef 384) #27, !noalias !89
  br label %.body.i

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i: ; preds = %.noexc.i78
  store ptr %i.qg, ptr %i.qb, align 8, !tbaa !93
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qa, i64 16 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !95 ; 8 uses
  store ptr %i.qc, ptr %i.qi, align 8, !tbaa !95
  %.not.i.i.i.i.i79 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i.i.i79, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.dj

bb.dj:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8 ; 4 uses
  %i.ql = load atomic i64, ptr %i.qk acquire, align 8 ; 2 uses
  %i.qm = icmp eq i64 %i.ql, 4294967297
  %i.qn = trunc i64 %i.ql to i32                  ; 2 uses
  br i1 %i.qm, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.qk, align 8, !tbaa !87
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 12
  store i32 0, ptr %i.qo, align 4, !tbaa !92
  %i.qp = load ptr, ptr %i.qj, align 8, !tbaa !7
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #26, !inline_history !98
  %i.qs = load ptr, ptr %i.qj, align 8, !tbaa !7
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #26, !inline_history !98
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.dl:                                            ; preds = %bb.dj
  %i.qv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i.i = icmp eq i8 %i.qv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qw = add nsw i32 %i.qn, -1
  store i32 %i.qw, ptr %i.qk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.qx = atomicrmw volatile add ptr %i.qk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dn, %bb.dm
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.qn, %bb.dm ], [ %i.qx, %bb.dn ]
  %i.qy = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.qy, label %bb.do, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !99

bb.do:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.do, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dk, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i
  %i.qz = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  br i1 %i.qz, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %i.ra = load ptr, ptr %i.qb, align 8, !tbaa !100
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.ra, i32 noundef %4)
          to label %bb.dt unwind label %bb.ds

bb.dr:                                            ; preds = %bb.di
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ds:                                            ; preds = %bb.dq, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ds, %bb.dr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %i.rc, %bb.ds ], [ %i.rb, %bb.dr ], [ %i.qh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.qb) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.qa, i64 noundef 24) #27
  br label %.body

bb.dt:                                            ; preds = %bb.dq, %bb.dp
  %i.rd = load ptr, ptr %i.qb, align 8, !tbaa !100
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 360
  store i32 %.0.i76, ptr %i.re, align 8, !tbaa !102
  %i.rf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.dy unwind label %bb.du     ; 6 uses

bb.du:                                            ; preds = %bb.dt
  %i.rg = landingpad { ptr, i32 }
          catch ptr null
  %i.rh = extractvalue { ptr, i32 } %i.rg, 0
  %i.ri = call ptr @__cxa_begin_catch(ptr %i.rh) #26 ; 0 uses
  %i.rj = load ptr, ptr %i.qa, align 8, !tbaa !7
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8
  call void %i.rl(ptr noundef nonnull align 8 dereferenceable(24) %i.qa) #26, !inline_history !132
  invoke void @__cxa_rethrow() #29
          to label %bb.dx unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.rm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.rn = landingpad { ptr, i32 }
          catch ptr null
  %i.ro = extractvalue { ptr, i32 } %i.rn, 0
  call void @__clang_call_terminate(ptr %i.ro) #31
  unreachable

bb.dx:                                            ; preds = %bb.du
  unreachable

bb.dy:                                            ; preds = %bb.dt
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store i32 1, ptr %i.rp, align 8, !tbaa !87
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rf, i64 12
  store i32 1, ptr %i.rq, align 4, !tbaa !92
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.rf, align 8, !tbaa !7
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store ptr %i.qa, ptr %i.rr, align 8, !tbaa !133
  %i.rs = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %.0.i76)
          to label %bb.dz unwind label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  %i.rt = fptrunc double %i.rs to float           ; 3 uses
  %i.ru = load i32, ptr %.1, align 8, !tbaa !71   ; 3 uses
  %i.rv = icmp sgt i32 %i.pz, 0
  br i1 %i.rv, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.dz
  %i.rw = add nsw i32 %i.ru, -1                   ; 3 uses
  %i.rx = load ptr, ptr %i.qb, align 8, !tbaa !100
  %i.ry = load i32, ptr %i.pu, align 4, !tbaa !84
  %i.rz = icmp eq i32 %i.ry, -16
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 200
  %i.sb = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !31 ; 7 uses
  %i.sd = load ptr, ptr %i.sa, align 8, !tbaa !136 ; 12 uses
  %.sroa.speculated.us.us = call i32 @llvm.smin.i32(i32 %i.rw, i32 0)
  %i.se = sext i32 %.sroa.speculated.us.us to i64
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.se
  %wide.trip.count188 = zext nneg i32 %i.pz to i64 ; 5 uses
  %.pre192 = load ptr, ptr %i.sf, align 8, !tbaa !35 ; 5 uses
  %.sroa.speculated.us.us.1 = call i32 @llvm.smin.i32(i32 %i.rw, i32 1)
  %i.sg = sext i32 %.sroa.speculated.us.us.1 to i64
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.sg
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !35 ; 5 uses
  %.sroa.speculated.us.us.2 = call i32 @llvm.smin.i32(i32 %i.rw, i32 2)
  %i.sj = sext i32 %.sroa.speculated.us.us.2 to i64
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.sj
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !35 ; 5 uses
  br i1 %i.rz, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %xtraiter = and i64 %wide.trip.count188, 1
  %20 = icmp eq i32 %i.pz, 1
  br i1 %20, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter = and i64 %wide.trip.count188, 2147483646
  br label %.preheader.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %min.iters.check305 = icmp ult i32 %i.pz, 4
  br i1 %min.iters.check305, label %.preheader.preheader322, label %vector.ph306

vector.ph306:                                     ; preds = %.preheader.preheader
  %n.vec308 = and i64 %wide.trip.count188, 2147483644 ; 4 uses
  %21 = mul nuw nsw i64 %n.vec308, 3
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.rt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph306
  %index310 = phi i64 [ 0, %vector.ph306 ], [ %index.next314, %vector.body309 ] ; 5 uses
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %index310
  %wide.load311 = load <4 x i16>, ptr %i.sm, align 2, !tbaa !37
  %i.sn = uitofp <4 x i16> %wide.load311 to <4 x float>
  %i.so = fdiv <4 x float> %i.sn, %broadcast.splat
  %.idx = mul i64 %index310, 12
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sd, i64 %.idx
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %index310
  %wide.load312 = load <4 x i16>, ptr %i.sq, align 2, !tbaa !37
  %i.sr = uitofp <4 x i16> %wide.load312 to <4 x float>
  %i.ss = fdiv <4 x float> %i.sr, %broadcast.splat
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index310
  %wide.load313 = load <4 x i16>, ptr %i.st, align 2, !tbaa !37
  %i.su = uitofp <4 x i16> %wide.load313 to <4 x float>
  %i.sv = fdiv <4 x float> %i.su, %broadcast.splat
  %i.sw = shufflevector <4 x float> %i.so, <4 x float> %i.ss, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sx = shufflevector <4 x float> %i.sv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.sw, <8 x float> %i.sx, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.sp, align 4, !tbaa !137
  %index.next314 = add nuw i64 %index310, 4       ; 2 uses
  %i.sy = icmp eq i64 %index.next314, %n.vec308
  br i1 %i.sy, label %middle.block315, label %vector.body309, !llvm.loop !139

middle.block315:                                  ; preds = %vector.body309
  %cmp.n316 = icmp eq i64 %n.vec308, %wide.trip.count188
  br i1 %cmp.n316, label %.preheader13.i.i, label %.preheader.preheader322

.preheader.preheader322:                          ; preds = %.preheader.preheader, %middle.block315
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec308, %middle.block315 ]
  %.026161.ph = phi i64 [ 0, %.preheader.preheader ], [ %21, %middle.block315 ]
  %i.sz = insertelement <2 x float> poison, float %i.rt, i64 0
  %i.ta = shufflevector <2 x float> %i.sz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %indvars.iv185 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %indvars.iv.next186.1, %.preheader.us ] ; 5 uses
  %.026161.us = phi i64 [ 0, %.preheader.us.preheader.new ], [ %indvars.iv.next182.2.1, %.preheader.us ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter.next.1, %.preheader.us ]
  %22 = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %23 = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %indvars.iv185
  %24 = load i16, ptr %23, align 2, !tbaa !37
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !16
  %28 = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161.us
  store float %27, ptr %28, align 4, !tbaa !137
  %29 = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %indvars.iv185
  %30 = load i16, ptr %29, align 2, !tbaa !37
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !16
  %34 = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161.us
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 4
  store float %33, ptr %35, align 4, !tbaa !137
  %36 = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %indvars.iv185
  %37 = load i16, ptr %36, align 2, !tbaa !37
  %38 = zext i16 %37 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %38
  %40 = load float, ptr %39, align 4, !tbaa !16
  %41 = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161.us
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store float %40, ptr %42, align 4, !tbaa !137
  %indvars.iv.next182.2 = add nuw nsw i64 %.026161.us, 3 ; 3 uses
  %indvars.iv.next186 = or disjoint i64 %indvars.iv185, 1 ; 3 uses
  %i.tb = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %indvars.iv.next186
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !37
  %i.te = zext i16 %i.td to i64
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.te
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !16
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next182.2
  store float %i.tg, ptr %i.th, align 4, !tbaa !137
  %i.ti = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %indvars.iv.next186
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !37
  %i.tk = zext i16 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.tk
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !16
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next182.2
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  store float %i.tm, ptr %i.to, align 4, !tbaa !137
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %indvars.iv.next186
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !37
  %i.tr = zext i16 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.tr
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !16
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next182.2
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  store float %i.tt, ptr %i.tv, align 4, !tbaa !137
  %indvars.iv.next182.2.1 = add nuw nsw i64 %.026161.us, 6 ; 2 uses
  %indvars.iv.next186.1 = add nuw nsw i64 %indvars.iv185, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader13.i.i.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !140

.preheader:                                       ; preds = %.preheader.preheader322, %.preheader
  %indvars.iv.a = phi i64 [ %indvars.iv.next179, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader322 ] ; 4 uses
  %.026161 = phi i64 [ %indvars.iv.next.2, %.preheader ], [ %.026161.ph, %.preheader.preheader322 ] ; 3 uses
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %indvars.iv.a
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !37
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %indvars.iv.a
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !37
  %i.ub = insertelement <2 x i16> poison, i16 %i.tx, i64 0
  %i.uc = insertelement <2 x i16> %i.ub, i16 %i.ua, i64 1
  %i.ud = uitofp <2 x i16> %i.uc to <2 x float>
  %i.ue = fdiv <2 x float> %i.ud, %i.ta
  store <2 x float> %i.ue, ptr %i.ty, align 4, !tbaa !137
  %i.uf = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %indvars.iv.a
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !37
  %i.uh = uitofp i16 %i.ug to float
  %i.ui = fdiv float %i.uh, %i.rt
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  store float %i.ui, ptr %i.uk, align 4, !tbaa !137
  %indvars.iv.next.2 = add nuw nsw i64 %.026161, 3
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count188
  br i1 %exitcond.not, label %.preheader13.i.i, label %.preheader, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.dz
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %.pre193 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 2 uses
  %.not.i.i85 = icmp eq ptr %.pre193, null
  br i1 %.not.i.i85, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.preheader13.i.i

.preheader13.i.i.loopexit.unr-lcssa:              ; preds = %.preheader.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader13.i.i, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %.preheader13.i.i.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv185.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next186.1, %.preheader13.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.026161.us.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next182.2.1, %.preheader13.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod338 = trunc i32 %i.pz to i1
  call void @llvm.assume(i1 %lcmp.mod338)
  %43 = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %44 = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %indvars.iv185.epil.init
  %45 = load i16, ptr %44, align 2, !tbaa !37
  %46 = zext i16 %45 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !16
  %49 = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161.us.epil.init
  store float %48, ptr %49, align 4, !tbaa !137
  %50 = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %indvars.iv185.epil.init
  %51 = load i16, ptr %50, align 2, !tbaa !37
  %52 = zext i16 %51 to i64
  %53 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %52
  %54 = load float, ptr %53, align 4, !tbaa !16
  %55 = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161.us.epil.init
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 4
  store float %54, ptr %56, align 4, !tbaa !137
  %57 = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %indvars.iv185.epil.init
  %58 = load i16, ptr %57, align 2, !tbaa !37
  %59 = zext i16 %58 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !16
  %62 = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.026161.us.epil.init
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 8
  store float %61, ptr %63, align 4, !tbaa !137
  br label %.preheader13.i.i

.preheader13.i.i:                                 ; preds = %.preheader, %.preheader.us.epil.preheader, %.preheader13.i.i.loopexit.unr-lcssa, %middle.block315, %._crit_edge
  %64 = phi ptr [ %.pre193, %._crit_edge ], [ %i.sc, %middle.block315 ], [ %i.sc, %.preheader.us.epil.preheader ], [ %i.sc, %.preheader13.i.i.loopexit.unr-lcssa ], [ %i.sc, %.preheader ]
  %i.ul = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.um = icmp sgt i32 %i.ru, 0
  br i1 %i.um, label %.lr.ph18.i.i, label %._crit_edge19.i.i

._crit_edge19.loopexit.i.i:                       ; preds = %bb.eb
  %.pre25.i.i = load ptr, ptr %i.ul, align 8, !tbaa !31
  br label %._crit_edge19.i.i

._crit_edge19.i.i:                                ; preds = %._crit_edge19.loopexit.i.i, %.preheader13.i.i
  %i.un = phi ptr [ %.pre25.i.i, %._crit_edge19.loopexit.i.i ], [ %64, %.preheader13.i.i ]
  call void @free(ptr noundef %i.un) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.lr.ph18.i.i:                                     ; preds = %.preheader13.i.i, %bb.eb
  %i.uo = phi i32 [ %i.ux, %bb.eb ], [ %i.ru, %.preheader13.i.i ] ; 2 uses
  %indvars.iv22.i.i = phi i64 [ %indvars.iv.next23.i.i, %bb.eb ], [ 0, %.preheader13.i.i ] ; 6 uses
  %i.up = load ptr, ptr %i.ul, align 8, !tbaa !31 ; 2 uses
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.up, i64 %indvars.iv22.i.i
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !35 ; 3 uses
  %.not12.i.i = icmp eq ptr %i.ur, null
  br i1 %.not12.i.i, label %bb.eb, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph18.i.i
  %.not20.i.i = icmp eq i64 %indvars.iv22.i.i, 0
  br i1 %.not20.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.preheader.i.i, %bb.ea
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ea ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.up, i64 %indvars.iv.i.i
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !35
  %i.uu = icmp eq ptr %i.ut, %i.ur
  br i1 %i.uu, label %._crit_edge.i.i, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i.i86
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %indvars.iv22.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i86, !llvm.loop !72

._crit_edge.i.i:                                  ; preds = %bb.ea, %.lr.ph.i.i86
  %.0.lcssa.ph.in.i.i = phi i64 [ %indvars.iv22.i.i, %bb.ea ], [ %indvars.iv.i.i, %.lr.ph.i.i86 ]
  %i.uv = and i64 %.0.lcssa.ph.in.i.i, 4294967295
  %i.uw = icmp eq i64 %i.uv, %indvars.iv22.i.i
  br i1 %i.uw, label %._crit_edge.thread.i.i, label %bb.eb

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.preheader.i.i
  call void @free(ptr noundef %i.ur) #26
  %.pre.i.i = load i32, ptr %.1, align 8, !tbaa !71
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.lr.ph18.i.i
  %i.ux = phi i32 [ %i.uo, %._crit_edge.i.i ], [ %.pre.i.i, %._crit_edge.thread.i.i ], [ %i.uo, %.lr.ph18.i.i ] ; 2 uses
  %indvars.iv.next23.i.i = add nuw nsw i64 %indvars.iv22.i.i, 1 ; 2 uses
  %i.uy = sext i32 %i.ux to i64
  %i.uz = icmp slt i64 %indvars.iv.next23.i.i, %i.uy
  br i1 %i.uz, label %.lr.ph18.i.i, label %._crit_edge19.loopexit.i.i, !llvm.loop !73

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge19.i.i, %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %.1, i64 noundef 24) #27
  store ptr %i.qa, ptr %0, align 8, !tbaa !142
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rf, ptr %i.va, align 8, !tbaa !95
  %i.vb = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.vc = icmp eq ptr %i.vb, %i.v
  br i1 %i.vc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.vd = load i64, ptr %i.v, align 8, !tbaa !16
  %i.ve = add i64 %i.vd, 1
  call void @_ZdlPvm(ptr noundef %i.vb, i64 noundef %i.ve) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.vf = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.vg = icmp eq ptr %i.vf, %i.t
  br i1 %i.vg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.vh = load i64, ptr %i.t, align 8, !tbaa !16
  %i.vi = add i64 %i.vh, 1
  call void @_ZdlPvm(ptr noundef %i.vf, i64 noundef %i.vi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.vj = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.r
  br i1 %i.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.vl = load i64, ptr %i.r, align 8, !tbaa !16
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.vn = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.p
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.vp = load i64, ptr %i.p, align 8, !tbaa !16
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  ret void

bb.ec:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ed:                                            ; preds = %bb.dy
  %i.vs = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.rf) #26
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body.i, %bb.ed, %bb.dv, %bb.ec, %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i, %bb.dh, %bb.cz, %bb.cy
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pf, %bb.cy ], [ %i.pg, %bb.cz ], [ %.pn39.pn.pn, %bb.dh ], [ %.pn81.pn.i, %bb.cq ], [ %i.rm, %bb.dv ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i ], [ %i.vs, %bb.ed ], [ %.pn.i, %.body.i ], [ %i.vr, %bb.ec ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.vt = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.v
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %.body
  %i.vv = load i64, ptr %i.v, align 8, !tbaa !16
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.vx = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.t
  br i1 %i.vy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.vz = load i64, ptr %i.t, align 8, !tbaa !16
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.wb = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.r
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.wd = load i64, ptr %i.r, align 8, !tbaa !16
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.wf = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.wg = icmp eq ptr %i.wf, %i.p
  br i1 %i.wg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.wh = load i64, ptr %i.p, align 8, !tbaa !16
  %i.wi = add i64 %i.wh, 1
  call void @_ZdlPvm(ptr noundef %i.wf, i64 noundef %i.wi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn

bb.ee:                                            ; preds = %bb.dd
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_510FileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZNK16OpenColorIO_v2_510FileFormat5writeERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEERKNS_14GroupTransformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 1 captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %9 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  %.val = load ptr, ptr %4, align 8, !tbaa !142   ; 2 uses
  %i.b = getelementptr i8, ptr %4, i64 8
  %.val27 = load ptr, ptr %i.b, align 8           ; 13 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %.val, ptr nonnull @_ZTIN16OpenColorIO_v2_510CachedFileE, ptr nonnull @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 0) #26, !noalias !145 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.not.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %.val27, null     ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.val27, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !145
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD0Ev:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_510CachedFile11getCDLGroupEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.28") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.24)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #26
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(364) %i.a) #26, !inline_history !175
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !176  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1ENS0_9HalfFlagsEmb(ptr noundef nonnull align 8 dereferenceable(364), i32 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !178
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !178
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #19 align 2 {
bb.a:
  ret ptr null
}

declare noundef i32 @_ZN16OpenColorIO_v2_526CombineTransformDirectionsENS_18TransformDirectionES0_(i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK16OpenColorIO_v2_513FileTransform16getInterpolationEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_511HandleLUT1DERKSt10shared_ptrINS_11Lut1DOpDataEENS_13InterpolationERb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.7") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_530LogWarningInterpolationNotUsedENS_13InterpolationERKNS_13FileTransformE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_513CreateLut1DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut1DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { noreturn }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !15, i64 8, !5, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !19, i64 64}
!18 = !{!"_ZTSN16OpenColorIO_v2_510FormatInfoE", !14, i64 0, !14, i64 32, !19, i64 64, !20, i64 68}
!19 = !{!"_ZTSN16OpenColorIO_v2_521FormatCapabilityFlagsE", !5, i64 0}
!20 = !{!"_ZTSN16OpenColorIO_v2_515FormatBakeFlagsE", !5, i64 0}
!21 = !{!18, !20, i64 68}
!22 = !{!23, !24, i64 8}
!23 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!24 = !{!"p1 _ZTSN16OpenColorIO_v2_510FormatInfoE", !12, i64 0}
!25 = !{!23, !24, i64 16}
!26 = !{!14, !11, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructE", !12, i64 0}
!29 = !{!15, !15, i64 0}
!30 = !{!11, !11, i64 0}
!31 = !{!32, !33, i64 16}
!32 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructE", !4, i64 0, !4, i64 4, !5, i64 8, !5, i64 12, !33, i64 16}
!33 = !{!"p2 short", !34, i64 0}
!34 = !{!"any p2 pointer", !12, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 short", !12, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"short", !5, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!41 = distinct !{!41, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!42 = !{!43, !45, i64 32}
!43 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !44, i64 24, !45, i64 28, !45, i64 32, !46, i64 40, !47, i64 48, !5, i64 64, !4, i64 192, !48, i64 200, !49, i64 208}
!44 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!45 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!46 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!47 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !15, i64 8}
!48 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!49 = !{!"_ZTSSt6locale", !50, i64 0}
!50 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!51 = !{!52, !56, i64 240}
!52 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !43, i64 0, !53, i64 216, !5, i64 224, !54, i64 225, !55, i64 232, !56, i64 240, !57, i64 248, !58, i64 256}
!53 = !{!"p1 _ZTSSo", !12, i64 0}
!54 = !{!"bool", !5, i64 0}
!55 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 0}
!56 = !{!"p1 _ZTSSt5ctypeIcE", !12, i64 0}
!57 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!58 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!59 = !{!60, !5, i64 56}
!60 = !{!"_ZTSSt5ctypeIcE", !61, i64 0, !62, i64 16, !54, i64 24, !63, i64 32, !63, i64 40, !36, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!61 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!62 = !{!"p1 _ZTS15__locale_struct", !12, i64 0}
!63 = !{!"p1 int", !12, i64 0}
!64 = distinct !{null}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !66}
!70 = distinct !{!70, !66}
!71 = !{!32, !4, i64 0}
!72 = distinct !{!72, !66}
!73 = distinct !{!73, !66}
!74 = distinct !{!74, !66}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!77 = distinct !{!77, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!78 = distinct !{!78, !66, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!"branch_weights", i32 8, i32 24}
!82 = distinct !{!82, !66, !79, !80}
!83 = distinct !{!83, !66, !80, !79}
!84 = !{!32, !5, i64 12}
!85 = !{!32, !5, i64 8}
!86 = !{!32, !4, i64 4}
!87 = !{!88, !4, i64 8}
!88 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_: argument 0"}
!91 = distinct !{!91, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_"}
!92 = !{!88, !4, i64 12}
!93 = !{!94, !94, i64 0}
!94 = !{!"p1 _ZTSN16OpenColorIO_v2_511Lut1DOpDataE", !12, i64 0}
!95 = !{!96, !97, i64 0}
!96 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !97, i64 0}
!97 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!98 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!99 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!100 = !{!101, !94, i64 0}
!101 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0, !96, i64 8}
!102 = !{!103, !131, i64 360}
!103 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpDataE", !104, i64 0, !119, i64 168, !120, i64 176, !128, i64 224, !129, i64 228, !130, i64 232, !5, i64 240, !131, i64 360}
!104 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !105, i64 8, !107, i64 48}
!105 = !{!"_ZTSSt5mutex", !106, i64 0}
!106 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!107 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !108, i64 0, !14, i64 8, !14, i64 40, !109, i64 72, !114, i64 96}
!108 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!109 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !110, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !111, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!113 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !12, i64 0}
!114 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !115, i64 0}
!115 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !116, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !117, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!118 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !12, i64 0}
!119 = !{!"_ZTSN16OpenColorIO_v2_513InterpolationE", !5, i64 0}
!120 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpData13Lut3by1DArrayE", !121, i64 0}
!121 = !{!"_ZTSN16OpenColorIO_v2_56ArrayTIfEE", !122, i64 0, !15, i64 8, !15, i64 16, !123, i64 24}
!122 = !{!"_ZTSN16OpenColorIO_v2_59ArrayBaseE"}
!123 = !{!"_ZTSSt6vectorIfSaIfEE", !124, i64 0}
!124 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !125, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !126, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!127 = !{!"p1 float", !12, i64 0}
!128 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpData9HalfFlagsE", !5, i64 0}
!129 = !{!"_ZTSN16OpenColorIO_v2_514Lut1DHueAdjustE", !5, i64 0}
!130 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !5, i64 0}
!131 = !{!"_ZTSN16OpenColorIO_v2_58BitDepthE", !5, i64 0}
!132 = distinct !{null, null, null, null}
!133 = !{!134, !135, i64 16}
!134 = !{!"_ZTSSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE", !88, i64 0, !135, i64 16}
!135 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE", !12, i64 0}
!136 = !{!126, !127, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"float", !5, i64 0}
!139 = distinct !{!139, !66, !79, !80}
!140 = distinct !{!140, !66}
!141 = distinct !{!141, !66, !80, !79}
!142 = !{!143, !144, i64 0}
!143 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_510CachedFileELN9__gnu_cxx12_Lock_policyE2EE", !144, i64 0, !96, i64 8}
!144 = !{!"p1 _ZTSN16OpenColorIO_v2_510CachedFileE", !12, i64 0}
!145 = !{!146, !148}
!146 = distinct !{!146, !147, !"_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileENS0_10CachedFileEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!147 = distinct !{!147, !"_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileENS0_10CachedFileEESt10shared_ptrIT_ERKS4_IT0_E"}
!148 = distinct !{!148, !149, !"_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!149 = distinct !{!149, !"_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E"}
!150 = !{!54, !54, i64 0}
!151 = !{i8 0, i8 2}
!152 = !{}
!153 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!154 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!155 = !{!23, !24, i64 0}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!158 = distinct !{!158, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!161 = !{!157, !160}
!162 = distinct !{!162, !66}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!165 = distinct !{!165, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!168 = !{!164, !167}
!169 = distinct !{null, null}
!170 = distinct !{null, null, null}
!171 = distinct !{!171, !66}
!172 = distinct !{!172, !66}
!173 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD2Ev, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!174 = !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD2Ev}
!175 = distinct !{null}
!176 = !{!177, !11, i64 8}
!177 = !{!"_ZTSSt9type_info", !11, i64 8}
!178 = distinct !{null}
end_hunk_1
