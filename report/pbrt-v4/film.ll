Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/film?download=true
inline.NumInlined: 4433
inline.NumDeleted: 1046
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN4pbrt18FilmBaseParametersC2ERKNS_19ParameterDictionaryENS_6FilterEPKNS_11PixelSensorEPKNS_7FileLocE:._crit_edge.i.i
bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.10)
          to label %._crit_edge.i.i292 unwind label %bb.ao

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.fs = load ptr, ptr %16, align 8, !tbaa !313  ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !313 ; 2 uses
  %i.fv = icmp eq ptr %i.fs, %i.fu
  br i1 %i.fv, label %._crit_edge.i.i292, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fs to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 2 uses
  %.not = icmp eq i64 %i.fy, 16
  br i1 %.not, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fz = lshr exact i64 %i.fy, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ga = trunc i64 %i.fz to i32
  store i32 %i.ga, ptr %i.a, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.gb, ptr %7, align 8, !tbaa !29, !alias.scope !314
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.gc, align 8, !tbaa !31, !alias.scope !314
  store i8 0, ptr %i.gb, align 8, !tbaa !32, !alias.scope !314
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIiJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4pbrt12StringPrintfIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ge = load ptr, ptr %7, align 8, !tbaa !33, !alias.scope !314 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.gb
  br i1 %i.gf, label %.body201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195: ; preds = %bb.aj
  %i.gg = load i64, ptr %i.gb, align 8, !tbaa !32, !alias.scope !314
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #31
  br label %.body201

_ZN4pbrt12StringPrintfIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.ai
  %i.gi = load ptr, ptr %7, align 8, !tbaa !33
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef %i.gi)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %_ZN4pbrt12StringPrintfIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.gj = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.gb
  br i1 %i.gk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199: ; preds = %bb.ak
  %i.gl = load i64, ptr %i.gb, align 8, !tbaa !32
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i200

bb.al:                                            ; preds = %_ZN4pbrt12StringPrintfIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gb
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.al
  %i.gq = load i64, ptr %i.gb, align 8, !tbaa !32
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.body201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i200: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %._crit_edge.i.i292

.body201:                                         ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %eh.lpad-body202 = phi { ptr, i32 } [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195 ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.gd, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.bx

bb.am:                                            ; preds = %bb.ah
  %i.gs = load i32, ptr %i.fs, align 4, !tbaa !52 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !52 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !52 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !52 ; 2 uses
  %.sroa.speculated4.i.i209 = call i32 @llvm.smin.i32(i32 %i.gw, i32 %i.gs) ; 3 uses
  %.sroa.speculated.i.i210 = call i32 @llvm.smin.i32(i32 %i.gy, i32 %i.gu) ; 3 uses
  %.sroa.speculated4.i14.i215 = call i32 @llvm.smax.i32(i32 %i.gs, i32 %i.gw) ; 2 uses
  %.sroa.speculated.i15.i216 = call i32 @llvm.smax.i32(i32 %i.gu, i32 %i.gy) ; 2 uses
  %.sroa.03.0.copyload.i222 = load i64, ptr %i.c, align 8, !tbaa !52 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i226 = trunc i64 %.sroa.03.0.copyload.i222 to i32
  %.sroa.3.0.extract.shift.i.i227 = lshr i64 %.sroa.03.0.copyload.i222, 32
  %.sroa.3.0.extract.trunc.i.i228 = trunc nuw i64 %.sroa.3.0.extract.shift.i.i227 to i32
  %.not.i.i253 = icmp slt i32 %.sroa.speculated4.i.i209, %.sroa.0.0.extract.trunc.i.i226
  %i.gz = icmp slt i32 %.sroa.speculated.i.i210, %.sroa.3.0.extract.trunc.i.i228
  %i.ha = select i1 %.not.i.i253, i1 true, i1 %i.gz
  br i1 %i.ha, label %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread, label %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261

_ZNK4pbrt7Bounds2IiEneERKS1_.exit261:             ; preds = %bb.am
  %.sroa.0.0.copyload.i236 = load i64, ptr %i.d, align 8, !tbaa !52 ; 2 uses
  %.sroa.3.0.extract.shift.i13.i241 = lshr i64 %.sroa.0.0.copyload.i236, 32
  %.sroa.3.0.extract.trunc.i14.i242 = trunc nuw i64 %.sroa.3.0.extract.shift.i13.i241 to i32 ; 2 uses
  %.sroa.0.0.extract.trunc.i12.i240 = trunc i64 %.sroa.0.0.copyload.i236 to i32 ; 2 uses
  %.not.i5.i258 = icmp sgt i32 %.sroa.speculated4.i14.i215, %.sroa.0.0.extract.trunc.i12.i240
  %i.hb = icmp sgt i32 %.sroa.speculated.i15.i216, %.sroa.3.0.extract.trunc.i14.i242
  %i.hc = select i1 %.not.i5.i258, i1 true, i1 %i.hb
  br i1 %i.hc, label %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread, label %bb.an

_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread:      ; preds = %bb.am, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.9)
          to label %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge unwind label %bb.ao

_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge: ; preds = %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread
  %.sroa.03.0.copyload.i263.pre = load i64, ptr %i.c, align 8, !tbaa !52 ; 2 uses
  %.sroa.0.0.copyload.i277.pre = load i64, ptr %i.d, align 8, !tbaa !52 ; 2 uses
  %.pre526 = trunc i64 %.sroa.03.0.copyload.i263.pre to i32
  %.pre527 = lshr i64 %.sroa.03.0.copyload.i263.pre, 32
  %.pre528 = trunc nuw i64 %.pre527 to i32
  %.pre529 = trunc i64 %.sroa.0.0.copyload.i277.pre to i32
  %.pre530 = lshr i64 %.sroa.0.0.copyload.i277.pre, 32
  %.pre531 = trunc nuw i64 %.pre530 to i32
  %i.hd = call i32 @llvm.smax.i32(i32 %.sroa.speculated4.i.i209, i32 %.pre526)
  %i.he = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i210, i32 %.pre528)
  br label %bb.an

bb.an:                                            ; preds = %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261
  %.sroa.3.0.extract.trunc.i14.i283.pre-phi = phi i32 [ %.pre531, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge ], [ %.sroa.3.0.extract.trunc.i14.i242, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261 ]
  %.sroa.0.0.extract.trunc.i12.i281.pre-phi = phi i32 [ %.pre529, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge ], [ %.sroa.0.0.extract.trunc.i12.i240, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261 ]
  %.sroa.3.0.extract.trunc.i.i269.pre-phi = phi i32 [ %i.he, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge ], [ %.sroa.speculated.i.i210, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261 ]
  %.sroa.0.0.extract.trunc.i.i267.pre-phi = phi i32 [ %i.hd, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge ], [ %.sroa.speculated4.i.i209, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261 ]
  %.sroa.2.0.insert.ext.i.i272 = zext i32 %.sroa.3.0.extract.trunc.i.i269.pre-phi to i64
  %.sroa.2.0.insert.shift.i.i273 = shl nuw i64 %.sroa.2.0.insert.ext.i.i272, 32
  %.sroa.09.0.insert.ext.i.i274 = zext i32 %.sroa.0.0.extract.trunc.i.i267.pre-phi to i64
  %.sroa.09.0.insert.insert.i.i275 = or disjoint i64 %.sroa.2.0.insert.shift.i.i273, %.sroa.09.0.insert.ext.i.i274
  %.sroa.speculated4.i15.i284 = call i32 @llvm.smin.i32(i32 %.sroa.0.0.extract.trunc.i12.i281.pre-phi, i32 %.sroa.speculated4.i14.i215)
  %.sroa.speculated.i16.i285 = call i32 @llvm.smin.i32(i32 %.sroa.3.0.extract.trunc.i14.i283.pre-phi, i32 %.sroa.speculated.i15.i216)
  %.sroa.2.0.insert.ext.i17.i286 = zext i32 %.sroa.speculated.i16.i285 to i64
  %.sroa.2.0.insert.shift.i18.i287 = shl nuw i64 %.sroa.2.0.insert.ext.i17.i286, 32
  %.sroa.09.0.insert.ext.i19.i288 = zext i32 %.sroa.speculated4.i15.i284 to i64
  %.sroa.09.0.insert.insert.i20.i289 = or disjoint i64 %.sroa.2.0.insert.shift.i18.i287, %.sroa.09.0.insert.ext.i19.i288
  store i64 %.sroa.09.0.insert.insert.i.i275, ptr %i.c, align 8
  store i64 %.sroa.09.0.insert.insert.i20.i289, ptr %i.d, align 8
  br label %._crit_edge.i.i292

bb.ao:                                            ; preds = %bb.af, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit.thread, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

._crit_edge.i.i292:                               ; preds = %bb.ae, %bb.af, %bb.ag, %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i200
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.hg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.hg, ptr %19, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.hg, ptr noundef nonnull align 1 dereferenceable(10) @.str.12, i64 10, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 10, ptr %i.hh, align 8, !tbaa !31
  %i.hi = getelementptr inbounds nuw i8, ptr %19, i64 26
  store i8 0, ptr %i.hi, align 2, !tbaa !32
  invoke void @_ZNK4pbrt19ParameterDictionary13GetFloatArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.44") align 8 %18, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %._crit_edge.i.i292
  %i.hj = load ptr, ptr %19, align 8, !tbaa !33   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.hg
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %bb.ap
  %i.hl = load i64, ptr %i.hg, align 8, !tbaa !32
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.hn = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !305 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 264
  %i.hp = load i8, ptr %i.ho, align 4, !tbaa !315, !range !46, !noundef !47
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.aq, label %bb.bd

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %i.hr, i64 16, i1 false)
  %.sroa.04.0.copyload.i300 = load <2 x float>, ptr %20, align 8 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.ht = fcmp olt <2 x float> %.sroa.04.0.copyload.i300, zeroinitializer
  %i.hu = select <2 x i1> %i.ht, <2 x float> zeroinitializer, <2 x float> %.sroa.04.0.copyload.i300
  %i.hv = fcmp une <2 x float> %i.hu, %.sroa.04.0.copyload.i300 ; 2 uses
  %22 = extractelement <2 x i1> %i.hv, i64 0
  %23 = extractelement <2 x i1> %i.hv, i64 1
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %_ZNK4pbrt7Bounds2IfEneERKS1_.exit.thread, label %_ZNK4pbrt7Bounds2IfEneERKS1_.exit

_ZNK4pbrt7Bounds2IfEneERKS1_.exit:                ; preds = %bb.aq
  %.sroa.01.0.copyload.i308 = load <2 x float>, ptr %i.hs, align 8 ; 4 uses
  %i.hw = fcmp ogt <2 x float> %.sroa.01.0.copyload.i308, splat (float 1.000000e+00)
  %i.hx = select <2 x i1> %i.hw, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.01.0.copyload.i308
  %i.hy = fcmp une <2 x float> %i.hx, %.sroa.01.0.copyload.i308 ; 2 uses
  %25 = extractelement <2 x i1> %i.hy, i64 0
  %26 = extractelement <2 x i1> %i.hy, i64 1
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %_ZNK4pbrt7Bounds2IfEneERKS1_.exit.thread, label %bb.ax

