Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/PowerParser?download=true
inline.NumInlined: 5334
inline.NumDeleted: 1210
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2PP11PowerParser14compile_bufferERi:.noexc.i
  br label %bb.eb

.loopexit.split-lp1251.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit469, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit538, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit553, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit527, %.noexc.i.i.i, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit438, %.invoke, %.noexc1074, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1069, %.noexc1072, %bb.eg, %.noexc1064, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc1062, %bb.ae, %bb.ed, %bb.ab, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit544, %bb.dq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.u
  %lpad.loopexit.split-lp2107 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520

bb.ea:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP3CmdERS1_PS1_El.exit540
  %i.add = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520

bb.eb:                                            ; preds = %bb.dv, %bb.dz
  %.1183 = phi i32 [ %i.adc, %bb.dz ], [ %.0182, %bb.dv ]
  %i.ade = add nsw i32 %.1183, 1
  br label %bb.dp, !llvm.loop !748

bb.ec:                                            ; preds = %bb.dq
  %i.adf = icmp sgt i32 %i.abx, 0
  br i1 %i.adf, label %bb.ed, label %.preheader2087

bb.ed:                                            ; preds = %bb.ec
  %i.adg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.23, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit544 unwind label %.loopexit.split-lp1251.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit544: ; preds = %bb.ed
  %i.adh = load i32, ptr %i.z, align 4, !tbaa !31
  %i.adi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.adh)
          to label %bb.ee unwind label %.loopexit.split-lp1251.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ee:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit544
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !143
  %i.adk = getelementptr i8, ptr %i.adj, i64 -24
  %i.adl = load i64, ptr %i.adk, align 8
  %i.adm = getelementptr inbounds i8, ptr %i.adi, i64 %i.adl
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 240
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i1066 = icmp eq ptr %i.ado, null
  br i1 %.not.i.i.i1066, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1067

.invoke:                                          ; preds = %bb.ac, %bb.ee
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.cont unwind label %.loopexit.split-lp1251.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1067: ; preds = %bb.ee
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 56
  %i.adq = load i8, ptr %i.adp, align 8, !tbaa !168
  %.not.i1.i.i1068 = icmp eq i8 %i.adq, 0
  br i1 %.not.i1.i.i1068, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1067
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ado, i64 67
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1069

bb.eg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1067
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ado)
          to label %.noexc1072 unwind label %.loopexit.split-lp1251.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1072:                                       ; preds = %bb.eg
  %i.adt = load ptr, ptr %i.ado, align 8, !tbaa !143
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 48
  %i.adv = load ptr, ptr %i.adu, align 8
  %i.adw = invoke noundef signext i8 %i.adv(ptr noundef nonnull align 8 dereferenceable(570) %i.ado, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1069 unwind label %.loopexit.split-lp1251.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1069: ; preds = %.noexc1072, %bb.ef
  %.0.i.i.i1070 = phi i8 [ %i.ads, %bb.ef ], [ %i.adw, %.noexc1072 ]
  %i.adx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.adi, i8 noundef signext %.0.i.i.i1070)
          to label %.noexc1074 unwind label %.loopexit.split-lp1251.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1074:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1069
  %i.ady = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.adx)
          to label %_ZNSolsEPFRSoS_E.exit546 unwind label %.loopexit.split-lp1251.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit546:                         ; preds = %.noexc1074
  %.not299 = icmp eq i32 %i.abx, 1
  br i1 %.not299, label %.preheader2087, label %bb.rt

.preheader2087:                                   ; preds = %_ZNSolsEPFRSoS_E.exit546, %bb.ec
  br label %bb.eh

bb.eh:                                            ; preds = %.preheader2087, %bb.el
  %indvars.iv1536 = phi i64 [ %indvars.iv.next1537, %bb.el ], [ 0, %.preheader2087 ] ; 4 uses
  %i.adz = load ptr, ptr %i.cm, align 8, !tbaa !133 ; 2 uses
  %i.aea = load ptr, ptr %i.cn, align 8, !tbaa !133 ; 2 uses
  %i.aeb = ptrtoint ptr %i.adz to i64
  %i.aec = ptrtoint ptr %i.aea to i64
  %i.aed = sub i64 %i.aeb, %i.aec
  %i.aee = lshr exact i64 %i.aed, 3
  %i.aef = icmp ne ptr %i.adz, null
  %.neg.i.i547 = sext i1 %i.aef to i64
  %i.aeg = add nsw i64 %i.aee, %.neg.i.i547
  %i.aeh = load ptr, ptr %i.ck, align 8, !tbaa !134
  %i.aei = load ptr, ptr %i.co, align 8, !tbaa !135
  %i.aej = ptrtoint ptr %i.aeh to i64
  %i.aek = ptrtoint ptr %i.aei to i64
  %i.ael = sub i64 %i.aej, %i.aek
  %i.aem = sdiv exact i64 %i.ael, 432
  %i.aen = add nsw i64 %i.aeg, %i.aem
  %i.aeo = load ptr, ptr %i.cp, align 8, !tbaa !136
  %i.aep = load ptr, ptr %i.cl, align 8, !tbaa !134 ; 2 uses
  %i.aeq = ptrtoint ptr %i.aeo to i64
  %i.aer = ptrtoint ptr %i.aep to i64             ; 2 uses
  %i.aes = sub i64 %i.aeq, %i.aer
  %i.aet = sdiv exact i64 %i.aes, 432
  %i.aeu = add nsw i64 %i.aen, %i.aet
  %i.aev = shl i64 %i.aeu, 32
  %i.aew = ashr exact i64 %i.aev, 32
  %i.aex = icmp slt i64 %indvars.iv1536, %i.aew
  br i1 %i.aex, label %bb.ei, label %._crit_edge.i.i548

