inline.NumInlined: 219
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp23GenVertexNormalsProcess7ExecuteEP7aiScene:bb.a
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = trunc nuw i64 %indvars.iv to i32
  %i.m = tail call noundef zeroext i1 @_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj(ptr noundef nonnull align 8 dereferenceable(31) %0, ptr noundef %i.k, i32 noundef %i.l)
  %spec.select = select i1 %i.m, i1 true, i1 %.01011 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.d, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.e, label %._crit_edge, !llvm.loop !3

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
  %i.e = load i8, ptr %i.d, align 4, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.ao

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
  br label %bb.ao

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = mul nuw nsw i64 %i.l, 12                 ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22 ; 2 uses
  %i.o = icmp eq i32 %i.k, 0
  br i1 %i.o, label %.loopexit234, label %.loopexit234.loopexit

.loopexit234.loopexit:                            ; preds = %bb.f
  %i.p = add nsw i64 %i.m, -12                    ; 2 uses
  %i.q = urem i64 %i.p, 12
  %i.r = sub nuw nsw i64 %i.p, %i.q
  %i.s = add nsw i64 %i.r, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.n, i8 0, i64 %i.s, i1 false)
  br label %.loopexit234

.loopexit234:                                     ; preds = %.loopexit234.loopexit, %bb.f
  store ptr %i.n, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %.not266 = icmp eq i32 %i.u, 0
  br i1 %.not266, label %._crit_edge, label %.lr.ph239

.lr.ph239:                                        ; preds = %.loopexit234
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 30
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit232, %.loopexit234
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN6Assimp11SpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %3)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not126 = icmp eq ptr %i.aa, null
  br i1 %.not126, label %.thread, label %bb.j

bb.g:                                             ; preds = %.lr.ph239, %.loopexit232
  %indvars.iv279 = phi i64 [ 0, %.lr.ph239 ], [ %indvars.iv.next280, %.loopexit232 ] ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv279 ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 3
  br i1 %i.ae, label %.preheader231, label %bb.i

.preheader231:                                    ; preds = %bb.g
  %.not268 = icmp eq i32 %i.ad, 0
  br i1 %.not268, label %.loopexit232, label %.lr.ph237

.lr.ph237:                                        ; preds = %.preheader231
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph237, %bb.h
  %indvars.iv276 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next277, %bb.h ] ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = load ptr, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv276
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %i.ak ; 2 uses
  store <2 x float> splat (float +qnan), ptr %i.al, align 4
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store float +qnan, ptr %.sroa.5209.0..sroa_idx, align 4
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.am = load i32, ptr %i.ac, align 8
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next277, %i.an
  br i1 %i.ao, label %bb.h, label %.loopexit232, !llvm.loop !7

