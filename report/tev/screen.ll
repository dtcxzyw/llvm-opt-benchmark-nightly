Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/screen?download=true
inline.NumInlined: 1345
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7nanogui6Screen10initializeEP10GLFWwindowb:bb.a
  br label %_ZN7nanogui3refINS_7TextureEEaSEPS1_.exit

_ZN7nanogui3refINS_7TextureEEaSEPS1_.exit:        ; preds = %bb.x, %bb.y
  store ptr %i.ed, ptr %i.eg, align 8, !tbaa !167
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef 48) #39
  br label %bb.aq

bb.aa:                                            ; preds = %_ZN7nanogui3refINS_7TextureEEaSEPS1_.exit, %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ek = load i8, ptr %i.ej, align 4, !tbaa !156, !range !174, !noundef !175
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ab, label %_ZN7nanogui3refINS_7TextureEED2Ev.exit31

bb.ab:                                            ; preds = %bb.aa
  %i.em = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 4 uses
  invoke void @_ZN7nanogui7TextureC1ENS0_11PixelFormatENS0_15ComponentFormatERKNS_5ArrayIiLm2EEENS0_17InterpolationModeES7_NS0_8WrapModeEhhb(ptr noundef nonnull align 8 dereferenceable(44) %i.em, i8 noundef zeroext 3, i8 noundef zeroext 10, ptr noundef nonnull align 4 dereferenceable(8) %i.i, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 3, i1 noundef zeroext false)
          to label %bb.ac unwind label %bb.am

bb.ac:                                            ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  call void @_ZNK7nanogui6Object7inc_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #37
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !167 ; 2 uses
  %.not5.i23 = icmp eq ptr %i.eo, null
  br i1 %.not5.i23, label %_ZN7nanogui3refINS_7TextureEEaSEPS1_.exit24, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #37
  br label %_ZN7nanogui3refINS_7TextureEEaSEPS1_.exit24

_ZN7nanogui3refINS_7TextureEEaSEPS1_.exit24:      ; preds = %bb.ac, %bb.ad
  store ptr %i.em, ptr %i.en, align 8, !tbaa !167
  %i.ep = call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #41 ; 4 uses
  %i.eq = load ptr, ptr %i.en, align 8, !tbaa !167
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 354
  %i.es = load i8, ptr %i.er, align 2, !tbaa !162, !range !174, !noundef !175
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.ae, label %_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit

bb.ae:                                            ; preds = %_ZN7nanogui3refINS_7TextureEEaSEPS1_.exit24
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !167 ; 3 uses
  %.not.i = icmp eq ptr %i.ev, null
  br i1 %.not.i, label %_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZNK7nanogui6Object7inc_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #37
  br label %_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit

_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit:       ; preds = %_ZN7nanogui3refINS_7TextureEEaSEPS1_.exit24, %bb.af, %bb.ae
  %.sroa.038.0 = phi ptr [ %i.ev, %bb.af ], [ null, %bb.ae ], [ null, %_ZN7nanogui3refINS_7TextureEEaSEPS1_.exit24 ] ; 5 uses
  %i.ew = load i8, ptr %i.aa, align 1, !tbaa !163, !range !174, !noundef !175
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ag, label %_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit26

bb.ag:                                            ; preds = %_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !167 ; 3 uses
  %.not.i25 = icmp eq ptr %i.ez, null
  br i1 %.not.i25, label %_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit26, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNK7nanogui6Object7inc_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #37
  br label %_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit26

_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit26:     ; preds = %_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit, %bb.ah, %bb.ag
  %.sroa.0.0 = phi ptr [ %i.ez, %bb.ah ], [ null, %bb.ag ], [ null, %_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit ] ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !178
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.fd = load i8, ptr %i.fc, align 4, !tbaa !165, !range !174, !noundef !175
  %i.fe = trunc nuw i8 %i.fd to i1
  invoke void @_ZN7nanogui9ColorPassC1EPNS_7TextureES2_S2_jb(ptr noundef nonnull align 8 dereferenceable(217) %i.ep, ptr noundef %i.eq, ptr noundef %.sroa.038.0, ptr noundef %.sroa.0.0, i32 noundef %i.fb, i1 noundef zeroext %i.fe)
          to label %bb.ai unwind label %bb.an

