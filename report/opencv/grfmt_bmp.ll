Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_bmp?download=true
inline.NumInlined: 404
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv16BaseImageEncoderD2Ev:bb.a
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
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noundef zeroext i1 @_ZN2cv11WBaseStream4openERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.g, label %bb.dn

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = invoke noundef zeroext i1 @_ZN2cv11WBaseStream4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  br i1 %i.r, label %bb.g, label %bb.dn

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107
  %i.u = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %.not132 = icmp eq ptr %i.t, %i.u
  br i1 %.not132, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ag = getelementptr i8, ptr %i.ae, i64 -24
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 128
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %bb.ad
  %i.aq = icmp eq i8 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.063.lcssa = phi i1 [ false, %bb.g ], [ %i.aq, %._crit_edge.loopexit ]
  %i.ar = icmp ne i32 %i.i, 4
  %.not85 = select i1 %i.ar, i1 true, i1 %.063.lcssa ; 3 uses
  %i.as = select i1 %.not85, i32 40, i32 124      ; 2 uses
  %.not111 = icmp eq i32 %i.h, 0                  ; 2 uses
  %i.at = add nuw nsw i32 %i.as, 14
  %8 = select i1 %.not111, i32 1078, i32 %i.at    ; 2 uses
  %i.au = sext i32 %i.l to i64
  %i.av = sext i32 %i.e to i64
  %i.aw = mul nsw i64 %i.au, %i.av
  %i.ax = zext nneg i32 %8 to i64
  %i.ay = add nsw i64 %i.aw, %i.ax                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !221 ; 6 uses
  %.not87 = icmp eq ptr %i.az, null
  br i1 %.not87, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit, label %bb.ae

bb.h:                                             ; preds = %.lr.ph, %bb.ad
  %i.ba = phi ptr [ %i.u, %.lr.ph ], [ %i.df, %bb.ad ]
  %.062126 = phi i64 [ 0, %.lr.ph ], [ %i.dd, %bb.ad ] ; 2 uses
  %.063125 = phi i8 [ 1, %.lr.ph ], [ %.1, %bb.ad ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.062126 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !87 ; 2 uses
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !87
  %cond2 = icmp eq i32 %i.be, 768
  br i1 %cond2, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %bb.h
  switch i32 %i.bd, label %bb.k [
    i32 0, label %bb.ad
    i32 3, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.ad

bb.k:                                             ; preds = %bb.i
  %i.bf = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.m unwind label %bb.l       ; 3 uses

bb.l:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.m:                                             ; preds = %bb.k
  %.not89 = icmp eq ptr %i.bf, null               ; 2 uses
  br i1 %.not89, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !224
  %i.bj = icmp slt i32 %i.bi, 3
  br i1 %i.bj, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.12, i32 noundef %i.bd)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %5, align 8, !tbaa !79
  %i.bl = load i64, ptr %i.w, align 8, !tbaa !16
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.bk, i64 noundef %i.bl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.z ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.q
  %i.bn = load ptr, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.x
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bp = load i64, ptr %i.x, align 8, !tbaa !80
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %.not89, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load ptr, ptr %i.bf, align 8, !tbaa !225
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r
  %i.bs = phi ptr [ %i.br, %bb.r ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  store ptr %i.y, ptr %6, align 8, !tbaa !93, !alias.scope !228
  store i64 0, ptr %i.z, align 8, !tbaa !16, !alias.scope !228
  store i8 0, ptr %i.y, align 8, !tbaa !80, !alias.scope !228
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !232, !noalias !228 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bt, null
  %i.bu = load ptr, ptr %i.ab, align 8, !noalias !228 ; 2 uses
  %i.bv = icmp ugt ptr %i.bt, %i.bu
  %.08.i.i.i = select i1 %i.bv, ptr %i.bt, ptr %i.bu ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %i.ac, align 8, !tbaa !233, !noalias !228 ; 2 uses
  %i.bx = ptrtoint ptr %.08.i.i.i to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.bw, i64 noundef %i.bz)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !79, !alias.scope !228 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.y
  br i1 %i.cd, label %.body, label %.body.sink.split

bb.v:                                             ; preds = %bb.s
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.u

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.v, %bb.t
  %i.ce = load ptr, ptr %6, align 8, !tbaa !79
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.bs, ptr noundef nonnull @.str.1, i32 noundef 658, ptr noundef nonnull @__func__._ZN2cv10BmpEncoder5writeERKNS_3MatERKSt6vectorIiSaIiEE, ptr noundef %i.ce)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cf = load ptr, ptr %6, align 8, !tbaa !79    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.y
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.w
  %i.ch = load i64, ptr %i.y, align 8, !tbaa !80
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  store ptr %i.ae, ptr %4, align 8, !tbaa !10
  %i.cj = load i64, ptr %i.ag, align 8
  %i.ck = getelementptr inbounds i8, ptr %4, i64 %i.cj
  store ptr %i.af, ptr %i.ck, align 8, !tbaa !10
  store ptr %i.ah, ptr %i.v, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !10
  %i.cl = load ptr, ptr %i.ad, align 8, !tbaa !79 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.aj
  br i1 %i.cm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.cn = load i64, ptr %i.aj, align 8, !tbaa !80
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #18
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !10
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #17
  store ptr %i.al, ptr %4, align 8, !tbaa !10
  %i.cp = load i64, ptr %i.an, align 8
  %i.cq = getelementptr inbounds i8, ptr %4, i64 %i.cp
  store ptr %i.am, ptr %i.cq, align 8, !tbaa !10
  store i64 0, ptr %i.ao, align 8, !tbaa !235
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ad