_ZNK4pbrt7Bounds2IfEneERKS1_.exit.thread:         ; preds = %bb.aq, %_ZNK4pbrt7Bounds2IfEneERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.hz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.hz, ptr %6, align 8, !tbaa !29, !alias.scope !316
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ia, align 8, !tbaa !31, !alias.scope !316
  store i8 0, ptr %i.hz, align 8, !tbaa !32, !alias.scope !316
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_7Bounds2IfEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %6, ptr noundef nonnull @.str.13, ptr noundef nonnull align 4 dereferenceable(16) %20)
          to label %_ZN4pbrt12StringPrintfIJRNS_7Bounds2IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.ar

bb.ar:                                            ; preds = %_ZNK4pbrt7Bounds2IfEneERKS1_.exit.thread
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ic = load ptr, ptr %6, align 8, !tbaa !33, !alias.scope !316 ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.hz
  br i1 %i.id, label %.body325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i316: ; preds = %bb.ar
  %i.ie = load i64, ptr %i.hz, align 8, !tbaa !32, !alias.scope !316
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #31
  br label %.body325

_ZN4pbrt12StringPrintfIJRNS_7Bounds2IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %_ZNK4pbrt7Bounds2IfEneERKS1_.exit.thread
  %i.ig = load ptr, ptr %6, align 8, !tbaa !33
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef %i.ig)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Bounds2IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.ih = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.hz
  br i1 %i.ii, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i323: ; preds = %bb.as
  %i.ij = load i64, ptr %i.hz, align 8, !tbaa !32
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i324

bb.at:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Bounds2IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  %i.im = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.hz
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i320: ; preds = %bb.at
  %i.io = load i64, ptr %i.hz, align 8, !tbaa !32
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i321: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.body325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i324: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.04.0.copyload.i335 = load <2 x float>, ptr %20, align 8, !tbaa !55 ; 2 uses
  %i.iq = fcmp olt <2 x float> %.sroa.04.0.copyload.i335, zeroinitializer
  %i.ir = select <2 x i1> %i.iq, <2 x float> zeroinitializer, <2 x float> %.sroa.04.0.copyload.i335 ; 2 uses
  %.sroa.01.0.copyload.i343 = load <2 x float>, ptr %i.hs, align 8, !tbaa !55 ; 2 uses
  %i.is = fcmp ogt <2 x float> %.sroa.01.0.copyload.i343, splat (float 1.000000e+00)
  %i.it = select <2 x i1> %i.is, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.01.0.copyload.i343 ; 2 uses
  store <2 x float> %i.ir, ptr %20, align 8
  store <2 x float> %i.it, ptr %i.hs, align 8
  br label %bb.ax

bb.au:                                            ; preds = %._crit_edge.i.i292
  %i.iu = landingpad { ptr, i32 }
          cleanup
  %i.iv = load ptr, ptr %19, align 8, !tbaa !33   ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.hg
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %bb.au
  %i.ix = load i64, ptr %i.hg, align 8, !tbaa !32
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit429

bb.av:                                            ; preds = %bb.bp, %bb.bi, %bb.bf
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.aw:                                            ; preds = %bb.bb, %bb.ay
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %.body325

bb.ax:                                            ; preds = %_ZNK4pbrt7Bounds2IfEneERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i324
  %i.jb = phi <2 x float> [ %.sroa.01.0.copyload.i308, %_ZNK4pbrt7Bounds2IfEneERKS1_.exit ], [ %i.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i324 ]
  %i.jc = phi <2 x float> [ %.sroa.04.0.copyload.i300, %_ZNK4pbrt7Bounds2IfEneERKS1_.exit ], [ %i.ir, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i324 ]
  %i.jd = load <2 x i32>, ptr %0, align 8, !tbaa !52
  %i.je = sitofp <2 x i32> %i.jd to <2 x float>   ; 2 uses
  %i.jf = fmul <2 x float> %i.jc, %i.je
  %i.jg = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.jf) ; 2 uses
  %i.jh = extractelement <2 x float> %i.jg, i64 0
  %i.ji = fptosi float %i.jh to i32               ; 2 uses
  %i.jj = extractelement <2 x float> %i.jg, i64 1
  %i.jk = fptosi float %i.jj to i32               ; 2 uses
  %i.jl = fmul <2 x float> %i.jb, %i.je
  %i.jm = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.jl)
  %i.jn = fptosi <2 x float> %i.jm to <2 x i32>   ; 2 uses
  %i.jo = shufflevector <2 x i32> %i.jn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jp = insertelement <2 x i32> <i32 poison, i32 -2147483648>, i32 %i.ji, i64 0
  %i.jq = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jo, <2 x i32> %i.jp)
  %i.jr = insertelement <2 x i32> <i32 2147483647, i32 poison>, i32 %i.ji, i64 1
  %i.js = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.jq, <2 x i32> %i.jr)
  %i.jt = shufflevector <2 x i32> %i.jn, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %i.ju = insertelement <2 x i32> <i32 poison, i32 -2147483648>, i32 %i.jk, i64 0
  %i.jv = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jt, <2 x i32> %i.ju)
  %i.jw = insertelement <2 x i32> <i32 2147483647, i32 poison>, i32 %i.jk, i64 1
  %i.jx = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.jv, <2 x i32> %i.jw)
  %i.jy = zext <2 x i32> %i.jx to <2 x i64>
  %i.jz = shl nuw <2 x i64> %i.jy, splat (i64 32)
  %i.ka = zext <2 x i32> %i.js to <2 x i64>
  %i.kb = or disjoint <2 x i64> %i.jz, %i.ka
  %i.kc = shufflevector <2 x i64> %i.kb, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.kc, ptr %i.c, align 8
  %i.kd = load ptr, ptr %18, align 8, !tbaa !57
  %i.ke = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !57
  %i.kg = icmp eq ptr %i.kd, %i.kf
  br i1 %i.kg, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.14)
          to label %bb.az unwind label %bb.aw

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.kh = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !305
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 284
  %i.kj = load i8, ptr %i.ki, align 4, !tbaa !53, !range !46, !noundef !47
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kl = load ptr, ptr %16, align 8, !tbaa !313
  %i.km = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !313
  %i.ko = icmp eq ptr %i.kl, %i.kn
  br i1 %i.ko, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.10)
          to label %bb.bc unwind label %bb.aw

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.bo

.body325:                                         ; preds = %bb.ar, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i316
  %.pn70 = phi { ptr, i32 } [ %i.ja, %bb.aw ], [ %i.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i321 ], [ %i.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i316 ], [ %i.ib, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.bv

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  %i.kp = load ptr, ptr %18, align 8, !tbaa !57   ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !57 ; 2 uses
  %i.ks = icmp eq ptr %i.kp, %i.kr
  br i1 %i.ks, label %bb.bo, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kt = getelementptr inbounds nuw i8, ptr %i.hn, i64 284
  %i.ku = load i8, ptr %i.kt, align 4, !tbaa !53, !range !46, !noundef !47
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.15)
          to label %bb.bo unwind label %bb.av

bb.bg:                                            ; preds = %bb.be
  %i.kw = ptrtoint ptr %i.kr to i64
  %i.kx = ptrtoint ptr %i.kp to i64
  %i.ky = sub i64 %i.kw, %i.kx                    ; 2 uses
  %i.kz = icmp eq i64 %i.ky, 16
  br i1 %i.kz, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.la = load ptr, ptr %16, align 8, !tbaa !313
  %i.lb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !313
  %i.ld = icmp eq ptr %i.la, %i.lc
  br i1 %i.ld, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.10)
          to label %._crit_edge unwind label %bb.av

._crit_edge:                                      ; preds = %bb.bi
  %.pre517 = load ptr, ptr %18, align 8, !tbaa !318
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge, %bb.bh
  %i.le = phi ptr [ %.pre517, %._crit_edge ], [ %i.kp, %bb.bh ]
  %i.lf = load <4 x float>, ptr %i.le, align 4, !tbaa !55 ; 4 uses
  %i.lg = shufflevector <4 x float> %i.lf, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.lh = fcmp olt <4 x float> %i.lf, %i.lg
  %i.li = shufflevector <4 x float> %i.lf, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.lj = shufflevector <4 x float> %i.lf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.lk = select <4 x i1> %i.lh, <4 x float> %i.li, <4 x float> %i.lj ; 4 uses
  %i.ll = fcmp olt <4 x float> %i.lk, zeroinitializer ; 3 uses
  %i.lm = extractelement <4 x float> %i.lk, i64 0 ; 2 uses
  %i.ln = fcmp ogt float %i.lm, 1.000000e+00
  %..i377 = select i1 %i.ln, float 1.000000e+00, float %i.lm
  %i.lo = extractelement <4 x i1> %i.ll, i64 0
  %.0.i378 = select i1 %i.lo, float 0.000000e+00, float %..i377
  %i.lp = extractelement <4 x float> %i.lk, i64 2 ; 2 uses
  %i.lq = fcmp ogt float %i.lp, 1.000000e+00
  %..i383 = select i1 %i.lq, float 1.000000e+00, float %i.lp
  %i.lr = extractelement <4 x i1> %i.ll, i64 2
  %.0.i384 = select i1 %i.lr, float 0.000000e+00, float %..i383
  %i.ls = shufflevector <4 x float> %i.lk, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.lt = fcmp ogt <2 x float> %i.ls, splat (float 1.000000e+00)
  %i.lu = select <2 x i1> %i.lt, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ls
  %i.lv = shufflevector <4 x i1> %i.ll, <4 x i1> poison, <2 x i32> <i32 1, i32 3>
  %i.lw = select <2 x i1> %i.lv, <2 x float> zeroinitializer, <2 x float> %i.lu
  %i.lx = load <2 x i32>, ptr %0, align 8, !tbaa !52
  %i.ly = sitofp <2 x i32> %i.lx to <2 x float>   ; 3 uses
  %i.lz = fmul <2 x float> %i.lw, %i.ly
  %i.ma = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.lz) ; 2 uses
  %i.mb = extractelement <2 x float> %i.ma, i64 0
  %i.mc = fptosi float %i.mb to i32               ; 2 uses
  %i.md = extractelement <2 x float> %i.ma, i64 1
  %i.me = fptosi float %i.md to i32               ; 2 uses
  %i.mf = extractelement <2 x float> %i.ly, i64 0
  %i.mg = fmul float %.0.i378, %i.mf
  %i.mh = call noundef float @llvm.ceil.f32(float %i.mg)
  %i.mi = extractelement <2 x float> %i.ly, i64 1
  %i.mj = fmul float %.0.i384, %i.mi
  %i.mk = call noundef float @llvm.ceil.f32(float %i.mj)
  %i.ml = fptosi float %i.mh to i32               ; 2 uses
  %i.mm = fptosi float %i.mk to i32               ; 2 uses
  %.sroa.speculated4.i.i391 = call i32 @llvm.smin.i32(i32 %i.ml, i32 %i.mc)
  %.sroa.speculated.i.i392 = call i32 @llvm.smin.i32(i32 %i.mm, i32 %i.me)
  %.sroa.2.0.insert.ext.i.i393 = zext i32 %.sroa.speculated.i.i392 to i64
  %.sroa.2.0.insert.shift.i.i394 = shl nuw i64 %.sroa.2.0.insert.ext.i.i393, 32
  %.sroa.09.0.insert.ext.i.i395 = zext i32 %.sroa.speculated4.i.i391 to i64
  %.sroa.09.0.insert.insert.i.i396 = or disjoint i64 %.sroa.2.0.insert.shift.i.i394, %.sroa.09.0.insert.ext.i.i395
  %.sroa.speculated4.i14.i397 = call i32 @llvm.smax.i32(i32 %i.mc, i32 %i.ml)
  %.sroa.speculated.i15.i398 = call i32 @llvm.smax.i32(i32 %i.me, i32 %i.mm)
  %.sroa.2.0.insert.ext.i16.i399 = zext i32 %.sroa.speculated.i15.i398 to i64
  %.sroa.2.0.insert.shift.i17.i400 = shl nuw i64 %.sroa.2.0.insert.ext.i16.i399, 32
  %.sroa.09.0.insert.ext.i18.i401 = zext i32 %.sroa.speculated4.i14.i397 to i64
  %.sroa.09.0.insert.insert.i19.i402 = or disjoint i64 %.sroa.2.0.insert.shift.i17.i400, %.sroa.09.0.insert.ext.i18.i401
  store i64 %.sroa.09.0.insert.insert.i.i396, ptr %i.c, align 8
  store i64 %.sroa.09.0.insert.insert.i19.i402, ptr %i.d, align 8
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bg
  %i.mn = lshr exact i64 %i.ky, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.mo = trunc i64 %i.mn to i32
  store i32 %i.mo, ptr %i.b, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.mp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.mp, ptr %5, align 8, !tbaa !29, !alias.scope !319
  %i.mq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.mq, align 8, !tbaa !31, !alias.scope !319
  store i8 0, ptr %i.mp, align 8, !tbaa !32, !alias.scope !319
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIiJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN4pbrt12StringPrintfIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i407 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ms = load ptr, ptr %5, align 8, !tbaa !33, !alias.scope !319 ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.mp
  br i1 %i.mt, label %.body413, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i403: ; preds = %bb.bl
  %i.mu = load i64, ptr %i.mp, align 8, !tbaa !32, !alias.scope !319
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #31
  br label %.body413

