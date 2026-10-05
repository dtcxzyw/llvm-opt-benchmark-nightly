Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4toml2v34impl7impl_ex6parser15consume_commentEv:bb.a
bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 75, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.73, ptr %i.q, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %.preheader unwind label %.loopexit, !llvm.loop !31

bb.n:                                             ; preds = %.preheader, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.p

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.r, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %bb.b, %bb.a, %bb.n
  %.1 = phi i1 [ true, %bb.n ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNK4toml2v34impl7impl_ex6parser16current_positionEj(ptr noundef nonnull align 8 dereferenceable(3496) %0, i32 noundef 1) #50
  tail call void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toml2v34impl7impl_ex6parser11parse_valueEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3496) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = alloca i32, align 4                      ; 13 uses
  %7 = alloca %class.anon.76, align 8             ; 10 uses
  %8 = alloca %class.anon.77, align 8             ; 8 uses
  %9 = alloca %class.anon.78, align 8             ; 9 uses
  %i.b = alloca [128 x i32], align 16             ; 15 uses
  %i.c = alloca i64, align 8                      ; 15 uses
  %i.d = alloca i64, align 8                      ; 16 uses
  %i.e = alloca i8, align 1                       ; 10 uses
  %10 = alloca %class.anon.79, align 8            ; 16 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %11 = alloca %class.anon.80, align 8            ; 11 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3192 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240, !nonnull !106, !noundef !106 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !242  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !213
  store i64 5, ptr %i.k, align 8, !tbaa !124
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3480
  store ptr @.str.74, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3488 ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !124
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !124
  %i.o = icmp ugt i64 %i.n, 128
  br i1 %i.o, label %bb.b, label %bb.e, !prof !156

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 39, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.75, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 25, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.76, ptr %i.q, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEmS8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) @_ZN4toml2v34impl7impl_ex6parser17max_nested_valuesE, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit100

bb.e:                                             ; preds = %bb.a
  %i.s = icmp ult i32 %i.j, 32
  %i.t = icmp eq i32 %i.j, 127
  %i.u = or i1 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.i, !prof !156

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 28, ptr %4, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.77, ptr %i.v, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit100

bb.i:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.j, 95
  br i1 %i.x, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 37, ptr %5, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.78, ptr %i.y, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %5) #54
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit100

bb.m:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.025.0.copyload = load i64, ptr %i.aa, align 8, !tbaa !155 ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  invoke void @_ZN4toml2v34impl7impl_ex6parser26parse_value_known_prefixesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit unwind label %.thread

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.m
  %i.ab = load ptr, ptr %6, align 8, !tbaa !175   ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !175
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  %.not126 = icmp eq ptr %i.ab, null
  br i1 %.not126, label %bb.n, label %.thread155

.thread:                                          ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit100

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store ptr %i.a, ptr %7, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store ptr %i.a, ptr %8, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  store ptr %i.a, ptr %9, align 8, !tbaa !157
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !240
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !242 ; 3 uses
  %i.af = add i32 %i.ae, -48
  %i.ag = icmp ult i32 %i.af, 10
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = icmp eq i32 %i.ae, 48
  %spec.store.select = select i1 %i.ah, i32 24576, i32 8192
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  switch i32 %i.ae, label %.thread157 [
    i32 45, label %bb.q
    i32 43, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.o
  %storemerge = phi i32 [ %spec.store.select, %bb.o ], [ 4096, %bb.p ], [ 4096, %bb.p ]
  store i32 %storemerge, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  store i64 0, ptr %i.c, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  store i64 0, ptr %i.d, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #50
  store i8 0, ptr %i.e, align 1, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  store ptr %1, ptr %10, align 8, !tbaa !265
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.b, ptr %i.ai, align 8, !tbaa !659
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.aj, align 8, !tbaa !660
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %9, ptr %i.ak, align 8, !tbaa !157
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %7, ptr %i.al, align 8, !tbaa !157
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %8, ptr %i.am, align 8, !tbaa !157
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.d, ptr %i.an, align 8, !tbaa !660
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !661
  invoke void @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.r unwind label %.thread171

bb.r:                                             ; preds = %bb.q
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !124
  %i.aq = icmp eq i64 %i.ap, 10
  br i1 %i.aq, label %bb.s, label %bb.ah

bb.s:                                             ; preds = %bb.r
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !267 ; 2 uses
  %i.as = and i32 %i.ar, -16385
  %i.at = icmp eq i32 %i.as, 9217
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.av = load i32, ptr %i.au, align 16
  %i.aw = icmp eq i32 %i.av, 45
  %or.cond = select i1 %i.at, i1 %i.aw, i1 false
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp eq i32 %i.ay, 45
  %or.cond5 = select i1 %or.cond, i1 %i.az, i1 false
  br i1 %or.cond5, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %bb.s
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !240 ; 3 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %bb.ah, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !242
  %i.bc = icmp eq i32 %i.bb, 32
  br i1 %i.bc, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #50
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !124
  store i64 %i.bd, ptr %i.f, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #50
  store i32 %i.ar, ptr %i.g, align 4, !tbaa !267
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !242
  store i64 11, ptr %i.c, align 8, !tbaa !124
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !242
  %i.bg = load ptr, ptr %9, align 8, !tbaa !269, !nonnull !106, !align !270 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !267
  %i.bi = or i32 %i.bh, 32
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  store ptr %1, ptr %11, align 8, !tbaa !272
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.bj, align 8, !tbaa !660
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.bk, align 8, !tbaa !660
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.bl, align 8, !tbaa !157
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.g, ptr %i.bm, align 8, !tbaa !157
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.bn, align 8, !tbaa !660
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !124
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.d, align 8, !tbaa !124
  %i.bq = load ptr, ptr %i.h, align 8, !tbaa !240 ; 2 uses
  %.not38 = icmp eq ptr %i.bq, null
  br i1 %.not38, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !242 ; 2 uses
  %i.bs = add i32 %i.br, -48
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bu = load ptr, ptr %11, align 8, !tbaa !272  ; 7 uses
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !273, !nonnull !106, !align !253 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !124 ; 2 uses
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !274, !nonnull !106, !align !253 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !124 ; 2 uses
  %i.bz = sub i64 %i.bw, %i.by
  %i.ca = icmp ne i64 %i.bw, %i.by
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 3056
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !251 ; 3 uses
  %i.cd = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 3080 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !248
  %i.cg = add i64 %i.cf, %i.bz                    ; 4 uses
  %i.ch = icmp ule i64 %i.cg, %i.cc
  call void @llvm.assume(i1 %i.ch)
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !248
  %.not.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 3064
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !250
  %i.cl = sub i64 %i.cc, %i.cg
  %i.cm = add i64 %i.cl, %i.ck
  %i.cn = urem i64 %i.cm, 127
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cn
  br label %_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv.exit

bb.aa:                                            ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 3072
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !249
  br label %_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv.exit

_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv.exit: ; preds = %bb.z, %bb.aa
  %i.cr = phi ptr [ %i.co, %bb.z ], [ %i.cq, %bb.aa ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 3192
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !240
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 3184
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !155
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !155
  %i.cw = load i64, ptr %i.bx, align 8, !tbaa !124
  store i64 %i.cw, ptr %i.bv, align 8, !tbaa !124
  %i.cx = load ptr, ptr %i.bm, align 8, !tbaa !275, !nonnull !106, !align !270
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !267
  %i.cz = load ptr, ptr %i.bl, align 8, !tbaa !276, !nonnull !106, !align !270
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !267
  %i.da = load ptr, ptr %i.bn, align 8, !tbaa !277, !nonnull !106, !align !253
  store i64 10, ptr %i.da, align 8, !tbaa !124
  br label %bb.ag

bb.ab:                                            ; preds = %bb.ad, %bb.ac, %bb.v
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  br label %.thread166

bb.ac:                                            ; preds = %bb.x
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !124 ; 2 uses
  %i.dd = add nuw nsw i64 %i.dc, 1
  store i64 %i.dd, ptr %i.c, align 8, !tbaa !124
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dc
  store i32 %i.br, ptr %i.de, align 4, !tbaa !242
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  %i.df = load i64, ptr %i.d, align 8, !tbaa !124
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.d, align 8, !tbaa !124
  invoke void @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.ae unwind label %bb.ab

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load i64, ptr %i.c, align 8, !tbaa !124
  %i.di = icmp eq i64 %i.dh, 12
  br i1 %i.di, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(48) %11) #50
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.u, %bb.t, %bb.s, %bb.r
  %i.dj = load i64, ptr %i.d, align 8, !tbaa !124 ; 2 uses
  %i.dk = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 3056
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !251 ; 3 uses
  %i.dn = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 3080 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !248
  %i.dq = add i64 %i.dp, %i.dj                    ; 4 uses
  %i.dr = icmp ule i64 %i.dq, %i.dm
  call void @llvm.assume(i1 %i.dr)
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !248
  %.not.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 3064
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !250
  %i.dv = sub i64 %i.dm, %i.dq
  %i.dw = add i64 %i.dv, %i.du
  %i.dx = urem i64 %i.dw, 127
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dx
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !249
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit:   ; preds = %bb.ai, %bb.aj
  %i.eb = phi ptr [ %i.dy, %bb.ai ], [ %i.ea, %bb.aj ] ; 2 uses
  store ptr %i.eb, ptr %i.h, align 8, !tbaa !240
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !155
  store i64 %i.ee, ptr %i.ed, align 8, !tbaa !155
  %i.ef = load i64, ptr %i.c, align 8, !tbaa !124 ; 3 uses
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit
  %i.eh = load ptr, ptr %7, align 8, !tbaa !279, !nonnull !106, !align !270
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !267
  %i.ej = and i32 %i.ei, 8192
  %.not134 = icmp eq i32 %i.ej, 0
  br i1 %.not134, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ek = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit unwind label %.thread171 ; 7 uses

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.al
  %i.el = load i32, ptr %i.b, align 16, !tbaa !242
  %i.em = add i32 %i.el, -48
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eo, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.ek, align 8, !tbaa !75
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !184
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  store i16 0, ptr %i.eq, align 8, !tbaa !280
  store ptr %i.ek, ptr %0, align 8, !tbaa !175
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.thread159 unwind label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i99

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #50
  %i.er = load i8, ptr %i.e, align 1, !tbaa !259, !range !105, !noundef !106
  %i.es = trunc nuw i8 %i.er to i1                ; 2 uses
  %spec.select = select i1 %i.es, i64 23, i64 30
  %spec.select175 = select i1 %i.es, ptr @.str.13, ptr @.str.79
  store i64 %spec.select, ptr %12, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %spec.select175, ptr %i.et, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %12) #54
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #50
  br label %.thread166

bb.ap:                                            ; preds = %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit
  %i.ev = icmp ne i64 %i.ef, 0
  call void @llvm.assume(i1 %i.ev)
  %i.ew = load ptr, ptr %7, align 8, !tbaa !279, !nonnull !106, !align !270
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !267 ; 8 uses
  %i.ey = and i32 %i.ex, 16
  %.not127 = icmp eq i32 %i.ey, 0
  br i1 %.not127, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ez = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.ar unwind label %.thread171 ; 7 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fa = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser15parse_hex_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.ez, align 8, !tbaa !75
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  store double %i.fa, ptr %i.fc, align 8, !tbaa !187
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  store i16 0, ptr %i.fd, align 8, !tbaa !281
  store ptr %i.ez, ptr %0, align 8, !tbaa !175
  br label %.thread159

bb.at:                                            ; preds = %bb.ar
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef 56) #51
  br label %.thread166

bb.au:                                            ; preds = %bb.ap
  %i.ff = and i32 %i.ex, 74
  %.not128 = icmp eq i32 %i.ff, 0
  br i1 %.not128, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fg = and i32 %i.ex, 64
  %.not131 = icmp eq i32 %i.fg, 0
  br i1 %.not131, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm16EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bb unwind label %bb.ax

bb.ax:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.aw
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.thread166

bb.ay:                                            ; preds = %bb.av
  %i.fj = and i32 %i.ex, 8
  %.not132 = icmp eq i32 %i.fj, 0
  br i1 %.not132, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fk = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm8EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bb unwind label %bb.ax

bb.ba:                                            ; preds = %bb.ay
  %i.fl = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm2EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bb unwind label %bb.ax

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.aw
  %.0 = phi i64 [ %i.fk, %bb.az ], [ %i.fh, %bb.aw ], [ %i.fl, %bb.ba ]
  %.031 = phi i16 [ 2, %bb.az ], [ 3, %bb.aw ], [ 1, %bb.ba ]
  %i.fm = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit50 unwind label %bb.ax ; 6 uses

bb.bc:                                            ; preds = %bb.au
  %i.fn = and i32 %i.ex, 4
  %.not129 = icmp eq i32 %i.fn, 0
  br i1 %.not129, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fo = and i32 %i.ex, 8192
  %i.fp = icmp ne i32 %i.fo, 0
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4            ; 3 uses
  %i.fs = icmp eq i32 %i.fr, 46
  %or.cond8 = select i1 %i.fp, i1 %i.fs, i1 false
  br i1 %or.cond8, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ft = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.bf unwind label %.thread171 ; 7 uses

