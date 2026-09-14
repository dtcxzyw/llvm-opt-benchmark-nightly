Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatHDL?download=true
inline.NumInlined: 1728
inline.NumDeleted: 605
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo:bb.a
  %i.l = xor i32 %i.k, 1768843620
  %i.m = or i32 %i.i, %i.l
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread408, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.67, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.q = load ptr, ptr %2, align 8, !tbaa !31
  %i.r = load i64, ptr %i.d, align 8, !tbaa !25
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.q, i64 noundef %i.r)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.68, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160
  %i.v = load ptr, ptr %5, align 8, !tbaa !31
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef %i.v)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #29
          to label %bb.dd unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0122 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.0122, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.0122, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn154411 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.d
  %.pn154.pn = phi { ptr, i32 } [ %.pn154411, %bb.f ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.w, %bb.d ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.dc

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread408: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ae = load ptr, ptr %3, align 8, !tbaa !19
  %i.af = getelementptr i8, ptr %i.ae, i64 -24    ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !179
  %i.ak = and i32 %i.aj, -261
  %i.al = or disjoint i32 %i.ak, 4
  store i32 %i.al, ptr %i.ai, align 8, !tbaa !180
  %i.am = load i64, ptr %i.af, align 8
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 6, ptr %i.ao, align 8, !tbaa !181
  %i.ap = tail call noundef i32 @_ZNK16OpenColorIO_v2_55Baker11getCubeSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.aq = tail call noundef i32 @_ZNK16OpenColorIO_v2_55Baker13getShaperSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.ar = tail call noundef i32 @_ZNK16OpenColorIO_v2_55Baker11getCubeSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.as = icmp eq i32 %i.ap, -1
  %spec.store.select = select i1 %i.as, i32 64, i32 %i.ap ; 9 uses
  %i.at = icmp eq i32 %i.aq, -1
  %spec.store.select5 = select i1 %i.at, i32 1024, i32 %i.aq ; 8 uses
  %i.au = icmp eq i32 %i.ar, -1
  %spec.store.select1 = select i1 %i.au, i32 1024, i32 %i.ar ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.av = tail call noundef ptr @_ZNK16OpenColorIO_v2_55Baker14getShaperSpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !22
  %i.ax = icmp eq ptr %i.av, null
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread408
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.46) #29
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread408
  %i.ay = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.av) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !56
  %i.az = icmp ugt i64 %i.ay, 15
  br i1 %i.az, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.i
  %i.ba = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc161 unwind label %bb.o  ; 2 uses

.noexc161:                                        ; preds = %.noexc.i
  store ptr %i.ba, ptr %6, align 8, !tbaa !31
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc161, %bb.i
  %i.bc = phi ptr [ %i.ba, %.noexc161 ], [ %i.aw, %bb.i ] ; 2 uses
  switch i64 %i.ay, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !26
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !26
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr nonnull align 1 %i.av, i64 %i.ay, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.be = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !25
  %i.bg = load ptr, ptr %6, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN16OpenColorIO_v2_525GetInputToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.87") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %7, align 8, !tbaa !184
  %i.bj = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_512CPUProcessor19hasChannelCrosstalkEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %bb.n unwind label %bb.q       ; 4 uses

bb.n:                                             ; preds = %bb.m
  br i1 %i.bj, label %bb.r, label %bb.bj

bb.o:                                             ; preds = %.noexc.i, %bb.h
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

bb.p:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.q:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit329

bb.r:                                             ; preds = %bb.n
  %i.bn = load i64, ptr %i.bf, align 8, !tbaa !25
  %i.bo = icmp ne i64 %i.bn, 0                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !42
  br i1 %i.bo, label %bb.s, label %.thread517.a

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN16OpenColorIO_v2_514GetShaperRangeERKNS_5BakerERfS3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.t unwind label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.bp = mul nsw i32 %spec.store.select5, 3
  %i.bq = sext i32 %i.bp to i64                   ; 3 uses
  %.not466 = icmp eq i32 %spec.store.select5, 0
  br i1 %.not466, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = icmp slt i32 %spec.store.select5, 0
  br i1 %i.br, label %bb.v, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #29
          to label %.noexc334 unwind label %bb.ag

.noexc334:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.u
  %i.bs = shl nuw nsw i64 %i.bq, 2
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #27
          to label %.noexc335 unwind label %bb.ag ; 4 uses

.noexc335:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !42
  %14 = add nsw i64 %i.bq, -1                     ; 2 uses
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.noexc162, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc335
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %14, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bu, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !42
  br label %.noexc162

.noexc162:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc335
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bq
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %.noexc162, %bb.t
  %.sroa.0396.3 = phi ptr [ %i.bt, %.noexc162 ], [ null, %bb.t ] ; 5 uses
  %.sroa.17.3 = phi ptr [ %16, %.noexc162 ], [ null, %bb.t ] ; 3 uses
  %i.bv = load float, ptr %i.b, align 4, !tbaa !42
  %i.bw = load float, ptr %i.c, align 4, !tbaa !42
  invoke void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef %.sroa.0396.3, i32 noundef %spec.store.select5, i32 noundef 3, float noundef %i.bv, float noundef %i.bw)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bx = zext nneg i32 %spec.store.select5 to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %.sroa.0396.3, i64 noundef %i.bx, i64 noundef 1, i64 noundef 3)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN16OpenColorIO_v2_525GetInputToShaperProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.87") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.by = load ptr, ptr %9, align 8, !tbaa !184
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.z unwind label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !79 ; 8 uses
  %.not.i.i163 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i163, label %.thread414, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cb, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !45
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26, !inline_history !172
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26, !inline_history !172
  br label %.thread414

