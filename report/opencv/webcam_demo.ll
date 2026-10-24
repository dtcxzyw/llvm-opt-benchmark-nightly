Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/webcam_demo?download=true
inline.NumInlined: 1285
inline.NumDeleted: 550
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@main:bb.a
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %13, i1 noundef zeroext true, i32 noundef 3, ptr noundef nonnull align 8 %12)
          to label %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit500 unwind label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %i.gr = load ptr, ptr %12, align 8, !tbaa !31, !alias.scope !229 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.go
  br i1 %i.gs, label %.body498, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i495

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i495: ; preds = %bb.ab
  %i.gt = load i64, ptr %i.go, align 8, !tbaa !32, !alias.scope !229
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #21
  br label %.body498

_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit500: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490
  %i.gv = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.gl
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit500
  %i.gx = load i64, ptr %i.gl, align 8, !tbaa !32
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit500, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.gz = load i64, ptr %i.gp, align 8, !tbaa !33
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1270, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 1)
          to label %bb.ac unwind label %bb.al

bb.ac:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.hb = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.ad unwind label %bb.am     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.hc = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.hc, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.hd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit505 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit505: ; preds = %bb.af
  %i.he = load ptr, ptr %12, align 8, !tbaa !31
  %i.hf = load i64, ptr %i.gp, align 8, !tbaa !33
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.he, i64 noundef %i.hf)
          to label %.invoke1998 unwind label %bb.ak

bb.ag:                                            ; preds = %.noexc.i, %bb.b
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511

bb.ah:                                            ; preds = %bb.f
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hj = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.m
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509: ; preds = %bb.ah
  %i.hl = load i64, ptr %i.m, align 8, !tbaa !32
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.hh, %bb.ag ], [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509 ], [ %i.hi, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ph

bb.ai:                                            ; preds = %.invoke, %.noexc1134, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1129, %.noexc1132, %bb.y, %.noexc1123, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1118, %.noexc1121, %bb.w, %.noexc1112, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1107, %.noexc1110, %bb.u, %.noexc1101, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1096, %.noexc1099, %bb.s, %.noexc1090, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1085, %.noexc1088, %bb.q, %.noexc1079, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1074, %.noexc1077, %bb.o, %.noexc1068, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1063, %.noexc1066, %bb.m, %.noexc1057, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1052, %.noexc1055, %bb.k, %.noexc1047, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc1045, %bb.i, %_ZNSolsEPFRSoS_E.exit477, %_ZNSolsEPFRSoS_E.exit473, %_ZNSolsEPFRSoS_E.exit469, %_ZNSolsEPFRSoS_E.exit465, %_ZNSolsEPFRSoS_E.exit461, %_ZNSolsEPFRSoS_E.exit457, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSolsEPFRSoS_E.exit483
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.pg

bb.aj:                                            ; preds = %bb.z
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

.body:                                            ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.hp = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.fx
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512: ; preds = %.body
  %i.hr = load i64, ptr %i.fx, align 8, !tbaa !32
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1042

.body498:                                         ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i495
  %i.ht = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.gl
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515: ; preds = %.body498
  %i.hv = load i64, ptr %i.gl, align 8, !tbaa !32
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517: ; preds = %.body498, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1039

bb.ak:                                            ; preds = %.invoke1998, %.noexc1145, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1140, %.noexc1143, %bb.bc, %bb.ba, %bb.az, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1270, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit521, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit519, %bb.ao, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit505, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, %bb.ax, %bb.aw, %bb.av, %bb.ad
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.pe

bb.al:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ac
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn292 = phi { ptr, i32 } [ %i.hz, %bb.am ], [ %i.hy, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.pe

bb.ao:                                            ; preds = %bb.ae
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit519 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit519: ; preds = %bb.ao
  %i.ib = load ptr, ptr %12, align 8, !tbaa !31
  %i.ic = load i64, ptr %i.gp, align 8, !tbaa !33
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ib, i64 noundef %i.ic)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit521 unwind label %bb.ak

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit521: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit519
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.id, ptr noundef nonnull @.str.14, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit523 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit523: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit521
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %15, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit523
  %i.if = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.aq unwind label %bb.as     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %._crit_edge.i.i532

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit523
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ap
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #19
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn294 = phi { ptr, i32 } [ %i.ih, %bb.as ], [ %i.ig, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.pe

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit525 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit525: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1270
  %i.ij = load i64, ptr %i.gb, align 8, !tbaa !33
  %i.ik = icmp eq i64 %i.ij, 1
  br i1 %i.ik, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit525
  %i.il = load ptr, ptr %10, align 8, !tbaa !31
  %i.im = load i8, ptr %i.il, align 1, !tbaa !32
  %117 = sext i8 %i.im to i32
  %isdigittmp = add nsw i32 %117, -48             ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.in = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openEii(ptr noundef nonnull align 8 dereferenceable(25) %5, i32 noundef %isdigittmp, i32 noundef 0)
          to label %bb.ax unwind label %bb.ak     ; 0 uses

bb.aw:                                            ; preds = %bb.au, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit525
  %i.io = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 0)
          to label %bb.ax unwind label %bb.ak     ; 0 uses

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ip = invoke noundef zeroext i1 @_ZNK2cv12VideoCapture8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(25) %5)
          to label %bb.ay unwind label %bb.ak

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.ip, label %bb.az, label %.invoke1998

