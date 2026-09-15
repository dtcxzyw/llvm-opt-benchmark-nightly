Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 178
begin_hunk_0_@_ZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbi:.from.
.split471:                                        ; preds = %.thread1239, %bb.t
  %i.dn = phi { ptr, i32 } [ %i.dk, %.thread1239 ], [ %i.dh, %bb.t ] ; 2 uses
  %.01301241 = phi i1 [ false, %.thread1239 ], [ true, %bb.t ]
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !80
  %i.dq = load i64, ptr %13, align 8
  %i.dr = and i64 %i.dq, -2
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dr) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  br i1 %.01301241, label %.from.1004, label %.from.1012

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1911005: ; preds = %.thread1239
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  br label %.from.1012

.from.1004.sink.split:                            ; preds = %bb.t, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit191.thread
  %.pn470.ph = phi { ptr, i32 } [ %i.dg, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit191.thread ], [ %i.dh, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  br label %.from.1004

.from.1004:                                       ; preds = %.from.1004.sink.split, %.split471
  %.pn470 = phi { ptr, i32 } [ %i.dn, %.split471 ], [ %.pn470.ph, %.from.1004.sink.split ]
  call void @__cxa_free_exception(ptr %i.dc) #44
  br label %.from.1012

.loopexit1416:                                    ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc192 unwind label %.from.1001

.noexc192:                                        ; preds = %.loopexit1416
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !117
  invoke void @_ZN4tlog6Logger3logIJRN7nanogui5ArrayIfLm3EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(56) %i.dt, i32 noundef 4, ptr nonnull @.str.42, i64 18, ptr noundef nonnull align 4 dereferenceable(12) %.reload.addr1131)
          to label %_ZN4tlog5debugIJRN7nanogui5ArrayIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS8_.exit unwind label %.from.1001

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.0132528 = phi i64 [ %i.ej, %.preheader ], [ %.0132528.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.0132528
  %i.dv = load float, ptr %i.du, align 4, !tbaa !79
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.reload.addr1131, i64 %.0132528
  store float %i.dv, ptr %i.dw, align 4, !tbaa !79
  %i.dx = add nuw nsw i64 %.0132528, 1            ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dx
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !79
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.reload.addr1131, i64 %i.dx
  store float %i.dz, ptr %i.ea, align 4, !tbaa !79
  %i.eb = add nuw nsw i64 %.0132528, 2            ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !79
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.reload.addr1131, i64 %i.eb
  store float %i.ed, ptr %i.ee, align 4, !tbaa !79
  %i.ef = add nuw nsw i64 %.0132528, 3            ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !79
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.reload.addr1131, i64 %i.ef
  store float %i.eh, ptr %i.ei, align 4, !tbaa !79
  %i.ej = add nuw nsw i64 %.0132528, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ej, %i.cm
  br i1 %exitcond.not.3, label %.loopexit1416, label %.preheader, !llvm.loop !1189

_ZN4tlog5debugIJRN7nanogui5ArrayIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS8_.exit: ; preds = %.noexc192, %bb.o
  store <8 x i16> <i16 -13006, i16 -13005, i16 -13007, i16 -14812, i16 -14814, i16 -14757, i16 -14813, i16 -14815>, ptr %.reload.addr1129, align 4, !tbaa !82
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 484
  store i16 -14758, ptr %i.ek, align 4, !tbaa !1228
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 220
  store i32 1, ptr %i.el, align 4, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #44
  invoke void @_ZN3tev12rec709ChromaEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array.86") align 4 %15)
          to label %bb.u unwind label %.from.656

bb.u:                                             ; preds = %_ZN4tlog5debugIJRN7nanogui5ArrayIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS8_.exit
  invoke void @_ZN3tev17xyzToChromaMatrixERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEE(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %14, ptr noundef nonnull align 4 dereferenceable(32) %15)
          to label %bb.v unwind label %.from.656

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #44
  %i.em = invoke <2 x float> @_ZN3tev8whiteD50Ev()
          to label %bb.w unwind label %.from.653

bb.w:                                             ; preds = %bb.v
  %i.en = invoke <2 x float> @_ZN3tev8whiteD65Ev()
          to label %bb.x unwind label %.from.653

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN3tev18adaptWhiteBradfordEN7nanogui5ArrayIfLm2EEES2_(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %16, <2 x float> %i.em, <2 x float> %i.en)
          to label %bb.y unwind label %.from.653

bb.y:                                             ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 28
  %i.et = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.eu = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.ew = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %16, i64 28
  %i.ey = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %.sroa.5430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.7432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.fa = load <3 x float>, ptr %14, align 16, !tbaa !79, !noalias !1229 ; 3 uses
  %i.fb = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fc = load <4 x float>, ptr %i.eo, align 4
  %i.fd = load <3 x float>, ptr %i.ep, align 4, !tbaa !79, !noalias !1229 ; 3 uses
  %i.fe = shufflevector <3 x float> %i.fd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ff = load <4 x float>, ptr %i.eq, align 16
  %i.fg = load <3 x float>, ptr %i.er, align 8, !tbaa !79, !noalias !1229 ; 3 uses
  %i.fh = shufflevector <3 x float> %i.fg, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fi = load float, ptr %i.es, align 4, !tbaa !79, !noalias !1229
  %i.fj = load <4 x float>, ptr %16, align 16, !tbaa !79, !noalias !1229 ; 3 uses
  %i.fk = load float, ptr %i.et, align 4, !tbaa !79, !noalias !1229
  %i.fl = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.fl, <4 x float> zeroinitializer)
  %i.fn = extractelement <3 x float> %i.fa, i64 2
  %i.fo = load <2 x float>, ptr %i.eu, align 16, !tbaa !79, !noalias !1229 ; 2 uses
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fq = shufflevector <4 x float> %i.fj, <4 x float> %i.fp, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.fq, <4 x float> %i.fm)
  %i.fs = extractelement <3 x float> %i.fd, i64 2
  %i.ft = shufflevector <4 x float> %i.fj, <4 x float> %i.fp, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.fu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.ft, <4 x float> %i.fr)
  %i.fv = extractelement <3 x float> %i.fg, i64 2
  store <4 x float> %i.fu, ptr %i.ez, align 8
  %.sroa.8433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %.sroa.10435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.11436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.fw = load <4 x float>, ptr %i.ev, align 4, !tbaa !79, !noalias !1229 ; 3 uses
  %i.fx = load float, ptr %i.ey, align 16, !tbaa !79, !noalias !1229
  %i.fy = load float, ptr %i.ex, align 4, !tbaa !79, !noalias !1229
  %i.fz = load float, ptr %i.ew, align 8, !tbaa !79, !noalias !1229
  %i.ga = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.gb = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.ga, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gd = shufflevector <4 x float> %i.fw, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.ge = insertelement <2 x float> %i.gd, float %i.fk, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> %i.gf, <4 x float> zeroinitializer)
  %i.gh = call float @llvm.fmuladd.f32(float %i.fn, float %i.fz, float 0.000000e+00)
  %i.gi = shufflevector <3 x float> %i.fd, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.gj = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.gi, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gl = shufflevector <4 x float> %i.fw, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.gm = shufflevector <2 x float> %i.fo, <2 x float> %i.gl, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.gn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %i.gm, <4 x float> %i.gg)
  %i.go = call float @llvm.fmuladd.f32(float %i.fs, float %i.fy, float %i.gh)
  %i.gp = shufflevector <3 x float> %i.fg, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.gq = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.gs = shufflevector <4 x float> %i.gr, <4 x float> %i.gp, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gt = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.gu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.gt, <4 x float> %i.gn)
  %i.gv = call float @llvm.fmuladd.f32(float %i.fv, float %i.fx, float %i.go)
  store <4 x float> %i.gu, ptr %.sroa.8433.0..sroa_idx, align 8
  %.sroa.12437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store float %i.gv, ptr %.sroa.12437.0..sroa_idx, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #44
  invoke void @_ZN3tev14proPhotoChromaEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array.86") align 4 %17)
          to label %bb.z unwind label %.from.994

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN3tev17xyzToChromaMatrixERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEE(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %.reload.addr1114, ptr noundef nonnull align 4 dereferenceable(32) %17)
          to label %.from.659 unwind label %.from.994