bb.ac:                                            ; preds = %bb.aa
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.ce, %bb.ad ], [ %i.co, %bb.ae ]
  %i.cp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cp, label %bb.af, label %.thread414, !prof !80

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26
  br label %.thread414

.thread414:                                       ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.thread517.a

bb.ag:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %bb.v, %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %bb.s
  %.sroa.0396.0 = phi ptr [ %.sroa.0396.3, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ null, %bb.v ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ], [ null, %bb.s ]
  %.sroa.17.0 = phi ptr [ %.sroa.17.3, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ null, %bb.v ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ], [ null, %bb.s ]
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit327

bb.ah:                                            ; preds = %bb.w
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit327.thread

bb.ai:                                            ; preds = %bb.x
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.y
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.aj ], [ %i.cs, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit327.thread

_ZNSt6vectorIfSaIfEED2Ev.exit327.thread:          ; preds = %bb.ah, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ak ], [ %i.cr, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.da

.thread517.a:                                     ; preds = %bb.r, %.thread414
  %.sroa.17.1429 = phi ptr [ %.sroa.17.3, %.thread414 ], [ null, %bb.r ] ; 3 uses
  %.sroa.0396.1422 = phi ptr [ %.sroa.0396.3, %.thread414 ], [ null, %bb.r ] ; 3 uses
  %.0121413420 = phi i32 [ 3, %.thread414 ], [ 2, %bb.r ]
  %i.cu = xor i1 %i.bo, true
  %i.cv = mul nsw i32 %spec.store.select, %spec.store.select
  %i.cw = mul nsw i32 %i.cv, %spec.store.select   ; 4 uses
  %i.cx = mul nsw i32 %i.cw, 3
  %i.cy = sext i32 %i.cx to i64                   ; 3 uses
  %i.cz = icmp ne i32 %i.cw, 0
  call void @llvm.assume(i1 %i.cz)
  %i.da = icmp slt i32 %i.cw, 0
  br i1 %i.da, label %bb.al, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342

bb.al:                                            ; preds = %.thread517.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #29
          to label %.noexc350 unwind label %bb.ap

.noexc350:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342: ; preds = %.thread517.a
  %i.db = shl nuw nsw i64 %i.cy, 2
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #27
          to label %.noexc351 unwind label %bb.ap ; 8 uses

.noexc351:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342
  store float 0.000000e+00, ptr %i.dc, align 4, !tbaa !42
  %17 = add nsw i64 %i.cy, -1                     ; 2 uses
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %.noexc166, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i344

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i344: ; preds = %.noexc351
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  %.idx.i.i.i.i.i31.i345 = shl nuw nsw i64 %17, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dd, i8 0, i64 %.idx.i.i.i.i.i31.i345, i1 false), !tbaa !42
  br label %.noexc166

.noexc166:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i344, %.noexc351
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cy ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE(ptr noundef nonnull %i.dc, i32 noundef %spec.store.select, i32 noundef 3, i32 noundef 0)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %.noexc166
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.de = zext nneg i32 %i.cw to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %i.dc, i64 noundef %i.de, i64 noundef 1, i64 noundef 3)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br i1 %i.bo, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZN16OpenColorIO_v2_526GetShaperToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.87") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172 unwind label %bb.ar

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172: ; preds = %bb.ao
  %i.df = load ptr, ptr %12, align 8, !tbaa !184  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !79 ; 2 uses
  store ptr %i.df, ptr %11, align 8, !tbaa !185
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit

bb.ap:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342, %bb.al, %.noexc166
  %.sroa.0383.0 = phi ptr [ %i.dc, %.noexc166 ], [ null, %bb.al ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342 ]
  %.sroa.19.0 = phi ptr [ %19, %.noexc166 ], [ null, %bb.al ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342 ]
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

bb.aq:                                            ; preds = %bb.am
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread

bb.ar:                                            ; preds = %bb.ao
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bi

