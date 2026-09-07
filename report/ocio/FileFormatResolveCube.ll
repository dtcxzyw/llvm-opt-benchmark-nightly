Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatResolveCube?download=true
inline.NumInlined: 1134
inline.NumDeleted: 403
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = icmp eq i64 %i.e, 12
  br i1 %i.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.h = load i64, ptr %i.g, align 1
  %i.i = xor i64 %i.h, 6874030614349309298
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %i.k = load i32, ptr %i.j, align 1
  %i.l = zext i32 %i.k to i64
  %i.m = xor i64 %i.l, 1700951395
  %i.n = or i64 %i.i, %i.m
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread342, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.39, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.r = load ptr, ptr %2, align 8, !tbaa !26
  %i.s = load i64, ptr %i.d, align 8, !tbaa !20
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.40, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  %i.w = load ptr, ptr %5, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef %i.w)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.de unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %.089 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !21
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.089, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.089, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn126345 = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.v) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.d
  %.pn126.pn = phi { ptr, i32 } [ %.pn126345, %bb.f ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.x, %bb.d ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.dd

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread342: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.af = tail call noundef i32 @_ZNK16OpenColorIO_v2_55Baker11getCubeSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  %spec.store.select = select i1 %i.ag, i32 4096, i32 %i.af ; 9 uses
  %i.ah = tail call noundef i32 @_ZNK16OpenColorIO_v2_55Baker11getCubeSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.ai = icmp eq i32 %i.ah, -1
  %i.aj = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 2)
  %.sroa.speculated = select i1 %i.ai, i32 64, i32 %i.aj ; 8 uses
  %i.ak = tail call noundef i32 @_ZNK16OpenColorIO_v2_55Baker13getShaperSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.al = icmp eq i32 %i.ak, -1
  %spec.store.select1 = select i1 %i.al, i32 4096, i32 %i.ak ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.am = tail call noundef ptr @_ZNK16OpenColorIO_v2_55Baker14getShaperSpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !17
  %i.ao = icmp eq ptr %i.am, null
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread342
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #25
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread342
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !39
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.i
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc133 unwind label %bb.o  ; 2 uses

.noexc133:                                        ; preds = %.noexc.i
  store ptr %i.ar, ptr %6, align 8, !tbaa !26
  %i.as = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.as, ptr %i.an, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc133, %bb.i
  %i.at = phi ptr [ %i.ar, %.noexc133 ], [ %i.an, %bb.i ] ; 2 uses
  switch i64 %i.ap, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.au = load i8, ptr %i.am, align 1, !tbaa !21
  store i8 %i.au, ptr %i.at, align 1, !tbaa !21
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.am, i64 %i.ap, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.av = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !20
  %i.ax = load ptr, ptr %6, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZN16OpenColorIO_v2_525GetInputToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.61") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %7, align 8, !tbaa !228
  %i.ba = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_512CPUProcessor19hasChannelCrosstalkEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.n unwind label %bb.q       ; 3 uses

bb.n:                                             ; preds = %bb.m
  br i1 %i.ba, label %bb.r, label %bb.bj

bb.o:                                             ; preds = %.noexc.i, %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

bb.p:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.q:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit250

bb.r:                                             ; preds = %bb.n
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !20
  %i.bf = icmp ne i64 %i.be, 0                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !38
  br i1 %i.bf, label %bb.s, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i264

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN16OpenColorIO_v2_514GetShaperRangeERKNS_5BakerERfS3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.t unwind label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.bg = mul nsw i32 %spec.store.select1, 3
  %i.bh = sext i32 %i.bg to i64                   ; 3 uses
  %.not404 = icmp eq i32 %spec.store.select1, 0
  br i1 %.not404, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = icmp slt i32 %spec.store.select1, 0
  br i1 %i.bi, label %bb.v, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
          to label %.noexc256 unwind label %bb.ag

.noexc256:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.u
  %i.bj = shl nuw nsw i64 %i.bh, 2
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #22
          to label %.noexc257 unwind label %bb.ag ; 4 uses

.noexc257:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  store float 0.000000e+00, ptr %i.bk, align 4, !tbaa !38
  %14 = add nsw i64 %i.bh, -1                     ; 2 uses
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.noexc134, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc257
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %14, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !38
  br label %.noexc134