.from.659:                                        ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #44
  %i.gw = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  %i.gx = getelementptr inbounds nuw i8, ptr %i.j, i64 372
  %i.gy = getelementptr inbounds nuw i8, ptr %i.j, i64 376
  %i.gz = getelementptr inbounds nuw i8, ptr %i.j, i64 380 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %i.hb = getelementptr inbounds nuw i8, ptr %i.j, i64 388
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 396 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  %i.hf = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.hg = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.hh = getelementptr inbounds nuw i8, ptr %i.j, i64 196
  %i.hi = getelementptr inbounds nuw i8, ptr %i.j, i64 200 ; 3 uses
  %.sroa.9139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  %.sroa.11142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 412
  %.sroa.15148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 420
  %.sroa.17151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 424
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  %.sroa.9139.0..sroa_idx140.i = getelementptr inbounds nuw i8, ptr %i.j, i64 336 ; 2 uses
  %.sroa.11142.0..sroa_idx143.i = getelementptr inbounds nuw i8, ptr %i.j, i64 340
  %.sroa.15148.0..sroa_idx149.i = getelementptr inbounds nuw i8, ptr %i.j, i64 348
  %.sroa.17151.0..sroa_idx152.i = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  %.sroa.21.0..sroa_idx157.i = getelementptr inbounds nuw i8, ptr %i.j, i64 360
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 44 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 10 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 52 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 14 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 5 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.j, i64 76 ; 2 uses
  %i.hk = load i16, ptr %.reload.addr1129, align 4, !tbaa !82
  %i.hl = getelementptr inbounds nuw i8, ptr %i.j, i64 470
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !82
  %i.hn = zext i16 %i.hm to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.j, i64 472
  %i.hp = load i16, ptr %i.ho, align 8, !tbaa !82
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.reload.addr1116, align 4, !tbaa !79, !noalias !1230
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gz, align 4, !tbaa !79, !noalias !1230
  store float 1.000000e+00, ptr %i.hd, align 4, !tbaa !79, !noalias !1230
  %i.hq = load ptr, ptr %.reload.addr1139, align 8, !tbaa !158, !noalias !1230
  %i.hr = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanIfEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %i.hq, i32 noundef range(i32 0, 65536) %i.hn)
          to label %.noexc194 unwind label %.body211.from..loopexit ; 2 uses

.from.656:                                        ; preds = %_ZN4tlog5debugIJRN7nanogui5ArrayIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS8_.exit, %bb.u
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.999

.from.653:                                        ; preds = %bb.v, %bb.w, %bb.x
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #44
  br label %.from.999

