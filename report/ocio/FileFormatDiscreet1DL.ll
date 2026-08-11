inline.NumInlined: 455
inline.NumDeleted: 212
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.z, %.loopexit.i, %.noexc49, %.noexc, %.noexc58
  %.578.i.ph = phi i32 [ 4, %.noexc58 ], [ %.0.i125.i, %.loopexit.i ], [ 4, %bb.z ], [ 1, %.noexc ], [ 3, %.noexc49 ], [ %.578.i.ph.ph, %.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.dc

bb.db:                                            ; preds = %bb.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i
  %.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i ], [ %i.pd, %bb.cy ] ; 9 uses
  %.578.i = phi i32 [ %.275.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i ], [ %.477.lcssa298.i, %bb.cy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.not = icmp eq i32 %.578.i, 0
  br i1 %.not, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit, label %bb.dc

bb.dc:                                            ; preds = %.thread, %bb.db
  %.578.i131 = phi i32 [ %.578.i.ph, %.thread ], [ %.578.i, %bb.db ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.dd unwind label %bb.dk

bb.dd:                                            ; preds = %bb.dc
  %i.pg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.3, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.dl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.dd
  %i.ph = load ptr, ptr %3, align 8, !tbaa !27
  %i.pi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.ph)
          to label %bb.de unwind label %bb.dl

bb.de:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.pj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pi, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61 unwind label %bb.dl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %bb.de
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.5, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.dl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.6, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.dl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %switch.tableidx = add i32 %.578.i131, -1       ; 2 uses
  %i.pm = icmp ult i32 %switch.tableidx, 4
  br i1 %i.pm, label %switch.lookup, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit

switch.lookup:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.pn = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE, i64 %i.pn
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.21, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 ]
  %i.po = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %.0.i)
          to label %bb.df unwind label %bb.dl     ; 0 uses

bb.df:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit
  %i.pp = icmp eq i32 %.578.i131, 4
  br i1 %i.pp, label %bb.dg, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72

bb.dg:                                            ; preds = %bb.df
  %i.pq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.7, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67 unwind label %bb.dl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67: ; preds = %bb.dg
  %i.pr = load i32, ptr %i.o, align 4, !tbaa !30
  %i.ps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef %i.pr)
          to label %bb.dh unwind label %bb.dl

bb.dh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ps, ptr noundef nonnull @.str.8, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.dl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %bb.dh
  %i.pu = load ptr, ptr %13, align 8, !tbaa !27
  %i.pv = load i64, ptr %i.q, align 8, !tbaa !14
  %i.pw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.pu, i64 noundef %i.pv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.dl

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.px = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pw, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.dl ; 0 uses

bb.di:                                            ; preds = %bb.a
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dj:                                            ; preds = %bb.b
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.body

.loopexit:                                        ; preds = %bb.ap, %.noexc52, %_ZNSi7getlineEPcl.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ct, %bb.j, %bb.z, %bb.an, %bb.bo, %bb.br, %bb.cu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dk:                                            ; preds = %bb.dc
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dl:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %bb.dh, %bb.dg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61, %bb.de, %bb.dd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.df
  %i.qc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.dm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread

bb.dm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.qd = load ptr, ptr %19, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qc, ptr noundef %i.qd)
          to label %bb.dn unwind label %bb.do

bb.dn:                                            ; preds = %bb.dm
  invoke void @__cxa_throw(ptr nonnull %i.qc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #31
          to label %bb.eo unwind label %bb.do

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.qe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.dp

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.035 = phi i1 [ false, %bb.dn ], [ true, %bb.dm ] ; 2 uses
  %i.qf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qg = load ptr, ptr %19, align 8, !tbaa !27   ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.do
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !17
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qk) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br i1 %.035, label %bb.dp, label %bb.dq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br i1 %.035, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn39134 = phi { ptr, i32 } [ %i.qe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread ], [ %i.qf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.qf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ]
  call void @__cxa_free_exception(ptr %i.qc) #28
  br label %bb.dq