bb.ai:                                            ; preds = %_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit26
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  call void @_ZNK7nanogui6Object7inc_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #37
  %i.fg = load ptr, ptr %i.ff, align 16, !tbaa !166 ; 2 uses
  %.not5.i28 = icmp eq ptr %i.fg, null
  br i1 %.not5.i28, label %_ZN7nanogui3refINS_9ColorPassEEaSEPS1_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #37
  br label %_ZN7nanogui3refINS_9ColorPassEEaSEPS1_.exit

_ZN7nanogui3refINS_9ColorPassEEaSEPS1_.exit:      ; preds = %bb.ai, %bb.aj
  store ptr %i.ep, ptr %i.ff, align 16, !tbaa !166
  %.not.i29 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i29, label %_ZN7nanogui3refINS_7TextureEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN7nanogui3refINS_9ColorPassEEaSEPS1_.exit
  call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0) #37
  br label %_ZN7nanogui3refINS_7TextureEED2Ev.exit

_ZN7nanogui3refINS_7TextureEED2Ev.exit:           ; preds = %_ZN7nanogui3refINS_9ColorPassEEaSEPS1_.exit, %bb.ak
  %.not.i30 = icmp eq ptr %.sroa.038.0, null
  br i1 %.not.i30, label %_ZN7nanogui3refINS_7TextureEED2Ev.exit31, label %bb.al

bb.al:                                            ; preds = %_ZN7nanogui3refINS_7TextureEED2Ev.exit
  call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.038.0) #37
  br label %_ZN7nanogui3refINS_7TextureEED2Ev.exit31

bb.am:                                            ; preds = %bb.ab
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 48) #39
  br label %bb.aq

bb.an:                                            ; preds = %_ZN7nanogui3refINS_7TextureEEC2ERKS2_.exit26
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %.not.i32 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i32, label %_ZN7nanogui3refINS_7TextureEED2Ev.exit33, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0) #37
  br label %_ZN7nanogui3refINS_7TextureEED2Ev.exit33

_ZN7nanogui3refINS_7TextureEED2Ev.exit33:         ; preds = %bb.an, %bb.ao
  %.not.i34 = icmp eq ptr %.sroa.038.0, null
  br i1 %.not.i34, label %_ZN7nanogui3refINS_7TextureEED2Ev.exit35, label %bb.ap

bb.ap:                                            ; preds = %_ZN7nanogui3refINS_7TextureEED2Ev.exit33
  call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.038.0) #37
  br label %_ZN7nanogui3refINS_7TextureEED2Ev.exit35

_ZN7nanogui3refINS_7TextureEED2Ev.exit35:         ; preds = %_ZN7nanogui3refINS_7TextureEED2Ev.exit33, %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 224) #39
  br label %bb.aq

_ZN7nanogui3refINS_7TextureEED2Ev.exit31:         ; preds = %bb.al, %_ZN7nanogui3refINS_7TextureEED2Ev.exit, %bb.aa
  ret void

bb.aq:                                            ; preds = %_ZN7nanogui3refINS_7TextureEED2Ev.exit35, %bb.am, %bb.z, %bb.u, %bb.m
  %.pn = phi { ptr, i32 } [ %i.fi, %_ZN7nanogui3refINS_7TextureEED2Ev.exit35 ], [ %i.bn, %bb.m ], [ %i.fh, %bb.am ], [ %i.ei, %bb.z ], [ %i.dz, %bb.u ]
  resume { ptr, i32 } %.pn
}

declare void @glfwGetWindowSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @glfwSetWindowSize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @nvgSetDevicePixelRatio(ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare void @_ZN7nanogui5ThemeC1EP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(532), ptr noundef) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @glfwCreateStandardCursor(i32 noundef) local_unnamed_addr #5

declare void @_ZN7nanogui7TextureC1ENS0_11PixelFormatENS0_15ComponentFormatERKNS_5ArrayIiLm2EEENS0_17InterpolationModeES7_NS0_8WrapModeEhhb(ptr noundef nonnull align 8 dereferenceable(44), i8 noundef zeroext, i8 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(8), i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i8 @_ZNK7nanogui6Screen12pixel_formatEv(ptr nofree noundef nonnull readnone align 16 captures(none) dereferenceable(520) %0) local_unnamed_addr #15 align 2 {
bb.a:
  ret i8 3
}