.from.999:                                        ; preds = %.from.656, %.from.653
  %.pn154 = phi { ptr, i32 } [ %i.ht, %.from.653 ], [ %i.hs, %.from.656 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  br label %.from.1012

.from.994:                                        ; preds = %bb.y, %bb.z
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #44
  br label %.from.1012

.noexc194:                                        ; preds = %.from.659
  %i.hv = extractvalue { ptr, i64 } %i.hr, 1      ; 2 uses
  %.not588 = icmp eq i64 %i.hv, 0
  br i1 %.not588, label %.thread591, label %bb.aa

bb.aa:                                            ; preds = %.noexc194.2, %.noexc194.1, %.noexc194
  %.lcssa1344 = phi i64 [ %i.hv, %.noexc194 ], [ %i.zc, %.noexc194.1 ], [ %i.zm, %.noexc194.2 ]
  %.0133529.lcssa1342.neg = phi i64 [ 3, %.noexc194 ], [ 2, %.noexc194.1 ], [ 1, %.noexc194.2 ]
  %.lcssa1340 = phi i16 [ %i.hk, %.noexc194 ], [ %i.yu, %.noexc194.1 ], [ %i.ze, %.noexc194.2 ]
  %.lcssa1337 = phi i16 [ %i.hp, %.noexc194 ], [ %i.yz, %.noexc194.1 ], [ %i.zj, %.noexc194.2 ]
  %.lcssa = phi { ptr, i64 } [ %i.hr, %.noexc194 ], [ %i.zb, %.noexc194.1 ], [ %i.zl, %.noexc194.2 ]
  %i.hw = zext i16 %.lcssa1340 to i32
  %i.hx = zext i16 %.lcssa1337 to i32
  %i.hy = extractvalue { ptr, i64 } %.lcssa, 0
  %i.hz = load i64, ptr %.reload.addr1138, align 8, !tbaa !87, !noalias !1230 ; 8 uses
  %i.ia = mul i64 %i.hz, %i.hz
  %.not.i = icmp eq i64 %.lcssa1344, %i.ia
  br i1 %.not.i, label %.preheader185.i, label %bb.ab

.preheader185.i:                                  ; preds = %bb.aa
  %.not193.i = icmp eq i64 %i.hz, 0
  br i1 %.not193.i, label %._crit_edge.i, label %.from..preheader184.i.preheader

.from..preheader184.i.preheader:                  ; preds = %.preheader185.i
  %xtraiter1420 = and i64 %i.hz, 3                ; 3 uses
  %i.ib = icmp ult i64 %i.hz, 4
  %unroll_iter = and i64 %i.hz, -4
  %lcmp.mod1421.not = icmp eq i64 %xtraiter1420, 0
  %lcmp.mod1422 = icmp ne i64 %xtraiter1420, 0
  br label %.from..preheader184.i

bb.ab:                                            ; preds = %bb.aa
  %i.ic = call ptr @__cxa_allocate_exception(i64 16) #44, !noalias !1230 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44, !noalias !1230
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull @.str.216)
          to label %bb.ac unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread.i, !noalias !1230

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.ad unwind label %bb.ae, !noalias !1230

bb.ad:                                            ; preds = %bb.ac
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.ic, align 8, !tbaa !89, !noalias !1230
  invoke void @__cxa_throw(ptr nonnull %i.ic, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #45
          to label %bb.ax unwind label %.thread1245, !noalias !1230

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread.i: ; preds = %bb.ab
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.744.sink.split

bb.ae:                                            ; preds = %bb.ac
  %i.ie = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.if = load i8, ptr %7, align 8, !noalias !1230
  %i.ig = trunc i8 %i.if to i1
  br i1 %i.ig, label %.split.i, label %.from.744.sink.split

.thread1245:                                      ; preds = %bb.ad
  %i.ih = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ii = load i8, ptr %7, align 8, !noalias !1230
  %i.ij = trunc i8 %i.ii to i1
  br i1 %i.ij, label %.split.i, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i745

.split.i:                                         ; preds = %.thread1245, %bb.ae
  %i.ik = phi { ptr, i32 } [ %i.ih, %.thread1245 ], [ %i.ie, %bb.ae ] ; 2 uses
  %.047.i1247 = phi i1 [ false, %.thread1245 ], [ true, %bb.ae ]
  %i.il = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !80, !noalias !1230
  %i.in = load i64, ptr %7, align 8, !noalias !1230
  %i.io = and i64 %i.in, -2
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.io) #49, !noalias !1230
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44, !noalias !1230
  br i1 %.047.i1247, label %.from.744, label %.from.1012

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i745: ; preds = %.thread1245
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44, !noalias !1230
  br label %.from.1012

.from.744.sink.split:                             ; preds = %bb.ae, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread.i
  %.pn168.i.ph = phi { ptr, i32 } [ %i.id, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread.i ], [ %i.ie, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44, !noalias !1230
  br label %.from.744

.from.744:                                        ; preds = %.from.744.sink.split, %.split.i
  %.pn168.i = phi { ptr, i32 } [ %i.ik, %.split.i ], [ %.pn168.i.ph, %.from.744.sink.split ]
  call void @__cxa_free_exception(ptr %i.ic) #44, !noalias !1230
  br label %.from.1012

.from..preheader184.i:                            ; preds = %.from..preheader184.i.preheader, %.preheader184.i.from.
  %.049187.i = phi i64 [ %i.iu, %.preheader184.i.from. ], [ 0, %.from..preheader184.i.preheader ] ; 3 uses
  %i.ip = mul i64 %.049187.i, %i.hz
  %i.iq = getelementptr [4 x i8], ptr %i.hy, i64 %i.ip ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.reload.addr1116, i64 %.049187.i ; 5 uses
  br i1 %i.ib, label %.from.671.epil.preheader, label %.from.671

.preheader184.i.from..unr-lcssa:                  ; preds = %.from.671
  br i1 %lcmp.mod1421.not, label %.preheader184.i.from., label %.from.671.epil.preheader

.from.671.epil.preheader:                         ; preds = %.preheader184.i.from..unr-lcssa, %.from..preheader184.i
  %.053186.i.epil.init = phi i64 [ 0, %.from..preheader184.i ], [ %i.jg, %.preheader184.i.from..unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1422)
  br label %.from.671.epil

.from.671.epil:                                   ; preds = %.from.671.epil, %.from.671.epil.preheader
  %.053186.i.epil = phi i64 [ %.053186.i.epil.init, %.from.671.epil.preheader ], [ %i.it, %.from.671.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.from.671.epil.preheader ], [ %epil.iter.next, %.from.671.epil ]
  %i.ir = getelementptr [4 x i8], ptr %i.iq, i64 %.053186.i.epil
  %i.is = load float, ptr %i.ir, align 4, !tbaa !79, !noalias !1230
  %gep.i.epil = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %.053186.i.epil
  store float %i.is, ptr %gep.i.epil, align 4, !tbaa !79, !noalias !1230
  %i.it = add nuw i64 %.053186.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1420
  br i1 %epil.iter.cmp.not, label %.preheader184.i.from., label %.from.671.epil, !llvm.loop !1194

.preheader184.i.from.:                            ; preds = %.from.671.epil, %.preheader184.i.from..unr-lcssa
  %i.iu = add nuw i64 %.049187.i, 1               ; 2 uses
  %exitcond195.not.i = icmp eq i64 %i.iu, %i.hz
  br i1 %exitcond195.not.i, label %._crit_edge.i, label %.from..preheader184.i, !llvm.loop !1195

.from.671:                                        ; preds = %.from..preheader184.i, %.from.671
  %.053186.i = phi i64 [ %i.jg, %.from.671 ], [ 0, %.from..preheader184.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.from.671 ], [ 0, %.from..preheader184.i ]
  %i.iv = getelementptr [4 x i8], ptr %i.iq, i64 %.053186.i
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !79, !noalias !1230
  %gep.i = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %.053186.i
  store float %i.iw, ptr %gep.i, align 4, !tbaa !79, !noalias !1230
  %i.ix = or disjoint i64 %.053186.i, 1           ; 2 uses
  %i.iy = getelementptr [4 x i8], ptr %i.iq, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !79, !noalias !1230
  %gep.i.1 = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %i.ix
  store float %i.iz, ptr %gep.i.1, align 4, !tbaa !79, !noalias !1230
  %i.ja = or disjoint i64 %.053186.i, 2           ; 2 uses
  %i.jb = getelementptr [4 x i8], ptr %i.iq, i64 %i.ja
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !79, !noalias !1230
  %gep.i.2 = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %i.ja
  store float %i.jc, ptr %gep.i.2, align 4, !tbaa !79, !noalias !1230
  %i.jd = or disjoint i64 %.053186.i, 3           ; 2 uses
  %i.je = getelementptr [4 x i8], ptr %i.iq, i64 %i.jd
  %i.jf = load float, ptr %i.je, align 4, !tbaa !79, !noalias !1230
  %gep.i.3 = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %i.jd
  store float %i.jf, ptr %gep.i.3, align 4, !tbaa !79, !noalias !1230
  %i.jg = add nuw i64 %.053186.i, 4               ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader184.i.from..unr-lcssa, label %.from.671, !llvm.loop !1196

._crit_edge.i:                                    ; preds = %.preheader184.i.from., %.preheader185.i
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc195 unwind label %.body211.from..loopexit.split-lp

.noexc195:                                        ; preds = %._crit_edge.i
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !117, !noalias !1230
  invoke void @_ZN4tlog6Logger3logIJRN7nanogui6MatrixIfLm3EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(56) %i.ji, i32 noundef 4, ptr nonnull @.str.217, i64 22, ptr noundef nonnull align 4 dereferenceable(36) %.reload.addr1116)
          to label %.noexc196 unwind label %.body211.from..loopexit.split-lp