bb.as:                                            ; preds = %bb.an
  %i.dm = load ptr, ptr %7, align 8, !tbaa !184   ; 2 uses
  store ptr %i.dm, ptr %11, align 8, !tbaa !184
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !79 ; 4 uses
  %.not.i.i.i173 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i173, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i174 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i174, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.at
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !78
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !78
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.at
  %i.du = atomicrmw volatile add ptr %i.dq, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.dn, align 8, !tbaa !79 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.dv, align 8, !tbaa !44
  %i.dz = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !45
  %i.ea = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !19
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26, !inline_history !173
  %i.ed = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !19
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26, !inline_history !173
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i9.i.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i9.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i = phi i32 [ %i.dy, %bb.ax ], [ %i.ei, %bb.ay ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ej, label %bb.az, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !80

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.av, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.dp, ptr %i.dn, align 8, !tbaa !79
  %.pre = load ptr, ptr %11, align 8, !tbaa !184
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.as, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172
  %i.ek = phi ptr [ %i.dp, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ null, %bb.as ], [ %i.dh, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172 ] ; 8 uses
  %i.el = phi ptr [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ %i.dm, %bb.as ], [ %i.df, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172 ]
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ba unwind label %bb.bh

bb.ba:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit
  %.not.i.i175 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i175, label %.thread520, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.em, align 8, !tbaa !44
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !45
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !19
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #26, !inline_history !172
  %i.eu = load ptr, ptr %i.ek, align 8, !tbaa !19
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #26, !inline_history !172
  br label %.thread520

bb.bd:                                            ; preds = %bb.bb
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i176 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i176, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177

bb.bf:                                            ; preds = %bb.bd
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i178 = phi i32 [ %i.ep, %bb.be ], [ %i.ez, %bb.bf ]
  %i.fa = icmp eq i32 %.0.i.i.i.i178, 1
  br i1 %i.fa, label %bb.bg, label %.thread520, !prof !80

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #26
  br label %.thread520

.thread520:                                       ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.bv

bb.bh:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ar
  %.pn141 = phi { ptr, i32 } [ %i.fb, %bb.bh ], [ %i.dl, %bb.ar ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread

_ZNSt6vectorIfSaIfEED2Ev.exit325.thread:          ; preds = %bb.aq, %bb.bi
  %.pn141.pn = phi { ptr, i32 } [ %.pn141, %bb.bi ], [ %i.dk, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.cz

bb.bj:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !42
  %i.fc = mul nsw i32 %spec.store.select1, 3
  %i.fd = sext i32 %i.fc to i64                   ; 3 uses
  %.not467 = icmp eq i32 %spec.store.select1, 0
  br i1 %.not467, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit183, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fe = icmp slt i32 %spec.store.select1, 0
  br i1 %i.fe, label %bb.bl, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #29
          to label %.noexc367 unwind label %bb.bo

.noexc367:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359: ; preds = %bb.bk
  %i.ff = shl nuw nsw i64 %i.fd, 2
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #27
          to label %.noexc368 unwind label %bb.bo ; 4 uses

.noexc368:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359
  store float 0.000000e+00, ptr %i.fg, align 4, !tbaa !42
  %20 = add nsw i64 %i.fd, -1                     ; 2 uses
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %.noexc182, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i361

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i361: ; preds = %.noexc368
  %i.fh = getelementptr i8, ptr %i.fg, i64 4
  %.idx.i.i.i.i.i31.i362 = shl nuw nsw i64 %20, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fh, i8 0, i64 %.idx.i.i.i.i.i31.i362, i1 false), !tbaa !42
  br label %.noexc182

.noexc182:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i361, %.noexc368
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fd
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit183

_ZNSt6vectorIfSaIfEE6resizeEm.exit183:            ; preds = %.noexc182, %bb.bj
  %.sroa.0.3 = phi ptr [ %i.fg, %.noexc182 ], [ null, %bb.bj ] ; 8 uses
  %.sroa.20.3 = phi ptr [ %22, %.noexc182 ], [ null, %bb.bj ] ; 5 uses
  %i.fi = load i64, ptr %i.bf, align 8, !tbaa !25
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit183
  invoke void @_ZN16OpenColorIO_v2_514GetShaperRangeERKNS_5BakerERfS3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fk = load float, ptr %i.b, align 4, !tbaa !42
  %i.fl = load float, ptr %i.c, align 4, !tbaa !42
  invoke void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef %.sroa.0.3, i32 noundef %spec.store.select1, i32 noundef 3, float noundef %i.fk, float noundef %i.fl)
          to label %bb.bq unwind label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359, %bb.bl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge, %.critedge545, %._crit_edge, %bb.cj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %_ZNSolsEf.exit232, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228, %_ZNSolsEf.exit226, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222, %_ZNSolsEf.exit220, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218, %_ZNSolsEf.exit216, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212, %_ZNSolsEf.exit210, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201, %bb.bz, %bb.by, %bb.bx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187, %bb.bw, %bb.bv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185, %bb.bp, %bb.bn, %bb.bm
  %.sroa.19.1543 = phi ptr [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.19.1541.a, %.critedge545 ], [ %.sroa.19.1541.a, %._crit_edge ], [ %.sroa.19.1541.a, %bb.cj ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.19.1541.a, %bb.ch ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.19.1541.a, %bb.cg ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.19.1541.a, %bb.cf ], [ %.sroa.19.1541.a, %bb.ce ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.19.1541.a, %bb.cd ], [ %.sroa.19.1541.a, %bb.cc ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.19.1541.a, %bb.cb ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.19.1541.a, %bb.ca ], [ %.sroa.19.1541.a, %_ZNSolsEf.exit232 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.19.1541.a, %_ZNSolsEf.exit226 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.19.1541.a, %_ZNSolsEf.exit220 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.19.1541.a, %_ZNSolsEf.exit216 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.19.1541.a, %_ZNSolsEf.exit210 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.19.1541.a, %_ZNSolsEf.exit ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.19.1541.a, %bb.bz ], [ %.sroa.19.1541.a, %bb.by ], [ %.sroa.19.1541.a, %bb.bx ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.19.1541.a, %bb.bw ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.19.1541.a, %bb.bv ], [ null, %bb.bp ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.0383.1539 = phi ptr [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.0383.1537.a, %.critedge545 ], [ %.sroa.0383.1537.a, %._crit_edge ], [ %.sroa.0383.1537.a, %bb.cj ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.0383.1537.a, %bb.ch ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.0383.1537.a, %bb.cg ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.0383.1537.a, %bb.cf ], [ %.sroa.0383.1537.a, %bb.ce ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.0383.1537.a, %bb.cd ], [ %.sroa.0383.1537.a, %bb.cc ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.0383.1537.a, %bb.cb ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.0383.1537.a, %bb.ca ], [ %.sroa.0383.1537.a, %_ZNSolsEf.exit232 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.0383.1537.a, %_ZNSolsEf.exit226 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.0383.1537.a, %_ZNSolsEf.exit220 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.0383.1537.a, %_ZNSolsEf.exit216 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.0383.1537.a, %_ZNSolsEf.exit210 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.0383.1537.a, %_ZNSolsEf.exit ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.0383.1537.a, %bb.bz ], [ %.sroa.0383.1537.a, %bb.by ], [ %.sroa.0383.1537.a, %bb.bx ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.0383.1537.a, %bb.bw ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.0383.1537.a, %bb.bv ], [ null, %bb.bp ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.0396.1421534 = phi ptr [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.0396.1421532.a, %.critedge545 ], [ %.sroa.0396.1421532.a, %._crit_edge ], [ %.sroa.0396.1421532.a, %bb.cj ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.0396.1421532.a, %bb.ch ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.0396.1421532.a, %bb.cg ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.0396.1421532.a, %bb.cf ], [ %.sroa.0396.1421532.a, %bb.ce ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.0396.1421532.a, %bb.cd ], [ %.sroa.0396.1421532.a, %bb.cc ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.0396.1421532.a, %bb.cb ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.0396.1421532.a, %bb.ca ], [ %.sroa.0396.1421532.a, %_ZNSolsEf.exit232 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.0396.1421532.a, %_ZNSolsEf.exit226 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.0396.1421532.a, %_ZNSolsEf.exit220 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.0396.1421532.a, %_ZNSolsEf.exit216 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.0396.1421532.a, %_ZNSolsEf.exit210 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.0396.1421532.a, %_ZNSolsEf.exit ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.0396.1421532.a, %bb.bz ], [ %.sroa.0396.1421532.a, %bb.by ], [ %.sroa.0396.1421532.a, %bb.bx ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.0396.1421532.a, %bb.bw ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.0396.1421532.a, %bb.bv ], [ null, %bb.bp ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.17.1428530 = phi ptr [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.17.1428528.a, %.critedge545 ], [ %.sroa.17.1428528.a, %._crit_edge ], [ %.sroa.17.1428528.a, %bb.cj ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.17.1428528.a, %bb.ch ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.17.1428528.a, %bb.cg ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.17.1428528.a, %bb.cf ], [ %.sroa.17.1428528.a, %bb.ce ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.17.1428528.a, %bb.cd ], [ %.sroa.17.1428528.a, %bb.cc ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.17.1428528.a, %bb.cb ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.17.1428528.a, %bb.ca ], [ %.sroa.17.1428528.a, %_ZNSolsEf.exit232 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.17.1428528.a, %_ZNSolsEf.exit226 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.17.1428528.a, %_ZNSolsEf.exit220 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.17.1428528.a, %_ZNSolsEf.exit216 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.17.1428528.a, %_ZNSolsEf.exit210 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.17.1428528.a, %_ZNSolsEf.exit ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.17.1428528.a, %bb.bz ], [ %.sroa.17.1428528.a, %bb.by ], [ %.sroa.17.1428528.a, %bb.bx ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.17.1428528.a, %bb.bw ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.17.1428528.a, %bb.bv ], [ null, %bb.bp ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.0.1, %.critedge545 ], [ %.sroa.0.1, %._crit_edge ], [ %.sroa.0.1, %bb.cj ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.0.1, %bb.ch ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.0.1, %bb.cg ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.0.1, %bb.cf ], [ %.sroa.0.1, %bb.ce ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.0.1, %bb.cd ], [ %.sroa.0.1, %bb.cc ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.0.1, %bb.cb ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.0.1, %bb.ca ], [ %.sroa.0.1, %_ZNSolsEf.exit232 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.0.1, %_ZNSolsEf.exit226 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.0.1, %_ZNSolsEf.exit220 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.0.1, %_ZNSolsEf.exit216 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.0.1, %_ZNSolsEf.exit210 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.0.1, %_ZNSolsEf.exit ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.0.1, %bb.bz ], [ %.sroa.0.1, %bb.by ], [ %.sroa.0.1, %bb.bx ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.0.1, %bb.bw ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.0.1, %bb.bv ], [ %.sroa.0.3, %bb.bp ], [ %.sroa.0.3, %bb.bn ], [ %.sroa.0.3, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.20.0 = phi ptr [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.20.1, %.critedge545 ], [ %.sroa.20.1, %._crit_edge ], [ %.sroa.20.1, %bb.cj ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.20.1, %bb.ch ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.20.1, %bb.cg ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.20.1, %bb.cf ], [ %.sroa.20.1, %bb.ce ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.20.1, %bb.cd ], [ %.sroa.20.1, %bb.cc ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.20.1, %bb.cb ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.20.1, %bb.ca ], [ %.sroa.20.1, %_ZNSolsEf.exit232 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.20.1, %_ZNSolsEf.exit226 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.20.1, %_ZNSolsEf.exit220 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.20.1, %_ZNSolsEf.exit216 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.20.1, %_ZNSolsEf.exit210 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.20.1, %_ZNSolsEf.exit ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.20.1, %bb.bz ], [ %.sroa.20.1, %bb.by ], [ %.sroa.20.1, %bb.bx ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.20.1, %bb.bw ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.20.1, %bb.bv ], [ %.sroa.20.3, %bb.bp ], [ %.sroa.20.3, %bb.bn ], [ %.sroa.20.3, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.bp:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit183
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut1DEPfii(ptr noundef nonnull %.sroa.0.3, i32 noundef %spec.store.select1, i32 noundef 3)
          to label %bb.bq unwind label %bb.bo

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.fn = zext nneg i32 %spec.store.select1 to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %.sroa.0.3, i64 noundef %i.fn, i64 noundef 1, i64 noundef 3)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.fo = load ptr, ptr %7, align 8, !tbaa !184
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %bb.br
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.thread432

bb.bu:                                            ; preds = %bb.br
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  br label %.thread432

.thread432:                                       ; preds = %bb.bt, %bb.bu
  %.pn144 = phi { ptr, i32 } [ %i.fq, %bb.bu ], [ %i.fp, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.cy

bb.bv:                                            ; preds = %.thread520, %bb.bs
  %.sroa.19.1541.a = phi ptr [ %19, %.thread520 ], [ null, %bb.bs ] ; 56 uses
  %.sroa.0383.1537.a = phi ptr [ %i.dc, %.thread520 ], [ null, %bb.bs ] ; 59 uses
  %.0121413419536 = phi i32 [ %.0121413420, %.thread520 ], [ 1, %bb.bs ]
  %i.fr = phi i1 [ %i.cu, %.thread520 ], [ false, %bb.bs ] ; 3 uses
  %i.fs = phi i1 [ %i.bo, %.thread520 ], [ false, %bb.bs ] ; 3 uses
  %.sroa.0396.1421532.a = phi ptr [ %.sroa.0396.1422, %.thread520 ], [ null, %bb.bs ] ; 59 uses
  %.sroa.17.1428528.a = phi ptr [ %.sroa.17.1429, %.thread520 ], [ null, %bb.bs ] ; 56 uses
  %.sroa.0.1 = phi ptr [ null, %.thread520 ], [ %.sroa.0.3, %bb.bs ] ; 61 uses
  %.sroa.20.1 = phi ptr [ null, %.thread520 ], [ %.sroa.20.3, %bb.bs ] ; 56 uses
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.70, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185: ; preds = %bb.bv
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0121413419536)
          to label %bb.bw unwind label %bb.bo

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187: ; preds = %bb.bw
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.72, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.73, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.74, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193
  br i1 %i.bj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197, label %bb.bx

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.75, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197: ; preds = %bb.bx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  br i1 %i.fr, label %bb.by, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.76, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %bb.by, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  br i1 %i.fs, label %bb.bz, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.77, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201: ; preds = %bb.bz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.78, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203
  %i.gf = load float, ptr %i.b, align 4, !tbaa !42
  %i.gg = fpext float %i.gf to double
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.gg)
          to label %_ZNSolsEf.exit unwind label %bb.bo ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef nonnull @.str.79, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208: ; preds = %_ZNSolsEf.exit
  %i.gj = load float, ptr %i.c, align 4, !tbaa !42
  %i.gk = fpext float %i.gj to double
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, double noundef %i.gk)
          to label %_ZNSolsEf.exit210 unwind label %bb.bo

_ZNSolsEf.exit210:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212: ; preds = %_ZNSolsEf.exit210
  %i.gn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.80, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 0.000000e+00)
          to label %_ZNSolsEf.exit216 unwind label %bb.bo ; 2 uses

_ZNSolsEf.exit216:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.79, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218: ; preds = %_ZNSolsEf.exit216
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.go, double noundef 1.000000e+00)
          to label %_ZNSolsEf.exit220 unwind label %bb.bo

_ZNSolsEf.exit220:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222: ; preds = %_ZNSolsEf.exit220
  %i.gs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.81, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 0.000000e+00)
          to label %_ZNSolsEf.exit226 unwind label %bb.bo

