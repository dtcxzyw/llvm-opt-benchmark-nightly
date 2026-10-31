Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_rawspeed?download=true
inline.NumInlined: 430
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@dt_imageio_open_rawspeed:bb.a
  %i.bu = invoke i64 @g_strlcpy(ptr noundef nonnull %i.bq, ptr noundef %i.bt, i64 noundef 64)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ae:                                            ; preds = %_ZN8rawspeed8RawImageD2Ev.exit, %bb.r, %bb.q
  %i.bv = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed11IOExceptionE
          catch ptr @_ZTIN8rawspeed15FileIOExceptionE
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
          catch ptr @_ZTIN8rawspeed18RawParserExceptionE
          catch ptr @_ZTIN8rawspeed23CameraMetadataExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.fo

bb.af:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed11IOExceptionE
          catch ptr @_ZTIN8rawspeed15FileIOExceptionE
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
          catch ptr @_ZTIN8rawspeed18RawParserExceptionE
          catch ptr @_ZTIN8rawspeed23CameraMetadataExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.fn

bb.ag:                                            ; preds = %.lr.ph, %bb.ah
  %.sroa.0337.0384 = phi ptr [ %i.bm, %.lr.ph ], [ %i.by, %bb.ah ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.0337.0384, align 8, !tbaa !23
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.bp, ptr noundef %i.bx)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0337.0384, i64 32 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bn
  br i1 %i.bz, label %._crit_edge, label %bb.ag

bb.ai:                                            ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.cb = load ptr, ptr %11, align 8, !tbaa !254
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 448
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !23
  %i.ce = invoke i64 @g_strlcpy(ptr noundef nonnull %i.ca, ptr noundef %i.cd, i64 noundef 64)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.cg = load ptr, ptr %11, align 8, !tbaa !254
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 480
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !23
  %i.cj = invoke i64 @g_strlcpy(ptr noundef nonnull %i.cf, ptr noundef %i.ci, i64 noundef 64)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  invoke void @dt_image_refresh_makermodel(ptr noundef nonnull %0)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.ck = load ptr, ptr %11, align 8, !tbaa !254  ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !256
  %i.cn = trunc i32 %i.cm to i16
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 2 uses
  store i16 %i.cn, ptr %i.co, align 8, !tbaa !257
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 160
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 164
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !258, !range !259, !noundef !118
  %i.cs = trunc nuw i8 %i.cr to i1
  %.val.i.i = load i32, ptr %i.cp, align 8
  %.0.i.i = select i1 %i.cs, i32 %.val.i.i, i32 65535
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1748 ; 3 uses
  store i32 %.0.i.i, ptr %i.ct, align 4, !tbaa !260
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 152
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !261, !range !259, !noundef !118
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cx = load ptr, ptr %i.ck, align 8, !tbaa !27
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(624) %i.ck)
          to label %._crit_edge411 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !call_target !266

._crit_edge411:                                   ; preds = %bb.am
  %.pre412 = load ptr, ptr %11, align 8, !tbaa !254
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge411, %bb.al
  %i.da = phi ptr [ %.pre412, %._crit_edge411 ], [ %i.ck, %bb.al ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 120
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.db, align 8, !tbaa !268, !noalias !269
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1738
  %i.dd = load <4 x i32>, ptr %.sroa.0.0.copyload.i.i, align 4, !tbaa !41
  %i.de = trunc <4 x i32> %i.dd to <4 x i16>      ; 2 uses
  store <4 x i16> %i.de, ptr %i.dc, align 2, !tbaa !270
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !256
  %i.dh = icmp eq i32 %i.dg, -1
  br i1 %i.dh, label %.preheader380, label %bb.ao

.preheader380:                                    ; preds = %bb.an
  %i.di = uitofp <4 x i16> %i.de to <4 x float>
  %i.dj = call reassoc nnan nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.di)
  %i.dk = fmul reassoc nnan nsz arcp contract afn float %i.dj, 2.500000e-01
  %i.dl = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.dk) ; 2 uses
  %.inv = fcmp reassoc nsz arcp contract afn oge float %i.dl, 6.553500e+04
  %i.dm = select i1 %.inv, float 6.553500e+04, float %i.dl
  %i.dn = fptoui float %i.dm to i16
  store i16 %i.dn, ptr %i.co, align 8, !tbaa !257
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader380, %bb.an
  %i.do = load ptr, ptr %9, align 8, !tbaa !235   ; 3 uses
  store ptr null, ptr %9, align 8, !tbaa !235
  %.not.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8rawspeed10RawDecoderESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN8rawspeed10RawDecoderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN8rawspeed10RawDecoderEEclEPS1_.exit.i.i: ; preds = %bb.ao
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !27
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(96) %i.do) #23, !call_target !275, !inline_history !139
  br label %_ZNSt10unique_ptrIN8rawspeed10RawDecoderESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN8rawspeed10RawDecoderESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.ao, %_ZNKSt14default_deleteIN8rawspeed10RawDecoderEEclEPS1_.exit.i.i
  %i.ds = load ptr, ptr %7, align 8, !tbaa !120   ; 4 uses
  store ptr null, ptr %7, align 8, !tbaa !120
  %.not.i.i259 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i259, label %_ZNSt10unique_ptrISt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS1_16AlignedAllocatorIhLi16EEEEEESt14default_deleteIS6_EE5resetEPS6_.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIN8rawspeed10RawDecoderESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !121 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS1_16AlignedAllocatorIhLi16EEEEEEEclEPS6_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !122
  %i.dx = icmp ne ptr %i.dw, %i.du
  call void @llvm.assume(i1 %i.dx)
  call void @llvm.assume(i1 true) [ "align"(ptr %i.du, i64 16) ]
  call void @_ZdlPvSt11align_val_t(ptr noundef nonnull %i.du, i64 noundef 16) #23
  br label %_ZNKSt14default_deleteISt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS1_16AlignedAllocatorIhLi16EEEEEEEclEPS6_.exit.i.i

_ZNKSt14default_deleteISt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS1_16AlignedAllocatorIhLi16EEEEEEEclEPS6_.exit.i.i: ; preds = %bb.aq, %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 32) #26
  br label %_ZNSt10unique_ptrISt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS1_16AlignedAllocatorIhLi16EEEEEESt14default_deleteIS6_EE5resetEPS6_.exit

_ZNSt10unique_ptrISt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS1_16AlignedAllocatorIhLi16EEEEEESt14default_deleteIS6_EE5resetEPS6_.exit: ; preds = %_ZNSt10unique_ptrIN8rawspeed10RawDecoderESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNKSt14default_deleteISt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS1_16AlignedAllocatorIhLi16EEEEEEEclEPS6_.exit.i.i
  %i.dy = load ptr, ptr %11, align 8, !tbaa !254  ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 272
  %i.ea = load i8, ptr %i.dz, align 4, !tbaa !276, !range !259, !noundef !118
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %.preheader376, label %.preheader378

.preheader378:                                    ; preds = %_ZNSt10unique_ptrISt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS1_16AlignedAllocatorIhLi16EEEEEESt14default_deleteIS6_EE5resetEPS6_.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1776
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false), !tbaa !277
  br label %.loopexit377