declare void @_ZN7nanogui9ColorPassC1EPNS_7TextureES2_S2_jb(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7nanogui6ScreenD2Ev(ptr noundef nonnull align 16 dead_on_return(520) dereferenceable(520) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTVN7nanogui6ScreenE, i64 16), ptr %0, align 16, !tbaa !109
  %i.a = load ptr, ptr @_ZN7nanogui17__nanogui_screensE, align 8, !tbaa !105 ; 5 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7nanogui17__nanogui_screensE, i64 8), align 8, !tbaa !106 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177
  %.not6.i = icmp eq ptr %i.a, %i.b
  br i1 %.not6.i, label %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEEEEZNS6_D1EvE3$_0EET_SC_SC_T0_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.03.07.i = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %.val1.i = load ptr, ptr %.sroa.03.07.i, align 8, !tbaa !189
  %i.e = icmp eq ptr %.val1.i, %i.d
  br i1 %i.e, label %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEEEEZNS6_D1EvE3$_0EET_SC_SC_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.b
  br i1 %.not.i, label %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEEEEZNS6_D1EvE3$_0EET_SC_SC_T0_.exit.thread", label %.lr.ph.i, !llvm.loop !283

"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEEEEZNS6_D1EvE3$_0EET_SC_SC_T0_.exit": ; preds = %.lr.ph.i, %bb.a
  %.sroa.03.0.lcssa.i = phi ptr [ %i.a, %bb.a ], [ %.sroa.03.07.i, %.lr.ph.i ] ; 2 uses
  %.not21 = icmp eq ptr %.sroa.03.0.lcssa.i, %i.b
  br i1 %.not21, label %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEEEEZNS6_D1EvE3$_0EET_SC_SC_T0_.exit.thread", label %bb.c

bb.c:                                             ; preds = %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEEEEZNS6_D1EvE3$_0EET_SC_SC_T0_.exit"
  %i.g = ptrtoint ptr %.sroa.03.0.lcssa.i to i64  ; 3 uses
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.k, %i.b
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_4pairIP10GLFWwindowPN7nanogui6ScreenEEENS_9allocatorIS7_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS7_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = load <2 x ptr>, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !285
  store <2 x ptr> %i.l, ptr %storemerge9.i.i.i.i.i.i, align 8, !tbaa !285
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEES8_EET0_T_SA_S9_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !284

_ZNSt3__14moveB8ne180100IPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEES8_EET0_T_SA_S9_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %1 = ptrtoint ptr %i.n to i64
  br label %_ZNSt3__16vectorINS_4pairIP10GLFWwindowPN7nanogui6ScreenEEENS_9allocatorIS7_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS7_EE.exit

_ZNSt3__16vectorINS_4pairIP10GLFWwindowPN7nanogui6ScreenEEENS_9allocatorIS7_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS7_EE.exit: ; preds = %bb.c, %_ZNSt3__14moveB8ne180100IPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEES8_EET0_T_SA_S9_.exit.loopexit.i
  %storemerge.lcssa.i.i.i.i.i.i = phi i64 [ %i.g, %bb.c ], [ %1, %_ZNSt3__14moveB8ne180100IPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEES8_EET0_T_SA_S9_.exit.loopexit.i ]
  %i.o = sub i64 %storemerge.lcssa.i.i.i.i.i.i, %i.g
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 %i.o
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZN7nanogui17__nanogui_screensE, i64 8), align 8, !tbaa !106
  br label %bb.d

"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEEEEZNS6_D1EvE3$_0EET_SC_SC_T0_.exit.thread": ; preds = %bb.b, %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEEEEZNS6_D1EvE3$_0EET_SC_SC_T0_.exit"
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !180
  %i.r = tail call i64 @fwrite(ptr nonnull @.str.7, i64 37, i64 1, ptr %i.q) #42 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorINS_4pairIP10GLFWwindowPN7nanogui6ScreenEEENS_9allocatorIS7_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS7_EE.exit, %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPNS_4pairIP10GLFWwindowPN7nanogui6ScreenEEEEEZNS6_D1EvE3$_0EET_SC_SC_T0_.exit.thread"
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !192  ; 2 uses
  %.not11 = icmp eq ptr %i.t, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @glfwDestroyCursor(ptr noundef nonnull %i.t)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !192 ; 2 uses
  %.not11.1 = icmp eq ptr %i.v, null
  br i1 %.not11.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @glfwDestroyCursor(ptr noundef nonnull %i.v)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !192  ; 2 uses
  %.not11.2 = icmp eq ptr %i.x, null
  br i1 %.not11.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @glfwDestroyCursor(ptr noundef nonnull %i.x)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !192 ; 2 uses
  %.not11.3 = icmp eq ptr %i.z, null
  br i1 %.not11.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @glfwDestroyCursor(ptr noundef nonnull %i.z)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !192 ; 2 uses
  %.not11.4 = icmp eq ptr %i.ab, null
  br i1 %.not11.4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @glfwDestroyCursor(ptr noundef nonnull %i.ab)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !192 ; 2 uses
  %.not11.5 = icmp eq ptr %i.ad, null
  br i1 %.not11.5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @glfwDestroyCursor(ptr noundef nonnull %i.ad)
          to label %bb.p unwind label %.loopexit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !182 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %nvgDeleteGL3.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @nvgDeleteInternal(ptr noundef nonnull %i.af)
          to label %nvgDeleteGL3.exit unwind label %.loopexit.split-lp

