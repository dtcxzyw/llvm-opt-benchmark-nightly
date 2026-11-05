Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFExporter?download=true
inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_Z10ExportDataRN4glTF5AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEjPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE:bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %.01428.us.i.i.epil, i64 %i.eh
  %epil.iter103.next = add i64 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i64 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %_ZN4glTF8Accessor9WriteDataEmPKvm.exit, label %.lr.ph.split.us.i.i.epil, !llvm.loop !545

_ZN4glTF8Accessor9WriteDataEmPKvm.exit.loopexit100.unr-lcssa: ; preds = %.lr.ph.split.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4glTF8Accessor9WriteDataEmPKvm.exit, label %.lr.ph.split.i.i.epil.preheader

.lr.ph.split.i.i.epil.preheader:                  ; preds = %_ZN4glTF8Accessor9WriteDataEmPKvm.exit.loopexit100.unr-lcssa, %.lr.ph.split.i.i.preheader
  %.01428.i.i.epil.init = phi ptr [ %i.ej, %.lr.ph.split.i.i.preheader ], [ %i.fj, %_ZN4glTF8Accessor9WriteDataEmPKvm.exit.loopexit100.unr-lcssa ]
  %.01527.i.i.epil.init = phi ptr [ %4, %.lr.ph.split.i.i.preheader ], [ %i.fi, %_ZN4glTF8Accessor9WriteDataEmPKvm.exit.loopexit100.unr-lcssa ]
  %lcmp.mod101 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.split.i.i.epil

.lr.ph.split.i.i.epil:                            ; preds = %.lr.ph.split.i.i.epil, %.lr.ph.split.i.i.epil.preheader
  %.01428.i.i.epil = phi ptr [ %i.ga, %.lr.ph.split.i.i.epil ], [ %.01428.i.i.epil.init, %.lr.ph.split.i.i.epil.preheader ] ; 2 uses
  %.01527.i.i.epil = phi ptr [ %i.fz, %.lr.ph.split.i.i.epil ], [ %.01527.i.i.epil.init, %.lr.ph.split.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.i.i.epil ], [ 0, %.lr.ph.split.i.i.epil.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01428.i.i.epil, ptr align 1 %.01527.i.i.epil, i64 %.sroa.speculated.i.i, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %.01527.i.i.epil, i64 %i.cz
  %i.ga = getelementptr inbounds nuw i8, ptr %.01428.i.i.epil, i64 %i.eh
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4glTF8Accessor9WriteDataEmPKvm.exit, label %.lr.ph.split.i.i.epil, !llvm.loop !546

_ZN4glTF8Accessor9WriteDataEmPKvm.exit:           ; preds = %_ZN4glTF8Accessor9WriteDataEmPKvm.exit.loopexit100.unr-lcssa, %.lr.ph.split.i.i.epil, %_ZN4glTF8Accessor9WriteDataEmPKvm.exit.loopexit.unr-lcssa, %.lr.ph.split.us.i.i.epil, %bb.g, %bb.a
  %.sroa.066.0 = phi ptr [ null, %bb.a ], [ %.fca.0.extract, %bb.g ], [ %.fca.0.extract, %_ZN4glTF8Accessor9WriteDataEmPKvm.exit.loopexit.unr-lcssa ], [ %.fca.0.extract, %.lr.ph.split.us.i.i.epil ], [ %.fca.0.extract, %.lr.ph.split.i.i.epil ], [ %.fca.0.extract, %_ZN4glTF8Accessor9WriteDataEmPKvm.exit.loopexit100.unr-lcssa ]
  %.sroa.11.0 = phi i32 [ 0, %bb.a ], [ %.fca.1.extract, %bb.g ], [ %.fca.1.extract, %_ZN4glTF8Accessor9WriteDataEmPKvm.exit.loopexit.unr-lcssa ], [ %.fca.1.extract, %.lr.ph.split.us.i.i.epil ], [ %.fca.1.extract, %.lr.ph.split.i.i.epil ], [ %.fca.1.extract, %_ZN4glTF8Accessor9WriteDataEmPKvm.exit.loopexit100.unr-lcssa ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.066.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.11.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA41_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !548 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(41) %1) #30
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(41) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA41_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #30
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA41_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA41_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #30
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA41_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume
}

