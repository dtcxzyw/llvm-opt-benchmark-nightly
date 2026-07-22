inline.NumInlined: 2301
inline.NumDeleted: 1300
begin_hunk_0_@_ZN5arrow7compute6detail20FunctionExecutorImpl7ExecuteERKSt6vectorINS_5DatumESaIS4_EEl:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !517, !nonnull !61, !align !352 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !153
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170  ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !173    ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = sdiv exact i64 %i.v, 24                  ; 3 uses
  %.not = icmp eq i64 %i.p, %i.w
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.p, ptr %i.a, align 8, !tbaa !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.w, ptr %i.b, align 8, !tbaa !518
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21, !noalias !519
  invoke void @_ZN5arrow8internal12JoinToStringIJRA15_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA12_S2_mRA20_S2_mEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 1 dereferenceable(15) @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(12) @.str.33, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(20) @.str.34, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %21, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %19, align 8, !tbaa !43, !noalias !519 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !46, !noalias !519
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %19, align 8, !tbaa !43, !noalias !519 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.d
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !46, !noalias !519
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !519
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !519
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21) #21
  %i.ai = load ptr, ptr %21, align 8, !tbaa !47   ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !50

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !51, !range !60, !noundef !61
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #21
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.de

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.df

bb.h:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !524, !range !60, !noundef !61
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.aq = invoke noundef ptr @_ZN5arrow7compute20default_exec_contextEv()
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr noundef null, ptr noundef %i.aq)
          to label %_ZN5arrow6StatusD2Ev.exit103 unwind label %bb.n

_ZN5arrow6StatusD2Ev.exit103:                     ; preds = %bb.j
  %i.au = load ptr, ptr %23, align 8, !tbaa !47   ; 2 uses
  store ptr %i.au, ptr %22, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5arrow6StatusD2Ev.exit109, label %bb.k, !prof !50

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit103
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22) #21
  %i.aw = load ptr, ptr %22, align 8, !tbaa !47   ; 2 uses
  %.not.i104 = icmp eq ptr %i.aw, null
  br i1 %.not.i104, label %_ZN5arrow6StatusD2Ev.exit105, label %bb.l, !prof !50

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !51, !range !60, !noundef !61
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN5arrow6StatusD2Ev.exit105, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #21
  br label %_ZN5arrow6StatusD2Ev.exit105

_ZN5arrow6StatusD2Ev.exit105:                     ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.de

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.df

_ZN5arrow6StatusD2Ev.exit109:                     ; preds = %_ZN5arrow6StatusD2Ev.exit103
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !170 ; 2 uses
  %.pre179 = load ptr, ptr %2, align 8, !tbaa !173 ; 2 uses
  %.pre185.a = ptrtoint ptr %.pre to i64
  %.pre186 = ptrtoint ptr %.pre179 to i64
  %.pre188 = sub i64 %.pre185.a, %.pre186         ; 2 uses
  %.pre190 = sdiv exact i64 %.pre188, 24
  br label %bb.o

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit109, %bb.h
  %.pre-phi191 = phi i64 [ %.pre190, %_ZN5arrow6StatusD2Ev.exit109 ], [ %i.w, %bb.h ]
  %.pre-phi189 = phi i64 [ %.pre188, %_ZN5arrow6StatusD2Ev.exit109 ], [ %i.v, %bb.h ] ; 3 uses
  %i.bb = phi ptr [ %.pre179, %_ZN5arrow6StatusD2Ev.exit109 ], [ %i.s, %bb.h ] ; 2 uses
  %i.bc = phi ptr [ %.pre, %_ZN5arrow6StatusD2Ev.exit109 ], [ %i.r, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !506
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  %i.bf = icmp ugt i64 %.pre-phi191, 384307168202282325
  br i1 %i.bf, label %bb.p, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #24
          to label %.noexc110 unwind label %bb.q

.noexc110:                                        ; preds = %bb.p
  unreachable

_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.o
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i.i.i, label %.critedge95, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi189) #25
          to label %.lr.ph unwind label %bb.q     ; 3 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.bg, ptr %24, align 8, !tbaa !173
  %i.bh = getelementptr i8, ptr %i.bg, i64 %.pre-phi189 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bg, i8 0, i64 %.pre-phi189, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !174
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !170
  %i.bk = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %29, i64 16
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.r:                                             ; preds = %.lr.ph, %_ZN5arrow5DatumD2Ev.exit121
  %i.bu = phi ptr [ %i.bb, %.lr.ph ], [ %i.fr, %_ZN5arrow5DatumD2Ev.exit121 ]
  %.066178 = phi i64 [ 0, %.lr.ph ], [ %i.fp, %_ZN5arrow5DatumD2Ev.exit121 ] ; 6 uses
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.066178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.066178 ; 2 uses
  store i8 -1, ptr %i.bk, align 8, !tbaa !356
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store ptr %25, ptr %18, align 8, !tbaa !358
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %25) #21
  br label %.body112

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !356
  store i8 %i.ca, ptr %i.bk, align 8, !tbaa !356
  %i.cb = load ptr, ptr %2, align 8, !tbaa !173
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.066178
  %i.cd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !525 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !527
  %i.ch = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.cg, ptr noundef nonnull align 8 dereferenceable(72) %i.ce, i1 noundef zeroext false)
          to label %_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit unwind label %bb.at

