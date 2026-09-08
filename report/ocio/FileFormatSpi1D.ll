Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatSpi1D?download=true
inline.NumInlined: 804
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:._crit_edge.i.i
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit588

_ZNSt6vectorIfSaIfEED2Ev.exit588:                 ; preds = %bb.dx, %bb.ep, %.thread, %bb.eo, %bb.bu, %bb.bi
  %.pn194.pn.pn = phi { ptr, i32 } [ %i.oo, %bb.bi ], [ %.pn190.pn.pn, %.thread ], [ %i.qk, %bb.bu ], [ %.pn190.pn.pn, %bb.eo ], [ %i.yr, %bb.dx ], [ %i.aaq, %bb.ep ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit588, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %.pn194.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit588 ], [ %.pn166.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466 ], [ %.pn163.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446 ], [ %.pn159.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426 ], [ %.pn156.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389 ], [ %.pn153.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369 ], [ %.pn150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::shared_ptr.38", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca float, align 4                    ; 7 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %8 = alloca %"class.OpenColorIO_v2_5::PackedImageDesc", align 8 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %i.f = icmp eq i64 %i.e, 5
  br i1 %i.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.h = load i32, ptr %i.g, align 1
  %i.i = xor i32 %i.h, 828993651
  %i.j = getelementptr i8, ptr %i.g, i64 4
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = xor i32 %i.l, 100
  %i.n = or i32 %i.i, %i.m
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread129, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.41, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.r = load ptr, ptr %2, align 8, !tbaa !27
  %i.s = load i64, ptr %i.d, align 8, !tbaa !21
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.42, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  %i.w = load ptr, ptr %5, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef %i.w)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #28
          to label %bb.az unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %.030 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.030, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.030, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn48132 = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.v) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.d
  %.pn48.pn = phi { ptr, i32 } [ %.pn48132, %bb.f ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.x, %bb.d ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ay

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread129: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNK16OpenColorIO_v2_55Baker9getConfigEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.38") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.af = invoke noundef i32 @_ZNK16OpenColorIO_v2_55Baker11getCubeSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread129
  %i.ag = icmp eq i32 %i.af, -1
  %spec.store.select = select i1 %i.ag, i32 4096, i32 %i.af ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ah = invoke noundef ptr @_ZNK16OpenColorIO_v2_55Baker14getShaperSpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.j unwind label %bb.t       ; 4 uses

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread129
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.aj, ptr %7, align 8, !tbaa !18
  %i.ak = icmp eq ptr %i.ah, null
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #28
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.al, ptr %i.a, align 8, !tbaa !38
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.l
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc53 unwind label %bb.u   ; 2 uses

.noexc53:                                         ; preds = %.noexc.i
  store ptr %i.an, ptr %7, align 8, !tbaa !27
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc53, %bb.l
  %i.ap = phi ptr [ %i.an, %.noexc53 ], [ %i.aj, %bb.l ] ; 2 uses
  switch i64 %i.al, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.aq = load i8, ptr %i.ah, align 1, !tbaa !22
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !22
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.ah, i64 %i.al, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !21
  %i.at = load ptr, ptr %7, align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !48
  %i.av = mul nsw i32 %spec.store.select, 3
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %.not133 = icmp eq i32 %spec.store.select, 0
  br i1 %.not133, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = icmp slt i32 %spec.store.select, 0
  br i1 %i.ax, label %bb.q, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
          to label %.noexc113 unwind label %bb.v

.noexc113:                                        ; preds = %bb.q
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.p
  %i.ay = shl nuw nsw i64 %i.aw, 2
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #26
          to label %.noexc114 unwind label %bb.v  ; 4 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  store float 0.000000e+00, ptr %i.az, align 4, !tbaa !48
  %10 = add nsw i64 %i.aw, -1                     ; 2 uses
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %.noexc54, label %.noexc114.a

.noexc114.a:                                      ; preds = %.noexc114
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %10, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ba, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !48
  br label %.noexc54

.noexc54:                                         ; preds = %.noexc114.a, %.noexc114
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.aw
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %.noexc54, %bb.o
  %.sroa.0.2 = phi ptr [ %i.az, %.noexc54 ], [ null, %bb.o ] ; 10 uses
  %.sroa.20.2 = phi ptr [ %12, %.noexc54 ], [ null, %bb.o ] ; 5 uses
  %i.bb = load i64, ptr %i.as, align 8, !tbaa !21
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  invoke void @_ZN16OpenColorIO_v2_514GetShaperRangeERKNS_5BakerERfS3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bd = load float, ptr %i.b, align 4, !tbaa !48
  %i.be = load float, ptr %i.c, align 4, !tbaa !48
  invoke void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef %.sroa.0.2, i32 noundef %spec.store.select, i32 noundef 3, float noundef %i.bd, float noundef %i.be)
          to label %bb.x unwind label %bb.v

