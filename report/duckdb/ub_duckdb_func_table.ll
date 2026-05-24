inline.NumInlined: 18938
inline.NumDeleted: 8313
begin_hunk_0_@_ZN6duckdbL16CSVSniffFunctionERNS_13ClientContextERNS_18TableFunctionInputERNS_9DataChunkE:bb.a

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.kr, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.agk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull @.str.209, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit576 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit576: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.agl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull @.str.199, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit578 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit578: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit576
  %i.agm = load ptr, ptr %43, align 8, !tbaa !18
  %i.agn = load i64, ptr %i.oy, align 8, !tbaa !25
  %i.ago = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %i.agm, i64 noundef %i.agn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit580 unwind label %bb.kh ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit580: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit578
  %i.agp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ago, ptr noundef nonnull @.str.199, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit582 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit582: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit580
  %i.agq = load ptr, ptr %33, align 8, !tbaa !18
  %i.agr = load i64, ptr %i.ib, align 8, !tbaa !25
  %i.ags = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ago, ptr noundef %i.agq, i64 noundef %i.agr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit584 unwind label %bb.kh ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit584: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit582, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.kq
  %i.agt = load i8, ptr %i.qu, align 8, !tbaa !2215, !range !129, !noundef !114
  %i.agu = trunc nuw i8 %i.agt to i1
  br i1 %i.agu, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit589, label %bb.ks

bb.ks:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit584
  %i.agv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull @.str.210, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit586 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit586: ; preds = %bb.ks
  %i.agw = load i64, ptr %i.qv, align 8, !tbaa !23
  %i.agx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %76, i64 noundef %i.agw)
          to label %_ZNSolsEm.exit unwind label %bb.kh

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit586
  %i.agy = load ptr, ptr %33, align 8, !tbaa !18
  %i.agz = load i64, ptr %i.ib, align 8, !tbaa !25
  %i.aha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agx, ptr noundef %i.agy, i64 noundef %i.agz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit589 unwind label %bb.kh ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit589: ; preds = %_ZNSolsEm.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit584
  %i.ahb = load i8, ptr %i.pg, align 4, !tbaa !2207, !range !129, !noundef !114
  %i.ahc = trunc nuw i8 %i.ahb to i1
  br i1 %i.ahc, label %bb.kv, label %bb.kt

bb.kt:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit589
  %i.ahd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull @.str.211, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit591 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit591: ; preds = %bb.kt
  %i.ahe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull @.str.199, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit593 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit593: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit591
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #29
  %i.ahf = load i8, ptr %i.ph, align 1, !tbaa !24 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 7 uses
  store ptr %i.ahg, ptr %81, align 8, !tbaa !22, !alias.scope !2216
  switch i8 %i.ahf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i596 [
    i8 39, label %._crit_edge.i.i.i595
    i8 0, label %._crit_edge.i.i8.i594
  ]

._crit_edge.i.i.i595:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit593
  store i16 10023, ptr %i.ahg, align 8, !alias.scope !2216
  %i.ahh = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 2, ptr %i.ahh, align 8, !tbaa !25, !alias.scope !2216
  %i.ahi = getelementptr inbounds nuw i8, ptr %81, i64 18
  store i8 0, ptr %i.ahi, align 2, !tbaa !24, !alias.scope !2216
  br label %_ZN6duckdb13FormatOptionsB5cxx11Ec.exit597

._crit_edge.i.i8.i594:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit593
  %i.ahj = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 0, ptr %i.ahj, align 8, !tbaa !25, !alias.scope !2216
  store i8 0, ptr %i.ahg, align 8, !tbaa !24, !alias.scope !2216
  br label %_ZN6duckdb13FormatOptionsB5cxx11Ec.exit597

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i596: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit593
  %i.ahk = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i8 %i.ahf, ptr %i.ahg, align 8, !tbaa !24, !alias.scope !2216
  store i64 1, ptr %i.ahk, align 8, !tbaa !25, !alias.scope !2216
  %i.ahl = getelementptr inbounds nuw i8, ptr %81, i64 17
  store i8 0, ptr %i.ahl, align 1, !tbaa !24, !alias.scope !2216
  br label %_ZN6duckdb13FormatOptionsB5cxx11Ec.exit597