.noexc134:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc257
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %.noexc134, %bb.t
  %.sroa.0318.3 = phi ptr [ %i.bk, %.noexc134 ], [ null, %bb.t ] ; 5 uses
  %.sroa.19329.3 = phi ptr [ %16, %.noexc134 ], [ null, %bb.t ] ; 3 uses
  %i.bm = load float, ptr %i.b, align 4, !tbaa !38
  %i.bn = load float, ptr %i.c, align 4, !tbaa !38
  invoke void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef %.sroa.0318.3, i32 noundef %spec.store.select1, i32 noundef 3, float noundef %i.bm, float noundef %i.bn)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bo = zext nneg i32 %spec.store.select1 to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %.sroa.0318.3, i64 noundef %i.bo, i64 noundef 1, i64 noundef 3)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN16OpenColorIO_v2_525GetInputToShaperProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.61") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.bp = load ptr, ptr %9, align 8, !tbaa !228
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.z unwind label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !67 ; 8 uses
  %.not.i.i135 = icmp eq ptr %i.br, null
  br i1 %.not.i.i135, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.bs, align 8, !tbaa !59
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !60
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #23, !inline_history !220
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #23, !inline_history !220
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.bv, %bb.ad ], [ %i.cf, %bb.ae ]
  %i.cg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cg, label %bb.af, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !68

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i264

bb.ag:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %bb.v, %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %bb.s
  %.sroa.0318.0 = phi ptr [ %.sroa.0318.3, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ null, %bb.v ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ], [ null, %bb.s ]
  %.sroa.19329.0 = phi ptr [ %.sroa.19329.3, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ null, %bb.v ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ], [ null, %bb.s ]
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit248

bb.ah:                                            ; preds = %bb.w
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit248.thread