_ZN4pbrt12StringPrintfIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i407: ; preds = %bb.bk
  %i.mw = load ptr, ptr %5, align 8, !tbaa !33
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef %i.mw)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %_ZN4pbrt12StringPrintfIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i407
  %i.mx = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.my = icmp eq ptr %i.mx, %i.mp
  br i1 %i.my, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i411: ; preds = %bb.bm
  %i.mz = load i64, ptr %i.mp, align 8, !tbaa !32
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mx, i64 noundef %i.na) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i412

bb.bn:                                            ; preds = %_ZN4pbrt12StringPrintfIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i407
  %i.nb = landingpad { ptr, i32 }
          cleanup
  %i.nc = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.mp
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i409, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i408: ; preds = %bb.bn
  %i.ne = load i64, ptr %i.mp, align 8, !tbaa !32
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i409

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i409: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i408
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i412: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i411
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.bo

.body413:                                         ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i409
  %eh.lpad-body414 = phi { ptr, i32 } [ %i.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i403 ], [ %i.nb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i409 ], [ %i.mr, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.bv

bb.bo:                                            ; preds = %bb.bd, %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i412, %bb.bf, %bb.bc
  %i.ng = load <2 x i32>, ptr %i.c, align 8
  %i.nh = load <2 x i32>, ptr %i.d, align 8
  %i.ni = icmp sge <2 x i32> %i.ng, %i.nh         ; 2 uses
  %28 = extractelement <2 x i1> %i.ni, i64 0
  %29 = extractelement <2 x i1> %i.ni, i64 1
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %bb.bp, label %._crit_edge.i.i417

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN4pbrt9ErrorExitIJRNS_7Bounds2IiEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef %4, ptr noundef nonnull @.str.17, ptr noundef nonnull align 4 dereferenceable(16) %i.c) #32
          to label %bb.bq unwind label %bb.av

bb.bq:                                            ; preds = %bb.bp
  unreachable

._crit_edge.i.i417:                               ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  %i.nj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.nj, ptr %21, align 8, !tbaa !29
  store i64 7809644653592013156, ptr %i.nj, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 8, ptr %i.nk, align 8, !tbaa !31
  %i.nl = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i8 0, ptr %i.nl, align 8, !tbaa !32
  %i.nm = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %21, float noundef 3.500000e+01)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %._crit_edge.i.i417
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.nm, ptr %i.nn, align 8, !tbaa !58
  %i.no = load ptr, ptr %21, align 8, !tbaa !33   ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.nj
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %bb.br
  %i.nq = load i64, ptr %i.nj, align 8, !tbaa !32
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.nr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  %i.ns = load ptr, ptr %18, align 8, !tbaa !318  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423
  %i.nt = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !320
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = ptrtoint ptr %i.ns to i64
  %i.nx = sub i64 %i.nv, %i.nw
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef %i.nx) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.ny = load ptr, ptr %16, align 8, !tbaa !322  ; 3 uses
  %.not.i.i.i424 = icmp eq ptr %i.ny, null
  br i1 %.not.i.i.i424, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.nz = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !323
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %i.ny to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %i.ny, i64 noundef %i.od) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  ret void

bb.bu:                                            ; preds = %._crit_edge.i.i417
  %i.oe = landingpad { ptr, i32 }
          cleanup
  %i.of = load ptr, ptr %21, align 8, !tbaa !33   ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.nj
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425: ; preds = %bb.bu
  %i.oh = load i64, ptr %i.nj, align 8, !tbaa !32
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, %.body413, %.body325, %bb.av
  %.pn74 = phi { ptr, i32 } [ %i.iz, %bb.av ], [ %i.oe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427 ], [ %.pn70, %.body325 ], [ %eh.lpad-body414, %.body413 ] ; 2 uses
  %i.oj = load ptr, ptr %18, align 8, !tbaa !318  ; 3 uses
  %.not.i.i.i428 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i428, label %_ZNSt6vectorIfSaIfEED2Ev.exit429, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ok = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !320
  %i.om = ptrtoint ptr %i.ol to i64
  %i.on = ptrtoint ptr %i.oj to i64
  %i.oo = sub i64 %i.om, %i.on
  call void @_ZdlPvm(ptr noundef nonnull %i.oj, i64 noundef %i.oo) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit429

_ZNSt6vectorIfSaIfEED2Ev.exit429:                 ; preds = %bb.bw, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355
  %.pn74.pn = phi { ptr, i32 } [ %i.iu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %.pn74, %bb.bv ], [ %.pn74, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ao, %_ZNSt6vectorIfSaIfEED2Ev.exit429, %.body201
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit429 ], [ %i.hf, %bb.ao ], [ %eh.lpad-body202, %.body201 ] ; 2 uses
  %i.op = load ptr, ptr %16, align 8, !tbaa !322  ; 3 uses
  %.not.i.i.i430 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i430, label %_ZNSt6vectorIiSaIiEED2Ev.exit431, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.oq = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !323
  %i.os = ptrtoint ptr %i.or to i64
  %i.ot = ptrtoint ptr %i.op to i64
  %i.ou = sub i64 %i.os, %i.ot
  call void @_ZdlPvm(ptr noundef nonnull %i.op, i64 noundef %i.ou) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit431

_ZNSt6vectorIiSaIiEED2Ev.exit431:                 ; preds = %bb.by, %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %.pn74.pn.pn.pn = phi { ptr, i32 } [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %.pn74.pn.pn, %bb.bx ], [ %.pn74.pn.pn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %.body

.body:                                            ; preds = %bb.i, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNSt6vectorIiSaIiEED2Ev.exit431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %.pn74.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit431 ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn51.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %i.da, %bb.s ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %i.be, %bb.i ]
  %i.ov = load ptr, ptr %i.h, align 8, !tbaa !33  ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.i
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432: ; preds = %.body
  %i.ox = load i64, ptr %i.i, align 8, !tbaa !32
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432
  resume { ptr, i32 } %.pn74.pn.pn.pn.pn
}