._crit_edge.i.i548:                               ; preds = %bb.eh
  store i32 0, ptr %i.z, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  %i.aey = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.aey, ptr %21, align 8, !tbaa !137
  %i.aez = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.aez, align 8, !tbaa !54
  store i8 0, ptr %i.aey, align 8, !tbaa !55
  %i.afa = load i64, ptr %i.aab, align 8, !tbaa !54
  %i.afb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aaa, i64 noundef 0, i64 noundef %i.afa, ptr noundef nonnull %i.aey, i64 noundef 0)
          to label %.noexc556 unwind label %bb.eo ; 0 uses

bb.ei:                                            ; preds = %bb.eh
  %i.afc = load ptr, ptr %i.cq, align 8, !tbaa !135, !noalias !844
  %i.afd = ptrtoint ptr %i.afc to i64
  %i.afe = sub i64 %i.aer, %i.afd
  %i.aff = sdiv exact i64 %i.afe, 432
  %i.afg = add nsw i64 %i.aff, %indvars.iv1536    ; 2 uses
  %i.afh = icmp eq i64 %i.afg, 0
  br i1 %i.afh, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.afi = getelementptr inbounds nuw [432 x i8], ptr %i.aep, i64 %indvars.iv1536
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit553

bb.ek:                                            ; preds = %bb.ei
  %i.afj = getelementptr inbounds [8 x i8], ptr %i.aea, i64 %i.afg
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !47, !noalias !844
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit553

_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit553:        ; preds = %bb.ej, %bb.ek
  %storemerge.i.i.i.i552 = phi ptr [ %i.afk, %bb.ek ], [ %i.afi, %bb.ej ]
  invoke void @_ZN2PP3Cmd16handle_two_wordsEv(ptr noundef nonnull align 8 dereferenceable(432) %storemerge.i.i.i.i552)
          to label %bb.el unwind label %.loopexit.split-lp1251.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.el:                                            ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit553
  %indvars.iv.next1537 = add nuw nsw i64 %indvars.iv1536, 1
  br label %bb.eh, !llvm.loop !751

.noexc556:                                        ; preds = %._crit_edge.i.i548
  %i.afl = load i32, ptr %i.aan, align 8, !tbaa !227
  %i.afm = and i32 %i.afl, 3
  %.not.i.i.i554 = icmp eq i32 %i.afm, 0
  %i.afn = load i64, ptr %i.aab, align 8
  %.0.i.i.i555 = select i1 %.not.i.i.i554, i64 0, i64 %i.afn
  %i.afo = load ptr, ptr %i.aaa, align 8, !tbaa !53
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.zz, ptr noundef %i.afo, i64 noundef 0, i64 noundef %.0.i.i.i555)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit558 unwind label %bb.eo

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit558: ; preds = %.noexc556
  %i.afp = load ptr, ptr %21, align 8, !tbaa !53  ; 2 uses
  %i.afq = icmp eq ptr %i.afp, %i.aey
  br i1 %i.afq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit558
  %i.afr = load i64, ptr %i.aey, align 8, !tbaa !55
  %i.afs = add i64 %i.afr, 1
  call void @_ZdlPvm(ptr noundef %i.afp, i64 noundef %i.afs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit558, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.aft = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 8 uses
  store ptr %i.aft, ptr %22, align 8, !tbaa !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aft, ptr noundef nonnull align 1 dereferenceable(5) @.str.24, i64 5, i1 false)
  %i.afu = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 6 uses
  store i64 5, ptr %i.afu, align 8, !tbaa !54
  %i.afv = getelementptr inbounds nuw i8, ptr %22, i64 21
  store i8 0, ptr %i.afv, align 1, !tbaa !55
  %i.afw = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 5 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 5 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.agc = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.age = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.agf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.agg = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.outer

.outer:                                           ; preds = %bb.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561
  %.0179.ph = phi i1 [ true, %bb.fh ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561 ]
  %.0177.ph = phi i32 [ %.0177, %bb.fh ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561 ]
  br label %bb.em

