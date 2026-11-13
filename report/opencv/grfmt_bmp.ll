Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_bmp?download=true
inline.NumInlined: 404
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv16BaseImageEncoderD2Ev:bb.a
  %i.x = load i64, ptr %i.v, align 8, !tbaa !80
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !201 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !202 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  tail call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.af) #18
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i ], [ %i.ak, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %i.an = load ptr, ptr %.05.i.i.i, align 8, !tbaa !73 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !74
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #18
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i:  ; preds = %bb.d, %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.at, %i.am
  br i1 %.not.i.i.i7, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.aj, align 8, !tbaa !71
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.au = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ak, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !76
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #18
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv10BmpEncoderD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN2cv16BaseImageEncoderD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv10BmpEncoderD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN2cv16BaseImageEncoderD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv10BmpEncoder10newEncoderEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr.29") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #19, !noalias !209, !inline_history !207 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !109, !noalias !209
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !110, !noalias !209
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv10BmpEncoderESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !10, !noalias !209
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN2cv10BmpEncoderC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNSt12__shared_ptrIN2cv10BmpEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv10BmpEncoderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, !noalias !209, !inline_history !208

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv10BmpEncoderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 224) #18, !noalias !209, !inline_history !207
  resume { ptr, i32 } %i.e

_ZNSt12__shared_ptrIN2cv10BmpEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !212
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv10BmpEncoder5writeERKNS_3MatERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  %3 = alloca %"class.cv::WLByteStream", align 8  ; 50 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca [256 x %"struct.cv::PaletteEntry"], align 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !219  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !220  ; 4 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !96
  %i.g = lshr i32 %i.f, 5
  %i.h = and i32 %i.g, 127                        ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 3 uses
  %i.j = mul nsw i32 %i.i, %i.c                   ; 5 uses
  %i.k = add nsw i32 %i.j, 3
  %i.l = and i32 %i.k, -4                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN2cv11WBaseStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2cv12WLByteStreamE, i64 16), ptr %3, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !221  ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noundef zeroext i1 @_ZN2cv11WBaseStream4openERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.c unwind label %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.f, label %bb.di

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = invoke noundef zeroext i1 @_ZN2cv11WBaseStream4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.e unwind label %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  br i1 %i.q, label %bb.f, label %bb.di

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !107
  %i.t = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %.not140 = icmp eq ptr %i.s, %i.t
  br i1 %.not140, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 128
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %bb.ab
  %i.ap = icmp eq i8 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.063.lcssa = phi i1 [ false, %bb.f ], [ %i.ap, %._crit_edge.loopexit ]
  %i.aq = icmp ne i32 %i.i, 4
  %.not85 = select i1 %i.aq, i1 true, i1 %.063.lcssa ; 3 uses
  %i.ar = select i1 %.not85, i32 40, i32 124      ; 2 uses
  %.not111 = icmp eq i32 %i.h, 0                  ; 2 uses
  %8 = select i1 %.not111, i32 1024, i32 0
  %i.as = add nuw nsw i32 %i.ar, 14
  %9 = or disjoint i32 %i.as, %8                  ; 2 uses
  %i.at = sext i32 %i.l to i64
  %i.au = sext i32 %i.e to i64
  %i.av = mul nsw i64 %i.at, %i.au
  %i.aw = zext nneg i32 %9 to i64
  %i.ax = add nsw i64 %i.av, %i.aw                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !221 ; 6 uses
  %.not87 = icmp eq ptr %i.ay, null
  br i1 %.not87, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit, label %bb.ac

