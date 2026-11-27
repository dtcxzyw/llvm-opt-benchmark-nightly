Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/combobox?download=true
inline.NumInlined: 518
inline.NumDeleted: 351
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7nanogui8ComboBoxC2EPNS_6WidgetERKNSt3__16vectorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS8_ISA_EEEESE_:bb.a
  br i1 %i.k, label %.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFviEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.d, %bb.c
  %.sink2.i.i = phi i64 [ 32, %bb.c ], [ 40, %bb.d ]
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink2.i.i
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #21, !inline_history !1
  br label %_ZNSt3__18functionIFviEED2Ev.exit

_ZNSt3__18functionIFviEED2Ev.exit:                ; preds = %bb.d, %.sink.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #21
  tail call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #21
  tail call void @_ZN7nanogui6ButtonD2Ev(ptr noundef nonnull align 16 dead_on_return(372) dereferenceable(372) %0) #21
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui8ComboBox9set_itemsERKNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEESC_(ptr noundef nonnull align 16 dereferenceable(500) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::function", align 16 ; 8 uses
  %4 = alloca %"class.std::__1::function", align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %.not.i = icmp eq ptr %i.a, %1
  br i1 %.not.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100ERKS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  tail call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__assign_with_sizeB8ne180100IPS6_SA_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.h)
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100ERKS8_.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100ERKS8_.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.not.i23 = icmp eq ptr %i.i, %2
  br i1 %.not.i23, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100ERKS8_.exit24, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100ERKS8_.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24
  tail call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__assign_with_sizeB8ne180100IPS6_SA_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef %i.j, ptr noundef %i.l, i64 noundef %i.p)
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100ERKS8_.exit24

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100ERKS8_.exit24: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100ERKS8_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.r = load i32, ptr %i.q, align 16, !tbaa !69  ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100ERKS8_.exit24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.v = load ptr, ptr %1, align 8, !tbaa !76
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 24
  %i.aa = trunc i64 %i.z to i32
  %.not = icmp slt i32 %i.r, %i.aa
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100ERKS8_.exit24
  store i32 0, ptr %i.q, align 16, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !67 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !79
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 3
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %.not2038 = icmp eq i32 %i.al, 0
  br i1 %.not2038, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %i.am = phi i32 [ %i.ay, %.lr.ph ], [ %i.al, %bb.f ]
  %i.an = phi ptr [ %i.ap, %.lr.ph ], [ %i.ac, %bb.f ]
  %i.ao = add nsw i32 %i.am, -1
  tail call void @_ZN7nanogui6Widget15remove_child_atEi(ptr noundef nonnull align 8 dereferenceable(148) %i.an, i32 noundef %i.ao)
  %i.ap = load ptr, ptr %i.ab, align 16, !tbaa !67 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !79
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !80
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %.not20 = icmp eq i32 %i.ay, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph, !llvm.loop !94

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %i.az = phi ptr [ %i.ac, %bb.f ], [ %i.ap, %.lr.ph ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !65
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.g, label %bb.q

bb.g:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !77
  %i.bf = load ptr, ptr %1, align 8, !tbaa !76
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 24
  %i.bk = icmp ugt i64 %i.bj, 8
  br i1 %i.bk, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.bl = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #22 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !66
  invoke void @_ZN7nanogui12VScrollPanelC1EPNS_6WidgetE(ptr noundef nonnull align 8 dereferenceable(157) %i.bl, ptr noundef %i.bn)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  store ptr %i.bl, ptr %i.ba, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 60 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !82
  %.not.i25 = icmp eq i32 %i.bp, 300
  br i1 %.not.i25, label %_ZN7nanogui6Widget16set_fixed_heightEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 300, ptr %i.bo, align 4, !tbaa !82
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store i64 -1, ptr %i.bq, align 8, !tbaa !75
  br label %_ZN7nanogui6Widget16set_fixed_heightEi.exit

_ZN7nanogui6Widget16set_fixed_heightEi.exit:      ; preds = %bb.i, %bb.j
  %i.br = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #22 ; 3 uses
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !65
  invoke void @_ZN7nanogui6WidgetC1EPS0_(ptr noundef nonnull align 8 dereferenceable(148) %i.br, ptr noundef %i.bs)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZN7nanogui6Widget16set_fixed_heightEi.exit
  store ptr %i.br, ptr %i.ab, align 16, !tbaa !67
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !66
  %i.bu = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 4 uses
  invoke void @_ZN7nanogui9BoxLayoutC1ENS_11OrientationENS_9AlignmentEii(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i32 noundef 0, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  tail call void @_ZNK7nanogui6Object7inc_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #21
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !96 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bw, null
  br i1 %.not5.i.i, label %_ZN7nanogui6Widget10set_layoutEPNS_6LayoutE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #21
  br label %_ZN7nanogui6Widget10set_layoutEPNS_6LayoutE.exit

_ZN7nanogui6Widget10set_layoutEPNS_6LayoutE.exit: ; preds = %bb.l, %bb.m
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !96
  %.pre = load ptr, ptr %i.ab, align 16, !tbaa !67
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 160) #20
  br label %bb.x

bb.o:                                             ; preds = %_ZN7nanogui6Widget16set_fixed_heightEi.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 152) #20
  br label %bb.x