.noexc196:                                        ; preds = %.noexc195
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.reload.addr1113, align 8, !tbaa !79, !noalias !1230
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hf, align 8, !tbaa !79, !noalias !1230
  store float 1.000000e+00, ptr %i.hg, align 8, !tbaa !79, !noalias !1230
end_hunk_0
begin_hunk_1_@_ZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbi:.from.
          to label %.noexc206 unwind label %.body211.from..loopexit.split-lp

.noexc206:                                        ; preds = %bb.av
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !117, !noalias !1230
  invoke void @_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIfLm2EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.tc, i32 noundef 4, ptr nonnull @.str.222, i64 47, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr1141)
          to label %.noexc207 unwind label %.body211.from..loopexit.split-lp

.noexc207:                                        ; preds = %.noexc206
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %.reload.addr1141, align 8, !tbaa !80, !noalias !1230
  %i.td = invoke <2 x float> @_ZN3tev8whiteD50Ev()
          to label %.noexc208 unwind label %.body211.from..loopexit.split-lp

.noexc208:                                        ; preds = %.noexc207
  invoke void @_ZN3tev18adaptWhiteBradfordEN7nanogui5ArrayIfLm2EEES2_(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %.reload.addr1115, <2 x float> %.sroa.01.0.copyload.i, <2 x float> %i.td)
          to label %.from..noexc209 unwind label %.body211.from..loopexit.split-lp

.from..noexc209:                                  ; preds = %.noexc208
  %.sroa.9139.0.copyload141.i = load float, ptr %.sroa.9139.0..sroa_idx140.i, align 8, !noalias !1230
  %.sroa.15148.0.copyload150.i = load float, ptr %.sroa.15148.0..sroa_idx149.i, align 4, !noalias !1230
  %i.te = load <2 x float>, ptr %.reload.addr1115, align 8, !noalias !1230
  %i.tf = load <2 x float>, ptr %.sroa.11142.0..sroa_idx143.i, align 4, !noalias !1230
  %i.tg = load <2 x float>, ptr %.sroa.17151.0..sroa_idx152.i, align 8, !noalias !1230
  %.sroa.21.0.copyload158.i = load float, ptr %.sroa.21.0..sroa_idx157.i, align 8, !tbaa !80, !noalias !1230
  br label %bb.ay

bb.aw:                                            ; preds = %.noexc205
  %i.th = load ptr, ptr %.reload.addr1139, align 8, !tbaa !158, !noalias !1230
  %i.ti = invoke i32 @_ZN3tev12tiffGetValueItEENSt3__18optionalIT_EEP4tiffj(ptr noundef %i.th, i32 noundef range(i32 0, 65536) %i.hx)
          to label %bb.ay unwind label %.body211.from..loopexit.split-lp ; 0 uses