declare void @_ZNK4pbrt19ParameterDictionary12GetOneStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare i64 @_ZN4pbrt3GUI13GetResolutionEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare noundef i32 @_ZNK4pbrt19ParameterDictionary9GetOneIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare void @_ZNK4pbrt19ParameterDictionary11GetIntArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZNK4pbrt19ParameterDictionary13GetFloatArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector.44") align 8, ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRNS_7Bounds2IiEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !29, !alias.scope !326
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !31, !alias.scope !326
  store i8 0, ptr %i.a, align 8, !tbaa !32, !alias.scope !326
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_7Bounds2IiEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
          to label %_ZN4pbrt12StringPrintfIJRNS_7Bounds2IiEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !33, !alias.scope !326 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !32, !alias.scope !326
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRNS_7Bounds2IiEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !33
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef %0, ptr noundef %i.h) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Bounds2IiEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Bounds2IiEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN4pbrt8LogFatalIJRA11_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_:bb.a
common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA11_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !33
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA11_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA11_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !32
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt7Array2DINS_7RGBFilm5PixelEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt7RGBFilm5PixelEEEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !109
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.e = sub nsw i32 %i.d, %.sroa.2.0.extract.trunc.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.h = sub nsw i32 %i.g, %.sroa.0.0.extract.trunc.i.i
  %i.i = mul nsw i32 %i.e, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = mul nsw i64 %i.j, 56
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !111  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.b, i64 noundef %i.l, i64 noundef 8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt7RGBFilm5PixelEEEvPT_m.exit unwind label %bb.c, !inline_history !380

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt7RGBFilm5PixelEEEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt7RGBFilm8AddSplatENS_6Point2IfEENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, ptr noundef nonnull align 4 dereferenceable(32) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %6 = alloca %class.anon.96, align 8             ; 4 uses
  %.fr = freeze <2 x float> %2                    ; 3 uses
  %shift = shufflevector <2 x float> %.fr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.a = fcmp uno <2 x float> %.fr, %shift
  %or.cond.i = extractelement <2 x i1> %i.a, i64 0
  %.sroa.4145.8.vec.extract = extractelement <2 x float> %3, i64 0
  %i.b = fcmp uno float %.sroa.4145.8.vec.extract, 0.000000e+00
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.b
  %.sroa.4145.12.vec.extract = extractelement <2 x float> %3, i64 1
  %i.c = fcmp uno float %.sroa.4145.12.vec.extract, 0.000000e+00
  %or.cond17.i = select i1 %or.cond14.i, i1 true, i1 %i.c
  br i1 %or.cond17.i, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA13_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef 500, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(13) @.str.58) #32
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load <4 x float>, ptr %i.f, align 4      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.i = load float, ptr %i.h, align 8, !tbaa !114 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.k, 0
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.k, 1 ; 2 uses
  %.sroa.8.12.vec.extract.i.i = extractelement <2 x float> %i.m, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.o = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.o, 0
  %i.q = extractvalue { <2 x float>, <2 x float> } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.s = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 0
  %i.u = extractvalue { <2 x float>, <2 x float> } %i.s, 1
  %i.v = fcmp une <4 x float> %i.g, zeroinitializer
  %i.w = shufflevector <2 x float> %.fr, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.x = fdiv <4 x float> %i.w, %i.g
  %i.y = select <4 x i1> %i.v, <4 x float> %i.x, <4 x float> zeroinitializer ; 5 uses
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aa = fmul <2 x float> %i.z, %i.l             ; 2 uses
  %i.ab = extractelement <4 x float> %i.y, i64 3
  %i.ac = fmul float %i.ab, %.sroa.8.12.vec.extract.i.i
  %i.ad = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ae = fmul <4 x float> %i.y, %i.ad            ; 4 uses
  %i.af = shufflevector <2 x float> %i.t, <2 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = fmul <4 x float> %i.y, %i.af            ; 4 uses
  %shift171 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ag, %shift171
  %shift173 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop174 = fadd <4 x float> %shift173, %foldExtExtBinop
  %shift176 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop177 = fadd <4 x float> %shift176, %foldExtExtBinop174
  %i.ah = extractelement <4 x float> %foldExtExtBinop177, i64 0
  %i.ai = fmul float %i.ah, 2.500000e-01
  %shift179 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop180 = fadd <2 x float> %i.aa, %shift179
  %i.aj = shufflevector <4 x float> %i.y, <4 x float> %i.ae, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.ak = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> %i.ae, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.am = fmul <2 x float> %i.aj, %i.al
  %i.an = fadd <2 x float> %i.aj, %i.al
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 0, i32 3>
  %i.ap = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aq = shufflevector <2 x float> %foldExtExtBinop180, <2 x float> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.ar = fadd <2 x float> %i.aq, %i.ao
  %i.as = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.at = insertelement <2 x float> %i.as, float %i.ac, i64 0
  %i.au = fadd <2 x float> %i.at, %i.ar
  %i.av = fmul <2 x float> %i.au, splat (float 2.500000e-01)
  %i.aw = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.ax, %i.av           ; 4 uses
  %i.az = fmul float %i.i, %i.ai                  ; 4 uses
  %i.ba = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bb = extractelement <2 x float> %i.ay, i64 1 ; 2 uses
  %i.bc = fcmp olt float %i.ba, %i.bb
  %i.bd = select i1 %i.bc, float %i.bb, float %i.ba ; 2 uses
  %i.be = fcmp olt float %i.bd, %i.az
  %.sroa.speculated = select i1 %i.be, float %i.az, float %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !101 ; 2 uses
  %i.bh = fcmp ogt float %.sroa.speculated, %i.bg ; 2 uses
  %i.bi = fdiv float %i.bg, %.sroa.speculated     ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.ay, %i.bk
  %i.bm = fmul float %i.az, %i.bi
  %.sroa.11.0 = select i1 %i.bh, float %i.bm, float %i.az
  %.sroa.0124.0 = select i1 %i.bh, <2 x float> %i.bl, <2 x float> %i.ay ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36
  %i.bp = and i64 %i.bo, 144115188075855871
  %i.bq = inttoptr i64 %i.bp to ptr
  %.sroa.0.0.i.i.i = load <2 x float>, ptr %i.bq, align 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = fadd <2 x float> %1, splat (float 5.000000e-01) ; 2 uses
  %i.bt = fsub <2 x float> %i.bs, %.sroa.0.0.i.i.i
  %i.bu = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bt)
  %i.bv = fptosi <2 x float> %i.bu to <2 x i32>   ; 2 uses
  %i.bw = fadd <2 x float> %i.bs, %.sroa.0.0.i.i.i
  %i.bx = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bw)
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>
  %i.bz = add nsw <2 x i32> %i.by, splat (i32 1)  ; 2 uses
  %i.ca = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bz, <2 x i32> %i.bv)
  %i.cb = load <1 x i64>, ptr %i.br, align 8
  %i.cc = shufflevector <1 x i64> %i.cb, <1 x i64> poison, <2 x i32> zeroinitializer
  %i.cd = lshr <2 x i64> %i.cc, <i64 0, i64 32>
  %i.ce = trunc <2 x i64> %i.cd to <2 x i32>
  %i.cf = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ca, <2 x i32> %i.ce) ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bv, <2 x i32> %i.bz)
  %i.ci = load <1 x i64>, ptr %i.cg, align 8
  %i.cj = shufflevector <1 x i64> %i.ci, <1 x i64> poison, <2 x i32> zeroinitializer
  %i.ck = lshr <2 x i64> %i.cj, <i64 0, i64 32>
  %i.cl = trunc <2 x i64> %i.ck to <2 x i32>
  %i.cm = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cl, <2 x i32> %i.ch) ; 3 uses
  %i.cn = extractelement <2 x i32> %i.cf, i64 1   ; 2 uses
  %i.co = extractelement <2 x i32> %i.cm, i64 1
  %i.cp = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 %i.co)
  %i.cq = icmp sge <2 x i32> %i.cf, %i.cm         ; 2 uses
  %7 = extractelement <2 x i1> %i.cq, i64 0
  %8 = extractelement <2 x i1> %i.cq, i64 1
  %.not = select i1 %7, i1 true, i1 %8
  br i1 %.not, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i
  %i.cr = extractelement <2 x i32> %i.cf, i64 0   ; 3 uses
  %.sroa.09.0.insert.insert.i.i66 = bitcast <2 x i32> %i.cf to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0124.0.vec.extract137 = extractelement <2 x float> %.sroa.0124.0, i64 0
  %.sroa.0124.4.vec.extract142 = extractelement <2 x float> %.sroa.0124.0, i64 1
  %.sroa.099.0.insert.ext105 = zext i32 %i.cr to i64
  %i.cw = extractelement <2 x i32> %i.cm, i64 0
  br label %bb.c