.preheader376:                                    ; preds = %_ZNSt10unique_ptrISt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS1_16AlignedAllocatorIhLi16EEEEEESt14default_deleteIS6_EE5resetEPS6_.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 256
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.ef = load float, ptr %i.ed, align 4, !tbaa !277
  store float %i.ef, ptr %i.ee, align 16, !tbaa !277
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 260
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !277
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1780
  store float %i.eh, ptr %i.ei, align 4, !tbaa !277
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 264
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !277
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1784
  store float %i.ek, ptr %i.el, align 8, !tbaa !277
  %i.em = getelementptr inbounds nuw i8, ptr %i.dy, i64 268
  %i.en = load float, ptr %i.em, align 4, !tbaa !277
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1788
  store float %i.en, ptr %i.eo, align 4, !tbaa !277
  br label %.loopexit377

.loopexit377:                                     ; preds = %.preheader378, %.preheader376
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 280
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 288
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !278
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !279 ; 13 uses
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  %i.ex = shl i64 %i.ev, 29
  %i.ey = ashr i64 %i.ex, 32                      ; 12 uses
  %i.ez = icmp sgt i64 %i.ey, 0
  br i1 %i.ez, label %bb.ar, label %.thread

.thread:                                          ; preds = %.loopexit377
  store float 0.000000e+00, ptr %i.ew, align 16, !tbaa !277
  br label %.thread492

bb.ar:                                            ; preds = %.loopexit377
  %i.fa = load <2 x i32>, ptr %i.es, align 4, !tbaa !41
  %i.fb = sitofp <2 x i32> %i.fa to <2 x float>   ; 2 uses
  %shift = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %i.fb, %shift
  %i.fc = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.fc, ptr %i.ew, align 16, !tbaa !277
  %.not = icmp eq i64 %i.ey, 1
  br i1 %.not, label %.thread492, label %bb.as

.thread492:                                       ; preds = %bb.ar, %.thread
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1796
  store float 0.000000e+00, ptr %i.fd, align 4, !tbaa !277
  br label %.preheader375.1.thread

bb.as:                                            ; preds = %bb.ar
  %i.fe = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ff = load <2 x i32>, ptr %i.fe, align 4, !tbaa !41
  %i.fg = sitofp <2 x i32> %i.ff to <2 x float>   ; 2 uses
  %shift596 = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop597 = fdiv reassoc nsz arcp contract afn <2 x float> %i.fg, %shift596
  %i.fh = extractelement <2 x float> %foldExtExtBinop597, i64 0
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1796
  store float %i.fh, ptr %i.fi, align 4, !tbaa !277
  %i.fj = icmp samesign ugt i64 %i.ey, 2
  br i1 %i.fj, label %.preheader375.1, label %.preheader375.1.thread

.preheader375.1.thread:                           ; preds = %bb.as, %.thread492
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1800
  store float 0.000000e+00, ptr %i.fk, align 8, !tbaa !277
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1804
  br label %.thread493

.preheader375.1:                                  ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fn = load <2 x i32>, ptr %i.fm, align 4, !tbaa !41
  %i.fo = sitofp <2 x i32> %i.fn to <2 x float>   ; 2 uses
  %shift599 = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop600 = fdiv reassoc nsz arcp contract afn <2 x float> %i.fo, %shift599
  %i.fp = extractelement <2 x float> %foldExtExtBinop600, i64 0
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1800
  store float %i.fp, ptr %i.fq, align 8, !tbaa !277
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1804 ; 2 uses
  %.not512 = icmp eq i64 %i.ey, 3
  br i1 %.not512, label %.thread493, label %bb.at

.thread493:                                       ; preds = %.preheader375.1, %.preheader375.1.thread
  %.ph = phi ptr [ %i.fr, %.preheader375.1 ], [ %i.fl, %.preheader375.1.thread ]
  store float 0.000000e+00, ptr %.ph, align 4, !tbaa !277
  br label %.thread495

bb.at:                                            ; preds = %.preheader375.1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.ft = load <2 x i32>, ptr %i.fs, align 4, !tbaa !41
  %i.fu = sitofp <2 x i32> %i.ft to <2 x float>   ; 2 uses
  %shift602 = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop603 = fdiv reassoc nsz arcp contract afn <2 x float> %i.fu, %shift602
  %i.fv = extractelement <2 x float> %foldExtExtBinop603, i64 0
  store float %i.fv, ptr %i.fr, align 4, !tbaa !277
  %i.fw = icmp samesign ugt i64 %i.ey, 4
  br i1 %i.fw, label %bb.au, label %.thread495

.thread495:                                       ; preds = %bb.at, %.thread493
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1808
  store float 0.000000e+00, ptr %i.fx, align 16, !tbaa !277
  br label %.preheader375.2.thread

bb.au:                                            ; preds = %bb.at
  %i.fy = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.fz = load <2 x i32>, ptr %i.fy, align 4, !tbaa !41
  %i.ga = sitofp <2 x i32> %i.fz to <2 x float>   ; 2 uses
  %shift605 = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop606 = fdiv reassoc nsz arcp contract afn <2 x float> %i.ga, %shift605
  %i.gb = extractelement <2 x float> %foldExtExtBinop606, i64 0
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1808
  store float %i.gb, ptr %i.gc, align 16, !tbaa !277
  %.not513 = icmp eq i64 %i.ey, 5
  br i1 %.not513, label %.preheader375.2.thread, label %.preheader375.2

.preheader375.2.thread:                           ; preds = %bb.au, %.thread495
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 1812
  store float 0.000000e+00, ptr %i.gd, align 4, !tbaa !277
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1816
  br label %.thread498

.preheader375.2:                                  ; preds = %bb.au
  %i.gf = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.gg = load <2 x i32>, ptr %i.gf, align 4, !tbaa !41
  %i.gh = sitofp <2 x i32> %i.gg to <2 x float>   ; 2 uses
  %shift608 = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop609 = fdiv reassoc nsz arcp contract afn <2 x float> %i.gh, %shift608
  %i.gi = extractelement <2 x float> %foldExtExtBinop609, i64 0
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1812
  store float %i.gi, ptr %i.gj, align 4, !tbaa !277
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1816 ; 2 uses
  %i.gl = icmp samesign ugt i64 %i.ey, 6
  br i1 %i.gl, label %bb.av, label %.thread498

.thread498:                                       ; preds = %.preheader375.2, %.preheader375.2.thread
  %.ph497 = phi ptr [ %i.gk, %.preheader375.2 ], [ %i.ge, %.preheader375.2.thread ]
  store float 0.000000e+00, ptr %.ph497, align 4, !tbaa !277
  br label %.thread500

bb.av:                                            ; preds = %.preheader375.2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.gn = load <2 x i32>, ptr %i.gm, align 4, !tbaa !41
  %i.go = sitofp <2 x i32> %i.gn to <2 x float>   ; 2 uses
  %shift611 = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop612 = fdiv reassoc nsz arcp contract afn <2 x float> %i.go, %shift611
  %i.gp = extractelement <2 x float> %foldExtExtBinop612, i64 0
  store float %i.gp, ptr %i.gk, align 8, !tbaa !277
  %.not514 = icmp eq i64 %i.ey, 7
  br i1 %.not514, label %.thread500, label %bb.aw