_ZNSolsEf.exit226:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228: ; preds = %_ZNSolsEf.exit226
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.82, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 1.000000e+00)
          to label %_ZNSolsEf.exit232 unwind label %bb.bo

_ZNSolsEf.exit232:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234: ; preds = %_ZNSolsEf.exit232
  br i1 %i.fs, label %bb.ca, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.83, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236: ; preds = %bb.ca
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %spec.store.select)
          to label %bb.cb unwind label %bb.bo     ; 2 uses

bb.cb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull @.str.79, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238: ; preds = %bb.cb
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, i32 noundef %spec.store.select5)
          to label %bb.cc unwind label %bb.bo

bb.cc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
  %i.hc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hb, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240: ; preds = %bb.cc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
  br i1 %i.fr, label %bb.cd, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244

bb.cd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240
  %i.hd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.83, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242: ; preds = %bb.cd
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %spec.store.select)
          to label %bb.ce unwind label %bb.bo

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244: ; preds = %bb.ce, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240
  br i1 %i.bj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248, label %bb.cf

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.83, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246: ; preds = %bb.cf
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %spec.store.select1)
          to label %bb.cg unwind label %bb.bo

bb.cg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248: ; preds = %bb.cg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.84, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248
  br i1 %i.fs, label %bb.ch, label %.critedge

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.85, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252.preheader unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252.preheader: ; preds = %bb.ch
  %i.hl = icmp sgt i32 %spec.store.select5, 0
  br i1 %i.hl, label %.lr.ph.preheader, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252.preheader
  %wide.trip.count = zext nneg i32 %spec.store.select5 to i64
  br label %.lr.ph