bb.dq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %bb.dp, %bb.dl
  %.pn39.pn = phi { ptr, i32 } [ %.pn39134, %bb.dp ], [ %i.qf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.qb, %bb.dl ], [ %i.qf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18) #28
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dk
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %bb.dq ], [ %i.qa, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit: ; preds = %bb.db
  %i.ql = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !87
  %switch.selectcmp136 = icmp eq i32 %i.qm, -16
  %switch.select137 = zext i1 %switch.selectcmp136 to i32
  %i.qn = getelementptr inbounds nuw i8, ptr %.1, i64 12 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !86
  %switch.tableidx321 = add i32 %i.qo, 32         ; 2 uses
  %i.qp = icmp ult i32 %switch.tableidx321, 49
  br i1 %i.qp, label %switch.lookup322, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit78

switch.lookup322:                                 ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit
  %i.qq = zext nneg i32 %switch.tableidx321 to i64
  %switch.gep323 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE.12, i64 %i.qq
  %switch.load324 = load i8, ptr %switch.gep323, align 1
  %switch.ext = zext i8 %switch.load324 to i32
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit78

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit78: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit, %switch.lookup322
  %.0.i77 = phi i32 [ %switch.ext, %switch.lookup322 ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit ] ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !88 ; 6 uses
  %i.qt = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ds unwind label %bb.em     ; 8 uses

bb.ds:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit78
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %i.qt, align 8, !tbaa !8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qu, i8 0, i64 16, i1 false)
  %i.qv = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #27
          to label %.noexc.i79 unwind label %bb.eb ; 6 uses

.noexc.i79:                                       ; preds = %bb.ds
  %i.qw = sext i32 %i.qs to i64
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  store i32 1, ptr %i.qx, align 8, !tbaa !89, !noalias !91
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 12
  store i32 1, ptr %i.qy, align 4, !tbaa !94, !noalias !91
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.qv, align 8, !tbaa !8, !noalias !91
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1ENS0_9HalfFlagsEmb(ptr noundef nonnull align 8 dereferenceable(364) %i.qz, i32 noundef %switch.select137, i64 noundef range(i64 -2147483648, 2147483648) %i.qw, i1 noundef zeroext false)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !91

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc.i79
  %i.ra = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef 384) #29, !noalias !91
  br label %.body.i

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i: ; preds = %.noexc.i79
  store ptr %i.qz, ptr %i.qu, align 8, !tbaa !95
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qt, i64 16 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !97 ; 8 uses
  store ptr %i.qv, ptr %i.rb, align 8, !tbaa !97
  %.not.i.i.i.i.i80 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i.i.i80, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.dt

bb.dt:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 4 uses
  %i.re = load atomic i64, ptr %i.rd acquire, align 8 ; 2 uses
  %i.rf = icmp eq i64 %i.re, 4294967297
  %i.rg = trunc i64 %i.re to i32                  ; 2 uses
  br i1 %i.rf, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store i32 0, ptr %i.rd, align 8, !tbaa !89
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  store i32 0, ptr %i.rh, align 4, !tbaa !94
  %i.ri = load ptr, ptr %i.rc, align 8, !tbaa !8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #28, !inline_history !100
  %i.rl = load ptr, ptr %i.rc, align 8, !tbaa !8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #28, !inline_history !100
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.dv:                                            ; preds = %bb.dt
  %i.ro = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ro, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.rp = add nsw i32 %i.rg, -1
  store i32 %i.rp, ptr %i.rd, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.rq = atomicrmw volatile add ptr %i.rd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dx, %bb.dw
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.rg, %bb.dw ], [ %i.rq, %bb.dx ]
  %i.rr = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.rr, label %bb.dy, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !101

bb.dy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.dy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.du, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i
  %i.rs = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.dz unwind label %bb.ec

bb.dz:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  br i1 %i.rs, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.rt = load ptr, ptr %i.qu, align 8, !tbaa !102
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.rt, i32 noundef %4)
          to label %bb.ed unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ds
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ec:                                            ; preds = %bb.ea, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ec, %bb.eb, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %i.rv, %bb.ec ], [ %i.ru, %bb.eb ], [ %i.ra, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.qu) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.qt, i64 noundef 24) #29
  br label %.body

bb.ed:                                            ; preds = %bb.ea, %bb.dz
  %i.rw = load ptr, ptr %i.qu, align 8, !tbaa !102
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 360
  store i32 %.0.i77, ptr %i.rx, align 8, !tbaa !104
  %i.ry = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ei unwind label %bb.ee     ; 6 uses

bb.ee:                                            ; preds = %bb.ed
  %i.rz = landingpad { ptr, i32 }
          catch ptr null
  %i.sa = extractvalue { ptr, i32 } %i.rz, 0
  %i.sb = call ptr @__cxa_begin_catch(ptr %i.sa) #28 ; 0 uses
  %i.sc = load ptr, ptr %i.qt, align 8, !tbaa !8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = load ptr, ptr %i.sd, align 8
  call void %i.se(ptr noundef nonnull align 8 dereferenceable(24) %i.qt) #28, !inline_history !134
  invoke void @__cxa_rethrow() #31
          to label %bb.eh unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.sf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.sg = landingpad { ptr, i32 }
          catch ptr null
  %i.sh = extractvalue { ptr, i32 } %i.sg, 0
  call void @__clang_call_terminate(ptr %i.sh) #33
  unreachable