bb.ai:                                            ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.y
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.aj ], [ %i.cj, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit248.thread

_ZNSt6vectorIfSaIfEED2Ev.exit248.thread:          ; preds = %bb.ah, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ak ], [ %i.ci, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.db

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i264: ; preds = %bb.r, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.0318.1.ph = phi ptr [ null, %bb.r ], [ %.sroa.0318.3, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.sroa.19329.1.ph = phi ptr [ null, %bb.r ], [ %.sroa.19329.3, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.cl = mul nuw nsw i32 %.sroa.speculated, %.sroa.speculated
  %i.cm = mul nuw nsw i32 %i.cl, %.sroa.speculated ; 2 uses
  %i.cn = mul nuw nsw i32 %i.cm, 3
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = shl nuw nsw i64 %i.co, 2                ; 2 uses
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #22
          to label %bb.al unwind label %bb.ap     ; 8 uses

bb.al:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i264
  store float 0.000000e+00, ptr %i.cq, align 4, !tbaa !38
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %.idx.i.i.i.i.i31.i267 = add nsw i64 %i.cp, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.cr, i8 0, i64 %.idx.i.i.i.i.i31.i267, i1 false), !tbaa !38
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.co ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE(ptr noundef nonnull %i.cq, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 0)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ct = zext nneg i32 %i.cm to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %i.cq, i64 noundef %i.ct, i64 noundef 1, i64 noundef 3)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br i1 %i.bf, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZN16OpenColorIO_v2_526GetShaperToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.61") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144 unwind label %bb.ar

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144: ; preds = %bb.ao
  %i.cu = load ptr, ptr %12, align 8, !tbaa !228  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !67 ; 2 uses
  store ptr %i.cu, ptr %11, align 8, !tbaa !229
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit

bb.ap:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i264, %bb.al
  %.sroa.0305.0 = phi ptr [ %i.cq, %bb.al ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i264 ]
  %.sroa.19.0 = phi ptr [ %i.cs, %bb.al ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i264 ]
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit246

bb.aq:                                            ; preds = %bb.am
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit246.thread

bb.ar:                                            ; preds = %bb.ao
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bi

bb.as:                                            ; preds = %bb.an
  %i.db = load ptr, ptr %7, align 8, !tbaa !228   ; 2 uses
  store ptr %i.db, ptr %11, align 8, !tbaa !228
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !67 ; 4 uses
  %.not.i.i.i145 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i145, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i146 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i146, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.at
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !36
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.df, align 4, !tbaa !36
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.at
  %i.dj = atomicrmw volatile add ptr %i.df, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.dc, align 8, !tbaa !67 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.dk, align 8, !tbaa !59
  %i.do = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !60
  %i.dp = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #23, !inline_history !221
  %i.ds = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #23, !inline_history !221
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i9.i.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i9.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i = phi i32 [ %i.dn, %bb.ax ], [ %i.dx, %bb.ay ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dy, label %bb.az, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !68

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.av, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !67
  %.pre = load ptr, ptr %11, align 8, !tbaa !228
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.as, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144
  %i.dz = phi ptr [ %i.de, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ null, %bb.as ], [ %i.cw, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144 ] ; 8 uses
  %i.ea = phi ptr [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ %i.db, %bb.as ], [ %i.cu, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144 ]
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ba unwind label %bb.bh

bb.ba:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit
  %.not.i.i147 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i147, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.eb, align 8, !tbaa !59
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !60
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !13
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #23, !inline_history !220
  %i.ej = load ptr, ptr %i.dz, align 8, !tbaa !13
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #23, !inline_history !220
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

bb.bd:                                            ; preds = %bb.bb
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i148 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i148, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

bb.bf:                                            ; preds = %bb.bd
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i150 = phi i32 [ %i.ee, %bb.be ], [ %i.eo, %bb.bf ]
  %i.ep = icmp eq i32 %.0.i.i.i.i150, 1
  br i1 %i.ep, label %bb.bg, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, !prof !68

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151: ; preds = %bb.ba, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bw

bb.bh:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ar
  %.pn111 = phi { ptr, i32 } [ %i.eq, %bb.bh ], [ %i.da, %bb.ar ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit246.thread

_ZNSt6vectorIfSaIfEED2Ev.exit246.thread:          ; preds = %bb.aq, %bb.bi
  %.pn111.pn = phi { ptr, i32 } [ %.pn111, %bb.bi ], [ %i.cz, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.da

bb.bj:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !38
  %i.er = mul nsw i32 %spec.store.select, 3
  %i.es = sext i32 %i.er to i64                   ; 3 uses
  %.not403 = icmp eq i32 %spec.store.select, 0
  br i1 %.not403, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit155, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.et = icmp slt i32 %spec.store.select, 0
  br i1 %i.et, label %bb.bl, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i281

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
          to label %.noexc289 unwind label %bb.bo

.noexc289:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i281: ; preds = %bb.bk
  %i.eu = shl nuw nsw i64 %i.es, 2
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #22
          to label %.noexc290 unwind label %bb.bo ; 4 uses

.noexc290:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i281
  store float 0.000000e+00, ptr %i.ev, align 4, !tbaa !38
  %17 = add nsw i64 %i.es, -1                     ; 2 uses
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %.noexc154, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i283

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i283: ; preds = %.noexc290
  %i.ew = getelementptr i8, ptr %i.ev, i64 4
  %.idx.i.i.i.i.i31.i284 = shl nuw nsw i64 %17, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ew, i8 0, i64 %.idx.i.i.i.i.i31.i284, i1 false), !tbaa !38
  br label %.noexc154

.noexc154:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i283, %.noexc290
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.es
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit155

_ZNSt6vectorIfSaIfEE6resizeEm.exit155:            ; preds = %.noexc154, %bb.bj
  %.sroa.0.4 = phi ptr [ %i.ev, %.noexc154 ], [ null, %bb.bj ] ; 8 uses
  %.sroa.22.4 = phi ptr [ %19, %.noexc154 ], [ null, %bb.bj ] ; 5 uses
  %i.ex = load i64, ptr %i.aw, align 8, !tbaa !20
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit155
  invoke void @_ZN16OpenColorIO_v2_514GetShaperRangeERKNS_5BakerERfS3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ez = load float, ptr %i.b, align 4, !tbaa !38
  %i.fa = load float, ptr %i.c, align 4, !tbaa !38
  invoke void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef %.sroa.0.4, i32 noundef %spec.store.select, i32 noundef 3, float noundef %i.ez, float noundef %i.fa)
          to label %bb.bq unwind label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i281, %bb.bl, %bb.bp, %bb.bn, %bb.bm
  %.sroa.0.1 = phi ptr [ %.sroa.0.4, %bb.bp ], [ %.sroa.0.4, %bb.bn ], [ %.sroa.0.4, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i281 ]
  %.sroa.22.1 = phi ptr [ %.sroa.22.4, %bb.bp ], [ %.sroa.22.4, %bb.bn ], [ %.sroa.22.4, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i281 ]
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.bp:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit155
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut1DEPfii(ptr noundef nonnull %.sroa.0.4, i32 noundef %spec.store.select, i32 noundef 3)
          to label %bb.bq unwind label %bb.bo

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.fc = zext nneg i32 %spec.store.select to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %.sroa.0.4, i64 noundef %i.fc, i64 noundef 1, i64 noundef 3)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.fd = load ptr, ptr %7, align 8, !tbaa !228
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %bb.br
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bq
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #23
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn114 = phi { ptr, i32 } [ %i.ff, %bb.bu ], [ %i.fe, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %.thread360

bb.bw:                                            ; preds = %bb.bs, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151
  %.sroa.19329.1357 = phi ptr [ %.sroa.19329.1.ph, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151 ], [ null, %bb.bs ] ; 7 uses
  %.sroa.0318.1352 = phi ptr [ %.sroa.0318.1.ph, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151 ], [ null, %bb.bs ] ; 10 uses
  %i.fg = phi i1 [ %i.bf, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151 ], [ false, %bb.bs ] ; 2 uses
  %.sroa.0305.2 = phi ptr [ %i.cq, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151 ], [ null, %bb.bs ] ; 10 uses
  %.sroa.19.2 = phi ptr [ %i.cs, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151 ], [ null, %bb.bs ] ; 7 uses
  %.sroa.0.2 = phi ptr [ null, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151 ], [ %.sroa.0.4, %bb.bs ] ; 10 uses
  %.sroa.22.2 = phi ptr [ null, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151 ], [ %.sroa.22.4, %bb.bs ] ; 7 uses
  %i.fh = load ptr, ptr %3, align 8, !tbaa !13
  %i.fi = getelementptr i8, ptr %i.fh, i64 -24    ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds i8, ptr %3, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !230
  %i.fn = and i32 %i.fm, -261
  %i.fo = or disjoint i32 %i.fn, 4
  store i32 %i.fo, ptr %i.fl, align 8, !tbaa !231
  %i.fp = load i64, ptr %i.fi, align 8
  %i.fq = getelementptr inbounds i8, ptr %3, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 6, ptr %i.fr, align 8, !tbaa !232
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK16OpenColorIO_v2_55Baker17getFormatMetadataEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.bx unwind label %bb.by     ; 4 uses

bb.bx:                                            ; preds = %bb.bw
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 72
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = call noundef i32 %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs) #23 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %.lr.ph, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164

bb.by:                                            ; preds = %bb.bw
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.lr.ph:                                           ; preds = %bb.bx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162
  %.087408 = phi i32 [ %i.gs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162 ], [ 0, %bb.bx ] ; 2 uses
  %i.fz = load ptr, ptr %i.fs, align 8, !tbaa !13
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 80
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, i32 noundef %.087408)
          to label %bb.bz unwind label %bb.cc     ; 2 uses