_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit: ; preds = %bb.v
  br i1 %i.ch, label %.critedge93, label %_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit.thread

_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit.thread: ; preds = %bb.u, %_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  %i.ci = load ptr, ptr %2, align 8, !tbaa !173
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %.066178
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  %39 = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !186
  store <2 x ptr> %39, ptr %28, align 16, !tbaa !186
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !188 ; 3 uses
  store ptr %i.cl, ptr %i.bm, align 16, !tbaa !188
  %.not.i.i.i.i115 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i115, label %_ZN5arrow10TypeHolderC2ERKS0_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !3
  br label %_ZN5arrow10TypeHolderC2ERKS0_.exit

bb.y:                                             ; preds = %bb.w
  %i.cq = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow10TypeHolderC2ERKS0_.exit

_ZN5arrow10TypeHolderC2ERKS0_.exit:               ; preds = %_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit.thread, %bb.x, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  invoke void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46) %27, i1 noundef zeroext true)
          to label %.noexc116 unwind label %bb.au

.noexc116:                                        ; preds = %_ZN5arrow10TypeHolderC2ERKS0_.exit
  %i.cr = load ptr, ptr %i.bm, align 16, !tbaa !188, !noalias !528
  %i.cs = load <2 x ptr>, ptr %28, align 16, !tbaa !186, !noalias !528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false), !noalias !528
  store <2 x ptr> %i.cs, ptr %i.bn, align 8, !tbaa !186, !alias.scope !528
  %i.ct = load ptr, ptr %i.bo, align 8, !tbaa !188, !alias.scope !528 ; 8 uses
  store ptr %i.cr, ptr %i.bo, align 8, !tbaa !188, !alias.scope !528
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, label %bb.z

bb.z:                                             ; preds = %.noexc116
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cu, align 8, !tbaa !190
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !192
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #21, !inline_history !531
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !33
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #21, !inline_history !531
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

bb.ab:                                            ; preds = %bb.z
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !528
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.cx, %bb.ac ], [ %i.dh, %bb.ad ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.di, label %bb.ae, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, !prof !62

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #21
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %.noexc116
  invoke void @_ZN5arrow7compute4CastERKNS_5DatumERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.111") align 8 %26, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(46) %27, ptr noundef %i.be)
          to label %bb.af unwind label %bb.av

bb.af:                                            ; preds = %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %27, align 8, !tbaa !33
  %i.dj = load ptr, ptr %i.bo, align 8, !tbaa !188 ; 8 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i117, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.dk, align 8, !tbaa !190
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !192
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #21, !inline_history !532
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !33
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #21, !inline_history !532
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i118 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i118, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i = phi i32 [ %i.dn, %bb.aj ], [ %i.dx, %bb.ak ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dy, label %bb.al, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, !prof !62

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #21, !inline_history !533
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

_ZN5arrow7compute11CastOptionsD2Ev.exit:          ; preds = %bb.af, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.al
  %i.dz = load ptr, ptr %i.bm, align 16, !tbaa !188 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN5arrow7compute11CastOptionsD2Ev.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 4 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 4294967297
  %i.ed = trunc i64 %i.eb to i32                  ; 2 uses
  br i1 %i.ec, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.ea, align 8, !tbaa !190
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 0, ptr %i.ee, align 4, !tbaa !192
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !33
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #21, !inline_history !534
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !33
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #21, !inline_history !534
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.ao:                                            ; preds = %bb.am
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i119 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i119, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.em = add nsw i32 %i.ed, -1
  store i32 %i.em, ptr %i.ea, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.en = atomicrmw volatile add ptr %i.ea, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i = phi i32 [ %i.ed, %bb.ap ], [ %i.en, %bb.aq ]
  %i.eo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.eo, label %bb.ar, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !62

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #21
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %_ZN5arrow7compute11CastOptionsD2Ev.exit, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  %i.ep = load ptr, ptr %26, align 8, !tbaa !47
  %i.eq = icmp eq ptr %i.ep, null                 ; 2 uses
  br i1 %i.eq, label %bb.ax, label %bb.as, !prof !50

bb.as:                                            ; preds = %_ZN5arrow10TypeHolderD2Ev.exit
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %26) #21
  br label %bb.bb

bb.at:                                            ; preds = %bb.v, %bb.t
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.au:                                            ; preds = %_ZN5arrow10TypeHolderC2ERKS0_.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw
end_hunk_0