end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo:bb.a
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !42
  %i.ji = fpext float %i.jh to double
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ji)
          to label %_ZNSolsEf.exit298 unwind label %bb.cm

_ZNSolsEf.exit298:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300 unwind label %bb.cm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300: ; preds = %_ZNSolsEf.exit298
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next489, %wide.trip.count491
  br i1 %exitcond492.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge, label %.lr.ph474, !llvm.loop !177

bb.cm:                                            ; preds = %_ZNSolsEf.exit298, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296, %.lr.ph474
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.93, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.preheader unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.preheader: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294
  br i1 %i.it, label %.lr.ph476.preheader, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge

.lr.ph476.preheader:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.preheader
  %wide.trip.count496 = zext nneg i32 %spec.store.select1 to i64
  br label %.lr.ph476

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.preheader
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.87, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304 unwind label %bb.bo ; 0 uses

.lr.ph476:                                        ; preds = %.lr.ph476.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310
  %indvars.iv493 = phi i64 [ 0, %.lr.ph476.preheader ], [ %indvars.iv.next494, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310 ] ; 2 uses
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.86, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306 unwind label %bb.cn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306: ; preds = %.lr.ph476
  %.idx516 = mul nuw nsw i64 %indvars.iv493, 12
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.idx516
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !42
  %i.js = fpext float %i.jr to double
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.js)
          to label %_ZNSolsEf.exit308 unwind label %bb.cn