nvgDeleteGL3.exit:                                ; preds = %bb.q, %bb.p
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !177 ; 2 uses
  %.not10 = icmp eq ptr %i.ag, null
  br i1 %.not10, label %bb.t, label %bb.r

bb.r:                                             ; preds = %nvgDeleteGL3.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ai = load i8, ptr %i.ah, align 16, !tbaa !172, !range !174, !noundef !175
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @glfwDestroyWindow(ptr noundef nonnull %i.ag)
          to label %bb.t unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.s, %bb.r, %nvgDeleteGL3.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !166 ; 2 uses
  %.not.i12 = icmp eq ptr %i.al, null
  br i1 %.not.i12, label %_ZN7nanogui3refINS_9ColorPassEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #37
  br label %_ZN7nanogui3refINS_9ColorPassEED2Ev.exit

_ZN7nanogui3refINS_9ColorPassEED2Ev.exit:         ; preds = %bb.t, %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !167 ; 2 uses
  %.not.i13 = icmp eq ptr %i.an, null
  br i1 %.not.i13, label %_ZN7nanogui3refINS_7TextureEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN7nanogui3refINS_9ColorPassEED2Ev.exit
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #37
  br label %_ZN7nanogui3refINS_7TextureEED2Ev.exit

_ZN7nanogui3refINS_7TextureEED2Ev.exit:           ; preds = %_ZN7nanogui3refINS_9ColorPassEED2Ev.exit, %bb.v
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !168 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ap, null
  br i1 %.not.i14, label %_ZN7nanogui3refINS_16RestartableTimerEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN7nanogui3refINS_7TextureEED2Ev.exit
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #37
  br label %_ZN7nanogui3refINS_16RestartableTimerEED2Ev.exit

_ZN7nanogui3refINS_16RestartableTimerEED2Ev.exit: ; preds = %_ZN7nanogui3refINS_7TextureEED2Ev.exit, %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !167 ; 2 uses
  %.not.i15 = icmp eq ptr %i.ar, null
  br i1 %.not.i15, label %_ZN7nanogui3refINS_7TextureEED2Ev.exit16, label %bb.x

bb.x:                                             ; preds = %_ZN7nanogui3refINS_16RestartableTimerEED2Ev.exit
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #37
  br label %_ZN7nanogui3refINS_7TextureEED2Ev.exit16

_ZN7nanogui3refINS_7TextureEED2Ev.exit16:         ; preds = %_ZN7nanogui3refINS_16RestartableTimerEED2Ev.exit, %bb.x
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !159 ; 4 uses
  %i.av = icmp eq ptr %i.au, %i.as
  br i1 %i.av, label %.sink.split.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN7nanogui3refINS_7TextureEED2Ev.exit16
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFvN7nanogui5ArrayIiLm2EEEEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.y, %_ZN7nanogui3refINS_7TextureEED2Ev.exit16
  %.sink2.i.i = phi i64 [ 32, %_ZN7nanogui3refINS_7TextureEED2Ev.exit16 ], [ 40, %bb.y ]
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sink2.i.i
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #37, !inline_history !3
  br label %_ZNSt3__18functionIFvN7nanogui5ArrayIiLm2EEEEED2Ev.exit