bb.p:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 32) #20
  br label %bb.x

bb.q:                                             ; preds = %_ZN7nanogui6Widget10set_layoutEPNS_6LayoutE.exit, %bb.g, %._crit_edge
  %i.ca = phi ptr [ %.pre, %_ZN7nanogui6Widget10set_layoutEPNS_6LayoutE.exit ], [ %i.az, %bb.g ], [ %i.az, %._crit_edge ]
  %i.cb = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 1, ptr %i.cc, align 8, !tbaa !97
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7nanogui11GroupLayoutE, i64 16), ptr %i.cb, align 8, !tbaa !12
  %5 = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 25769803786, ptr %5, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i64 85899345934, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  tail call void @_ZNK7nanogui6Object7inc_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #21
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !96 ; 2 uses
  %.not5.i.i26 = icmp eq ptr %i.cf, null
  br i1 %.not5.i.i26, label %_ZN7nanogui6Widget10set_layoutEPNS_6LayoutE.exit27, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #21
  br label %_ZN7nanogui6Widget10set_layoutEPNS_6LayoutE.exit27

_ZN7nanogui6Widget10set_layoutEPNS_6LayoutE.exit27: ; preds = %bb.q, %bb.r
  store ptr %i.cb, ptr %i.ce, align 8, !tbaa !96
  %i.cg = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !77 ; 2 uses
  %.not3639 = icmp eq ptr %i.cg, %i.ci
  br i1 %.not3639, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %_ZN7nanogui6Widget10set_layoutEPNS_6LayoutE.exit27
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.s

._crit_edge43:                                    ; preds = %_ZNSt3__18functionIFvvEED2Ev.exit, %_ZN7nanogui6Widget10set_layoutEPNS_6LayoutE.exit27
  %i.cn = load i32, ptr %i.q, align 16, !tbaa !69
  call void @_ZN7nanogui8ComboBox18set_selected_indexEi(ptr noundef nonnull align 16 dereferenceable(500) %0, i32 noundef %i.cn)
  ret void

bb.s:                                             ; preds = %.lr.ph42, %_ZNSt3__18functionIFvvEED2Ev.exit
  %.01841 = phi i32 [ 0, %.lr.ph42 ], [ %i.dn, %_ZNSt3__18functionIFvvEED2Ev.exit ] ; 2 uses
  %.sroa.033.040 = phi ptr [ %i.cg, %.lr.ph42 ], [ %i.do, %_ZNSt3__18functionIFvvEED2Ev.exit ] ; 5 uses
  %i.co = call noalias noundef nonnull dereferenceable(368) ptr @_Znwm(i64 noundef 368) #22 ; 4 uses
  %i.cp = load ptr, ptr %i.ab, align 16, !tbaa !67
  %i.cq = load i8, ptr %.sroa.033.040, align 8    ; 2 uses
  %i.cr = trunc i8 %i.cq to i1                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.033.040, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.033.040, i64 1
  %i.cv = select i1 %i.cr, ptr %i.ct, ptr %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.033.040, i64 8
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = lshr i8 %i.cq, 1
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = select i1 %i.cr, i64 %i.cx, i64 %i.cz
  invoke void @_ZN7nanogui6ButtonC1EPNS_6WidgetENSt3__117basic_string_viewIcNS3_11char_traitsIcEEEEi(ptr noundef nonnull align 16 dereferenceable(360) %i.co, ptr noundef %i.cp, ptr %i.cv, i64 %i.da, i32 noundef 0)
          to label %_ZNSt3__18functionIFvvEEC2ERKS2_.exit.i.i unwind label %bb.w