bb.bf:                                            ; preds = %bb.be
  %i.fu = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser11parse_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.ft, align 8, !tbaa !75
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  store double %i.fu, ptr %i.fw, align 8, !tbaa !187
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  store i16 0, ptr %i.fx, align 8, !tbaa !281
  store ptr %i.ft, ptr %0, align 8, !tbaa !175
  br label %.thread159

bb.bh:                                            ; preds = %bb.bf
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef 56) #51
  br label %.thread166

bb.bi:                                            ; preds = %bb.bd
  %i.fz = and i32 %i.ex, 4096
  %.not130 = icmp eq i32 %i.fz, 0
  br i1 %.not130, label %bb.bv, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ga = icmp eq i64 %i.ef, 2
  %i.gb = trunc i32 %i.ex to i1
  %or.cond125 = and i1 %i.ga, %i.gb
  br i1 %or.cond125, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.gc = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit59 unwind label %.thread171 ; 8 uses

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit59: ; preds = %bb.bk
  %i.gd = load i32, ptr %i.fq, align 4, !tbaa !242
  %i.ge = add i32 %i.gd, -48
  %i.gf = zext i32 %i.ge to i64                   ; 2 uses
  %i.gg = load i32, ptr %i.b, align 16, !tbaa !242
  %i.gh = icmp eq i32 %i.gg, 45
  %i.gi = sub nsw i64 0, %i.gf
  %i.gj = select i1 %i.gh, i64 %i.gi, i64 %i.gf
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gk, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.gc, align 8, !tbaa !75
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  store i64 %i.gj, ptr %i.gl, align 8, !tbaa !184
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  store i16 0, ptr %i.gm, align 8, !tbaa !280
  store ptr %i.gc, ptr %0, align 8, !tbaa !175
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bl unwind label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i99

bb.bl:                                            ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit59
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.thread159 unwind label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i99

bb.bm:                                            ; preds = %bb.bj
  %i.gn = add i32 %i.fr, -48
  %i.go = icmp ult i32 %i.gn, 10
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gq = load i32, ptr %i.gp, align 8
  %i.gr = icmp eq i32 %i.gq, 46
  %or.cond11 = select i1 %i.go, i1 %i.gr, i1 false
  br i1 %or.cond11, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  %i.gs = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.bo unwind label %.thread171 ; 7 uses

bb.bo:                                            ; preds = %bb.bn
  %i.gt = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser11parse_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gu, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.gs, align 8, !tbaa !75
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  store double %i.gt, ptr %i.gv, align 8, !tbaa !187
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  store i16 0, ptr %i.gw, align 8, !tbaa !281
  store ptr %i.gs, ptr %0, align 8, !tbaa !175
  br label %.thread159

bb.bq:                                            ; preds = %bb.bo
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 56) #51
  br label %.thread166

bb.br:                                            ; preds = %bb.bm
  switch i32 %i.fr, label %bb.bv [
    i32 110, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread
    i32 105, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread
    i32 78, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread
    i32 73, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread
  ]

_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread: ; preds = %bb.br, %bb.br, %bb.br, %bb.br
  %i.gy = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.bs unwind label %.thread171 ; 7 uses

bb.bs:                                            ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread
  %i.gz = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser16parse_inf_or_nanEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ha, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.gy, align 8, !tbaa !75
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  store double %i.gz, ptr %i.hb, align 8, !tbaa !187
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  store i16 0, ptr %i.hc, align 8, !tbaa !281
  store ptr %i.gy, ptr %0, align 8, !tbaa !175
  br label %.thread159

bb.bu:                                            ; preds = %bb.bs
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef 56) #51
  br label %.thread166

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit50: ; preds = %bb.bb
  %i.he = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.he, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.fm, align 8, !tbaa !75
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  store i64 %.0, ptr %i.hf, align 8, !tbaa !184
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store ptr %i.fm, ptr %0, align 8, !tbaa !175
  store i16 %.031, ptr %i.hg, align 8, !tbaa !280
  br label %.thread159

bb.bv:                                            ; preds = %bb.br, %bb.bi
  %i.hh = load i32, ptr %i.a, align 4, !tbaa !267
  switch i32 %i.hh, label %bb.db [
    i32 24579, label %bb.bw
    i32 24585, label %bb.bz
    i32 24577, label %bb.cc
    i32 8193, label %bb.cc
    i32 5121, label %bb.cc
    i32 4609, label %bb.cc
    i32 24641, label %bb.cj
    i32 24581, label %bb.cm
    i32 25605, label %bb.cm
    i32 25093, label %bb.cm
    i32 26625, label %bb.cm
    i32 26629, label %bb.cm
    i32 27653, label %bb.cm
    i32 27141, label %bb.cm
    i32 8197, label %bb.cm
    i32 9221, label %bb.cm
    i32 8709, label %bb.cm
    i32 10241, label %bb.cm
    i32 10245, label %bb.cm
    i32 11269, label %bb.cm
    i32 10757, label %bb.cm
    i32 4613, label %bb.cm
    i32 6657, label %bb.cm
    i32 6661, label %bb.cm
    i32 7685, label %bb.cm
    i32 5125, label %bb.cm
    i32 5637, label %bb.cm
    i32 7169, label %bb.cm
    i32 7173, label %bb.cm
    i32 24657, label %bb.cp
    i32 25681, label %bb.cp
    i32 25169, label %bb.cp
    i32 5201, label %bb.cp
    i32 4689, label %bb.cp
    i32 5713, label %bb.cp
    i32 26705, label %bb.cp
    i32 27729, label %bb.cp
    i32 27217, label %bb.cp
    i32 7249, label %bb.cp
    i32 6737, label %bb.cp
    i32 7761, label %bb.cp
    i32 24833, label %bb.cs
    i32 26881, label %bb.cs
    i32 8449, label %bb.cs
    i32 10497, label %bb.cs
    i32 25601, label %bb.cv
    i32 9217, label %bb.cv
    i32 25889, label %bb.cy
    i32 26401, label %bb.cy
    i32 9505, label %bb.cy
    i32 10017, label %bb.cy
    i32 27937, label %bb.cy
    i32 28449, label %bb.cy
    i32 11553, label %bb.cy
    i32 12065, label %bb.cy
    i32 26017, label %bb.cy
    i32 28065, label %bb.cy
    i32 9633, label %bb.cy
    i32 11681, label %bb.cy
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.hi = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.bx unwind label %.thread171 ; 7 uses

bb.bx:                                            ; preds = %bb.bw
  %i.hj = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm2EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit68 unwind label %bb.by

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit68: ; preds = %bb.bx
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hk, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.hi, align 8, !tbaa !75
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 40
  store i64 %i.hj, ptr %i.hl, align 8, !tbaa !184
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  store ptr %i.hi, ptr %0, align 8, !tbaa !175
  store i16 1, ptr %i.hm, align 8, !tbaa !280
  br label %.thread159

bb.by:                                            ; preds = %bb.bx
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef 56) #51
  br label %.thread166

bb.bz:                                            ; preds = %bb.bv
  %i.ho = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.ca unwind label %.thread171 ; 7 uses

bb.ca:                                            ; preds = %bb.bz
  %i.hp = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm8EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit71 unwind label %bb.cb

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit71: ; preds = %bb.ca
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hq, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.ho, align 8, !tbaa !75
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  store i64 %i.hp, ptr %i.hr, align 8, !tbaa !184
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  store ptr %i.ho, ptr %0, align 8, !tbaa !175
  store i16 2, ptr %i.hs, align 8, !tbaa !280
  br label %.thread159

bb.cb:                                            ; preds = %bb.ca
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef 56) #51
  br label %.thread166

bb.cc:                                            ; preds = %bb.bv, %bb.bv, %bb.bv, %bb.bv
  %i.hu = load i8, ptr %i.e, align 1, !tbaa !259, !range !105, !noundef !106
  %i.hv = trunc nuw i8 %i.hu to i1
  %i.hw = load i64, ptr %i.d, align 8
  %i.hx = icmp ult i64 %i.hw, 127
  %.not40 = select i1 %i.hv, i1 true, i1 %i.hx
  br i1 %.not40, label %bb.cg, label %bb.cd, !prof !169

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #50
  store i64 56, ptr %13, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.80, ptr %i.hy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #50
  store i64 11, ptr %14, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.81, ptr %i.hz, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEmS8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvE24max_numeric_value_length, ptr noundef nonnull align 8 dereferenceable(16) %14) #54
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  unreachable

bb.cf:                                            ; preds = %bb.cd
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #50
  br label %.thread166

bb.cg:                                            ; preds = %bb.cc
  %i.ib = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.ch unwind label %.thread171 ; 7 uses

bb.ch:                                            ; preds = %bb.cg
  %i.ic = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm10EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit74 unwind label %bb.ci

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit74: ; preds = %bb.ch
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.id, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.ib, align 8, !tbaa !75
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  store i64 %i.ic, ptr %i.ie, align 8, !tbaa !184
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 48
  store i16 0, ptr %i.if, align 8, !tbaa !280
  store ptr %i.ib, ptr %0, align 8, !tbaa !175
  br label %.thread159

bb.ci:                                            ; preds = %bb.ch
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef 56) #51
  br label %.thread166

bb.cj:                                            ; preds = %bb.bv
  %i.ih = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.ck unwind label %.thread171 ; 7 uses

bb.ck:                                            ; preds = %bb.cj
  %i.ii = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm16EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit77 unwind label %bb.cl

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit77: ; preds = %bb.ck
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.ih, align 8, !tbaa !75
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  store i64 %i.ii, ptr %i.ik, align 8, !tbaa !184
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  store ptr %i.ih, ptr %0, align 8, !tbaa !175
  store i16 3, ptr %i.il, align 8, !tbaa !280
  br label %.thread159

bb.cl:                                            ; preds = %bb.ck
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef 56) #51
  br label %.thread166

bb.cm:                                            ; preds = %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv
  %i.in = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.cn unwind label %.thread171 ; 7 uses

bb.cn:                                            ; preds = %bb.cm
  %i.io = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser11parse_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit80 unwind label %bb.co

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit80: ; preds = %bb.cn
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.in, align 8, !tbaa !75
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 40
  store double %i.io, ptr %i.iq, align 8, !tbaa !187
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 48
  store i16 0, ptr %i.ir, align 8, !tbaa !281
  store ptr %i.in, ptr %0, align 8, !tbaa !175
  br label %.thread159

bb.co:                                            ; preds = %bb.cn
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef 56) #51
  br label %.thread166

bb.cp:                                            ; preds = %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv
  %i.it = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.cq unwind label %.thread171 ; 7 uses

bb.cq:                                            ; preds = %bb.cp
  %i.iu = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser15parse_hex_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit83 unwind label %bb.cr

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit83: ; preds = %bb.cq
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iv, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.it, align 8, !tbaa !75
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  store double %i.iu, ptr %i.iw, align 8, !tbaa !187
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  store i16 0, ptr %i.ix, align 8, !tbaa !281
  store ptr %i.it, ptr %0, align 8, !tbaa !175
  br label %.thread159

bb.cr:                                            ; preds = %bb.cq
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef 56) #51
  br label %.thread166

bb.cs:                                            ; preds = %bb.bv, %bb.bv, %bb.bv, %bb.bv
  %i.iz = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.ct unwind label %.thread171 ; 7 uses

bb.ct:                                            ; preds = %bb.cs
  %i.ja = invoke i64 @_ZN4toml2v34impl7impl_ex6parser10parse_timeEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit86 unwind label %bb.cu

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit86: ; preds = %bb.ct
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jb, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINS0_4timeEEE, i64 16), ptr %i.iz, align 8, !tbaa !75
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  store i64 %i.ja, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 48
  store i16 0, ptr %i.jd, align 8, !tbaa !283
  store ptr %i.iz, ptr %0, align 8, !tbaa !175
  br label %.thread159

bb.cu:                                            ; preds = %bb.ct
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef 56) #51
  br label %.thread166

bb.cv:                                            ; preds = %bb.bv, %bb.bv
  %i.jf = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #55
          to label %bb.cw unwind label %.thread171 ; 7 uses

bb.cw:                                            ; preds = %bb.cv
  %i.jg = invoke i32 @_ZN4toml2v34impl7impl_ex6parser10parse_dateEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit89 unwind label %bb.cx

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit89: ; preds = %bb.cw
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jh, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINS0_4dateEEE, i64 16), ptr %i.jf, align 8, !tbaa !75
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  store i32 %i.jg, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 44
  store i16 0, ptr %i.jj, align 4, !tbaa !285
  store ptr %i.jf, ptr %0, align 8, !tbaa !175
  br label %.thread159

bb.cx:                                            ; preds = %bb.cw
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef 48) #51
  br label %.thread166

bb.cy:                                            ; preds = %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv
  %i.jl = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #55
          to label %bb.cz unwind label %.thread171 ; 8 uses