.from..sink.split.i:                              ; preds = %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.thread.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.thread.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.i, %.split173.i, %.split177.i, %.split182.i
  %.sink.i = phi ptr [ %i.jr, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.i ], [ %i.qt, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i ], [ %i.sm, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i ], [ %i.jr, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.thread.i ], [ %i.jr, %.split173.i ], [ %i.qt, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread.i ], [ %i.qt, %.split177.i ], [ %i.sm, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.thread.i ], [ %i.sm, %.split182.i ]
  %.pn70.pn.pn.ph.i = phi { ptr, i32 } [ %i.jt, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.i ], [ %i.qv, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i ], [ %i.so, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i ], [ %i.js, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.thread.i ], [ %i.jz, %.split173.i ], [ %i.qu, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread.i ], [ %i.rb, %.split177.i ], [ %i.sn, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.thread.i ], [ %i.su, %.split182.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #44, !noalias !1230
  br label %.from.1012

bb.ax:                                            ; preds = %bb.at, %bb.an, %bb.ai, %bb.ad
  unreachable

bb.ay:                                            ; preds = %.from..noexc209, %.from..noexc204, %bb.aw
  %.sroa.9139.1.i = phi float [ %.sroa.9139.0.copyload.i, %.from..noexc204 ], [ %.sroa.9139.0.copyload141.i, %.from..noexc209 ], [ 0.000000e+00, %bb.aw ] ; 3 uses
  %.sroa.15148.1.i = phi float [ %.sroa.15148.0.copyload.i, %.from..noexc204 ], [ %.sroa.15148.0.copyload150.i, %.from..noexc209 ], [ 0.000000e+00, %bb.aw ] ; 3 uses
  %.sroa.21.1.i = phi float [ %.sroa.21.0.copyload.i, %.from..noexc204 ], [ %.sroa.21.0.copyload158.i, %.from..noexc209 ], [ 1.000000e+00, %bb.aw ] ; 3 uses
  %i.tj = phi <2 x float> [ %i.si, %.from..noexc204 ], [ %i.tg, %.from..noexc209 ], [ zeroinitializer, %bb.aw ] ; 3 uses
  %i.tk = phi <2 x float> [ %i.sh, %.from..noexc204 ], [ %i.tf, %.from..noexc209 ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.aw ] ; 3 uses
  %i.tl = phi <2 x float> [ %i.sg, %.from..noexc204 ], [ %i.te, %.from..noexc209 ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.aw ] ; 3 uses
  %i.tm = shufflevector <2 x float> %i.qm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> %i.tm, <2 x float> zeroinitializer)
  %i.to = extractelement <2 x float> %i.qm, i64 0
  %i.tp = call float @llvm.fmuladd.f32(float %.sroa.9139.1.i, float %i.to, float 0.000000e+00)
  %i.tq = extractelement <2 x float> %i.qm, i64 1
  %i.tr = call float @llvm.fmuladd.f32(float %.sroa.15148.1.i, float %i.tq, float %i.tp)
  %i.ts = call float @llvm.fmuladd.f32(float %.sroa.21.1.i, float %.sroa.10104.0.i, float %i.tr)
  %i.tt = extractelement <2 x float> %i.ql, i64 0
  %i.tu = call float @llvm.fmuladd.f32(float %.sroa.9139.1.i, float %i.tt, float 0.000000e+00)
  %i.tv = extractelement <2 x float> %i.ql, i64 1
  %i.tw = call float @llvm.fmuladd.f32(float %.sroa.15148.1.i, float %i.tv, float %i.tu)
  %i.tx = call float @llvm.fmuladd.f32(float %.sroa.21.1.i, float %.sink64.i.i, float %i.tw)
  %i.ty = extractelement <2 x float> %i.qk, i64 0
  %i.tz = call float @llvm.fmuladd.f32(float %.sroa.9139.1.i, float %i.ty, float 0.000000e+00)
  %i.ua = extractelement <2 x float> %i.qk, i64 1
  %i.ub = call float @llvm.fmuladd.f32(float %.sroa.15148.1.i, float %i.ua, float %i.tz)
  %i.uc = call float @llvm.fmuladd.f32(float %.sroa.21.1.i, float %.sink.i.i, float %i.ub)
  %i.ud = shufflevector <2 x float> %i.qm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ue = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tk, <2 x float> %i.ud, <2 x float> %i.tn)
  %i.uf = insertelement <2 x float> poison, float %.sroa.10104.0.i, i64 0
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tj, <2 x float> %i.ug, <2 x float> %i.ue)
  store <2 x float> %i.uh, ptr %.reload.addr1111, align 8, !alias.scope !1230
  store float %i.ts, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1230
  %i.ui = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> %i.ui, <2 x float> zeroinitializer)
  %i.uk = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ul = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tk, <2 x float> %i.uk, <2 x float> %i.uj)
  %i.um = insertelement <2 x float> poison, float %.sink64.i.i, i64 0
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tj, <2 x float> %i.un, <2 x float> %i.ul)
  store <2 x float> %i.uo, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !1230
  store float %i.tx, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !1230
  %i.up = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> %i.up, <2 x float> zeroinitializer)
  %i.ur = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.us = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tk, <2 x float> %i.ur, <2 x float> %i.uq)
  %i.ut = insertelement <2 x float> poison, float %.sink.i.i, i64 0
  %i.uu = shufflevector <2 x float> %i.ut, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tj, <2 x float> %i.uu, <2 x float> %i.us)
  store <2 x float> %i.uv, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1230
  store float %i.uc, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !80, !alias.scope !1230
  store i8 1, ptr %i.hj, align 4, !tbaa !1235, !alias.scope !1230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 %.0133529.lcssa1342.neg, ptr %i.a, align 8, !tbaa !87
  %i.uw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc214 unwind label %.body211.from.766

.noexc214:                                        ; preds = %bb.ay
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !117
  invoke void @_ZN4tlog6Logger3logIJmRKN7nanogui6MatrixIfLm3EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.ux, i32 noundef 4, ptr nonnull @.str.43, i64 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %.reload.addr1111)
          to label %_ZN4tlog5debugIJmRKN7nanogui6MatrixIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit unwind label %.body211.from.766

_ZN4tlog5debugIJmRKN7nanogui6MatrixIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit: ; preds = %.noexc214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  %i.uy = load i8, ptr %i.hj, align 4, !tbaa !1235, !range !184, !noundef !185
  %i.uz = trunc nuw i8 %i.uy to i1
  br i1 %i.uz, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN4tlog5debugIJmRKN7nanogui6MatrixIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit
  invoke void @_ZNSt3__127__throw_bad_optional_accessB8ne180100Ev() #45
          to label %.noexc216 unwind label %.body211.from.763