_ZNSt3__18functionIFvvEEC2ERKS2_.exit.i.i:        ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 196
  store i32 2, ptr %i.db, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN7nanogui8ComboBox9set_itemsERKNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEESE_E3$_0NS8_ISF_EEFvvEEE", i64 16), ptr %4, align 16, !tbaa !12
  store i32 %.01841, ptr %i.ck, align 8, !tbaa !82
  store ptr %0, ptr %.sroa.21.0..sroa_idx.i, align 16, !tbaa !84
  store ptr %4, ptr %i.cj, align 16, !tbaa !74
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %3, ptr %i.cl, align 16, !tbaa !74
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN7nanogui8ComboBox9set_itemsERKNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEESE_E3$_0NS8_ISF_EEFvvEEE", i64 16), ptr %3, align 16, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !85
  call void @_ZNSt3__110__function12__value_funcIFvvEE4swapB8ne180100ERS3_(ptr noundef nonnull align 16 dereferenceable(48) %3, ptr noundef nonnull align 16 dereferenceable(48) %i.dc) #21
  %i.dd = load ptr, ptr %i.cl, align 16, !tbaa !74 ; 4 uses
  %i.de = icmp eq ptr %i.dd, %3
  br i1 %i.de, label %.sink.split.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt3__18functionIFvvEEC2ERKS2_.exit.i.i
  %.not.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i, label %bb.u, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.t, %_ZNSt3__18functionIFvvEEC2ERKS2_.exit.i.i
  %.sink2.i.i.i.i = phi i64 [ 32, %_ZNSt3__18functionIFvvEEC2ERKS2_.exit.i.i ], [ 40, %bb.t ]
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sink2.i.i.i.i
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #21, !inline_history !95
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.di = load ptr, ptr %i.cj, align 16, !tbaa !74 ; 4 uses
  %i.dj = icmp eq ptr %i.di, %4
  br i1 %i.dj, label %.sink.split.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFvvEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.v, %bb.u
  %.sink2.i.i = phi i64 [ 32, %bb.u ], [ 40, %bb.v ]
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !12
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sink2.i.i
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.di) #21, !inline_history !0
  br label %_ZNSt3__18functionIFvvEED2Ev.exit

_ZNSt3__18functionIFvvEED2Ev.exit:                ; preds = %bb.v, %.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.dn = add nuw nsw i32 %.01841, 1
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.033.040, i64 24 ; 2 uses
  %.not36 = icmp eq ptr %i.do, %i.ci
  br i1 %.not36, label %._crit_edge43, label %bb.s

bb.w:                                             ; preds = %bb.s
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 368) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.p, %bb.o, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.n ], [ %i.bz, %bb.p ], [ %i.by, %bb.o ], [ %i.dp, %bb.w ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui8ComboBox18set_selected_indexEi(ptr noundef nonnull align 16 dereferenceable(500) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !76  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  %i.f = icmp slt i32 %1, 0
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %_ZN7nanogui6Button11set_captionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = trunc i64 %i.j to i32
  %.not = icmp slt i32 %1, %i.k
  br i1 %.not, label %bb.c, label %_ZN7nanogui6Button11set_captionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !67  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.p = load i32, ptr %i.o, align 16, !tbaa !69  ; 3 uses
  %i.q = icmp sgt i32 %i.p, -1
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !80  ; 3 uses
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %.pre to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 3
  %i.x = trunc i64 %i.w to i32
  %i.y = icmp slt i32 %i.p, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.p to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  store i8 0, ptr %i.ac, align 16, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ad = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  store i8 1, ptr %i.ag, align 16, !tbaa !86
  store i32 %1, ptr %i.o, align 16, !tbaa !69
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ad ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 8             ; 2 uses
  %i.aj = trunc i8 %i.ai to i1                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.an = select i1 %i.aj, ptr %i.al, ptr %i.am   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = lshr i8 %i.ai, 1
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = select i1 %i.aj, i64 %i.ap, i64 %i.ar   ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8             ; 2 uses
  %i.av = trunc i8 %i.au to i1                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ax = load i64, ptr %i.aw, align 16
  %i.ay = lshr i8 %i.au, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = select i1 %i.av, i64 %i.ax, i64 %i.az
  %.not.i.i = icmp eq i64 %i.ba, %i.as
  br i1 %.not.i.i, label %_ZNSt3__1neB8ne180100IcNS_11char_traitsIcEELi2EEEbNS_15__type_identityINS_17basic_string_viewIT_T0_EEE4typeES7_.exit.i, label %_ZNSt3__1neB8ne180100IcNS_11char_traitsIcEELi2EEEbNS_15__type_identityINS_17basic_string_viewIT_T0_EEE4typeES7_.exit.thread.i

_ZNSt3__1neB8ne180100IcNS_11char_traitsIcEELi2EEEbNS_15__type_identityINS_17basic_string_viewIT_T0_EEE4typeES7_.exit.i: ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 153
end_hunk_0