bb.x:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.z:                                             ; preds = %bb.q
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.x
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.z
  %i.cw = load i64, ptr %i.x, align 8, !tbaa !80
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.y
  %.pn90 = phi { ptr, i32 } [ %i.cs, %bb.y ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.ct, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %6, align 8, !tbaa !79    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.y
  br i1 %i.da, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.aa, %bb.u
  %.sink = phi ptr [ %i.cc, %bb.u ], [ %i.cz, %bb.aa ]
  %.pn92.ph = phi { ptr, i32 } [ %i.cb, %bb.u ], [ %i.cy, %bb.aa ]
  %i.db = load i64, ptr %i.y, align 8, !tbaa !80
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dc) #18
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.aa, %bb.u
  %.pn92 = phi { ptr, i32 } [ %i.cb, %bb.u ], [ %i.cy, %bb.aa ], [ %.pn92.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ab

bb.ab:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %.pn92.pn = phi { ptr, i32 } [ %.pn92, %.body ], [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %bb.ab ], [ %i.cr, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.do

bb.ad:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.n, %bb.i, %bb.j, %bb.h
  %.1 = phi i8 [ 0, %bb.i ], [ %.063125, %bb.h ], [ 1, %bb.j ], [ 1, %bb.n ], [ 1, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %i.dd = add i64 %.062126, 2                     ; 2 uses
  %i.de = load ptr, ptr %i.s, align 8, !tbaa !107
  %i.df = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 2
  %i.dk = icmp ult i64 %i.dd, %i.dj
  br i1 %i.dk, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !217

bb.ae:                                            ; preds = %._crit_edge
  %i.dl = add nsw i64 %i.ay, 271
  %i.dm = and i64 %i.dl, -256                     ; 3 uses
  %i.dn = icmp slt i64 %i.ay, -271
  br i1 %i.dn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #20
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !74
  %i.dq = load ptr, ptr %i.az, align 8, !tbaa !73
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = icmp ult i64 %i.dt, %i.dm
  br i1 %i.du, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !236
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.ds
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #19
          to label %.noexc110 unwind label %bb.aj ; 4 uses

.noexc110:                                        ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.ea = load ptr, ptr %i.az, align 8, !tbaa !73 ; 4 uses
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !236
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %bb.ah, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

bb.ah:                                            ; preds = %.noexc110
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr align 1 %i.ea, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.ah, %.noexc110
  %.not.i8.i = icmp eq ptr %i.ea, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.eg = load ptr, ptr %i.do, align 8, !tbaa !74
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ei) #18
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.ai, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.dz, ptr %i.az, align 8, !tbaa !73
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  store ptr %i.ej, ptr %i.dv, align 8, !tbaa !236
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dm
  store ptr %i.ek, ptr %i.do, align 8, !tbaa !74
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

bb.aj:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, %bb.af, %.critedge100, %bb.de, %bb.dd, %bb.da, %bb.cy, %bb.cw, %bb.cu, %bb.cs, %bb.cq, %.critedge, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.al, %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %bb.ag, %._crit_edge
  %i.em = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putBytesEPKvi(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @.str.14, i32 noundef 2)
          to label %bb.ak unwind label %bb.aj

bb.ak:                                            ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  br i1 %i.em, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.en = invoke noundef i32 @_ZN2cv13validateToIntEm(i64 noundef %i.ay)
          to label %bb.am unwind label %bb.aj

bb.am:                                            ; preds = %bb.al
  %i.eo = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.en)
          to label %bb.an unwind label %bb.aj

bb.an:                                            ; preds = %bb.am
  br i1 %i.eo, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.ep = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.ap unwind label %bb.aj

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.ep, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.eq = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %8)
          to label %bb.ar unwind label %bb.aj

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.eq, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.er = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.as)
          to label %bb.at unwind label %bb.aj