bb.cz:                                            ; preds = %bb.cy
  %i.jm = invoke { i64, i64 } @_ZN4toml2v34impl7impl_ex6parser15parse_date_timeEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit92 unwind label %bb.da ; 2 uses

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit92: ; preds = %bb.cz
  %i.jn = extractvalue { i64, i64 } %i.jm, 0
  %i.jo = extractvalue { i64, i64 } %i.jm, 1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jp, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINS0_6stdopt9date_timeEEE, i64 16), ptr %i.jl, align 8, !tbaa !75
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  store i64 %i.jn, ptr %i.jq, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  store i64 %i.jo, ptr %.sroa.5103.0..sroa_idx, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  store i16 0, ptr %i.jr, align 8, !tbaa !291
  store ptr %i.jl, ptr %0, align 8, !tbaa !175
  br label %.thread159
end_hunk_0
begin_hunk_1_@_ZN4toml2v34impl9formatter5printERKNS0_5valueIlEE:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bf = phi ptr [ %i.bc, %bb.m ], [ %i.az, %bb.l ]
  %i.bg = phi ptr [ %i.bb, %bb.m ], [ %i.ax, %bb.l ]
  %.026.i = phi ptr [ %i.bd, %bb.m ], [ %i.a, %bb.l ] ; 6 uses
  %.0.i = phi i64 [ %i.be, %bb.m ], [ %i.f, %bb.l ] ; 5 uses
  %i.bh = icmp ult i64 %.0.i, 10
  br i1 %i.bh, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %bb.t
  %.029.i.i.i = phi i32 [ %i.bp, %bb.t ], [ 1, %bb.n ] ; 4 uses
  %.02328.i.i.i = phi i64 [ %i.bo, %bb.t ], [ %.0.i, %bb.n ] ; 5 uses
  %i.bi = icmp ult i64 %.02328.i.i.i, 100
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bj = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.bk = icmp ult i64 %.02328.i.i.i, 1000
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bm = icmp ult i64 %.02328.i.i.i, 10000
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.bo = udiv i64 %.02328.i.i.i, 10000
  %i.bp = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.bq = icmp ult i64 %.02328.i.i.i, 100000
  br i1 %i.bq, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.n
  %.022.i.i.i = phi i32 [ %i.bn, %bb.s ], [ %i.bj, %bb.o ], [ %i.bl, %bb.q ], [ 1, %bb.n ], [ %i.bp, %bb.t ] ; 2 uses
  %i.br = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bs = ptrtoint ptr %.026.i to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = zext i32 %.022.i.i.i to i64             ; 2 uses
  %i.bv = icmp slt i64 %i.bt, %i.bu
  br i1 %i.bv, label %_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, label %bb.u, !prof !156

bb.u:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %i.bw = icmp ugt i64 %.0.i, 99
  br i1 %i.bw, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.bx = add i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i64 [ %i.ca, %.lr.ph.i9.i.i ], [ %.0.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.ck, %.lr.ph.i9.i.i ], [ %i.bx, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.by = urem i64 %.020.i.i.i, 100
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = udiv i64 %.020.i.i.i, 100               ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bz ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !70
  %i.ce = zext i32 %.01819.i.i.i to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.ce
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !70
  %i.cg = load i8, ptr %i.cb, align 2, !tbaa !70
  %i.ch = add i32 %.01819.i.i.i, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.ci
  store i8 %i.cg, ptr %i.cj, align 1, !tbaa !70
  %i.ck = add i32 %.01819.i.i.i, -2
  %i.cl = icmp ugt i64 %.020.i.i.i, 9999
  br i1 %i.cl, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !14

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.u
  %.0.lcssa.i.i.i = phi i64 [ %.0.i, %bb.u ], [ %i.ca, %.lr.ph.i9.i.i ] ; 3 uses
  %i.cm = icmp samesign ugt i64 %.0.lcssa.i.i.i, 9
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.cn = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.co = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !70
  %i.cr = getelementptr inbounds nuw i8, ptr %.026.i, i64 1
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !70
  %i.cs = load i8, ptr %i.co, align 2, !tbaa !70
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.ct = trunc nuw nsw i64 %.0.lcssa.i.i.i to i8
  %i.cu = or disjoint i8 %i.ct, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i: ; preds = %bb.w, %bb.v
  %storemerge.i.i.i = phi i8 [ %i.cu, %bb.w ], [ %i.cs, %bb.v ]
  store i8 %storemerge.i.i.i, ptr %.026.i, align 1, !tbaa !70
  %i.cv = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.bu
  %.pre = ptrtoint ptr %i.cv to i64
  br label %_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit

_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit: ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i
  %.pre-phi = phi i64 [ %i.br, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %.pre, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i ]
  %i.cw = ptrtoint ptr %i.a to i64
  %i.cx = sub i64 %.pre-phi, %i.cw
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.a, i64 noundef %i.cx) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN4toml2v34impl15print_to_streamERSolNS0_11value_flagsEm.exit28

_ZN4toml2v34impl15print_to_streamERSolNS0_11value_flagsEm.exit28: ; preds = %.preheader35.preheader, %.preheader33.preheader, %.preheader.preheader, %bb.i, %bb.f, %bb.k, %_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter5printERKNS0_5valueIdEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(50) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.0.copyload.i = load i64, ptr %i.a, align 8    ; 4 uses
  %i.b = and i64 %.0.copyload.i, 9218868437227405312
  %.not.i7 = icmp eq i64 %i.b, 9218868437227405312
  br i1 %.not.i7, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.0.copyload.i, 4503599627370495
  %.not4.i = icmp eq i64 %i.c, 0
  br i1 %.not4.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not5.i = icmp sgt i64 %.0.copyload.i, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 2 uses
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.k = bitcast i64 %.0.copyload.i to double
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !126
  %i.p = and i64 %i.o, 2048
  %.not.i6 = icmp ne i64 %i.p, 0
  tail call void @_ZN4toml2v34impl15print_to_streamERSodNS0_11value_flagsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.m, double noundef %i.k, i16 noundef zeroext 0, i1 noundef zeroext %.not.i6)
  br label %bb.k

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.0.ph = phi ptr [ %i.j, %bb.f ], [ %i.g, %bb.e ], [ %i.f, %bb.d ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !126
  %i.s = and i64 %i.r, 2
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131  ; 4 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext 34) ; 0 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.0.ph, align 8, !tbaa !124
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.ph, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext 34) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %.sroa.0.0.copyload = load i64, ptr %.0.ph, align 8, !tbaa !124
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.ph, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !125
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.z, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter5printERKNS0_5valueIbEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !259, !range !105, !noundef !106
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %.v = select i1 %i.c, i64 64, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.v ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8, !tbaa !124
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.j, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4dateEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i3 = icmp eq i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.b, 4
  %.not.i.not = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not.i.not, i8 34, i8 39      ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext %i.h) ; 0 uses
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4dateE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.f)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext %i.h) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4dateE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.k, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4timeEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(50) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i3 = icmp eq i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.b, 4
  %.not.i.not = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not.i.not, i8 34, i8 39      ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext %i.h) ; 0 uses
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4timeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.f)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext %i.h) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4timeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.k, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_6stdopt9date_timeEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(58) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i3 = icmp eq i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.b, 4
  %.not.i.not = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not.i.not, i8 34, i8 39      ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext %i.h) ; 0 uses
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4dateE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.f)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext 84) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4timeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.m = load i8, ptr %i.l, align 2, !tbaa !104, !range !105, !noundef !106
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZN4toml2v34impl25print_to_stream_bookendedINS0_6stdopt9date_timeEcEEvRSoRKT_RKT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_11time_offsetE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.o)
  br label %_ZN4toml2v34impl25print_to_stream_bookendedINS0_6stdopt9date_timeEcEEvRSoRKT_RKT0_.exit

_ZN4toml2v34impl25print_to_stream_bookendedINS0_6stdopt9date_timeEcEEvRSoRKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext %i.h) ; 0 uses
  br label %_ZN4toml2v34impl15print_to_streamERSoRKNS0_6stdopt9date_timeE.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4dateE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.f)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext 84) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4timeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.t = load i8, ptr %i.s, align 2, !tbaa !104, !range !105, !noundef !106
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %_ZN4toml2v34impl15print_to_streamERSoRKNS0_6stdopt9date_timeE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 52
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_11time_offsetE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.v)
  br label %_ZN4toml2v34impl15print_to_streamERSoRKNS0_6stdopt9date_timeE.exit

_ZN4toml2v34impl15print_to_streamERSoRKNS0_6stdopt9date_timeE.exit: ; preds = %bb.e, %bb.d, %_ZN4toml2v34impl25print_to_stream_bookendedINS0_6stdopt9date_timeEcEEvRSoRKT_RKT0_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.w, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ugt i8 %2, 2
  tail call void @llvm.assume(i1 %i.a)
  switch i8 %2, label %bb.m [
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %bb.f
    i8 8, label %bb.i
    i8 9, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !68
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(69) %0, i64 %i.e, ptr %i.c, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl9formatter5printERKNS0_5valueIlEE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(50) %1)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl9formatter5printERKNS0_5valueIdEE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(50) %1)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !259, !range !105, !noundef !106
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.v.i = select i1 %i.h, i64 64, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.v.i ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !124
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.o, align 4, !tbaa !130
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !126  ; 2 uses
  %i.r = and i64 %i.q, 1
  %.not.i3.i = icmp eq i64 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !131  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.q, 4
  %.not.i.not.i = icmp eq i64 %i.v, 0
  %i.w = select i1 %.not.i.not.i, i8 34, i8 39    ; 2 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i8 noundef signext %i.w) ; 0 uses
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4dateE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull readonly align 2 dereferenceable(4) %i.u)
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i8 noundef signext %i.w) ; 0 uses
  br label %_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4dateEEE.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4dateE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull readonly align 2 dereferenceable(4) %i.u)
  br label %_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4dateEEE.exit

_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4dateEEE.exit: ; preds = %bb.g, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.z, align 4, !tbaa !130
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !126 ; 2 uses
  %i.ac = and i64 %i.ab, 1
  %.not.i3.i9 = icmp eq i64 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i3.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = and i64 %i.ab, 4
  %.not.i.not.i10 = icmp eq i64 %i.ag, 0
  %i.ah = select i1 %.not.i.not.i10, i8 34, i8 39 ; 2 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext %i.ah) ; 0 uses
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4timeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.af)
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext %i.ah) ; 0 uses
  br label %_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4timeEEE.exit

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4toml2v34impl15print_to_streamERSoRKNS0_4timeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.af)
  br label %_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4timeEEE.exit

_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4timeEEE.exit: ; preds = %bb.j, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.ak, align 4, !tbaa !130
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_6stdopt9date_timeEEE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(58) %1)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  unreachable

bb.n:                                             ; preds = %bb.l, %_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4timeEEE.exit, %_ZN4toml2v34impl9formatter5printERKNS0_5valueINS0_4dateEEE.exit, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN4toml2v34impl9formatter24dump_failed_parse_resultEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(69) %0) local_unnamed_addr #27 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314toml_formatter29print_pending_table_separatorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(97) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !331, !range !105, !noundef !106
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !131
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.d, align 4, !tbaa !130
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !131
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.d, align 4, !tbaa !130
  store i8 0, ptr %i.a, align 8, !tbaa !331
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314toml_formatter5printERKNS0_3keyE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(97) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(69) %0, i64 %i.c, ptr %i.a, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314toml_formatter12print_inlineERKNS0_5tableE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(97) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(89) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !158
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.40, i64 noundef 2) ; 0 uses
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.41, i64 noundef 2) ; 0 uses
  store i8 0, ptr %i.f, align 4, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198, !noalias !714 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.not27 = icmp eq ptr %i.j, %i.k
  br i1 %.not27, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !175  ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.pre31 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !67
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(97) %0, i64 %.pre31, ptr %.pre, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.p = load i64, ptr %i.l, align 8, !tbaa !126
  %i.q = and i64 %i.p, 4096
  %.not.i.i.not.peel = icmp eq i64 %i.q, 0
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  br i1 %.not.i.i.not.peel, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.43, i64 noundef 1) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.44, i64 noundef 3) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 0, ptr %i.f, align 4, !tbaa !130
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i8 %i.w(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #52 ; 3 uses
  %i.y = icmp ne i8 %i.x, 0
  tail call void @llvm.assume(i1 %i.y)
  switch i8 %i.x, label %bb.j [
    i8 1, label %bb.i
    i8 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5arrayE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.n)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4toml2v314toml_formatter12print_inlineERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.n)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i8 noundef zeroext %i.x)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.j) #52 ; 2 uses
  %.not.peel = icmp eq ptr %i.z, %i.k
  br i1 %.not.peel, label %._crit_edge, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit.peel.next