bb.em:                                            ; preds = %.outer, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615
  %.0177 = phi i32 [ %i.anj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615 ], [ %.0177.ph, %.outer ] ; 4 uses
  %i.agh = load ptr, ptr %i.cm, align 8, !tbaa !133 ; 2 uses
  %i.agi = load ptr, ptr %i.cn, align 8, !tbaa !133 ; 2 uses
  %i.agj = ptrtoint ptr %i.agh to i64
  %i.agk = ptrtoint ptr %i.agi to i64
  %i.agl = sub i64 %i.agj, %i.agk
  %i.agm = lshr exact i64 %i.agl, 3
  %i.agn = icmp ne ptr %i.agh, null
  %.neg.i.i566 = sext i1 %i.agn to i64
  %i.ago = add nsw i64 %i.agm, %.neg.i.i566
  %i.agp = load ptr, ptr %i.ck, align 8, !tbaa !134
  %i.agq = load ptr, ptr %i.co, align 8, !tbaa !135
  %i.agr = ptrtoint ptr %i.agp to i64
  %i.ags = ptrtoint ptr %i.agq to i64
  %i.agt = sub i64 %i.agr, %i.ags
  %i.agu = sdiv exact i64 %i.agt, 432
  %i.agv = add nsw i64 %i.ago, %i.agu
  %i.agw = load ptr, ptr %i.cp, align 8, !tbaa !136
  %i.agx = load ptr, ptr %i.cl, align 8, !tbaa !134 ; 2 uses
  %i.agy = ptrtoint ptr %i.agw to i64
  %i.agz = ptrtoint ptr %i.agx to i64             ; 2 uses
  %i.aha = sub i64 %i.agy, %i.agz
  %i.ahb = sdiv exact i64 %i.aha, 432
  %i.ahc = add nsw i64 %i.agv, %i.ahb
  %i.ahd = trunc i64 %i.ahc to i32
  %i.ahe = icmp slt i32 %.0177, %i.ahd
  br i1 %i.ahe, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ahf = invoke noundef i32 @_ZN2PP11PowerParser24process_error_return_intERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
          to label %bb.gb unwind label %.loopexit.split-lp1246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.eo:                                            ; preds = %.noexc556, %._crit_edge.i.i548
  %i.ahg = landingpad { ptr, i32 }
          cleanup
  %i.ahh = load ptr, ptr %21, align 8, !tbaa !53  ; 2 uses
  %i.ahi = icmp eq ptr %i.ahh, %i.aey
  br i1 %i.ahi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567: ; preds = %bb.eo
  %i.ahj = load i64, ptr %i.aey, align 8, !tbaa !55
  %i.ahk = add i64 %i.ahj, 1
  call void @_ZdlPvm(ptr noundef %i.ahh, i64 noundef %i.ahk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520

bb.ep:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  %i.ahl = sext i32 %.0177 to i64                 ; 10 uses
  %i.ahm = load ptr, ptr %i.cq, align 8, !tbaa !135, !noalias !845
  %i.ahn = ptrtoint ptr %i.ahm to i64
  %i.aho = sub i64 %i.agz, %i.ahn
  %i.ahp = sdiv exact i64 %i.aho, 432
  %i.ahq = add nsw i64 %i.ahp, %i.ahl             ; 2 uses
  %i.ahr = icmp eq i64 %i.ahq, 0
  br i1 %i.ahr, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.ahs = getelementptr inbounds [432 x i8], ptr %i.agx, i64 %i.ahl
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit571

bb.er:                                            ; preds = %bb.ep
  %i.aht = getelementptr inbounds [8 x i8], ptr %i.agi, i64 %i.ahq
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !47, !noalias !845
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit571

_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit571:        ; preds = %bb.eq, %bb.er
  %storemerge.i.i.i.i570 = phi ptr [ %i.ahu, %bb.er ], [ %i.ahs, %bb.eq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.ahv = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i570, i64 240
  store ptr %i.afw, ptr %23, align 8, !tbaa !137, !alias.scope !846
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !53, !noalias !846 ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i570, i64 248
  %i.ahy = load i64, ptr %i.ahx, align 8, !tbaa !54, !noalias !846 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #29, !noalias !846
  store i64 %i.ahy, ptr %i.r, align 8, !tbaa !138, !noalias !846
  %i.ahz = icmp ugt i64 %i.ahy, 15
  br i1 %i.ahz, label %.noexc.i.i, label %._crit_edge.i.i.i572

.noexc.i.i:                                       ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit571
  %i.aia = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef 0)
          to label %.noexc573 unwind label %bb.fi ; 2 uses

.noexc573:                                        ; preds = %.noexc.i.i
  store ptr %i.aia, ptr %23, align 8, !tbaa !53, !alias.scope !846
  %i.aib = load i64, ptr %i.r, align 8, !tbaa !138, !noalias !846
  store i64 %i.aib, ptr %i.afw, align 8, !tbaa !55, !alias.scope !846
  br label %._crit_edge.i.i.i572

._crit_edge.i.i.i572:                             ; preds = %.noexc573, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit571
  %i.aic = phi ptr [ %i.aia, %.noexc573 ], [ %i.afw, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit571 ] ; 2 uses
  switch i64 %i.ahy, label %bb.et [
    i64 1, label %bb.es
    i64 0, label %bb.eu
  ]

bb.es:                                            ; preds = %._crit_edge.i.i.i572
  %i.aid = load i8, ptr %i.ahw, align 1, !tbaa !55
  store i8 %i.aid, ptr %i.aic, align 1, !tbaa !55
  br label %bb.eu

bb.et:                                            ; preds = %._crit_edge.i.i.i572
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aic, ptr align 1 %i.ahw, i64 %i.ahy, i1 false)
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es, %._crit_edge.i.i.i572
  %i.aie = load i64, ptr %i.r, align 8, !tbaa !138, !noalias !846 ; 2 uses
  store i64 %i.aie, ptr %i.afx, align 8, !tbaa !54, !alias.scope !846
  %i.aif = load ptr, ptr %23, align 8, !tbaa !53, !alias.scope !846
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 %i.aie
  store i8 0, ptr %i.aig, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #29, !noalias !846
  %i.aih = load i64, ptr %i.afx, align 8, !tbaa !54 ; 2 uses
  %i.aii = icmp eq i64 %i.aih, 10
  %.pre1565.a = load ptr, ptr %23, align 8, !tbaa !53 ; 4 uses
  br i1 %i.aii, label %bb.ev, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit575

bb.ev:                                            ; preds = %bb.eu
  %i.aij = load i64, ptr %.pre1565.a, align 1
  %i.aik = xor i64 %i.aij, 7232609947562829156
  %i.ail = getelementptr i8, ptr %.pre1565.a, i64 8
  %i.aim = load i16, ptr %i.ail, align 1
  %i.ain = zext i16 %i.aim to i64
  %i.aio = xor i64 %i.ain, 25971
  %i.aip = or i64 %i.aik, %i.aio
  %i.aiq = icmp ne i64 %i.aip, 0
  %i.air = zext i1 %i.aiq to i32
  %i.ais = icmp eq i32 %i.air, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit575

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit575: ; preds = %bb.ev, %bb.eu
  %i.ait = phi i1 [ false, %bb.eu ], [ %i.ais, %bb.ev ]
  %i.aiu = icmp eq ptr %.pre1565.a, %i.afw
  br i1 %i.aiu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i577, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i577: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit575
  %i.aiv = icmp ult i64 %i.aih, 16
  call void @llvm.assume(i1 %i.aiv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit575
  %i.aiw = load i64, ptr %i.afw, align 8, !tbaa !55
  %i.aix = add i64 %i.aiw, 1
  call void @_ZdlPvm(ptr noundef %.pre1565.a, i64 noundef %i.aix) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i577, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br i1 %i.ait, label %bb.ew, label %bb.fl

bb.ew:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  %i.aiy = load ptr, ptr %i.cl, align 8, !tbaa !134, !noalias !847 ; 2 uses
  %i.aiz = load ptr, ptr %i.cq, align 8, !tbaa !135, !noalias !847
  %i.aja = ptrtoint ptr %i.aiy to i64
  %i.ajb = ptrtoint ptr %i.aiz to i64
  %i.ajc = sub i64 %i.aja, %i.ajb
  %i.ajd = sdiv exact i64 %i.ajc, 432
  %i.aje = add nsw i64 %i.ajd, %i.ahl             ; 2 uses
  %i.ajf = icmp eq i64 %i.aje, 0
  br i1 %i.ajf, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ajg = getelementptr inbounds [432 x i8], ptr %i.aiy, i64 %i.ahl
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit580

bb.ey:                                            ; preds = %bb.ew
  %i.ajh = load ptr, ptr %i.cn, align 8, !tbaa !133, !noalias !847
  %i.aji = getelementptr inbounds [8 x i8], ptr %i.ajh, i64 %i.aje
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !47, !noalias !847
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit580

_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit580:        ; preds = %bb.ex, %bb.ey
  %storemerge.i.i.i.i579 = phi ptr [ %i.ajj, %bb.ey ], [ %i.ajg, %bb.ex ]
  invoke void @_ZN2PP3Cmd10get_stringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(432) %storemerge.i.i.i.i579, i32 noundef 1)
          to label %bb.ez unwind label %bb.fj