.noexc216:                                        ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %_ZN4tlog5debugIJmRKN7nanogui6MatrixIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit
  %i.va = load <3 x float>, ptr %i.ez, align 8, !tbaa !79, !noalias !1236 ; 3 uses
  %i.vb = shufflevector <3 x float> %i.va, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.vc = load float, ptr %.sroa.5430.0..sroa_idx, align 4, !tbaa !79, !noalias !1236
  %i.vd = load <3 x float>, ptr %.sroa.7432.0..sroa_idx, align 4, !tbaa !79, !noalias !1236 ; 3 uses
  %i.ve = shufflevector <3 x float> %i.vd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.vf = load float, ptr %.sroa.8433.0..sroa_idx, align 8, !tbaa !79, !noalias !1236
  %i.vg = load <3 x float>, ptr %.sroa.10435.0..sroa_idx, align 8, !tbaa !79, !noalias !1236 ; 3 uses
  %i.vh = shufflevector <3 x float> %i.vg, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.vi = load float, ptr %.sroa.11436.0..sroa_idx, align 4, !tbaa !79, !noalias !1236
  %i.vj = load <4 x float>, ptr %.reload.addr1111, align 8, !tbaa !79, !noalias !1236 ; 4 uses
  %i.vk = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !79, !noalias !1236 ; 3 uses
  %i.vl = shufflevector <4 x float> %i.vj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.vm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vb, <4 x float> %i.vl, <4 x float> zeroinitializer)
  %i.vn = load <2 x float>, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !79, !noalias !1236 ; 4 uses
  %i.vo = shufflevector <2 x float> %i.vn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.vp = shufflevector <4 x float> %i.vj, <4 x float> %i.vo, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.vq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ve, <4 x float> %i.vp, <4 x float> %i.vm)
  %i.vr = shufflevector <4 x float> %i.vj, <4 x float> %i.vo, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.vs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vh, <4 x float> %i.vr, <4 x float> %i.vq)
  store <4 x float> %i.vs, ptr %i.ez, align 8
  %i.vt = load <4 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !79, !noalias !1236 ; 4 uses
  %i.vu = shufflevector <3 x float> %i.va, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.vv = insertelement <4 x float> poison, float %i.vc, i64 0
  %i.vw = shufflevector <4 x float> %i.vv, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.vx = shufflevector <4 x float> %i.vw, <4 x float> %i.vu, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.vy = shufflevector <4 x float> %i.vt, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.vz = insertelement <2 x float> %i.vy, float %i.vk, i64 0
  %i.wa = shufflevector <2 x float> %i.vz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.wb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vx, <4 x float> %i.wa, <4 x float> zeroinitializer)
  %i.wc = shufflevector <3 x float> %i.vd, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.wd = insertelement <4 x float> poison, float %i.vf, i64 0
  %i.we = shufflevector <4 x float> %i.wd, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.wf = shufflevector <4 x float> %i.we, <4 x float> %i.wc, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.wg = shufflevector <4 x float> %i.vt, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.wh = shufflevector <2 x float> %i.vn, <2 x float> %i.wg, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.wi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wf, <4 x float> %i.wh, <4 x float> %i.wb)
  %i.wj = shufflevector <3 x float> %i.vg, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.wk = insertelement <4 x float> poison, float %i.vi, i64 0
  %i.wl = shufflevector <4 x float> %i.wk, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.wm = shufflevector <4 x float> %i.wl, <4 x float> %i.wj, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.wn = shufflevector <4 x float> %i.vt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.wo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wm, <4 x float> %i.wn, <4 x float> %i.wi)
  store <4 x float> %i.wo, ptr %.sroa.8433.0..sroa_idx, align 8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.wq = getelementptr inbounds nuw i8, ptr %i.j, i64 304
  %i.wr = getelementptr inbounds nuw i8, ptr %i.j, i64 308 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.j, i64 316
  %i.wt = getelementptr inbounds nuw i8, ptr %i.j, i64 320
  %i.wu = getelementptr inbounds nuw i8, ptr %i.j, i64 324
  %i.wv = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !79, !noalias !1236 ; 2 uses
  %i.ww = load <3 x float>, ptr %.reload.addr1114, align 4, !tbaa !79, !noalias !1237 ; 2 uses
  %i.wx = shufflevector <3 x float> %i.ww, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.wy = load float, ptr %i.wp, align 8, !tbaa !79, !noalias !1237
  %i.wz = load <3 x float>, ptr %i.wq, align 8, !tbaa !79, !noalias !1237 ; 3 uses
  %i.xa = shufflevector <3 x float> %i.wz, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.xb = load float, ptr %i.wr, align 4, !tbaa !79, !noalias !1237
  %i.xc = load <3 x float>, ptr %i.ws, align 4, !tbaa !79, !noalias !1237 ; 3 uses
  %i.xd = shufflevector <3 x float> %i.xc, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.xe = load float, ptr %i.wt, align 8, !tbaa !79, !noalias !1237
  %i.xf = shufflevector <4 x float> %i.vj, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.xg = insertelement <2 x float> %i.xf, float %i.vk, i64 1
  %i.xh = shufflevector <2 x float> %i.xg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.xi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wx, <4 x float> %i.xh, <4 x float> zeroinitializer)
  %i.xj = shufflevector <2 x float> %i.wv, <2 x float> %i.vn, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.xk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xa, <4 x float> %i.xj, <4 x float> %i.xi)
  %i.xl = shufflevector <4 x float> %i.vt, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.xm = shufflevector <2 x float> %i.wv, <2 x float> %i.xl, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.xn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xd, <4 x float> %i.xm, <4 x float> %i.xk)
  store <4 x float> %i.xn, ptr %.reload.addr1114, align 4
  %i.xo = load <2 x float>, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !79, !noalias !1236 ; 3 uses
  %i.xp = insertelement <4 x float> poison, float %i.wy, i64 0
  %i.xq = insertelement <4 x float> %i.xp, float %i.vk, i64 1
  %i.xr = shufflevector <2 x float> %i.xo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.xs = shufflevector <4 x float> %i.xq, <4 x float> %i.xr, <4 x i32> <i32 0, i32 1, i32 4, i32 poison> ; 2 uses
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.xu = shufflevector <4 x float> %i.wx, <4 x float> %i.xs, <4 x i32> <i32 5, i32 2, i32 0, i32 6>
  %i.xv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xt, <4 x float> %i.xu, <4 x float> zeroinitializer)
  %i.xw = shufflevector <3 x float> %i.wz, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.xx = insertelement <4 x float> poison, float %i.xb, i64 0
  %i.xy = shufflevector <4 x float> %i.xx, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.xz = shufflevector <4 x float> %i.xy, <4 x float> %i.xw, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ya = shufflevector <2 x float> %i.vn, <2 x float> %i.xo, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.yb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xz, <4 x float> %i.ya, <4 x float> %i.xv)
  %i.yc = shufflevector <3 x float> %i.xc, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.yd = insertelement <4 x float> poison, float %i.xe, i64 0
  %i.ye = shufflevector <4 x float> %i.yd, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.yf = shufflevector <4 x float> %i.ye, <4 x float> %i.yc, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %31 = load <2 x float>, ptr %.sroa.10.0..sroa_idx.i, align 4, !tbaa !79, !noalias !1236 ; 3 uses
  %i.yg = shufflevector <3 x float> %i.ww, <3 x float> %i.va, <2 x i32> <i32 2, i32 5>
  %i.yh = shufflevector <2 x float> %i.xo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yg, <2 x float> %i.yh, <2 x float> zeroinitializer)
  %i.yj = shufflevector <3 x float> %i.wz, <3 x float> %i.vd, <2 x i32> <i32 2, i32 5>
  %i.yk = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yj, <2 x float> %i.yk, <2 x float> %i.yi)
  %i.ym = shufflevector <3 x float> %i.xc, <3 x float> %i.vg, <2 x i32> <i32 2, i32 5>
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ym, <2 x float> %32, <2 x float> %i.yl) ; 2 uses
  %i.yo = extractelement <2 x float> %i.yn, i64 1
  store float %i.yo, ptr %.sroa.12437.0..sroa_idx, align 8, !tbaa !80
  %33 = shufflevector <2 x float> %i.vy, <2 x float> %31, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.yp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yf, <4 x float> %33, <4 x float> %i.yb)
  store <4 x float> %i.yp, ptr %i.wr, align 4
  %i.yq = extractelement <2 x float> %i.yn, i64 0
  store float %i.yq, ptr %i.wu, align 4, !tbaa !80
  br label %.loopexit519

