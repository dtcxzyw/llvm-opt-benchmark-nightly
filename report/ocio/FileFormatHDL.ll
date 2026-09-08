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
  br i1 %i.bo, label %bb.s, label %.thread514

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN16OpenColorIO_v2_514GetShaperRangeERKNS_5BakerERfS3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.t unwind label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.bp = mul nsw i32 %spec.store.select5, 3
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
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
  %i.bs = shl nuw nsw i64 %i.bq, 2                ; 2 uses
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #27
          to label %.noexc335.a unwind label %bb.ag ; 4 uses

.noexc335.a:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !42
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.bs, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.bu, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !42
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bq
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %.noexc335.a, %bb.t
  %.sroa.0396.3 = phi ptr [ %i.bt, %.noexc335.a ], [ null, %bb.t ] ; 5 uses
  %.sroa.17.3 = phi ptr [ %14, %.noexc335.a ], [ null, %bb.t ] ; 3 uses
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
  br label %.thread514

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

.thread514:                                       ; preds = %bb.r, %.thread414
  %.sroa.17.1429 = phi ptr [ %.sroa.17.3, %.thread414 ], [ null, %bb.r ] ; 3 uses
  %.sroa.0396.1422 = phi ptr [ %.sroa.0396.3, %.thread414 ], [ null, %bb.r ] ; 3 uses
  %.0121413420 = phi i32 [ 3, %.thread414 ], [ 2, %bb.r ]
  %i.cu = xor i1 %i.bo, true
  %i.cv = mul nsw i32 %spec.store.select, %spec.store.select
  %i.cw = mul nsw i32 %i.cv, %spec.store.select   ; 4 uses
  %i.cx = mul nsw i32 %i.cw, 3
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = icmp ne i32 %i.cw, 0
  call void @llvm.assume(i1 %i.cz)
  %i.da = icmp slt i32 %i.cw, 0
  br i1 %i.da, label %bb.al, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342

bb.al:                                            ; preds = %.thread514
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #29
          to label %.noexc350 unwind label %bb.ap

.noexc350:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342: ; preds = %.thread514
  %i.db = shl nuw nsw i64 %i.cy, 2                ; 2 uses
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #27
          to label %.noexc351 unwind label %bb.ap ; 8 uses

.noexc351:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342
  store float 0.000000e+00, ptr %i.dc, align 4, !tbaa !42
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  %.idx.i.i.i.i.i31.i345 = add nsw i64 %i.db, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.dd, i8 0, i64 %.idx.i.i.i.i.i31.i345, i1 false), !tbaa !42
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cy ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE(ptr noundef nonnull %i.dc, i32 noundef %spec.store.select, i32 noundef 3, i32 noundef 0)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %.noexc351
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.df = zext nneg i32 %i.cw to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %i.dc, i64 noundef %i.df, i64 noundef 1, i64 noundef 3)
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
  %i.dg = load ptr, ptr %12, align 8, !tbaa !184  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !79 ; 2 uses
  store ptr %i.dg, ptr %11, align 8, !tbaa !185
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit

bb.ap:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342, %bb.al, %.noexc351
  %.sroa.0383.0 = phi ptr [ %i.dc, %.noexc351 ], [ null, %bb.al ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342 ]
  %.sroa.19.0 = phi ptr [ %i.de, %.noexc351 ], [ null, %bb.al ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342 ]
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

bb.aq:                                            ; preds = %bb.am
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread

bb.ar:                                            ; preds = %bb.ao
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bi

