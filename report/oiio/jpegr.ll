Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jpegr?download=true
inline.NumInlined: 1677
inline.NumDeleted: 807
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN8ultrahdr5JpegR11decodeJPEGREP21uhdr_compressed_imageP14uhdr_raw_imagef19uhdr_color_transfer12uhdr_img_fmtS4_P21uhdr_gainmap_metadata:bb.a

bb.ak:                                            ; preds = %bb.a, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret void
}

declare void @_ZN8ultrahdr14copy_raw_imageEP14uhdr_raw_imageS1_(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS2_(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 %6, float noundef %7, ptr noundef %8) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::tuple", align 4        ; 6 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %12 = alloca %"struct.ultrahdr::ShepardsIDW", align 8 ; 14 uses
  %13 = alloca %"struct.ultrahdr::GainLUT", align 8 ; 10 uses
  %14 = alloca %"class.ultrahdr::JobQueue", align 8 ; 13 uses
  %15 = alloca %"class.std::function", align 8    ; 13 uses
  %16 = alloca %class.anon.35, align 8            ; 16 uses
  %17 = alloca %"class.std::vector.36", align 8   ; 12 uses
  %18 = alloca %"class.std::thread", align 8      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.c = load i64, ptr %i.b, align 8, !tbaa !76   ; 3 uses
  %cond = icmp eq i64 %i.c, 0
  %.pre207 = load ptr, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  br i1 %cond, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 3)
  %bcmp = tail call i32 @bcmp(ptr %.pre207, ptr nonnull @.str.4, i64 %.sroa.speculated.i)
  %.not.i = icmp eq i32 %bcmp, 0
  %.not = icmp eq i64 %i.c, 3
  %or.cond185 = and i1 %.not, %.not.i
  br i1 %or.cond185, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread: ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  store i32 6, ptr %0, align 4, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 256, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.4, ptr noundef %.pre207) #28 ; 0 uses
  br label %bb.bt

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  tail call void @_ZN8ultrahdr41uhdr_validate_gainmap_metadata_descriptorEP21uhdr_gainmap_metadata(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull %4)
  %i.g = load i32, ptr %0, align 4, !tbaa !68
  %.not112 = icmp eq i32 %i.g, 0
  br i1 %.not112, label %bb.c, label %bb.bt

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %2, align 8, !tbaa !65     ; 2 uses
  switch i32 %i.h, label %bb.d [
    i32 6, label %bb.e
    i32 7, label %bb.e
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  store i32 6, ptr %0, align 4, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 256, ptr noundef nonnull @.str.29, i32 noundef %i.h) #28 ; 0 uses
  br label %bb.bt

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.l = load i32, ptr %3, align 8, !tbaa !65     ; 2 uses
  switch i32 %i.l, label %bb.f [
    i32 2, label %bb.g
    i32 11, label %bb.g
    i32 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store i32 6, ptr %0, align 4, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.m, align 4, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 256, ptr noundef nonnull @.str.30, i32 noundef %i.l) #28 ; 0 uses
  br label %bb.bt

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !80   ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  %spec.select = select i1 %i.r, i32 0, i32 %i.q  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !80   ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  %i.v = select i1 %i.u, i32 %spec.select, i32 %i.t ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !133
  %.not119 = icmp eq i32 %i.y, 0
  br i1 %.not119, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call noundef ptr @_ZN8ultrahdr20getGamutConversionFnE16uhdr_color_gamutS0_(i32 noundef %i.v, i32 noundef %spec.select) ; 2 uses
  %.pr = load i32, ptr %i.x, align 4, !tbaa !133
  %.not120 = icmp eq i32 %.pr, 0
  br i1 %.not120, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %i.z, %bb.h ], [ @_ZN8ultrahdr18identityConversionENS_5ColorE, %bb.g ]
  %i.ab = tail call noundef ptr @_ZN8ultrahdr20getGamutConversionFnE16uhdr_color_gamutS0_(i32 noundef %i.v, i32 noundef %spec.select)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  %i.ac = phi ptr [ %i.aa, %.thread ], [ %i.z, %bb.h ] ; 2 uses
  %i.ad = phi ptr [ %i.ab, %.thread ], [ @_ZN8ultrahdr18identityConversionENS_5ColorE, %bb.h ] ; 2 uses
  %i.ae = icmp eq ptr %i.ac, null
  %i.af = icmp eq ptr %i.ad, null
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %0, align 4, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ag, align 4, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ah, i64 noundef 256, ptr noundef nonnull @.str.31, i32 noundef %spec.select, i32 noundef %i.v) #28 ; 0 uses
  br label %bb.bt

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store ptr null, ptr %10, align 8, !tbaa !79
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !104 ; 2 uses
  %i.ao = load i32, ptr %i.aj, align 8, !tbaa !134 ; 2 uses
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !104
  %i.aq = load i32, ptr %i.al, align 8, !tbaa !134
  %i.ar = uitofp i32 %i.aq to float               ; 2 uses
  %i.as = uitofp i32 %i.ao to float               ; 2 uses
  %i.at = uitofp i32 %i.ap to float
  %i.au = uitofp i32 %i.an to float
  %i.av = insertelement <2 x float> poison, float %i.as, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.ar, i64 1
  %i.ax = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.at, i64 1
  %i.az = fdiv contract <2 x float> %i.aw, %i.ay  ; 3 uses
  %i.ba = extractelement <2 x float> %i.az, i64 0
  %shift = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub contract <2 x float> %i.az, %shift
  %i.bb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bc = tail call contract noundef float @llvm.fabs.f32(float %i.bb)
  %i.bd = fdiv contract float %i.bc, %i.ba
  %i.be = fcmp contract ogt float %i.bd, f0x3C23D70A
  br i1 %i.be, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN8ultrahdr12resize_imageEP14uhdr_raw_imageii(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull %3, i32 noundef %i.ao, i32 noundef %i.an)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #28 ; 0 uses
  call void @_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.bg = load ptr, ptr %10, align 8, !tbaa !71   ; 3 uses
  %.not.i132 = icmp eq ptr %i.bg, null
  %.pre = load i32, ptr %i.aj, align 8, !tbaa !134 ; 2 uses
  br i1 %.not.i132, label %.critedge, label %._crit_edge204