bb.t:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.u:                                             ; preds = %.noexc.i, %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.v:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %bb.q, %bb.w, %bb.s, %bb.r
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %bb.w ], [ %.sroa.0.2, %bb.s ], [ %.sroa.0.2, %bb.r ], [ null, %bb.q ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ]
  %.sroa.20.0 = phi ptr [ %.sroa.20.2, %bb.w ], [ %.sroa.20.2, %bb.s ], [ %.sroa.20.2, %bb.r ], [ null, %bb.q ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ]
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut1DEPfii(ptr noundef nonnull %.sroa.0.2, i32 noundef %spec.store.select, i32 noundef 3)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.bi = zext nneg i32 %spec.store.select to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %.sroa.0.2, i64 noundef %i.bi, i64 noundef 1, i64 noundef 3)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN16OpenColorIO_v2_525GetInputToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.bj = load ptr, ptr %9, align 8, !tbaa !140
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bk = load ptr, ptr %3, align 8, !tbaa !15
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24    ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %3, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !141
  %i.bq = and i32 %i.bp, -261
  %i.br = or disjoint i32 %i.bq, 4
  store i32 %i.br, ptr %i.bo, align 8, !tbaa !142
  %i.bs = load i64, ptr %i.bl, align 8
  %i.bt = getelementptr inbounds i8, ptr %3, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 6, ptr %i.bu, align 8, !tbaa !143
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.43, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56: ; preds = %bb.aa
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.44, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.45, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.by = load float, ptr %i.b, align 4, !tbaa !48
  %i.bz = fpext float %i.by to double
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.bz)
          to label %_ZNSolsEf.exit unwind label %bb.ae ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZNSolsEf.exit
  %i.cc = load float, ptr %i.c, align 4, !tbaa !48
  %i.cd = fpext float %i.cc to double
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, double noundef %i.cd)
          to label %_ZNSolsEf.exit65 unwind label %bb.ae

_ZNSolsEf.exit65:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.44, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67: ; preds = %_ZNSolsEf.exit65
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.47, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %spec.store.select)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.44, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %bb.ab
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.48, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.44, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.44, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %.not143 = icmp eq i32 %spec.store.select, 0
  br i1 %.not143, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  br label %.lr.ph

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %bb.ae ; 0 uses

bb.ac:                                            ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ad:                                            ; preds = %bb.y
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %bb.ab, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67, %_ZNSolsEf.exit65, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56, %bb.aa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %bb.z
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 ] ; 2 uses
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.50, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83: ; preds = %.lr.ph
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 %.idx ; 3 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !48
  %i.cu = fpext float %i.ct to double
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.cu)
          to label %_ZNSolsEf.exit85 unwind label %bb.af ; 2 uses

_ZNSolsEf.exit85:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %_ZNSolsEf.exit85
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !48
  %i.cz = fpext float %i.cy to double
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, double noundef %i.cz)
          to label %_ZNSolsEf.exit89 unwind label %bb.af ; 2 uses

_ZNSolsEf.exit89:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91: ; preds = %_ZNSolsEf.exit89
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !48
  %i.de = fpext float %i.dd to double
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.da, double noundef %i.de)
          to label %_ZNSolsEf.exit93 unwind label %bb.af

_ZNSolsEf.exit93:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull @.str.44, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZNSolsEf.exit93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge, label %.lr.ph, !llvm.loop !135

bb.af:                                            ; preds = %_ZNSolsEf.exit93, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91, %_ZNSolsEf.exit89, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87, %_ZNSolsEf.exit85, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83, %.lr.ph
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

end_hunk_0