_ZNSolsEf.exit308:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jt, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310 unwind label %bb.cn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310: ; preds = %_ZNSolsEf.exit308
  %indvars.iv.next494 = add nuw nsw i64 %indvars.iv493, 1 ; 2 uses
  %exitcond497.not = icmp eq i64 %indvars.iv.next494, %wide.trip.count496
  br i1 %exitcond497.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge, label %.lr.ph476, !llvm.loop !178

bb.cn:                                            ; preds = %_ZNSolsEf.exit308, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306, %.lr.ph476
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304: ; preds = %._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge
  %.not.i.i.i311 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i311, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304
  %i.jw = ptrtoint ptr %.sroa.20.1 to i64
  %i.jx = ptrtoint ptr %.sroa.0.1 to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.jy) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304, %bb.co
  %.not.i.i.i312 = icmp eq ptr %.sroa.0383.1537.a, null
  br i1 %.not.i.i.i312, label %_ZNSt6vectorIfSaIfEED2Ev.exit313, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.jz = ptrtoint ptr %.sroa.19.1541.a to i64
  %i.ka = ptrtoint ptr %.sroa.0383.1537.a to i64
  %i.kb = sub i64 %i.jz, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0383.1537.a, i64 noundef %i.kb) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit313

_ZNSt6vectorIfSaIfEED2Ev.exit313:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i.i.i314 = icmp eq ptr %.sroa.0396.1421532.a, null
  br i1 %.not.i.i.i314, label %_ZNSt6vectorIfSaIfEED2Ev.exit315, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit313
  %i.kc = ptrtoint ptr %.sroa.17.1428528.a to i64
  %i.kd = ptrtoint ptr %.sroa.0396.1421532.a to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0396.1421532.a, i64 noundef %i.ke) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit315

_ZNSt6vectorIfSaIfEED2Ev.exit315:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit313, %bb.cq
  %i.kf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !79 ; 8 uses
  %.not.i.i316 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i316, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit315
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 4 uses
  %i.ki = load atomic i64, ptr %i.kh acquire, align 8 ; 2 uses
  %i.kj = icmp eq i64 %i.ki, 4294967297
  %i.kk = trunc i64 %i.ki to i32                  ; 2 uses
  br i1 %i.kj, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.kh, align 8, !tbaa !44
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  store i32 0, ptr %i.kl, align 4, !tbaa !45
  %i.km = load ptr, ptr %i.kg, align 8, !tbaa !19
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(16) %i.kg) #26, !inline_history !172
  %i.kp = load ptr, ptr %i.kg, align 8, !tbaa !19
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dereferenceable(16) %i.kg) #26, !inline_history !172
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320

bb.ct:                                            ; preds = %bb.cr
  %i.ks = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i317 = icmp eq i8 %i.ks, 0
  br i1 %.not.i.i.i317, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kt = add nsw i32 %i.kk, -1
  store i32 %i.kt, ptr %i.kh, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318

bb.cv:                                            ; preds = %bb.ct
  %i.ku = atomicrmw volatile add ptr %i.kh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i319 = phi i32 [ %i.kk, %bb.cu ], [ %i.ku, %bb.cv ]
  %i.kv = icmp eq i32 %.0.i.i.i.i319, 1
  br i1 %i.kv, label %bb.cw, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320, !prof !80

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kg) #26
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit315, %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.kw = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.aw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320
  %i.ky = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