declare noundef i32 @_ZNK6Assimp16ExportProperties18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5o3dgc14IndexedFaceSetItE13ComputeMinMaxENS_27O3DGCSC3DMCQuantizationModeE(ptr noundef nonnull align 8 dereferenceable(80000) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !guid !565 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit, label %.preheader101.i.preheader

.preheader101.i.preheader:                        ; preds = %bb.a
  %i.h = load float, ptr %i.b, align 4            ; 6 uses
  store float %i.h, ptr %i.e, align 8
  store float %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load float, ptr %i.i, align 4            ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store float %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store float %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load float, ptr %i.m, align 4            ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store float %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  store float %i.n, ptr %i.p, align 4
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %._crit_edge107.split.i, label %.preheader99.i

.preheader99.i:                                   ; preds = %.preheader101.i.preheader, %._crit_edge.i
  %i.q = phi float [ %i.bi, %._crit_edge.i ], [ %i.n, %.preheader101.i.preheader ] ; 2 uses
  %i.r = phi float [ %i.bf, %._crit_edge.i ], [ %i.n, %.preheader101.i.preheader ] ; 2 uses
  %i.s = phi float [ %i.bb, %._crit_edge.i ], [ %i.j, %.preheader101.i.preheader ] ; 2 uses
  %i.t = phi float [ %i.ay, %._crit_edge.i ], [ %i.j, %.preheader101.i.preheader ] ; 2 uses
  %i.u = phi float [ %i.au, %._crit_edge.i ], [ %i.h, %.preheader101.i.preheader ] ; 2 uses
  %i.v = phi float [ %i.ar, %._crit_edge.i ], [ %i.h, %.preheader101.i.preheader ] ; 2 uses
  %.087106.i = phi i64 [ %i.bk, %._crit_edge.i ], [ 1, %.preheader101.i.preheader ]
  %.190105.i = phi i64 [ %i.bj, %._crit_edge.i ], [ 3, %.preheader101.i.preheader ] ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.b, i64 %.190105.i ; 4 uses
  %i.x = load float, ptr %i.w, align 4            ; 4 uses
  %i.y = fcmp olt float %i.v, %i.x
  br i1 %i.y, label %bb.b, label %bb.c

._crit_edge107.split.i:                           ; preds = %._crit_edge.i, %.preheader101.i.preheader
  %i.z = phi float [ %i.n, %.preheader101.i.preheader ], [ %i.bi, %._crit_edge.i ] ; 3 uses
  %i.aa = phi float [ %i.n, %.preheader101.i.preheader ], [ %i.bf, %._crit_edge.i ] ; 2 uses
  %i.ab = phi float [ %i.j, %.preheader101.i.preheader ], [ %i.bb, %._crit_edge.i ] ; 3 uses
  %i.ac = phi float [ %i.j, %.preheader101.i.preheader ], [ %i.ay, %._crit_edge.i ] ; 2 uses
  %i.ad = phi float [ %i.h, %.preheader101.i.preheader ], [ %i.au, %._crit_edge.i ] ; 3 uses
  %i.ae = phi float [ %i.h, %.preheader101.i.preheader ], [ %i.ar, %._crit_edge.i ] ; 2 uses
  switch i32 %1, label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit [
    i32 0, label %.lr.ph115.i.preheader
    i32 1, label %.lr.ph.i
  ]

.lr.ph115.i.preheader:                            ; preds = %._crit_edge107.split.i
  %i.af = fsub float %i.ae, %i.ad                 ; 2 uses
  %2 = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float 0.000000e+00)
  %i.ag = fsub float %i.ac, %i.ab                 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %2)
  %i.ai = fsub float %i.aa, %i.z                  ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ah)
  %i.ak = tail call noundef float @sqrtf(float noundef %i.aj) #30 ; 2 uses
  %i.al = load <2 x float>, ptr %i.e, align 8
  %i.am = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fadd <2 x float> %i.an, %i.al
  store <2 x float> %i.ao, ptr %i.f, align 4
  %i.ap = load float, ptr %i.o, align 8
  %i.aq = fadd float %i.ak, %i.ap
  br label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit.sink.split