bb.ez:                                            ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit580
  %i.ajk = load ptr, ptr %22, align 8, !tbaa !53  ; 6 uses
  %i.ajl = icmp eq ptr %i.ajk, %i.aft
  %i.ajm = load ptr, ptr %24, align 8, !tbaa !53  ; 5 uses
  %i.ajn = icmp eq ptr %i.ajm, %i.agc             ; 2 uses
  br i1 %i.ajl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ez
  br i1 %i.ajn, label %bb.fa, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ez
  br i1 %i.ajn, label %bb.fa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.fa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ajo = load i64, ptr %i.agd, align 8, !tbaa !54 ; 3 uses
  %i.ajp = icmp ult i64 %i.ajo, 16
end_hunk_0
begin_hunk_1_@_ZN2PP11PowerParser14compile_bufferERi:.noexc.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.fb
  ]

bb.fb:                                            ; preds = %bb.fa
  %i.ajq = load i8, ptr %i.ajm, align 1, !tbaa !55
  store i8 %i.ajq, ptr %i.ajk, align 1, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajk, ptr align 1 %i.ajm, i64 %i.ajo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.fc, %bb.fb, %bb.fa
  %i.ajr = load i64, ptr %i.agd, align 8, !tbaa !54 ; 2 uses
  store i64 %i.ajr, ptr %i.afu, align 8, !tbaa !54
  %i.ajs = load ptr, ptr %22, align 8, !tbaa !53
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.ajr
  store i8 0, ptr %i.ajt, align 1, !tbaa !55
  %.pre.i = load ptr, ptr %24, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ajm, ptr %22, align 8, !tbaa !53
  %i.aju = load <2 x i64>, ptr %i.agd, align 8, !tbaa !55
  store <2 x i64> %i.aju, ptr %i.afu, align 8, !tbaa !55
  br label %bb.fe

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ajv = load i64, ptr %i.aft, align 8, !tbaa !55
  store ptr %i.ajm, ptr %22, align 8, !tbaa !53
  %i.ajw = load <2 x i64>, ptr %i.agd, align 8, !tbaa !55
  store <2 x i64> %i.ajw, ptr %i.afu, align 8, !tbaa !55
  %.not.i581 = icmp eq ptr %i.ajk, null
  br i1 %.not.i581, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ajk, ptr %24, align 8, !tbaa !53
  store i64 %i.ajv, ptr %i.agc, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.fe:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.agc, ptr %24, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.fd, %bb.fe
  %i.ajx = phi ptr [ %i.ajk, %bb.fd ], [ %i.agc, %bb.fe ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.agd, align 8, !tbaa !54
  store i8 0, ptr %i.ajx, align 1, !tbaa !55
  %i.ajy = load ptr, ptr %24, align 8, !tbaa !53  ; 2 uses
  %i.ajz = icmp eq ptr %i.ajy, %i.agc
  br i1 %i.ajz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i582

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i582: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aka = load i64, ptr %i.agc, align 8, !tbaa !55
  %i.akb = add i64 %i.aka, 1
  call void @_ZdlPvm(ptr noundef %i.ajy, i64 noundef %i.akb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i582
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  %i.akc = load ptr, ptr %i.cl, align 8, !tbaa !134, !noalias !848 ; 2 uses
  %i.akd = load ptr, ptr %i.cq, align 8, !tbaa !135, !noalias !848
  %i.ake = load ptr, ptr %i.cn, align 8, !tbaa !133, !noalias !848 ; 2 uses
  %i.akf = ptrtoint ptr %i.akc to i64
  %i.akg = ptrtoint ptr %i.akd to i64
  %i.akh = sub i64 %i.akf, %i.akg
  %i.aki = sdiv exact i64 %i.akh, 432
  %i.akj = add nsw i64 %i.aki, %i.ahl             ; 2 uses
  %i.akk = icmp eq i64 %i.akj, 0
  br i1 %i.akk, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584
  %i.akl = getelementptr inbounds [432 x i8], ptr %i.akc, i64 %i.ahl
  br label %_ZStplRKSt15_Deque_iteratorIN2PP3CmdERS1_PS1_El.exit586

bb.fg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584
  %i.akm = getelementptr inbounds [8 x i8], ptr %i.ake, i64 %i.akj ; 2 uses
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !47, !noalias !849
  br label %_ZStplRKSt15_Deque_iteratorIN2PP3CmdERS1_PS1_El.exit586

_ZStplRKSt15_Deque_iteratorIN2PP3CmdERS1_PS1_El.exit586: ; preds = %bb.ff, %bb.fg
  %.sroa.11.0 = phi ptr [ %i.ake, %bb.ff ], [ %i.akm, %bb.fg ] ; 2 uses
  %storemerge.i.i585 = phi ptr [ %i.akl, %bb.ff ], [ %i.akn, %bb.fg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  store ptr %storemerge.i.i585, ptr %2, align 8, !tbaa !134, !alias.scope !850, !noalias !851
  %i.ako = load ptr, ptr %.sroa.11.0, align 8, !tbaa !47, !noalias !852 ; 2 uses
  store ptr %i.ako, ptr %i.age, align 8, !tbaa !135, !alias.scope !850, !noalias !851
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 432
  store ptr %i.akp, ptr %i.agf, align 8, !tbaa !136, !alias.scope !850, !noalias !851
  store ptr %.sroa.11.0, ptr %i.agg, align 8, !tbaa !133, !alias.scope !850, !noalias !851
  invoke void @_ZNSt5dequeIN2PP3CmdESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator.31") align 8 %25, ptr noundef nonnull align 8 dereferenceable(80) %i.dq, ptr noundef nonnull dead_on_return %2)
          to label %bb.fh unwind label %bb.fk

bb.fh:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP3CmdERS1_PS1_El.exit586
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %.outer, !llvm.loop !766

bb.fi:                                            ; preds = %.noexc.i.i
  %i.akq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

bb.fj:                                            ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit580
  %i.akr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

bb.fk:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP3CmdERS1_PS1_El.exit586
  %i.aks = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

bb.fl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  %i.akt = load ptr, ptr %i.cl, align 8, !tbaa !134, !noalias !853 ; 2 uses
  %i.aku = load ptr, ptr %i.cq, align 8, !tbaa !135, !noalias !853
  %i.akv = ptrtoint ptr %i.akt to i64
  %i.akw = ptrtoint ptr %i.aku to i64
  %i.akx = sub i64 %i.akv, %i.akw
  %i.aky = sdiv exact i64 %i.akx, 432
  %i.akz = add nsw i64 %i.aky, %i.ahl             ; 2 uses
  %i.ala = icmp eq i64 %i.akz, 0
  br i1 %i.ala, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.alb = getelementptr inbounds [432 x i8], ptr %i.akt, i64 %i.ahl
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit593

bb.fn:                                            ; preds = %bb.fl
  %i.alc = load ptr, ptr %i.cn, align 8, !tbaa !133, !noalias !853
  %i.ald = getelementptr inbounds [8 x i8], ptr %i.alc, i64 %i.akz
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !47, !noalias !853
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit593

_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit593:        ; preds = %bb.fm, %bb.fn
  %storemerge.i.i.i.i592 = phi ptr [ %i.ale, %bb.fn ], [ %i.alb, %bb.fm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.alf = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i592, i64 240
  store ptr %i.afy, ptr %26, align 8, !tbaa !137, !alias.scope !854
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !53, !noalias !854 ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i592, i64 248
  %i.ali = load i64, ptr %i.alh, align 8, !tbaa !54, !noalias !854 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #29, !noalias !854
  store i64 %i.ali, ptr %i.q, align 8, !tbaa !138, !noalias !854
  %i.alj = icmp ugt i64 %i.ali, 15
  br i1 %i.alj, label %.noexc.i.i595, label %._crit_edge.i.i.i594

.noexc.i.i595:                                    ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit593
  %i.alk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc596 unwind label %bb.ft ; 2 uses

.noexc596:                                        ; preds = %.noexc.i.i595
  store ptr %i.alk, ptr %26, align 8, !tbaa !53, !alias.scope !854
  %i.all = load i64, ptr %i.q, align 8, !tbaa !138, !noalias !854
  store i64 %i.all, ptr %i.afy, align 8, !tbaa !55, !alias.scope !854
  br label %._crit_edge.i.i.i594

._crit_edge.i.i.i594:                             ; preds = %.noexc596, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit593
  %i.alm = phi ptr [ %i.alk, %.noexc596 ], [ %i.afy, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit593 ] ; 2 uses
  switch i64 %i.ali, label %bb.fp [
    i64 1, label %bb.fo
    i64 0, label %bb.fq
  ]

bb.fo:                                            ; preds = %._crit_edge.i.i.i594
  %i.aln = load i8, ptr %i.alg, align 1, !tbaa !55
  store i8 %i.aln, ptr %i.alm, align 1, !tbaa !55
  br label %bb.fq

bb.fp:                                            ; preds = %._crit_edge.i.i.i594
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alm, ptr align 1 %i.alg, i64 %i.ali, i1 false)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %._crit_edge.i.i.i594
  %i.alo = load i64, ptr %i.q, align 8, !tbaa !138, !noalias !854 ; 2 uses
  store i64 %i.alo, ptr %i.afz, align 8, !tbaa !54, !alias.scope !854
  %i.alp = load ptr, ptr %26, align 8, !tbaa !53, !alias.scope !854
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 %i.alo
  store i8 0, ptr %i.alq, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #29, !noalias !854
  %i.alr = load i64, ptr %i.afz, align 8, !tbaa !54 ; 2 uses
  %i.als = icmp eq i64 %i.alr, 6
  %.pre1566 = load ptr, ptr %26, align 8, !tbaa !53 ; 4 uses
  br i1 %i.als, label %bb.fr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit599

bb.fr:                                            ; preds = %bb.fq
  %i.alt = load i32, ptr %.pre1566, align 1
  %i.alu = xor i32 %i.alt, 1685348717
  %i.alv = getelementptr i8, ptr %.pre1566, i64 4
  %i.alw = load i16, ptr %i.alv, align 1
  %i.alx = zext i16 %i.alw to i32
  %i.aly = xor i32 %i.alx, 26213
  %i.alz = or i32 %i.alu, %i.aly
  %i.ama = icmp ne i32 %i.alz, 0                  ; 2 uses
  %i.amb = zext i1 %i.ama to i32                  ; 0 uses
  %67 = or i1 %i.ama, %.0179.ph
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit599

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit599: ; preds = %bb.fr, %bb.fq
  %.not6 = phi i1 [ true, %bb.fq ], [ %67, %bb.fr ]
  %i.amc = icmp eq ptr %.pre1566, %i.afy
  br i1 %i.amc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i601, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i601: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit599
  %i.amd = icmp ult i64 %i.alr, 16
  call void @llvm.assume(i1 %i.amd)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit599
  %i.ame = load i64, ptr %i.afy, align 8, !tbaa !55
  %i.amf = add i64 %i.ame, 1
  call void @_ZdlPvm(ptr noundef %.pre1566, i64 noundef %i.amf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i601, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br i1 %.not6, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602
  %i.amg = load i64, ptr %i.afu, align 8, !tbaa !54
  %i.amh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef %i.amg, ptr noundef nonnull @.str.27, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp1246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ft:                                            ; preds = %.noexc.i.i595
  %i.ami = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

.loopexit.split-lp1246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i610, %bb.fs, %.noexc1085, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1080, %.noexc1083, %bb.gg, %bb.ge, %bb.gc, %bb.en, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit620
  %lpad.loopexit.split-lp2076 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602
  %i.amj = load ptr, ptr %i.cl, align 8, !tbaa !134, !noalias !855 ; 2 uses
  %i.amk = load ptr, ptr %i.cq, align 8, !tbaa !135, !noalias !855
  %i.aml = ptrtoint ptr %i.amj to i64
  %i.amm = ptrtoint ptr %i.amk to i64
  %i.amn = sub i64 %i.aml, %i.amm
  %i.amo = sdiv exact i64 %i.amn, 432
  %i.amp = add nsw i64 %i.amo, %i.ahl             ; 2 uses
  %i.amq = icmp eq i64 %i.amp, 0
  br i1 %i.amq, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.amr = getelementptr inbounds [432 x i8], ptr %i.amj, i64 %i.ahl
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit608

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ams = load ptr, ptr %i.cn, align 8, !tbaa !133, !noalias !855
  %i.amt = getelementptr inbounds [8 x i8], ptr %i.ams, i64 %i.amp
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !47, !noalias !855
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit608

_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit608:        ; preds = %bb.fu, %bb.fv
  %storemerge.i.i.i.i607 = phi ptr [ %i.amu, %bb.fv ], [ %i.amr, %bb.fu ]
  store ptr %i.aga, ptr %27, align 8, !tbaa !137
  %i.amv = load ptr, ptr %22, align 8, !tbaa !53  ; 2 uses
  %i.amw = load i64, ptr %i.afu, align 8, !tbaa !54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #29
  store i64 %i.amw, ptr %i.p, align 8, !tbaa !138
  %i.amx = icmp ugt i64 %i.amw, 15
  br i1 %i.amx, label %.noexc.i610, label %._crit_edge.i.i609

.noexc.i610:                                      ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit608
  %i.amy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc611 unwind label %.loopexit.split-lp1246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc611:                                        ; preds = %.noexc.i610
  store ptr %i.amy, ptr %27, align 8, !tbaa !53
  %i.amz = load i64, ptr %i.p, align 8, !tbaa !138
  store i64 %i.amz, ptr %i.aga, align 8, !tbaa !55
  br label %._crit_edge.i.i609

._crit_edge.i.i609:                               ; preds = %.noexc611, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit608
  %i.ana = phi ptr [ %i.amy, %.noexc611 ], [ %i.aga, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit608 ] ; 2 uses
  switch i64 %i.amw, label %bb.fx [
    i64 1, label %bb.fw
    i64 0, label %bb.fy
  ]

bb.fw:                                            ; preds = %._crit_edge.i.i609
  %i.anb = load i8, ptr %i.amv, align 1, !tbaa !55
  store i8 %i.anb, ptr %i.ana, align 1, !tbaa !55
  br label %bb.fy

bb.fx:                                            ; preds = %._crit_edge.i.i609
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ana, ptr align 1 %i.amv, i64 %i.amw, i1 false)
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw, %._crit_edge.i.i609
  %i.anc = load i64, ptr %i.p, align 8, !tbaa !138 ; 2 uses
  store i64 %i.anc, ptr %i.agb, align 8, !tbaa !54
  %i.and = load ptr, ptr %27, align 8, !tbaa !53
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.anc
  store i8 0, ptr %i.ane, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #29
  invoke void @_ZN2PP3Cmd18deprecated_input01ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_18basic_stringstreamIcS4_S5_EERi(ptr noundef nonnull align 8 dereferenceable(432) %storemerge.i.i.i.i607, ptr noundef nonnull %27, ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
          to label %bb.fz unwind label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.anf = load ptr, ptr %27, align 8, !tbaa !53  ; 2 uses
  %i.ang = icmp eq ptr %i.anf, %i.aga
  br i1 %i.ang, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613: ; preds = %bb.fz
  %i.anh = load i64, ptr %i.aga, align 8, !tbaa !55
  %i.ani = add i64 %i.anh, 1
  call void @_ZdlPvm(ptr noundef %i.anf, i64 noundef %i.ani) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615: ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613
  %i.anj = add nsw i32 %.0177, 1
  br label %bb.em, !llvm.loop !766

bb.ga:                                            ; preds = %bb.fy
  %i.ank = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anl = load ptr, ptr %27, align 8, !tbaa !53  ; 2 uses
  %i.anm = icmp eq ptr %i.anl, %i.aga
  br i1 %i.anm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616: ; preds = %bb.ga
  %i.ann = load i64, ptr %i.aga, align 8, !tbaa !55
  %i.ano = add i64 %i.ann, 1
  call void @_ZdlPvm(ptr noundef %i.anl, i64 noundef %i.ano) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

bb.gb:                                            ; preds = %bb.en
  store i32 %i.ahf, ptr %1, align 4, !tbaa !31
  %i.anp = icmp sgt i32 %i.ahf, 0
  br i1 %i.anp, label %bb.gc, label %bb.gh

bb.gc:                                            ; preds = %bb.gb
  %i.anq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.28, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit620 unwind label %.loopexit.split-lp1246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit620: ; preds = %bb.gc
  %i.anr = load i32, ptr %i.z, align 4, !tbaa !31
  %i.ans = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.anr)
          to label %bb.gd unwind label %.loopexit.split-lp1246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.gd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit620
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !143
  %i.anu = getelementptr i8, ptr %i.ant, i64 -24
  %i.anv = load i64, ptr %i.anu, align 8
  %i.anw = getelementptr inbounds i8, ptr %i.ans, i64 %i.anv
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 240
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i1077 = icmp eq ptr %i.any, null
  br i1 %.not.i.i.i1077, label %bb.ge, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1078

bb.ge:                                            ; preds = %bb.gd
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1082 unwind label %.loopexit.split-lp1246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1082:                                       ; preds = %bb.ge
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1078: ; preds = %bb.gd
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 56
  %i.aoa = load i8, ptr %i.anz, align 8, !tbaa !168
  %.not.i1.i.i1079 = icmp eq i8 %i.aoa, 0
  br i1 %.not.i1.i.i1079, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1078
  %i.aob = getelementptr inbounds nuw i8, ptr %i.any, i64 67
  %i.aoc = load i8, ptr %i.aob, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1080

bb.gg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1078
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.any)
          to label %.noexc1083 unwind label %.loopexit.split-lp1246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1083:                                       ; preds = %bb.gg
  %i.aod = load ptr, ptr %i.any, align 8, !tbaa !143
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 48
  %i.aof = load ptr, ptr %i.aoe, align 8
  %i.aog = invoke noundef signext i8 %i.aof(ptr noundef nonnull align 8 dereferenceable(570) %i.any, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1080 unwind label %.loopexit.split-lp1246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1080: ; preds = %.noexc1083, %bb.gf
  %.0.i.i.i1081 = phi i8 [ %i.aoc, %bb.gf ], [ %i.aog, %.noexc1083 ]
  %i.aoh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ans, i8 noundef signext %.0.i.i.i1081)
          to label %.noexc1085 unwind label %.loopexit.split-lp1246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1085:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1080
  %i.aoi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aoh)
          to label %_ZNSolsEPFRSoS_E.exit622 unwind label %.loopexit.split-lp1246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit622:                         ; preds = %.noexc1085
  %.not302 = icmp eq i32 %i.ahf, 1
  br i1 %.not302, label %bb.gh, label %bb.rs

bb.gh:                                            ; preds = %_ZNSolsEPFRSoS_E.exit622, %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %28, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %28, i64 noundef 0)
          to label %_ZNSt5dequeIbSaIbEEC2Ev.exit unwind label %bb.gj