.thread500:                                       ; preds = %bb.av, %.thread498
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1820
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !277
  br label %.preheader375.3.thread

bb.aw:                                            ; preds = %bb.av
  %i.gr = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.gs = load <2 x i32>, ptr %i.gr, align 4, !tbaa !41
  %i.gt = sitofp <2 x i32> %i.gs to <2 x float>   ; 2 uses
  %shift614 = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop615 = fdiv reassoc nsz arcp contract afn <2 x float> %i.gt, %shift614
  %i.gu = extractelement <2 x float> %foldExtExtBinop615, i64 0
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1820
  store float %i.gu, ptr %i.gv, align 4, !tbaa !277
  %i.gw = icmp samesign ugt i64 %i.ey, 8
  br i1 %i.gw, label %.preheader375.3, label %.preheader375.3.thread

.preheader375.3.thread:                           ; preds = %bb.aw, %.thread500
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 1824
  store float 0.000000e+00, ptr %i.gx, align 16, !tbaa !277
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1828
  br label %.thread503

.preheader375.3:                                  ; preds = %bb.aw
  %i.gz = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.ha = load <2 x i32>, ptr %i.gz, align 4, !tbaa !41
  %i.hb = sitofp <2 x i32> %i.ha to <2 x float>   ; 2 uses
  %shift617 = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop618 = fdiv reassoc nsz arcp contract afn <2 x float> %i.hb, %shift617
  %i.hc = extractelement <2 x float> %foldExtExtBinop618, i64 0
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1824
  store float %i.hc, ptr %i.hd, align 16, !tbaa !277
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 2 uses
  %.not515 = icmp eq i64 %i.ey, 9
  br i1 %.not515, label %.thread503, label %bb.ax

.thread503:                                       ; preds = %.preheader375.3, %.preheader375.3.thread
  %.ph502 = phi ptr [ %i.he, %.preheader375.3 ], [ %i.gy, %.preheader375.3.thread ]
  store float 0.000000e+00, ptr %.ph502, align 4, !tbaa !277
  br label %.thread505

bb.ax:                                            ; preds = %.preheader375.3
  %i.hf = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.hg = load <2 x i32>, ptr %i.hf, align 4, !tbaa !41
  %i.hh = sitofp <2 x i32> %i.hg to <2 x float>   ; 2 uses
  %shift620 = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop621 = fdiv reassoc nsz arcp contract afn <2 x float> %i.hh, %shift620
  %i.hi = extractelement <2 x float> %foldExtExtBinop621, i64 0
  store float %i.hi, ptr %i.he, align 4, !tbaa !277
  %i.hj = icmp samesign ugt i64 %i.ey, 10
  br i1 %i.hj, label %bb.ay, label %.thread505