_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit:         ; preds = %_ZN4pbrt16Bounds2iIteratorppEv.exit, %.lr.ph.i.i
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4pbrt16Bounds2iIteratorppEv.exit
  %.sroa.099.4.extract.trunc161 = phi i32 [ %i.cn, %.lr.ph ], [ %.sroa.099.4.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %.sroa.099.0.extract.trunc160 = phi i32 [ %i.cr, %.lr.ph ], [ %.sroa.099.0.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ] ; 2 uses
  %.sroa.099.0159 = phi i64 [ %.sroa.09.0.insert.insert.i.i66, %.lr.ph ], [ %.sroa.099.1, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.cx = phi <2 x i32> [ %i.cf, %.lr.ph ], [ %i.fu, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.cy = sitofp <2 x i32> %i.cx to <2 x float>
  %i.cz = fsub <2 x float> %1, %i.cy
  %i.da = fadd <2 x float> %i.cz, splat (float -5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x float> %i.da, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.db = load i64, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %i.dc = and i64 %i.db, 144115188075855871
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = lshr i64 %i.db, 57
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = add nsw i32 %i.df, -1
  %i.dh = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_6Filter8EvaluateENS_6Point2IfEEEUlT_E_fNS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.dd, i32 noundef %i.dg) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.di = fcmp une float %i.dh, 0.000000e+00
  br i1 %i.di, label %_ZN4pbrt3RGBixEi.exit, label %_ZN4pbrt16Bounds2iIteratorppEv.exit

_ZN4pbrt3RGBixEi.exit:                            ; preds = %bb.c
  %i.dj = load i32, ptr %i.cs, align 8, !tbaa !107 ; 2 uses
  %i.dk = sub i32 %.sroa.099.0.extract.trunc160, %i.dj
  %i.dl = load i32, ptr %i.ct, align 4, !tbaa !109
  %i.dm = sub nsw i32 %.sroa.099.4.extract.trunc161, %i.dl
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !103
  %i.do = load i32, ptr %i.cv, align 8, !tbaa !107
  %i.dp = sub nsw i32 %i.do, %i.dj
  %i.dq = mul nsw i32 %i.dp, %i.dm
  %i.dr = add nsw i32 %i.dk, %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [56 x i8], ptr %i.dn, i64 %i.ds ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32 ; 3 uses
  %i.dv = fmul float %i.dh, %.sroa.0124.0.vec.extract137
  %i.dw = fpext float %i.dv to double             ; 2 uses
  %i.dx = load atomic i64, ptr %i.du seq_cst, align 8 ; 2 uses
  %i.dy = bitcast i64 %i.dx to double
  %i.dz = fadd double %i.dw, %i.dy
  %i.ea = bitcast double %i.dz to i64
  %i.eb = cmpxchg weak ptr %i.du, i64 %i.dx, i64 %i.ea seq_cst seq_cst, align 8 ; 2 uses
  %i.ec = extractvalue { i64, i1 } %i.eb, 1
  br i1 %i.ec, label %_ZN4pbrt3RGBixEi.exit.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i: ; preds = %_ZN4pbrt3RGBixEi.exit, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i
  %i.ed = phi { i64, i1 } [ %i.ei, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i ], [ %i.eb, %_ZN4pbrt3RGBixEi.exit ]
  %i.ee = extractvalue { i64, i1 } %i.ed, 0       ; 2 uses
  %i.ef = bitcast i64 %i.ee to double
  %i.eg = fadd double %i.dw, %i.ef
  %i.eh = bitcast double %i.eg to i64
  %i.ei = cmpxchg weak ptr %i.du, i64 %i.ee, i64 %i.eh seq_cst seq_cst, align 8 ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 1
  br i1 %i.ej, label %_ZN4pbrt3RGBixEi.exit.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, !llvm.loop !2

_ZN4pbrt3RGBixEi.exit.1:                          ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, %_ZN4pbrt3RGBixEi.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dt, i64 40 ; 3 uses
  %i.el = fmul float %i.dh, %.sroa.0124.4.vec.extract142
  %i.em = fpext float %i.el to double             ; 2 uses
  %i.en = load atomic i64, ptr %i.ek seq_cst, align 8 ; 2 uses
  %i.eo = bitcast i64 %i.en to double
  %i.ep = fadd double %i.em, %i.eo
  %i.eq = bitcast double %i.ep to i64
  %i.er = cmpxchg weak ptr %i.ek, i64 %i.en, i64 %i.eq seq_cst seq_cst, align 8 ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 1
  br i1 %i.es, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1: ; preds = %_ZN4pbrt3RGBixEi.exit.1, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1
  %i.et = phi { i64, i1 } [ %i.ey, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1 ], [ %i.er, %_ZN4pbrt3RGBixEi.exit.1 ]
  %i.eu = extractvalue { i64, i1 } %i.et, 0       ; 2 uses
  %i.ev = bitcast i64 %i.eu to double
  %i.ew = fadd double %i.em, %i.ev
  %i.ex = bitcast double %i.ew to i64
  %i.ey = cmpxchg weak ptr %i.ek, i64 %i.eu, i64 %i.ex seq_cst seq_cst, align 8 ; 2 uses
  %i.ez = extractvalue { i64, i1 } %i.ey, 1
  br i1 %i.ez, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1, !llvm.loop !2

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1, %_ZN4pbrt3RGBixEi.exit.1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dt, i64 48 ; 3 uses
  %i.fb = fmul float %i.dh, %.sroa.11.0
  %i.fc = fpext float %i.fb to double             ; 2 uses
  %i.fd = load atomic i64, ptr %i.fa seq_cst, align 8 ; 2 uses
  %i.fe = bitcast i64 %i.fd to double
  %i.ff = fadd double %i.fc, %i.fe
  %i.fg = bitcast double %i.ff to i64
  %i.fh = cmpxchg weak ptr %i.fa, i64 %i.fd, i64 %i.fg seq_cst seq_cst, align 8 ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 1
  br i1 %i.fi, label %_ZN4pbrt16Bounds2iIteratorppEv.exit, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2
  %i.fj = phi { i64, i1 } [ %i.fo, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2 ], [ %i.fh, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.fk = extractvalue { i64, i1 } %i.fj, 0       ; 2 uses
  %i.fl = bitcast i64 %i.fk to double
  %i.fm = fadd double %i.fc, %i.fl
  %i.fn = bitcast double %i.fm to i64
  %i.fo = cmpxchg weak ptr %i.fa, i64 %i.fk, i64 %i.fn seq_cst seq_cst, align 8 ; 2 uses
  %i.fp = extractvalue { i64, i1 } %i.fo, 1
  br i1 %i.fp, label %_ZN4pbrt16Bounds2iIteratorppEv.exit, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2, !llvm.loop !2

_ZN4pbrt16Bounds2iIteratorppEv.exit:              ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2, %_ZN4pbrt3RGBixEi.exit.2, %bb.c
  %i.fq = add nsw i32 %.sroa.099.0.extract.trunc160, 1 ; 2 uses
  %.sroa.099.0.insert.ext = zext i32 %i.fq to i64
  %.sroa.099.0.insert.mask = and i64 %.sroa.099.0159, -4294967296 ; 2 uses
  %.sroa.099.0.insert.insert = or disjoint i64 %.sroa.099.0.insert.mask, %.sroa.099.0.insert.ext
  %i.fr = icmp eq i32 %i.fq, %i.cw
  %.sroa.099.4.insert.ext = add i64 %.sroa.099.0.insert.mask, 4294967296
  %.sroa.099.4.insert.insert = or disjoint i64 %.sroa.099.4.insert.ext, %.sroa.099.0.insert.ext105
  %.sroa.099.1 = select i1 %i.fr, i64 %.sroa.099.4.insert.insert, i64 %.sroa.099.0.insert.insert ; 4 uses
  %.sroa.099.0.extract.trunc = trunc i64 %.sroa.099.1 to i32 ; 2 uses
  %.not.i.i77 = icmp ne i32 %i.cr, %.sroa.099.0.extract.trunc
  %.sroa.099.4.extract.shift = lshr i64 %.sroa.099.1, 32
  %.sroa.099.4.extract.trunc = trunc nuw i64 %.sroa.099.4.extract.shift to i32 ; 2 uses
  %i.fs = icmp ne i32 %i.cp, %.sroa.099.4.extract.trunc
  %i.ft = select i1 %.not.i.i77, i1 true, i1 %i.fs
  %i.fu = bitcast i64 %.sroa.099.1 to <2 x i32>
  br i1 %i.ft, label %bb.c, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA13_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(13) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !29, !alias.scope !383
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !31, !alias.scope !383
  store i8 0, ptr %i.a, align 8, !tbaa !32, !alias.scope !383
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA13_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(13) %4)
          to label %_ZN4pbrt12StringPrintfIJRA13_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !33, !alias.scope !383 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !32, !alias.scope !383
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA13_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !33
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA13_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA13_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !32
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt7RGBFilm10WriteImageENS_13ImageMetadataEf(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef align 8 dereferenceable(304) %1, float noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.pbrt::Image", align 8       ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_1
begin_hunk_2_@_ZN4pbrt11GBufferFilmC2ENS_18FilmBaseParametersERKNS_17AnimatedTransformEbPKNS_13RGBColorSpaceEfbN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  %i.el = extractelement <2 x float> %i.dx, i64 0
  %i.em = call noundef float @llvm.fma.f32(float %i.el, float %i.dl, float 0.000000e+00)
  %i.en = call noundef float @llvm.fma.f32(float %i.dy, float %i.do, float %i.em)
  %i.eo = call noundef float @llvm.fma.f32(float %i.dk, float %i.dr, float %i.en)
  store <8 x float> %i.ek, ptr %i.ce, align 4
  store float %i.eo, ptr %i.cf, align 4, !tbaa !32
  ret void

bb.l:                                             ; preds = %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.j ], [ %i.cs, %bb.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !33 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZN4pbrt18FilmBaseParametersD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.l
  %i.et = load i64, ptr %i.er, align 8, !tbaa !32
  br label %_ZN4pbrt18FilmBaseParametersD2Ev.exit19.sink.split

_ZN4pbrt18FilmBaseParametersD2Ev.exit19.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  %.sink30 = phi i64 [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17 ]
  %.sink = phi ptr [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17 ]
  %i.eu = add i64 %.sink30, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.eu) #31
  br label %_ZN4pbrt18FilmBaseParametersD2Ev.exit19

_ZN4pbrt18FilmBaseParametersD2Ev.exit19:          ; preds = %_ZN4pbrt18FilmBaseParametersD2Ev.exit19.sink.split, %bb.l, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.co, %bb.h ], [ %.pn.pn, %bb.l ], [ %.pn.pn.pn.ph, %_ZN4pbrt18FilmBaseParametersD2Ev.exit19.sink.split ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt7Array2DINS_11GBufferFilm5PixelEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt11GBufferFilm5PixelEEEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !109
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.e = sub nsw i32 %i.d, %.sroa.2.0.extract.trunc.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.h = sub nsw i32 %i.g, %.sroa.0.0.extract.trunc.i.i
  %i.i = mul nsw i32 %i.e, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = mul nsw i64 %i.j, 192
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !111  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.b, i64 noundef %i.l, i64 noundef 8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt11GBufferFilm5PixelEEEvPT_m.exit unwind label %bb.c, !inline_history !422

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt11GBufferFilm5PixelEEEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt11GBufferFilm8AddSplatENS_6Point2IfEENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(872) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, ptr noundef nonnull align 4 dereferenceable(32) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %6 = alloca %class.anon.96, align 8             ; 4 uses
  %.fr = freeze <2 x float> %2                    ; 3 uses
  %shift = shufflevector <2 x float> %.fr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.a = fcmp uno <2 x float> %.fr, %shift
  %or.cond.i = extractelement <2 x i1> %i.a, i64 0
  %.sroa.4144.8.vec.extract = extractelement <2 x float> %3, i64 0
  %i.b = fcmp uno float %.sroa.4144.8.vec.extract, 0.000000e+00
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.b
  %.sroa.4144.12.vec.extract = extractelement <2 x float> %3, i64 1
  %i.c = fcmp uno float %.sroa.4144.12.vec.extract, 0.000000e+00
  %or.cond17.i = select i1 %or.cond14.i, i1 true, i1 %i.c
  br i1 %or.cond17.i, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA13_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef 662, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(13) @.str.68) #32
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load <4 x float>, ptr %i.f, align 4      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.i = load float, ptr %i.h, align 8, !tbaa !114 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.k, 0
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.k, 1 ; 2 uses
  %.sroa.8.12.vec.extract.i.i = extractelement <2 x float> %i.m, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.o = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.o, 0
  %i.q = extractvalue { <2 x float>, <2 x float> } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.s = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 0
  %i.u = extractvalue { <2 x float>, <2 x float> } %i.s, 1
  %i.v = fcmp une <4 x float> %i.g, zeroinitializer
  %i.w = shufflevector <2 x float> %.fr, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.x = fdiv <4 x float> %i.w, %i.g
  %i.y = select <4 x i1> %i.v, <4 x float> %i.x, <4 x float> zeroinitializer ; 5 uses
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aa = fmul <2 x float> %i.z, %i.l             ; 2 uses
  %i.ab = extractelement <4 x float> %i.y, i64 3
  %i.ac = fmul float %i.ab, %.sroa.8.12.vec.extract.i.i
  %i.ad = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ae = fmul <4 x float> %i.y, %i.ad            ; 4 uses
  %i.af = shufflevector <2 x float> %i.t, <2 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = fmul <4 x float> %i.y, %i.af            ; 4 uses
  %shift170 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ag, %shift170
  %shift172 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop173 = fadd <4 x float> %shift172, %foldExtExtBinop
  %shift175 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop176 = fadd <4 x float> %shift175, %foldExtExtBinop173
  %i.ah = extractelement <4 x float> %foldExtExtBinop176, i64 0
  %i.ai = fmul float %i.ah, 2.500000e-01
  %shift178 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop179 = fadd <2 x float> %i.aa, %shift178
  %i.aj = shufflevector <4 x float> %i.y, <4 x float> %i.ae, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.ak = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> %i.ae, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.am = fmul <2 x float> %i.aj, %i.al
  %i.an = fadd <2 x float> %i.aj, %i.al
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 0, i32 3>
  %i.ap = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aq = shufflevector <2 x float> %foldExtExtBinop179, <2 x float> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.ar = fadd <2 x float> %i.aq, %i.ao
  %i.as = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.at = insertelement <2 x float> %i.as, float %i.ac, i64 0
  %i.au = fadd <2 x float> %i.at, %i.ar
  %i.av = fmul <2 x float> %i.au, splat (float 2.500000e-01)
  %i.aw = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.ax, %i.av           ; 4 uses
  %i.az = fmul float %i.i, %i.ai                  ; 4 uses
  %i.ba = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bb = extractelement <2 x float> %i.ay, i64 1 ; 2 uses
  %i.bc = fcmp olt float %i.ba, %i.bb
  %i.bd = select i1 %i.bc, float %i.bb, float %i.ba ; 2 uses
  %i.be = fcmp olt float %i.bd, %i.az
  %.sroa.speculated = select i1 %i.be, float %i.az, float %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !155 ; 2 uses
  %i.bh = fcmp ogt float %.sroa.speculated, %i.bg ; 2 uses
  %i.bi = fdiv float %i.bg, %.sroa.speculated     ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.ay, %i.bk
  %i.bm = fmul float %i.az, %i.bi
  %.sroa.11.0 = select i1 %i.bh, float %i.bm, float %i.az
  %.sroa.0123.0 = select i1 %i.bh, <2 x float> %i.bl, <2 x float> %i.ay ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36
  %i.bp = and i64 %i.bo, 144115188075855871
  %i.bq = inttoptr i64 %i.bp to ptr
  %.sroa.0.0.i.i.i = load <2 x float>, ptr %i.bq, align 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = fadd <2 x float> %1, splat (float 5.000000e-01) ; 2 uses
  %i.bt = fsub <2 x float> %i.bs, %.sroa.0.0.i.i.i
  %i.bu = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bt)
  %i.bv = fptosi <2 x float> %i.bu to <2 x i32>   ; 2 uses
  %i.bw = fadd <2 x float> %i.bs, %.sroa.0.0.i.i.i
  %i.bx = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bw)
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>
  %i.bz = add nsw <2 x i32> %i.by, splat (i32 1)  ; 2 uses
  %i.ca = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bz, <2 x i32> %i.bv)
  %i.cb = load <1 x i64>, ptr %i.br, align 8
  %i.cc = shufflevector <1 x i64> %i.cb, <1 x i64> poison, <2 x i32> zeroinitializer
  %i.cd = lshr <2 x i64> %i.cc, <i64 0, i64 32>
  %i.ce = trunc <2 x i64> %i.cd to <2 x i32>
  %i.cf = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ca, <2 x i32> %i.ce) ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bv, <2 x i32> %i.bz)
  %i.ci = load <1 x i64>, ptr %i.cg, align 8
  %i.cj = shufflevector <1 x i64> %i.ci, <1 x i64> poison, <2 x i32> zeroinitializer
  %i.ck = lshr <2 x i64> %i.cj, <i64 0, i64 32>
  %i.cl = trunc <2 x i64> %i.ck to <2 x i32>
  %i.cm = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cl, <2 x i32> %i.ch) ; 3 uses
  %i.cn = extractelement <2 x i32> %i.cf, i64 1   ; 2 uses
  %i.co = extractelement <2 x i32> %i.cm, i64 1
  %i.cp = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 %i.co)
  %i.cq = icmp sge <2 x i32> %i.cf, %i.cm         ; 2 uses
  %7 = extractelement <2 x i1> %i.cq, i64 0
  %8 = extractelement <2 x i1> %i.cq, i64 1
  %.not = select i1 %7, i1 true, i1 %8
  br i1 %.not, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i
  %i.cr = extractelement <2 x i32> %i.cf, i64 0   ; 3 uses
  %.sroa.09.0.insert.insert.i.i65 = bitcast <2 x i32> %i.cf to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 792
  %.sroa.0123.0.vec.extract136 = extractelement <2 x float> %.sroa.0123.0, i64 0
  %.sroa.0123.4.vec.extract141 = extractelement <2 x float> %.sroa.0123.0, i64 1
  %.sroa.098.0.insert.ext104 = zext i32 %i.cr to i64
  %i.cw = extractelement <2 x i32> %i.cm, i64 0
  br label %bb.c