bb.eh:                                            ; preds = %bb.ee
  unreachable

bb.ei:                                            ; preds = %bb.ed
  %i.si = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store i32 1, ptr %i.si, align 8, !tbaa !89
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ry, i64 12
  store i32 1, ptr %i.sj, align 4, !tbaa !94
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ry, align 8, !tbaa !8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store ptr %i.qt, ptr %i.sk, align 8, !tbaa !135
  %i.sl = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %.0.i77)
          to label %bb.ej unwind label %bb.en

bb.ej:                                            ; preds = %bb.ei
  %i.sm = fptrunc double %i.sl to float           ; 3 uses
  %i.sn = load i32, ptr %.1, align 8, !tbaa !73   ; 3 uses
  %i.so = icmp sgt i32 %i.qs, 0
  br i1 %i.so, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.ej
  %i.sp = add nsw i32 %i.sn, -1                   ; 3 uses
  %i.sq = load ptr, ptr %i.qu, align 8, !tbaa !102
  %i.sr = load i32, ptr %i.qn, align 4, !tbaa !86
  %i.ss = icmp eq i32 %i.sr, -16
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 200
  %i.su = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !33 ; 7 uses
  %i.sw = load ptr, ptr %i.st, align 8, !tbaa !138 ; 12 uses
  %.sroa.speculated.us.us = call i32 @llvm.smin.i32(i32 %i.sp, i32 0)
  %i.sx = sext i32 %.sroa.speculated.us.us to i64
  %i.sy = getelementptr inbounds [8 x i8], ptr %i.sv, i64 %i.sx
  %wide.trip.count192 = zext nneg i32 %i.qs to i64 ; 5 uses
  %.pre196 = load ptr, ptr %i.sy, align 8, !tbaa !37 ; 5 uses
  %.sroa.speculated.us.us.1 = call i32 @llvm.smin.i32(i32 %i.sp, i32 1)
  %i.sz = sext i32 %.sroa.speculated.us.us.1 to i64
  %i.ta = getelementptr inbounds [8 x i8], ptr %i.sv, i64 %i.sz
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !37 ; 5 uses
  %.sroa.speculated.us.us.2 = call i32 @llvm.smin.i32(i32 %i.sp, i32 2)
  %i.tc = sext i32 %.sroa.speculated.us.us.2 to i64
  %i.td = getelementptr inbounds [8 x i8], ptr %i.sv, i64 %i.tc
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !37 ; 5 uses
  br i1 %i.ss, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %xtraiter = and i64 %wide.trip.count192, 1
  %20 = icmp eq i32 %i.qs, 1
  br i1 %20, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter = and i64 %wide.trip.count192, 2147483646
  br label %.preheader.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %min.iters.check309 = icmp ult i32 %i.qs, 4
  br i1 %min.iters.check309, label %.preheader.preheader325, label %vector.ph310

vector.ph310:                                     ; preds = %.preheader.preheader
  %n.vec311 = and i64 %wide.trip.count192, 2147483644 ; 4 uses
  %21 = mul nuw nsw i64 %n.vec311, 3
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.sm, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph310
  %index313 = phi i64 [ 0, %vector.ph310 ], [ %index.next317, %vector.body312 ] ; 5 uses
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %.pre196, i64 %index313
  %wide.load314 = load <4 x i16>, ptr %i.tf, align 2, !tbaa !39
  %i.tg = uitofp <4 x i16> %wide.load314 to <4 x float>
  %i.th = fdiv <4 x float> %i.tg, %broadcast.splat
  %.idx = mul nuw i64 %index313, 12
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.idx
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %i.tb, i64 %index313
  %wide.load315 = load <4 x i16>, ptr %i.tj, align 2, !tbaa !39
  %i.tk = uitofp <4 x i16> %wide.load315 to <4 x float>
  %i.tl = fdiv <4 x float> %i.tk, %broadcast.splat
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %index313
  %wide.load316 = load <4 x i16>, ptr %i.tm, align 2, !tbaa !39
  %i.tn = uitofp <4 x i16> %wide.load316 to <4 x float>
  %i.to = fdiv <4 x float> %i.tn, %broadcast.splat
  %i.tp = shufflevector <4 x float> %i.th, <4 x float> %i.tl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tq = shufflevector <4 x float> %i.to, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.tp, <8 x float> %i.tq, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.ti, align 4, !tbaa !139
  %index.next317 = add nuw i64 %index313, 4       ; 2 uses
  %i.tr = icmp eq i64 %index.next317, %n.vec311
  br i1 %i.tr, label %middle.block318, label %vector.body312, !llvm.loop !141