_ZNSt3__18functionIFvN7nanogui5ArrayIiLm2EEEEED2Ev.exit: ; preds = %bb.y, %.sink.split.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.z, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.z:                                             ; preds = %_ZNSt3__18functionIFvN7nanogui5ArrayIiLm2EEEEED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !164
  %i.be = load i64, ptr %i.az, align 8
  %i.bf = and i64 %i.be, -2
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bf) #39
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt3__18functionIFvN7nanogui5ArrayIiLm2EEEEED2Ev.exit, %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !169 ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i17, label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !170
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bk = load ptr, ptr %i.bj, align 16, !tbaa !171
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bh to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bn) #39
  br label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.aa
  tail call void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) #37
  ret void

.loopexit:                                        ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.s, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
end_hunk_0
begin_hunk_1_@_ZN7nanogui6Screen21scroll_callback_eventEdd:bb.a
bb.k:                                             ; preds = %bb.j, %bb.g
  %.merged = phi { ptr, i32 } [ %i.aw, %bb.g ], [ %i.bi, %bb.j ]
  resume { ptr, i32 } %.merged

bb.l:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui6Screen21resize_callback_eventEii(ptr noundef nonnull align 16 dereferenceable(520) %0, i32 %1, i32 %2) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.nanogui::Array", align 8   ; 10 uses
  %4 = alloca %"struct.nanogui::Array", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  call void @glfwGetFramebufferSize(ptr noundef %i.b, ptr noundef nonnull %3, ptr noundef nonnull %i.c)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  call void @glfwGetWindowSize(ptr noundef %i.d, ptr noundef nonnull %4, ptr noundef nonnull %i.e)
  %i.f = load i32, ptr %3, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = load i32, ptr %i.c, align 4
  %.not.1.i = icmp eq i32 %i.g, 0
  %.not.lcssa.i = select i1 %.not.i, i1 %.not.1.i, i1 false
  br i1 %.not.lcssa.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %4, align 8, !tbaa !40
  %.not.i10 = icmp eq i32 %i.h, 0
  %i.i = load i32, ptr %i.e, align 4
  %.not.1.i11 = icmp eq i32 %i.i, 0
  %.not.lcssa.i12 = select i1 %.not.i10, i1 %.not.1.i11, i1 false
  br i1 %.not.lcssa.i12, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = load i64, ptr %3, align 8, !tbaa !164
  store i64 %i.k, ptr %i.j, align 8, !tbaa !164
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = load i64, ptr %4, align 8, !tbaa !164
  store i64 %i.m, ptr %i.l, align 16, !tbaa !164
  %i.n = call i32 @glfwGetPlatform()
  %.not = icmp eq i32 %i.n, 393219
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = load float, ptr %i.o, align 16, !tbaa !181
  %i.q = load <2 x i32>, ptr %i.l, align 16, !tbaa !40
  %i.r = sitofp <2 x i32> %i.q to <2 x float>
  %i.s = insertelement <2 x float> poison, float %i.p, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fdiv <2 x float> %i.r, %i.t
  %i.v = fptosi <2 x float> %i.u to <2 x i32>
  store <2 x i32> %i.v, ptr %i.l, align 16, !tbaa !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = call double @glfwGetTime()
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %i.w, ptr %i.x, align 8, !tbaa !213
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !167  ; 2 uses
  %.not7 = icmp eq ptr %i.z, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN7nanogui7Texture6resizeERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(44) %i.z, ptr noundef nonnull align 4 dereferenceable(8) %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167 ; 2 uses
  %.not8 = icmp eq ptr %i.ab, null
  br i1 %.not8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN7nanogui7Texture6resizeERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(44) %i.ab, ptr noundef nonnull align 4 dereferenceable(8) %3)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !166 ; 2 uses
  %.not9 = icmp eq ptr %i.ad, null
  br i1 %.not9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN7nanogui10RenderPass6resizeERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(193) %i.ad, ptr noundef nonnull align 4 dereferenceable(8) %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = load ptr, ptr %0, align 16, !tbaa !109
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 16 dereferenceable(520) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.l)
          to label %bb.n unwind label %bb.l       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.aj = extractvalue { ptr, i32 } %i.ai, 1
  %i.ak = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #37
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.am = extractvalue { ptr, i32 } %i.ai, 0
  %i.an = call ptr @__cxa_begin_catch(ptr %i.am) #37 ; 2 uses
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt3__14cerrE, ptr noundef nonnull @.str.11, i64 noundef 35)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.o

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.m
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !109
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #37 ; 2 uses
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #37
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.as, i64 noundef %i.at)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit13 unwind label %bb.o

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit13: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit unwind label %bb.o, !inline_history !4 ; 0 uses

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit13
  call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i8 1, ptr %i.aw, align 4, !tbaa !158
  call void @glfwPostEmptyEvent()
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.o:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit13, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit, %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.l
  %.merged = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.ax, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.merged

