Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/GenVertexNormalsProcess?download=true
inline.NumInlined: 219
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp23GenVertexNormalsProcess7ExecuteEP7aiScene
define void @_ZN6Assimp23GenVertexNormalsProcess7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(31) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str.1)
  %i.b = load i32, ptr %1, align 8
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not13 = icmp eq i32 %i.e, 0
  br i1 %.not13, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #19
  resume { ptr, i32 } %i.h

._crit_edge:                                      ; preds = %bb.e
  br i1 %spec.select, label %bb.f, label %.critedge

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.01011 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.e ]
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = trunc nuw i64 %indvars.iv to i32
  %i.m = tail call noundef zeroext i1 @_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj(ptr noundef nonnull align 8 dereferenceable(31) %0, ptr noundef %i.k, i32 noundef %i.l)
  %spec.select = select i1 %i.m, i1 true, i1 %.01011 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.d, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.e, label %._crit_edge, !llvm.loop !4

bb.f:                                             ; preds = %._crit_edge
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.3)
  br label %bb.g

.critedge:                                        ; preds = %.preheader, %._crit_edge
  %i.r = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull @.str.4)
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #19
  resume { ptr, i32 } %i.p
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(31) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.Assimp::SpatialSort", align 8 ; 10 uses
  %4 = alloca %"class.std::vector.8", align 8     ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !range !13, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.aj

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #21
  store ptr null, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.g = load i32, ptr %1, align 8
  %i.h = and i32 %i.g, 12
  %.not125 = icmp eq i32 %i.h, 0
  br i1 %.not125, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull @.str.5)
  br label %bb.aj

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = mul nuw nsw i64 %i.l, 12                 ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22 ; 2 uses
  %i.o = icmp eq i32 %i.k, 0
  br i1 %i.o, label %.loopexit245, label %.loopexit245.loopexit

.loopexit245.loopexit:                            ; preds = %bb.f
  %i.p = add nsw i64 %i.m, -12                    ; 2 uses
  %i.q = urem i64 %i.p, 12
  %i.r = sub nuw nsw i64 %i.p, %i.q
  %i.s = add nsw i64 %i.r, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.n, i8 0, i64 %i.s, i1 false)
  br label %.loopexit245

.loopexit245:                                     ; preds = %.loopexit245.loopexit, %bb.f
  store ptr %i.n, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %.not275.a = icmp eq i32 %i.u, 0
  br i1 %.not275.a, label %._crit_edge, label %.lr.ph250

.lr.ph250:                                        ; preds = %.loopexit245
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 30
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit243, %.loopexit245
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN6Assimp11SpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %3)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not126 = icmp eq ptr %i.aa, null
  br i1 %.not126, label %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit.thread, label %bb.i

bb.g:                                             ; preds = %.lr.ph250, %.loopexit243
  %indvars.iv289 = phi i64 [ 0, %.lr.ph250 ], [ %indvars.iv.next290, %.loopexit243 ] ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv289 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 3
  br i1 %i.ae, label %.preheader242, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

.preheader242:                                    ; preds = %bb.g
  %.not277.a = icmp eq i32 %i.ad, 0
  br i1 %.not277.a, label %.loopexit243, label %.lr.ph248

.lr.ph248:                                        ; preds = %.preheader242
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph248, %bb.h
  %indvars.iv286 = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next287, %bb.h ] ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = load ptr, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv286
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %i.ak ; 2 uses
  store <2 x float> splat (float +qnan), ptr %i.al, align 4
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store float +qnan, ptr %.sroa.5221.0..sroa_idx, align 4
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.am = load i32, ptr %i.ac, align 8
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next287, %i.an
  br i1 %i.ao, label %bb.h, label %.loopexit243, !llvm.loop !5