_ZNSt5dequeIbSaIbEEC2Ev.exit:                     ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %29, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %29, i64 noundef 0)
          to label %_ZNSt5dequeIbSaIbEEC2Ev.exit625 unwind label %bb.gk

_ZNSt5dequeIbSaIbEEC2Ev.exit625:                  ; preds = %_ZNSt5dequeIbSaIbEEC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %30, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %30, i64 noundef 0)
          to label %_ZNSt5dequeIiSaIiEEC2Ev.exit unwind label %bb.gl

_ZNSt5dequeIiSaIiEEC2Ev.exit:                     ; preds = %_ZNSt5dequeIbSaIbEEC2Ev.exit625
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  %i.aoj = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.aoj, ptr %31, align 8, !tbaa !137
end_hunk_1
begin_hunk_2_@_ZN2PP11PowerParser10list_funcsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_:bb.a
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !143
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cm, align 8, !tbaa !143
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !53 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !55
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cm, align 8, !tbaa !143
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ct) #29
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cu, ptr %3, align 8, !tbaa !143
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cw = getelementptr i8, ptr %i.cu, i64 -24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %3, i64 %i.cx
  store ptr %i.cv, ptr %i.cy, align 8, !tbaa !143
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cz, align 8, !tbaa !144
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.da) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %.body, %bb.m
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %.body ], [ %i.bp, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn6.pn
}

