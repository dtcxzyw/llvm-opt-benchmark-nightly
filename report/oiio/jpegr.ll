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
define void @_ZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS2_(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 %6, float noundef %7, ptr noundef %8) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !589 {
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !175  ; 3 uses
  %cond = icmp eq i64 %i.c, 0
  %.pre210 = load ptr, ptr %i.a, align 8, !tbaa !200 ; 2 uses
  br i1 %cond, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 3)
  %bcmp = tail call i32 @bcmp(ptr %.pre210, ptr nonnull @.str.4, i64 %.sroa.speculated.i)
  %.not.i = icmp eq i32 %bcmp, 0
  %.not = icmp eq i64 %i.c, 3
  %or.cond185 = and i1 %.not, %.not.i
  br i1 %or.cond185, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread: ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  store i32 6, ptr %0, align 4, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.d, align 4, !tbaa !168
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 256, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.4, ptr noundef %.pre210) #28 ; 0 uses
  br label %bb.br

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  tail call void @_ZN8ultrahdr41uhdr_validate_gainmap_metadata_descriptorEP21uhdr_gainmap_metadata(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull %4)
  %i.g = load i32, ptr %0, align 4, !tbaa !167
  %.not112 = icmp eq i32 %i.g, 0
  br i1 %.not112, label %bb.c, label %bb.br

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %2, align 8, !tbaa !164    ; 2 uses
  switch i32 %i.h, label %bb.d [
    i32 6, label %bb.e
    i32 7, label %bb.e
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  store i32 6, ptr %0, align 4, !tbaa !167
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !168
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 256, ptr noundef nonnull @.str.29, i32 noundef %i.h) #28 ; 0 uses
  br label %bb.br

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.l = load i32, ptr %3, align 8, !tbaa !164    ; 2 uses
  switch i32 %i.l, label %bb.f [
    i32 2, label %bb.g
    i32 11, label %bb.g
    i32 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store i32 6, ptr %0, align 4, !tbaa !167
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.m, align 4, !tbaa !168
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 256, ptr noundef nonnull @.str.30, i32 noundef %i.l) #28 ; 0 uses
  br label %bb.br

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !179  ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  %spec.select = select i1 %i.r, i32 0, i32 %i.q  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !179  ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  %i.v = select i1 %i.u, i32 %spec.select, i32 %i.t ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !179
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !234
  %.not119 = icmp eq i32 %i.y, 0
  br i1 %.not119, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call noundef ptr @_ZN8ultrahdr20getGamutConversionFnE16uhdr_color_gamutS0_(i32 noundef %i.v, i32 noundef %spec.select) ; 2 uses
  %.pr = load i32, ptr %i.x, align 4, !tbaa !234
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
  store i32 1, ptr %0, align 4, !tbaa !167
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ag, align 4, !tbaa !168
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ah, i64 noundef 256, ptr noundef nonnull @.str.31, i32 noundef %spec.select, i32 noundef %i.v) #28 ; 0 uses
  br label %bb.br

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store ptr null, ptr %10, align 8, !tbaa !178
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.an = load i32, ptr %i.aj, align 8, !tbaa !235 ; 2 uses
  %i.ao = uitofp i32 %i.an to float               ; 2 uses
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !203 ; 2 uses
  %i.aq = uitofp i32 %i.ap to float
  %i.ar = load i32, ptr %i.al, align 8, !tbaa !235
  %i.as = uitofp i32 %i.ar to float               ; 2 uses
  %i.at = load i32, ptr %i.am, align 4, !tbaa !203
  %i.au = uitofp i32 %i.at to float
  %i.av = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.as, i64 1
  %i.ax = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.au, i64 1
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
  invoke void @_ZN8ultrahdr12resize_imageEP14uhdr_raw_imageii(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull %3, i32 noundef %i.an, i32 noundef %i.ap)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #28 ; 0 uses
  call void @_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.bg = load ptr, ptr %10, align 8, !tbaa !170  ; 3 uses
  %.not.i132 = icmp eq ptr %i.bg, null
  %.pre = load i32, ptr %i.aj, align 8, !tbaa !235 ; 2 uses
  br i1 %.not.i132, label %.critedge, label %._crit_edge207

._crit_edge207:                                   ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.pre208 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !235
  %.pre211 = uitofp i32 %.pre to float
  %.pre212 = uitofp i32 %.pre208 to float
  br label %bb.o