.body211.from..loopexit:                          ; preds = %.thread591.1, %.thread591, %.from.659
  %lpad.loopexit1319 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.1012

.body211.from..loopexit.split-lp:                 ; preds = %bb.aw, %.noexc208, %.noexc207, %.noexc206, %bb.av, %bb.aq, %.noexc203, %.noexc202, %.noexc201, %bb.ap, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit.i, %.noexc198, %._crit_edge192.i, %.noexc196, %.noexc195, %._crit_edge.i
  %lpad.loopexit.split-lp1320 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.1012

.body211.from.766:                                ; preds = %bb.ay, %.noexc214
  %i.yr = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %.from.1012

.body211.from.763:                                ; preds = %bb.az
  %i.ys = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.1012

.thread591:                                       ; preds = %.noexc194
  %i.yt = getelementptr inbounds nuw i8, ptr %i.j, i64 474
  %i.yu = load i16, ptr %i.yt, align 2, !tbaa !82
  %i.yv = getelementptr inbounds nuw i8, ptr %i.j, i64 476
  %i.yw = load i16, ptr %i.yv, align 4, !tbaa !82
  %i.yx = zext i16 %i.yw to i32
  %i.yy = getelementptr inbounds nuw i8, ptr %i.j, i64 478
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !82
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.reload.addr1116, align 4, !tbaa !79, !noalias !1238
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gz, align 4, !tbaa !79, !noalias !1238
  store float 1.000000e+00, ptr %i.hd, align 4, !tbaa !79, !noalias !1238
  %i.za = load ptr, ptr %.reload.addr1139, align 8, !tbaa !158, !noalias !1238
  %i.zb = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanIfEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %i.za, i32 noundef range(i32 0, 65536) %i.yx)
          to label %.noexc194.1 unwind label %.body211.from..loopexit ; 2 uses

.noexc194.1:                                      ; preds = %.thread591
  %i.zc = extractvalue { ptr, i64 } %i.zb, 1      ; 2 uses
  %.not588.1 = icmp eq i64 %i.zc, 0
  br i1 %.not588.1, label %.thread591.1, label %bb.aa

.thread591.1:                                     ; preds = %.noexc194.1
  %i.zd = getelementptr inbounds nuw i8, ptr %i.j, i64 480
  %i.ze = load i16, ptr %i.zd, align 8, !tbaa !82
  %i.zf = getelementptr inbounds nuw i8, ptr %i.j, i64 482
  %i.zg = load i16, ptr %i.zf, align 2, !tbaa !82
  %i.zh = zext i16 %i.zg to i32
  %i.zi = getelementptr inbounds nuw i8, ptr %i.j, i64 484
  %i.zj = load i16, ptr %i.zi, align 4, !tbaa !82
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.reload.addr1116, align 4, !tbaa !79, !noalias !1239
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gz, align 4, !tbaa !79, !noalias !1239
  store float 1.000000e+00, ptr %i.hd, align 4, !tbaa !79, !noalias !1239
  %i.zk = load ptr, ptr %.reload.addr1139, align 8, !tbaa !158, !noalias !1239
  %i.zl = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanIfEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %i.zk, i32 noundef range(i32 0, 65536) %i.zh)
          to label %.noexc194.2 unwind label %.body211.from..loopexit ; 2 uses

.noexc194.2:                                      ; preds = %.thread591.1
  %i.zm = extractvalue { ptr, i64 } %i.zl, 1      ; 2 uses
  %.not588.2 = icmp eq i64 %i.zm, 0
  br i1 %.not588.2, label %.loopexit519, label %bb.aa