_ZN6duckdb13FormatOptionsB5cxx11Ec.exit597:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i596, %._crit_edge.i.i8.i594, %._crit_edge.i.i.i595
  %i.ahm = phi i64 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i596 ], [ 0, %._crit_edge.i.i8.i594 ], [ 2, %._crit_edge.i.i.i595 ]
  %i.ahn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull %i.ahg, i64 noundef %i.ahm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit599 unwind label %bb.ku ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit599: ; preds = %_ZN6duckdb13FormatOptionsB5cxx11Ec.exit597
  %i.aho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahn, ptr noundef nonnull @.str.199, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit601 unwind label %bb.ku ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit601: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit599
  %i.ahp = load ptr, ptr %33, align 8, !tbaa !18
  %i.ahq = load i64, ptr %i.ib, align 8, !tbaa !25
  %i.ahr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahn, ptr noundef %i.ahp, i64 noundef %i.ahq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit603 unwind label %bb.ku ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit603: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit601
  %i.ahs = load ptr, ptr %81, align 8, !tbaa !18  ; 2 uses
  %i.aht = icmp eq ptr %i.ahs, %i.ahg
  br i1 %i.aht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit603
  call void @_ZdlPv(ptr noundef %i.ahs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit603, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #29
  br label %bb.kv

bb.ku:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit601, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit599, %_ZN6duckdb13FormatOptionsB5cxx11Ec.exit597
  %i.ahu = landingpad { ptr, i32 }
          cleanup
  %i.ahv = load ptr, ptr %81, align 8, !tbaa !18  ; 2 uses
  %i.ahw = icmp eq ptr %i.ahv, %i.ahg
  br i1 %i.ahw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607: ; preds = %bb.ku
  call void @_ZdlPv(ptr noundef %i.ahv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609: ; preds = %bb.ku, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #29
  br label %.body616

bb.kv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit589
  %i.ahx = load i8, ptr %i.qy, align 8, !tbaa !2219, !range !129, !noundef !114
  %i.ahy = trunc nuw i8 %i.ahx to i1
  br i1 %i.ahy, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit619, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.ahz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull @.str.212, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611: ; preds = %bb.kw
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  invoke void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(64) %50)
          to label %.noexc615 unwind label %bb.kh

.noexc615:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611
  %i.aia = load ptr, ptr %15, align 8, !tbaa !18
  %i.aib = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aic = load i64, ptr %i.aib, align 8, !tbaa !25
  %i.aid = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %i.aia, i64 noundef %i.aic)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.kx ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc615
  %i.aie = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aig = icmp eq ptr %i.aie, %i.aif
  br i1 %i.aig, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i614, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i612

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i612: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  call void @_ZdlPv(ptr noundef %i.aie) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i614

bb.kx:                                            ; preds = %.noexc615
  %i.aih = landingpad { ptr, i32 }
          cleanup
  %i.aii = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aik = icmp eq ptr %i.aii, %i.aij
  br i1 %i.aik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.kx
  call void @_ZdlPv(ptr noundef %i.aii) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.kx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %.body616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i614: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i612
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.ail = load ptr, ptr %33, align 8, !tbaa !18
  %i.aim = load i64, ptr %i.ib, align 8, !tbaa !25
  %i.ain = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %i.ail, i64 noundef %i.aim)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit619 unwind label %bb.kh ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit619: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i614, %bb.kv
  %i.aio = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull @.str.213, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit621 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit621: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit619
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  %i.aip = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 5 uses
  store ptr %i.aip, ptr %82, align 8, !tbaa !22, !alias.scope !2226
  %i.aiq = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 2 uses
  store i64 0, ptr %i.aiq, align 8, !tbaa !25, !alias.scope !2226
  store i8 0, ptr %i.aip, align 8, !tbaa !24, !alias.scope !2226
  %i.air = getelementptr inbounds nuw i8, ptr %52, i64 48
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !2227, !noalias !2226 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.ais, null
  br i1 %.not5.i.i, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit621
  %86 = getelementptr inbounds nuw i8, ptr %52, i64 32
  %87 = load ptr, ptr %86, align 8, !noalias !2226 ; 2 uses
  %88 = icmp ugt ptr %i.ais, %87
  %.08.i.i.i = select i1 %88, ptr %i.ais, ptr %87
  %i.ait = getelementptr inbounds nuw i8, ptr %52, i64 40
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !2231, !noalias !2226 ; 2 uses
  %i.aiv = ptrtoint ptr %.08.i.i.i to i64
  %i.aiw = ptrtoint ptr %i.aiu to i64
  %i.aix = sub i64 %i.aiv, %i.aiw
  %i.aiy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %82, i64 noundef 0, i64 noundef 0, ptr noundef %i.aiu, i64 noundef %i.aix)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.kz ; 0 uses

bb.kz:                                            ; preds = %bb.la, %bb.ky
  %i.aiz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aja = load ptr, ptr %82, align 8, !tbaa !18, !alias.scope !2226 ; 2 uses
  %i.ajb = icmp eq ptr %i.aja, %i.aip
  br i1 %i.ajb, label %.body626, label %.body626.sink.split