.critedge:                                        ; preds = %bb.m
  store i32 6, ptr %0, align 4, !tbaa !167
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bh, align 4, !tbaa !168
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load i32, ptr %i.al, align 8, !tbaa !235
  %i.bk = load i32, ptr %i.am, align 4, !tbaa !203
  %i.bl = load i32, ptr %i.ak, align 4, !tbaa !203
  %i.bm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bi, i64 noundef 256, ptr noundef nonnull @.str.32, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %.pre, i32 noundef %i.bl) #28 ; 0 uses
  br label %bb.bn

bb.n:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.bq

bb.o:                                             ; preds = %._crit_edge207, %bb.k
  %.pre-phi213 = phi float [ %.pre212, %._crit_edge207 ], [ %i.as, %bb.k ]
  %.pre-phi = phi float [ %.pre211, %._crit_edge207 ], [ %i.ao, %bb.k ]
  %.1 = phi ptr [ %i.bg, %._crit_edge207 ], [ %3, %bb.k ]
  %i.bo = fdiv contract float %.pre-phi, %.pre-phi213 ; 2 uses
  %i.bp = call contract float @llvm.round.f32(float %i.bo)
  %i.bq = fptosi float %i.bp to i32
  %.sroa.speculated173 = call i32 @llvm.smax.i32(i32 %i.bq, i32 1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store i32 %.sroa.speculated173, ptr %12, align 8, !tbaa !590
  %i.br = shl i32 %.sroa.speculated173, 2
  %i.bs = mul i32 %i.br, %.sroa.speculated173
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2                ; 4 uses
  %i.bv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bu) #31
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !313
  %i.bx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bu) #31
          to label %.noexc133 unwind label %bb.q

.noexc133:                                        ; preds = %.noexc
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !314
  %i.bz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bu) #31
          to label %.noexc134 unwind label %bb.q

.noexc134:                                        ; preds = %.noexc133
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !315
  %i.cb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bu) #31
          to label %.noexc135 unwind label %bb.q

.noexc135:                                        ; preds = %.noexc134
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !316
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !313
  invoke void @_ZN8ultrahdr11ShepardsIDW15fillShepardsIDWEPfii(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %i.cd, i32 noundef 1, i32 noundef 1)
          to label %.noexc136 unwind label %bb.q

.noexc136:                                        ; preds = %.noexc135
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !314
  invoke void @_ZN8ultrahdr11ShepardsIDW15fillShepardsIDWEPfii(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %i.ce, i32 noundef 0, i32 noundef 1)
          to label %.noexc137 unwind label %bb.q

.noexc137:                                        ; preds = %.noexc136
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !315
  invoke void @_ZN8ultrahdr11ShepardsIDW15fillShepardsIDWEPfii(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %i.cf, i32 noundef 1, i32 noundef 0)
          to label %.noexc138 unwind label %bb.q

.noexc138:                                        ; preds = %.noexc137
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !316
  invoke void @_ZN8ultrahdr11ShepardsIDW15fillShepardsIDWEPfii(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %i.cg, i32 noundef 0, i32 noundef 0)
          to label %_ZN8ultrahdr11ShepardsIDWC2Ei.exit unwind label %bb.q

_ZN8ultrahdr11ShepardsIDWC2Ei.exit:               ; preds = %.noexc138
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !270 ; 4 uses
  %i.cj = fcmp contract olt float %i.ci, %7
  %.sroa.speculated179 = select i1 %i.cj, float %i.ci, float %7 ; 2 uses
  %i.ck = fcmp contract une float %.sroa.speculated179, %i.ci
  br i1 %i.ck, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN8ultrahdr11ShepardsIDWC2Ei.exit
  %i.cl = call contract noundef float @log2f(float noundef %.sroa.speculated179) #28, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !271 ; 2 uses
  %i.co = call contract noundef float @log2f(float noundef %i.cn) #28, !tbaa !14
  %i.cp = fsub contract float %i.cl, %i.co
  %i.cq = call contract noundef float @log2f(float noundef %i.ci) #28, !tbaa !14
  %i.cr = call contract noundef float @log2f(float noundef %i.cn) #28, !tbaa !14
  %i.cs = fsub contract float %i.cq, %i.cr
  %i.ct = fdiv contract float %i.cp, %i.cs        ; 2 uses
  %i.cu = fcmp contract ogt float %i.ct, 0.000000e+00
  %i.cv = select contract i1 %i.cu, float %i.ct, float 0.000000e+00
  br label %bb.r