middle.block318:                                  ; preds = %vector.body312
  %cmp.n319 = icmp eq i64 %n.vec311, %wide.trip.count192
  br i1 %cmp.n319, label %.preheader13.i.i, label %.preheader.preheader325

.preheader.preheader325:                          ; preds = %.preheader.preheader, %middle.block318
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec311, %middle.block318 ]
  %.026164.ph = phi i64 [ 0, %.preheader.preheader ], [ %21, %middle.block318 ]
  %i.ts = insertelement <2 x float> poison, float %i.sm, i64 0
  %i.tt = shufflevector <2 x float> %i.ts, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %indvars.iv189 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %indvars.iv.next190.1, %.preheader.us ] ; 5 uses
  %.026164.us = phi i64 [ 0, %.preheader.us.preheader.new ], [ %indvars.iv.next186.2.1, %.preheader.us ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter.next.1, %.preheader.us ]
  %22 = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %23 = getelementptr inbounds nuw [2 x i8], ptr %.pre196, i64 %indvars.iv189
  %24 = load i16, ptr %23, align 2, !tbaa !39
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !17
  %28 = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %.026164.us
  store float %27, ptr %28, align 4, !tbaa !139
  %29 = getelementptr inbounds nuw [2 x i8], ptr %i.tb, i64 %indvars.iv189
  %30 = load i16, ptr %29, align 2, !tbaa !39
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !17
  %34 = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %.026164.us
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 4
  store float %33, ptr %35, align 4, !tbaa !139
  %36 = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %indvars.iv189
  %37 = load i16, ptr %36, align 2, !tbaa !39
  %38 = zext i16 %37 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %38
  %40 = load float, ptr %39, align 4, !tbaa !17
  %41 = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %.026164.us
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store float %40, ptr %42, align 4, !tbaa !139
  %indvars.iv.next186.2 = add nuw nsw i64 %.026164.us, 3 ; 3 uses
  %indvars.iv.next190 = or disjoint i64 %indvars.iv189, 1 ; 3 uses
  %i.tu = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %.pre196, i64 %indvars.iv.next190
  %i.tw = load i16, ptr %i.tv, align 2, !tbaa !39
  %i.tx = zext i16 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.tx
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !17
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %indvars.iv.next186.2
  store float %i.tz, ptr %i.ua, align 4, !tbaa !139
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.tb, i64 %indvars.iv.next190
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !39
  %i.ud = zext i16 %i.uc to i64
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.ud
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !17
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %indvars.iv.next186.2
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  store float %i.uf, ptr %i.uh, align 4, !tbaa !139
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %indvars.iv.next190
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !39
  %i.uk = zext i16 %i.uj to i64
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.uk
  %i.um = load float, ptr %i.ul, align 4, !tbaa !17
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %indvars.iv.next186.2
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  store float %i.um, ptr %i.uo, align 4, !tbaa !139
  %indvars.iv.next186.2.1 = add nuw nsw i64 %.026164.us, 6 ; 2 uses
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader13.i.i.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !142

.preheader:                                       ; preds = %.preheader.preheader325, %.preheader
  %indvars.iv.a = phi i64 [ %indvars.iv.next183, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader325 ] ; 4 uses
  %.026164 = phi i64 [ %indvars.iv.next.2, %.preheader ], [ %.026164.ph, %.preheader.preheader325 ] ; 3 uses
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %.pre196, i64 %indvars.iv.a
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !39
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %.026164
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.tb, i64 %indvars.iv.a
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !39
  %i.uu = insertelement <2 x i16> poison, i16 %i.uq, i64 0
  %i.uv = insertelement <2 x i16> %i.uu, i16 %i.ut, i64 1
  %i.uw = uitofp <2 x i16> %i.uv to <2 x float>
  %i.ux = fdiv <2 x float> %i.uw, %i.tt
  store <2 x float> %i.ux, ptr %i.ur, align 4, !tbaa !139
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %indvars.iv.a
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !39
  %i.va = uitofp i16 %i.uz to float
  %i.vb = fdiv float %i.va, %i.sm
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %.026164
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  store float %i.vb, ptr %i.vd, align 4, !tbaa !139
  %indvars.iv.next.2 = add nuw nsw i64 %.026164, 3
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count192
  br i1 %exitcond.not, label %.preheader13.i.i, label %.preheader, !llvm.loop !143