bb.q:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #43
  unreachable
}

declare void @_ZN7nanogui7Texture6resizeERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN7nanogui10RenderPass6resizeERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(193), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui6Screen20move_window_to_frontEPNS_6WindowE(ptr noundef nonnull align 16 dereferenceable(520) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !169 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 10 uses
  %.not7.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i.i.i, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %.08.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.08.i.i.i, align 8, !tbaa !215
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.thread.i, label %.lr.ph.i.i.i, !llvm.loop !317

_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.thread.i: ; preds = %bb.b
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 %i.j
  br label %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit

_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %.0.lcssa.i.i.i = phi ptr [ %i.b, %bb.a ], [ %.08.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.l = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.m = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 %i.n ; 2 uses
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i, %i.d
  %i.p = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not1314.i = icmp eq ptr %i.p, %i.d
  %or.cond39 = select i1 %.not.i, i1 true, i1 %.not1314.i
  br i1 %or.cond39, label %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.i, %bb.d
  %i.q = phi ptr [ %i.u, %bb.d ], [ %i.p, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.i ] ; 2 uses
  %.sroa.010.015.i = phi ptr [ %.sroa.010.1.i, %bb.d ], [ %i.o, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.i ] ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !215  ; 2 uses
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  store ptr %i.r, ptr %.sroa.010.015.i, align 8, !tbaa !215
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.010.1.i = phi ptr [ %.sroa.010.015.i, %.lr.ph.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.u, %i.d
  br i1 %.not13.i, label %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit, label %.lr.ph.i, !llvm.loop !318

_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit: ; preds = %bb.d, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.thread.i, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.i
  %.pre-phi = phi i64 [ %i.m, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.i ], [ %i.i, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.thread.i ], [ %i.m, %bb.d ]
  %.sroa.010.2.i = phi ptr [ %i.o, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.i ], [ %i.k, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit.thread.i ], [ %.sroa.010.1.i, %bb.d ] ; 2 uses
  %i.v = ptrtoint ptr %.sroa.010.2.i to i64       ; 2 uses
  %i.w = sub i64 %i.v, %.pre-phi
  %i.x = getelementptr inbounds i8, ptr %i.b, i64 %i.w ; 3 uses
  %.not.i23 = icmp eq ptr %.sroa.010.2.i, %i.d
  br i1 %.not.i23, label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit
  %i.y = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.z = sub i64 %i.y, %i.v
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.z ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.y, %i.ab                     ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPPN7nanogui6WidgetES4_EET0_T_S6_S5_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.x, ptr nonnull align 8 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt3__14moveB8ne180100IPPN7nanogui6WidgetES4_EET0_T_S6_S5_.exit.i

_ZNSt3__14moveB8ne180100IPPN7nanogui6WidgetES4_EET0_T_S6_S5_.exit.i: ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ac ; 2 uses
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !170
  br label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_.exit

_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_.exit: ; preds = %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit, %_ZNSt3__14moveB8ne180100IPPN7nanogui6WidgetES4_EET0_T_S6_S5_.exit.i
  %i.ae = phi ptr [ %i.d, %_ZNSt3__16removeB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEEPNS2_6WindowEEET_S9_S9_RKT0_.exit ], [ %i.ad, %_ZNSt3__14moveB8ne180100IPPN7nanogui6WidgetES4_EET0_T_S6_S5_.exit.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !171 ; 2 uses
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_.exit
  store ptr %1, ptr %i.ae, align 8, !tbaa !215
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  br label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit

bb.h:                                             ; preds = %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_.exit
  %i.aj = load ptr, ptr %i.a, align 16, !tbaa !169
  %i.ak = ptrtoint ptr %i.ae to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = add nsw i64 %i.an, 1                    ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 2305843009213693951
  br i1 %i.ap, label %bb.i, label %_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #40
  unreachable

_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ag to i64
  %i.ar = sub i64 %i.aq, %i.al                    ; 2 uses
  %.not.i.i.i24 = icmp ult i64 %i.ar, 9223372036854775800
  %i.as = ashr exact i64 %i.ar, 2
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %i.ao)
  %.0.i.i.i = select i1 %.not.i.i.i24, i64 %.sroa.speculated.i.i.i, i64 2305843009213693951 ; 4 uses
  %i.at = icmp ne i64 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp ugt i64 %.0.i.i.i, 2305843009213693951
  br i1 %i.au, label %bb.j, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN7nanogui6WidgetEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i

bb.j:                                             ; preds = %_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #40
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN7nanogui6WidgetEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i
  %i.av = shl nuw i64 %.0.i.i.i, 3
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #41 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.am ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.0.i.i.i
  store ptr %1, ptr %i.ax, align 8, !tbaa !215
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !170 ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 16, !tbaa !169 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN7nanogui6WidgetEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bc = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ax, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN7nanogui6WidgetEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ba, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN7nanogui6WidgetEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i ]
  %i.bd = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !215, !noalias !331
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 3 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !215, !noalias !331
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !6

_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN7nanogui6WidgetEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN7nanogui6WidgetEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %i.a, align 16, !tbaa !171
  store ptr %i.az, ptr %i.c, align 8, !tbaa !171
  %i.bg = load ptr, ptr %i.af, align 16, !tbaa !171
  store ptr %i.ay, ptr %i.af, align 16, !tbaa !171
  %.not.i5.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i5.i.i, label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bb to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bj) #39
  br label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit

_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit: ; preds = %bb.g, %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, %bb.k
  %.0.i = phi ptr [ %i.ai, %bb.g ], [ %i.az, %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.az, %bb.k ] ; 3 uses
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !170
  %i.bk = load ptr, ptr %i.a, align 16, !tbaa !169 ; 3 uses
  %.not4781 = icmp eq ptr %.0.i, %i.bk
  br i1 %.not4781, label %.critedge, label %.lr.ph.preheader.lr.ph

.lr.ph.preheader.lr.ph:                           ; preds = %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit
  %i.bl = ptrtoint ptr %.0.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %1, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.lr.ph, %bb.n
  %.in = phi i64 [ %i.bn, %.lr.ph.preheader.lr.ph ], [ %i.cq, %bb.n ]
  %i.bo = phi ptr [ %i.bk, %.lr.ph.preheader.lr.ph ], [ %i.cn, %bb.n ] ; 3 uses
  %i.bp = ashr exact i64 %.in, 3                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.bp, 4
  br i1 %min.iters.check, label %.lr.ph.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bp, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi82 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %vec.phi83 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.bu, %vector.body ]
  %vec.phi84 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.bv, %vector.body ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !215
  %wide.load85 = load <2 x ptr>, ptr %i.br, align 8, !tbaa !215
  %i.bs = icmp eq <2 x ptr> %wide.load, %broadcast.splat ; 2 uses
  %i.bt = icmp eq <2 x ptr> %wide.load85, %broadcast.splat ; 2 uses
  %i.bu = or <2 x i1> %vec.phi83, %i.bs           ; 2 uses
  %i.bv = or <2 x i1> %vec.phi84, %i.bt           ; 2 uses
  %i.bw = select <2 x i1> %i.bs, <2 x i64> %vec.ind, <2 x i64> %vec.phi ; 2 uses
  %i.bx = select <2 x i1> %i.bt, <2 x i64> %step.add, <2 x i64> %vec.phi82 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.bw, <2 x i64> %i.bx)
  %i.bz = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax)
  %bin.rdx = or <2 x i1> %i.bv, %i.bu
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.ca = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not86 = icmp eq i2 %i.ca, 0
  %rdx.select = select i1 %.not86, i64 0, i64 %i.bz ; 2 uses
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.lr.ph46.preheader, label %.lr.ph.preheader87

.lr.ph.preheader87:                               ; preds = %.lr.ph.preheader, %middle.block
  %.01744.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.01843.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %rdx.select, %middle.block ]
  br label %.lr.ph

.lr.ph46.preheader:                               ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i64 [ %rdx.select, %middle.block ], [ %spec.select, %.lr.ph ]
  br label %.lr.ph46

.lr.ph:                                           ; preds = %.lr.ph.preheader87, %.lr.ph
  %.01744 = phi i64 [ %i.ce, %.lr.ph ], [ %.01744.ph, %.lr.ph.preheader87 ] ; 3 uses
end_hunk_1