bb.q:                                             ; preds = %.noexc138, %.noexc137, %.noexc136, %.noexc135, %.noexc134, %.noexc133, %.noexc, %bb.o
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.r:                                             ; preds = %_ZN8ultrahdr11ShepardsIDWC2Ei.exit, %bb.p
  %.090 = phi float [ %i.cv, %bb.p ], [ 1.000000e+00, %_ZN8ultrahdr11ShepardsIDWC2Ei.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN8ultrahdr7GainLUTC2EPNS_25uhdr_gainmap_metadata_extEf(ptr noundef nonnull align 8 dereferenceable(60) %13, ptr noundef nonnull %4, float noundef %.090)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %2, align 8, !tbaa !164
  %i.cy = invoke noundef ptr @_ZN8ultrahdr10getPixelFnE12uhdr_img_fmt(i32 noundef %i.cx)
          to label %bb.t unwind label %bb.w       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  store i32 6, ptr %0, align 4, !tbaa !167
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.da, align 4, !tbaa !168
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load i32, ptr %2, align 8, !tbaa !164
  %i.dd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.db, i64 noundef 256, ptr noundef nonnull @.str.22, i32 noundef %i.dc) #28 ; 0 uses
  br label %bb.ax

bb.v:                                             ; preds = %bb.r
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.w:                                             ; preds = %bb.s
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZN8ultrahdr8JobQueueC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %14)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  store ptr %2, ptr %16, align 8, !tbaa !320
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.1, ptr %i.dg, align 8, !tbaa !321
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %8, ptr %i.dh, align 8, !tbaa !322
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %14, ptr %i.di, align 8, !tbaa !217
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %12, ptr %i.dj, align 8, !tbaa !323
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 %5, ptr %i.dk, align 8, !tbaa !324
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 48
  store ptr %13, ptr %i.dl, align 8, !tbaa !325
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 56
  store ptr %4, ptr %i.dm, align 8, !tbaa !326
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 64
  store ptr %i.ac, ptr %i.dn, align 8, !tbaa !327
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 72
  store ptr %i.ad, ptr %i.do, align 8, !tbaa !328
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 80
  store float %i.bo, ptr %i.dp, align 8, !tbaa !329
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 88
  store ptr %i.cy, ptr %i.dq, align 8, !tbaa !330
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
  %.pre209242 = load i32, ptr %i.ak, align 4, !tbaa !203 ; 2 uses
  br label %bb.ak

.lr.ph:                                           ; preds = %bb.z
  %.sroa.speculated167 = call i32 @llvm.umin.i32(i32 %i.dr, i32 4)
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.dv = add nsw i32 %.sroa.speculated167, -2
  br label %bb.ac

._crit_edge:                                      ; preds = %_ZNSt6threadD2Ev.exit
  %.pre209 = load i32, ptr %i.ak, align 4, !tbaa !203
  br label %bb.ak

bb.aa:                                            ; preds = %bb.x
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ab:                                            ; preds = %bb.y
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %_ZNSt14_Function_baseD2Ev.exit157

bb.ac:                                            ; preds = %.lr.ph, %_ZNSt6threadD2Ev.exit
  %.089195 = phi i32 [ 0, %.lr.ph ], [ %i.fn, %_ZNSt6threadD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  invoke void @_ZNSt6threadC2IRSt8functionIFvvEEJEvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !220 ; 7 uses
  %i.dz = load ptr, ptr %i.du, align 8, !tbaa !221
  %.not.i.i = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i.i, label %bb.ae, label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread: ; preds = %bb.ad
  store i64 0, ptr %i.dy, align 8, !tbaa !223
  %i.ea = load i64, ptr %18, align 8, !tbaa !224
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !224
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.eb, ptr %i.dt, align 8, !tbaa !220
  br label %_ZNSt6threadD2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load ptr, ptr %17, align 8, !tbaa !225  ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS2_:bb.a
bb.bf:                                            ; preds = %bb.be
  call void @_ZdaPv(ptr noundef nonnull %i.hh) #30
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hj = load ptr, ptr %i.ca, align 8, !tbaa !315 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.hj) #30
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.hl = load ptr, ptr %i.cc, align 8, !tbaa !316 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %_ZN8ultrahdr11ShepardsIDWD2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZdaPv(ptr noundef nonnull %i.hl) #30
  br label %_ZN8ultrahdr11ShepardsIDWD2Ev.exit