bb.i:                                             ; preds = %bb.g
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
  %i.bf = load i8, ptr %i.x, align 1, !range !5, !noundef !6
  %i.bg = load i8, ptr %i.y, align 2, !range !5, !noundef !6
  %.not137 = icmp eq i8 %i.bf, %i.bg              ; 2 uses
  %spec.select = select i1 %.not137, ptr %i.be, ptr %i.ay ; 2 uses
  %spec.select229 = select i1 %.not137, ptr %i.ay, ptr %i.be ; 2 uses
  %i.bh = load float, ptr %spec.select229, align 4
  %i.bi = load float, ptr %i.au, align 4
  %5 = getelementptr inbounds nuw i8, ptr %spec.select229, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bk = load float, ptr %spec.select, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %6 = load <2 x float>, ptr %5, align 4          ; 2 uses
  %7 = load <2 x float>, ptr %i.bj, align 4       ; 3 uses
  %8 = fsub <2 x float> %6, %7                    ; 2 uses
  %9 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %10 = insertelement <2 x float> %9, float %i.bh, i64 1
  %11 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %12 = insertelement <2 x float> %11, float %i.bi, i64 1 ; 2 uses
  %13 = fsub <2 x float> %10, %12                 ; 2 uses
  %14 = load <2 x float>, ptr %i.bl, align 4      ; 2 uses
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %16 = insertelement <2 x float> %15, float %i.bk, i64 1
  %17 = fsub <2 x float> %16, %12                 ; 2 uses
  %18 = fsub <2 x float> %14, %7                  ; 2 uses
  %19 = fneg <2 x float> %18
  %20 = fmul <2 x float> %13, %19
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %17, <2 x float> %20) ; 5 uses
  %22 = extractelement <2 x float> %17, i64 1
  %i.bm = fneg float %22
  %23 = extractelement <2 x float> %8, i64 0
  %24 = fmul float %23, %i.bm
  %25 = extractelement <2 x float> %13, i64 1
  %26 = extractelement <2 x float> %18, i64 0
  %i.bn = tail call float @llvm.fmuladd.f32(float %25, float %26, float %24) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %21, %21
  %27 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %28 = extractelement <2 x float> %21, i64 0     ; 2 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %28, float %28, float %27)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bo) ; 2 uses
  %i.bq = fcmp ogt float %i.bp, 0.000000e+00
  br i1 %i.bq, label %_ZN10aiVector3tIfEdVEf.exit.i, label %.lr.ph.preheader

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.i
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bp)
  %i.br = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %.sroa.0199.0.vec.insert = insertelement <2 x float> poison, float %i.br, i64 0
  %29 = shufflevector <2 x float> %.sroa.0199.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = fmul <2 x float> %21, %29
  %i.bs = fmul float %i.bn, %i.br
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.i
  %.sroa.0199.0 = phi <2 x float> [ %30, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %21, %bb.i ]
  %.sroa.8.0 = phi float [ %i.bs, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.bn, %bb.i ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bt = load ptr, ptr %i.b, align 8
  %i.bu = load ptr, ptr %i.aq, align 8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.bt, i64 %i.bx ; 2 uses
  store <2 x float> %.sroa.0199.0, ptr %i.by, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store float %.sroa.8.0, ptr %.sroa.4.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i32, ptr %i.ac, align 8
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp samesign ult i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %.lr.ph, label %.loopexit232, !llvm.loop !8

.loopexit232:                                     ; preds = %.lr.ph, %bb.h, %.preheader231
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.cc = load i32, ptr %i.t, align 8
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp samesign ult i64 %indvars.iv.next280, %i.cd
  br i1 %i.ce, label %bb.g, label %._crit_edge, !llvm.loop !9

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z18GetGenericPropertyIPN6Assimp21SharedPostProcessInfo4BaseEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i.not = icmp eq ptr %i.cg, null
  br i1 %.not.i.not, label %.thread, label %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit

_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit: ; preds = %.noexc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %.not127 = icmp eq ptr %i.ci, null
  br i1 %.not127, label %.thread, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.l:                                             ; preds = %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit
  %i.ck = zext i32 %2 to i64
  %i.cl = load ptr, ptr %i.ci, align 8
  %i.cm = getelementptr inbounds nuw [64 x i8], ptr %i.cl, i64 %i.ck ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = load float, ptr %i.cn, align 8
  br label %bb.o

.thread:                                          ; preds = %.noexc, %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit, %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load i32, ptr %i.j, align 4
  invoke void @_ZN6Assimp11SpatialSort4FillEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %i.cq, i32 noundef %i.cr, i32 noundef 12, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.thread
  %i.cs = invoke noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef nonnull %1)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.o:                                             ; preds = %bb.l, %bb.m
  %.2115 = phi ptr [ %i.cm, %bb.l ], [ %3, %bb.m ] ; 2 uses
  %.2112 = phi float [ %i.co, %bb.l ], [ %i.cs, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.cu = load i32, ptr %i.j, align 4             ; 2 uses
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = mul nuw nsw i64 %i.cv, 12               ; 2 uses
  %i.cx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cw) #22
          to label %bb.p unwind label %bb.s       ; 4 uses

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp eq i32 %i.cu, 0
  br i1 %i.cy, label %.thread217, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = add nsw i64 %i.cw, -12                  ; 2 uses
  %i.da = urem i64 %i.cz, 12
  %i.db = sub nuw nsw i64 %i.cz, %i.da
  %i.dc = add nsw i64 %i.db, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cx, i8 0, i64 %i.dc, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.de = load float, ptr %i.dd, align 8          ; 2 uses
  %i.df = fcmp ult float %i.de, f0x40437A14
  br i1 %i.df, label %bb.z, label %bb.r

.thread217:                                       ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load float, ptr %i.dg, align 8          ; 2 uses
  %i.di = fcmp ult float %i.dh, f0x40437A14
  br i1 %i.di, label %bb.z, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.dj = add nuw nsw i64 %i.cv, 63               ; 2 uses
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = and i64 %i.dk, 1073741816
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #22
          to label %.lr.ph251 unwind label %bb.t  ; 5 uses

.lr.ph251:                                        ; preds = %bb.r
  %i.dn = lshr i64 %i.dj, 6                       ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.dn, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dm, i8 0, i64 %.idx.i, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.u

._crit_edge252:                                   ; preds = %.loopexit
  %.idx316 = shl nuw nsw i64 %i.dn, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %.idx316) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.s:                                             ; preds = %bb.o
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158