.invoke1998:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit505, %bb.ay
  %i.iq = phi ptr [ @_ZSt4cout, %bb.ay ], [ %i.hg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit505 ]
  %i.ir = phi ptr [ @.str.16, %bb.ay ], [ @.str.12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit505 ]
  %i.is = phi i64 [ 33, %bb.ay ], [ 21, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit505 ]
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef nonnull %i.ir, i64 noundef %i.is)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit508 unwind label %bb.ak ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit529 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit529: ; preds = %bb.az
  %i.iv = load ptr, ptr @_ZSt4cout, align 8, !tbaa !35
  %i.iw = getelementptr i8, ptr %i.iv, i64 -24
  %i.ix = load i64, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 240
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !221 ; 6 uses
  %.not.i.i.i1137 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i1137, label %bb.ba, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1138

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit529
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc1142 unwind label %bb.ak

.noexc1142:                                       ; preds = %bb.ba
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1138: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit529
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 56
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !227
  %.not.i1.i.i1139 = icmp eq i8 %i.jc, 0
  br i1 %.not.i1.i.i1139, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1138
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 67
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !32
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1140

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1138
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ja)
          to label %.noexc1143 unwind label %bb.ak

.noexc1143:                                       ; preds = %bb.bc
  %i.jf = load ptr, ptr %i.ja, align 8, !tbaa !35
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = invoke noundef signext i8 %i.jh(ptr noundef nonnull align 8 dereferenceable(570) %i.ja, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1140 unwind label %bb.ak, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1140: ; preds = %.noexc1143, %bb.bb
  %.0.i.i.i1141 = phi i8 [ %i.je, %bb.bb ], [ %i.ji, %.noexc1143 ]
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i1141)
          to label %.noexc1145 unwind label %bb.ak

.noexc1145:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1140
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jj)
          to label %bb.bd unwind label %bb.ak     ; 0 uses

bb.bd:                                            ; preds = %.noexc1145
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.jl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.jm, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !39
  store ptr %6, ptr %i.jl, align 8, !tbaa !40
  %i.jn = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4readERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.be unwind label %bb.bf     ; 0 uses

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %._crit_edge.i.i532

bb.bf:                                            ; preds = %bb.bd
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.pe

._crit_edge.i.i532:                               ; preds = %bb.be, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.jp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.jp, ptr %17, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.jp, ptr noundef nonnull align 1 dereferenceable(11) @.str.18, i64 11, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 11, ptr %i.jq, align 8, !tbaa !33
  %i.jr = getelementptr inbounds nuw i8, ptr %17, i64 27
  store i8 0, ptr %i.jr, align 1, !tbaa !32
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 0)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %._crit_edge.i.i532
  %i.js = load ptr, ptr %17, align 8, !tbaa !31   ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.jp
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536: ; preds = %bb.bg
  %i.ju = load i64, ptr %i.jp, align 8, !tbaa !32
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.jw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.jw, ptr %18, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.jw, ptr noundef nonnull align 1 dereferenceable(11) @.str.18, i64 11, i1 false)
  %i.jx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 11, ptr %i.jx, align 8, !tbaa !33
  %i.jy = getelementptr inbounds nuw i8, ptr %18, i64 27
  store i8 0, ptr %i.jy, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.jz = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.jz, align 8, !tbaa !41
  %i.ka = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 0, ptr %i.ka, align 4, !tbaa !42
  store i32 16842752, ptr %19, align 8, !tbaa !39
  %i.kb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %6, ptr %i.kb, align 8, !tbaa !40
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.kc = load ptr, ptr %18, align 8, !tbaa !31   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.jw
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543: ; preds = %bb.bh
  %i.ke = load i64, ptr %i.jw, align 8, !tbaa !32
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.kg = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 1)
          to label %._crit_edge.i.i546 unwind label %bb.ak ; 0 uses

._crit_edge.i.i546:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.kh = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr %i.kh, ptr %20, align 16, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.kh, ptr noundef nonnull align 1 dereferenceable(7) @.str.19, i64 7, i1 false)
  %i.ki = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 7, ptr %i.ki, align 8, !tbaa !33
  %i.kj = getelementptr inbounds nuw i8, ptr %20, i64 23
  store i8 0, ptr %i.kj, align 1, !tbaa !32
  %i.kk = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.kl = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  store ptr %i.kl, ptr %i.kk, align 16, !tbaa !27
  store i32 1380275021, ptr %i.kl, align 16
  %i.km = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i64 4, ptr %i.km, align 8, !tbaa !33
  %i.kn = getelementptr inbounds nuw i8, ptr %20, i64 52
  store i8 0, ptr %i.kn, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.ko = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.ko, ptr %21, align 16, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  store i64 17, ptr %i.j, align 8, !tbaa !29
  %i.kp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc556 unwind label %.thread1273 ; 2 uses

.noexc556:                                        ; preds = %._crit_edge.i.i546
  store ptr %i.kp, ptr %21, align 16, !tbaa !31
  %i.kq = load i64, ptr %i.j, align 8, !tbaa !29  ; 3 uses
  store i64 %i.kq, ptr %i.ko, align 16, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.kp, ptr noundef nonnull align 1 dereferenceable(17) @.str.21, i64 17, i1 false)
  %i.kr = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.kq, ptr %i.kr, align 8, !tbaa !33
  %i.ks = load ptr, ptr %21, align 16, !tbaa !31
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kq
  store i8 0, ptr %i.kt, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  %i.ku = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.kv = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 2 uses
  store ptr %i.kv, ptr %i.ku, align 16, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.kv, ptr noundef nonnull align 1 dereferenceable(13) @.str.22, i64 13, i1 false)
  %i.kw = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i64 13, ptr %i.kw, align 8, !tbaa !33
  %i.kx = getelementptr inbounds nuw i8, ptr %21, i64 61
  store i8 0, ptr %i.kx, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.ky = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.ky, ptr %22, align 16, !tbaa !27
end_hunk_0