_ZN10aiVector3tIfE13NormalizeSafeEv.exit:         ; preds = %bb.g
  %i.ap = load ptr, ptr %i.w, align 8             ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.ax ; 2 uses
  %i.az = add i32 %i.ad, -1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.x, align 1, !range !13, !noundef !14
  %i.bg = load i8, ptr %i.y, align 2, !range !13, !noundef !14
  %.not137 = icmp eq i8 %i.bf, %i.bg              ; 2 uses
  %spec.select = select i1 %.not137, ptr %i.be, ptr %i.ay ; 2 uses
  %spec.select238 = select i1 %.not137, ptr %i.ay, ptr %i.be ; 2 uses
  %i.bh = load float, ptr %spec.select238, align 4
  %i.bi = load float, ptr %i.au, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select238, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bl = load float, ptr %spec.select, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %i.bn = load <2 x float>, ptr %i.bj, align 4    ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bk, align 4    ; 3 uses
  %i.bp = fsub <2 x float> %i.bn, %i.bo           ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = insertelement <2 x float> %i.bq, float %i.bh, i64 1
  %i.bs = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bt = insertelement <2 x float> %i.bs, float %i.bi, i64 1 ; 2 uses
  %i.bu = fsub <2 x float> %i.br, %i.bt           ; 2 uses
  %i.bv = load <2 x float>, ptr %i.bm, align 4    ; 2 uses
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x float> %i.bw, float %i.bl, i64 1
  %i.by = fsub <2 x float> %i.bx, %i.bt           ; 2 uses
  %i.bz = fsub <2 x float> %i.bv, %i.bo           ; 2 uses
  %i.ca = fneg <2 x float> %i.bz
  %i.cb = fmul <2 x float> %i.bu, %i.ca
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.by, <2 x float> %i.cb) ; 5 uses
  %i.cd = extractelement <2 x float> %i.by, i64 1
  %i.ce = fneg float %i.cd
  %i.cf = extractelement <2 x float> %i.bp, i64 0
  %i.cg = fmul float %i.cf, %i.ce
  %i.ch = extractelement <2 x float> %i.bu, i64 1
  %i.ci = extractelement <2 x float> %i.bz, i64 0
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ci, float %i.cg) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.cc, %i.cc
  %i.ck = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cl = extractelement <2 x float> %i.cc, i64 0 ; 2 uses
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.ck)
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cm)
  %i.co = tail call noundef float @sqrtf(float noundef %i.cn) #19 ; 2 uses
  %i.cp = fcmp ogt float %i.co, 0.000000e+00      ; 2 uses
  %i.cq = fdiv float 1.000000e+00, %i.co          ; 2 uses
  %i.cr = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.cs, %i.cc
  %i.cu = fmul float %i.cj, %i.cq
  %.sroa.10212.0 = select i1 %i.cp, float %i.cu, float %i.cj
  %.sroa.0205.0 = select i1 %i.cp, <2 x float> %i.ct, <2 x float> %i.cc
  %i.cv = load i32, ptr %i.ac, align 8
  %.not276 = icmp eq i32 %i.cv, 0
  br i1 %.not276, label %.loopexit243, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit ] ; 2 uses
  %i.cw = load ptr, ptr %i.b, align 8
  %i.cx = load ptr, ptr %i.aq, align 8
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %i.cw, i64 %i.da ; 2 uses
  store <2 x float> %.sroa.0205.0, ptr %i.db, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store float %.sroa.10212.0, ptr %.sroa.4.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dc = load i32, ptr %i.ac, align 8
  %i.dd = zext i32 %i.dc to i64
  %i.de = icmp samesign ult i64 %indvars.iv.next, %i.dd
  br i1 %i.de, label %.lr.ph, label %.loopexit243, !llvm.loop !6