_ZN8ultrahdr11ShepardsIDWD2Ev.exit:               ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.bn

bb.bk:                                            ; preds = %bb.aw, %bb.w
  %.pn122.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn.pn.pn, %bb.aw ], [ %i.df, %bb.w ]
  call void @_ZN8ultrahdr7GainLUTD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %13) #28
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.v
  %.pn122.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn.pn.pn.pn, %bb.bk ], [ %i.de, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN8ultrahdr11ShepardsIDWD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #28
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.q
  %.pn122.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn.pn.pn.pn.pn, %bb.bl ], [ %i.cw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.bq

bb.bn:                                            ; preds = %.critedge, %_ZN8ultrahdr11ShepardsIDWD2Ev.exit
  %i.hn = load ptr, ptr %10, align 8, !tbaa !170  ; 3 uses
  %.not.i159 = icmp eq ptr %i.hn, null
  br i1 %.not.i159, label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !192 ; 3 uses
  %.not.i.i.i.i160 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i160, label %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !187 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.bp
  call void @_ZdaPv(ptr noundef nonnull %i.hq) #30
  br label %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef 16) #30
  br label %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i: ; preds = %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i, %bb.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef 72) #30
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bn, %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.br

bb.bq:                                            ; preds = %bb.bm, %bb.n
  %.pn122.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn.pn.pn.pn.pn.pn, %bb.bm ], [ %i.bn, %bb.n ]
  call void @_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  resume { ptr, i32 } %.pn122.pn.pn.pn.pn.pn.pn.pn.pn

bb.br:                                            ; preds = %bb.j, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit, %bb.b, %bb.f, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread
  ret void
}

declare void @_ZN8ultrahdr41uhdr_validate_gainmap_metadata_descriptorEP21uhdr_gainmap_metadata(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4, ptr noundef) local_unnamed_addr #7

declare void @_ZN8ultrahdr12resize_imageEP14uhdr_raw_imageii(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8ultrahdr7GainLUTC2EPNS_25uhdr_gainmap_metadata_extEf(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, float noundef %2) unnamed_addr #3 align 2 !guid !599 {
.preheader.preheader:
  %.ptr30 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.ptr35 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %0, i8 0, i64 60, i1 false)
  %i.a = load float, ptr %1, align 8, !tbaa !270  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !270
  %i.d = fcmp contract oeq float %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 8
  %i.g = fcmp contract oeq float %i.a, %i.f
  %or.cond.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.a, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.a:                                             ; preds = %.preheader.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !270 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load float, ptr %i.j, align 8, !tbaa !270
  %i.l = fcmp contract oeq float %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load float, ptr %i.m, align 4
  %i.o = fcmp contract oeq float %i.i, %i.n
  %or.cond9.i = select i1 %i.l, i1 %i.o, i1 false
  br i1 %or.cond9.i, label %bb.b, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load float, ptr %i.p, align 8, !tbaa !270 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.s = load float, ptr %i.r, align 4, !tbaa !270
  %i.t = fcmp contract oeq float %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load float, ptr %i.u, align 8
  %i.w = fcmp contract oeq float %i.q, %i.v
  %or.cond12.i = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond12.i, label %bb.c, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.y = load float, ptr %i.x, align 4, !tbaa !270 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load float, ptr %i.z, align 8, !tbaa !270
  %i.ab = fcmp contract oeq float %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !270
  %i.ae = fcmp contract oeq float %i.y, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load float, ptr %i.af, align 8, !tbaa !270 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !270
  %i.aj = fcmp contract oeq float %i.ag, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.al = load float, ptr %i.ak, align 8, !tbaa !270
  %i.am = fcmp contract oeq float %i.ag, %i.al
  br label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit: ; preds = %.preheader.preheader, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.an = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ %i.am, %bb.f ], [ false, %bb.b ], [ false, %.preheader.preheader ], [ false, %bb.a ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  br i1 %i.an, label %bb.k, label %bb.l

bb.h:                                             ; preds = %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit, %bb.i
  %indvars.iv40 = phi i64 [ 0, %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit ], [ %indvars.iv.next41, %bb.i ] ; 8 uses
  %i.aq = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #31 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv40
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !280
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.ptr30, i64 %indvars.iv40
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !280
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv40
  %i.au = load float, ptr %i.at, align 4, !tbaa !270
  %i.av = fdiv contract float 1.000000e+00, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.ptr35, i64 %indvars.iv40
  store float %i.av, ptr %i.aw, align 4, !tbaa !270
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv40
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !270
  %i.az = fpext contract float %i.ay to double
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv40
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !270
  %i.bc = fpext contract float %i.bb to double
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %i.bd = icmp samesign ugt i64 %indvars.iv40, 1
  %.not38 = select i1 %i.an, i1 true, i1 %i.bd
  br i1 %.not38, label %bb.g, label %bb.h, !llvm.loop !597

bb.j:                                             ; preds = %bb.h, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
  %i.bf = uitofp nneg i32 %i.be to float
  %i.bg = fdiv contract float %i.bf, 1.023000e+03 ; 2 uses
  %i.bh = tail call contract double @log2(double noundef %i.az) #28, !tbaa !14
  %i.bi = fsub contract float 1.000000e+00, %i.bg
  %i.bj = fpext contract float %i.bi to double
  %i.bk = fmul contract double %i.bh, %i.bj
  %i.bl = tail call contract double @log2(double noundef %i.bc) #28, !tbaa !14
  %i.bm = fpext contract float %i.bg to double
  %i.bn = fmul contract double %i.bl, %i.bm
  %i.bo = fadd contract double %i.bk, %i.bn
  %i.bp = fptrunc contract double %i.bo to float
  %i.bq = fmul contract float %2, %i.bp
  %i.br = fpext contract float %i.bq to double
  %i.bs = tail call contract double @exp2(double noundef %i.br) #28, !tbaa !14
  %i.bt = fptrunc contract double %i.bs to float
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  store float %i.bt, ptr %i.bu, align 4, !tbaa !270
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond.not, label %bb.i, label %bb.j, !llvm.loop !598

bb.k:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  %i.bw = load float, ptr %.ptr35, align 8, !tbaa !270 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.bw, ptr %i.bx, align 8, !tbaa !270
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.bw, ptr %i.by, align 4, !tbaa !270
  %i.bz = load ptr, ptr %.ptr30, align 8, !tbaa !280 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !280
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !280
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  ret void
}