bb.t:                                             ; preds = %bb.r
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158

bb.u:                                             ; preds = %.lr.ph251, %.loopexit
  %indvars.iv282 = phi i64 [ 0, %.lr.ph251 ], [ %indvars.iv.next283, %.loopexit ] ; 4 uses
  %i.ds = lshr i64 %indvars.iv282, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ds
  %i.du = and i64 %indvars.iv282, 63
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = load i64, ptr %i.dt, align 8
  %i.dx = and i64 %i.dw, %i.dv
  %.not230 = icmp eq i64 %i.dx, 0
  br i1 %.not230, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.dy = load ptr, ptr %i.do, align 8
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.dy, i64 %indvars.iv282
  invoke void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(49) %.2115, ptr noundef nonnull align 4 dereferenceable(12) %i.dz, float noundef %.2112, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.preheader unwind label %.thread220

.preheader:                                       ; preds = %bb.v
  %i.ea = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.eb = load ptr, ptr %4, align 8               ; 4 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 2                 ; 2 uses
  %.not270 = icmp eq ptr %i.ea, %i.eb             ; 2 uses
  br i1 %.not270, label %._crit_edge245, label %.lr.ph244

.lr.ph244:                                        ; preds = %.preheader
  %i.eg = load ptr, ptr %i.b, align 8
  br label %bb.w

._crit_edge245:                                   ; preds = %bb.y, %.preheader
  %.sroa.14182.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %.sroa.14182.1, %bb.y ] ; 4 uses
  %i.eh = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.fj, %bb.y ] ; 4 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0 ; 2 uses
  %foldExtExtBinop.a = fmul <2 x float> %i.eh, %i.eh
  %i.ej = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  %i.ek = extractelement <2 x float> %i.eh, i64 1 ; 4 uses
  %i.el = call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.ej)
  %i.em = call noundef float @llvm.fmuladd.f32(float %.sroa.14182.0.lcssa, float %.sroa.14182.0.lcssa, float %i.el) ; 2 uses
  %i.en = fcmp ogt float %i.em, 0.000000e+00
  br i1 %i.en, label %_ZN10aiVector3tIfEdVEf.exit.i150, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152

_ZN10aiVector3tIfEdVEf.exit.i150:                 ; preds = %._crit_edge245
  %sqrt.i.i151 = call noundef float @llvm.sqrt.f32(float %i.em)
  %i.eo = fdiv float 1.000000e+00, %sqrt.i.i151   ; 3 uses
  %i.ep = fmul float %i.ek, %i.eo
  %i.eq = fmul float %i.ei, %i.eo
  %i.er = fmul float %.sroa.14182.0.lcssa, %i.eo
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152

_ZN10aiVector3tIfE13NormalizeSafeEv.exit152:      ; preds = %._crit_edge245, %_ZN10aiVector3tIfEdVEf.exit.i150
  %.sroa.14182.2 = phi float [ %i.er, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %.sroa.14182.0.lcssa, %._crit_edge245 ]
  %.sroa.9180.2 = phi float [ %i.eq, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %i.ei, %._crit_edge245 ]
  %.sroa.0178.2 = phi float [ %i.ep, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %i.ek, %._crit_edge245 ]
  br i1 %.not270, label %.loopexit, label %.lr.ph249

.thread220:                                       ; preds = %bb.v
  %i.es = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %i.dn, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %.idx) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158

end_hunk_0
begin_hunk_1_@_Z18GetGenericPropertyIPN6Assimp21SharedPostProcessInfo4BaseEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_:bb.a
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.b
  %unroll_iter = and i32 %i.e, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = load i16, ptr %.05463.i, align 1
  %i.g = zext i16 %i.f to i32
  %i.h = add i32 %.05562.i, %i.g                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 11
  %i.m = shl i32 %i.h, 16
  %i.n = xor i32 %i.l, %i.m
  %i.o = xor i32 %i.n, %i.h                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.q = lshr i32 %i.o, 11
  %i.r = add i32 %i.q, %i.o
  %i.s = load i16, ptr %i.p, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = add i32 %i.r, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.w = load i16, ptr %i.v, align 1
  %i.x = zext i16 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 11
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !25

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.ag = load i16, ptr %.05463.i.epil.init, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add i32 %.05562.i.epil.init, %i.ah      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 11
  %i.an = shl i32 %i.ai, 16
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = xor i32 %i.ao, %i.ai                    ; 2 uses
  %i.aq = lshr i32 %i.ap, 11
  %i.ar = add i32 %i.aq, %i.ap
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil.preheader ]
  %i.as = add nsw i32 %i.e, -1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %scevgep.i = getelementptr i8, ptr %i.av, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.i
  %.055.lcssa.i = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %1, %bb.b ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.d, label %default.unreachable [
    i32 3, label %bb.c
    i32 2, label %bb.d
    i32 1, label %bb.e
    i32 0, label %bb.f
  ]