bb.b:                                             ; preds = %.preheader99.i
  store float %i.x, ptr %i.f, align 4
  %.pre.i = load float, ptr %i.w, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader99.i
  %i.ar = phi float [ %i.x, %bb.b ], [ %i.v, %.preheader99.i ] ; 2 uses
  %i.as = phi float [ %.pre.i, %bb.b ], [ %i.x, %.preheader99.i ] ; 3 uses
  %i.at = fcmp ogt float %i.u, %i.as
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.as, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = phi float [ %i.as, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %i.av = getelementptr i8, ptr %i.w, i64 4       ; 2 uses
  %i.aw = load float, ptr %i.av, align 4          ; 4 uses
  %i.ax = fcmp olt float %i.t, %i.aw
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.aw, ptr %i.l, align 8
  %.pre.i.1 = load float, ptr %i.av, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ay = phi float [ %i.aw, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %i.az = phi float [ %.pre.i.1, %bb.f ], [ %i.aw, %bb.e ] ; 3 uses
  %i.ba = fcmp ogt float %i.s, %i.az
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %i.az, ptr %i.k, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bb = phi float [ %i.az, %bb.h ], [ %i.s, %bb.g ] ; 2 uses
  %i.bc = getelementptr i8, ptr %i.w, i64 8       ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4          ; 4 uses
  %i.be = fcmp olt float %i.r, %i.bd
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.bd, ptr %i.p, align 4
  %.pre.i.2 = load float, ptr %i.bc, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bf = phi float [ %i.bd, %bb.j ], [ %i.r, %bb.i ] ; 2 uses
  %i.bg = phi float [ %.pre.i.2, %bb.j ], [ %i.bd, %bb.i ] ; 3 uses
  %i.bh = fcmp ogt float %i.q, %i.bg
  br i1 %i.bh, label %bb.l, label %._crit_edge.i

bb.l:                                             ; preds = %bb.k
  store float %i.bg, ptr %i.o, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l, %bb.k
  %i.bi = phi float [ %i.bg, %bb.l ], [ %i.q, %bb.k ] ; 2 uses
  %i.bj = add i64 %.190105.i, 3
  %i.bk = add nuw i64 %.087106.i, 1               ; 2 uses
  %exitcond126.not.i = icmp eq i64 %i.bk, %i.d
  br i1 %exitcond126.not.i, label %._crit_edge107.split.i, label %.preheader99.i, !llvm.loop !549

.lr.ph.i:                                         ; preds = %._crit_edge107.split.i
  %i.bl = fsub float %i.ae, %i.ad                 ; 2 uses
  %i.bm = fsub float %i.ac, %i.ab                 ; 2 uses
  %i.bn = fcmp ogt float %i.bm, %i.bl
  %.1.i = select i1 %i.bn, float %i.bm, float %i.bl ; 2 uses
  %i.bo = fsub float %i.aa, %i.z                  ; 2 uses
  %i.bp = fcmp ogt float %i.bo, %.1.i
  %.1.i.1 = select i1 %i.bp, float %i.bo, float %.1.i ; 3 uses
  %i.bq = fadd float %.1.i.1, %i.ad
  store float %i.bq, ptr %i.f, align 4
  %i.br = fadd float %.1.i.1, %i.ab
  store float %i.br, ptr %i.l, align 8
  %i.bs = fadd float %.1.i.1, %i.z
  br label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit.sink.split

_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit.sink.split: ; preds = %.lr.ph115.i.preheader, %.lr.ph.i
  %.sink = phi float [ %i.bs, %.lr.ph.i ], [ %i.aq, %.lr.ph115.i.preheader ]
  store float %.sink, ptr %i.p, align 4
  br label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit

_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit: ; preds = %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit.sink.split, %bb.a, %._crit_edge107.split.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8            ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load i64, ptr %i.bv, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.bz = icmp eq i64 %i.bw, 0
  br i1 %i.bz, label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42, label %.preheader101.i12.preheader

.preheader101.i12.preheader:                      ; preds = %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit
  %i.ca = load float, ptr %i.bu, align 4          ; 6 uses
  store float %i.ca, ptr %i.bx, align 8
  store float %i.ca, ptr %i.by, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cc = load float, ptr %i.cb, align 4          ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store float %i.cc, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store float %i.cc, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cg = load float, ptr %i.cf, align 4          ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store float %i.cg, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  store float %i.cg, ptr %i.ci, align 4
  %.not74 = icmp eq i64 %i.bw, 1
  br i1 %.not74, label %._crit_edge107.split.i16, label %.preheader99.i34

.preheader99.i34:                                 ; preds = %.preheader101.i12.preheader, %._crit_edge.i39
  %i.cj = phi float [ %i.eb, %._crit_edge.i39 ], [ %i.cg, %.preheader101.i12.preheader ] ; 2 uses
  %i.ck = phi float [ %i.dy, %._crit_edge.i39 ], [ %i.cg, %.preheader101.i12.preheader ] ; 2 uses
  %i.cl = phi float [ %i.du, %._crit_edge.i39 ], [ %i.cc, %.preheader101.i12.preheader ] ; 2 uses
  %i.cm = phi float [ %i.dr, %._crit_edge.i39 ], [ %i.cc, %.preheader101.i12.preheader ] ; 2 uses
  %i.cn = phi float [ %i.dn, %._crit_edge.i39 ], [ %i.ca, %.preheader101.i12.preheader ] ; 2 uses
  %i.co = phi float [ %i.dk, %._crit_edge.i39 ], [ %i.ca, %.preheader101.i12.preheader ] ; 2 uses
  %.087106.i35 = phi i64 [ %i.ed, %._crit_edge.i39 ], [ 1, %.preheader101.i12.preheader ]
  %.190105.i36 = phi i64 [ %i.ec, %._crit_edge.i39 ], [ 3, %.preheader101.i12.preheader ] ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.bu, i64 %.190105.i36 ; 4 uses
  %i.cq = load float, ptr %i.cp, align 4          ; 4 uses
  %i.cr = fcmp olt float %i.co, %i.cq
  br i1 %i.cr, label %bb.m, label %bb.n

._crit_edge107.split.i16:                         ; preds = %._crit_edge.i39, %.preheader101.i12.preheader
  %i.cs = phi float [ %i.cg, %.preheader101.i12.preheader ], [ %i.eb, %._crit_edge.i39 ] ; 3 uses
  %i.ct = phi float [ %i.cg, %.preheader101.i12.preheader ], [ %i.dy, %._crit_edge.i39 ] ; 2 uses
  %i.cu = phi float [ %i.cc, %.preheader101.i12.preheader ], [ %i.du, %._crit_edge.i39 ] ; 3 uses
  %i.cv = phi float [ %i.cc, %.preheader101.i12.preheader ], [ %i.dr, %._crit_edge.i39 ] ; 2 uses
  %i.cw = phi float [ %i.ca, %.preheader101.i12.preheader ], [ %i.dn, %._crit_edge.i39 ] ; 3 uses
  %i.cx = phi float [ %i.ca, %.preheader101.i12.preheader ], [ %i.dk, %._crit_edge.i39 ] ; 2 uses
  switch i32 %1, label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42 [
    i32 0, label %.lr.ph115.i26.preheader
    i32 1, label %.lr.ph.i17
  ]

.lr.ph115.i26.preheader:                          ; preds = %._crit_edge107.split.i16
  %i.cy = fsub float %i.cx, %i.cw                 ; 2 uses
  %3 = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float 0.000000e+00)
  %i.cz = fsub float %i.cv, %i.cu                 ; 2 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %3)
  %i.db = fsub float %i.ct, %i.cs                 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.da)
  %i.dd = tail call noundef float @sqrtf(float noundef %i.dc) #30 ; 2 uses
  %i.de = load <2 x float>, ptr %i.bx, align 8
  %i.df = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fadd <2 x float> %i.dg, %i.de
  store <2 x float> %i.dh, ptr %i.by, align 4
  %i.di = load float, ptr %i.ch, align 8
  %i.dj = fadd float %i.dd, %i.di
  br label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42.sink.split