.loopexit519:                                     ; preds = %.noexc194.2, %bb.ba
  store float 1.000000e+00, ptr %.reload.addr1117, align 8, !tbaa !79
  %i.zn = load ptr, ptr %.reload.addr1139, align 8, !tbaa !158
  %i.zo = invoke i64 @_ZN3tev12tiffGetValueIfEENSt3__18optionalIT_EEP4tiffj(ptr noundef %i.zn, i32 noundef 50730)
          to label %bb.bb unwind label %.from.989 ; 2 uses

bb.bb:                                            ; preds = %.loopexit519
  %i.zp = and i64 %i.zo, 4294967296
  %.not589 = icmp eq i64 %i.zp, 0
  %i.zq = trunc i64 %i.zo to i32
  %i.zr = bitcast i32 %i.zq to float
  %i.zs = select i1 %.not589, float 0.000000e+00, float %i.zr
  %i.zt = call float @exp2f(float noundef %i.zs) #44
  %i.zu = load float, ptr %.reload.addr1117, align 8, !tbaa !79
  %i.zv = fmul float %i.zt, %i.zu
  store float %i.zv, ptr %.reload.addr1117, align 8, !tbaa !79
  %i.zw = load ptr, ptr %.reload.addr1139, align 8, !tbaa !158
  %i.zx = invoke i64 @_ZN3tev12tiffGetValueIfEENSt3__18optionalIT_EEP4tiffj(ptr noundef %i.zw, i32 noundef 51109)
          to label %bb.bc unwind label %.from.986 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.zy = and i64 %i.zx, 4294967296
  %.not590 = icmp eq i64 %i.zy, 0
  %i.zz = trunc i64 %i.zx to i32
  %i.aaa = bitcast i32 %i.zz to float
  %i.aab = select i1 %.not590, float 0.000000e+00, float %i.aaa
  %i.aac = call float @exp2f(float noundef %i.aab) #44
  %i.aad = load float, ptr %.reload.addr1117, align 8, !tbaa !79
  %i.aae = fmul float %i.aac, %i.aad              ; 2 uses
  store float %i.aae, ptr %.reload.addr1117, align 8, !tbaa !79
  %i.aaf = fcmp une float %i.aae, 1.000000e+00
  br i1 %i.aaf, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.aag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc222 unwind label %.from.983

.noexc222:                                        ; preds = %bb.bd
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !117
  invoke void @_ZN4tlog6Logger3logIJRfEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.aah, i32 noundef 4, ptr nonnull @.str.44, i64 27, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr1117)
          to label %_ZN4tlog5debugIJRfEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit unwind label %.from.983

_ZN4tlog5debugIJRfEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit: ; preds = %.noexc222
  %i.aai = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.aaj = icmp eq i8 %i.aai, 0
  br i1 %i.aaj, label %bb.be, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !138

bb.be:                                            ; preds = %_ZN4tlog5debugIJRfEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit
  %i.aak = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  %.not.i224 = icmp eq i32 %i.aak, 0
  br i1 %.not.i224, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.bg unwind label %.body225.from.772

bb.bg:                                            ; preds = %bb.bf
  %i.aal = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body225.from.772:                                ; preds = %bb.bf
  %i.aam = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  br label %.from.1012

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.bg, %bb.be, %_ZN4tlog5debugIJRfEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit
  %i.aan = load i64, ptr %.reload.addr1138, align 8, !tbaa !87
  %i.aao = mul i64 %i.aan, %i.cb
  store ptr %.reload.addr1138, ptr %18, align 8, !tbaa !142
  %i.aap = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %2, ptr %i.aap, align 8, !tbaa !146
  %i.aaq = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %.reload.addr1117, ptr %i.aaq, align 8, !tbaa !148
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_1EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr1111, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %i.cb, i64 noundef %i.aao, ptr noundef nonnull byval(%class.anon.150) align 8 %18, i32 noundef %6)
          to label %bb.bh unwind label %.body225.from.

bb.bh:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.aar = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !95
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  %i.aat = load atomic i32, ptr %i.aas acquire, align 4
  %i.aau = icmp slt i32 %i.aat, 2
  br i1 %i.aau, label %bb.bi, label %AfterCoroSave

bb.bi:                                            ; preds = %bb.bh
  %i.aav = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !95
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.aax = atomicrmw add ptr %i.aaw, i32 -1 acq_rel, align 4
  %i.aay = icmp slt i32 %i.aax, 1
  br i1 %i.aay, label %bb.bj, label %.thread.sink.split

bb.bj:                                            ; preds = %bb.bi
  %i.aaz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.bj
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !117 ; 7 uses
  %i.abb = load i32, ptr %i.aba, align 8, !tbaa !128
  %i.abc = and i32 %i.abb, 8
  %.not.i.i.i.i = icmp eq i32 %i.abc, 0
  br i1 %.not.i.i.i.i, label %bb.bk, label %.thread.sink.split

bb.bk:                                            ; preds = %.noexc.i.i
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !129 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.abe, %i.abg
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.bk
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aba, i64 32
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aba, i64 48
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aba, i64 33
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aba, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.abe, %.from..lr.ph.i.i.i.i.i ], [ %i.abw, %.noexc2.i.i ] ; 2 uses
  %i.abl = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  %i.abm = load i8, ptr %i.abh, align 8           ; 2 uses
  %i.abn = trunc i8 %i.abm to i1                  ; 2 uses
  %i.abo = load ptr, ptr %i.abi, align 8
  %i.abp = select i1 %i.abn, ptr %i.abo, ptr %i.abj
  %i.abq = load i64, ptr %i.abk, align 8
  %i.abr = lshr i8 %i.abm, 1
  %i.abs = zext nneg i8 %i.abr to i64
  %i.abt = select i1 %i.abn, i64 %i.abq, i64 %i.abs
  %i.abu = load ptr, ptr %i.abl, align 8, !tbaa !89
  %i.abv = load ptr, ptr %i.abu, align 8
  invoke void %i.abv(ptr noundef nonnull align 8 dereferenceable(8) %i.abl, ptr %i.abp, i64 %i.abt, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

end_hunk_1