bb.g:                                             ; preds = %.lr.ph, %bb.ab
  %i.az = phi ptr [ %i.t, %.lr.ph ], [ %i.dd, %bb.ab ]
  %.062134 = phi i64 [ 0, %.lr.ph ], [ %i.db, %bb.ab ] ; 2 uses
  %.063133 = phi i8 [ 1, %.lr.ph ], [ %.1, %bb.ab ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.062134 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !87 ; 2 uses
  %i.bd = load i32, ptr %i.ba, align 4, !tbaa !87
  %cond2 = icmp eq i32 %i.bd, 768
  br i1 %cond2, label %bb.h, label %bb.ab

bb.h:                                             ; preds = %bb.g
  switch i32 %i.bc, label %bb.j [
    i32 0, label %bb.ab
    i32 3, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.be = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.k unwind label %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.b, %bb.d
  %lpad.loopexit.split-lp196 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp118

bb.k:                                             ; preds = %bb.j
  %.not89 = icmp eq ptr %i.be, null               ; 2 uses
  br i1 %.not89, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !224
  %i.bh = icmp slt i32 %i.bg, 3
  br i1 %i.bh, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.12, i32 noundef %i.bc)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %5, align 8, !tbaa !79
  %i.bj = load i64, ptr %i.v, align 8, !tbaa !16
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.bi, i64 noundef %i.bj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.x ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.o
  %i.bl = load ptr, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.w
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bn = load i64, ptr %i.w, align 8, !tbaa !80
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %.not89, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !225
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %i.bq = phi ptr [ %i.bp, %bb.p ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  store ptr %i.x, ptr %6, align 8, !tbaa !93, !alias.scope !228
  store i64 0, ptr %i.y, align 8, !tbaa !16, !alias.scope !228
  store i8 0, ptr %i.x, align 8, !tbaa !80, !alias.scope !228
  %i.br = load ptr, ptr %i.z, align 8, !tbaa !232, !noalias !228 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.br, null
  %i.bs = load ptr, ptr %i.aa, align 8, !noalias !228 ; 2 uses
  %i.bt = icmp ugt ptr %i.br, %i.bs
  %.08.i.i.i = select i1 %i.bt, ptr %i.br, ptr %i.bs ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.ab, align 8, !tbaa !233, !noalias !228 ; 2 uses
  %i.bv = ptrtoint ptr %.08.i.i.i to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.bu, i64 noundef %i.bx)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %6, align 8, !tbaa !79, !alias.scope !228 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.x
  br i1 %i.cb, label %.body, label %.body.sink.split

bb.t:                                             ; preds = %bb.q
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.s

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.t, %bb.r
  %i.cc = load ptr, ptr %6, align 8, !tbaa !79
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.bq, ptr noundef nonnull @.str.1, i32 noundef 658, ptr noundef nonnull @__func__._ZN2cv10BmpEncoder5writeERKNS_3MatERKSt6vectorIiSaIiEE, ptr noundef %i.cc)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cd = load ptr, ptr %6, align 8, !tbaa !79    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.x
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.u
  %i.cf = load i64, ptr %i.x, align 8, !tbaa !80
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  store ptr %i.ad, ptr %4, align 8, !tbaa !10
  %i.ch = load i64, ptr %i.af, align 8
  %i.ci = getelementptr inbounds i8, ptr %4, i64 %i.ch
  store ptr %i.ae, ptr %i.ci, align 8, !tbaa !10
  store ptr %i.ag, ptr %i.u, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !10
  %i.cj = load ptr, ptr %i.ac, align 8, !tbaa !79 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ai
  br i1 %i.ck, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.cl = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #18
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !10
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #17
  store ptr %i.ak, ptr %4, align 8, !tbaa !10
  %i.cn = load i64, ptr %i.am, align 8
  %i.co = getelementptr inbounds i8, ptr %4, i64 %i.cn
  store ptr %i.al, ptr %i.co, align 8, !tbaa !10
  store i64 0, ptr %i.an, align 8, !tbaa !235
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ab

bb.v:                                             ; preds = %bb.m
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %bb.n
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.x:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.w
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.x
  %i.cu = load i64, ptr %i.w, align 8, !tbaa !80
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.w
  %.pn90 = phi { ptr, i32 } [ %i.cq, %bb.w ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.cr, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.z

bb.y:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %6, align 8, !tbaa !79    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.x
  br i1 %i.cy, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.y, %bb.s
  %.sink = phi ptr [ %i.ca, %bb.s ], [ %i.cx, %bb.y ]
  %.pn92.ph = phi { ptr, i32 } [ %i.bz, %bb.s ], [ %i.cw, %bb.y ]
  %i.cz = load i64, ptr %i.x, align 8, !tbaa !80
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.da) #18
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.y, %bb.s
  %.pn92 = phi { ptr, i32 } [ %i.bz, %bb.s ], [ %i.cw, %bb.y ], [ %.pn92.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.z

bb.z:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %.pn92.pn = phi { ptr, i32 } [ %.pn92, %.body ], [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %bb.z ], [ %i.cp, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.loopexit.split-lp118

bb.ab:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.l, %bb.h, %bb.i, %bb.g
  %.1 = phi i8 [ 0, %bb.h ], [ %.063133, %bb.g ], [ 1, %bb.i ], [ 1, %bb.l ], [ 1, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %i.db = add i64 %.062134, 2                     ; 2 uses
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !107
  %i.dd = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 2
  %i.di = icmp ult i64 %i.db, %i.dh
  br i1 %i.di, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !217

bb.ac:                                            ; preds = %._crit_edge
  %i.dj = add nsw i64 %i.ax, 271
  %i.dk = and i64 %i.dj, -256                     ; 3 uses
  %i.dl = icmp slt i64 %i.ax, -271
  br i1 %i.dl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #20
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !74
  %i.do = load ptr, ptr %i.ay, align 8, !tbaa !73
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = icmp ult i64 %i.dr, %i.dk
  br i1 %i.ds, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !236
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.dq
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #19
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc110:                                        ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.dy = load ptr, ptr %i.ay, align 8, !tbaa !73 ; 4 uses
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !236
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 2 uses
  %i.ed = icmp sgt i64 %i.ec, 0
  br i1 %i.ed, label %bb.af, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

bb.af:                                            ; preds = %.noexc110
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr align 1 %i.dy, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.af, %.noexc110
  %.not.i8.i = icmp eq ptr %i.dy, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ee = load ptr, ptr %i.dm, align 8, !tbaa !74
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = sub i64 %i.ef, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.eg) #18
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.ag, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.dx, ptr %i.ay, align 8, !tbaa !73
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store ptr %i.eh, ptr %i.dt, align 8, !tbaa !236
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dk
  store ptr %i.ei, ptr %i.dm, align 8, !tbaa !74
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %bb.ae, %._crit_edge
  %i.ej = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putBytesEPKvi(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @.str.14, i32 noundef 2)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  br i1 %i.ej, label %bb.ai, label %.loopexit112

bb.ai:                                            ; preds = %bb.ah
  %i.ek = invoke noundef i32 @_ZN2cv13validateToIntEm(i64 noundef %i.ax)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.el = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.ek)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.el, label %bb.al, label %.loopexit112

bb.al:                                            ; preds = %bb.ak
  %i.em = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  br i1 %i.em, label %bb.an, label %.loopexit112

bb.an:                                            ; preds = %bb.am
  %i.en = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %9)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  br i1 %i.en, label %bb.ap, label %.loopexit112