._crit_edge204:                                   ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.pre205 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !134
  %.pre208 = uitofp i32 %.pre to float
  %.pre209 = uitofp i32 %.pre205 to float
  br label %bb.o

.critedge:                                        ; preds = %bb.m
  store i32 6, ptr %0, align 4, !tbaa !68
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bh, align 4, !tbaa !69
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load i32, ptr %i.al, align 8, !tbaa !134
  %i.bk = load i32, ptr %i.am, align 4, !tbaa !104
  %i.bl = load i32, ptr %i.ak, align 4, !tbaa !104
  %i.bm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bi, i64 noundef 256, ptr noundef nonnull @.str.32, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %.pre, i32 noundef %i.bl) #28 ; 0 uses
  br label %bb.bp

bb.n:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.bs

bb.o:                                             ; preds = %._crit_edge204, %bb.k
  %.pre-phi210 = phi float [ %.pre209, %._crit_edge204 ], [ %i.ar, %bb.k ]
  %.pre-phi = phi float [ %.pre208, %._crit_edge204 ], [ %i.as, %bb.k ]
  %.1 = phi ptr [ %i.bg, %._crit_edge204 ], [ %3, %bb.k ]
  %i.bo = fdiv contract float %.pre-phi, %.pre-phi210 ; 2 uses
  %i.bp = call contract float @llvm.round.f32(float %i.bo)
  %i.bq = fptosi float %i.bp to i32
  %.sroa.speculated173 = call i32 @llvm.umax.i32(i32 %i.bq, i32 1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store i32 %.sroa.speculated173, ptr %12, align 8, !tbaa !420
  %i.br = shl i32 %.sroa.speculated173, 2
  %i.bs = mul i32 %i.br, %.sroa.speculated173
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2                ; 4 uses
  %i.bv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bu) #31
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !212
  %i.bx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bu) #31
          to label %.noexc133 unwind label %bb.q

.noexc133:                                        ; preds = %.noexc
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !213
  %i.bz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bu) #31
          to label %.noexc134 unwind label %bb.q

.noexc134:                                        ; preds = %.noexc133
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !214
  %i.cb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bu) #31
          to label %.noexc135 unwind label %bb.q

.noexc135:                                        ; preds = %.noexc134
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !215
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !212
  invoke void @_ZN8ultrahdr11ShepardsIDW15fillShepardsIDWEPfii(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %i.cd, i32 noundef 1, i32 noundef 1)
          to label %.noexc136 unwind label %bb.q

.noexc136:                                        ; preds = %.noexc135
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !213
  invoke void @_ZN8ultrahdr11ShepardsIDW15fillShepardsIDWEPfii(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %i.ce, i32 noundef 0, i32 noundef 1)
          to label %.noexc137 unwind label %bb.q

.noexc137:                                        ; preds = %.noexc136
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !214
  invoke void @_ZN8ultrahdr11ShepardsIDW15fillShepardsIDWEPfii(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %i.cf, i32 noundef 1, i32 noundef 0)
          to label %.noexc138 unwind label %bb.q

.noexc138:                                        ; preds = %.noexc137
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !215
  invoke void @_ZN8ultrahdr11ShepardsIDW15fillShepardsIDWEPfii(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %i.cg, i32 noundef 0, i32 noundef 0)
          to label %_ZN8ultrahdr11ShepardsIDWC2Ei.exit unwind label %bb.q