_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit:         ; preds = %_ZN4pbrt16Bounds2iIteratorppEv.exit, %.lr.ph.i.i
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4pbrt16Bounds2iIteratorppEv.exit
  %.sroa.098.4.extract.trunc160 = phi i32 [ %i.cn, %.lr.ph ], [ %.sroa.098.4.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %.sroa.098.0.extract.trunc159 = phi i32 [ %i.cr, %.lr.ph ], [ %.sroa.098.0.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ] ; 2 uses
  %.sroa.098.0158 = phi i64 [ %.sroa.09.0.insert.insert.i.i65, %.lr.ph ], [ %.sroa.098.1, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.cx = phi <2 x i32> [ %i.cf, %.lr.ph ], [ %i.fu, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.cy = sitofp <2 x i32> %i.cx to <2 x float>
  %i.cz = fsub <2 x float> %1, %i.cy
  %i.da = fadd <2 x float> %i.cz, splat (float -5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x float> %i.da, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.db = load i64, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %i.dc = and i64 %i.db, 144115188075855871
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = lshr i64 %i.db, 57
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = add nsw i32 %i.df, -1
  %i.dh = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_6Filter8EvaluateENS_6Point2IfEEEUlT_E_fNS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.dd, i32 noundef %i.dg) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.di = fcmp une float %i.dh, 0.000000e+00
  br i1 %i.di, label %_ZN4pbrt3RGBixEi.exit, label %_ZN4pbrt16Bounds2iIteratorppEv.exit

_ZN4pbrt3RGBixEi.exit:                            ; preds = %bb.c
  %i.dj = load i32, ptr %i.cs, align 8, !tbaa !107 ; 2 uses
  %i.dk = sub i32 %.sroa.098.0.extract.trunc159, %i.dj
  %i.dl = load i32, ptr %i.ct, align 4, !tbaa !109
  %i.dm = sub nsw i32 %.sroa.098.4.extract.trunc160, %i.dl
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !156
  %i.do = load i32, ptr %i.cv, align 8, !tbaa !107
  %i.dp = sub nsw i32 %i.do, %i.dj
  %i.dq = mul nsw i32 %i.dp, %i.dm
  %i.dr = add nsw i32 %i.dk, %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [192 x i8], ptr %i.dn, i64 %i.ds ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40 ; 3 uses
  %i.dv = fmul float %i.dh, %.sroa.0123.0.vec.extract136
  %i.dw = fpext float %i.dv to double             ; 2 uses
  %i.dx = load atomic i64, ptr %i.du seq_cst, align 8 ; 2 uses
  %i.dy = bitcast i64 %i.dx to double
  %i.dz = fadd double %i.dw, %i.dy
  %i.ea = bitcast double %i.dz to i64
  %i.eb = cmpxchg weak ptr %i.du, i64 %i.dx, i64 %i.ea seq_cst seq_cst, align 8 ; 2 uses
  %i.ec = extractvalue { i64, i1 } %i.eb, 1
  br i1 %i.ec, label %_ZN4pbrt3RGBixEi.exit.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i: ; preds = %_ZN4pbrt3RGBixEi.exit, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i
  %i.ed = phi { i64, i1 } [ %i.ei, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i ], [ %i.eb, %_ZN4pbrt3RGBixEi.exit ]
  %i.ee = extractvalue { i64, i1 } %i.ed, 0       ; 2 uses
  %i.ef = bitcast i64 %i.ee to double
  %i.eg = fadd double %i.dw, %i.ef
  %i.eh = bitcast double %i.eg to i64
  %i.ei = cmpxchg weak ptr %i.du, i64 %i.ee, i64 %i.eh seq_cst seq_cst, align 8 ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 1
  br i1 %i.ej, label %_ZN4pbrt3RGBixEi.exit.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, !llvm.loop !2

_ZN4pbrt3RGBixEi.exit.1:                          ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, %_ZN4pbrt3RGBixEi.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dt, i64 48 ; 3 uses
  %i.el = fmul float %i.dh, %.sroa.0123.4.vec.extract141
  %i.em = fpext float %i.el to double             ; 2 uses
  %i.en = load atomic i64, ptr %i.ek seq_cst, align 8 ; 2 uses
  %i.eo = bitcast i64 %i.en to double
  %i.ep = fadd double %i.em, %i.eo
  %i.eq = bitcast double %i.ep to i64
  %i.er = cmpxchg weak ptr %i.ek, i64 %i.en, i64 %i.eq seq_cst seq_cst, align 8 ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 1
  br i1 %i.es, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1: ; preds = %_ZN4pbrt3RGBixEi.exit.1, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1
  %i.et = phi { i64, i1 } [ %i.ey, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1 ], [ %i.er, %_ZN4pbrt3RGBixEi.exit.1 ]
  %i.eu = extractvalue { i64, i1 } %i.et, 0       ; 2 uses
  %i.ev = bitcast i64 %i.eu to double
  %i.ew = fadd double %i.em, %i.ev
  %i.ex = bitcast double %i.ew to i64
  %i.ey = cmpxchg weak ptr %i.ek, i64 %i.eu, i64 %i.ex seq_cst seq_cst, align 8 ; 2 uses
  %i.ez = extractvalue { i64, i1 } %i.ey, 1
  br i1 %i.ez, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1, !llvm.loop !2

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1, %_ZN4pbrt3RGBixEi.exit.1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dt, i64 56 ; 3 uses
  %i.fb = fmul float %i.dh, %.sroa.11.0
  %i.fc = fpext float %i.fb to double             ; 2 uses
  %i.fd = load atomic i64, ptr %i.fa seq_cst, align 8 ; 2 uses
  %i.fe = bitcast i64 %i.fd to double
  %i.ff = fadd double %i.fc, %i.fe
  %i.fg = bitcast double %i.ff to i64
  %i.fh = cmpxchg weak ptr %i.fa, i64 %i.fd, i64 %i.fg seq_cst seq_cst, align 8 ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 1
  br i1 %i.fi, label %_ZN4pbrt16Bounds2iIteratorppEv.exit, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2
  %i.fj = phi { i64, i1 } [ %i.fo, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2 ], [ %i.fh, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.fk = extractvalue { i64, i1 } %i.fj, 0       ; 2 uses
  %i.fl = bitcast i64 %i.fk to double
  %i.fm = fadd double %i.fc, %i.fl
  %i.fn = bitcast double %i.fm to i64
  %i.fo = cmpxchg weak ptr %i.fa, i64 %i.fk, i64 %i.fn seq_cst seq_cst, align 8 ; 2 uses
  %i.fp = extractvalue { i64, i1 } %i.fo, 1
  br i1 %i.fp, label %_ZN4pbrt16Bounds2iIteratorppEv.exit, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2, !llvm.loop !2

_ZN4pbrt16Bounds2iIteratorppEv.exit:              ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2, %_ZN4pbrt3RGBixEi.exit.2, %bb.c
  %i.fq = add nsw i32 %.sroa.098.0.extract.trunc159, 1 ; 2 uses
  %.sroa.098.0.insert.ext = zext i32 %i.fq to i64
  %.sroa.098.0.insert.mask = and i64 %.sroa.098.0158, -4294967296 ; 2 uses
  %.sroa.098.0.insert.insert = or disjoint i64 %.sroa.098.0.insert.mask, %.sroa.098.0.insert.ext
  %i.fr = icmp eq i32 %i.fq, %i.cw
  %.sroa.098.4.insert.ext = add i64 %.sroa.098.0.insert.mask, 4294967296
  %.sroa.098.4.insert.insert = or disjoint i64 %.sroa.098.4.insert.ext, %.sroa.098.0.insert.ext104
  %.sroa.098.1 = select i1 %i.fr, i64 %.sroa.098.4.insert.insert, i64 %.sroa.098.0.insert.insert ; 4 uses
  %.sroa.098.0.extract.trunc = trunc i64 %.sroa.098.1 to i32 ; 2 uses
  %.not.i.i76 = icmp ne i32 %i.cr, %.sroa.098.0.extract.trunc
  %.sroa.098.4.extract.shift = lshr i64 %.sroa.098.1, 32
  %.sroa.098.4.extract.trunc = trunc nuw i64 %.sroa.098.4.extract.shift to i32 ; 2 uses
  %i.fs = icmp ne i32 %i.cp, %.sroa.098.4.extract.trunc
  %i.ft = select i1 %.not.i.i76, i1 true, i1 %i.fs
  %i.fu = bitcast i64 %.sroa.098.1 to <2 x i32>
  br i1 %i.ft, label %bb.c, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt11GBufferFilm10WriteImageENS_13ImageMetadataEf(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr nofree noundef align 8 dereferenceable(304) %1, float noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.pbrt::Image", align 8       ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN4pbrt11GBufferFilm8GetImageEPNS_13ImageMetadataEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Image") align 8 %4, ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull %1, float noundef %2)
  %i.b = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !110
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !29, !alias.scope !425
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !31, !alias.scope !425
  store i8 0, ptr %i.f, align 8, !tbaa !32, !alias.scope !425
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRNS_7Bounds2IiEEEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.59, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.e)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_7Bounds2IiEEEEES6_PKcDpOT_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !33, !alias.scope !425 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.f, align 8, !tbaa !32, !alias.scope !425
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #31
  br label %.body

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_7Bounds2IiEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !33
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str.54, i32 noundef 684, ptr noundef %i.m)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_7Bounds2IiEEEEES6_PKcDpOT_.exit.i
  %i.n = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %_ZN4pbrt3LogIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_7Bounds2IiEEEEEvNS_8LogLevelEPKciSD_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.f, align 8, !tbaa !32
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #31
  br label %_ZN4pbrt3LogIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_7Bounds2IiEEEEEvNS_8LogLevelEPKciSD_DpOT_.exit

bb.e:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_7Bounds2IiEEEEES6_PKcDpOT_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.e
  %i.u = load i64, ptr %i.f, align 8, !tbaa !32
end_hunk_2
begin_hunk_3_@_ZNK4pbrt12SpectralFilm11GetPixelRGBENS_6Point2IiEEf:_ZN4pbrt3RGBixEi.exit.2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.af = load atomic i64, ptr %i.ad seq_cst, align 8
  %i.ag = load <2 x float>, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ai = load atomic i64, ptr %i.ah seq_cst, align 8
  %i.aj = load float, ptr %i.ae, align 4, !tbaa !191
  %i.ak = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %i.al = insertelement <2 x i64> %i.ak, i64 %i.ai, i64 1
  %i.am = bitcast <2 x i64> %i.al to <2 x double>
  %i.an = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.ao, %i.am
  %i.aq = insertelement <2 x float> %i.ag, float %i.aj, i64 1
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = fdiv <2 x double> %i.ap, %i.ar
  %i.at = fpext <2 x float> %.sroa.0.0 to <2 x double>
  %i.au = fadd <2 x double> %i.as, %i.at
  %i.av = fptrunc <2 x double> %i.au to <2 x float> ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ax = load atomic i64, ptr %i.aw seq_cst, align 8
  %i.ay = load float, ptr %i.ae, align 4, !tbaa !191
  %i.az = bitcast i64 %i.ax to double
  %i.ba = fmul double %i.ac, %i.az
  %i.bb = fpext float %i.ay to double
  %i.bc = fdiv double %i.ba, %i.bb
  %i.bd = fpext float %.sroa.11.0 to double
  %i.be = fadd double %i.bc, %i.bd
  %i.bf = fptrunc double %i.be to float           ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bi = load <4 x float>, ptr %i.bg, align 8, !tbaa !55 ; 3 uses
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bk = load <4 x float>, ptr %i.bh, align 8    ; 2 uses
  %i.bl = shufflevector <4 x float> %i.bi, <4 x float> %i.bk, <2 x i32> <i32 1, i32 4>
  %i.bm = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = shufflevector <4 x float> %i.bi, <4 x float> %i.bk, <2 x i32> <i32 2, i32 5>
  %i.bp = fmul <2 x float> %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.br = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.br, %i.bj
  %i.bt = fadd <2 x float> %i.bs, zeroinitializer
  %i.bu = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fmul <2 x float> %i.bu, %i.bl
  %i.bw = fadd <2 x float> %i.bt, %i.bv
  %i.bx = fadd <2 x float> %i.bw, %i.bp
  %i.by = load <2 x float>, ptr %i.bq, align 8, !tbaa !55
  %i.bz = fmul <2 x float> %i.by, %i.av           ; 2 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 0
  %i.cb = fadd float %i.ca, 0.000000e+00
  %i.cc = extractelement <2 x float> %i.bz, i64 1
  %i.cd = fadd float %i.cc, %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !55
  %i.cg = fmul float %i.cf, %i.bf
  %i.ch = fadd float %i.cg, %i.cd
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.bx, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.ch, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt12SpectralFilm8AddSplatENS_6Point2IfEENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(180) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, ptr noundef nonnull align 4 dereferenceable(32) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %6 = alloca %class.anon.96, align 8             ; 4 uses
  %.fr = freeze <2 x float> %2                    ; 3 uses
  %.sroa.0204.0.vec.extract = extractelement <2 x float> %.fr, i64 0 ; 3 uses
  %.sroa.0204.4.vec.extract = extractelement <2 x float> %.fr, i64 1 ; 3 uses
  %or.cond.i = fcmp uno float %.sroa.0204.0.vec.extract, %.sroa.0204.4.vec.extract
  %.sroa.11.8.vec.extract = extractelement <2 x float> %3, i64 0 ; 3 uses
  %i.a = fcmp uno float %.sroa.11.8.vec.extract, 0.000000e+00
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.a
  %.sroa.11.12.vec.extract = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.b = fcmp uno float %.sroa.11.12.vec.extract, 0.000000e+00
  %or.cond17.i = select i1 %or.cond14.i, i1 true, i1 %i.b
  br i1 %or.cond17.i, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA13_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef 914, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(13) @.str.58) #32
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = load <4 x float>, ptr %i.e, align 4      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.h = load float, ptr %i.g, align 8, !tbaa !114 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.j = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.j, 0
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.j, 1 ; 2 uses
  %.sroa.8.12.vec.extract.i.i = extractelement <2 x float> %i.l, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.n = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.o = extractvalue { <2 x float>, <2 x float> } %i.n, 0
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.r = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.s = extractvalue { <2 x float>, <2 x float> } %i.r, 0
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.r, 1
  %i.u = fcmp une <4 x float> %i.f, zeroinitializer
  %i.v = shufflevector <2 x float> %.fr, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %i.w = fdiv <4 x float> %i.v, %i.f
  %i.x = select <4 x i1> %i.u, <4 x float> %i.w, <4 x float> zeroinitializer ; 5 uses
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.z = fmul <2 x float> %i.y, %i.k              ; 2 uses
  %i.aa = extractelement <4 x float> %i.x, i64 3
  %i.ab = fmul float %i.aa, %.sroa.8.12.vec.extract.i.i
  %i.ac = shufflevector <2 x float> %i.o, <2 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ad = fmul <4 x float> %i.x, %i.ac            ; 4 uses
  %i.ae = shufflevector <2 x float> %i.s, <2 x float> %i.t, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.af = fmul <4 x float> %i.x, %i.ae            ; 4 uses
  %shift = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.af, %shift
  %shift232 = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop233 = fadd <4 x float> %shift232, %foldExtExtBinop
  %shift235 = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop236 = fadd <4 x float> %shift235, %foldExtExtBinop233
  %i.ag = extractelement <4 x float> %foldExtExtBinop236, i64 0
  %i.ah = fmul float %i.ag, 2.500000e-01
  %shift238 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop239 = fadd <2 x float> %i.z, %shift238
  %i.ai = shufflevector <4 x float> %i.x, <4 x float> %i.ad, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.aj = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> %i.ad, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.al = fmul <2 x float> %i.ai, %i.ak
  %i.am = fadd <2 x float> %i.ai, %i.ak
  %i.an = shufflevector <2 x float> %i.al, <2 x float> %i.am, <2 x i32> <i32 0, i32 3>
  %i.ao = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ap = shufflevector <2 x float> %foldExtExtBinop239, <2 x float> %i.ao, <2 x i32> <i32 0, i32 3>
  %i.aq = fadd <2 x float> %i.ap, %i.an
  %i.ar = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.as = insertelement <2 x float> %i.ar, float %i.ab, i64 0
  %i.at = fadd <2 x float> %i.as, %i.aq
  %i.au = fmul <2 x float> %i.at, splat (float 2.500000e-01)
  %i.av = insertelement <2 x float> poison, float %i.h, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.aw, %i.au           ; 4 uses
  %i.ay = fmul float %i.h, %i.ah                  ; 4 uses
  %i.az = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.ba = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  %i.bb = fcmp olt float %i.az, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.az ; 2 uses
  %i.bd = fcmp olt float %i.bc, %i.ay
  %.sroa.speculated = select i1 %i.bd, float %i.ay, float %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bf = load float, ptr %i.be, align 4, !tbaa !188 ; 4 uses
  %i.bg = fcmp ogt float %.sroa.speculated, %i.bf ; 2 uses
  %i.bh = fdiv float %i.bf, %.sroa.speculated     ; 2 uses
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.ax, %i.bj
  %i.bl = fmul float %i.ay, %i.bh
  %.sroa.11.0 = select i1 %i.bg, float %i.bl, float %i.ay
  %.sroa.0161.0 = select i1 %i.bg, <2 x float> %i.bk, <2 x float> %i.ax ; 2 uses
  %i.bm = fcmp olt float %.sroa.0204.0.vec.extract, %.sroa.0204.4.vec.extract
  %.sroa.speculated.i = select i1 %i.bm, float %.sroa.0204.4.vec.extract, float %.sroa.0204.0.vec.extract ; 2 uses
  %i.bn = fcmp olt float %.sroa.speculated.i, %.sroa.11.8.vec.extract
  %.sroa.speculated.1.i = select i1 %i.bn, float %.sroa.11.8.vec.extract, float %.sroa.speculated.i ; 2 uses
  %i.bo = fcmp olt float %.sroa.speculated.1.i, %.sroa.11.12.vec.extract
  %.sroa.speculated.2.i = select i1 %i.bo, float %.sroa.11.12.vec.extract, float %.sroa.speculated.1.i ; 2 uses
  %i.bp = fcmp ogt float %.sroa.speculated.2.i, %i.bf
  %i.bq = fdiv float %i.bf, %.sroa.speculated.2.i
  %i.br = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = fmul <4 x float> %i.v, %i.bs
  %i.bu = select i1 %i.bp, <4 x float> %i.bt, <4 x float> %i.v
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !36
  %i.bx = and i64 %i.bw, 144115188075855871
  %i.by = inttoptr i64 %i.bx to ptr
  %.sroa.0.0.i.i.i = load <2 x float>, ptr %i.by, align 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = fadd <2 x float> %1, splat (float 5.000000e-01) ; 2 uses
  %i.cb = fsub <2 x float> %i.ca, %.sroa.0.0.i.i.i
  %i.cc = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.cb)
  %i.cd = fptosi <2 x float> %i.cc to <2 x i32>   ; 2 uses
  %i.ce = fadd <2 x float> %i.ca, %.sroa.0.0.i.i.i
  %i.cf = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ce)
  %i.cg = fptosi <2 x float> %i.cf to <2 x i32>
  %i.ch = add nsw <2 x i32> %i.cg, splat (i32 1)  ; 2 uses
  %i.ci = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ch, <2 x i32> %i.cd)
  %i.cj = load <1 x i64>, ptr %i.bz, align 8
  %i.ck = shufflevector <1 x i64> %i.cj, <1 x i64> poison, <2 x i32> zeroinitializer
  %i.cl = lshr <2 x i64> %i.ck, <i64 0, i64 32>
  %i.cm = trunc <2 x i64> %i.cl to <2 x i32>
  %i.cn = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ci, <2 x i32> %i.cm) ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cp = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cd, <2 x i32> %i.ch)
  %i.cq = load <1 x i64>, ptr %i.co, align 8
  %i.cr = shufflevector <1 x i64> %i.cq, <1 x i64> poison, <2 x i32> zeroinitializer
  %i.cs = lshr <2 x i64> %i.cr, <i64 0, i64 32>
  %i.ct = trunc <2 x i64> %i.cs to <2 x i32>
  %i.cu = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ct, <2 x i32> %i.cp) ; 3 uses
  %i.cv = extractelement <2 x i32> %i.cn, i64 1   ; 2 uses
  %i.cw = extractelement <2 x i32> %i.cu, i64 1
  %i.cx = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.cw)
  %i.cy = icmp sge <2 x i32> %i.cn, %i.cu         ; 2 uses
  %7 = extractelement <2 x i1> %i.cy, i64 0
  %8 = extractelement <2 x i1> %i.cy, i64 1
  %.not = select i1 %7, i1 true, i1 %8
  br i1 %.not, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i
  %i.cz = load <4 x float>, ptr %i.e, align 4     ; 2 uses
  %i.da = fcmp une <4 x float> %i.cz, zeroinitializer
  %i.db = fdiv <4 x float> %i.bu, %i.cz
  %i.dc = fmul <4 x float> %i.db, splat (float 2.500000e-01)
  %i.dd = select <4 x i1> %i.da, <4 x float> %i.dc, <4 x float> zeroinitializer ; 4 uses
  %i.de = extractelement <2 x i32> %i.cn, i64 0   ; 3 uses
  %.sroa.09.0.insert.insert.i.i97 = bitcast <2 x i32> %i.cn to i64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.0161.0.vec.extract174 = extractelement <2 x float> %.sroa.0161.0, i64 0
  %.sroa.0161.4.vec.extract179 = extractelement <2 x float> %.sroa.0161.0, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.0134.0.insert.ext140 = zext i32 %i.de to i64
  %i.dp = extractelement <2 x i32> %i.cu, i64 0
  %i.dq = extractelement <4 x float> %i.dd, i64 0
  %i.dr = extractelement <4 x float> %i.dd, i64 1
  %i.ds = extractelement <4 x float> %i.dd, i64 2
  %i.dt = extractelement <4 x float> %i.dd, i64 3
  br label %bb.c