declare void @_ZN2PP8WhenthenC1ERiRNS_3CmdERbS4_bRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES1_(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN2PP8WhenthenESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(568) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !916
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -568
  %.not = icmp eq ptr %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2PP8WhenthenC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(568) %i.b, ptr noundef nonnull align 8 dereferenceable(568) %1)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  store ptr %i.g, ptr %i.a, align 8, !tbaa !287
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt5dequeIN2PP8WhenthenESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(568) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2PP8WhenthenD2Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  tail call void @_ZNSt5dequeIN2PP3CmdESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt5dequeIbSaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !188  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.06.i.i.i, align 8, !tbaa !190
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 512) #32
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.l = icmp ult ptr %.06.i.i.i, %i.g
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i, !llvm.loop !5

_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !187
  br label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i

_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i, %bb.b
  %i.m = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i ], [ %i.c, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = load i64, ptr %i.n, align 8, !tbaa !191
  %i.p = shl i64 %i.o, 3
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #32
  br label %_ZNSt5dequeIbSaIbEED2Ev.exit

_ZNSt5dequeIbSaIbEED2Ev.exit:                     ; preds = %bb.a, %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.q) #29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.r) #29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.s) #29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.t) #29
  tail call void @_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #29
  ret void
}

declare void @_ZN2PP3Cmd9handle_ifERbRSt5dequeIbSaIbEES5_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN2PP3Cmd9handle_doERbRSt5dequeIiSaIiEERiS1_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2PP11PowerParser11end_do_loopERiRSt5dequeIiSaIiEERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES1_(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.std::_Deque_iterator.52", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"struct.std::_Deque_iterator.52", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 1, ptr %i.a, align 4, !tbaa !31
  %i.c = load i32, ptr %1, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.k = sext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit ], [ %i.k, %bb.a ]
  %.028 = phi i32 [ %.1, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit ], [ -1, %bb.a ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !133  ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !133  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 3
  %i.r = icmp ne ptr %i.l, null
  %.neg.i.i = sext i1 %i.r to i64
  %i.s = add nsw i64 %i.q, %.neg.i.i
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !135
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 432
  %i.z = add nsw i64 %i.s, %i.y
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !136
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !134 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 432
  %i.ag = add nsw i64 %i.z, %i.af
  %i.ah = shl i64 %i.ag, 32
  %i.ai = ashr exact i64 %i.ah, 32
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i8 0, ptr %i.b, align 1, !tbaa !255
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !135, !noalias !934
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.ad, %i.al
  %i.an = sdiv exact i64 %i.am, 432
  %i.ao = add nsw i64 %i.an, %indvars.iv.next     ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds [432 x i8], ptr %i.ab, i64 %indvars.iv.next
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ao
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47, !noalias !934
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit:           ; preds = %bb.d, %bb.e
  %storemerge.i.i.i.i = phi ptr [ %i.as, %bb.e ], [ %i.aq, %bb.d ]
  %i.at = call noundef zeroext i1 @_ZN2PP3Cmd19find_matching_enddoERiRb(ptr noundef nonnull align 8 dereferenceable(432) %storemerge.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 2 uses
  %i.au = load i8, ptr %i.b, align 1, !range !257
  %7 = trunc nuw i8 %i.au to i1
  %i.av = trunc nsw i64 %indvars.iv.next to i32
  %.1 = select i1 %i.at, i32 %i.av, i32 %.028     ; 2 uses
  %i.aw = select i1 %i.at, i1 true, i1 %7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br i1 %i.aw, label %bb.f, label %bb.b, !llvm.loop !919

bb.f:                                             ; preds = %bb.b, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit
  %.2 = phi i32 [ %.1, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit ], [ %.028, %bb.b ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !261 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !261 ; 4 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = icmp ne ptr %i.ba, null
  %.neg.i.i31 = sext i1 %i.bh to i64
  %i.bi = add nsw i64 %i.bg, %.neg.i.i31
  %i.bj = shl nsw i64 %i.bi, 7
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !288
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  %i.br = add nsw i64 %i.bj, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !290
  %i.bu = load ptr, ptr %i.ay, align 8, !tbaa !288 ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  %i.bz = add nsw i64 %i.br, %i.by                ; 3 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = icmp ne i32 %.2, -1                     ; 2 uses
  %i.cc = icmp sgt i32 %i.ca, 0                   ; 2 uses
  br i1 %i.cb, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.cc, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.cd = add i64 %i.bz, 4294967295
  %i.ce = and i64 %i.cd, 4294967295               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !289, !noalias !935
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.bw, %i.ch
  %i.cj = ashr exact i64 %i.ci, 2
  %i.ck = add nsw i64 %i.cj, %i.ce                ; 5 uses
  %i.cl = icmp sgt i64 %i.ck, -1
  br i1 %i.cl, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cm = icmp samesign ult i64 %i.ck, 128
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ce
  br label %_ZNSt5dequeIiSaIiEEixEm.exit

bb.k:                                             ; preds = %bb.i
  %i.co = lshr i64 %i.ck, 7
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.cp = ashr i64 %i.ck, 7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cq = phi i64 [ %i.co, %bb.k ], [ %i.cp, %bb.l ] ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !185, !noalias !935
  %i.ct = shl nsw i64 %i.cq, 7
  %i.cu = sub nsw i64 %i.ck, %i.ct
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cu
  br label %_ZNSt5dequeIiSaIiEEixEm.exit

_ZNSt5dequeIiSaIiEEixEm.exit:                     ; preds = %bb.j, %bb.m
  %storemerge.i.i.i.i32 = phi ptr [ %i.cv, %bb.m ], [ %i.cn, %bb.j ]
  %i.cw = load i32, ptr %storemerge.i.i.i.i32, align 4, !tbaa !31
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !134, !noalias !936 ; 2 uses
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !135, !noalias !936
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 432
  %i.de = add nsw i64 %i.dd, %i.cx                ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt5dequeIiSaIiEEixEm.exit
  %i.dg = getelementptr inbounds [432 x i8], ptr %i.cy, i64 %i.cx
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit34

bb.o:                                             ; preds = %_ZNSt5dequeIiSaIiEEixEm.exit
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !133, !noalias !936
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.de
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !47, !noalias !936
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit34

_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit34:         ; preds = %bb.n, %bb.o
  %storemerge.i.i.i.i33 = phi ptr [ %i.dj, %bb.o ], [ %i.dg, %bb.n ]
  call void @_ZN2PP3Cmd11fatal_errorEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(432) %storemerge.i.i.i.i33, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit34, %bb.g
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.102, i64 noundef 32) ; 0 uses
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !143
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %i.dk, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 240
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !168
  %.not.i1.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i1.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 67
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !55
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dr)
  %i.dw = load ptr, ptr %i.dr, align 8, !tbaa !143
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef signext i8 %i.dy(ptr noundef nonnull align 8 dereferenceable(570) %i.dr, i8 noundef signext 10), !inline_history !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.r, %bb.s
  %.0.i.i.i = phi i8 [ %i.dv, %bb.r ], [ %i.dz, %bb.s ]
  %i.ea = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i8 noundef signext %.0.i.i.i)
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) ; 0 uses
  store i32 2, ptr %4, align 4, !tbaa !31
  %i.ec = call noundef i32 @_ZN2PP11PowerParser24process_error_return_intERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.103, i64 noundef 16) ; 0 uses
  %i.ef = load ptr, ptr @_ZSt4cout, align 8, !tbaa !143
  %i.eg = getelementptr i8, ptr %i.ef, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 240
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !163 ; 6 uses
  %.not.i.i.i35 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i35, label %bb.u, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36

bb.u:                                             ; preds = %bb.t
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36: ; preds = %bb.t
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.em = load i8, ptr %i.el, align 8, !tbaa !168
  %.not.i1.i.i37 = icmp eq i8 %i.em, 0
  br i1 %.not.i1.i.i37, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 67
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !55
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ek)
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !143
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef signext i8 %i.er(ptr noundef nonnull align 8 dereferenceable(570) %i.ek, i8 noundef signext 10), !inline_history !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39: ; preds = %bb.v, %bb.w
  %.0.i.i.i38 = phi i8 [ %i.eo, %bb.v ], [ %i.es, %bb.w ]
  %i.et = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i38)
  %i.eu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.et) ; 0 uses
  br label %bb.ak

bb.x:                                             ; preds = %bb.f
  br i1 %i.cc, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !289, !noalias !937
  %i.ex = and i64 %i.bz, 2147483647               ; 2 uses
end_hunk_2