_ZN8ultrahdr11ShepardsIDWC2Ei.exit:               ; preds = %.noexc138
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !169 ; 4 uses
  %i.cj = fcmp contract olt float %i.ci, %7
  %.sroa.speculated179 = select i1 %i.cj, float %i.ci, float %7 ; 2 uses
  %i.ck = fcmp contract une float %.sroa.speculated179, %i.ci
  br i1 %i.ck, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN8ultrahdr11ShepardsIDWC2Ei.exit
  %i.cl = call contract noundef float @log2f(float noundef %.sroa.speculated179) #28, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !170 ; 2 uses
  %i.co = call contract noundef float @log2f(float noundef %i.cn) #28, !tbaa !15
  %i.cp = fsub contract float %i.cl, %i.co
  %i.cq = call contract noundef float @log2f(float noundef %i.ci) #28, !tbaa !15
  %i.cr = call contract noundef float @log2f(float noundef %i.cn) #28, !tbaa !15
  %i.cs = fsub contract float %i.cq, %i.cr
  %i.ct = fdiv contract float %i.cp, %i.cs        ; 2 uses
  %i.cu = fcmp contract ogt float %i.ct, 0.000000e+00
  %i.cv = select contract i1 %i.cu, float %i.ct, float 0.000000e+00
  br label %bb.r

bb.q:                                             ; preds = %.noexc138, %.noexc137, %.noexc136, %.noexc135, %.noexc134, %.noexc133, %.noexc, %bb.o
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.r:                                             ; preds = %_ZN8ultrahdr11ShepardsIDWC2Ei.exit, %bb.p
  %.090 = phi float [ %i.cv, %bb.p ], [ 1.000000e+00, %_ZN8ultrahdr11ShepardsIDWC2Ei.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN8ultrahdr7GainLUTC2EPNS_25uhdr_gainmap_metadata_extEf(ptr noundef nonnull align 8 dereferenceable(60) %13, ptr noundef nonnull %4, float noundef %.090)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %2, align 8, !tbaa !65
  %i.cy = invoke noundef ptr @_ZN8ultrahdr10getPixelFnE12uhdr_img_fmt(i32 noundef %i.cx)
          to label %bb.t unwind label %bb.w       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  store i32 6, ptr %0, align 4, !tbaa !68
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.da, align 4, !tbaa !69
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load i32, ptr %2, align 8, !tbaa !65
  %i.dd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.db, i64 noundef 256, ptr noundef nonnull @.str.22, i32 noundef %i.dc) #28 ; 0 uses
  br label %bb.az

bb.v:                                             ; preds = %bb.r
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.w:                                             ; preds = %bb.s
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZN8ultrahdr8JobQueueC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %14)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  store ptr %2, ptr %16, align 8, !tbaa !219
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.1, ptr %i.dg, align 8, !tbaa !220
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %8, ptr %i.dh, align 8, !tbaa !221
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %14, ptr %i.di, align 8, !tbaa !118
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %12, ptr %i.dj, align 8, !tbaa !222
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 %5, ptr %i.dk, align 8, !tbaa !223
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 48
  store ptr %13, ptr %i.dl, align 8, !tbaa !224
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 56
  store ptr %4, ptr %i.dm, align 8, !tbaa !225
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 64
  store ptr %i.ac, ptr %i.dn, align 8, !tbaa !226
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 72
  store ptr %i.ad, ptr %i.do, align 8, !tbaa !227
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 80
  store float %i.bo, ptr %i.dp, align 8, !tbaa !228
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 88
  store ptr %i.cy, ptr %i.dq, align 8, !tbaa !229
  invoke fastcc void @"_ZNSt8functionIFvvEEC2IZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS6_PNS3_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS6_E3$_0vEEOT_"(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(96) %16)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.dr = call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.ds = icmp ugt i32 %i.dr, 1
  br i1 %i.ds, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.z
  %.pre206239 = load i32, ptr %i.ak, align 4, !tbaa !104 ; 2 uses
  br label %bb.al

.lr.ph:                                           ; preds = %bb.z
  %.sroa.speculated167 = call i32 @llvm.umin.i32(i32 %i.dr, i32 4)
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.dv = add nsw i32 %.sroa.speculated167, -2
  br label %bb.ac

._crit_edge:                                      ; preds = %_ZNSt6threadD2Ev.exit
  %.pre206 = load i32, ptr %i.ak, align 4, !tbaa !104
  br label %bb.al

bb.aa:                                            ; preds = %bb.x
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ab:                                            ; preds = %bb.y
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %_ZNSt14_Function_baseD2Ev.exit157

bb.ac:                                            ; preds = %.lr.ph, %_ZNSt6threadD2Ev.exit
  %.089195 = phi i32 [ 0, %.lr.ph ], [ %i.ey, %_ZNSt6threadD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  invoke void @_ZNSt6threadC2IRSt8functionIFvvEEJEvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !121 ; 7 uses
  %i.dz = load ptr, ptr %i.du, align 8, !tbaa !122
  %.not.i.i = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i.i, label %bb.ae, label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread: ; preds = %bb.ad
  store i64 0, ptr %i.dy, align 8, !tbaa !124
  %i.ea = load i64, ptr %18, align 8, !tbaa !125
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !125
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.eb, ptr %i.dt, align 8, !tbaa !121
  br label %_ZNSt6threadD2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load ptr, ptr %17, align 8, !tbaa !126  ; 5 uses
end_hunk_0