bb.m:                                             ; preds = %.preheader99.i34
  store float %i.cq, ptr %i.by, align 4
  %.pre.i41 = load float, ptr %i.cp, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader99.i34
  %i.dk = phi float [ %i.cq, %bb.m ], [ %i.co, %.preheader99.i34 ] ; 2 uses
  %i.dl = phi float [ %.pre.i41, %bb.m ], [ %i.cq, %.preheader99.i34 ] ; 3 uses
  %i.dm = fcmp ogt float %i.cn, %i.dl
  br i1 %i.dm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %i.dl, ptr %i.bx, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dn = phi float [ %i.dl, %bb.o ], [ %i.cn, %bb.n ] ; 2 uses
  %i.do = getelementptr i8, ptr %i.cp, i64 4      ; 2 uses
  %i.dp = load float, ptr %i.do, align 4          ; 4 uses
  %i.dq = fcmp olt float %i.cm, %i.dp
  br i1 %i.dq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float %i.dp, ptr %i.ce, align 8
  %.pre.i41.1 = load float, ptr %i.do, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dr = phi float [ %i.dp, %bb.q ], [ %i.cm, %bb.p ] ; 2 uses
  %i.ds = phi float [ %.pre.i41.1, %bb.q ], [ %i.dp, %bb.p ] ; 3 uses
  %i.dt = fcmp ogt float %i.cl, %i.ds
  br i1 %i.dt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store float %i.ds, ptr %i.cd, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.du = phi float [ %i.ds, %bb.s ], [ %i.cl, %bb.r ] ; 2 uses
  %i.dv = getelementptr i8, ptr %i.cp, i64 8      ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4          ; 4 uses
  %i.dx = fcmp olt float %i.ck, %i.dw
  br i1 %i.dx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %i.dw, ptr %i.ci, align 4
  %.pre.i41.2 = load float, ptr %i.dv, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dy = phi float [ %i.dw, %bb.u ], [ %i.ck, %bb.t ] ; 2 uses
  %i.dz = phi float [ %.pre.i41.2, %bb.u ], [ %i.dw, %bb.t ] ; 3 uses
  %i.ea = fcmp ogt float %i.cj, %i.dz
  br i1 %i.ea, label %bb.w, label %._crit_edge.i39

