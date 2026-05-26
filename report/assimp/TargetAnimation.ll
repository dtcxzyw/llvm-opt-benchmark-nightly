inline.NumInlined: 228
inline.NumDeleted: 106
begin_hunk_0_@_ZN6Assimp11KeyIteratorppEv:bb.a
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = sdiv exact i64 %i.gc, 24
  %i.ge = add nsw i64 %i.gd, -1
  %.not34 = icmp ugt i64 %i.ge, %i.fx
  br i1 %.not34, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp21TargetAnimationHelper25SetTargetAnimationChannelEPKSt6vectorI11aiVectorKeySaIS2_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp21TargetAnimationHelper23SetMainAnimationChannelEPKSt6vectorI11aiVectorKeySaIS2_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((8, 16)) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6Assimp21TargetAnimationHelper28SetFixedMainAnimationChannelERK10aiVector3tIfE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((8, 28)) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp21TargetAnimationHelper7ProcessEPSt6vectorI11aiVectorKeySaIS2_EE(ptr noundef nonnull readonly align 8 captures(address_is_null) dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  %3 = alloca %"class.Assimp::KeyIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %1, %i.b                     ; 4 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = load ptr, ptr %0, align 8                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 24
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.s) ; 4 uses
  %i.t = icmp ugt i64 %.sroa.speculated, 384307168202282325
  br i1 %i.t, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #13
  unreachable