bb.bz:                                            ; preds = %.lr.ph
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.42, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157 unwind label %bb.cc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157: ; preds = %bb.bz
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !13
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = call noundef ptr %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.gc) #23 ; 3 uses
  %.not.i = icmp eq ptr %i.gh, null
  br i1 %.not.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157
  %i.gi = load ptr, ptr %3, align 8, !tbaa !13
  %i.gj = getelementptr i8, ptr %i.gi, i64 -24
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds i8, ptr %3, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !35
  %i.go = or i32 %i.gn, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.gl, i32 noundef %i.go)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160 unwind label %bb.cc

bb.cb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157
  %i.gp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gh) #23
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.gh, i64 noundef %i.gp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160 unwind label %bb.cc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160: ; preds = %bb.ca, %bb.cb
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162 unwind label %bb.cc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160
  %i.gs = add nuw nsw i32 %.087408, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gs, %i.fw
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !222

bb.cc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160, %bb.cb, %bb.ca, %bb.bz, %.lr.ph
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164 unwind label %bb.cd ; 0 uses

bb.cd:                                            ; preds = %bb.cl, %bb.ck, %_ZNSolsEf.exit189, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187, %_ZNSolsEf.exit185, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181, %bb.cj, %bb.ci, %_ZNSolsEf.exit175, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170, %bb.cg, %bb.cf, %bb.ce, %._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164: ; preds = %bb.bx, %._crit_edge
  br i1 %i.ba, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.44, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166: ; preds = %bb.ce
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %spec.store.select)
          to label %bb.cf unwind label %bb.cd

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168: ; preds = %bb.cf
  %i.gz = load float, ptr %i.b, align 4, !tbaa !38
  %i.ha = fcmp une float %i.gz, 0.000000e+00
  %i.hb = load float, ptr %i.c, align 4
  %i.hc = fcmp une float %i.hb, 1.000000e+00
  %or.cond4 = select i1 %i.ha, i1 true, i1 %i.hc
  br i1 %or.cond4, label %bb.cg, label %.critedge131

bb.cg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
  %i.hd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.45, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170: ; preds = %bb.cg
  %i.he = load float, ptr %i.b, align 4, !tbaa !38
  %i.hf = fpext float %i.he to double
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.hf)
          to label %_ZNSolsEf.exit unwind label %bb.cd ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173: ; preds = %_ZNSolsEf.exit
  %i.hi = load float, ptr %i.c, align 4, !tbaa !38
  %i.hj = fpext float %i.hi to double
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, double noundef %i.hj)
          to label %_ZNSolsEf.exit175 unwind label %bb.cd

_ZNSolsEf.exit175:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %.critedge131 unwind label %bb.cd ; 0 uses

end_hunk_0