._crit_edge:                                      ; preds = %bb.ej
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %.pre197 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !33 ; 2 uses
  %.not.i.i86 = icmp eq ptr %.pre197, null
  br i1 %.not.i.i86, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.preheader13.i.i

.preheader13.i.i.loopexit.unr-lcssa:              ; preds = %.preheader.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader13.i.i, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %.preheader13.i.i.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv189.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next190.1, %.preheader13.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.026164.us.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next186.2.1, %.preheader13.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod342 = trunc i32 %i.qs to i1
  call void @llvm.assume(i1 %lcmp.mod342)
  %43 = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %44 = getelementptr inbounds nuw [2 x i8], ptr %.pre196, i64 %indvars.iv189.epil.init
  %45 = load i16, ptr %44, align 2, !tbaa !39
  %46 = zext i16 %45 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !17
  %49 = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %.026164.us.epil.init
  store float %48, ptr %49, align 4, !tbaa !139
  %50 = getelementptr inbounds nuw [2 x i8], ptr %i.tb, i64 %indvars.iv189.epil.init
  %51 = load i16, ptr %50, align 2, !tbaa !39
  %52 = zext i16 %51 to i64
  %53 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %52
  %54 = load float, ptr %53, align 4, !tbaa !17
  %55 = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %.026164.us.epil.init
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 4
  store float %54, ptr %56, align 4, !tbaa !139
  %57 = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %indvars.iv189.epil.init
  %58 = load i16, ptr %57, align 2, !tbaa !39
  %59 = zext i16 %58 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !17
  %62 = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %.026164.us.epil.init
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 8
  store float %61, ptr %63, align 4, !tbaa !139
  br label %.preheader13.i.i

.preheader13.i.i:                                 ; preds = %.preheader, %.preheader.us.epil.preheader, %.preheader13.i.i.loopexit.unr-lcssa, %middle.block318, %._crit_edge
  %64 = phi ptr [ %.pre197, %._crit_edge ], [ %i.sv, %middle.block318 ], [ %i.sv, %.preheader.us.epil.preheader ], [ %i.sv, %.preheader13.i.i.loopexit.unr-lcssa ], [ %i.sv, %.preheader ]
  %i.ve = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.vf = icmp sgt i32 %i.sn, 0
  br i1 %i.vf, label %.lr.ph18.i.i, label %._crit_edge19.i.i

._crit_edge19.loopexit.i.i:                       ; preds = %bb.el
  %.pre25.i.i = load ptr, ptr %i.ve, align 8, !tbaa !33
  br label %._crit_edge19.i.i

._crit_edge19.i.i:                                ; preds = %._crit_edge19.loopexit.i.i, %.preheader13.i.i
  %i.vg = phi ptr [ %.pre25.i.i, %._crit_edge19.loopexit.i.i ], [ %64, %.preheader13.i.i ]
  call void @free(ptr noundef %i.vg) #28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.lr.ph18.i.i:                                     ; preds = %.preheader13.i.i, %bb.el
  %i.vh = phi i32 [ %i.vq, %bb.el ], [ %i.sn, %.preheader13.i.i ] ; 2 uses
  %indvars.iv22.i.i = phi i64 [ %indvars.iv.next23.i.i, %bb.el ], [ 0, %.preheader13.i.i ] ; 6 uses
  %i.vi = load ptr, ptr %i.ve, align 8, !tbaa !33 ; 2 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %indvars.iv22.i.i
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !37 ; 3 uses
  %.not12.i.i = icmp eq ptr %i.vk, null
  br i1 %.not12.i.i, label %bb.el, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph18.i.i
  %.not20.i.i = icmp eq i64 %indvars.iv22.i.i, 0
  br i1 %.not20.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i87

.lr.ph.i.i87:                                     ; preds = %.preheader.i.i, %bb.ek
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ek ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %indvars.iv.i.i
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !37
  %i.vn = icmp eq ptr %i.vm, %i.vk
  br i1 %i.vn, label %._crit_edge.i.i, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph.i.i87
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %indvars.iv22.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i87, !llvm.loop !74