_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit:         ; preds = %_ZN4pbrt16Bounds2iIteratorppEv.exit, %.lr.ph.i.i
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4pbrt16Bounds2iIteratorppEv.exit
  %.sroa.0134.4.extract.trunc195 = phi i32 [ %i.cv, %.lr.ph ], [ %.sroa.0134.4.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %.sroa.0134.0.extract.trunc194 = phi i32 [ %i.de, %.lr.ph ], [ %.sroa.0134.0.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ] ; 2 uses
  %.sroa.0134.0193 = phi i64 [ %.sroa.09.0.insert.insert.i.i97, %.lr.ph ], [ %.sroa.0134.1, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.du = phi <2 x i32> [ %i.cn, %.lr.ph ], [ %i.li, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.dv = sitofp <2 x i32> %i.du to <2 x float>
  %i.dw = fsub <2 x float> %1, %i.dv
  %i.dx = fadd <2 x float> %i.dw, splat (float -5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x float> %i.dx, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.dy = load i64, ptr %i.bv, align 8, !tbaa !36 ; 2 uses
  %i.dz = and i64 %i.dy, 144115188075855871
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = lshr i64 %i.dy, 57
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, -1
  %i.ee = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_6Filter8EvaluateENS_6Point2IfEEEUlT_E_fNS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ea, i32 noundef %i.ed) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ef = fcmp une float %i.ee, 0.000000e+00
  br i1 %i.ef, label %_ZN4pbrt3RGBixEi.exit, label %_ZN4pbrt16Bounds2iIteratorppEv.exit

_ZN4pbrt3RGBixEi.exit:                            ; preds = %bb.c
  %i.eg = load i32, ptr %i.df, align 8, !tbaa !107 ; 2 uses
  %i.eh = sub i32 %.sroa.0134.0.extract.trunc194, %i.eg
  %i.ei = load i32, ptr %i.dg, align 4, !tbaa !109
  %i.ej = sub nsw i32 %.sroa.0134.4.extract.trunc195, %i.ei
  %i.ek = load ptr, ptr %i.dh, align 8, !tbaa !190
  %i.el = load i32, ptr %i.di, align 8, !tbaa !107
  %i.em = sub nsw i32 %i.el, %i.eg
  %i.en = mul nsw i32 %i.em, %i.ej
  %i.eo = add nsw i32 %i.eh, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [80 x i8], ptr %i.ek, i64 %i.ep ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 3 uses
  %i.es = fmul float %i.ee, %.sroa.0161.0.vec.extract174
  %i.et = fpext float %i.es to double             ; 2 uses
  %i.eu = load atomic i64, ptr %i.er seq_cst, align 8 ; 2 uses
  %i.ev = bitcast i64 %i.eu to double
  %i.ew = fadd double %i.et, %i.ev
  %i.ex = bitcast double %i.ew to i64
  %i.ey = cmpxchg weak ptr %i.er, i64 %i.eu, i64 %i.ex seq_cst seq_cst, align 8 ; 2 uses
  %i.ez = extractvalue { i64, i1 } %i.ey, 1
  br i1 %i.ez, label %_ZN4pbrt3RGBixEi.exit.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i: ; preds = %_ZN4pbrt3RGBixEi.exit, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i
  %i.fa = phi { i64, i1 } [ %i.ff, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i ], [ %i.ey, %_ZN4pbrt3RGBixEi.exit ]
  %i.fb = extractvalue { i64, i1 } %i.fa, 0       ; 2 uses
  %i.fc = bitcast i64 %i.fb to double
  %i.fd = fadd double %i.et, %i.fc
  %i.fe = bitcast double %i.fd to i64
  %i.ff = cmpxchg weak ptr %i.er, i64 %i.fb, i64 %i.fe seq_cst seq_cst, align 8 ; 2 uses
  %i.fg = extractvalue { i64, i1 } %i.ff, 1
  br i1 %i.fg, label %_ZN4pbrt3RGBixEi.exit.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, !llvm.loop !2

_ZN4pbrt3RGBixEi.exit.1:                          ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, %_ZN4pbrt3RGBixEi.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 40 ; 3 uses
  %i.fi = fmul float %i.ee, %.sroa.0161.4.vec.extract179
  %i.fj = fpext float %i.fi to double             ; 2 uses
  %i.fk = load atomic i64, ptr %i.fh seq_cst, align 8 ; 2 uses
  %i.fl = bitcast i64 %i.fk to double
  %i.fm = fadd double %i.fj, %i.fl
  %i.fn = bitcast double %i.fm to i64
  %i.fo = cmpxchg weak ptr %i.fh, i64 %i.fk, i64 %i.fn seq_cst seq_cst, align 8 ; 2 uses
  %i.fp = extractvalue { i64, i1 } %i.fo, 1
  br i1 %i.fp, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1: ; preds = %_ZN4pbrt3RGBixEi.exit.1, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1
  %i.fq = phi { i64, i1 } [ %i.fv, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1 ], [ %i.fo, %_ZN4pbrt3RGBixEi.exit.1 ]
  %i.fr = extractvalue { i64, i1 } %i.fq, 0       ; 2 uses
  %i.fs = bitcast i64 %i.fr to double
  %i.ft = fadd double %i.fj, %i.fs
  %i.fu = bitcast double %i.ft to i64
  %i.fv = cmpxchg weak ptr %i.fh, i64 %i.fr, i64 %i.fu seq_cst seq_cst, align 8 ; 2 uses
  %i.fw = extractvalue { i64, i1 } %i.fv, 1
  br i1 %i.fw, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1, !llvm.loop !2

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1, %_ZN4pbrt3RGBixEi.exit.1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eq, i64 48 ; 3 uses
  %i.fy = fmul float %i.ee, %.sroa.11.0
  %i.fz = fpext float %i.fy to double             ; 2 uses
  %i.ga = load atomic i64, ptr %i.fx seq_cst, align 8 ; 2 uses
  %i.gb = bitcast i64 %i.ga to double
  %i.gc = fadd double %i.fz, %i.gb
  %i.gd = bitcast double %i.gc to i64
  %i.ge = cmpxchg weak ptr %i.fx, i64 %i.ga, i64 %i.gd seq_cst seq_cst, align 8 ; 2 uses
  %i.gf = extractvalue { i64, i1 } %i.ge, 1
  br i1 %i.gf, label %_ZN4pbrt12AtomicDouble3AddEd.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2
  %i.gg = phi { i64, i1 } [ %i.gl, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2 ], [ %i.ge, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.gh = extractvalue { i64, i1 } %i.gg, 0       ; 2 uses
  %i.gi = bitcast i64 %i.gh to double
  %i.gj = fadd double %i.fz, %i.gi
  %i.gk = bitcast double %i.gj to i64
  %i.gl = cmpxchg weak ptr %i.fx, i64 %i.gh, i64 %i.gk seq_cst seq_cst, align 8 ; 2 uses
  %i.gm = extractvalue { i64, i1 } %i.gl, 1
  br i1 %i.gm, label %_ZN4pbrt12AtomicDouble3AddEd.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2, !llvm.loop !2

_ZN4pbrt12AtomicDouble3AddEd.exit.2:              ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2, %_ZN4pbrt3RGBixEi.exit.2
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eq, i64 72 ; 4 uses
  %i.go = load float, ptr %4, align 4, !tbaa !55
  %i.gp = load i32, ptr %i.dj, align 8, !tbaa !187 ; 2 uses
  %i.gq = sitofp i32 %i.gp to float
  %i.gr = load float, ptr %i.dk, align 8, !tbaa !185 ; 2 uses
  %i.gs = fsub float %i.go, %i.gr
  %i.gt = fmul float %i.gs, %i.gq
  %i.gu = load float, ptr %i.dl, align 4, !tbaa !186
  %i.gv = fsub float %i.gu, %i.gr
  %i.gw = fdiv float %i.gt, %i.gv
  %i.gx = fptosi float %i.gw to i32               ; 2 uses
  %i.gy = add nsw i32 %i.gp, -1
  %i.gz = icmp slt i32 %i.gx, 0
  %..i.i = call i32 @llvm.smin.i32(i32 %i.gx, i32 %i.gy)
  %.0.i.i = select i1 %i.gz, i32 0, i32 %..i.i
  %i.ha = load ptr, ptr %i.gn, align 8, !tbaa !197
  %i.hb = sext i32 %.0.i.i to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.hb ; 3 uses
  %i.hd = fmul float %i.ee, %i.dq
  %i.he = fpext float %i.hd to double             ; 2 uses
  %i.hf = load atomic i64, ptr %i.hc seq_cst, align 8 ; 2 uses
  %i.hg = bitcast i64 %i.hf to double
  %i.hh = fadd double %i.he, %i.hg
  %i.hi = bitcast double %i.hh to i64
  %i.hj = cmpxchg weak ptr %i.hc, i64 %i.hf, i64 %i.hi seq_cst seq_cst, align 8 ; 2 uses
  %i.hk = extractvalue { i64, i1 } %i.hj, 1
  br i1 %i.hk, label %_ZN4pbrt12AtomicDouble3AddEd.exit125, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124: ; preds = %_ZN4pbrt12AtomicDouble3AddEd.exit.2, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124
  %i.hl = phi { i64, i1 } [ %i.hq, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124 ], [ %i.hj, %_ZN4pbrt12AtomicDouble3AddEd.exit.2 ]
  %i.hm = extractvalue { i64, i1 } %i.hl, 0       ; 2 uses
  %i.hn = bitcast i64 %i.hm to double
  %i.ho = fadd double %i.he, %i.hn
  %i.hp = bitcast double %i.ho to i64
  %i.hq = cmpxchg weak ptr %i.hc, i64 %i.hm, i64 %i.hp seq_cst seq_cst, align 8 ; 2 uses
  %i.hr = extractvalue { i64, i1 } %i.hq, 1
  br i1 %i.hr, label %_ZN4pbrt12AtomicDouble3AddEd.exit125, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124, !llvm.loop !2

_ZN4pbrt12AtomicDouble3AddEd.exit125:             ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124, %_ZN4pbrt12AtomicDouble3AddEd.exit.2
  %i.hs = load float, ptr %i.dm, align 4, !tbaa !55
  %i.ht = load i32, ptr %i.dj, align 8, !tbaa !187 ; 2 uses
  %i.hu = sitofp i32 %i.ht to float
  %i.hv = load float, ptr %i.dk, align 8, !tbaa !185 ; 2 uses
  %i.hw = fsub float %i.hs, %i.hv
  %i.hx = fmul float %i.hw, %i.hu
  %i.hy = load float, ptr %i.dl, align 4, !tbaa !186
  %i.hz = fsub float %i.hy, %i.hv
  %i.ia = fdiv float %i.hx, %i.hz
  %i.ib = fptosi float %i.ia to i32               ; 2 uses
  %i.ic = add nsw i32 %i.ht, -1
  %i.id = icmp slt i32 %i.ib, 0
  %..i.i.1 = call i32 @llvm.smin.i32(i32 %i.ib, i32 %i.ic)
  %.0.i.i.1 = select i1 %i.id, i32 0, i32 %..i.i.1
  %i.ie = load ptr, ptr %i.gn, align 8, !tbaa !197
  %i.if = sext i32 %.0.i.i.1 to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.if ; 3 uses
  %i.ih = fmul float %i.ee, %i.dr
  %i.ii = fpext float %i.ih to double             ; 2 uses
  %i.ij = load atomic i64, ptr %i.ig seq_cst, align 8 ; 2 uses
  %i.ik = bitcast i64 %i.ij to double
  %i.il = fadd double %i.ii, %i.ik
  %i.im = bitcast double %i.il to i64
  %i.in = cmpxchg weak ptr %i.ig, i64 %i.ij, i64 %i.im seq_cst seq_cst, align 8 ; 2 uses
  %i.io = extractvalue { i64, i1 } %i.in, 1
  br i1 %i.io, label %_ZN4pbrt12AtomicDouble3AddEd.exit125.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124.1

end_hunk_3