.thread505:                                       ; preds = %bb.ax, %.thread503
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 1832
  store float 0.000000e+00, ptr %i.hk, align 8, !tbaa !277
  br label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.hl = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  %i.hm = load <2 x i32>, ptr %i.hl, align 4, !tbaa !41
  %i.hn = sitofp <2 x i32> %i.hm to <2 x float>   ; 2 uses
  %shift623 = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop624 = fdiv reassoc nsz arcp contract afn <2 x float> %i.hn, %shift623
  %i.ho = extractelement <2 x float> %foldExtExtBinop624, i64 0
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 1832
  store float %i.ho, ptr %i.hp, align 8, !tbaa !277
  %.not516 = icmp eq i64 %i.ey, 11
  br i1 %.not516, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hq = getelementptr inbounds nuw i8, ptr %i.es, i64 88
  %i.hr = load <2 x i32>, ptr %i.hq, align 4, !tbaa !41
  %i.hs = sitofp <2 x i32> %i.hr to <2 x float>   ; 2 uses
  %shift626 = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop627 = fdiv reassoc nsz arcp contract afn <2 x float> %i.hs, %shift626
  %i.ht = extractelement <2 x float> %foldExtExtBinop627, i64 0
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %.thread505, %bb.az
  %.sink = phi float [ %i.ht, %bb.az ], [ 0.000000e+00, %.thread505 ], [ 0.000000e+00, %bb.ay ]
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1836
  store float %.sink, ptr %i.hu, align 4, !tbaa !277
  invoke void @dt_exif_img_check_additional_tags(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  %i.hv = load ptr, ptr %11, align 8, !tbaa !254  ; 15 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 553
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !123 ; 3 uses
  %i.hy = icmp eq i8 %i.hx, 1
  br i1 %i.hy, label %bb.bc, label %.loopexit374

bb.bc:                                            ; preds = %bb.bb
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !280
  %i.ib = or i32 %i.ia, 128
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !280
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 160
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 164
  %i.ie = load i8, ptr %i.id, align 4, !tbaa !258, !range !259, !noundef !118
  %i.if = trunc nuw i8 %i.ie to i1
  %i.ig = load i32, ptr %i.ic, align 4
  %i.ih = icmp eq i32 %i.ig, 1065353216
  %i.ii = select i1 %i.if, i1 %i.ih, i1 false
  br i1 %i.ii, label %.critedge363, label %thread-pre-split

.critedge363:                                     ; preds = %bb.bc
  store i32 1, ptr %i.ct, align 4, !tbaa !260
  br label %.preheader373

thread-pre-split:                                 ; preds = %bb.bc
  %.pr = load i32, ptr %i.ct, align 4, !tbaa !260
  %i.ij = icmp eq i32 %.pr, 1
  br i1 %i.ij, label %.preheader373, label %.loopexit374

.preheader373:                                    ; preds = %thread-pre-split, %.critedge363
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 1584
  store <4 x float> splat (float 1.000000e+00), ptr %i.ik, align 16, !tbaa !277
  br label %.loopexit374

.loopexit374:                                     ; preds = %.preheader373, %thread-pre-split, %bb.bb
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  store i32 0, ptr %i.im, align 8, !tbaa !281
  %i.in = call i64 @_ZNK8rawspeed12RawImageData15getUncroppedDimEv(ptr noundef nonnull align 8 dereferenceable(624) %i.hv) #30 ; 5 uses
  %.sroa.0320.0.extract.trunc = trunc i64 %i.in to i32 ; 3 uses
  %.sroa.7323.0.extract.shift = lshr i64 %i.in, 32
  %.sroa.7323.0.extract.trunc = trunc nuw i64 %.sroa.7323.0.extract.shift to i32 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 6 uses
  store i64 %i.in, ptr %i.io, align 4
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !41 ; 2 uses
  %.sroa.5319.0.extract.shift = lshr i64 %i.ir, 32
  %.sroa.5319.0.extract.trunc = trunc nuw i64 %.sroa.5319.0.extract.shift to i32 ; 2 uses
  %i.is = call i64 @_ZNK8rawspeed12RawImageData13getCropOffsetEv(ptr noundef nonnull align 8 dereferenceable(624) %i.hv) #30 ; 4 uses
  %.sroa.0313.0.extract.trunc = trunc i64 %i.is to i32 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i64 %i.is, 32
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 1404
  store i64 %i.is, ptr %i.it, align 4
  %i.iu = add i64 %i.ir, %i.is
  %i.iv = sub i64 %i.in, %i.iu
  %i.iw = add i32 %.sroa.5319.0.extract.trunc, %.sroa.7.0.extract.trunc
  %i.ix = sub i32 %.sroa.7323.0.extract.trunc, %i.iw
  %.sroa.0.0.extract.trunc = trunc i64 %i.iv to i32 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 1412
  store i32 %.sroa.0.0.extract.trunc, ptr %i.iy, align 4, !tbaa !282
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 1416
  store i32 %i.ix, ptr %i.iz, align 8, !tbaa !283
  %i.ja = add i32 %.sroa.0313.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.jb = sub i32 %.sroa.0320.0.extract.trunc, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1396
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !284
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store i32 %.sroa.5319.0.extract.trunc, ptr %i.jd, align 8, !tbaa !285
  %i.je = getelementptr inbounds nuw i8, ptr %i.hv, i64 304
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !286
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1752
  store i32 %i.jf, ptr %i.jg, align 8, !tbaa !287
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hv, i64 248
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !288
  %i.jj = fptrunc reassoc nsz arcp contract afn double %i.ji to float
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 1756
  store float %i.jj, ptr %i.jk, align 4, !tbaa !289
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !290, !range !259, !noundef !118
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.cu, label %bb.bd

bb.bd:                                            ; preds = %.loopexit374
  store ptr %i.hv, ptr %13, align 8, !tbaa !254
  %i.jo = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.jp = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 3 uses
  store ptr %i.jp, ptr %i.jo, align 8, !tbaa !44
  %.not.i.i.i.i264 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i264, label %_ZN8rawspeed8RawImageC2ERKS0_.exit266, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 3 uses
  %i.jr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i265 = icmp eq i8 %i.jr, 0
  br i1 %.not.i.i.i.i.i265, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.js = load i32, ptr %i.jq, align 4, !tbaa !41
  %i.jt = add nsw i32 %i.js, 1
  store i32 %i.jt, ptr %i.jq, align 4, !tbaa !41
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit266

bb.bg:                                            ; preds = %bb.be
  %i.ju = atomicrmw volatile add ptr %i.jq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre414 = load ptr, ptr %13, align 8, !tbaa !254
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit266

_ZN8rawspeed8RawImageC2ERKS0_.exit266:            ; preds = %bb.bd, %bb.bf, %bb.bg
  %i.jv = phi ptr [ %i.hv, %bb.bd ], [ %i.hv, %bb.bf ], [ %.pre414, %bb.bg ] ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 3 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !280
  %i.jy = and i32 %i.jx, -131169                  ; 2 uses
  %i.jz = or disjoint i32 %i.jy, 131072
  store i32 %i.jz, ptr %i.jw, align 4, !tbaa !280
  store i32 4, ptr %i.il, align 16, !tbaa !291
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store i32 1, ptr %i.ka, align 4, !tbaa !292
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 553
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !123
  %switch.i = icmp ult i8 %i.kc, 2
  br i1 %switch.i, label %bb.bh, label %_ZL29dt_imageio_open_rawspeed_srawP10dt_image_tN8rawspeed8RawImageEP18dt_mipmap_buffer_t.exit

bb.bh:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit266
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 592
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !124 ; 12 uses
  switch i32 %i.ke, label %_ZL29dt_imageio_open_rawspeed_srawP10dt_image_tN8rawspeed8RawImageEP18dt_mipmap_buffer_t.exit [
    i32 4, label %bb.bi
    i32 3, label %bb.bi
    i32 1, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh, %bb.bh
  %.not125.i = icmp eq ptr %2, null
  br i1 %.not125.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.kf, align 16, !tbaa !293
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 9, ptr %i.kg, align 8, !tbaa !294
  br label %_ZL29dt_imageio_open_rawspeed_srawP10dt_image_tN8rawspeed8RawImageEP18dt_mipmap_buffer_t.exit

bb.bk:                                            ; preds = %bb.bi
  %i.kh = icmp eq i32 %i.ke, 1
  br i1 %i.kh, label %bb.bl, label %.thread.i

bb.bl:                                            ; preds = %bb.bk
  %i.ki = or i32 %i.jy, 163840
  store i32 %i.ki, ptr %i.jw, align 4, !tbaa !280
  %i.kj = invoke ptr @dt_mipmap_cache_alloc(ptr noundef nonnull %2, ptr noundef nonnull %0)
          to label %.noexc unwind label %bb.ct    ; 5 uses

.noexc:                                           ; preds = %bb.bl
  %.not126.i = icmp eq ptr %i.kj, null
  br i1 %.not126.i, label %_ZL29dt_imageio_open_rawspeed_srawP10dt_image_tN8rawspeed8RawImageEP18dt_mipmap_buffer_t.exit, label %bb.bm

.thread.i:                                        ; preds = %bb.bk
  %i.kk = invoke ptr @dt_mipmap_cache_alloc(ptr noundef nonnull %2, ptr noundef nonnull %0)
          to label %.noexc267 unwind label %bb.ct ; 3 uses

.noexc267:                                        ; preds = %.thread.i
  %.not126280.i = icmp eq ptr %i.kk, null
  br i1 %.not126280.i, label %_ZL29dt_imageio_open_rawspeed_srawP10dt_image_tN8rawspeed8RawImageEP18dt_mipmap_buffer_t.exit, label %.thread281.i

bb.bm:                                            ; preds = %.noexc
  %i.kl = load ptr, ptr %13, align 8, !tbaa !254  ; 17 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 553
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !123
  %i.ko = icmp eq i8 %i.kn, 0
  %i.kp = load i32, ptr %i.ip, align 8, !tbaa !295 ; 3 uses
  %i.kq = icmp sgt i32 %i.kp, 0                   ; 2 uses
  br i1 %i.ko, label %.preheader.i, label %.preheader282.i

.preheader282.i:                                  ; preds = %bb.bm
  br i1 %i.kq, label %.lr.ph308.i, label %.loopexit.i

.lr.ph308.i:                                      ; preds = %.preheader282.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 568
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !121, !noalias !296 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kl, i64 592
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !124, !noalias !296
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 608
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !125, !noalias !296
  %i.kx = mul nsw i32 %i.kw, %i.ku                ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
end_hunk_0
begin_hunk_1_@dt_imageio_open_rawspeed:bb.a
  %i.np = load float, ptr %i.no, align 4, !tbaa !277
  %i.nq = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.np, i64 0
  %i.nr = shufflevector <4 x float> %i.nq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.nr, ptr %.0111302.i.prol, align 4, !tbaa !277
  %indvars.iv.next345.i.prol = add nuw nsw i64 %indvars.iv344.i.prol, 1 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0111302.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter640
  br i1 %prol.iter.cmp.not, label %scalar.ph555.prol.loopexit, label %scalar.ph555.prol, !llvm.loop !151

scalar.ph555.prol.loopexit:                       ; preds = %scalar.ph555.prol, %scalar.ph555.preheader
  %indvars.iv344.i.unr = phi i64 [ %indvars.iv344.i.ph, %scalar.ph555.preheader ], [ %indvars.iv.next345.i.prol, %scalar.ph555.prol ]
  %.0111302.i.unr = phi ptr [ %.0111302.i.ph, %scalar.ph555.preheader ], [ %i.ns, %scalar.ph555.prol ]
  %i.nt = sub nsw i64 %indvars.iv344.i.ph, %wide.trip.count347.i
  %i.nu = icmp ugt i64 %i.nt, -8
  br i1 %i.nu, label %._crit_edge306.i, label %scalar.ph555

._crit_edge306.i:                                 ; preds = %scalar.ph555.prol.loopexit, %scalar.ph555, %middle.block573
  %indvars.iv.next350.i = add nuw nsw i64 %indvars.iv349.i, 1 ; 2 uses
  %exitcond353.not.i = icmp eq i64 %indvars.iv.next350.i, %wide.trip.count352.i
  br i1 %exitcond353.not.i, label %.loopexit.i, label %.lr.ph305.i, !llvm.loop !152

scalar.ph555:                                     ; preds = %scalar.ph555.prol.loopexit, %scalar.ph555
  %indvars.iv344.i = phi i64 [ %indvars.iv.next345.i.7, %scalar.ph555 ], [ %indvars.iv344.i.unr, %scalar.ph555.prol.loopexit ] ; 9 uses
  %.0111302.i = phi ptr [ %i.pp, %scalar.ph555 ], [ %.0111302.i.unr, %scalar.ph555.prol.loopexit ] ; 9 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv344.i
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !277
  %i.nx = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.nw, i64 0
  %i.ny = shufflevector <4 x float> %i.nx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ny, ptr %.0111302.i, align 4, !tbaa !277
  %i.nz = getelementptr inbounds nuw i8, ptr %.0111302.i, i64 16
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv344.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !277
  %i.od = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.oc, i64 0
  %i.oe = shufflevector <4 x float> %i.od, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.oe, ptr %i.nz, align 4, !tbaa !277
  %i.of = getelementptr inbounds nuw i8, ptr %.0111302.i, i64 32
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv344.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !277
  %i.oj = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.oi, i64 0
  %i.ok = shufflevector <4 x float> %i.oj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ok, ptr %i.of, align 4, !tbaa !277
  %i.ol = getelementptr inbounds nuw i8, ptr %.0111302.i, i64 48
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv344.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 12
  %i.oo = load float, ptr %i.on, align 4, !tbaa !277
  %i.op = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.oo, i64 0
  %i.oq = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.oq, ptr %i.ol, align 4, !tbaa !277
  %i.or = getelementptr inbounds nuw i8, ptr %.0111302.i, i64 64
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv344.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !277
  %i.ov = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ou, i64 0
  %i.ow = shufflevector <4 x float> %i.ov, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ow, ptr %i.or, align 4, !tbaa !277
  %i.ox = getelementptr inbounds nuw i8, ptr %.0111302.i, i64 80
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv344.i
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 20
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !277
  %i.pb = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.pa, i64 0
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.pc, ptr %i.ox, align 4, !tbaa !277
  %i.pd = getelementptr inbounds nuw i8, ptr %.0111302.i, i64 96
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv344.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !277
  %i.ph = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.pg, i64 0
  %i.pi = shufflevector <4 x float> %i.ph, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.pi, ptr %i.pd, align 4, !tbaa !277
  %indvars.iv.next345.i.6 = add nuw nsw i64 %indvars.iv344.i, 7 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.0111302.i, i64 112
  %i.pk = icmp samesign ult i64 %indvars.iv.next345.i.6, %i.li
  call void @llvm.assume(i1 %i.pk)
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv.next345.i.6
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !277
  %i.pn = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.pm, i64 0
  %i.po = shufflevector <4 x float> %i.pn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.po, ptr %i.pj, align 4, !tbaa !277
  %indvars.iv.next345.i.7 = add nuw nsw i64 %indvars.iv344.i, 8 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.0111302.i, i64 128
  %exitcond348.not.i.7 = icmp eq i64 %indvars.iv.next345.i.7, %wide.trip.count347.i
  br i1 %exitcond348.not.i.7, label %._crit_edge306.i, label %scalar.ph555, !llvm.loop !153

.thread281.i:                                     ; preds = %.noexc267
  %i.pq = load ptr, ptr %13, align 8, !tbaa !254  ; 17 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 553
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !123
  %i.pt = icmp eq i8 %i.ps, 0
  %i.pu = load i32, ptr %i.ip, align 8, !tbaa !295 ; 3 uses
  %i.pv = icmp sgt i32 %i.pu, 0                   ; 2 uses
  br i1 %i.pt, label %.preheader285.i, label %.preheader288.i

.preheader288.i:                                  ; preds = %.thread281.i
  br i1 %i.pv, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader288.i
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pq, i64 568
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !121, !noalias !304
  %i.py = getelementptr inbounds nuw i8, ptr %i.pq, i64 592
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !124, !noalias !304
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pq, i64 608
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !125, !noalias !304
  %i.qc = mul nsw i32 %i.qb, %i.pz                ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !126, !noalias !304
  %i.qf = ashr i32 %i.qe, 2                       ; 3 uses
  %i.qg = icmp ne i32 %i.qf, 0
  call void @llvm.assume(i1 %i.qg)
  %i.qh = icmp sge i32 %i.qf, %i.qc
  call void @llvm.assume(i1 %i.qh)
  %i.qi = load i32, ptr %i.io, align 4, !tbaa !297 ; 4 uses
  %i.qj = sext i32 %i.qi to i64
  %factor.op.mul.i = shl nuw nsw i64 %i.qj, 2
  %i.qk = icmp sgt i32 %i.qi, 0
  br i1 %i.qk, label %.preheader287.lr.ph.preheader.i, label %.loopexit.i

.preheader287.lr.ph.preheader.i:                  ; preds = %.lr.ph.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pq, i64 612
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !127, !noalias !304
  %i.qn = zext nneg i32 %i.qc to i64              ; 5 uses
  %i.qo = zext nneg i32 %i.qf to i64
  %i.qp = zext nneg i32 %i.qm to i64
  %wide.trip.count328.i = zext nneg i32 %i.pu to i64
  %wide.trip.count.i = zext nneg i32 %i.qi to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.qq = icmp ult i32 %i.qi, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod633 = icmp ne i64 %xtraiter, 0
  br label %.preheader287.lr.ph.i

.preheader285.i:                                  ; preds = %.thread281.i
  br i1 %i.pv, label %.lr.ph299.i, label %.loopexit.i

.lr.ph299.i:                                      ; preds = %.preheader285.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pq, i64 568
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !121, !noalias !305
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pq, i64 592
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !124, !noalias !305
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pq, i64 608
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !125, !noalias !305
  %i.qx = mul nsw i32 %i.qw, %i.qu                ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !126, !noalias !305
  %i.ra = ashr i32 %i.qz, 1                       ; 3 uses
  %i.rb = icmp ne i32 %i.ra, 0
  call void @llvm.assume(i1 %i.rb)
  %i.rc = icmp sge i32 %i.ra, %i.qx
  call void @llvm.assume(i1 %i.rc)
  %i.rd = load i32, ptr %i.io, align 4, !tbaa !297 ; 4 uses
  %i.re = sext i32 %i.rd to i64
  %factor.op.mul300.i = shl nuw nsw i64 %i.re, 2
  %i.rf = icmp sgt i32 %i.rd, 0
  br i1 %i.rf, label %.preheader284.lr.ph.preheader.i, label %.loopexit.i

.preheader284.lr.ph.preheader.i:                  ; preds = %.lr.ph299.i
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pq, i64 612
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !127, !noalias !305
  %i.ri = zext nneg i32 %i.qx to i64              ; 5 uses
  %i.rj = zext nneg i32 %i.ra to i64
  %i.rk = zext nneg i32 %i.rh to i64
  %wide.trip.count342.i = zext nneg i32 %i.pu to i64
  %wide.trip.count337.i = zext nneg i32 %i.rd to i64 ; 2 uses
  %xtraiter634 = and i64 %wide.trip.count337.i, 3 ; 3 uses
  %i.rl = icmp ult i32 %i.rd, 4
  %unroll_iter638 = and i64 %wide.trip.count337.i, 2147483644
  %lcmp.mod636.not = icmp eq i64 %xtraiter634, 0
  %lcmp.mod637 = icmp ne i64 %xtraiter634, 0
  br label %.preheader284.lr.ph.i

.preheader284.lr.ph.i:                            ; preds = %._crit_edge297.i, %.preheader284.lr.ph.preheader.i
  %indvars.iv339.i = phi i64 [ 0, %.preheader284.lr.ph.preheader.i ], [ %indvars.iv.next340.i, %._crit_edge297.i ] ; 4 uses
  %.reass301.i = mul nuw i64 %factor.op.mul300.i, %indvars.iv339.i
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %.reass301.i ; 2 uses
  %i.rn = icmp samesign ult i64 %indvars.iv339.i, %i.rk
  call void @llvm.assume(i1 %i.rn)
  %i.ro = mul nuw nsw i64 %indvars.iv339.i, %i.rj
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %i.ro ; 5 uses
  br i1 %i.rl, label %.preheader284.i.epil.preheader, label %.preheader284.i

.preheader284.i:                                  ; preds = %.preheader284.lr.ph.i, %.preheader284.i
  %indvars.iv334.i = phi i64 [ %indvars.iv.next335.i.3, %.preheader284.i ], [ 0, %.preheader284.lr.ph.i ] ; 5 uses
  %.0108295.i = phi ptr [ %i.ue, %.preheader284.i ], [ %i.rm, %.preheader284.lr.ph.i ] ; 5 uses
  %niter639 = phi i64 [ %niter639.next.3, %.preheader284.i ], [ 0, %.preheader284.lr.ph.i ]
  %i.rq = trunc nuw nsw i64 %indvars.iv334.i to i32
  %i.rr = mul i32 %i.ke, %i.rq
  %i.rs = zext i32 %i.rr to i64                   ; 2 uses
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.rp, i64 %i.rs ; 2 uses
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !270
  %i.rv = uitofp reassoc nsz arcp contract afn i16 %i.ru to float
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 2
  %i.rx = or disjoint i64 %i.rs, 2
  %i.ry = icmp samesign ult i64 %i.rx, %i.ri
  call void @llvm.assume(i1 %i.ry)
  %i.rz = load <2 x i16>, ptr %i.rw, align 2, !tbaa !270
  %i.sa = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.rv, i64 0
  %i.sb = shufflevector <2 x i16> %i.rz, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sc = uitofp <4 x i16> %i.sb to <4 x float>
  %i.sd = shufflevector <4 x float> %i.sa, <4 x float> %i.sc, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.se = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.sd, <float f0x37800080, float f0x37800080, float f0x37800080, float 0.000000e+00>
  store <4 x float> %i.se, ptr %.0108295.i, align 4, !tbaa !277
  %i.sf = getelementptr inbounds nuw i8, ptr %.0108295.i, i64 16
  %i.sg = trunc i64 %indvars.iv334.i to i32
  %i.sh = or disjoint i32 %i.sg, 1
  %i.si = mul i32 %i.ke, %i.sh
  %i.sj = zext i32 %i.si to i64                   ; 2 uses
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.rp, i64 %i.sj ; 2 uses
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !270
  %i.sm = uitofp reassoc nsz arcp contract afn i16 %i.sl to float
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 2
  %i.so = add nuw nsw i64 %i.sj, 2
  %i.sp = icmp samesign ult i64 %i.so, %i.ri
  call void @llvm.assume(i1 %i.sp)
  %i.sq = load <2 x i16>, ptr %i.sn, align 2, !tbaa !270
  %i.sr = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.sm, i64 0
  %i.ss = shufflevector <2 x i16> %i.sq, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.st = uitofp <4 x i16> %i.ss to <4 x float>
  %i.su = shufflevector <4 x float> %i.sr, <4 x float> %i.st, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.sv = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.su, <float f0x37800080, float f0x37800080, float f0x37800080, float 0.000000e+00>
  store <4 x float> %i.sv, ptr %i.sf, align 4, !tbaa !277
  %i.sw = getelementptr inbounds nuw i8, ptr %.0108295.i, i64 32
  %i.sx = trunc i64 %indvars.iv334.i to i32
  %i.sy = or disjoint i32 %i.sx, 2
  %i.sz = mul i32 %i.ke, %i.sy
  %i.ta = zext i32 %i.sz to i64                   ; 2 uses
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.rp, i64 %i.ta ; 2 uses
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !270
  %i.td = uitofp reassoc nsz arcp contract afn i16 %i.tc to float
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 2
  %i.tf = add nuw nsw i64 %i.ta, 2
  %i.tg = icmp samesign ult i64 %i.tf, %i.ri
  call void @llvm.assume(i1 %i.tg)
  %i.th = load <2 x i16>, ptr %i.te, align 2, !tbaa !270
  %i.ti = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.td, i64 0
  %i.tj = shufflevector <2 x i16> %i.th, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tk = uitofp <4 x i16> %i.tj to <4 x float>
  %i.tl = shufflevector <4 x float> %i.ti, <4 x float> %i.tk, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.tm = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.tl, <float f0x37800080, float f0x37800080, float f0x37800080, float 0.000000e+00>
  store <4 x float> %i.tm, ptr %i.sw, align 4, !tbaa !277
  %i.tn = getelementptr inbounds nuw i8, ptr %.0108295.i, i64 48
  %i.to = trunc i64 %indvars.iv334.i to i32
  %i.tp = or disjoint i32 %i.to, 3
  %i.tq = mul i32 %i.ke, %i.tp
  %i.tr = zext i32 %i.tq to i64                   ; 2 uses
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.rp, i64 %i.tr ; 2 uses
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !270
  %i.tu = uitofp reassoc nsz arcp contract afn i16 %i.tt to float
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 2
  %i.tw = add nuw nsw i64 %i.tr, 2
  %i.tx = icmp samesign ult i64 %i.tw, %i.ri
  call void @llvm.assume(i1 %i.tx)
  %i.ty = load <2 x i16>, ptr %i.tv, align 2, !tbaa !270
  %i.tz = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.tu, i64 0
  %i.ua = shufflevector <2 x i16> %i.ty, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ub = uitofp <4 x i16> %i.ua to <4 x float>
  %i.uc = shufflevector <4 x float> %i.tz, <4 x float> %i.ub, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ud = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.uc, <float f0x37800080, float f0x37800080, float f0x37800080, float 0.000000e+00>
  store <4 x float> %i.ud, ptr %i.tn, align 4, !tbaa !277
  %indvars.iv.next335.i.3 = add nuw nsw i64 %indvars.iv334.i, 4 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.0108295.i, i64 64 ; 2 uses
  %niter639.next.3 = add i64 %niter639, 4         ; 2 uses
  %niter639.ncmp.3 = icmp eq i64 %niter639.next.3, %unroll_iter638
  br i1 %niter639.ncmp.3, label %._crit_edge297.i.unr-lcssa, label %.preheader284.i, !llvm.loop !158

._crit_edge297.i.unr-lcssa:                       ; preds = %.preheader284.i
  br i1 %lcmp.mod636.not, label %._crit_edge297.i, label %.preheader284.i.epil.preheader

.preheader284.i.epil.preheader:                   ; preds = %._crit_edge297.i.unr-lcssa, %.preheader284.lr.ph.i
  %indvars.iv334.i.epil.init = phi i64 [ 0, %.preheader284.lr.ph.i ], [ %indvars.iv.next335.i.3, %._crit_edge297.i.unr-lcssa ]
  %.0108295.i.epil.init = phi ptr [ %i.rm, %.preheader284.lr.ph.i ], [ %i.ue, %._crit_edge297.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod637)
  br label %.preheader284.i.epil

.preheader284.i.epil:                             ; preds = %.preheader284.i.epil, %.preheader284.i.epil.preheader
  %indvars.iv334.i.epil = phi i64 [ %indvars.iv334.i.epil.init, %.preheader284.i.epil.preheader ], [ %indvars.iv.next335.i.epil, %.preheader284.i.epil ] ; 2 uses
  %.0108295.i.epil = phi ptr [ %.0108295.i.epil.init, %.preheader284.i.epil.preheader ], [ %i.uu, %.preheader284.i.epil ] ; 2 uses
  %epil.iter635 = phi i64 [ 0, %.preheader284.i.epil.preheader ], [ %epil.iter635.next, %.preheader284.i.epil ]
  %i.uf = trunc nuw nsw i64 %indvars.iv334.i.epil to i32
  %i.ug = mul i32 %i.ke, %i.uf
  %i.uh = zext i32 %i.ug to i64                   ; 2 uses
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %i.rp, i64 %i.uh ; 2 uses
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !270
  %i.uk = uitofp reassoc nsz arcp contract afn i16 %i.uj to float
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 2
  %i.um = add nuw nsw i64 %i.uh, 2
  %i.un = icmp samesign ult i64 %i.um, %i.ri
  call void @llvm.assume(i1 %i.un)
  %i.uo = load <2 x i16>, ptr %i.ul, align 2, !tbaa !270
  %i.up = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.uk, i64 0
  %i.uq = shufflevector <2 x i16> %i.uo, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ur = uitofp <4 x i16> %i.uq to <4 x float>
  %i.us = shufflevector <4 x float> %i.up, <4 x float> %i.ur, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ut = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.us, <float f0x37800080, float f0x37800080, float f0x37800080, float 0.000000e+00>
  store <4 x float> %i.ut, ptr %.0108295.i.epil, align 4, !tbaa !277
  %indvars.iv.next335.i.epil = add nuw nsw i64 %indvars.iv334.i.epil, 1
  %i.uu = getelementptr inbounds nuw i8, ptr %.0108295.i.epil, i64 16
  %epil.iter635.next = add i64 %epil.iter635, 1   ; 2 uses
  %epil.iter635.cmp.not = icmp eq i64 %epil.iter635.next, %xtraiter634
  br i1 %epil.iter635.cmp.not, label %._crit_edge297.i, label %.preheader284.i.epil, !llvm.loop !159

._crit_edge297.i:                                 ; preds = %.preheader284.i.epil, %._crit_edge297.i.unr-lcssa
  %indvars.iv.next340.i = add nuw nsw i64 %indvars.iv339.i, 1 ; 2 uses
  %exitcond343.not.i = icmp eq i64 %indvars.iv.next340.i, %wide.trip.count342.i
  br i1 %exitcond343.not.i, label %.loopexit.i, label %.preheader284.lr.ph.i, !llvm.loop !160

.preheader287.lr.ph.i:                            ; preds = %._crit_edge.i, %.preheader287.lr.ph.preheader.i
  %indvars.iv325.i = phi i64 [ 0, %.preheader287.lr.ph.preheader.i ], [ %indvars.iv.next326.i, %._crit_edge.i ] ; 4 uses
  %.reass.i = mul nuw i64 %factor.op.mul.i, %indvars.iv325.i
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %.reass.i ; 2 uses
  %i.uw = icmp samesign ult i64 %indvars.iv325.i, %i.qp
  call void @llvm.assume(i1 %i.uw)
  %i.ux = mul nuw nsw i64 %indvars.iv325.i, %i.qo
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.ux ; 10 uses
  br i1 %i.qq, label %.preheader287.i.epil.preheader, label %.preheader287.i

.preheader287.i:                                  ; preds = %.preheader287.lr.ph.i, %.preheader287.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader287.i ], [ 0, %.preheader287.lr.ph.i ] ; 5 uses
  %.0104291.i = phi ptr [ %i.xj, %.preheader287.i ], [ %i.uv, %.preheader287.lr.ph.i ] ; 13 uses
  %niter = phi i64 [ %niter.next.3, %.preheader287.i ], [ 0, %.preheader287.lr.ph.i ]
  %i.uz = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.va = mul i32 %i.ke, %i.uz
  %i.vb = zext i32 %i.va to i64                   ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.vb ; 2 uses
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !277
  store float %i.vd, ptr %.0104291.i, align 4, !tbaa !277
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !277
  %i.vg = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 4
  store float %i.vf, ptr %i.vg, align 4, !tbaa !277
  %i.vh = or disjoint i64 %i.vb, 2                ; 2 uses
  %i.vi = icmp samesign ult i64 %i.vh, %i.qn
  call void @llvm.assume(i1 %i.vi)
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.vh
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !277
  %i.vl = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 8
  %i.vm = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vk, i64 0
  store <2 x float> %i.vm, ptr %i.vl, align 4, !tbaa !277
  %i.vn = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 16
  %i.vo = trunc i64 %indvars.iv.i to i32
  %i.vp = or disjoint i32 %i.vo, 1
  %i.vq = mul i32 %i.ke, %i.vp
  %i.vr = zext i32 %i.vq to i64                   ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.vr ; 2 uses
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !277
  store float %i.vt, ptr %i.vn, align 4, !tbaa !277
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !277
  %i.vw = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 20
  store float %i.vv, ptr %i.vw, align 4, !tbaa !277
  %i.vx = add nuw nsw i64 %i.vr, 2                ; 2 uses
  %i.vy = icmp samesign ult i64 %i.vx, %i.qn
  call void @llvm.assume(i1 %i.vy)
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.vx
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !277
  %i.wb = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 24
  %i.wc = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wa, i64 0
  store <2 x float> %i.wc, ptr %i.wb, align 4, !tbaa !277
  %i.wd = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 32
  %i.we = trunc i64 %indvars.iv.i to i32
  %i.wf = or disjoint i32 %i.we, 2
  %i.wg = mul i32 %i.ke, %i.wf
  %i.wh = zext i32 %i.wg to i64                   ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.wh ; 2 uses
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !277
  store float %i.wj, ptr %i.wd, align 4, !tbaa !277
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !277
  %i.wm = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 36
  store float %i.wl, ptr %i.wm, align 4, !tbaa !277
  %i.wn = add nuw nsw i64 %i.wh, 2                ; 2 uses
  %i.wo = icmp samesign ult i64 %i.wn, %i.qn
  call void @llvm.assume(i1 %i.wo)
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.wn
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !277
  %i.wr = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 40
  %i.ws = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wq, i64 0
  store <2 x float> %i.ws, ptr %i.wr, align 4, !tbaa !277
  %i.wt = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 48
  %i.wu = trunc i64 %indvars.iv.i to i32
  %i.wv = or disjoint i32 %i.wu, 3
  %i.ww = mul i32 %i.ke, %i.wv
  %i.wx = zext i32 %i.ww to i64                   ; 2 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.wx ; 2 uses
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !277
  store float %i.wz, ptr %i.wt, align 4, !tbaa !277
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 4
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !277
  %i.xc = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 52
  store float %i.xb, ptr %i.xc, align 4, !tbaa !277
  %i.xd = add nuw nsw i64 %i.wx, 2                ; 2 uses
  %i.xe = icmp samesign ult i64 %i.xd, %i.qn
  call void @llvm.assume(i1 %i.xe)
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.xd
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !277
  %i.xh = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 56
  %i.xi = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xg, i64 0
  store <2 x float> %i.xi, ptr %i.xh, align 4, !tbaa !277
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 64 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader287.i, !llvm.loop !161

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader287.i
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.preheader287.i.epil.preheader

.preheader287.i.epil.preheader:                   ; preds = %._crit_edge.i.unr-lcssa, %.preheader287.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader287.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  %.0104291.i.epil.init = phi ptr [ %i.uv, %.preheader287.lr.ph.i ], [ %i.xj, %._crit_edge.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod633)
  br label %.preheader287.i.epil

.preheader287.i.epil:                             ; preds = %.preheader287.i.epil, %.preheader287.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader287.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader287.i.epil ] ; 2 uses
  %.0104291.i.epil = phi ptr [ %.0104291.i.epil.init, %.preheader287.i.epil.preheader ], [ %i.xy, %.preheader287.i.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.preheader287.i.epil.preheader ], [ %epil.iter.next, %.preheader287.i.epil ]
  %i.xk = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %i.xl = mul i32 %i.ke, %i.xk
  %i.xm = zext i32 %i.xl to i64                   ; 2 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.xm ; 2 uses
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !277
  store float %i.xo, ptr %.0104291.i.epil, align 4, !tbaa !277
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 4
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !277
  %i.xr = getelementptr inbounds nuw i8, ptr %.0104291.i.epil, i64 4
  store float %i.xq, ptr %i.xr, align 4, !tbaa !277
  %i.xs = add nuw nsw i64 %i.xm, 2                ; 2 uses
  %i.xt = icmp samesign ult i64 %i.xs, %i.qn
  call void @llvm.assume(i1 %i.xt)
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.xs
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !277
  %i.xw = getelementptr inbounds nuw i8, ptr %.0104291.i.epil, i64 8
  %i.xx = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xv, i64 0
  store <2 x float> %i.xx, ptr %i.xw, align 4, !tbaa !277
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.xy = getelementptr inbounds nuw i8, ptr %.0104291.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.preheader287.i.epil, !llvm.loop !162