bb.as:                                            ; preds = %bb.an
  %i.dn = load ptr, ptr %7, align 8, !tbaa !184   ; 2 uses
  store ptr %i.dn, ptr %11, align 8, !tbaa !184
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !79 ; 4 uses
  %.not.i.i.i173 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i173, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i174 = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i174, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.at
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !78
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !78
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.at
  %i.dv = atomicrmw volatile add ptr %i.dr, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.do, align 8, !tbaa !79 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.dx = load atomic i64, ptr %i.dw acquire, align 8 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4294967297
  %i.dz = trunc i64 %i.dx to i32                  ; 2 uses
  br i1 %i.dy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.dw, align 8, !tbaa !44
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !45
  %i.eb = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !19
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26, !inline_history !173
  %i.ee = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !19
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26, !inline_history !173
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i9.i.i.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i9.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i = phi i32 [ %i.dz, %bb.ax ], [ %i.ej, %bb.ay ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ek, label %bb.az, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !80

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.av, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !79
  %.pre = load ptr, ptr %11, align 8, !tbaa !184
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.as, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172
  %i.el = phi ptr [ %i.dq, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ null, %bb.as ], [ %i.di, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172 ] ; 8 uses
  %i.em = phi ptr [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ %i.dn, %bb.as ], [ %i.dg, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172 ]
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ba unwind label %bb.bh

bb.ba:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit
  %.not.i.i175 = icmp eq ptr %i.el, null
  br i1 %.not.i.i175, label %.thread517, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4294967297
  %i.eq = trunc i64 %i.eo to i32                  ; 2 uses
  br i1 %i.ep, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.en, align 8, !tbaa !44
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !45
  %i.es = load ptr, ptr %i.el, align 8, !tbaa !19
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #26, !inline_history !172
  %i.ev = load ptr, ptr %i.el, align 8, !tbaa !19
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #26, !inline_history !172
  br label %.thread517

bb.bd:                                            ; preds = %bb.bb
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i176 = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i176, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ez = add nsw i32 %i.eq, -1
  store i32 %i.ez, ptr %i.en, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177

bb.bf:                                            ; preds = %bb.bd
  %i.fa = atomicrmw volatile add ptr %i.en, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i178 = phi i32 [ %i.eq, %bb.be ], [ %i.fa, %bb.bf ]
  %i.fb = icmp eq i32 %.0.i.i.i.i178, 1
  br i1 %i.fb, label %bb.bg, label %.thread517, !prof !80

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #26
  br label %.thread517

.thread517:                                       ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.bv

bb.bh:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ar
  %.pn141 = phi { ptr, i32 } [ %i.fc, %bb.bh ], [ %i.dm, %bb.ar ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread

_ZNSt6vectorIfSaIfEED2Ev.exit325.thread:          ; preds = %bb.aq, %bb.bi
  %.pn141.pn = phi { ptr, i32 } [ %.pn141, %bb.bi ], [ %i.dl, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.cz

bb.bj:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !42
  %i.fd = mul nsw i32 %spec.store.select1, 3
  %i.fe = sext i32 %i.fd to i64                   ; 2 uses
  %.not467 = icmp eq i32 %spec.store.select1, 0
  br i1 %.not467, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit183, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ff = icmp slt i32 %spec.store.select1, 0
  br i1 %i.ff, label %bb.bl, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #29
          to label %.noexc367 unwind label %bb.bo

.noexc367:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359: ; preds = %bb.bk
  %i.fg = shl nuw nsw i64 %i.fe, 2                ; 2 uses
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #27
          to label %.noexc368.a unwind label %bb.bo ; 4 uses

.noexc368.a:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359
  store float 0.000000e+00, ptr %i.fh, align 4, !tbaa !42
  %i.fi = getelementptr i8, ptr %i.fh, i64 4
  %.idx.i.i.i.i.i31.i362 = add nsw i64 %i.fg, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.fi, i8 0, i64 %.idx.i.i.i.i.i31.i362, i1 false), !tbaa !42
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fe
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit183

_ZNSt6vectorIfSaIfEE6resizeEm.exit183:            ; preds = %.noexc368.a, %bb.bj
  %.sroa.0.3 = phi ptr [ %i.fh, %.noexc368.a ], [ null, %bb.bj ] ; 8 uses
  %.sroa.20.3 = phi ptr [ %15, %.noexc368.a ], [ null, %bb.bj ] ; 5 uses
  %i.fj = load i64, ptr %i.bf, align 8, !tbaa !25
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit183
  invoke void @_ZN16OpenColorIO_v2_514GetShaperRangeERKNS_5BakerERfS3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fl = load float, ptr %i.b, align 4, !tbaa !42
  %i.fm = load float, ptr %i.c, align 4, !tbaa !42
  invoke void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef %.sroa.0.3, i32 noundef %spec.store.select1, i32 noundef 3, float noundef %i.fl, float noundef %i.fm)
          to label %bb.bq unwind label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359, %bb.bl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge, %.critedge542, %._crit_edge, %bb.cj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %_ZNSolsEf.exit232, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228, %_ZNSolsEf.exit226, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222, %_ZNSolsEf.exit220, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218, %_ZNSolsEf.exit216, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212, %_ZNSolsEf.exit210, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201, %bb.bz, %bb.by, %bb.bx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187, %bb.bw, %bb.bv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185, %bb.bp, %bb.bn, %bb.bm
  %.sroa.19.1540.a = phi ptr [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.19.1538, %.critedge542 ], [ %.sroa.19.1538, %._crit_edge ], [ %.sroa.19.1538, %bb.cj ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.19.1538, %bb.ch ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.19.1538, %bb.cg ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.19.1538, %bb.cf ], [ %.sroa.19.1538, %bb.ce ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.19.1538, %bb.cd ], [ %.sroa.19.1538, %bb.cc ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.19.1538, %bb.cb ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.19.1538, %bb.ca ], [ %.sroa.19.1538, %_ZNSolsEf.exit232 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.19.1538, %_ZNSolsEf.exit226 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.19.1538, %_ZNSolsEf.exit220 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.19.1538, %_ZNSolsEf.exit216 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.19.1538, %_ZNSolsEf.exit210 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.19.1538, %_ZNSolsEf.exit ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.19.1538, %bb.bz ], [ %.sroa.19.1538, %bb.by ], [ %.sroa.19.1538, %bb.bx ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.19.1538, %bb.bw ], [ %.sroa.19.1538, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.19.1538, %bb.bv ], [ null, %bb.bp ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.0383.1536.a = phi ptr [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.0383.1534, %.critedge542 ], [ %.sroa.0383.1534, %._crit_edge ], [ %.sroa.0383.1534, %bb.cj ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.0383.1534, %bb.ch ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.0383.1534, %bb.cg ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.0383.1534, %bb.cf ], [ %.sroa.0383.1534, %bb.ce ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.0383.1534, %bb.cd ], [ %.sroa.0383.1534, %bb.cc ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.0383.1534, %bb.cb ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.0383.1534, %bb.ca ], [ %.sroa.0383.1534, %_ZNSolsEf.exit232 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.0383.1534, %_ZNSolsEf.exit226 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.0383.1534, %_ZNSolsEf.exit220 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.0383.1534, %_ZNSolsEf.exit216 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.0383.1534, %_ZNSolsEf.exit210 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.0383.1534, %_ZNSolsEf.exit ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.0383.1534, %bb.bz ], [ %.sroa.0383.1534, %bb.by ], [ %.sroa.0383.1534, %bb.bx ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.0383.1534, %bb.bw ], [ %.sroa.0383.1534, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.0383.1534, %bb.bv ], [ null, %bb.bp ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.0396.1421531.a = phi ptr [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.0396.1421529, %.critedge542 ], [ %.sroa.0396.1421529, %._crit_edge ], [ %.sroa.0396.1421529, %bb.cj ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.0396.1421529, %bb.ch ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.0396.1421529, %bb.cg ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.0396.1421529, %bb.cf ], [ %.sroa.0396.1421529, %bb.ce ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.0396.1421529, %bb.cd ], [ %.sroa.0396.1421529, %bb.cc ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.0396.1421529, %bb.cb ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.0396.1421529, %bb.ca ], [ %.sroa.0396.1421529, %_ZNSolsEf.exit232 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.0396.1421529, %_ZNSolsEf.exit226 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.0396.1421529, %_ZNSolsEf.exit220 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.0396.1421529, %_ZNSolsEf.exit216 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.0396.1421529, %_ZNSolsEf.exit210 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.0396.1421529, %_ZNSolsEf.exit ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.0396.1421529, %bb.bz ], [ %.sroa.0396.1421529, %bb.by ], [ %.sroa.0396.1421529, %bb.bx ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.0396.1421529, %bb.bw ], [ %.sroa.0396.1421529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.0396.1421529, %bb.bv ], [ null, %bb.bp ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.17.1428527.a = phi ptr [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.17.1428525, %.critedge542 ], [ %.sroa.17.1428525, %._crit_edge ], [ %.sroa.17.1428525, %bb.cj ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.17.1428525, %bb.ch ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.17.1428525, %bb.cg ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.17.1428525, %bb.cf ], [ %.sroa.17.1428525, %bb.ce ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.17.1428525, %bb.cd ], [ %.sroa.17.1428525, %bb.cc ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.17.1428525, %bb.cb ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.17.1428525, %bb.ca ], [ %.sroa.17.1428525, %_ZNSolsEf.exit232 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.17.1428525, %_ZNSolsEf.exit226 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.17.1428525, %_ZNSolsEf.exit220 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.17.1428525, %_ZNSolsEf.exit216 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.17.1428525, %_ZNSolsEf.exit210 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.17.1428525, %_ZNSolsEf.exit ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.17.1428525, %bb.bz ], [ %.sroa.17.1428525, %bb.by ], [ %.sroa.17.1428525, %bb.bx ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.17.1428525, %bb.bw ], [ %.sroa.17.1428525, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.17.1428525, %bb.bv ], [ null, %bb.bp ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.0.1, %.critedge542 ], [ %.sroa.0.1, %._crit_edge ], [ %.sroa.0.1, %bb.cj ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.0.1, %bb.ch ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.0.1, %bb.cg ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.0.1, %bb.cf ], [ %.sroa.0.1, %bb.ce ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.0.1, %bb.cd ], [ %.sroa.0.1, %bb.cc ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.0.1, %bb.cb ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.0.1, %bb.ca ], [ %.sroa.0.1, %_ZNSolsEf.exit232 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.0.1, %_ZNSolsEf.exit226 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.0.1, %_ZNSolsEf.exit220 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.0.1, %_ZNSolsEf.exit216 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.0.1, %_ZNSolsEf.exit210 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.0.1, %_ZNSolsEf.exit ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.0.1, %bb.bz ], [ %.sroa.0.1, %bb.by ], [ %.sroa.0.1, %bb.bx ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.0.1, %bb.bw ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.0.1, %bb.bv ], [ %.sroa.0.3, %bb.bp ], [ %.sroa.0.3, %bb.bn ], [ %.sroa.0.3, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.20.0 = phi ptr [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.20.1, %.critedge542 ], [ %.sroa.20.1, %._crit_edge ], [ %.sroa.20.1, %bb.cj ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.20.1, %bb.ch ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.20.1, %bb.cg ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.20.1, %bb.cf ], [ %.sroa.20.1, %bb.ce ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.20.1, %bb.cd ], [ %.sroa.20.1, %bb.cc ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.20.1, %bb.cb ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.20.1, %bb.ca ], [ %.sroa.20.1, %_ZNSolsEf.exit232 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.20.1, %_ZNSolsEf.exit226 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.20.1, %_ZNSolsEf.exit220 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.20.1, %_ZNSolsEf.exit216 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.20.1, %_ZNSolsEf.exit210 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.20.1, %_ZNSolsEf.exit ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.20.1, %bb.bz ], [ %.sroa.20.1, %bb.by ], [ %.sroa.20.1, %bb.bx ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.20.1, %bb.bw ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.20.1, %bb.bv ], [ %.sroa.20.3, %bb.bp ], [ %.sroa.20.3, %bb.bn ], [ %.sroa.20.3, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.bp:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit183
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut1DEPfii(ptr noundef nonnull %.sroa.0.3, i32 noundef %spec.store.select1, i32 noundef 3)
          to label %bb.bq unwind label %bb.bo

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.fo = zext nneg i32 %spec.store.select1 to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %.sroa.0.3, i64 noundef %i.fo, i64 noundef 1, i64 noundef 3)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.fp = load ptr, ptr %7, align 8, !tbaa !184
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %bb.br
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.thread432

bb.bu:                                            ; preds = %bb.br
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  br label %.thread432

.thread432:                                       ; preds = %bb.bt, %bb.bu
  %.pn144 = phi { ptr, i32 } [ %i.fr, %bb.bu ], [ %i.fq, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.cy

bb.bv:                                            ; preds = %.thread517, %bb.bs
  %.sroa.19.1538 = phi ptr [ %i.de, %.thread517 ], [ null, %bb.bs ] ; 56 uses
  %.sroa.0383.1534 = phi ptr [ %i.dc, %.thread517 ], [ null, %bb.bs ] ; 59 uses
  %.0121413419533 = phi i32 [ %.0121413420, %.thread517 ], [ 1, %bb.bs ]
  %i.fs = phi i1 [ %i.cu, %.thread517 ], [ false, %bb.bs ] ; 3 uses
  %i.ft = phi i1 [ %i.bo, %.thread517 ], [ false, %bb.bs ] ; 3 uses
  %.sroa.0396.1421529 = phi ptr [ %.sroa.0396.1422, %.thread517 ], [ null, %bb.bs ] ; 59 uses
  %.sroa.17.1428525 = phi ptr [ %.sroa.17.1429, %.thread517 ], [ null, %bb.bs ] ; 56 uses
  %.sroa.0.1 = phi ptr [ null, %.thread517 ], [ %.sroa.0.3, %bb.bs ] ; 61 uses
  %.sroa.20.1 = phi ptr [ null, %.thread517 ], [ %.sroa.20.3, %bb.bs ] ; 56 uses
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.70, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185: ; preds = %bb.bv
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0121413419533)
          to label %bb.bw unwind label %bb.bo

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187: ; preds = %bb.bw
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.72, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.73, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.74, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193
  br i1 %i.bj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197, label %bb.bx

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.75, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197: ; preds = %bb.bx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  br i1 %i.fs, label %bb.by, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.76, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %bb.by, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  br i1 %i.ft, label %bb.bz, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.77, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201: ; preds = %bb.bz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.78, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203
  %i.gg = load float, ptr %i.b, align 4, !tbaa !42
  %i.gh = fpext float %i.gg to double
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.gh)
          to label %_ZNSolsEf.exit unwind label %bb.bo ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull @.str.79, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208: ; preds = %_ZNSolsEf.exit
  %i.gk = load float, ptr %i.c, align 4, !tbaa !42
  %i.gl = fpext float %i.gk to double
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, double noundef %i.gl)
          to label %_ZNSolsEf.exit210 unwind label %bb.bo

_ZNSolsEf.exit210:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208
  %i.gn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212: ; preds = %_ZNSolsEf.exit210
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.80, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 0.000000e+00)
          to label %_ZNSolsEf.exit216 unwind label %bb.bo ; 2 uses

_ZNSolsEf.exit216:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull @.str.79, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218: ; preds = %_ZNSolsEf.exit216
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, double noundef 1.000000e+00)
          to label %_ZNSolsEf.exit220 unwind label %bb.bo

_ZNSolsEf.exit220:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218
  %i.gs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222: ; preds = %_ZNSolsEf.exit220
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.81, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 0.000000e+00)
          to label %_ZNSolsEf.exit226 unwind label %bb.bo

_ZNSolsEf.exit226:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228: ; preds = %_ZNSolsEf.exit226
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.82, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 1.000000e+00)
          to label %_ZNSolsEf.exit232 unwind label %bb.bo

_ZNSolsEf.exit232:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234: ; preds = %_ZNSolsEf.exit232
  br i1 %i.ft, label %bb.ca, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.83, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236: ; preds = %bb.ca
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %spec.store.select)
end_hunk_0