bb.la:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit621
  %i.ajc = getelementptr inbounds nuw i8, ptr %52, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(32) %i.ajc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.kz

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.la, %bb.ky
  %i.ajd = load ptr, ptr %82, align 8, !tbaa !18
  %i.aje = load i64, ptr %i.aiq, align 8, !tbaa !25
  %i.ajf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %i.ajd, i64 noundef %i.aje)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit629 unwind label %bb.lj ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit629: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ajg = load ptr, ptr %82, align 8, !tbaa !18  ; 2 uses
  %i.ajh = icmp eq ptr %i.ajg, %i.aip
  br i1 %i.ajh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit629
  call void @_ZdlPv(ptr noundef %i.ajg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit629, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #29
  %i.aji = load ptr, ptr %i.xs, align 8, !tbaa !1068 ; 2 uses
  %.not10.i.i.i.i633 = icmp eq ptr %i.aji, null
  br i1 %.not10.i.i.i.i633, label %.critedge.i644, label %.lr.ph.i.i.i.i634

.lr.ph.i.i.i.i634:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, %.lr.ph.i.i.i.i634
  %.012.i.i.i.i635 = phi ptr [ %.1.i.i.i.i640, %.lr.ph.i.i.i.i634 ], [ %i.aji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632 ] ; 4 uses
  %.0811.i.i.i.i636 = phi ptr [ %.19.i.i.i.i637, %.lr.ph.i.i.i.i634 ], [ %i.xu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632 ] ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i635, i64 32
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !1397
  %i.ajl = icmp ult i8 %i.ajk, 15                 ; 3 uses
  %.19.i.i.i.i637 = select i1 %i.ajl, ptr %.0811.i.i.i.i636, ptr %.012.i.i.i.i635 ; 5 uses
  %.1.in.v.i.i.i.i638 = select i1 %i.ajl, i64 24, i64 16
  %.1.in.i.i.i.i639 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i635, i64 %.1.in.v.i.i.i.i638
  %.1.i.i.i.i640 = load ptr, ptr %.1.in.i.i.i.i639, align 8, !tbaa !1398 ; 2 uses
  %.not.i.i.i.i641 = icmp eq ptr %.1.i.i.i.i640, null
  br i1 %.not.i.i.i.i641, label %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i642, label %.lr.ph.i.i.i.i634, !llvm.loop !2200

_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i642: ; preds = %.lr.ph.i.i.i.i634
  %i.ajm = icmp eq ptr %.19.i.i.i.i637, %i.xu
  br i1 %i.ajm, label %.critedge.i644, label %bb.lb

bb.lb:                                            ; preds = %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i642
  %.19.i.i.i.i637.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ajl, ptr %.0811.i.i.i.i636, ptr %.012.i.i.i.i635
  %.19.i.i.i.i637.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i637.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ajn = load i8, ptr %.19.i.i.i.i637.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !1397
  %i.ajo = icmp ugt i8 %i.ajn, 15
  br i1 %i.ajo, label %.critedge.i644, label %bb.lc

.critedge.i644:                                   ; preds = %bb.lb, %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i642, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632
  %.08.lcssa.i.i.i11.i645 = phi ptr [ %.19.i.i.i.i637, %bb.lb ], [ %.19.i.i.i.i637, %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i642 ], [ %i.xu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store ptr @_ZN6duckdb11LogicalType4DATEE, ptr %13, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.ajp = invoke ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.xr, ptr %.08.lcssa.i.i.i11.i645, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc646 unwind label %bb.kh

.noexc646:                                        ; preds = %.critedge.i644
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.lc

bb.lc:                                            ; preds = %.noexc646, %bb.lb
  %.sroa.06.0.i643 = phi ptr [ %i.ajp, %.noexc646 ], [ %.19.i.i.i.i637, %bb.lb ]
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i643, i64 40
  %i.ajr = load i8, ptr %i.ajq, align 8, !tbaa !2232, !range !129, !noundef !114
  %i.ajs = trunc nuw i8 %i.ajr to i1
  br i1 %i.ajs, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit687, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.ajt = load ptr, ptr %i.xs, align 8, !tbaa !1068 ; 2 uses
  %.not10.i.i.i.i648 = icmp eq ptr %i.ajt, null
  br i1 %.not10.i.i.i.i648, label %.critedge.i659, label %.lr.ph.i.i.i.i649

.lr.ph.i.i.i.i649:                                ; preds = %bb.ld, %.lr.ph.i.i.i.i649
  %.012.i.i.i.i650 = phi ptr [ %.1.i.i.i.i655, %.lr.ph.i.i.i.i649 ], [ %i.ajt, %bb.ld ] ; 4 uses
  %.0811.i.i.i.i651 = phi ptr [ %.19.i.i.i.i652, %.lr.ph.i.i.i.i649 ], [ %i.xu, %bb.ld ] ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i650, i64 32
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !1397
  %i.ajw = icmp ult i8 %i.ajv, 15                 ; 3 uses
  %.19.i.i.i.i652 = select i1 %i.ajw, ptr %.0811.i.i.i.i651, ptr %.012.i.i.i.i650 ; 5 uses
  %.1.in.v.i.i.i.i653 = select i1 %i.ajw, i64 24, i64 16
  %.1.in.i.i.i.i654 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i650, i64 %.1.in.v.i.i.i.i653
  %.1.i.i.i.i655 = load ptr, ptr %.1.in.i.i.i.i654, align 8, !tbaa !1398 ; 2 uses
  %.not.i.i.i.i656 = icmp eq ptr %.1.i.i.i.i655, null
  br i1 %.not.i.i.i.i656, label %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i657, label %.lr.ph.i.i.i.i649, !llvm.loop !2200

_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i657: ; preds = %.lr.ph.i.i.i.i649
  %i.ajx = icmp eq ptr %.19.i.i.i.i652, %i.xu
  br i1 %i.ajx, label %.critedge.i659, label %bb.le

bb.le:                                            ; preds = %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i657
  %.19.i.i.i.i652.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ajw, ptr %.0811.i.i.i.i651, ptr %.012.i.i.i.i650
  %.19.i.i.i.i652.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i652.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ajy = load i8, ptr %.19.i.i.i.i652.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !1397
  %i.ajz = icmp ugt i8 %i.ajy, 15
  br i1 %i.ajz, label %.critedge.i659, label %bb.lf

.critedge.i659:                                   ; preds = %bb.le, %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i657, %bb.ld
  %.08.lcssa.i.i.i11.i660 = phi ptr [ %.19.i.i.i.i652, %bb.le ], [ %.19.i.i.i.i652, %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i657 ], [ %i.xu, %bb.ld ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  store ptr @_ZN6duckdb11LogicalType4DATEE, ptr %11, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.aka = invoke ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.xr, ptr %.08.lcssa.i.i.i11.i660, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc661 unwind label %bb.kh

.noexc661:                                        ; preds = %.critedge.i659
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.lf

bb.lf:                                            ; preds = %.noexc661, %bb.le
  %.sroa.06.0.i658 = phi ptr [ %i.aka, %.noexc661 ], [ %.19.i.i.i.i652, %bb.le ]
  %i.akb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i658, i64 64
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !25
  %i.akd = icmp eq i64 %i.akc, 0
  br i1 %i.akd, label %bb.lk, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.ake = load ptr, ptr %33, align 8, !tbaa !18
  %i.akf = load i64, ptr %i.ib, align 8, !tbaa !25
  %i.akg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %i.ake, i64 noundef %i.akf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit664 unwind label %bb.kh ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit664: ; preds = %bb.lg
  %i.akh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akg, ptr noundef nonnull @.str.214, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit666 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit666: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit664
  %i.aki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akg, ptr noundef nonnull @.str.199, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit668 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit668: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit666
  %i.akj = load ptr, ptr %i.xs, align 8, !tbaa !1068 ; 2 uses
  %.not10.i.i.i.i669 = icmp eq ptr %i.akj, null
  br i1 %.not10.i.i.i.i669, label %.critedge.i680, label %.lr.ph.i.i.i.i670

.lr.ph.i.i.i.i670:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit668, %.lr.ph.i.i.i.i670
  %.012.i.i.i.i671 = phi ptr [ %.1.i.i.i.i676, %.lr.ph.i.i.i.i670 ], [ %i.akj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit668 ] ; 4 uses
  %.0811.i.i.i.i672 = phi ptr [ %.19.i.i.i.i673, %.lr.ph.i.i.i.i670 ], [ %i.xu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit668 ] ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i671, i64 32
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !1397
  %i.akm = icmp ult i8 %i.akl, 15                 ; 3 uses
  %.19.i.i.i.i673 = select i1 %i.akm, ptr %.0811.i.i.i.i672, ptr %.012.i.i.i.i671 ; 5 uses
  %.1.in.v.i.i.i.i674 = select i1 %i.akm, i64 24, i64 16
  %.1.in.i.i.i.i675 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i671, i64 %.1.in.v.i.i.i.i674
  %.1.i.i.i.i676 = load ptr, ptr %.1.in.i.i.i.i675, align 8, !tbaa !1398 ; 2 uses
  %.not.i.i.i.i677 = icmp eq ptr %.1.i.i.i.i676, null
  br i1 %.not.i.i.i.i677, label %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i678, label %.lr.ph.i.i.i.i670, !llvm.loop !2200

_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i678: ; preds = %.lr.ph.i.i.i.i670
  %i.akn = icmp eq ptr %.19.i.i.i.i673, %i.xu
  br i1 %i.akn, label %.critedge.i680, label %bb.lh

bb.lh:                                            ; preds = %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i678
  %.19.i.i.i.i673.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.akm, ptr %.0811.i.i.i.i672, ptr %.012.i.i.i.i671
  %.19.i.i.i.i673.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i673.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ako = load i8, ptr %.19.i.i.i.i673.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !1397
  %i.akp = icmp ugt i8 %i.ako, 15
  br i1 %i.akp, label %.critedge.i680, label %bb.li

.critedge.i680:                                   ; preds = %bb.lh, %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i678, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit668
  %.08.lcssa.i.i.i11.i681 = phi ptr [ %.19.i.i.i.i673, %bb.lh ], [ %.19.i.i.i.i673, %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i678 ], [ %i.xu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit668 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store ptr @_ZN6duckdb11LogicalType4DATEE, ptr %9, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.akq = invoke ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.xr, ptr %.08.lcssa.i.i.i11.i681, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc682 unwind label %bb.kh

.noexc682:                                        ; preds = %.critedge.i680
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.li

bb.li:                                            ; preds = %.noexc682, %bb.lh
  %.sroa.06.0.i679 = phi ptr [ %i.akq, %.noexc682 ], [ %.19.i.i.i.i673, %bb.lh ] ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i679, i64 56
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !18
  %i.akt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i679, i64 64
  %i.aku = load i64, ptr %i.akt, align 8, !tbaa !25
  %i.akv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akg, ptr noundef %i.aks, i64 noundef %i.aku)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit685 unwind label %bb.kh

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit685: ; preds = %bb.li
end_hunk_0
begin_hunk_1_@_ZN6duckdbL16CSVSniffFunctionERNS_13ClientContextERNS_18TableFunctionInputERNS_9DataChunkE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.lp

bb.lp:                                            ; preds = %.noexc710, %bb.lo
  %.sroa.06.0.i707 = phi ptr [ %i.alr, %.noexc710 ], [ %.19.i.i.i.i701, %bb.lo ]
  %i.als = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i707, i64 40
  %i.alt = load i8, ptr %i.als, align 8, !tbaa !2232, !range !129, !noundef !114
  %i.alu = trunc nuw i8 %i.alt to i1
  br i1 %i.alu, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit751, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.alv = load ptr, ptr %i.xs, align 8, !tbaa !1068 ; 2 uses
  %.not10.i.i.i.i712 = icmp eq ptr %i.alv, null
  br i1 %.not10.i.i.i.i712, label %.critedge.i723, label %.lr.ph.i.i.i.i713

.lr.ph.i.i.i.i713:                                ; preds = %bb.lq, %.lr.ph.i.i.i.i713
  %.012.i.i.i.i714 = phi ptr [ %.1.i.i.i.i719, %.lr.ph.i.i.i.i713 ], [ %i.alv, %bb.lq ] ; 4 uses
  %.0811.i.i.i.i715 = phi ptr [ %.19.i.i.i.i716, %.lr.ph.i.i.i.i713 ], [ %i.xu, %bb.lq ] ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i714, i64 32
  %i.alx = load i8, ptr %i.alw, align 1, !tbaa !1397
  %i.aly = icmp ult i8 %i.alx, 19                 ; 3 uses
  %.19.i.i.i.i716 = select i1 %i.aly, ptr %.0811.i.i.i.i715, ptr %.012.i.i.i.i714 ; 5 uses
  %.1.in.v.i.i.i.i717 = select i1 %i.aly, i64 24, i64 16
  %.1.in.i.i.i.i718 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i714, i64 %.1.in.v.i.i.i.i717
  %.1.i.i.i.i719 = load ptr, ptr %.1.in.i.i.i.i718, align 8, !tbaa !1398 ; 2 uses
  %.not.i.i.i.i720 = icmp eq ptr %.1.i.i.i.i719, null
  br i1 %.not.i.i.i.i720, label %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i721, label %.lr.ph.i.i.i.i713, !llvm.loop !2200

_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i721: ; preds = %.lr.ph.i.i.i.i713
  %i.alz = icmp eq ptr %.19.i.i.i.i716, %i.xu
  br i1 %i.alz, label %.critedge.i723, label %bb.lr

bb.lr:                                            ; preds = %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i721
  %.19.i.i.i.i716.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aly, ptr %.0811.i.i.i.i715, ptr %.012.i.i.i.i714
  %.19.i.i.i.i716.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i716.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ama = load i8, ptr %.19.i.i.i.i716.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !1397
  %i.amb = icmp ugt i8 %i.ama, 19
  br i1 %i.amb, label %.critedge.i723, label %bb.ls

.critedge.i723:                                   ; preds = %bb.lr, %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i721, %bb.lq
  %.08.lcssa.i.i.i11.i724 = phi ptr [ %.19.i.i.i.i716, %bb.lr ], [ %.19.i.i.i.i716, %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i721 ], [ %i.xu, %bb.lq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr @_ZN6duckdb11LogicalType9TIMESTAMPE, ptr %5, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.amc = invoke ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.xr, ptr %.08.lcssa.i.i.i11.i724, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc725 unwind label %bb.kh

.noexc725:                                        ; preds = %.critedge.i723
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ls

bb.ls:                                            ; preds = %.noexc725, %bb.lr
  %.sroa.06.0.i722 = phi ptr [ %i.amc, %.noexc725 ], [ %.19.i.i.i.i716, %bb.lr ]
  %i.amd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i722, i64 64
  %i.ame = load i64, ptr %i.amd, align 8, !tbaa !25
  %i.amf = icmp eq i64 %i.ame, 0
  br i1 %i.amf, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit751, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.amg = load ptr, ptr %33, align 8, !tbaa !18
  %i.amh = load i64, ptr %i.ib, align 8, !tbaa !25
  %i.ami = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %i.amg, i64 noundef %i.amh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit728 unwind label %bb.kh ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit728: ; preds = %bb.lt
  %i.amj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ami, ptr noundef nonnull @.str.216, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit730 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit730: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit728
  %i.amk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ami, ptr noundef nonnull @.str.199, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit732 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit732: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit730
  %i.aml = load ptr, ptr %i.xs, align 8, !tbaa !1068 ; 2 uses
  %.not10.i.i.i.i733 = icmp eq ptr %i.aml, null
  br i1 %.not10.i.i.i.i733, label %.critedge.i744, label %.lr.ph.i.i.i.i734

.lr.ph.i.i.i.i734:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit732, %.lr.ph.i.i.i.i734
  %.012.i.i.i.i735 = phi ptr [ %.1.i.i.i.i740, %.lr.ph.i.i.i.i734 ], [ %i.aml, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit732 ] ; 4 uses
  %.0811.i.i.i.i736 = phi ptr [ %.19.i.i.i.i737, %.lr.ph.i.i.i.i734 ], [ %i.xu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit732 ] ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i735, i64 32
  %i.amn = load i8, ptr %i.amm, align 1, !tbaa !1397
  %i.amo = icmp ult i8 %i.amn, 19                 ; 3 uses
  %.19.i.i.i.i737 = select i1 %i.amo, ptr %.0811.i.i.i.i736, ptr %.012.i.i.i.i735 ; 5 uses
  %.1.in.v.i.i.i.i738 = select i1 %i.amo, i64 24, i64 16
  %.1.in.i.i.i.i739 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i735, i64 %.1.in.v.i.i.i.i738
  %.1.i.i.i.i740 = load ptr, ptr %.1.in.i.i.i.i739, align 8, !tbaa !1398 ; 2 uses
  %.not.i.i.i.i741 = icmp eq ptr %.1.i.i.i.i740, null
  br i1 %.not.i.i.i.i741, label %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i742, label %.lr.ph.i.i.i.i734, !llvm.loop !2200

_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i742: ; preds = %.lr.ph.i.i.i.i734
  %i.amp = icmp eq ptr %.19.i.i.i.i737, %i.xu
  br i1 %i.amp, label %.critedge.i744, label %bb.lu

bb.lu:                                            ; preds = %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i742
  %.19.i.i.i.i737.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.amo, ptr %.0811.i.i.i.i736, ptr %.012.i.i.i.i735
  %.19.i.i.i.i737.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i737.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.amq = load i8, ptr %.19.i.i.i.i737.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !1397
  %i.amr = icmp ugt i8 %i.amq, 19
  br i1 %i.amr, label %.critedge.i744, label %bb.lv

.critedge.i744:                                   ; preds = %bb.lu, %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i742, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit732
  %.08.lcssa.i.i.i11.i745 = phi ptr [ %.19.i.i.i.i737, %bb.lu ], [ %.19.i.i.i.i737, %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit.i742 ], [ %i.xu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit732 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr @_ZN6duckdb11LogicalType9TIMESTAMPE, ptr %3, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ams = invoke ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.xr, ptr %.08.lcssa.i.i.i11.i745, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc746 unwind label %bb.kh

.noexc746:                                        ; preds = %.critedge.i744
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.lv

bb.lv:                                            ; preds = %.noexc746, %bb.lu
  %.sroa.06.0.i743 = phi ptr [ %i.ams, %.noexc746 ], [ %.19.i.i.i.i737, %bb.lu ] ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i743, i64 56
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !18
  %i.amv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i743, i64 64
  %i.amw = load i64, ptr %i.amv, align 8, !tbaa !25
  %i.amx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ami, ptr noundef %i.amu, i64 noundef %i.amw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit749 unwind label %bb.kh

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit749: ; preds = %bb.lv
  %i.amy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.amx, ptr noundef nonnull @.str.199, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit751 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit751: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit749, %bb.ls, %bb.lp
  %i.amz = load i64, ptr %i.aax, align 8, !tbaa !1658
  %i.ana = icmp eq i64 %i.amz, 0
  br i1 %i.ana, label %bb.ma, label %bb.lw

bb.lw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit751
  %i.anb = load ptr, ptr %33, align 8, !tbaa !18
  %i.anc = load i64, ptr %i.ib, align 8, !tbaa !25
  %i.and = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %i.anb, i64 noundef %i.anc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit753 unwind label %bb.kh

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit753: ; preds = %bb.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #29
  invoke void @_ZNK6duckdb16CSVReaderOptions24GetUserDefinedParametersB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %83, ptr noundef nonnull align 8 dereferenceable(1033) %i.ao)
          to label %bb.lx unwind label %bb.ly

bb.lx:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit753
  %i.ane = load ptr, ptr %83, align 8, !tbaa !18
  %i.anf = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.ang = load i64, ptr %i.anf, align 8, !tbaa !25
  %i.anh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.and, ptr noundef %i.ane, i64 noundef %i.ang)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit755 unwind label %bb.lz ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit755: ; preds = %bb.lx
  %i.ani = load ptr, ptr %83, align 8, !tbaa !18  ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %83, i64 16
  %i.ank = icmp eq ptr %i.ani, %i.anj
  br i1 %i.ank, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i756

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i756: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit755
  call void @_ZdlPv(ptr noundef %i.ani) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit755, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i756
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #29
  br label %bb.ma

bb.ly:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit753
  %i.anl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761

bb.lz:                                            ; preds = %bb.lx
  %i.anm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ann = load ptr, ptr %83, align 8, !tbaa !18  ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %83, i64 16
  %i.anp = icmp eq ptr %i.ann, %i.ano
  br i1 %i.anp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i759

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i759: ; preds = %bb.lz
  call void @_ZdlPv(ptr noundef %i.ann) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761: ; preds = %bb.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i759, %bb.ly
  %.pn194 = phi { ptr, i32 } [ %i.anl, %bb.ly ], [ %i.anm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i759 ], [ %i.anm, %bb.lz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #29
  br label %.body616

bb.ma:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit751
  %i.anq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull @.str.217, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit763 unwind label %bb.kh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit763: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !2246)
  call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  %i.anr = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 5 uses
  store ptr %i.anr, ptr %85, align 8, !tbaa !22, !alias.scope !2252
  %i.ans = getelementptr inbounds nuw i8, ptr %85, i64 8
  store i64 0, ptr %i.ans, align 8, !tbaa !25, !alias.scope !2252
  store i8 0, ptr %i.anr, align 8, !tbaa !24, !alias.scope !2252
  %i.ant = getelementptr inbounds nuw i8, ptr %76, i64 48
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !2227, !noalias !2252 ; 3 uses
  %.not5.i.i766 = icmp eq ptr %i.anu, null
  br i1 %.not5.i.i766, label %bb.md, label %bb.mb

bb.mb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit763
  %89 = getelementptr inbounds nuw i8, ptr %76, i64 32
  %90 = load ptr, ptr %89, align 8, !noalias !2252 ; 2 uses
  %91 = icmp ugt ptr %i.anu, %90
  %.08.i.i.i764 = select i1 %91, ptr %i.anu, ptr %90
  %i.anv = getelementptr inbounds nuw i8, ptr %76, i64 40
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !2231, !noalias !2252 ; 2 uses
  %i.anx = ptrtoint ptr %.08.i.i.i764 to i64
  %i.any = ptrtoint ptr %i.anw to i64
  %i.anz = sub i64 %i.anx, %i.any
  %i.aoa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %85, i64 noundef 0, i64 noundef 0, ptr noundef %i.anw, i64 noundef %i.anz)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit773 unwind label %bb.mc ; 0 uses

bb.mc:                                            ; preds = %bb.md, %bb.mb
  %i.aob = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aoc = load ptr, ptr %85, align 8, !tbaa !18, !alias.scope !2252 ; 2 uses
  %i.aod = icmp eq ptr %i.aoc, %i.anr
  br i1 %i.aod, label %.body771, label %.body771.sink.split

bb.md:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit763
  %i.aoe = getelementptr inbounds nuw i8, ptr %76, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef nonnull align 8 dereferenceable(32) %i.aoe)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit773 unwind label %bb.mc

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit773: ; preds = %bb.md, %bb.mb
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %84, ptr noundef nonnull %85)
          to label %bb.me unwind label %bb.nd