._crit_edge:                                      ; preds = %bb.r, %bb.k, %bb.c
end_hunk_1
begin_hunk_2_@_ZN4toml2v34impl7impl_ex6parser26parse_value_known_prefixesEv:bb.a
  %i.g = icmp ne i32 %i.d, 95
  tail call void @llvm.assume(i1 %i.g)
  switch i32 %i.d, label %bb.u [
    i32 91, label %bb.b
    i32 123, label %bb.c
    i32 46, label %bb.d
    i32 34, label %bb.g
    i32 39, label %bb.g
    i32 116, label %bb.o
    i32 102, label %bb.o
    i32 84, label %bb.o
    i32 70, label %bb.o
    i32 110, label %bb.r
    i32 105, label %bb.r
    i32 78, label %bb.r
    i32 73, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl7impl_ex6parser11parse_arrayEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3496) %1)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl7impl_ex6parser18parse_inline_tableEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3496) %1)
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55 ; 6 uses
  %i.i = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser11parse_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.h, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store double %i.i, ptr %i.k, align 8, !tbaa !187
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i16 0, ptr %i.l, align 8, !tbaa !281
  store ptr %i.h, ptr %0, align 8, !tbaa !175
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 56) #51
  br label %bb.w

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #55 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  invoke fastcc void @_ZN4toml2v34impl7impl_ex6parser12parse_stringEv(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.n, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !124, !noalias !783 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !125, !noalias !783 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !87, !alias.scope !783
  %i.r = icmp eq ptr %.sroa.2.0.copyload.i.i.i, null
  %i.s = icmp ne i64 %.sroa.0.0.copyload.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.s, %i.r
  br i1 %or.cond.i.i.i.i.i, label %.noexc.i.i, label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.62) #54
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %.noexc.i.i
  unreachable

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50, !noalias !783
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.a, align 8, !tbaa !124, !noalias !783
  %i.t = icmp ugt i64 %.sroa.0.0.copyload.i.i.i, 15
  br i1 %i.t, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc3.i unwind label %bb.l  ; 2 uses

.noexc3.i:                                        ; preds = %.noexc.i.i.i.i.i
  store ptr %i.u, ptr %i.p, align 8, !tbaa !67, !alias.scope !783
  %i.v = load i64, ptr %i.a, align 8, !tbaa !124, !noalias !783
  store i64 %i.v, ptr %i.q, align 8, !tbaa !70, !alias.scope !783
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc3.i, %bb.i
  %i.w = phi ptr [ %i.u, %.noexc3.i ], [ %i.q, %bb.i ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.m
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.x = load i8, ptr %.sroa.2.0.copyload.i.i.i, align 1, !tbaa !70
  store i8 %i.x, ptr %i.w, align 1, !tbaa !70
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.0.0.copyload.i.i.i, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %.noexc.i.i.i.i.i, %.noexc.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4toml2v34nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(74) %i.n) #50
  br label %.body

bb.m:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !124, !noalias !783 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !68, !alias.scope !783
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !67, !alias.scope !783
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50, !noalias !783
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i16 0, ptr %i.ad, align 8, !tbaa !337
  store ptr %i.n, ptr %0, align 8, !tbaa !175
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.v

bb.n:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.y, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 80) #51
  br label %bb.w

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.af = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #55 ; 6 uses
  %i.ag = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser13parse_booleanEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = zext i1 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIbEE, i64 16), ptr %i.af, align 8, !tbaa !75
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i8 %i.ah, ptr %i.aj, align 8, !tbaa !189
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 42
  store i16 0, ptr %i.ak, align 2, !tbaa !338
  store ptr %i.af, ptr %0, align 8, !tbaa !175
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 48) #51
  br label %bb.w

bb.r:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.am = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55 ; 6 uses
  %i.an = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser16parse_inf_or_nanEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.am, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store double %i.an, ptr %i.ap, align 8, !tbaa !187
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i16 0, ptr %i.aq, align 8, !tbaa !281
  store ptr %i.am, ptr %0, align 8, !tbaa !175
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 56) #51
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !258
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.s, %bb.u, %bb.m, %bb.e, %bb.c, %bb.b
  ret void