bb.b:                                             ; preds = %bb.a
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.gep46 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.sel = select i1 %i.c, ptr %.sroa.gep, ptr %.sroa.gep46 ; 4 uses
  %i.u = load ptr, ptr %.sroa.sel, align 8
  %i.v = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = sdiv exact i64 %i.y, 24
  %i.aa = icmp ult i64 %i.z, %.sroa.speculated
  br i1 %i.aa, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %.sroa.sel49.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %2, ptr %1
  %.sroa.sel49.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel49.v.sroa.sel.v.sroa.sel.v, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %.sroa.sel49.v.sroa.sel.v.sroa.sel, align 8 ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.x
  %i.ae = mul nuw nsw i64 %.sroa.speculated, 24
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #15 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.v, %i.ab
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %i.af, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.v, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !5
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.v, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.y) #12
  br label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.c, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.af, ptr %i.d, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store ptr %i.ai, ptr %.sroa.sel49.v.sroa.sel.v.sroa.sel, align 8
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.sroa.speculated
  store ptr %i.aj, ptr %.sroa.sel, align 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre68 = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.b
  %i.ak = phi ptr [ %.pre68, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.l, %bb.b ]
  %i.al = phi ptr [ %.pre, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.b, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN6Assimp11KeyIteratorC2EPKSt6vectorI11aiVectorKeySaIS2_EES6_PK10aiVector3tIfESA_(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef %i.al, ptr noundef %i.ak, ptr noundef nonnull %i.am, ptr noundef null)
          to label %.preheader unwind label %bb.k

.preheader:                                       ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.gep66 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.gep67 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.sel52.v.sroa.sel = select i1 %i.c, ptr %.sroa.gep66, ptr %.sroa.gep67 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %_ZN10aiVector3tIfEdVEf.exit
  %i.as = load i8, ptr %3, align 8, !range !3, !noundef !4
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load <2 x float>, ptr %i.ao, align 8
  %i.av = load <2 x float>, ptr %i.an, align 4
  %i.aw = fsub <2 x float> %i.au, %i.av           ; 4 uses
  %i.ax = load float, ptr %i.ap, align 8
  %i.ay = load float, ptr %i.aq, align 4
  %i.az = fsub float %i.ax, %i.ay                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.aw, %i.aw
  %i.ba = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bb = extractelement <2 x float> %i.aw, i64 0 ; 2 uses
  %i.bc = call float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.ba)
  %i.bd = call noundef float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bc)
  %i.be = fcmp une float %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.f, label %_ZN10aiVector3tIfEdVEf.exit

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %.sroa.sel52.v.sroa.sel, align 8 ; 6 uses
  %i.bg = load ptr, ptr %.sroa.sel, align 8
  %.not.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bf, i8 0, i64 20, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 4
  %i.bh = load ptr, ptr %.sroa.sel52.v.sroa.sel, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.bi, ptr %.sroa.sel52.v.sroa.sel, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backEOS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.bk = ptrtoint ptr %i.bf to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.i, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bo = sdiv exact i64 %i.bm, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bo ; 2 uses
  %4 = icmp ult i64 %i.bp, %i.bo
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bp, i64 384307168202282325)
  %5 = select i1 %4, i64 384307168202282325, i64 %i.bq ; 3 uses
  %.not.i.i.i.i27 = icmp ne i64 %5, 0
  call void @llvm.assume(i1 %.not.i.i.i.i27)
  %i.br = mul nuw nsw i64 %5, 24
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #15
          to label %.noexc29 unwind label %.loopexit ; 5 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bm ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bt, i8 0, i64 20, i1 false)
  %.sroa.6.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  store i32 1, ptr %.sroa.6.0..sroa_idx33, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bf
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc29, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i ], [ %i.bs, %.noexc29 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc29 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !11
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.bf
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc29
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bs, %.noexc29 ], [ %i.bv, %.lr.ph.i.i.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #12
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  store ptr %i.bs, ptr %i.d, align 8
  store ptr %i.bw, ptr %.sroa.sel52.v.sroa.sel, align 8
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %5
  store ptr %i.bx, ptr %.sroa.sel, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.g
  %i.by = phi ptr [ %i.bw, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.bi, %bb.g ] ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -24
  %i.ca = load double, ptr %i.ar, align 8
  store double %i.ca, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 -16
  store <2 x float> %i.aw, ptr %i.cb, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %i.by, i64 -8
  store float %i.az, ptr %.sroa.11.0..sroa_idx, align 8
  br label %_ZN10aiVector3tIfEdVEf.exit

bb.k:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit59:                                      ; preds = %_ZN10aiVector3tIfEdVEf.exit
  %lpad.loopexit61 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp60:                             ; preds = %bb.m
  %lpad.loopexit.split-lp62 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit:                                        ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZN10aiVector3tIfEdVEf.exit:                      ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backEOS0_.exit, %bb.e
  invoke void @_ZN6Assimp11KeyIteratorppEv(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %.loopexit59, !llvm.loop !15

bb.l:                                             ; preds = %bb.d
  %i.cd = load ptr, ptr %.sroa.gep66, align 8
  %i.ce = load ptr, ptr %2, align 8
  %.not = icmp eq ptr %i.cd, %i.ce
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI11aiVectorKeySaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.n unwind label %.loopexit.split-lp60 ; 0 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i30, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #12
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit.i

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit.i:    ; preds = %bb.o, %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i1.i, label %_ZN6Assimp11KeyIteratorD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #12
  br label %_ZN6Assimp11KeyIteratorD2Ev.exit

_ZN6Assimp11KeyIteratorD2Ev.exit:                 ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.cu = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp11KeyIteratorD2Ev.exit
  %i.cv = load ptr, ptr %.sroa.gep, align 8
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #12
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit:      ; preds = %_ZN6Assimp11KeyIteratorD2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit59, %.loopexit.split-lp60
  %.pn22 = phi { ptr, i32 } [ %lpad.loopexit.split-lp62, %.loopexit.split-lp60 ], [ %lpad.loopexit61, %.loopexit59 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6Assimp11KeyIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %3) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.r
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %bb.r ], [ %i.cc, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.pre69 = load ptr, ptr %2, align 8             ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %.pre69, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit32, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %.pre69 to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %.pre69, i64 noundef %i.dd) #12
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit32

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit32:    ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %.pn22.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI11aiVectorKeySaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #15 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -24
  %i.r = sub i64 %i.q, %i.e
  %.fr.i = freeze i64 %i.r                        ; 2 uses
  %i.s = urem i64 %.fr.i, 24
  %i.t = add i64 %.fr.i, 24
  %i.u = sub i64 %i.t, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.c, i64 %i.u, i1 false)
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit: ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #12
  br label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK11aiVectorKeySt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.f, 24
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %bb.g
end_hunk_0