._crit_edge.i.i:                                  ; preds = %bb.ek, %.lr.ph.i.i87
  %.0.lcssa.ph.in.i.i = phi i64 [ %indvars.iv22.i.i, %bb.ek ], [ %indvars.iv.i.i, %.lr.ph.i.i87 ]
  %i.vo = and i64 %.0.lcssa.ph.in.i.i, 4294967295
  %i.vp = icmp eq i64 %i.vo, %indvars.iv22.i.i
  br i1 %i.vp, label %._crit_edge.thread.i.i, label %bb.el

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.preheader.i.i
  call void @free(ptr noundef %i.vk) #28
  %.pre.i.i = load i32, ptr %.1, align 8, !tbaa !73
  br label %bb.el

bb.el:                                            ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.lr.ph18.i.i
  %i.vq = phi i32 [ %i.vh, %._crit_edge.i.i ], [ %.pre.i.i, %._crit_edge.thread.i.i ], [ %i.vh, %.lr.ph18.i.i ] ; 2 uses
  %indvars.iv.next23.i.i = add nuw nsw i64 %indvars.iv22.i.i, 1 ; 2 uses
  %i.vr = sext i32 %i.vq to i64
  %i.vs = icmp slt i64 %indvars.iv.next23.i.i, %i.vr
  br i1 %i.vs, label %.lr.ph18.i.i, label %._crit_edge19.loopexit.i.i, !llvm.loop !75

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge19.i.i, %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %.1, i64 noundef 24) #29
  store ptr %i.qt, ptr %0, align 8, !tbaa !144
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ry, ptr %i.vt, align 8, !tbaa !97
  %i.vu = load ptr, ptr %16, align 8, !tbaa !27   ; 2 uses
  %i.vv = icmp eq ptr %i.vu, %i.v
  br i1 %i.vv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.vw = load i64, ptr %i.v, align 8, !tbaa !17
  %i.vx = add i64 %i.vw, 1
  call void @_ZdlPvm(ptr noundef %i.vu, i64 noundef %i.vx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.vy = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.t
  br i1 %i.vz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.wa = load i64, ptr %i.t, align 8, !tbaa !17
  %i.wb = add i64 %i.wa, 1
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.wc = load ptr, ptr %14, align 8, !tbaa !27   ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.r
  br i1 %i.wd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.we = load i64, ptr %i.r, align 8, !tbaa !17
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef %i.wf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.wg = load ptr, ptr %13, align 8, !tbaa !27   ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.p
  br i1 %i.wh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.wi = load i64, ptr %i.p, align 8, !tbaa !17
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  ret void

bb.em:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit78
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.en:                                            ; preds = %bb.ei
  %i.wl = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.ry) #28
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body.i, %bb.en, %bb.ef, %bb.em, %bb.cz, %bb.bt, %bb.dr, %bb.dj, %bb.di
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %i.py, %bb.di ], [ %i.pz, %bb.dj ], [ %.pn39.pn.pn, %bb.dr ], [ %.merged.i, %bb.cz ], [ %i.sf, %bb.ef ], [ %.merged.i.i, %bb.bt ], [ %i.wl, %bb.en ], [ %.pn.i, %.body.i ], [ %i.wk, %bb.em ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.wm = load ptr, ptr %16, align 8, !tbaa !27   ; 2 uses
  %i.wn = icmp eq ptr %i.wm, %i.v
  br i1 %i.wn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %.body
  %i.wo = load i64, ptr %i.v, align 8, !tbaa !17
  %i.wp = add i64 %i.wo, 1
  call void @_ZdlPvm(ptr noundef %i.wm, i64 noundef %i.wp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.wq = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.wr = icmp eq ptr %i.wq, %i.t
  br i1 %i.wr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.ws = load i64, ptr %i.t, align 8, !tbaa !17
  %i.wt = add i64 %i.ws, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.wu = load ptr, ptr %14, align 8, !tbaa !27   ; 2 uses
  %i.wv = icmp eq ptr %i.wu, %i.r
  br i1 %i.wv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.ww = load i64, ptr %i.r, align 8, !tbaa !17
  %i.wx = add i64 %i.ww, 1
  call void @_ZdlPvm(ptr noundef %i.wu, i64 noundef %i.wx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.wy = load ptr, ptr %13, align 8, !tbaa !27   ; 2 uses
  %i.wz = icmp eq ptr %i.wy, %i.p
  br i1 %i.wz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.xa = load i64, ptr %i.p, align 8, !tbaa !17
  %i.xb = add i64 %i.xa, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn

bb.eo:                                            ; preds = %bb.dn
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_510FileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZNK16OpenColorIO_v2_510FileFormat5writeERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEERKNS_14GroupTransformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 1 captures(none) %3, ptr nofree noundef readonly align 8 captures(none) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %9 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  %.val = load ptr, ptr %4, align 8, !tbaa !144   ; 2 uses
  %i.b = getelementptr i8, ptr %4, i64 8
  %.val27 = load ptr, ptr %i.b, align 8           ; 13 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %.val, ptr nonnull @_ZTIN16OpenColorIO_v2_510CachedFileE, ptr nonnull @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 0) #28, !noalias !147 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.not.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %.val27, null     ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.val27, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !147
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD0Ev:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_510CachedFile11getCDLGroupEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.28") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.24)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(364) dereferenceable(364) %i.a) #28, !inline_history !177
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28
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
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !180
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !30   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !180
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #21 align 2 {
bb.a:
  ret ptr null
}

declare noundef i32 @_ZN16OpenColorIO_v2_526CombineTransformDirectionsENS_18TransformDirectionES0_(i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK16OpenColorIO_v2_513FileTransform16getInterpolationEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_511HandleLUT1DERKSt10shared_ptrINS_11Lut1DOpDataEENS_13InterpolationERb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.7") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_530LogWarningInterpolationNotUsedENS_13InterpolationERKNS_13FileTransformE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_513CreateLut1DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut1DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

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
attributes #15 = { nounwind memory(none) }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { noreturn }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind allocsize(0,1) }
attributes #35 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !16, i64 8}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !16, i64 8, !6, i64 16}
!16 = !{!"long", !6, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !20, i64 64}
!19 = !{!"_ZTSN16OpenColorIO_v2_510FormatInfoE", !15, i64 0, !15, i64 32, !20, i64 64, !21, i64 68}
!20 = !{!"_ZTSN16OpenColorIO_v2_521FormatCapabilityFlagsE", !6, i64 0}
!21 = !{!"_ZTSN16OpenColorIO_v2_515FormatBakeFlagsE", !6, i64 0}
!22 = !{!19, !21, i64 68}
!23 = !{!24, !25, i64 8}
!24 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 _ZTSN16OpenColorIO_v2_510FormatInfoE", !13, i64 0}
!26 = !{!24, !25, i64 16}
!27 = !{!15, !12, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructE", !13, i64 0}
!30 = !{!5, !5, i64 0}
!31 = !{!16, !16, i64 0}
!32 = !{!12, !12, i64 0}
!33 = !{!34, !35, i64 16}
!34 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructE", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 12, !35, i64 16}
!35 = !{!"p2 short", !36, i64 0}
!36 = !{!"any p2 pointer", !13, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 short", !13, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !6, i64 0}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!43 = distinct !{!43, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!44 = !{!45, !47, i64 32}
!45 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !46, i64 24, !47, i64 28, !47, i64 32, !48, i64 40, !49, i64 48, !6, i64 64, !5, i64 192, !50, i64 200, !51, i64 208}
!46 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!47 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!48 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!49 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !16, i64 8}
!50 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!51 = !{!"_ZTSSt6locale", !52, i64 0}
!52 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!53 = !{!54, !58, i64 240}
!54 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !45, i64 0, !55, i64 216, !6, i64 224, !56, i64 225, !57, i64 232, !58, i64 240, !59, i64 248, !60, i64 256}
!55 = !{!"p1 _ZTSSo", !13, i64 0}
!56 = !{!"bool", !6, i64 0}
!57 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 0}
!58 = !{!"p1 _ZTSSt5ctypeIcE", !13, i64 0}
!59 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!60 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!61 = !{!62, !6, i64 56}
!62 = !{!"_ZTSSt5ctypeIcE", !63, i64 0, !64, i64 16, !56, i64 24, !65, i64 32, !65, i64 40, !38, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!63 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!64 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!65 = !{!"p1 int", !13, i64 0}
!66 = distinct !{null}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = distinct !{!69, !68}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !68}
!72 = distinct !{!72, !68}
!73 = !{!34, !5, i64 0}
!74 = distinct !{!74, !68}
!75 = distinct !{!75, !68}
!76 = distinct !{!76, !68}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!79 = distinct !{!79, !"_ZN11StringUtils5LowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!80 = distinct !{!80, !68, !81, !82}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = !{!"branch_weights", i32 8, i32 24}
!84 = distinct !{!84, !68, !81, !82}
!85 = distinct !{!85, !68, !82, !81}
!86 = !{!34, !6, i64 12}
!87 = !{!34, !6, i64 8}
!88 = !{!34, !5, i64 4}
!89 = !{!90, !5, i64 8}
!90 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_: argument 0"}
!93 = distinct !{!93, !"_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_"}
!94 = !{!90, !5, i64 12}
!95 = !{!96, !96, i64 0}
!96 = !{!"p1 _ZTSN16OpenColorIO_v2_511Lut1DOpDataE", !13, i64 0}
!97 = !{!98, !99, i64 0}
!98 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !99, i64 0}
!99 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!100 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!101 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!102 = !{!103, !96, i64 0}
!103 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EE", !96, i64 0, !98, i64 8}
!104 = !{!105, !133, i64 360}
!105 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpDataE", !106, i64 0, !121, i64 168, !122, i64 176, !130, i64 224, !131, i64 228, !132, i64 232, !6, i64 240, !133, i64 360}
!106 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !107, i64 8, !109, i64 48}
!107 = !{!"_ZTSSt5mutex", !108, i64 0}
!108 = !{!"_ZTSSt12__mutex_base", !6, i64 0}
!109 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !110, i64 0, !15, i64 8, !15, i64 40, !111, i64 72, !116, i64 96}
!110 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!111 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !112, i64 0}
!112 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !113, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !114, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!115 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !13, i64 0}
!116 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !117, i64 0}
!117 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !118, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !119, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!120 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !13, i64 0}
!121 = !{!"_ZTSN16OpenColorIO_v2_513InterpolationE", !6, i64 0}
!122 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpData13Lut3by1DArrayE", !123, i64 0}
!123 = !{!"_ZTSN16OpenColorIO_v2_56ArrayTIfEE", !124, i64 0, !16, i64 8, !16, i64 16, !125, i64 24}
!124 = !{!"_ZTSN16OpenColorIO_v2_59ArrayBaseE"}
!125 = !{!"_ZTSSt6vectorIfSaIfEE", !126, i64 0}
!126 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !127, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !128, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !129, i64 0, !129, i64 8, !129, i64 16}
!129 = !{!"p1 float", !13, i64 0}
!130 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpData9HalfFlagsE", !6, i64 0}
!131 = !{!"_ZTSN16OpenColorIO_v2_514Lut1DHueAdjustE", !6, i64 0}
!132 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !6, i64 0}
!133 = !{!"_ZTSN16OpenColorIO_v2_58BitDepthE", !6, i64 0}
!134 = distinct !{null, null, null, null}
!135 = !{!136, !137, i64 16}
!136 = !{!"_ZTSSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE", !90, i64 0, !137, i64 16}
!137 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE", !13, i64 0}
!138 = !{!128, !129, i64 0}
!139 = !{!140, !140, i64 0}
!140 = !{!"float", !6, i64 0}
!141 = distinct !{!141, !68, !81, !82}
!142 = distinct !{!142, !68}
!143 = distinct !{!143, !68, !82, !81}
!144 = !{!145, !146, i64 0}
!145 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_510CachedFileELN9__gnu_cxx12_Lock_policyE2EE", !146, i64 0, !98, i64 8}
!146 = !{!"p1 _ZTSN16OpenColorIO_v2_510CachedFileE", !13, i64 0}
!147 = !{!148, !150}
!148 = distinct !{!148, !149, !"_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileENS0_10CachedFileEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!149 = distinct !{!149, !"_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileENS0_10CachedFileEESt10shared_ptrIT_ERKS4_IT0_E"}
!150 = distinct !{!150, !151, !"_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!151 = distinct !{!151, !"_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E"}
!152 = !{!56, !56, i64 0}
!153 = !{i8 0, i8 2}
!154 = !{}
!155 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!156 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!157 = !{!24, !25, i64 0}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!160 = distinct !{!160, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!163 = !{!159, !162}
!164 = distinct !{!164, !68}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!167 = distinct !{!167, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!170 = !{!166, !169}
!171 = distinct !{null, null}
!172 = distinct !{null, null, null}
!173 = distinct !{!173, !68}
!174 = distinct !{!174, !68}
!175 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD2Ev, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!176 = !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD2Ev}
!177 = distinct !{null}
!178 = !{!179, !12, i64 8}
!179 = !{!"_ZTSSt9type_info", !12, i64 8}
!180 = distinct !{null}
end_hunk_1