declare noundef ptr @_ZN8ultrahdr10getPixelFnE12uhdr_img_fmt(i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8ultrahdr8JobQueueC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !guid !600 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !132
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseISt5tupleIJjjEESaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZNSt8functionIFvvEEC2IZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS6_PNS3_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS6_E3$_0vEEOT_"(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !601 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.b = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(96) %1, i64 96, i1 false), !tbaa.struct !332
  store ptr %i.b, ptr %0, align 8, !tbaa !146
  store ptr @"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS4_E3$_0E9_M_invokeERKSt9_Any_data", ptr %i.c, align 8, !tbaa !231
  store ptr @"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS4_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.a, align 8, !tbaa !229
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !229  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6threadC2IRSt8functionIFvvEEJEvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !603 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.131", align 8 ; 4 uses
  store i64 0, ptr %0, align 8, !tbaa !223
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !198
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !229  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEEC2IJRS5_EEEDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !146
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !146
  br label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEEC2IJRS5_EEEDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !229  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %.body.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %.body.i unwind label %bb.f    ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #32
  unreachable

.body.i:                                          ; preds = %bb.e, %bb.d
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %i.a) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #30
  br label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit7

_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEEC2IJRS5_EEEDpOT_.exit: ; preds = %bb.c, %bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !605
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEEC2IJRS5_EEEDpOT_.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !605    ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i: ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !198
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28, !inline_history !602
  br label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i
  ret void

bb.h:                                             ; preds = %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEEC2IJRS5_EEEDpOT_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !605    ; 3 uses
  %.not.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit7, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6: ; preds = %bb.h
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !198
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #28, !inline_history !602
  br label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit7

_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit7: ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6, %bb.h, %.body.i
  %.pn = phi { ptr, i32 } [ %i.h, %.body.i ], [ %i.q, %bb.h ], [ %i.q, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !606 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !225    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !220  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i, !llvm.loop !4

_ZSt8_DestroyISt6threadEvPT_.exit.i.i:            ; preds = %bb.a, %bb.b
  %.05.i.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.05.i.i, align 8, !tbaa !224
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit:  ; preds = %bb.b, %bb.a
  %.not.i.i1 = icmp eq ptr %i.a, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit, label %bb.d

end_hunk_1