bb.me:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit773
  invoke void @_ZN6duckdb9DataChunk8SetValueEmmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 11, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %84)
          to label %bb.mf unwind label %bb.ne

bb.mf:                                            ; preds = %bb.me
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %84) #29
  %i.aof = load ptr, ptr %85, align 8, !tbaa !18  ; 2 uses
  %i.aog = icmp eq ptr %i.aof, %i.anr
  br i1 %i.aog, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i774

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i774: ; preds = %bb.mf
  call void @_ZdlPv(ptr noundef %i.aof) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776: ; preds = %bb.mf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i774
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #29
  store i8 1, ptr %i.m, align 8, !tbaa !2139
  %i.aoh = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.aoh, ptr %76, align 8, !tbaa !48
  %i.aoi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.aoj = getelementptr i8, ptr %i.aoh, i64 -24  ; 2 uses
  %i.aok = load i64, ptr %i.aoj, align 8
  %i.aol = getelementptr inbounds i8, ptr %76, i64 %i.aok
  store ptr %i.aoi, ptr %i.aol, align 8, !tbaa !48
  %i.aom = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aom, align 8, !tbaa !48
  %i.aon = getelementptr inbounds nuw i8, ptr %76, i64 80
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !18 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %76, i64 96
  %i.aoq = icmp eq ptr %i.aoo, %i.aop
  br i1 %i.aoq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776
  call void @_ZdlPv(ptr noundef %i.aoo) #31
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aom, align 8, !tbaa !48
  %i.aor = getelementptr inbounds nuw i8, ptr %76, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aor) #29
  %i.aos = getelementptr inbounds nuw i8, ptr %76, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aos) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb13StrTimeFormatE, i64 16), ptr %68, align 8, !tbaa !48
  %i.aot = getelementptr inbounds nuw i8, ptr %68, i64 96
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !2253 ; 2 uses
  %.not.i.i.i.i777 = icmp eq ptr %i.aou, null
  br i1 %.not.i.i.i.i777, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.mg