bb.cx:                                            ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.ci, %bb.bo
  %.sroa.19.1542 = phi ptr [ %.sroa.19.1541.a, %bb.ci ], [ %.sroa.19.1541.a, %bb.ck ], [ %.sroa.19.1541.a, %bb.cl ], [ %.sroa.19.1541.a, %bb.cm ], [ %.sroa.19.1541.a, %bb.cn ], [ %.sroa.19.1543, %bb.bo ] ; 2 uses
  %.sroa.0383.1538 = phi ptr [ %.sroa.0383.1537.a, %bb.ci ], [ %.sroa.0383.1537.a, %bb.ck ], [ %.sroa.0383.1537.a, %bb.cl ], [ %.sroa.0383.1537.a, %bb.cm ], [ %.sroa.0383.1537.a, %bb.cn ], [ %.sroa.0383.1539, %bb.bo ] ; 2 uses
  %.sroa.0396.1421533 = phi ptr [ %.sroa.0396.1421532.a, %bb.ci ], [ %.sroa.0396.1421532.a, %bb.ck ], [ %.sroa.0396.1421532.a, %bb.cl ], [ %.sroa.0396.1421532.a, %bb.cm ], [ %.sroa.0396.1421532.a, %bb.cn ], [ %.sroa.0396.1421534, %bb.bo ] ; 2 uses
  %.sroa.17.1428529 = phi ptr [ %.sroa.17.1428528.a, %bb.ci ], [ %.sroa.17.1428528.a, %bb.ck ], [ %.sroa.17.1428528.a, %bb.cl ], [ %.sroa.17.1428528.a, %bb.cm ], [ %.sroa.17.1428528.a, %bb.cn ], [ %.sroa.17.1428530, %bb.bo ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.ci ], [ %.sroa.0.1, %bb.ck ], [ %.sroa.0.1, %bb.cl ], [ %.sroa.0.1, %bb.cm ], [ %.sroa.0.1, %bb.cn ], [ %.sroa.0.0, %bb.bo ] ; 2 uses
  %.sroa.20.2 = phi ptr [ %.sroa.20.1, %bb.ci ], [ %.sroa.20.1, %bb.ck ], [ %.sroa.20.1, %bb.cl ], [ %.sroa.20.1, %bb.cm ], [ %.sroa.20.1, %bb.cn ], [ %.sroa.20.0, %bb.bo ]
  %.pn146 = phi { ptr, i32 } [ %i.hu, %bb.ci ], [ %i.ir, %bb.ck ], [ %i.jb, %bb.cl ], [ %i.jl, %bb.cm ], [ %i.jv, %bb.cn ], [ %i.fm, %bb.bo ] ; 2 uses
  %.not.i.i.i324 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i324, label %_ZNSt6vectorIfSaIfEED2Ev.exit325, label %bb.cy

bb.cy:                                            ; preds = %.thread432, %bb.cx
  %.sroa.19.1544 = phi ptr [ null, %.thread432 ], [ %.sroa.19.1542, %bb.cx ]
  %.sroa.0383.1540 = phi ptr [ null, %.thread432 ], [ %.sroa.0383.1538, %bb.cx ]
  %.sroa.0396.1421535 = phi ptr [ null, %.thread432 ], [ %.sroa.0396.1421533, %bb.cx ]
  %.sroa.17.1428531 = phi ptr [ null, %.thread432 ], [ %.sroa.17.1428529, %bb.cx ]
  %.pn146442 = phi { ptr, i32 } [ %.pn144, %.thread432 ], [ %.pn146, %bb.cx ]
  %.sroa.20.2441 = phi ptr [ %.sroa.20.3, %.thread432 ], [ %.sroa.20.2, %bb.cx ]
  %.sroa.0.2440 = phi ptr [ %.sroa.0.3, %.thread432 ], [ %.sroa.0.2, %bb.cx ] ; 2 uses
  %i.la = ptrtoint ptr %.sroa.20.2441 to i64
  %i.lb = ptrtoint ptr %.sroa.0.2440 to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2440, i64 noundef %i.lc) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

_ZNSt6vectorIfSaIfEED2Ev.exit325:                 ; preds = %bb.cy, %bb.cx, %bb.ap
  %.sroa.17.1427 = phi ptr [ %.sroa.17.1429, %bb.ap ], [ %.sroa.17.1428531, %bb.cy ], [ %.sroa.17.1428529, %bb.cx ] ; 2 uses
  %.sroa.0396.1423 = phi ptr [ %.sroa.0396.1422, %bb.ap ], [ %.sroa.0396.1421535, %bb.cy ], [ %.sroa.0396.1421533, %bb.cx ] ; 2 uses
  %.sroa.0383.2 = phi ptr [ %.sroa.0383.0, %bb.ap ], [ %.sroa.0383.1540, %bb.cy ], [ %.sroa.0383.1538, %bb.cx ] ; 2 uses
  %.sroa.19.2 = phi ptr [ %.sroa.19.0, %bb.ap ], [ %.sroa.19.1544, %bb.cy ], [ %.sroa.19.1542, %bb.cx ]
  %.pn146.pn = phi { ptr, i32 } [ %i.dj, %bb.ap ], [ %.pn146442, %bb.cy ], [ %.pn146, %bb.cx ] ; 2 uses
  %.not.i.i.i326 = icmp eq ptr %.sroa.0383.2, null
  br i1 %.not.i.i.i326, label %_ZNSt6vectorIfSaIfEED2Ev.exit327, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit325
  %.pn146.pn456 = phi { ptr, i32 } [ %.pn141.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread ], [ %.pn146.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ]
  %.sroa.19.2455 = phi ptr [ %19, %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread ], [ %.sroa.19.2, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ]
  %.sroa.0383.2454 = phi ptr [ %i.dc, %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread ], [ %.sroa.0383.2, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ] ; 2 uses
  %.sroa.0396.1423452 = phi ptr [ %.sroa.0396.1422, %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread ], [ %.sroa.0396.1423, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ]
  %.sroa.17.1427450 = phi ptr [ %.sroa.17.1429, %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread ], [ %.sroa.17.1427, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ]
  %i.ld = ptrtoint ptr %.sroa.19.2455 to i64
  %i.le = ptrtoint ptr %.sroa.0383.2454 to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0383.2454, i64 noundef %i.lf) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit327