.loopexit243:                                     ; preds = %.lr.ph, %bb.h, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, %.preheader242
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.df = load i32, ptr %i.t, align 8
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp samesign ult i64 %indvars.iv.next290, %i.dg
  br i1 %i.dh, label %bb.g, label %._crit_edge, !llvm.loop !7

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z18GetGenericPropertyIPN6Assimp21SharedPostProcessInfo4BaseEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i.not = icmp eq ptr %i.dj, null
  br i1 %.not.i.not, label %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit.thread, label %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit

_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit: ; preds = %.noexc
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not127 = icmp eq ptr %i.dl, null
  br i1 %.not127, label %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit
  %i.dm = zext i32 %2 to i64
  %i.dn = load ptr, ptr %i.dl, align 8
  %i.do = getelementptr inbounds nuw [64 x i8], ptr %i.dn, i64 %i.dm ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load float, ptr %i.dp, align 8
  br label %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit.thread

_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit.thread: ; preds = %.noexc, %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit, %bb.j, %._crit_edge
  %.1111 = phi ptr [ null, %._crit_edge ], [ %i.do, %bb.j ], [ null, %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit ], [ null, %.noexc ] ; 2 uses
  %.1108 = phi float [ f0x3727C5AC, %._crit_edge ], [ %i.dq, %bb.j ], [ f0x3727C5AC, %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit ], [ f0x3727C5AC, %.noexc ]
  %.not128 = icmp eq ptr %.1111, null
  br i1 %.not128, label %.thread.a, label %bb.m

.thread.a:                                        ; preds = %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit.thread
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = load i32, ptr %i.j, align 4
  invoke void @_ZN6Assimp11SpatialSort4FillEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %i.ds, i32 noundef %i.dt, i32 noundef 12, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.thread.a
  %i.du = invoke noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef nonnull %1)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %.thread.a
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.m:                                             ; preds = %bb.k, %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit.thread
  %.2112 = phi ptr [ %.1111, %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit.thread ], [ %3, %bb.k ] ; 2 uses
  %.2109 = phi float [ %.1108, %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit.thread ], [ %i.du, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.dw = load i32, ptr %i.j, align 4             ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = mul nuw nsw i64 %i.dx, 12               ; 2 uses
  %i.dz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dy) #22
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.n:                                             ; preds = %bb.m
  %i.ea = icmp eq i32 %i.dw, 0
  br i1 %i.ea, label %.loopexit241, label %.loopexit241.loopexit

.loopexit241.loopexit:                            ; preds = %bb.n
  %i.eb = add nsw i64 %i.dy, -12                  ; 2 uses
  %i.ec = urem i64 %i.eb, 12
  %i.ed = sub nuw nsw i64 %i.eb, %i.ec
  %i.ee = add nsw i64 %i.ed, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dz, i8 0, i64 %i.ee, i1 false)
  br label %.loopexit241

.loopexit241:                                     ; preds = %.loopexit241.loopexit, %bb.n
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eg = load float, ptr %i.ef, align 8          ; 2 uses
  %i.eh = fcmp ult float %i.eg, f0x40437A14
  br i1 %i.eh, label %bb.v, label %bb.o

bb.o:                                             ; preds = %.loopexit241
  %i.ei = load i32, ptr %i.j, align 4             ; 2 uses
  %.not.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add nuw nsw i64 %i.ej, 63               ; 2 uses
  %i.el = lshr i64 %i.ek, 3
  %i.em = and i64 %i.el, 1073741816
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #22
          to label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.p
  %i.eo = lshr i64 %i.ek, 6                       ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.eo, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.en, i8 0, i64 %.idx.i, i1 false)
  %.pre = load i32, ptr %i.j, align 4
  %i.ep = icmp eq i32 %.pre, 0
  br i1 %i.ep, label %.loopexit, label %.lr.ph261

.lr.ph261:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.q