bb.mg:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.aou) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.mg, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.aov = getelementptr inbounds nuw i8, ptr %68, i64 64 ; 2 uses
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !40 ; 3 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %68, i64 72
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aow, %i.aoy
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i778

.lr.ph.i.i.i.i778:                                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.apc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.aow, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 3 uses
  %i.aoz = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.apb = icmp eq ptr %i.aoz, %i.apa
  br i1 %i.apb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i779

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i779: ; preds = %.lr.ph.i.i.i.i778
  call void @_ZdlPv(ptr noundef %i.aoz) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i778, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i779
  %i.apc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.apc, %i.aoy
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i778, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aov, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.apd = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.aow, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.apd, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.mh

bb.mh:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.apd) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.mh, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ape = getelementptr inbounds nuw i8, ptr %68, i64 40
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !2254 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.apf, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i, label %bb.mi

bb.mi:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.apf) #31
  br label %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i: ; preds = %bb.mi, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.apg = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !18 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %68, i64 24
  %i.apj = icmp eq ptr %i.aph, %i.api
  br i1 %i.apj, label %_ZN6duckdb13StrTimeFormatD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i780

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i780: ; preds = %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.aph) #31
  br label %_ZN6duckdb13StrTimeFormatD2Ev.exit

_ZN6duckdb13StrTimeFormatD2Ev.exit:               ; preds = %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i780
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb13StrTimeFormatE, i64 16), ptr %63, align 8, !tbaa !48
  %i.apk = getelementptr inbounds nuw i8, ptr %63, i64 96
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !2253 ; 2 uses
  %.not.i.i.i.i784 = icmp eq ptr %i.apl, null
  br i1 %.not.i.i.i.i784, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i785, label %bb.mj