bb.w:                                             ; preds = %bb.q, %bb.t, %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.f ], [ %i.al, %bb.q ], [ %i.ar, %bb.t ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !265    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3192 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !240  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 4, !tbaa !242
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.c:                                             ; preds = %bb.w, %bb.b
  %i.l = phi i32 [ %i.bw, %bb.w ], [ %i.d, %bb.b ] ; 7 uses
  %.not16 = icmp eq i32 %i.l, 95
  br i1 %.not16, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !785, !nonnull !106, !align !270 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !786, !nonnull !106, !align !253 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !124  ; 2 uses
  %i.p = add i64 %i.o, 1                          ; 5 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !124
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  store i32 %i.l, ptr %i.q, align 4, !tbaa !242
  %i.r = add i32 %i.l, -48
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.l, -33
  %i.u = add i32 %i.t, -65
  %i.v = icmp ult i32 %i.u, 26
  br i1 %i.v, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.w = or i32 %i.l, 32
  switch i32 %i.w, label %.thread [
    i32 98, label %bb.g
    i32 101, label %bb.i
    i32 111, label %bb.m
    i32 112, label %bb.o
    i32 120, label %bb.p
    i32 116, label %.thread.sink.split
    i32 122, label %bb.t
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i64 %i.p, 2
  br i1 %i.x, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !787, !nonnull !106, !align !253
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !279, !nonnull !106, !align !270
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !267
  %i.ab = and i32 %i.aa, 16384
  %.not25 = icmp eq i32 %i.ab, 0
  br i1 %.not25, label %.thread, label %.thread.sink.split

bb.i:                                             ; preds = %bb.f
  %i.ac = icmp ugt i64 %i.p, 1
  br i1 %i.ac, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !788, !nonnull !106, !align !253
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !790, !nonnull !106, !align !270
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !267 ; 2 uses
  %i.ag = and i32 %i.af, 506
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = and i32 %i.af, 1536
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !787, !nonnull !106, !align !253
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !279, !nonnull !106, !align !270
  %i.am = load i32, ptr %i.al, align 4, !tbaa !267
  %i.an = and i32 %i.am, 4096
  %.not24 = icmp eq i32 %i.an, 0
  br i1 %.not24, label %.thread, label %.thread.sink.split

bb.m:                                             ; preds = %bb.f
  %i.ao = icmp eq i64 %i.p, 2
  br i1 %i.ao, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !787, !nonnull !106, !align !253
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !279, !nonnull !106, !align !270
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !267
  %i.as = and i32 %i.ar, 16384
  %.not23 = icmp eq i32 %i.as, 0
  br i1 %.not23, label %.thread, label %.thread.sink.split

bb.o:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !787, !nonnull !106, !align !253
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !279, !nonnull !106, !align !270
  %i.av = load i32, ptr %i.au, align 4, !tbaa !267
  %i.aw = and i32 %i.av, 64
  %.not22 = icmp eq i32 %i.aw, 0
  br i1 %.not22, label %.thread, label %.thread.sink.split

bb.p:                                             ; preds = %bb.f
  switch i64 %i.p, label %.thread [
    i64 2, label %bb.q
    i64 3, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !787, !nonnull !106, !align !253
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !279, !nonnull !106, !align !270
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !267
  %i.ba = and i32 %i.az, 16384
  %.not21 = icmp eq i32 %i.ba, 0
  br i1 %.not21, label %.thread, label %.thread.sink.split

bb.r:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !787, !nonnull !106, !align !253
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !279, !nonnull !106, !align !270
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !267
  %i.be = and i32 %i.bd, 4096
  %.not20 = icmp eq i32 %i.be, 0
  br i1 %.not20, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !242
  %i.bh = icmp eq i32 %i.bg, 48
  br i1 %i.bh, label %.thread.sink.split, label %.thread

bb.t:                                             ; preds = %bb.f
  br label %.thread.sink.split

bb.u:                                             ; preds = %bb.e
  %i.bi = icmp ult i32 %i.l, 59
  br i1 %i.bi, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %switch.tableidx = add nsw i32 %i.l, -43        ; 3 uses
  %i.bj = icmp ult i32 %switch.tableidx, 16
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -32755, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.bj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.thread

switch.lookup:                                    ; preds = %bb.v
  %i.bk = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE_clEv, i64 %i.bk
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %switch.lookup, %bb.f, %bb.q, %bb.s, %bb.o, %bb.n, %bb.k, %bb.l, %bb.h, %bb.d, %bb.t
  %.sink30 = phi i32 [ 16, %bb.o ], [ 4, %bb.l ], [ 64, %bb.s ], [ %switch.ext, %switch.lookup ], [ 32, %bb.f ], [ 64, %bb.q ], [ 128, %bb.t ], [ 1, %bb.d ], [ 2, %bb.h ], [ 4, %bb.k ], [ 8, %bb.n ]
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !791, !nonnull !106, !align !253
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !269, !nonnull !106, !align !270 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !267
  %i.bo = or i32 %i.bn, %.sink30
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !267
  br label %.thread

.thread:                                          ; preds = %bb.v, %.thread.sink.split, %bb.p, %bb.q, %bb.u, %bb.f, %bb.h, %bb.g, %bb.l, %bb.j, %bb.i, %bb.n, %bb.m, %bb.o, %bb.s, %bb.r, %bb.c
  tail call void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %i.a)
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !792, !nonnull !106, !align !253 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !124
  %i.br = add i64 %i.bq, 1                        ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !124
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !240 ; 2 uses
  %.not17 = icmp eq ptr %i.bs, null               ; 2 uses
  %i.bt = load ptr, ptr %i.k, align 8, !tbaa !793, !nonnull !106
  %i.bu = zext i1 %.not17 to i8
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !259
  %i.bv = icmp ugt i64 %i.br, 126
  %brmerge = select i1 %i.bv, i1 true, i1 %.not17
  br i1 %brmerge, label %.critedge, label %bb.w

bb.w:                                             ; preds = %.thread
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !242 ; 2 uses
  %i.bx = tail call noundef zeroext i1 @_ZN4toml2v34impl19is_value_terminatorEDi(i32 noundef zeroext %i.bw) #56
  br i1 %i.bx, label %.critedge, label %bb.c, !llvm.loop !784

.critedge:                                        ; preds = %.thread, %bb.w, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !272    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !273, !nonnull !106, !align !253 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !274, !nonnull !106, !align !253 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %i.h = sub i64 %i.d, %i.g
  %i.i = icmp ne i64 %i.d, %i.g
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3056
  %i.k = load i64, ptr %i.j, align 8, !tbaa !251  ; 3 uses
  %i.l = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3080 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !248
  %i.o = add i64 %i.n, %i.h                       ; 4 uses
  %i.p = icmp ule i64 %i.o, %i.k
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.o, ptr %i.m, align 8, !tbaa !248
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 3064
  %i.s = load i64, ptr %i.r, align 8, !tbaa !250
  %i.t = sub i64 %i.k, %i.o
  %i.u = add i64 %i.t, %i.s
  %i.v = urem i64 %i.u, 127
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.v
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3072
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !249
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit:   ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.w, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3192
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !240
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 3184
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !155
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !155
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !124
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !275, !nonnull !106, !align !270
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !267
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !276, !nonnull !106, !align !270
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !267
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !277, !nonnull !106, !align !253
  store i64 10, ptr %i.al, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef double @_ZN4toml2v34impl7impl_ex6parser15parse_hex_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit:
  %.sroa.4 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !213
  store i64 26, ptr %i.a, align 8, !tbaa !124
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.101, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 77, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.102, ptr %i.b, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit
  unreachable

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm16EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 11 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %23 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %25 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %27 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %28 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !213
  store i64 19, ptr %i.d, align 8, !tbaa !124
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.110, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !240  ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !242  ; 4 uses
  %.not = icmp eq i32 %i.f, 48
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 19, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.103, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  %i.h = icmp ult i32 %i.f, 32
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 16, !tbaa !124
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !125
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.f, 127
  br i1 %i.k, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !247
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.c ], [ %i.l, %bb.e ], [ @.str.29, %bb.d ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.c ], [ %i.n, %bb.e ], [ 6, %bb.d ]
  store i64 %.sroa.0.0.i, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.i, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 1, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.16, ptr %i.p, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.cf

bb.h:                                             ; preds = %bb.a
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !240  ; 4 uses
  %.not50 = icmp eq ptr %i.r, null
  br i1 %.not50, label %bb.j, label %bb.n, !prof !156

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 23, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.13, ptr %i.s, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.u, %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.m:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.cf

bb.n:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.r, align 4, !tbaa !242  ; 4 uses
  %.not51 = icmp eq i32 %i.v, 120
  br i1 %.not51, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 10, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.98, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  store i64 8, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.99, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.y = icmp ult i32 %i.v, 32
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.z = zext nneg i32 %i.v to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i71 = load i64, ptr %i.aa, align 16, !tbaa !124
  %.sroa.4.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.4.0.copyload.i73 = load ptr, ptr %.sroa.4.0..sroa_idx.i72, align 8, !tbaa !125
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit74

bb.q:                                             ; preds = %bb.o
  %i.ab = icmp eq i32 %i.v, 127
  br i1 %i.ab, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit74, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !247
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit74

end_hunk_2
begin_hunk_3_@llvm.vector.reduce.add.v2i64
!59 = !{!"int", !58, i64 0}
!60 = !{!"__libc_errno", !59, i64 0}
!61 = !{!60, !59, i64 0}
!62 = !{!"any pointer", !58, i64 0}
!63 = !{!"p1 omnipotent char", !62, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !63, i64 0}
!65 = !{!"long", !58, i64 0}
!66 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !64, i64 0, !65, i64 8, !58, i64 16}
!67 = !{!66, !63, i64 0}
!68 = !{!66, !65, i64 8}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!58, !58, i64 0}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!"branch_weights", i32 4, i32 12}
!74 = !{!"vtable pointer", !57, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"_ZTSSt13_Ios_Fmtflags", !58, i64 0}
!77 = !{!"_ZTSSt12_Ios_Iostate", !58, i64 0}
!78 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !62, i64 0}
!79 = !{!"_ZTSNSt8ios_base6_WordsE", !62, i64 0, !65, i64 8}
!80 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !62, i64 0}
!81 = !{!"p1 _ZTSNSt6locale5_ImplE", !62, i64 0}
!82 = !{!"_ZTSSt6locale", !81, i64 0}
!83 = !{!"_ZTSSt8ios_base", !65, i64 8, !65, i64 16, !76, i64 24, !77, i64 28, !77, i64 32, !78, i64 40, !79, i64 48, !58, i64 64, !59, i64 192, !80, i64 200, !82, i64 208}
!84 = !{!83, !65, i64 8}
!85 = !{!83, !76, i64 24}
!86 = !{!76, !76, i64 0}
!87 = !{!64, !63, i64 0}
!88 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !82, i64 56}
!89 = !{!88, !63, i64 40}
!90 = !{!88, !63, i64 32}
!91 = !{!"short", !58, i64 0}
!92 = !{!"_ZTSN4toml2v34dateE", !91, i64 0, !58, i64 2, !58, i64 3}
!93 = !{!92, !91, i64 0}
!94 = !{!92, !58, i64 2}
!95 = !{!92, !58, i64 3}
!96 = !{!"_ZTSN4toml2v34timeE", !58, i64 0, !58, i64 1, !58, i64 2, !59, i64 4}
!97 = !{!96, !58, i64 0}
!98 = !{!96, !58, i64 1}
!99 = !{!96, !58, i64 2}
!100 = !{!96, !59, i64 4}
!101 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!102 = !{!"bool", !58, i64 0}
!103 = !{!"_ZTSSt22_Optional_payload_baseIN4toml2v311time_offsetEE", !58, i64 0, !102, i64 2}
!104 = !{!103, !102, i64 2}
!105 = !{i8 0, i8 2}
!106 = !{}
!107 = !{!"_ZTSN4toml2v315source_positionE", !59, i64 0, !59, i64 4}
!108 = !{!107, !59, i64 0}
!109 = !{!107, !59, i64 4}
!110 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !62, i64 0}
!111 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !62, i64 0}
!112 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !111, i64 0}
!113 = !{!"_ZTSSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE", !110, i64 0, !112, i64 8}
!114 = !{!113, !110, i64 0}
!115 = !{!"p1 _ZTSN4toml2v34nodeE", !62, i64 0}
!116 = !{!"p1 _ZTSN4toml2v34impl19formatter_constantsE", !62, i64 0}
!117 = !{!"_ZTSN4toml2v312format_flagsE", !58, i64 0}
!118 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !65, i64 0, !63, i64 8}
!119 = !{!"_ZTSN4toml2v34impl16formatter_configE", !117, i64 0, !118, i64 8}
!120 = !{!"p1 _ZTSSo", !62, i64 0}
!121 = !{!"_ZTSN4toml2v34impl9formatterE", !115, i64 0, !116, i64 8, !119, i64 16, !65, i64 40, !117, i64 48, !120, i64 56, !59, i64 64, !102, i64 68}
!122 = !{!121, !115, i64 0}
!123 = !{!121, !116, i64 8}
!124 = !{!65, !65, i64 0}
!125 = !{!63, !63, i64 0}
!126 = !{!121, !117, i64 16}
!127 = !{!121, !65, i64 40}
!128 = !{!121, !117, i64 48}
!129 = !{!121, !59, i64 64}
!130 = !{!121, !102, i64 68}
!131 = !{!121, !120, i64 56}
!132 = !{!"_ZTSSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !113, i64 0}
!133 = !{!"_ZTSN4toml2v313source_regionE", !107, i64 0, !107, i64 8, !132, i64 16}
!134 = !{!"_ZTSN4toml2v34nodeE", !133, i64 8}
!135 = !{!"_ZTSSt4lessIvE"}
!136 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIvEE", !135, i64 0}
!137 = !{!"_ZTSSt14_Rb_tree_color", !58, i64 0}
!138 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !62, i64 0}
!139 = !{!"_ZTSSt18_Rb_tree_node_base", !137, i64 0, !138, i64 8, !138, i64 16, !138, i64 24}
!140 = !{!"_ZTSSt15_Rb_tree_header", !139, i64 0, !65, i64 32}
!141 = !{!"_ZTSNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE13_Rb_tree_implISE_Lb1EEE", !136, i64 0, !140, i64 8}
!142 = !{!"_ZTSSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE", !141, i64 0}
!143 = !{!"_ZTSSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE", !142, i64 0}
!144 = !{!"_ZTSN4toml2v35tableE", !134, i64 0, !143, i64 40, !102, i64 88}
!145 = !{!144, !102, i64 88}
!146 = !{!"any p2 pointer", !62, i64 0}
!147 = !{!"p2 _ZTSN4toml2v33keyE", !146, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseIPKN4toml2v33keyESaIS4_EE17_Vector_impl_dataE", !147, i64 0, !147, i64 8, !147, i64 16}
!149 = !{!148, !147, i64 0}
!150 = !{!148, !147, i64 16}
!151 = !{!112, !111, i64 0}
!152 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !59, i64 8, !59, i64 12}
!153 = !{!152, !59, i64 8}
!154 = !{!152, !59, i64 12}
!155 = !{!59, !59, i64 0}
!156 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!157 = !{!62, !62, i64 0}
!158 = !{!140, !65, i64 32}
!159 = !{!"p1 _ZTSSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE", !62, i64 0}
!160 = !{!159, !159, i64 0}
!161 = !{!138, !138, i64 0}
!162 = !{!"branch_weights", i32 2000, i32 2001, i32 2001, i32 1}
!163 = !{!"branch_weights", i32 127, i32 1}
!164 = !{!"branch_weights", i32 1999, i32 1}
!165 = !{!"branch_weights", i32 1, i32 0}
!166 = !{!"branch_weights", i32 127, i32 255873}
!167 = !{!"branch_weights", i32 -2147483648, i32 0}
!168 = !{!"branch_weights", i32 2000, i32 6000, i32 0, i32 0, i32 2000, i32 2000}
!169 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!170 = !{!"branch_weights", i32 1073205, i32 2146410443}
!171 = !{!"branch_weights", i32 826611689, i32 1320871959}
!172 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !159, i64 0, !159, i64 8, !159, i64 16}
!173 = !{!172, !159, i64 8}
!174 = !{!172, !159, i64 0}
!175 = !{!115, !115, i64 0}
!176 = !{!"p1 _ZTSN4toml2v314path_componentE", !62, i64 0}
!177 = !{!176, !176, i64 0}
!178 = !{!"_ZTSN4toml2v314path_component9storage_tE", !58, i64 0}
!179 = !{!"_ZTSN4toml2v319path_component_typeE", !58, i64 0}
!180 = !{!"_ZTSN4toml2v314path_componentE", !178, i64 0, !179, i64 32}
!181 = !{!180, !179, i64 32}
!182 = !{!"_ZTSN4toml2v311value_flagsE", !58, i64 0}
!183 = !{!"_ZTSN4toml2v35valueIlEE", !134, i64 0, !65, i64 40, !182, i64 48}
!184 = !{!183, !65, i64 40}
!185 = !{!"double", !58, i64 0}
!186 = !{!"_ZTSN4toml2v35valueIdEE", !134, i64 0, !185, i64 40, !182, i64 48}
!187 = !{!186, !185, i64 40}
!188 = !{!"_ZTSN4toml2v35valueIbEE", !134, i64 0, !102, i64 40, !182, i64 42}
!189 = !{!188, !102, i64 40}
!190 = !{!"_ZTSNSt12_Vector_baseIN4toml2v314path_componentESaIS2_EE17_Vector_impl_dataE", !176, i64 0, !176, i64 8, !176, i64 16}
!191 = !{!190, !176, i64 8}
!192 = !{!190, !176, i64 0}
!193 = !{!190, !176, i64 16}
!194 = !{!172, !159, i64 16}
!195 = !{ptr @_ZN4toml2v34nodeD2Ev}
!196 = !{!"_ZTSZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEEUlS8_E_", !182, i64 0}
!197 = !{!196, !182, i64 0}
!198 = !{!140, !138, i64 16}
!199 = !{!140, !137, i64 0}
!200 = !{!140, !138, i64 8}
!201 = !{!140, !138, i64 24}
!202 = !{!"p1 _ZTSN4toml2v33keyE", !62, i64 0}
!203 = !{!202, !202, i64 0}
!204 = !{!"_ZTSZN4toml2v34impl14make_node_implIRNS0_4nodeEEEPDaOT_NS0_11value_flagsEEUlS7_E_", !182, i64 0}
!205 = !{!204, !182, i64 0}
!206 = !{!139, !138, i64 8}
!207 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKN4toml2v33keyESt10unique_ptrINS2_4nodeESt14default_deleteIS6_EEEE", !138, i64 0}
!208 = !{!"_ZTSN4toml2v34impl14table_iteratorILb0EEE", !207, i64 0, !58, i64 8, !102, i64 24}
!209 = !{!208, !102, i64 24}
!210 = !{!"_ZTSSt23_Rb_tree_const_iteratorISt4pairIKN4toml2v33keyESt10unique_ptrINS2_4nodeESt14default_deleteIS6_EEEE", !138, i64 0}
!211 = !{!"_ZTSN4toml2v34impl14table_iteratorILb1EEE", !210, i64 0, !58, i64 8, !102, i64 24}
!212 = !{!211, !102, i64 24}
!213 = !{i64 0, i64 8, !124, i64 8, i64 8, !125}
!214 = !{!"p1 _ZTSN12_GLOBAL__N_121utf8_reader_interfaceE", !62, i64 0}
!215 = !{!"_ZTSN12_GLOBAL__N_120utf8_buffered_reader3$_5E", !58, i64 0, !65, i64 3048, !65, i64 3056}
!216 = !{!"p1 _ZTSN12_GLOBAL__N_114utf8_codepointE", !62, i64 0}
!217 = !{!"_ZTSN12_GLOBAL__N_120utf8_buffered_readerE", !214, i64 0, !215, i64 8, !216, i64 3072, !65, i64 3080}
!218 = !{!"p2 _ZTSN4toml2v35tableE", !146, i64 0}
!219 = !{!"_ZTSNSt12_Vector_baseIPN4toml2v35tableESaIS3_EE17_Vector_impl_dataE", !218, i64 0, !218, i64 8, !218, i64 16}
!220 = !{!"_ZTSNSt12_Vector_baseIPN4toml2v35tableESaIS3_EE12_Vector_implE", !219, i64 0}
!221 = !{!"_ZTSSt12_Vector_baseIPN4toml2v35tableESaIS3_EE", !220, i64 0}
!222 = !{!"_ZTSSt6vectorIPN4toml2v35tableESaIS3_EE", !221, i64 0}
!223 = !{!"p2 _ZTSN4toml2v35arrayE", !146, i64 0}
!224 = !{!"_ZTSNSt12_Vector_baseIPN4toml2v35arrayESaIS3_EE17_Vector_impl_dataE", !223, i64 0, !223, i64 8, !223, i64 16}
!225 = !{!"_ZTSNSt12_Vector_baseIPN4toml2v35arrayESaIS3_EE12_Vector_implE", !224, i64 0}
!226 = !{!"_ZTSSt12_Vector_baseIPN4toml2v35arrayESaIS3_EE", !225, i64 0}
!227 = !{!"_ZTSSt6vectorIPN4toml2v35arrayESaIS3_EE", !226, i64 0}
!228 = !{!"p1 _ZTSSt4pairImmE", !62, i64 0}
!229 = !{!"_ZTSNSt12_Vector_baseISt4pairImmESaIS1_EE17_Vector_impl_dataE", !228, i64 0, !228, i64 8, !228, i64 16}
!230 = !{!"_ZTSNSt12_Vector_baseISt4pairImmESaIS1_EE12_Vector_implE", !229, i64 0}
!231 = !{!"_ZTSSt12_Vector_baseISt4pairImmESaIS1_EE", !230, i64 0}
!232 = !{!"_ZTSSt6vectorISt4pairImmESaIS1_EE", !231, i64 0}
!233 = !{!"p1 _ZTSN4toml2v315source_positionE", !62, i64 0}
!234 = !{!"_ZTSNSt12_Vector_baseIN4toml2v315source_positionESaIS2_EE17_Vector_impl_dataE", !233, i64 0, !233, i64 8, !233, i64 16}
!235 = !{!"_ZTSNSt12_Vector_baseIN4toml2v315source_positionESaIS2_EE12_Vector_implE", !234, i64 0}
!236 = !{!"_ZTSSt12_Vector_baseIN4toml2v315source_positionESaIS2_EE", !235, i64 0}
!237 = !{!"_ZTSSt6vectorIN4toml2v315source_positionESaIS2_EE", !236, i64 0}
!238 = !{!"_ZTSN12_GLOBAL__N_116parse_key_bufferE", !66, i64 0, !232, i64 32, !237, i64 56, !237, i64 80}
!239 = !{!"_ZTSN4toml2v34impl7impl_ex6parserE", !217, i64 0, !144, i64 3088, !107, i64 3184, !216, i64 3192, !222, i64 3200, !222, i64 3224, !222, i64 3248, !227, i64 3272, !238, i64 3296, !66, i64 3400, !66, i64 3432, !102, i64 3464, !102, i64 3465, !118, i64 3472, !65, i64 3488}
!240 = !{!239, !216, i64 3192}
!241 = !{!"char32_t", !58, i64 0}
!242 = !{!241, !241, i64 0}
!243 = !{!"branch_weights", i32 1, i32 2000}
!244 = !{!216, !216, i64 0}
!245 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!246 = !{!"_ZTSN12_GLOBAL__N_114utf8_codepointE", !241, i64 0, !58, i64 4, !65, i64 8, !107, i64 16}
!247 = !{!246, !65, i64 8}
!248 = !{!217, !65, i64 3080}
!249 = !{!217, !216, i64 3072}
!250 = !{!217, !65, i64 3064}
!251 = !{!217, !65, i64 3056}
!252 = !{!217, !214, i64 0}
!253 = !{i64 8}
!254 = !{!239, !102, i64 3464}
!255 = !{!239, !102, i64 3465}
!256 = !{!"llvm.loop.peeled.count", i32 1}
!257 = !{!"_ZTSSt10_Head_baseILm0EPN4toml2v34nodeELb0EE", !115, i64 0}
!258 = !{!257, !115, i64 0}
!259 = !{!102, !102, i64 0}
!260 = !{!"p1 _ZTSN4toml2v34impl7impl_ex6parserE", !62, i64 0}
!261 = !{!"p1 char32_t", !62, i64 0}
!262 = !{!"p1 long", !62, i64 0}
!263 = !{!"p1 bool", !62, i64 0}
!264 = !{!"_ZTSZN4toml2v34impl7impl_ex6parser11parse_valueEvEUlvE_", !260, i64 0, !261, i64 8, !262, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !262, i64 48, !263, i64 56}
!265 = !{!264, !260, i64 0}
!266 = !{!"_ZTSZN4toml2v34impl7impl_ex6parser11parse_valueEvE12value_traits", !58, i64 0}
!267 = !{!266, !266, i64 0}
!268 = !{!"_ZTSZN4toml2v34impl7impl_ex6parser11parse_valueEvEUlT_E1_", !62, i64 0}
!269 = !{!268, !62, i64 0}
!270 = !{i64 4}
!271 = !{!"_ZTSZN4toml2v34impl7impl_ex6parser11parse_valueEvEUlvE0_", !260, i64 0, !262, i64 8, !262, i64 16, !62, i64 24, !62, i64 32, !262, i64 40}
!272 = !{!271, !260, i64 0}
!273 = !{!271, !262, i64 8}
!274 = !{!271, !262, i64 16}
!275 = !{!271, !62, i64 32}
!276 = !{!271, !62, i64 24}
!277 = !{!271, !262, i64 40}
!278 = !{!"_ZTSZN4toml2v34impl7impl_ex6parser11parse_valueEvEUlT_E_", !62, i64 0}
!279 = !{!278, !62, i64 0}
!280 = !{!183, !182, i64 48}
!281 = !{!186, !182, i64 48}
!282 = !{!"_ZTSN4toml2v35valueINS0_4timeEEE", !134, i64 0, !96, i64 40, !182, i64 48}
!283 = !{!282, !182, i64 48}
!284 = !{!"_ZTSN4toml2v35valueINS0_4dateEEE", !134, i64 0, !92, i64 40, !182, i64 44}
!285 = !{!284, !182, i64 44}
!286 = !{!"_ZTSSt17_Optional_payloadIN4toml2v311time_offsetELb1ELb1ELb1EE", !103, i64 0}
!287 = !{!"_ZTSSt14_Optional_baseIN4toml2v311time_offsetELb1ELb1EE", !286, i64 0}
!288 = !{!"_ZTSSt8optionalIN4toml2v311time_offsetEE", !287, i64 0}
!289 = !{!"_ZTSN4toml2v36stdopt9date_timeE", !92, i64 0, !96, i64 4, !288, i64 12}
!290 = !{!"_ZTSN4toml2v35valueINS0_6stdopt9date_timeEEE", !134, i64 0, !289, i64 40, !182, i64 56}
!291 = !{!290, !182, i64 56}
!292 = !{!239, !59, i64 3188}
!293 = !{!219, !218, i64 8}
!294 = !{!219, !218, i64 16}
!295 = !{!"p1 _ZTSN4toml2v35tableE", !62, i64 0}
!296 = !{!295, !295, i64 0}
!297 = !{!219, !218, i64 0}
!298 = !{!229, !228, i64 8}
!299 = !{!229, !228, i64 0}
!300 = !{!"_ZTSSt4pairImmE", !65, i64 0, !65, i64 8}
!301 = !{!300, !65, i64 0}
!302 = !{!300, !65, i64 8}
!303 = !{!218, !218, i64 0}
!304 = !{!234, !233, i64 0}
!305 = !{!210, !138, i64 0}
!306 = !{!"_ZTSN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEE", !118, i64 0, !65, i64 16}
!307 = !{!306, !65, i64 16}
!308 = !{!"_ZTSN12_GLOBAL__N_121utf8_reader_interfaceE"}
!309 = !{!"_ZTSN4toml2v34impl12utf8_decoderE", !59, i64 0, !241, i64 4}
!310 = !{!"_ZTSN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE20currently_decoding_tE", !58, i64 0, !65, i64 8}
!311 = !{!"_ZTSN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE12codepoints_tE", !58, i64 0, !65, i64 768, !65, i64 776}
!312 = !{!"_ZTSN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE", !308, i64 0, !306, i64 8, !107, i64 32, !309, i64 40, !310, i64 48, !311, i64 64, !132, i64 864}
!313 = !{!312, !65, i64 56}
!314 = !{!224, !223, i64 0}
!315 = !{!224, !223, i64 16}
!316 = !{!110, !110, i64 0}
!317 = !{!"p1 _ZTSSi", !62, i64 0}
!318 = !{!"_ZTSN12_GLOBAL__N_116utf8_byte_streamISiEE", !317, i64 0}
!319 = !{!"_ZTSN12_GLOBAL__N_111utf8_readerISiE20currently_decoding_tE", !58, i64 0, !65, i64 8}
!320 = !{!"_ZTSN12_GLOBAL__N_111utf8_readerISiE12codepoints_tE", !58, i64 0, !65, i64 768, !65, i64 776}
!321 = !{!"_ZTSN12_GLOBAL__N_111utf8_readerISiEE", !308, i64 0, !318, i64 8, !107, i64 16, !309, i64 24, !319, i64 32, !320, i64 64, !132, i64 864}
!322 = !{!321, !65, i64 40}
!323 = !{!83, !77, i64 32}
!324 = !{!118, !63, i64 8}
!325 = !{!118, !65, i64 0}
!326 = !{!"llvm.loop.unroll.disable"}
!327 = !{!"_ZTSNSt12_Vector_baseIPKN4toml2v33keyESaIS4_EE12_Vector_implE", !148, i64 0}
!328 = !{!"_ZTSSt12_Vector_baseIPKN4toml2v33keyESaIS4_EE", !327, i64 0}
!329 = !{!"_ZTSSt6vectorIPKN4toml2v33keyESaIS4_EE", !328, i64 0}
!330 = !{!"_ZTSN4toml2v314toml_formatterE", !121, i64 0, !329, i64 72, !102, i64 96}
!331 = !{!330, !102, i64 96}
!332 = !{!139, !138, i64 24}
!333 = !{!"_ZTSN12_GLOBAL__N_113error_builderE", !58, i64 0, !63, i64 512, !63, i64 520}
!334 = !{!333, !63, i64 520}
!335 = !{!246, !241, i64 0}
!336 = !{!"_ZTSN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !134, i64 0, !66, i64 40, !182, i64 72}
!337 = !{!336, !182, i64 72}
!338 = !{!188, !182, i64 42}
!339 = !{!"branch_weights", i32 4001, i32 1}
!340 = !{!"branch_weights", i32 1, i32 4001}
!341 = !{!185, !185, i64 0}
!342 = !{!"_ZTSSi", !65, i64 8}
!343 = !{!342, !65, i64 8}
!344 = !{!"branch_weights", i32 0, i32 -2147483648}
!345 = !{!"_ZTSN12_GLOBAL__N_113parsed_stringE", !118, i64 0, !102, i64 16}
!346 = !{!345, !102, i64 16}
!347 = !{!229, !228, i64 16}
!348 = !{!234, !233, i64 16}
!349 = !{!312, !65, i64 840}
!350 = !{!309, !59, i64 0}
!351 = !{!309, !241, i64 4}
!352 = !{!312, !59, i64 32}
!353 = !{!312, !59, i64 36}
!354 = !{!318, !317, i64 0}
!355 = !{!321, !65, i64 840}
!356 = !{!321, !59, i64 16}
!357 = !{!321, !59, i64 20}
!358 = distinct !{!358, !69}
!359 = distinct !{!359, !69, !71, !72}
!360 = distinct !{!360, !69, !71, !72}
!361 = distinct !{!361, !69}
!362 = distinct !{!362, !69, !72, !71}
!363 = distinct !{!363, !69}
!364 = distinct !{!364, !69, !71, !72}
!365 = distinct !{!365, !69, !71, !72}
!366 = distinct !{!366, !69}
!367 = distinct !{!367, !69, !72, !71}
!368 = distinct !{!368, !69}
!369 = distinct !{!369, !69, !71, !72}
!370 = distinct !{!370, !69, !71, !72}
!371 = distinct !{!371, !69}
!372 = distinct !{!372, !69, !72, !71}
!373 = distinct !{!373, !69}
!374 = distinct !{!374, !69, !71, !72}
!375 = distinct !{!375, !69, !71, !72}
!376 = distinct !{!376, !69}
!377 = distinct !{!377, !69, !72, !71}
!378 = distinct !{!378, !69}
!379 = distinct !{!379, !69, !71, !72}
!380 = distinct !{!380, !69, !71, !72}
!381 = distinct !{!381, !69}
!382 = distinct !{!382, !69, !72, !71}
!383 = distinct !{!383, !69}
!384 = distinct !{!384, !69, !71, !72}
!385 = distinct !{!385, !69, !71, !72}
!386 = distinct !{!386, !69, !72, !71}
!387 = distinct !{!387, !69}
!388 = distinct !{!388, !69, !71, !72}
!389 = distinct !{!389, !69, !71, !72}
!390 = distinct !{!390, !69, !72, !71}
!391 = distinct !{!391, !69}
!392 = distinct !{!392, !69, !71, !72}
!393 = distinct !{!393, !69, !71, !72}
!394 = distinct !{!394, !69, !72, !71}
!395 = distinct !{!395, !69}
!396 = distinct !{!396, !69, !71, !72}
!397 = distinct !{!397, !69, !71, !72}
!398 = distinct !{!398, !69}
!399 = distinct !{!399, !69, !72, !71}
!400 = distinct !{!400, !69}
!401 = distinct !{!401, !69, !71, !72}
!402 = distinct !{!402, !69, !71, !72}
!403 = distinct !{!403, !69}
!404 = distinct !{!404, !69, !72, !71}
!405 = distinct !{!405, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!406 = distinct !{!406, !405, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!407 = distinct !{!407, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!408 = distinct !{!408, !407, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!409 = !{!406}
!410 = !{!408}
!411 = !{!408, !406}
!412 = distinct !{!412, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!413 = distinct !{!413, !412, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!414 = distinct !{!414, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!415 = distinct !{!415, !414, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!416 = !{!413}
!417 = !{!415}
!418 = !{!415, !413}
!419 = distinct !{!419, !69}
!420 = !{!"_ZTSN4toml2v311time_offsetE", !91, i64 0}
!421 = !{!420, !91, i64 0}
!422 = distinct !{!422, i1 false, !"_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_"}
!423 = distinct !{!423, !422, !"_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_: argument 0"}
!424 = distinct !{!424, i1 false, !"_ZSt10__exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_"}
!425 = distinct !{!425, !424, !"_ZSt10__exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_: argument 0"}
!426 = !{!423}
!427 = !{!425}
!428 = !{!425, !423}
!429 = distinct !{!429, i1 false, !"_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_"}
!430 = distinct !{!430, !429, !"_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_: argument 0"}
!431 = distinct !{!431, i1 false, !"_ZSt10__exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_"}
!432 = distinct !{!432, !431, !"_ZSt10__exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_: argument 0"}
!433 = !{!432, !430}
!434 = distinct !{null, ptr @_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE, null}
!435 = distinct !{ptr @"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_", ptr @_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE, null}
!436 = !{ptr @_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE}
!437 = distinct !{null}
!438 = distinct !{null}
!439 = distinct !{null, null, null}
!440 = distinct !{null}
!441 = distinct !{null, null, null}
!442 = distinct !{null}
!443 = distinct !{null, null, null}
!444 = distinct !{null, null, null}
!445 = distinct !{null, null, null}
!446 = distinct !{null, null, null}
!447 = distinct !{null, null, null}
!448 = distinct !{null, null, null}
!449 = distinct !{null, null, null}
!450 = distinct !{!450, !69}
!451 = distinct !{!451, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!452 = distinct !{!452, !451, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!453 = distinct !{!453, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!454 = distinct !{!454, !453, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!455 = !{!452}
!456 = !{!454}
!457 = !{!454, !452}
!458 = distinct !{!458, i1 false, !"_ZNK4toml2v34path9truncatedEm"}
!459 = distinct !{!459, !458, !"_ZNK4toml2v34path9truncatedEm: argument 0"}
!460 = !{!459}
!461 = distinct !{!461, i1 false, !"_ZNK4toml2v34path7subpathEN9__gnu_cxx17__normal_iteratorIPKNS0_14path_componentESt6vectorIS4_SaIS4_EEEESA_"}
!462 = distinct !{!462, !461, !"_ZNK4toml2v34path7subpathEN9__gnu_cxx17__normal_iteratorIPKNS0_14path_componentESt6vectorIS4_SaIS4_EEEESA_: argument 0"}
!463 = !{!462}
!464 = distinct !{null, null, null, null, null}
!465 = distinct !{!465, !69, !71, !72}
!466 = distinct !{!466, !69, !72, !71}
!467 = distinct !{!467, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!468 = distinct !{!468, !467, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!469 = distinct !{!469, !467, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!470 = distinct !{!470, i1 false, !"LVerDomain"}
!471 = distinct !{!471, !470}
!472 = distinct !{!472, !470}
!473 = distinct !{!473, !69, !71, !72}
!474 = distinct !{!474, !69, !71}
!475 = distinct !{!475, !69}
!476 = !{!468}
!477 = !{!469}
!478 = !{!469, !471}
!479 = !{!468, !472}
!480 = distinct !{!480, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!481 = distinct !{!481, !480, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!482 = distinct !{!482, !480, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!483 = distinct !{!483, i1 false, !"LVerDomain"}
!484 = distinct !{!484, !483}
!485 = distinct !{!485, !483}
!486 = distinct !{!486, !69, !71, !72}
!487 = distinct !{!487, !69, !71}
!488 = distinct !{!488, i1 false, !"_ZN4toml2v34impl9make_nodeIRKNS0_4nodeEEESt10unique_ptrIS3_St14default_deleteIS3_EEOT_NS0_11value_flagsE"}
!489 = distinct !{!489, !488, !"_ZN4toml2v34impl9make_nodeIRKNS0_4nodeEEESt10unique_ptrIS3_St14default_deleteIS3_EEOT_NS0_11value_flagsE: argument 0"}
!490 = distinct !{null}
!491 = distinct !{!491, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!492 = distinct !{!492, !491, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!493 = distinct !{!493, !491, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!494 = distinct !{!494, i1 false, !"LVerDomain"}
!495 = distinct !{!495, !494}
!496 = distinct !{!496, !494}
!497 = distinct !{!497, !69, !71, !72}
!498 = distinct !{!498, !69, !71}
!499 = !{!481}
!500 = !{!482}
!501 = !{!482, !484}
!502 = !{!481, !485}
!503 = !{!489}
!504 = !{!492}
!505 = !{!493}
!506 = !{!493, !495}
!507 = !{!492, !496}
!508 = distinct !{!508, i1 false, !"_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_"}
!509 = distinct !{!509, !508, !"_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_: argument 0"}
!510 = distinct !{!510, i1 false, !"_ZSt10__exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_"}
!511 = distinct !{!511, !510, !"_ZSt10__exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_: argument 0"}
!512 = !{!509}
!513 = !{!511}
!514 = !{!511, !509}
!515 = distinct !{!515, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!516 = distinct !{!516, !515, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!517 = distinct !{!517, !515, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!518 = distinct !{!518, i1 false, !"LVerDomain"}
!519 = distinct !{!519, !518}
!520 = distinct !{!520, !518}
!521 = distinct !{!521, !69, !71, !72}
!522 = distinct !{!522, !69, !71}
!523 = distinct !{!523, i1 false, !"_ZN4toml2v34impl9make_nodeIRKNS0_4nodeEEESt10unique_ptrIS3_St14default_deleteIS3_EEOT_NS0_11value_flagsE"}
!524 = distinct !{!524, !523, !"_ZN4toml2v34impl9make_nodeIRKNS0_4nodeEEESt10unique_ptrIS3_St14default_deleteIS3_EEOT_NS0_11value_flagsE: argument 0"}
!525 = distinct !{null, null, null}
!526 = distinct !{!526, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!527 = distinct !{!527, !526, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!528 = distinct !{!528, !526, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!529 = distinct !{!529, i1 false, !"LVerDomain"}
!530 = distinct !{!530, !529}
!531 = distinct !{!531, !529}
!532 = distinct !{!532, !69, !71, !72}
!533 = distinct !{!533, !69, !71}
!534 = !{!516}
!535 = !{!517}
!536 = !{!517, !519}
!537 = !{!516, !520}
!538 = !{!524}
!539 = !{!527}
!540 = !{!528}
!541 = !{!528, !530}
!542 = !{!527, !531}
!543 = distinct !{!543, i1 false, !"_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_"}
!544 = distinct !{!544, !543, !"_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_: argument 0"}
!545 = distinct !{!545, i1 false, !"_ZSt10__exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_"}
!546 = distinct !{!546, !545, !"_ZSt10__exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_: argument 0"}
!547 = distinct !{null, null, ptr @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!548 = !{!546, !544}
!549 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null}
!550 = distinct !{!550, !69}
!551 = distinct !{null, null, null, null, null, null, null, null}
!552 = !{ptr @_ZN4toml2v35array14is_homogeneousENS0_9node_typeERPNS0_4nodeE}
!553 = distinct !{!553, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!554 = distinct !{!554, !553, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!555 = distinct !{!555, !553, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!556 = distinct !{!556, i1 false, !"LVerDomain"}
!557 = distinct !{!557, !556}
!558 = distinct !{!558, !556}
!559 = distinct !{!559, !69, !71, !72}
!560 = distinct !{!560, !69, !71}
!561 = !{!554}
!562 = !{!555}
!563 = !{!555, !557}
!564 = !{!554, !558}
!565 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null}
!566 = distinct !{null, null, null, null, null, null, null, null}
!567 = distinct !{!567, !69}
!568 = distinct !{!568, !69}
!569 = distinct !{!569, !69}
!570 = distinct !{!570, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!571 = distinct !{!571, !570, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!572 = distinct !{!572, !570, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!573 = distinct !{!573, i1 false, !"LVerDomain"}
!574 = distinct !{!574, !573}
!575 = distinct !{!575, !573}
!576 = distinct !{!576, !69, !71, !72}
!577 = distinct !{!577, !69, !71}
!578 = distinct !{!578, !69}
!579 = distinct !{ptr @_ZN4toml2v35array19preinsertion_resizeEmm, null, null, null, null, null, null, null}
!580 = distinct !{ptr @_ZN4toml2v35array19preinsertion_resizeEmm, null, null, null, null, null}
!581 = !{!571}
!582 = !{!572}
!583 = !{!572, !574}
!584 = !{!571, !575}
!585 = distinct !{!585, !69}
!586 = distinct !{!586, !69}
!587 = distinct !{null, null, null}
!588 = distinct !{null, null, null, null}
!589 = distinct !{null, null}
!590 = distinct !{null, null, null, null}
!591 = distinct !{!591, !69}
!592 = distinct !{!592, !69}
!593 = distinct !{!593, !69}
!594 = distinct !{!594, i1 false, !"_ZSt16forward_as_tupleIJN4toml2v33keyEEESt5tupleIJDpOT_EES6_"}
!595 = distinct !{!595, !594, !"_ZSt16forward_as_tupleIJN4toml2v33keyEEESt5tupleIJDpOT_EES6_: argument 0"}
!596 = distinct !{!596, i1 false, !"_ZSt16forward_as_tupleIJSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEESt5tupleIJDpOT_EESA_"}
!597 = distinct !{!597, !596, !"_ZSt16forward_as_tupleIJSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEESt5tupleIJDpOT_EESA_: argument 0"}
!598 = !{!595}
!599 = !{!597}
!600 = distinct !{!600, i1 false, !"_ZN4toml2v34impl9make_nodeIRNS0_4nodeEEESt10unique_ptrIS3_St14default_deleteIS3_EEOT_NS0_11value_flagsE"}
!601 = distinct !{!601, !600, !"_ZN4toml2v34impl9make_nodeIRNS0_4nodeEEESt10unique_ptrIS3_St14default_deleteIS3_EEOT_NS0_11value_flagsE: argument 0"}
!602 = distinct !{null}
!603 = !{!601}
!604 = distinct !{!604, i1 false, !"_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_"}
!605 = distinct !{!605, !604, !"_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_: argument 0"}
!606 = distinct !{!606, i1 false, !"_ZSt10__exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_"}
!607 = distinct !{!607, !606, !"_ZSt10__exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_: argument 0"}
!608 = !{!605}
!609 = !{!607}
!610 = !{!607, !605}
!611 = distinct !{!611, i1 false, !"_ZN4toml2v34impl9make_nodeIRNS0_4nodeEEESt10unique_ptrIS3_St14default_deleteIS3_EEOT_NS0_11value_flagsE"}
!612 = distinct !{!612, !611, !"_ZN4toml2v34impl9make_nodeIRNS0_4nodeEEESt10unique_ptrIS3_St14default_deleteIS3_EEOT_NS0_11value_flagsE: argument 0"}
!613 = distinct !{null, null, null}
!614 = !{!612}
!615 = distinct !{!615, i1 false, !"_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_"}
!616 = distinct !{!616, !615, !"_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_: argument 0"}
!617 = distinct !{!617, i1 false, !"_ZSt10__exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_"}
!618 = distinct !{!618, !617, !"_ZSt10__exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_: argument 0"}
!619 = !{!618, !616}
!620 = !{ptr @_ZN4toml2v35table14is_homogeneousENS0_9node_typeERPNS0_4nodeE}
!621 = distinct !{!621, i1 false, !"_ZNSt8literals15string_literalsli1sB5cxx11EPKcm"}
!622 = distinct !{!622, !621, !"_ZNSt8literals15string_literalsli1sB5cxx11EPKcm: argument 0"}
!623 = !{!622}
!624 = distinct !{!624, !69}
!625 = distinct !{null, null, null, null}
!626 = distinct !{null, null}
!627 = distinct !{null, null, null, null}
!628 = distinct !{!628, !69}
!629 = distinct !{!629, !69}
!630 = distinct !{!630, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!631 = distinct !{!631, !630, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!632 = distinct !{!632, !630, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!633 = distinct !{!633, i1 false, !"LVerDomain"}
!634 = distinct !{!634, !633}
!635 = distinct !{!635, !633}
!636 = distinct !{!636, !69, !71, !72}
!637 = distinct !{!637, !69, !71}
!638 = distinct !{!638, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!639 = distinct !{!639, !638, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!640 = distinct !{!640, !638, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!641 = distinct !{!641, i1 false, !"LVerDomain"}
!642 = distinct !{!642, !641}
!643 = distinct !{!643, !641}
!644 = distinct !{!644, !69, !71, !72}
!645 = distinct !{!645, !69, !71}
!646 = distinct !{!646, !69}
!647 = !{!631}
!648 = !{!632}
!649 = !{!632, !634}
!650 = !{!631, !635}
!651 = !{!639}
!652 = !{!640}
!653 = !{!640, !642}
!654 = !{!639, !643}
!655 = distinct !{!655, !69, !256}
!656 = !{!"branch_weights", i32 1, i32 1, i32 1}
!657 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1}
!658 = !{!"branch_weights", i32 1, i32 1000, i32 1000}
!659 = !{!261, !261, i64 0}
!660 = !{!262, !262, i64 0}
!661 = !{!263, !263, i64 0}
!662 = distinct !{!662, !69}
!663 = distinct !{!663, !69}
!664 = distinct !{!664, i1 false, !"_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE"}
!665 = distinct !{!665, !664, !"_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!666 = distinct !{null, null, null, null, null}
!667 = distinct !{!667, !69}
!668 = distinct !{!668, i1 false, !"_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE"}
!669 = distinct !{!669, !668, !"_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!670 = !{!665}
!671 = !{!669}
!672 = distinct !{!672, i1 false, !"_ZSt11make_sharedIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRSt17basic_string_viewIcS3_EEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!673 = distinct !{!673, !672, !"_ZSt11make_sharedIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRSt17basic_string_viewIcS3_EEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!674 = !{!673}
!675 = distinct !{null}
!676 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!677 = distinct !{null}
!678 = !{!214, !214, i64 0}
!679 = distinct !{!679, i1 false, !"_ZSt11make_sharedIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!680 = distinct !{!680, !679, !"_ZSt11make_sharedIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!681 = !{!680}
!682 = distinct !{!682, i1 false, !"_ZSt11make_sharedIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRSt17basic_string_viewIcS3_EEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!683 = distinct !{!683, !682, !"_ZSt11make_sharedIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRSt17basic_string_viewIcS3_EEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!684 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!685 = distinct !{null, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!686 = !{!683}
!687 = distinct !{!687, i1 false, !"_ZSt11make_sharedIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!688 = distinct !{!688, !687, !"_ZSt11make_sharedIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!689 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!690 = !{!688}
!691 = distinct !{!691, i1 false, !"_ZN12_GLOBAL__N_113do_parse_fileESt17basic_string_viewIcSt11char_traitsIcEE"}
!692 = distinct !{!692, !691, !"_ZN12_GLOBAL__N_113do_parse_fileESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!693 = distinct !{null}
!694 = !{!692}
!695 = distinct !{!695, i1 false, !"LVerDomain"}
!696 = distinct !{!696, !695}
!697 = distinct !{!697, !71, !72}
!698 = distinct !{!698, !695}
!699 = distinct !{!699, !326}
!700 = distinct !{!700, !71}
!701 = !{!117, !117, i64 0}
!702 = !{i64 0, i64 8, !701, i64 8, i64 8, !124, i64 16, i64 8, !125}
!703 = !{!"_ZTSN4toml2v34impl19formatter_constantsE", !117, i64 0, !117, i64 8, !118, i64 16, !118, i64 32, !118, i64 48, !118, i64 64, !118, i64 80}
!704 = !{!703, !117, i64 0}
!705 = !{!703, !117, i64 8}
!706 = !{!696}
!707 = !{!698}
!708 = distinct !{!708, !69}
!709 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!710 = !{!"branch_weights", i32 2000, i32 0, i32 0, i32 0}
!711 = distinct !{!711, i1 false, !"_ZNK4toml2v35table5beginEv"}
!712 = distinct !{!712, !711, !"_ZNK4toml2v35table5beginEv: argument 0"}
!713 = distinct !{!713, !256}
!714 = !{!712}
!715 = distinct !{!715, !69}
!716 = distinct !{!716, i1 false, !"_ZNK4toml2v35table5beginEv"}
!717 = distinct !{!717, !716, !"_ZNK4toml2v35table5beginEv: argument 0"}
!718 = distinct !{!718, i1 false, !"_ZNK4toml2v35table5beginEv"}
!719 = distinct !{!719, !718, !"_ZNK4toml2v35table5beginEv: argument 0"}
!720 = distinct !{null}
!721 = distinct !{null, ptr @_ZNK4toml2v35array18is_array_of_tablesEv, ptr @_ZNK4toml2v35array14is_homogeneousENS0_9node_typeE}
!722 = distinct !{!722, i1 false, !"_ZNK4toml2v35table5beginEv"}
!723 = distinct !{!723, !722, !"_ZNK4toml2v35table5beginEv: argument 0"}
!724 = distinct !{!724, i1 false, !"_ZNK4toml2v35table5beginEv"}
!725 = distinct !{!725, !724, !"_ZNK4toml2v35table5beginEv: argument 0"}
!726 = distinct !{!726, !69}
!727 = !{!717}
!728 = !{!719}
!729 = !{!723}
!730 = !{!725}
!731 = !{!148, !147, i64 8}
!732 = !{!147, !147, i64 0}
!733 = distinct !{!733, i1 false, !"_ZNK4toml2v35table5beginEv"}
!734 = distinct !{!734, !733, !"_ZNK4toml2v35table5beginEv: argument 0"}
!735 = !{!734}
!736 = distinct !{!736, !69}
!737 = distinct !{!737, !69}
!738 = distinct !{!738, !69}
!739 = distinct !{!739, !69}
!740 = distinct !{!740, i1 false, !"_ZNK4toml2v35table5beginEv"}
!741 = distinct !{!741, !740, !"_ZNK4toml2v35table5beginEv: argument 0"}
!742 = !{!741}
!743 = !{ptr @_ZNK4toml2v35array14is_homogeneousENS0_9node_typeE}
!744 = distinct !{null}
!745 = distinct !{null, null}
!746 = distinct !{null}
!747 = distinct !{!747, i1 false, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_"}
!748 = distinct !{!748, !747, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!749 = distinct !{!749, !747, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!750 = distinct !{!750, i1 false, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_"}
!751 = distinct !{!751, !750, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!752 = distinct !{!752, !750, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!753 = !{!748}
!754 = !{!749}
!755 = !{!751}
!756 = !{!752}
!757 = distinct !{!757, i1 false, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_"}
!758 = distinct !{!758, !757, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!759 = distinct !{!759, !757, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!760 = distinct !{!760, i1 false, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_"}
!761 = distinct !{!761, !760, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!762 = distinct !{!762, !760, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!763 = !{!758}
!764 = !{!759}
!765 = !{!761}
!766 = !{!762}
!767 = distinct !{!767, !69}
!768 = distinct !{!768, i1 false, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_"}
!769 = distinct !{!769, !768, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!770 = distinct !{!770, !768, !"_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!771 = !{!769}
!772 = !{!770}
!773 = distinct !{!773, !69}
!774 = !{!139, !138, i64 16}
!775 = distinct !{null, null, null, null}
!776 = distinct !{null, null, ptr @_ZN4toml2v33keyD2Ev, ptr @_ZN4toml2v313source_regionD2Ev, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!777 = distinct !{!777, !69}
!778 = !{!333, !63, i64 512}
!779 = distinct !{ptr @_ZN4toml2v32ex11parse_errorD2Ev, ptr @_ZN4toml2v313source_regionD2Ev, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!780 = !{ptr @_ZN4toml2v32ex11parse_errorD2Ev}
!781 = distinct !{!781, i1 false, !"_ZN4toml2v34impl18native_value_makerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt17basic_string_viewIcS6_EEE4makeIJSA_EEES8_DpOT_"}
!782 = distinct !{!782, !781, !"_ZN4toml2v34impl18native_value_makerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt17basic_string_viewIcS6_EEE4makeIJSA_EEES8_DpOT_: argument 0"}
!783 = !{!782}
!784 = distinct !{!784, !69}
!785 = !{!264, !261, i64 8}
!786 = !{!264, !262, i64 16}
!787 = !{!264, !62, i64 32}
!788 = !{!264, !62, i64 40}
!789 = !{!"_ZTSZN4toml2v34impl7impl_ex6parser11parse_valueEvEUlT_E0_", !62, i64 0}
!790 = !{!789, !62, i64 0}
!791 = !{!264, !62, i64 24}
!792 = !{!264, !262, i64 48}
!793 = !{!264, !263, i64 56}
!794 = distinct !{!794, !69}
!795 = distinct !{!795, !69}
!796 = distinct !{!796, !69}
!797 = distinct !{!797, !69}
!798 = distinct !{!798, !69}
!799 = distinct !{!799, !69}
!800 = distinct !{!800, !69}
!801 = distinct !{!801, !69}
!802 = distinct !{!802, !69}
!803 = distinct !{!803, !69}
!804 = distinct !{!804, !69}
!805 = distinct !{!805, !69}
!806 = distinct !{!806, !326}
!807 = !{!"branch_weights", !"expected", i32 2145922867, i32 1560781}
!808 = !{!"branch_weights", !"expected", i32 1717127, i32 2145766521}
!809 = distinct !{!809, !69}
!810 = distinct !{!810, !326}
!811 = distinct !{!811, !326}
!812 = distinct !{!812, !69}
!813 = distinct !{!813, !69}
!814 = !{!91, !91, i64 0}
!815 = distinct !{!815, !69}
!816 = distinct !{!816, !69}
!817 = distinct !{!817, !69}
!818 = distinct !{ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZN4toml2v34nodeD2Ev, ptr @_ZN4toml2v313source_regionD2Ev, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!819 = !{ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!820 = !{ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZN4toml2v34nodeD2Ev}
!821 = distinct !{!821, i1 false, !"_ZSt19__relocate_object_aISt4pairImmES1_SaIS1_EEvPT_PT0_RT1_"}
!822 = distinct !{!822, !821, !"_ZSt19__relocate_object_aISt4pairImmES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!823 = distinct !{!823, !821, !"_ZSt19__relocate_object_aISt4pairImmES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!824 = distinct !{!824, !69}
!825 = !{!234, !233, i64 8}
!826 = !{!228, !228, i64 0}
!827 = !{!823, !822}
!828 = distinct !{!828, !69}
!829 = distinct !{!829, !69}
!830 = distinct !{!830, i1 false, !"_ZN4toml2v35table5beginEv"}
!831 = distinct !{!831, !830, !"_ZN4toml2v35table5beginEv: argument 0"}
!832 = !{!831}
!833 = distinct !{!833, i1 false, !"_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE"}
!834 = distinct !{!834, !833, !"_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!835 = distinct !{!835, i1 false, !"_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE"}
!836 = distinct !{!836, !835, !"_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!837 = distinct !{!837, !69}
!838 = distinct !{!838, !69}
!839 = distinct !{!839, i1 false, !"_ZN4toml2v35table5beginEv"}
!840 = distinct !{!840, !839, !"_ZN4toml2v35table5beginEv: argument 0"}
!841 = !{!834}
!842 = !{!836}
!843 = !{!223, !223, i64 0}
!844 = !{!"p1 _ZTSN4toml2v35arrayE", !62, i64 0}
!845 = !{!844, !844, i64 0}
!846 = !{!840}
!847 = !{!224, !223, i64 8}
!848 = distinct !{!848, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!849 = distinct !{!849, !848, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!850 = distinct !{!850, !848, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!851 = distinct !{!851, i1 false, !"LVerDomain"}
!852 = distinct !{!852, !851}
!853 = distinct !{!853, !851}
!854 = distinct !{!854, !69, !71, !72}
!855 = distinct !{!855, !69, !71}
!856 = !{!849}
!857 = !{!850}
!858 = !{!850, !852}
!859 = !{!849, !853}
!860 = !{!"_ZTSSt9type_info", !63, i64 8}
!861 = !{!860, !63, i64 8}
!862 = distinct !{!862, i1 false, !"_ZNK4toml2v35table5beginEv"}
!863 = distinct !{!863, !862, !"_ZNK4toml2v35table5beginEv: argument 0"}
!864 = !{!863}
!865 = distinct !{!865, !69}
!866 = distinct !{!866, !69}
!867 = distinct !{!867, !69}
!868 = distinct !{!868, !69}
!869 = distinct !{null, null}
!870 = distinct !{null, null}
!871 = distinct !{!871, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!872 = distinct !{!872, !871, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!873 = distinct !{!873, !871, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!874 = distinct !{!874, i1 false, !"LVerDomain"}
!875 = distinct !{!875, !874}
!876 = distinct !{!876, !874}
!877 = distinct !{!877, !69, !71, !72}
!878 = distinct !{!878, !69, !71}
!879 = distinct !{!879, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!880 = distinct !{!880, !879, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!881 = distinct !{!881, !879, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!882 = distinct !{!882, i1 false, !"LVerDomain"}
!883 = distinct !{!883, !882}
!884 = distinct !{!884, !882}
!885 = distinct !{!885, !69, !71, !72}
!886 = distinct !{!886, !69, !71}
!887 = !{!872}
!888 = !{!873}
!889 = !{!873, !875}
!890 = !{!872, !876}
!891 = !{!880}
!892 = !{!881}
!893 = !{!881, !883}
!894 = !{!880, !884}
!895 = distinct !{!895, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!896 = distinct !{!896, !895, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!897 = distinct !{!897, !895, !"_ZSt19__relocate_object_aISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!898 = distinct !{!898, i1 false, !"LVerDomain"}
!899 = distinct !{!899, !898}
!900 = distinct !{!900, !898}
!901 = distinct !{!901, !69, !71, !72}
!902 = distinct !{!902, !69, !71}
!903 = !{!896}
!904 = !{!897}
!905 = !{!897, !899}
!906 = !{!896, !900}
!907 = distinct !{!907, i1 false, !"LVerDomain"}
!908 = distinct !{!908, !907}
!909 = distinct !{!909, !907}
!910 = distinct !{!910, !69, !71, !72}
!911 = distinct !{!911, !69, !71}
!912 = !{!908}
!913 = !{!909}
!914 = distinct !{!914, !69}
!915 = distinct !{null, null}
!916 = distinct !{null, null}
!917 = distinct !{!917, !69}
!918 = distinct !{!918, !69}
!919 = !{!312, !65, i64 832}
!920 = distinct !{null}
!921 = distinct !{!921, !69}
!922 = distinct !{!922, !69}
!923 = !{!321, !65, i64 832}
end_hunk_3