bb.w:                                             ; preds = %bb.v
  store float %i.dz, ptr %i.ch, align 8
  br label %._crit_edge.i39

._crit_edge.i39:                                  ; preds = %bb.w, %bb.v
  %i.eb = phi float [ %i.dz, %bb.w ], [ %i.cj, %bb.v ] ; 2 uses
  %i.ec = add i64 %.190105.i36, 3
  %i.ed = add nuw i64 %.087106.i35, 1             ; 2 uses
  %exitcond126.not.i40 = icmp eq i64 %i.ed, %i.bw
  br i1 %exitcond126.not.i40, label %._crit_edge107.split.i16, label %.preheader99.i34, !llvm.loop !549

.lr.ph.i17:                                       ; preds = %._crit_edge107.split.i16
  %i.ee = fsub float %i.cx, %i.cw                 ; 2 uses
  %i.ef = fsub float %i.cv, %i.cu                 ; 2 uses
  %i.eg = fcmp ogt float %i.ef, %i.ee
  %.1.i20 = select i1 %i.eg, float %i.ef, float %i.ee ; 2 uses
  %i.eh = fsub float %i.ct, %i.cs                 ; 2 uses
  %i.ei = fcmp ogt float %i.eh, %.1.i20
  %.1.i20.1 = select i1 %i.ei, float %i.eh, float %.1.i20 ; 3 uses
  %i.ej = fadd float %.1.i20.1, %i.cw
  store float %i.ej, ptr %i.by, align 4
  %i.ek = fadd float %.1.i20.1, %i.cu
  store float %i.ek, ptr %i.ce, align 8
  %i.el = fadd float %.1.i20.1, %i.cs
  br label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42.sink.split

_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42.sink.split: ; preds = %.lr.ph115.i26.preheader, %.lr.ph.i17
  %.sink141 = phi float [ %i.el, %.lr.ph.i17 ], [ %i.dj, %.lr.ph115.i26.preheader ]
  store float %.sink141, ptr %i.ci, align 4
  br label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42

_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42: ; preds = %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42.sink.split, %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit, %._crit_edge107.split.i16
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.en = load i64, ptr %i.em, align 8            ; 2 uses
  %.not81 = icmp eq i64 %i.en, 0
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 75896
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 6264
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 10360
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 43128
  br label %bb.x

._crit_edge:                                      ; preds = %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit73, %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42
  ret void