_ZNSt6vectorIfSaIfEED2Ev.exit327:                 ; preds = %bb.cz, %_ZNSt6vectorIfSaIfEED2Ev.exit325, %bb.ag
  %.sroa.0396.2 = phi ptr [ %.sroa.0396.0, %bb.ag ], [ %.sroa.0396.1423452, %bb.cz ], [ %.sroa.0396.1423, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ] ; 2 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.0, %bb.ag ], [ %.sroa.17.1427450, %bb.cz ], [ %.sroa.17.1427, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ]
  %.pn146.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.ag ], [ %.pn146.pn456, %bb.cz ], [ %.pn146.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i.i.i328 = icmp eq ptr %.sroa.0396.2, null
  br i1 %.not.i.i.i328, label %_ZNSt6vectorIfSaIfEED2Ev.exit329, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit327.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit327
  %.pn146.pn.pn464 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit327.thread ], [ %.pn146.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit327 ]
  %.sroa.17.2463 = phi ptr [ %.sroa.17.3, %_ZNSt6vectorIfSaIfEED2Ev.exit327.thread ], [ %.sroa.17.2, %_ZNSt6vectorIfSaIfEED2Ev.exit327 ]
  %.sroa.0396.2462 = phi ptr [ %.sroa.0396.3, %_ZNSt6vectorIfSaIfEED2Ev.exit327.thread ], [ %.sroa.0396.2, %_ZNSt6vectorIfSaIfEED2Ev.exit327 ] ; 2 uses
  %i.lg = ptrtoint ptr %.sroa.17.2463 to i64
  %i.lh = ptrtoint ptr %.sroa.0396.2462 to i64
  %i.li = sub i64 %i.lg, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0396.2462, i64 noundef %i.li) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit329

_ZNSt6vectorIfSaIfEED2Ev.exit329:                 ; preds = %bb.da, %_ZNSt6vectorIfSaIfEED2Ev.exit327, %bb.q
  %.pn150 = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %.pn146.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit327 ], [ %.pn146.pn.pn464, %bb.da ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  br label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit329, %bb.p
  %.pn150.pn = phi { ptr, i32 } [ %.pn150, %_ZNSt6vectorIfSaIfEED2Ev.exit329 ], [ %i.bl, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.lj = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.aw
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330: ; preds = %bb.db
  %i.ll = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330, %bb.o
  %.pn150.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %.pn150.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330 ], [ %.pn150.pn, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, %bb.g
  %.pn154.pn.pn = phi { ptr, i32 } [ %.pn154.pn, %bb.g ], [ %.pn150.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332 ]
  resume { ptr, i32 } %.pn154.pn.pn

bb.dd:                                            ; preds = %bb.c
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_510FileFormat5writeERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEERKNS_14GroupTransformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 1 captures(none) %3, ptr nofree noundef readonly align 8 captures(none) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %9 = alloca %"class.std::shared_ptr.7", align 8 ; 9 uses
  %10 = alloca %"class.std::shared_ptr.10", align 8 ; 8 uses
  %.val = load ptr, ptr %4, align 8, !tbaa !113   ; 2 uses
  %i.b = getelementptr i8, ptr %4, i64 8
  %.val57 = load ptr, ptr %i.b, align 8           ; 13 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileHDLENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %.val, ptr nonnull @_ZTIN16OpenColorIO_v2_510CachedFileE, ptr nonnull @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileHDLE, i64 0) #26, !noalias !191 ; 14 uses
  %.not.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.not.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileHDLENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %.val57, null     ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.val57, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26, !noalias !191
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.e, align 4, !tbaa !78, !noalias !191
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !78, !noalias !191
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !191 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %.not115 = icmp eq ptr %i.m, null
  br i1 %.not115, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileHDLENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.r

_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileHDLENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit: ; preds = %bb.b, %bb.a, %bb.h
  %.sroa.24.0105 = phi ptr [ %.val57, %bb.h ], [ null, %bb.a ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileHDLENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.95, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.o = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load ptr, ptr %8, align 8, !tbaa !31
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef %i.p)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #29
          to label %bb.bg unwind label %bb.n

bb.l:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileHDLENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.u = load ptr, ptr %8, align 8, !tbaa !31     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.x = load i64, ptr %i.v, align 8, !tbaa !26
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br i1 %.0, label %bb.o, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br i1 %.0, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn108 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.o) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn108, %bb.o ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.r, %bb.m ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.p ], [ %i.q, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.bf

bb.r:                                             ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr %5, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  %i.ad = invoke noundef i32 @_ZN16OpenColorIO_v2_526CombineTransformDirectionsENS_18TransformDirectionES0_(i32 noundef %6, i32 noundef %i.ac)
          to label %bb.s unwind label %bb.x       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ae = invoke noundef i32 @_ZNK16OpenColorIO_v2_513FileTransform16getInterpolationEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.t unwind label %bb.y       ; 3 uses

end_hunk_1
