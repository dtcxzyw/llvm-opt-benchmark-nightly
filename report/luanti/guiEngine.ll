Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiEngine?download=true
inline.NumInlined: 1478
inline.NumDeleted: 792
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9GUIEngine21updateTopLeftTextSizeEv:bb.a

bb.j:                                             ; preds = %bb.i
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !99
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(12) %i.cs) #26, !inline_history !5
  br label %_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentERK14EnrichedStringRKN4core4rectIiEEbbPNS_11IGUIElementEib.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit15, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.cz, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit15 ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef 464) #28
  br label %common.resume

_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentERK14EnrichedStringRKN4core4rectIiEEbbPNS_11IGUIElementEib.exit: ; preds = %bb.i, %bb.j
  store ptr %i.cl, ptr %i.bu, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.l:                                             ; preds = %.noexc.i, %bb.b
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit15

bb.m:                                             ; preds = %bb.g, %bb.f
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %4, align 8, !tbaa !197   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ac
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i13: ; preds = %bb.m
  %i.de = load i64, ptr %i.ac, align 8, !tbaa !148
  %i.df = shl i64 %i.de, 2
  %i.dg = add i64 %i.df, 4
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #28
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit15: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i13, %bb.l
  %.pn = phi { ptr, i32 } [ %i.da, %bb.l ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i13 ], [ %i.db, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume
}