bb.x:                                             ; preds = %.lr.ph, %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit73
  %.080 = phi i64 [ 0, %.lr.ph ], [ %i.kh, %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit73 ] ; 6 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.080
  %i.eu = load ptr, ptr %i.et, align 8            ; 9 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.080
  %i.ew = load i64, ptr %i.ev, align 8            ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.080
  %i.ey = load i64, ptr %i.ex, align 8            ; 25 uses
  %i.ez = shl i64 %.080, 5                        ; 2 uses
  %i.fa = getelementptr [4 x i8], ptr %i.er, i64 %i.ez ; 21 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ez ; 20 uses
  %i.fc = icmp eq i64 %i.ew, 0
  %i.fd = icmp eq i64 %i.ey, 0
  %or.cond.i = or i1 %i.fc, %i.fd
  br i1 %or.cond.i, label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit73, label %.preheader101.i43.preheader

.preheader101.i43.preheader:                      ; preds = %bb.x
  %min.iters.check170 = icmp ult i64 %i.ey, 4
  br i1 %min.iters.check170, label %.preheader101.i43.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader101.i43.preheader
  %i.fe = shl i64 %.080, 7
  %i.ff = shl i64 %i.ey, 2                        ; 2 uses
  %i.fg = getelementptr i8, ptr %0, i64 %i.fe
  %i.fh = getelementptr i8, ptr %i.fg, i64 43128
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.ff
  %i.fj = getelementptr i8, ptr %i.eu, i64 %i.ff
  %bound0 = icmp ult ptr %i.fa, %i.fj
  %bound1 = icmp ult ptr %i.eu, %i.fi
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader101.i43.preheader181, label %vector.ph171

vector.ph171:                                     ; preds = %vector.memcheck
  %n.vec172 = and i64 %i.ey, -4                   ; 3 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next176, %vector.body173 ] ; 4 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %index174
  %wide.load175 = load <4 x float>, ptr %i.fk, align 4, !alias.scope !566 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %index174
  store <4 x float> %wide.load175, ptr %i.fl, align 8, !alias.scope !567, !noalias !566
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index174
  store <4 x float> %wide.load175, ptr %i.fm, align 8, !alias.scope !567, !noalias !566
  %index.next176 = add nuw i64 %index174, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next176, %n.vec172
  br i1 %i.fn, label %middle.block177, label %vector.body173, !llvm.loop !553

middle.block177:                                  ; preds = %vector.body173
  %cmp.n178 = icmp eq i64 %i.ey, %n.vec172
  br i1 %cmp.n178, label %.preheader100.i46, label %.preheader101.i43.preheader181

.preheader101.i43.preheader181:                   ; preds = %vector.memcheck, %.preheader101.i43.preheader, %middle.block177
  %.088103.i44.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader101.i43.preheader ], [ %n.vec172, %middle.block177 ] ; 3 uses
  %xtraiter = and i64 %i.ey, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader101.i43.prol.loopexit, label %.preheader101.i43.prol

.preheader101.i43.prol:                           ; preds = %.preheader101.i43.preheader181, %.preheader101.i43.prol
  %.088103.i44.prol = phi i64 [ %i.fo, %.preheader101.i43.prol ], [ %.088103.i44.ph, %.preheader101.i43.preheader181 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader101.i43.prol ], [ 0, %.preheader101.i43.preheader181 ]
  %i.fo = add nuw i64 %.088103.i44.prol, 1        ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.088103.i44.prol
  %i.fq = load float, ptr %i.fp, align 4          ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %.088103.i44.prol
  store float %i.fq, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.088103.i44.prol
  store float %i.fq, ptr %i.fs, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader101.i43.prol.loopexit, label %.preheader101.i43.prol, !llvm.loop !554

.preheader101.i43.prol.loopexit:                  ; preds = %.preheader101.i43.prol, %.preheader101.i43.preheader181
  %.088103.i44.unr = phi i64 [ %.088103.i44.ph, %.preheader101.i43.preheader181 ], [ %i.fo, %.preheader101.i43.prol ]
  %i.ft = sub i64 %.088103.i44.ph, %i.ey
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %.preheader100.i46, label %.preheader101.i43

.preheader100.i46:                                ; preds = %.preheader101.i43.prol.loopexit, %.preheader101.i43, %middle.block177
  %i.fv = icmp ugt i64 %i.ew, 1
  br i1 %i.fv, label %.preheader99.i65, label %._crit_edge107.split.i47

.preheader101.i43:                                ; preds = %.preheader101.i43.prol.loopexit, %.preheader101.i43
end_hunk_0