bb.mj:                                            ; preds = %_ZN6duckdb13StrTimeFormatD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.apl) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i785

_ZNSt6vectorIiSaIiEED2Ev.exit.i785:               ; preds = %bb.mj, %_ZN6duckdb13StrTimeFormatD2Ev.exit
  %i.apm = getelementptr inbounds nuw i8, ptr %63, i64 64 ; 2 uses
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !40 ; 3 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %63, i64 72
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i.i786 = icmp eq ptr %i.apn, %i.app
  br i1 %.not4.i.i.i.i786, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i794, label %.lr.ph.i.i.i.i787

.lr.ph.i.i.i.i787:                                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i785, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i790
  %.05.i.i.i.i788 = phi ptr [ %i.apt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i790 ], [ %i.apn, %_ZNSt6vectorIiSaIiEED2Ev.exit.i785 ] ; 3 uses
  %i.apq = load ptr, ptr %.05.i.i.i.i788, align 8, !tbaa !18 ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i788, i64 16
  %i.aps = icmp eq ptr %i.apq, %i.apr
  br i1 %i.aps, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i790, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i789

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i789: ; preds = %.lr.ph.i.i.i.i787
  call void @_ZdlPv(ptr noundef %i.apq) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i790

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i790: ; preds = %.lr.ph.i.i.i.i787, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i789
  %i.apt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i788, i64 32 ; 2 uses
  %.not.i.i.i1.i791 = icmp eq ptr %i.apt, %i.app
  br i1 %.not.i.i.i1.i791, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i792, label %.lr.ph.i.i.i.i787, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i792: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i790
  %.pr.i.i793 = load ptr, ptr %i.apm, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i794

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i794: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i792, %_ZNSt6vectorIiSaIiEED2Ev.exit.i785
  %i.apu = phi ptr [ %.pr.i.i793, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i792 ], [ %i.apn, %_ZNSt6vectorIiSaIiEED2Ev.exit.i785 ] ; 2 uses
  %.not.i.i1.i.i795 = icmp eq ptr %i.apu, null
  br i1 %.not.i.i1.i.i795, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i796, label %bb.mk

bb.mk:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i794
  call void @_ZdlPv(ptr noundef nonnull %i.apu) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i796

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i796: ; preds = %bb.mk, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i794
  %i.apv = getelementptr inbounds nuw i8, ptr %63, i64 40
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !2254 ; 2 uses
  %.not.i.i.i2.i797 = icmp eq ptr %i.apw, null
  br i1 %.not.i.i.i2.i797, label %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i798, label %bb.ml

bb.ml:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i796
  call void @_ZdlPv(ptr noundef nonnull %i.apw) #31
  br label %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i798

_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i798: ; preds = %bb.ml, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i796
  %i.apx = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !18 ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %63, i64 24
  %i.aqa = icmp eq ptr %i.apy, %i.apz
  br i1 %i.aqa, label %_ZN6duckdb13StrTimeFormatD2Ev.exit803, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i799

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i799: ; preds = %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i798
  call void @_ZdlPv(ptr noundef %i.apy) #31
end_hunk_1