.loopexit:                                        ; preds = %.loopexit240, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.idx338 = shl nuw nsw i64 %i.eo, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %.idx338) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.q:                                             ; preds = %.lr.ph261, %.loopexit240
  %indvars.iv299.a = phi i64 [ 0, %.lr.ph261 ], [ %indvars.iv.next300.a, %.loopexit240 ] ; 4 uses
  %i.es = lshr i64 %indvars.iv299.a, 6
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.es
  %i.eu = and i64 %indvars.iv299.a, 63
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = load i64, ptr %i.et, align 8
  %i.ex = and i64 %i.ew, %i.ev
  %.not239 = icmp eq i64 %i.ex, 0
  br i1 %.not239, label %bb.r, label %.loopexit240

bb.r:                                             ; preds = %bb.q
  %i.ey = load ptr, ptr %i.eq, align 8
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %indvars.iv299.a
  invoke void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(49) %.2112, ptr noundef nonnull align 4 dereferenceable(12) %i.ez, float noundef %.2109, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.preheader unwind label %.thread229

.preheader:                                       ; preds = %bb.r
  %i.fa = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.fb = load ptr, ptr %4, align 8               ; 4 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 2                 ; 2 uses
  %.not279 = icmp eq ptr %i.fa, %i.fb             ; 2 uses
  br i1 %.not279, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit150, label %.lr.ph255.a

.lr.ph255.a:                                      ; preds = %.preheader
  %i.fg = load ptr, ptr %i.b, align 8
  br label %bb.s

_ZN10aiVector3tIfE13NormalizeSafeEv.exit150:      ; preds = %bb.u, %.preheader
  %.sroa.16184.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %.sroa.16184.1, %bb.u ] ; 4 uses
  %i.fh = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.gj, %bb.u ] ; 4 uses
  %i.fi = extractelement <2 x float> %i.fh, i64 0 ; 2 uses
  %foldExtExtBinop341 = fmul <2 x float> %i.fh, %i.fh
  %i.fj = extractelement <2 x float> %foldExtExtBinop341, i64 0
  %i.fk = extractelement <2 x float> %i.fh, i64 1 ; 4 uses
  %i.fl = call float @llvm.fmuladd.f32(float %i.fk, float %i.fk, float %i.fj)
  %i.fm = call noundef float @llvm.fmuladd.f32(float %.sroa.16184.0.lcssa, float %.sroa.16184.0.lcssa, float %i.fl)
  %i.fn = call noundef float @sqrtf(float noundef %i.fm) #19 ; 2 uses
  %i.fo = fcmp ogt float %i.fn, 0.000000e+00      ; 3 uses
  %i.fp = fdiv float 1.000000e+00, %i.fn          ; 3 uses
  %i.fq = fmul float %i.fk, %i.fp
  %i.fr = fmul float %i.fi, %i.fp
  %i.fs = fmul float %.sroa.16184.0.lcssa, %i.fp
  %.sroa.16184.2 = select i1 %i.fo, float %i.fs, float %.sroa.16184.0.lcssa
  %.sroa.10181.2 = select i1 %i.fo, float %i.fr, float %i.fi
  %.sroa.0178.2 = select i1 %i.fo, float %i.fq, float %i.fk
  br i1 %.not279, label %.loopexit240, label %.lr.ph259

.thread229:                                       ; preds = %bb.r
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %i.eo, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %.idx) #21
  br label %.body