bb.at:                                            ; preds = %bb.as
  br i1 %i.er, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.es = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.c)
          to label %bb.av unwind label %bb.aj

bb.av:                                            ; preds = %bb.au
  br i1 %i.es, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.et = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.e)
          to label %bb.ax unwind label %bb.aj

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.et, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.eu = invoke noundef zeroext i1 @_ZN2cv12WLByteStream7putWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 1)
          to label %bb.az unwind label %bb.aj

bb.az:                                            ; preds = %bb.ay
  br i1 %i.eu, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.ev = shl nuw nsw i32 %i.i, 3
  %i.ew = invoke noundef zeroext i1 @_ZN2cv12WLByteStream7putWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.ev)
          to label %bb.bb unwind label %bb.aj

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.ew, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.ex = select i1 %.not85, i32 0, i32 3
  %i.ey = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.ex)
          to label %bb.bd unwind label %bb.aj

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.ey, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd
  %i.ez = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.bf unwind label %bb.aj

bb.bf:                                            ; preds = %bb.be
  br i1 %i.ez, label %bb.bg, label %.loopexit

bb.bg:                                            ; preds = %bb.bf
  %i.fa = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.bh unwind label %bb.aj

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.fa, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  %i.fb = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.bj unwind label %bb.aj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.fb, label %bb.bk, label %.loopexit

bb.bk:                                            ; preds = %bb.bj
  %i.fc = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.bl unwind label %bb.aj

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.fc, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %i.fd = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.bn unwind label %bb.aj

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.fd, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %bb.bn
  br i1 %.not85, label %bb.dc, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fe = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 16711680)
          to label %bb.bq unwind label %bb.aj

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.fe, label %bb.br, label %.loopexit

bb.br:                                            ; preds = %bb.bq
  %i.ff = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 65280)
          to label %bb.bs unwind label %bb.aj

bb.bs:                                            ; preds = %bb.br
  br i1 %i.ff, label %bb.bt, label %.loopexit

bb.bt:                                            ; preds = %bb.bs
  %i.fg = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 255)
          to label %bb.bu unwind label %bb.aj

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.fg, label %bb.bv, label %.loopexit

bb.bv:                                            ; preds = %bb.bu
  %i.fh = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef -16777216)
          to label %bb.bw unwind label %bb.aj

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.fh, label %bb.bx, label %.loopexit

bb.bx:                                            ; preds = %bb.bw
  %i.fi = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putBytesEPKvi(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @.str.13, i32 noundef 4)
          to label %bb.by unwind label %bb.aj

bb.by:                                            ; preds = %bb.bx
  br i1 %i.fi, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.by
  %i.fj = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cj unwind label %bb.ck

.preheader.1:                                     ; preds = %bb.co
  %i.fk = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.bz unwind label %bb.ck

bb.bz:                                            ; preds = %.preheader.1
  br i1 %i.fk, label %bb.ca, label %.loopexit

bb.ca:                                            ; preds = %bb.bz
  %i.fl = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cb unwind label %bb.ck

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.fl, label %bb.cc, label %.loopexit

bb.cc:                                            ; preds = %bb.cb
  %i.fm = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cd unwind label %bb.ck

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.fm, label %.preheader.2, label %.loopexit

.preheader.2:                                     ; preds = %bb.cd
  %i.fn = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.ce unwind label %bb.ck

bb.ce:                                            ; preds = %.preheader.2
  br i1 %i.fn, label %bb.cf, label %.loopexit

bb.cf:                                            ; preds = %bb.ce
  %i.fo = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cg unwind label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.fo, label %bb.ch, label %.loopexit

bb.ch:                                            ; preds = %bb.cg
  %i.fp = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.fp, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.ci
  %i.fq = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cp unwind label %bb.aj

bb.cj:                                            ; preds = %.preheader.preheader
  br i1 %i.fj, label %bb.cl, label %.loopexit

bb.ck:                                            ; preds = %bb.ch, %bb.cf, %.preheader.2, %bb.cc, %bb.ca, %.preheader.1, %bb.cn, %bb.cl, %.preheader.preheader
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.cl:                                            ; preds = %bb.cj
  %i.fs = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cm unwind label %bb.ck

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.fs, label %bb.cn, label %.loopexit

bb.cn:                                            ; preds = %bb.cm
  %i.ft = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.co unwind label %bb.ck

bb.co:                                            ; preds = %bb.cn
  br i1 %i.ft, label %.preheader.1, label %.loopexit

bb.cp:                                            ; preds = %.critedge
  br i1 %i.fq, label %bb.cq, label %.loopexit

bb.cq:                                            ; preds = %bb.cp
  %i.fu = invoke noundef zeroext i1 @_ZN2cv12WLByteStream8putDWordEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0)
          to label %bb.cr unwind label %bb.aj
end_hunk_0