._crit_edge.i:                                    ; preds = %.preheader287.i.epil, %._crit_edge.i.unr-lcssa
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1 ; 2 uses
  %exitcond329.not.i = icmp eq i64 %indvars.iv.next326.i, %wide.trip.count328.i
  br i1 %exitcond329.not.i, label %.loopexit.i, label %.preheader287.lr.ph.i, !llvm.loop !163

.loopexit.i:                                      ; preds = %._crit_edge.i, %._crit_edge297.i, %._crit_edge306.i, %._crit_edge315.i, %.lr.ph299.i, %.preheader285.i, %.lr.ph.i, %.preheader288.i, %.lr.ph317.i, %.preheader.i, %.lr.ph308.i, %.preheader282.i
  %i.xz = phi ptr [ %i.pq, %._crit_edge297.i ], [ %i.kl, %._crit_edge306.i ], [ %i.kl, %._crit_edge315.i ], [ %i.kl, %.lr.ph317.i ], [ %i.pq, %.preheader288.i ], [ %i.pq, %.lr.ph.i ], [ %i.pq, %.preheader285.i ], [ %i.pq, %.lr.ph299.i ], [ %i.kl, %.preheader282.i ], [ %i.kl, %.lr.ph308.i ], [ %i.kl, %.preheader.i ], [ %i.pq, %._crit_edge.i ]
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 2, ptr %i.ya, align 16, !tbaa !293
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 9, ptr %i.yb, align 8, !tbaa !294
  %i.yc = load ptr, ptr @_ZL4meta, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xz, i64 320
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !23 ; 4 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.yf, ptr %3, align 8, !tbaa !19
  %i.yg = icmp eq ptr %i.ye, null
  br i1 %i.yg, label %.noexc.i, label %bb.bn

.noexc.i:                                         ; preds = %.loopexit.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #24
          to label %.noexc268 unwind label %bb.ct

.noexc268:                                        ; preds = %.noexc.i
  unreachable

bb.bn:                                            ; preds = %.loopexit.i
  %i.yh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ye) #23 ; 8 uses
  %i.yi = icmp ugt i64 %i.yh, 15
  br i1 %i.yi, label %bb.bo, label %._crit_edge.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.yj = icmp slt i64 %i.yh, 0
  br i1 %i.yj, label %.noexc.i.i, label %bb.bp

.noexc.i.i:                                       ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
          to label %.noexc269 unwind label %bb.ct

.noexc269:                                        ; preds = %.noexc.i.i
  unreachable

bb.bp:                                            ; preds = %bb.bo
  %i.yk = add nuw i64 %i.yh, 1                    ; 2 uses
  %i.yl = icmp slt i64 %i.yk, 0
  br i1 %i.yl, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !20

.noexc11.i.i:                                     ; preds = %bb.bp
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc270 unwind label %bb.ct
end_hunk_1