bb.s:                                             ; preds = %.lr.ph255.a, %bb.u
  %indvars.iv292 = phi i64 [ 0, %.lr.ph255.a ], [ %indvars.iv.next293, %bb.u ] ; 2 uses
  %.sroa.16184.0251 = phi float [ 0.000000e+00, %.lr.ph255.a ], [ %.sroa.16184.1, %bb.u ] ; 2 uses
  %i.fu = phi <2 x float> [ zeroinitializer, %.lr.ph255.a ], [ %i.gj, %bb.u ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv292
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [12 x i8], ptr %i.fg, i64 %i.fx ; 3 uses
  %i.fz = load float, ptr %i.fy, align 4          ; 2 uses
  %i.ga = fcmp ord float %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gc = load float, ptr %i.gb, align 4
  %i.gd = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.fz, i64 1
  %i.gf = fadd <2 x float> %i.fu, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gh = load float, ptr %i.gg, align 4
  %i.gi = fadd float %.sroa.16184.0251, %i.gh
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.16184.1 = phi float [ %i.gi, %bb.t ], [ %.sroa.16184.0251, %bb.s ] ; 2 uses
  %i.gj = phi <2 x float> [ %i.gf, %bb.t ], [ %i.fu, %bb.s ] ; 2 uses
  %indvars.iv.next293 = add i64 %indvars.iv292, 1 ; 2 uses
  %i.gk = and i64 %indvars.iv.next293, 4294967295
  %i.gl = icmp ugt i64 %i.ff, %i.gk
  br i1 %i.gl, label %bb.s, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit150, !llvm.loop !8

.lr.ph259:                                        ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit150, %.lr.ph259
  %indvars.iv295 = phi i64 [ %indvars.iv.next296.a, %.lr.ph259 ], [ 0, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit150 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv295
  %i.gn = load i32, ptr %i.gm, align 4            ; 2 uses
  %i.go = zext i32 %i.gn to i64                   ; 2 uses
  %i.gp = getelementptr inbounds nuw [12 x i8], ptr %i.dz, i64 %i.go ; 3 uses
  store float %.sroa.0178.2, ptr %i.gp, align 4
  %.sroa.10181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store float %.sroa.10181.2, ptr %.sroa.10181.0..sroa_idx, align 4
  %.sroa.16184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store float %.sroa.16184.2, ptr %.sroa.16184.0..sroa_idx, align 4
  %i.gq = lshr i32 %i.gn, 6
  %.zext235 = zext nneg i32 %i.gq to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.zext235 ; 2 uses
  %i.gs = and i64 %i.go, 63
  %i.gt = shl nuw i64 1, %i.gs
  %i.gu = load i64, ptr %i.gr, align 8
  %i.gv = or i64 %i.gu, %i.gt
  store i64 %i.gv, ptr %i.gr, align 8
  %indvars.iv.next296.a = add i64 %indvars.iv295, 1 ; 2 uses
  %i.gw = and i64 %indvars.iv.next296.a, 4294967295
  %i.gx = icmp samesign ugt i64 %i.ff, %i.gw
  br i1 %i.gx, label %.lr.ph259, label %.loopexit240, !llvm.loop !9

.loopexit240:                                     ; preds = %.lr.ph259, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit150, %bb.q
  %indvars.iv.next300.a = add nuw nsw i64 %indvars.iv299.a, 1 ; 2 uses
  %i.gy = load i32, ptr %i.j, align 4
  %i.gz = zext i32 %i.gy to i64
  %i.ha = icmp samesign ult i64 %indvars.iv.next300.a, %i.gz
  br i1 %i.ha, label %bb.q, label %.loopexit, !llvm.loop !10

bb.v:                                             ; preds = %.loopexit241
  %i.hb = call noundef float @cosf(float noundef %i.eg) #19
  %i.hc = load i32, ptr %i.j, align 4
  %.not281 = icmp eq i32 %i.hc, 0
  br i1 %.not281, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %.lr.ph274

.lr.ph274:                                        ; preds = %bb.v
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph274, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit158
  %indvars.iv307 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next308, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit158 ] ; 5 uses
  %i.hf = load ptr, ptr %i.hd, align 8
  %i.hg = getelementptr inbounds nuw [12 x i8], ptr %i.hf, i64 %indvars.iv307
  invoke void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(49) %.2112, ptr noundef nonnull align 4 dereferenceable(12) %i.hg, float noundef %.2109, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.hh = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %i.hh, i64 %indvars.iv307 ; 3 uses
  %.sroa.0175.0.copyload = load float, ptr %i.hi, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
end_hunk_0