bb.c:                                             ; preds = %._crit_edge.i
  %i.aw = load i16, ptr %.054.lcssa.i, align 1
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add i32 %.055.lcssa.i, %i.ax            ; 2 uses
  %i.az = shl i32 %i.ay, 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = tail call i8 @llvm.abs.i8(i8 %i.bb, i1 false)
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 18
  %i.bf = xor i32 %i.az, %i.be
  %i.bg = xor i32 %i.bf, %i.ay                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 11
  %i.bi = add i32 %i.bh, %i.bg
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i
  %i.bj = load i16, ptr %.054.lcssa.i, align 1
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add i32 %.055.lcssa.i, %i.bk            ; 2 uses
  %i.bm = shl i32 %i.bl, 11
  %i.bn = xor i32 %i.bm, %i.bl                    ; 2 uses
  %i.bo = lshr i32 %i.bn, 17
  %i.bp = add i32 %i.bo, %i.bn
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bq = load i8, ptr %.054.lcssa.i, align 1
  %i.br = sext i8 %i.bq to i32
  %i.bs = add i32 %.055.lcssa.i, %i.br            ; 2 uses
  %i.bt = shl i32 %i.bs, 10
  %i.bu = xor i32 %i.bt, %i.bs                    ; 2 uses
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = add i32 %i.bv, %i.bu
  br label %bb.f

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.bi, %bb.c ], [ %i.bp, %bb.d ], [ %i.bw, %bb.e ] ; 2 uses
  %i.bx = shl i32 %.1.i, 3
  %i.by = xor i32 %i.bx, %.1.i                    ; 2 uses
  %i.bz = lshr i32 %i.by, 5
  %i.ca = add i32 %i.bz, %i.by                    ; 2 uses
  %i.cb = shl i32 %i.ca, 4
  %i.cc = xor i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 17
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = shl i32 %i.ce, 25
  %i.cg = xor i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = add i32 %i.ch, %i.cg
  br label %_Z13SuperFastHashPKcjj.exit

_Z13SuperFastHashPKcjj.exit:                      ; preds = %bb.a, %bb.f
  %.0.i = phi i32 [ %i.ci, %bb.f ], [ 0, %bb.a ]  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIjPN6Assimp21SharedPostProcessInfo4BaseESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ck, %_Z13SuperFastHashPKcjj.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %_Z13SuperFastHashPKcjj.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp ult i32 %i.cn, %.0.i               ; 2 uses
  %.19.i.i.i = select i1 %i.co, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.co, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjPN6Assimp21SharedPostProcessInfo4BaseEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !26

_ZNKSt8_Rb_treeIjSt4pairIKjPN6Assimp21SharedPostProcessInfo4BaseEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cp = icmp eq ptr %.19.i.i.i, %i.cl
  br i1 %i.cp, label %_ZNKSt3mapIjPN6Assimp21SharedPostProcessInfo4BaseESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread, label %_ZNKSt3mapIjPN6Assimp21SharedPostProcessInfo4BaseESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit

_ZNKSt3mapIjPN6Assimp21SharedPostProcessInfo4BaseESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjPN6Assimp21SharedPostProcessInfo4BaseEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp ult i32 %.0.i, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %spec.select = select i1 %i.cs, ptr %2, ptr %i.ct
  br label %_ZNKSt3mapIjPN6Assimp21SharedPostProcessInfo4BaseESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread

_ZNKSt3mapIjPN6Assimp21SharedPostProcessInfo4BaseESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread: ; preds = %_ZNKSt3mapIjPN6Assimp21SharedPostProcessInfo4BaseESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit, %_ZNKSt8_Rb_treeIjSt4pairIKjPN6Assimp21SharedPostProcessInfo4BaseEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %_Z13SuperFastHashPKcjj.exit
  %.0 = phi ptr [ %2, %_ZNKSt8_Rb_treeIjSt4pairIKjPN6Assimp21SharedPostProcessInfo4BaseEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %spec.select, %_ZNKSt3mapIjPN6Assimp21SharedPostProcessInfo4BaseESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit ], [ %2, %_Z13SuperFastHashPKcjj.exit ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!17 = distinct !{!17, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!20 = distinct !{!20, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!23 = distinct !{!23, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!24 = !{!22, !19, !16}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
end_hunk_1