bb.ap:                                            ; preds = %bb.ao
  %i.eo = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.ar)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.eo, label %bb.ar, label %.loopexit112

bb.ar:                                            ; preds = %bb.aq
  %i.ep = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.c)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ep, label %bb.at, label %.loopexit112

bb.at:                                            ; preds = %bb.as
  %i.eq = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.e)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  br i1 %i.eq, label %bb.av, label %.loopexit112

bb.av:                                            ; preds = %bb.au
  %i.er = invoke noundef zeroext i1 @_ZN2cv12WLByteStream7putWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 1)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  br i1 %i.er, label %bb.ax, label %.loopexit112

bb.ax:                                            ; preds = %bb.aw
  %i.es = shl nuw nsw i32 %i.i, 3
  %i.et = invoke noundef zeroext i1 @_ZN2cv12WLByteStream7putWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.es)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.et, label %bb.az, label %.loopexit112

bb.az:                                            ; preds = %bb.ay
  %i.eu = select i1 %.not85, i32 0, i32 3
  %i.ev = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.eu)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ev, label %bb.bb, label %.loopexit112

bb.bb:                                            ; preds = %bb.ba
  %i.ew = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.ew, label %bb.bd, label %.loopexit112

bb.bd:                                            ; preds = %bb.bc
  %i.ex = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd
  br i1 %i.ex, label %bb.bf, label %.loopexit112

bb.bf:                                            ; preds = %bb.be
  %i.ey = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ey, label %bb.bh, label %.loopexit112

bb.bh:                                            ; preds = %bb.bg
  %i.ez = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.ez, label %bb.bj, label %.loopexit112

bb.bj:                                            ; preds = %bb.bi
  %i.fa = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.fa, label %bb.bl, label %.loopexit112

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not85, label %bb.cy, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fb = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 16711680)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.fb, label %bb.bo, label %.loopexit112

bb.bo:                                            ; preds = %bb.bn
  %i.fc = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 65280)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.fc, label %bb.bq, label %.loopexit112

bb.bq:                                            ; preds = %bb.bp
  %i.fd = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 255)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  br i1 %i.fd, label %bb.bs, label %.loopexit112

bb.bs:                                            ; preds = %bb.br
  %i.fe = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef -16777216)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.fe, label %bb.bu, label %.loopexit112

bb.bu:                                            ; preds = %bb.bt
  %i.ff = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putBytesEPKvi(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @.str.13, i32 noundef 4)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.ff, label %.preheader.preheader, label %.loopexit112

.preheader.preheader:                             ; preds = %bb.bv
  %i.fg = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.1:                                     ; preds = %bb.ck
  %i.fh = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %.preheader.1
  br i1 %i.fh, label %bb.bx, label %.loopexit112

bb.bx:                                            ; preds = %bb.bw
  %i.fi = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.by:                                            ; preds = %bb.bx
  br i1 %i.fi, label %bb.bz, label %.loopexit112

bb.bz:                                            ; preds = %bb.by
  %i.fj = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.fj, label %.preheader.2, label %.loopexit112

.preheader.2:                                     ; preds = %bb.ca
  %i.fk = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %.preheader.2
  br i1 %i.fk, label %bb.cc, label %.loopexit112

bb.cc:                                            ; preds = %bb.cb
  %i.fl = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.fl, label %bb.ce, label %.loopexit112

bb.ce:                                            ; preds = %bb.cd
  %i.fm = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.fm, label %.critedge, label %.loopexit112

.critedge:                                        ; preds = %bb.cf
  %i.fn = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %.preheader.preheader
  br i1 %i.fg, label %bb.ch, label %.loopexit112

bb.ch:                                            ; preds = %bb.cg
  %i.fo = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.fo, label %bb.cj, label %.loopexit112

bb.cj:                                            ; preds = %bb.ci
  %i.fp = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.fp, label %.preheader.1, label %.loopexit112

bb.cl:                                            ; preds = %.critedge
  br i1 %i.fn, label %bb.cm, label %.loopexit112

bb.cm:                                            ; preds = %bb.cl
  %i.fq = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.fq, label %bb.co, label %.loopexit112

bb.co:                                            ; preds = %bb.cn
end_hunk_0