declare void @_ZN17ScriptApiMainMenu19handleMainMenuEventERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIEngine10drawCloudsEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(449) %0, float noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.core::vector3d.423", align 8 ; 5 uses
  %3 = alloca %"class.video::SColorf", align 16   ; 4 uses
  %i.a = load ptr, ptr @g_menuclouds, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !251
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.0.0.copyload2 = load <4 x i8>, ptr %i.e, align 4, !tbaa !150
  %i.f = shufflevector <4 x i8> %.sroa.0.0.copyload2, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.g = uitofp <4 x i8> %i.f to <4 x float>
  %i.h = fmul nnan nsz <4 x float> %i.g, splat (float f0x3B808081)
  store <4 x float> %i.h, ptr %3, align 16, !tbaa !251
  call void @_ZN6Clouds6updateERKN4core8vector3dIfEERKN5video7SColorfE(ptr noundef nonnull align 8 dereferenceable(484) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.i = load ptr, ptr @g_menuclouds, align 8, !tbaa !253
  %i.j = fmul nsz float %1, 3.000000e+00
  call void @_ZN6Clouds4stepEf(ptr noundef nonnull align 8 dereferenceable(484) %i.i, float noundef %i.j)
  %i.k = load ptr, ptr @g_menucloudsmgr, align 8, !tbaa !256 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIEngine11drawOverlayEPN5video12IVideoDriverE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(449) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.core::rect", align 4        ; 6 uses
  %3 = alloca %"class.core::rect", align 4        ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178  ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load <2 x i32>, ptr %i.d, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 0, ptr %2, align 4, !tbaa !220
  store i32 0, ptr %i.h, align 4, !tbaa !221
  store <2 x i32> %i.j, ptr %i.i, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 0, ptr %3, align 4, !tbaa !220
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !221
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load <2 x i32>, ptr %i.g, align 4, !tbaa !150
  store <2 x i32> %i.m, ptr %i.l, align 4, !tbaa !150
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef null, ptr noundef null, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIEngine14drawBackgroundEPN5video12IVideoDriverE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(449) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.core::rect", align 4        ; 7 uses
  %3 = alloca %"class.core::rect", align 4        ; 6 uses
  %4 = alloca %"class.core::rect", align 4        ; 7 uses
  %5 = alloca %"class.core::rect", align 16       ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load <2 x i32>, ptr %i.d, align 4, !tbaa !150 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !178  ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load <2 x i32>, ptr %i.h, align 4, !tbaa !150 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i8, ptr %i.j, align 8, !tbaa !269, !range !210, !noundef !124
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.n = load i32, ptr %i.m, align 4, !tbaa !270  ; 2 uses
  %i.o = extractelement <2 x i32> %i.i, i64 0
  %. = tail call i32 @llvm.umax.i32(i32 %i.o, i32 %i.n)
  %i.p = extractelement <2 x i32> %i.i, i64 1
  %i.q = tail call i32 @llvm.umax.i32(i32 %i.p, i32 %i.n)
  %i.r = extractelement <2 x i32> %i.e, i64 0     ; 2 uses
  %.not51 = icmp eq i32 %i.r, 0
  br i1 %.not51, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.s = extractelement <2 x i32> %i.e, i64 1     ; 2 uses
  %.not52 = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %.not52, label %.loopexit, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %.02250.us = phi i32 [ %i.y, %._crit_edge.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.y = add i32 %.02250.us, %.                   ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.d
  %.049.us = phi i32 [ 0, %.preheader.us ], [ %i.z, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.z = add i32 %.049.us, %i.q                   ; 3 uses
  store i32 %.02250.us, ptr %2, align 4, !tbaa !220
  store i32 %.049.us, ptr %i.t, align 4, !tbaa !221
  store i32 %i.y, ptr %i.u, align 4, !tbaa !220
  store i32 %i.z, ptr %i.v, align 4, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 0, ptr %3, align 4, !tbaa !220
  store i32 0, ptr %i.w, align 4, !tbaa !221
  store <2 x i32> %i.i, ptr %i.x, align 4, !tbaa !150
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef nonnull %1, ptr noundef nonnull %i.g, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef null, ptr noundef null, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.aa = icmp ult i32 %i.z, %i.s
  br i1 %i.aa, label %bb.d, label %._crit_edge.us, !llvm.loop !614

._crit_edge.us:                                   ; preds = %bb.d
  %i.ab = icmp ult i32 %i.y, %i.r
  br i1 %i.ab, label %.preheader.us, label %.loopexit, !llvm.loop !615

bb.e:                                             ; preds = %bb.b
  %i.ac = uitofp <2 x i32> %i.e to <2 x float>
  %i.ad = uitofp <2 x i32> %i.i to <2 x float>    ; 2 uses
  %i.ae = fdiv nsz <2 x float> %i.ac, %i.ad       ; 3 uses
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = extractelement <2 x float> %i.ae, i64 0
  %i.ah = extractelement <2 x float> %i.ae, i64 1
  %i.ai = fcmp nsz olt float %i.ag, %i.ah         ; 2 uses
  %i.aj = fmul nsz <2 x float> %i.af, %i.ad       ; 2 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 0
  %i.al = fptosi float %i.ak to i32
  %i.am = extractelement <2 x float> %i.aj, i64 1
  %i.an = fptosi float %i.am to i32
  %i.ao = extractelement <2 x i32> %i.e, i64 1    ; 2 uses
  %.sroa.7.0 = select i1 %i.ai, i32 %i.ao, i32 %i.an ; 2 uses
  %i.ap = extractelement <2 x i32> %i.e, i64 0    ; 2 uses
  %.sroa.03.0 = select i1 %i.ai, i32 %i.al, i32 %i.ap ; 2 uses
  %i.aq = sub nsw i32 %i.ap, %.sroa.03.0
  %i.ar = sub nsw i32 %i.ao, %.sroa.7.0
  %i.as = sdiv i32 %i.aq, 2                       ; 2 uses
  %i.at = sdiv i32 %i.ar, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.au = add i32 %i.as, %.sroa.03.0
  %i.av = add i32 %i.at, %.sroa.7.0
  store i32 %i.as, ptr %4, align 4, !tbaa !220
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.at, ptr %i.aw, align 4, !tbaa !221
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.au, ptr %i.ax, align 4, !tbaa !220
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.av, ptr %i.ay, align 4, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.az = shufflevector <2 x i32> %i.i, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x i32> %i.az, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  store <4 x i32> %i.ba, ptr %5, align 16, !tbaa !150
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef nonnull %1, ptr noundef nonnull %i.g, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef null, ptr noundef null, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.c, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIEngine10drawFooterEPN5video12IVideoDriverE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(449) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.core::rect", align 4        ; 7 uses
  %3 = alloca %"class.core::rect", align 8        ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 4, !tbaa !150 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !150 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178  ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = uitofp nsz i32 %.sroa.0.0.copyload to float
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.i = load i32, ptr %i.h, align 4, !tbaa !257  ; 2 uses
  %i.j = uitofp nsz i32 %i.i to float             ; 2 uses
  %i.k = fdiv nsz float %i.g, %i.j                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !258  ; 2 uses
  %i.n = uitofp nsz i32 %i.m to float
  %i.o = fmul nsz float %i.k, %i.n
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = add nsw i32 %.sroa.5.0.copyload, -320
  %i.r = sdiv i32 %i.q, 2
  %i.s = icmp sgt i32 %i.r, %i.p
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = fmul nsz float %i.k, %i.j
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = lshr i32 %.sroa.0.0.copyload, 1          ; 2 uses
  %i.z = sub i32 %.sroa.5.0.copyload, %i.p
  %i.aa = add nuw nsw i32 %i.y, %i.u
  %i.ab = lshr i32 %i.u, 1                        ; 2 uses
  %i.ac = sub nsw i32 %i.y, %i.ab
  store i32 %i.ac, ptr %2, align 4, !tbaa !220
  store i32 %i.z, ptr %i.v, align 4, !tbaa !221
  %i.ad = sub nsw i32 %i.aa, %i.ab
  store i32 %i.ad, ptr %i.w, align 4, !tbaa !220
  store i32 %.sroa.5.0.copyload, ptr %i.x, align 4, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 0, ptr %3, align 8, !tbaa !150
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.i, ptr %i.ae, align 8, !tbaa !220
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.m, ptr %i.af, align 4, !tbaa !221
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef null, ptr noundef null, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIEngine10drawHeaderEPN5video12IVideoDriverE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(449) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.core::rect", align 4        ; 10 uses
  %3 = alloca %"class.core::rect", align 8        ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.sroa.011.0.copyload = load i32, ptr %i.d, align 4, !tbaa !150 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !150
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178  ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !226
  %i.i = tail call { i64, i64 } @_ZN15GUIFormSpecMenu15getAbsoluteRectEv(ptr noundef nonnull align 8 dereferenceable(2236) %i.h)
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = add i32 %.sroa.011.0.copyload, -8        ; 3 uses
  %.sroa.0.4.extract.shift = lshr i64 %i.j, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32 ; 3 uses
  %i.l = add nsw i32 %.sroa.0.4.extract.trunc, -8 ; 3 uses
  %i.m = add i32 %.sroa.011.0.copyload, -12       ; 3 uses
  %i.n = icmp slt i32 %i.m, 16
  br i1 %i.n, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %.sroa.0.4.extract.trunc, -12 ; 2 uses
  %i.p = icmp slt i32 %.sroa.0.4.extract.trunc, 28
  br i1 %i.p, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = uitofp nsz i32 %.sroa.011.0.copyload to float
  %i.r = fpext nnan ninf nsz float %i.q to double
  %i.s = fmul nnan nsz double %i.r, 5.000000e-01
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.v = add nsw i32 %.sroa.6.0.copyload, -320
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.z = sdiv i32 %i.v, 4
  %i.aa = uitofp nneg i32 %i.m to float
  %i.ab = uitofp nneg i32 %i.o to float
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !257 ; 2 uses
  %i.ad = uitofp nsz i32 %i.ac to float           ; 2 uses
  %i.ae = fpext nsz float %i.ad to double
  %i.af = fdiv nsz double %i.s, %i.ae
  %i.ag = fptrunc nsz double %i.af to float       ; 2 uses
  %i.ah = fmul nsz float %i.ad, %i.ag
  %i.ai = fptosi float %i.ah to i32               ; 2 uses
  %i.aj = load i32, ptr %i.u, align 4, !tbaa !258 ; 2 uses
  %i.ak = uitofp nsz i32 %i.aj to float
  %i.al = fmul nsz float %i.ak, %i.ag
  %i.am = fptosi float %i.al to i32               ; 2 uses
  %i.an = lshr i32 %.sroa.011.0.copyload, 1
  %.neg = sdiv i32 %i.ai, -2
  %i.ao = add i32 %.neg, %i.an                    ; 4 uses
  %.neg18 = sdiv i32 %i.am, -2
  %i.ap = add nsw i32 %i.z, 10
  %i.aq = add nsw i32 %i.ap, %.neg18              ; 4 uses
  store i32 %i.ao, ptr %2, align 4, !tbaa !220
  store i32 %i.aq, ptr %i.w, align 4, !tbaa !221
  %i.ar = insertelement <2 x i32> poison, i32 %i.ao, i64 0
  %i.as = insertelement <2 x i32> %i.ar, i32 %i.aq, i64 1 ; 4 uses
  %i.at = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %i.au = insertelement <2 x i32> %i.at, i32 %i.am, i64 1 ; 2 uses
  %i.av = add nsw <2 x i32> %i.as, %i.au          ; 4 uses
  store <2 x i32> %i.av, ptr %i.x, align 4, !tbaa !150
  %i.aw = sitofp <2 x i32> %i.au to <2 x float>   ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.ab, i64 1
  %i.az = fdiv nsz <2 x float> %i.ay, %i.aw       ; 2 uses
  %i.ba = extractelement <2 x float> %i.az, i64 0 ; 2 uses
  %i.bb = extractelement <2 x float> %i.az, i64 1 ; 2 uses
  %i.bc = fcmp nsz olt float %i.bb, %i.ba
  %.sroa.speculated = select i1 %i.bc, float %i.bb, float %i.ba ; 2 uses
  %i.bd = fcmp nsz olt float %.sroa.speculated, 1.000000e+00
  %i.be = extractelement <2 x i32> %i.av, i64 0
  %i.bf = extractelement <2 x i32> %i.av, i64 1
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = add nsw <2 x i32> %i.av, %i.as
  %i.bh = sitofp <2 x i32> %i.as to <2 x float>
  %i.bi = sdiv <2 x i32> %i.bg, splat (i32 2)
  %i.bj = insertelement <2 x float> poison, float %.sroa.speculated, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.bk, <2 x float> %i.bh)
  %i.bm = fptosi <2 x float> %i.bl to <2 x i32>   ; 2 uses
  %i.bn = add nsw <2 x i32> %i.as, %i.bm
  %i.bo = sdiv <2 x i32> %i.bn, splat (i32 -2)
  %i.bp = add nsw <2 x i32> %i.bo, %i.bi          ; 3 uses
  %i.bq = extractelement <2 x i32> %i.bp, i64 0
  %i.br = add nsw i32 %i.bq, %i.ao                ; 2 uses
  store i32 %i.br, ptr %2, align 4, !tbaa !220
  %i.bs = extractelement <2 x i32> %i.bp, i64 1
  %i.bt = add nsw i32 %i.bs, %i.aq                ; 2 uses
  store i32 %i.bt, ptr %i.w, align 4, !tbaa !221
  %i.bu = add nsw <2 x i32> %i.bp, %i.bm          ; 3 uses
  store <2 x i32> %i.bu, ptr %i.x, align 4, !tbaa !150
  %i.bv = extractelement <2 x i32> %i.bu, i64 0
  %i.bw = extractelement <2 x i32> %i.bu, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bx = phi i32 [ %i.bt, %bb.e ], [ %i.aq, %bb.d ] ; 3 uses
  %i.by = phi i32 [ %i.bw, %bb.e ], [ %i.bf, %bb.d ] ; 3 uses
  %i.bz = phi i32 [ %i.br, %bb.e ], [ %i.ao, %bb.d ] ; 3 uses
  %i.ca = phi i32 [ %i.bv, %bb.e ], [ %i.be, %bb.d ] ; 3 uses
  %i.cb = sub nsw i32 %i.ca, %i.bz
  %i.cc = icmp slt i32 %i.m, %i.cb
  %i.cd = sub nsw i32 %i.by, %i.bx
  %i.ce = icmp slt i32 %i.o, %i.cd
  %or.cond = select i1 %i.cc, i1 true, i1 %i.ce
  br i1 %or.cond, label %_ZN4core4rectIiE11constrainToERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = sub nsw i32 %i.k, %i.ca                 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.k, ptr %i.x, align 4, !tbaa !616
  %i.ch = add nsw i32 %i.bz, %i.cf                ; 2 uses
  store i32 %i.ch, ptr %2, align 4, !tbaa !617
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ci = phi i32 [ %i.k, %bb.h ], [ %i.ca, %bb.g ]
  %i.cj = phi i32 [ %i.ch, %bb.h ], [ %i.bz, %bb.g ] ; 2 uses
  %i.ck = sub nsw i32 %i.l, %i.by                 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.l, ptr %i.y, align 4, !tbaa !618
  %i.cm = add nsw i32 %i.bx, %i.ck                ; 2 uses
  store i32 %i.cm, ptr %i.w, align 4, !tbaa !619
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cn = phi i32 [ %i.l, %bb.j ], [ %i.by, %bb.i ]
  %i.co = phi i32 [ %i.cm, %bb.j ], [ %i.bx, %bb.i ] ; 2 uses
  %i.cp = icmp slt i32 %i.cj, 4
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 4, ptr %2, align 4, !tbaa !617
  %.neg59 = add i32 %i.ci, 4
  %i.cq = sub i32 %.neg59, %i.cj
  store i32 %i.cq, ptr %i.x, align 4, !tbaa !616
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cr = icmp slt i32 %i.co, 4
  br i1 %i.cr, label %bb.n, label %_ZN4core4rectIiE11constrainToERKS1_.exit

bb.n:                                             ; preds = %bb.m
  store i32 4, ptr %i.w, align 4, !tbaa !619
  %.neg61 = add i32 %i.cn, 4
  %i.cs = sub i32 %.neg61, %i.co
  store i32 %i.cs, ptr %i.y, align 4, !tbaa !618
  br label %_ZN4core4rectIiE11constrainToERKS1_.exit

_ZN4core4rectIiE11constrainToERKS1_.exit:         ; preds = %bb.f, %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 0, ptr %3, align 8, !tbaa !150
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ac, ptr %i.ct, align 8, !tbaa !220
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.aj, ptr %i.cu, align 4, !tbaa !221
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef null, ptr noundef null, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.o

bb.o:                                             ; preds = %_ZN4core4rectIiE11constrainToERKS1_.exit, %bb.c, %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_Z14takeScreenshotPN5video12IVideoDriverERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_Z10fmtgettextIJPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call ptr @gettext(ptr noundef %1) #26 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !151
  store i8 0, ptr %i.b, align 8, !tbaa !148
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #31
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.d, i64 256)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %spec.store.select, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !152
  %i.f = load i64, ptr %i.c, align 8, !tbaa !151
  %i.g = load ptr, ptr %2, align 8, !tbaa !126
  %i.h = invoke noundef i32 (ptr, i64, ptr, ...) @_ZN7porting11mt_snprintfEPcmPKcz(ptr noundef nonnull %i.e, i64 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef %i.g)
          to label %bb.b unwind label %bb.g       ; 3 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.a, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
          to label %bb.n unwind label %bb.h

bb.g:                                             ; preds = %bb.l, %bb.k, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.thread: ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !152    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !148
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = load ptr, ptr %4, align 8, !tbaa !152    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !152    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.z = load i64, ptr %i.x, align 8, !tbaa !148
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #28
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !148
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.ac) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.0, label %bb.i, label %bb.m

end_hunk_0
