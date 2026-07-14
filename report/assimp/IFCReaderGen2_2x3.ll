inline.NumInlined: 1461
inline.NumDeleted: 397
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8
  store ptr null, ptr %i.r, align 8
  store <2 x ptr> %i.s, ptr %i.q, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !239, !noalias !236
  store ptr null, ptr %i.t, align 8, !alias.scope !239, !noalias !236
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !alias.scope !236, !noalias !239
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !239, !noalias !236
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !230

_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !alias.scope !244, !noalias !241
  store ptr null, ptr %i.y, align 8, !alias.scope !244, !noalias !241
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !alias.scope !241, !noalias !244
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !244, !noalias !241
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !230

_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #22
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x312IfcFaceBoundEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.867", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #20 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.117)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %11 = ptrtoint ptr %i.ah to i64
  %i.an = sub i64 %11, %i.ac
  %12 = add i64 %i.an, -8                         ; 2 uses
  %i.ao = lshr i64 %12, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 72
  %i.aq = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.al, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.aa, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.av = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !249, !noalias !246
  %wide.load96 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !249, !noalias !246
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !246, !noalias !249
  store <2 x i64> %wide.load96, ptr %i.aw, align 8, !alias.scope !246, !noalias !249
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !249, !noalias !246
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !alias.scope !246, !noalias !249
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !254

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bb, ptr %i.ag, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bc, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bd = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.be = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.be, %i.bd
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE7reserveEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dr, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bh = load ptr, ptr %i.bf, align 8            ; 5 uses
  %i.bi = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.bf, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %1, align 8               ; 7 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #24 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i64 0, ptr %i.bx, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.by = ptrtoaddr ptr %i.bw to i64
  %i.bz = sub i64 %i.bm, %i.bn
  %i.ca = add i64 %i.bz, -8                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.ca, 24
  %i.cd = sub i64 %i.bn, %i.by
  %diff.check99 = icmp ugt i64 %i.cd, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ch = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bl, i64 %i.ch ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.ci = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !258, !noalias !255
  %wide.load110 = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !258, !noalias !255
  %i.cj = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !255, !noalias !258
  store <2 x i64> %wide.load110, ptr %i.cj, align 8, !alias.scope !255, !noalias !258
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.ck, label %middle.block112, label %vector.body105, !llvm.loop !260

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cc, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.cl = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !258, !noalias !255
  store i64 %i.cl, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !255, !noalias !258
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bh
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !261

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bw, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cf, %middle.block112 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #22
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bw, ptr %1, align 8
  store ptr %i.co, ptr %i.bf, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cp, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cq = phi ptr [ %i.bj, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
end_hunk_0
begin_hunk_1_@_ZN6Assimp4STEP20InternGenericConvertIlEclERlRKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %1, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr @_ZTISt8bad_cast              ; 3 uses
  %i.g = extractvalue { ptr, i32 } %i.f, 1
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt8bad_cast) #20
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, i32 } %i.f, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.j) #20 ; 0 uses
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.114, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.n unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.o = load ptr, ptr %4, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0, label %bb.j, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.l) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.j ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.e
  %.merged = phi { ptr, i32 } [ %i.f, %bb.e ], [ %.pn15, %bb.k ]
  resume { ptr, i32 } %.merged

bb.m:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

bb.n:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEELm2ELm0EEclERNS0_6ListOfIS6_Lm2ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.903", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #20 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp ult i64 %i.r, 17
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull @.str.117)
  %.pre = load ptr, ptr %i.m, align 8             ; 2 uses
  %.pre70 = load ptr, ptr %i.l, align 8           ; 2 uses
  %.pre73 = ptrtoint ptr %.pre to i64
  %.pre74 = ptrtoint ptr %.pre70 to i64
  %.pre76 = sub i64 %.pre73, %.pre74
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi77 = phi i64 [ %.pre76, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  %i.u = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ]
  %i.v = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ]
  %i.w = ashr exact i64 %.pre-phi77, 4            ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %.pre-phi77, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %11 = ptrtoint ptr %i.ah to i64
  %i.an = sub i64 %11, %i.ac
  %12 = add i64 %i.an, -8                         ; 2 uses
  %i.ao = lshr i64 %12, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 72
  %i.aq = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.al, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.aa, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.aa, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.av = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep99, align 8, !alias.scope !274, !noalias !271
  %wide.load100 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !274, !noalias !271
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !271, !noalias !274
  store <2 x i64> %wide.load100, ptr %i.aw, align 8, !alias.scope !271, !noalias !274
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !276

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader122

.lr.ph.i.i.i.i.preheader122:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader122, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !274, !noalias !271
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !alias.scope !271, !noalias !274
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !277

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bb, ptr %i.ag, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bc, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bd = phi ptr [ %i.u, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.be = phi ptr [ %i.v, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.be, %i.bd
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dr, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bh = load ptr, ptr %i.bf, align 8            ; 5 uses
  %i.bi = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.bf, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %1, align 8               ; 7 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #24 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i64 0, ptr %i.bx, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.by = ptrtoaddr ptr %i.bw to i64
  %i.bz = sub i64 %i.bm, %i.bn
  %i.ca = add i64 %i.bz, -8                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.ca, 24
  %i.cd = sub i64 %i.bn, %i.by
  %diff.check103 = icmp ugt i64 %i.cd, -32
  %or.cond120 = or i1 %min.iters.check105, %diff.check103
  br i1 %or.cond120, label %.lr.ph.i.i.i.i.i.i.preheader121, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec108 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec108, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next115, %vector.body109 ] ; 2 uses
  %i.ch = shl i64 %index110, 3                    ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.bl, i64 %i.ch ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.ci = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load113 = load <2 x i64>, ptr %next.gep112, align 8, !alias.scope !281, !noalias !278
  %wide.load114 = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !281, !noalias !278
  %i.cj = getelementptr i8, ptr %next.gep111, i64 16
  store <2 x i64> %wide.load113, ptr %next.gep111, align 8, !alias.scope !278, !noalias !281
  store <2 x i64> %wide.load114, ptr %i.cj, align 8, !alias.scope !278, !noalias !281
  %index.next115 = add nuw i64 %index110, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.ck, label %middle.block116, label %vector.body109, !llvm.loop !283

middle.block116:                                  ; preds = %vector.body109
  %cmp.n117 = icmp eq i64 %i.cc, %n.vec108
  br i1 %cmp.n117, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader121

.lr.ph.i.i.i.i.i.i.preheader121:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block116
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block116 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block116 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader121, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.cl = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !281, !noalias !278
  store i64 %i.cl, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !278, !noalias !281
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bh
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !284

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block116, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bw, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cf, %middle.block116 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #22
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bw, ptr %1, align 8
  store ptr %i.co, ptr %i.bf, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cp, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cq = phi ptr [ %i.bj, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
end_hunk_1
begin_hunk_2_@_ZN6Assimp4STEP24InternGenericConvertListINS0_7EXPRESS17PrimitiveDataTypeIdEELm1ELm3EEclERNS0_6ListOfIS4_Lm1ELm3EEERKSt10shared_ptrIKNS2_8DataTypeEERKNS0_2DBE:bb.a
          cleanup                                 ; 4 uses
  %i.dn = load ptr, ptr %8, align 8               ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.ai
  %i.dq = load i64, ptr %i.do, align 8
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  %i.ds = load ptr, ptr %9, align 8               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread: ; preds = %bb.af
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %9, align 8               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread
  %i.dz = load i64, ptr %i.dx, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #22
  br label %.sink.split91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  br label %.sink.split91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.ee = load i64, ptr %i.dt, align 8
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.ef) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %.0, label %bb.aj, label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %.0, label %bb.aj, label %bb.ak

.sink.split91:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread
  %.pn37.pn57.ph = phi { ptr, i32 } [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread64 ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn37.pn57 = phi { ptr, i32 } [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn37.pn57.ph, %.sink.split91 ]
  call void @__cxa_free_exception(ptr %i.dg) #20
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn37.pn56 = phi { ptr, i32 } [ %.pn37.pn57, %bb.aj ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ]
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ad, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.merged = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn53, %bb.f ], [ %i.da, %bb.ad ], [ %.pn37.pn56, %bb.ak ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.merged

bb.am:                                            ; preds = %bb.ak
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #23
  unreachable

bb.an:                                            ; preds = %bb.ah, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEELm3ELm0EEclERNS0_6ListOfIS6_Lm3ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.903", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #20 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp ult i64 %i.r, 33
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull @.str.117)
  %.pre = load ptr, ptr %i.m, align 8             ; 2 uses
  %.pre70 = load ptr, ptr %i.l, align 8           ; 2 uses
  %.pre73 = ptrtoint ptr %.pre to i64
  %.pre74 = ptrtoint ptr %.pre70 to i64
  %.pre76 = sub i64 %.pre73, %.pre74
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi77 = phi i64 [ %.pre76, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  %i.u = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ]
  %i.v = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ]
  %i.w = ashr exact i64 %.pre-phi77, 4            ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %.pre-phi77, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %11 = ptrtoint ptr %i.ah to i64
  %i.an = sub i64 %11, %i.ac
  %12 = add i64 %i.an, -8                         ; 2 uses
  %i.ao = lshr i64 %12, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 72
  %i.aq = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.al, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.aa, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.aa, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.av = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep99, align 8, !alias.scope !305, !noalias !302
  %wide.load100 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !305, !noalias !302
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !302, !noalias !305
  store <2 x i64> %wide.load100, ptr %i.aw, align 8, !alias.scope !302, !noalias !305
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader122

.lr.ph.i.i.i.i.preheader122:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader122, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !305, !noalias !302
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !alias.scope !302, !noalias !305
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !308

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bb, ptr %i.ag, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bc, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bd = phi ptr [ %i.u, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.be = phi ptr [ %i.v, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.be, %i.bd
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dr, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bh = load ptr, ptr %i.bf, align 8            ; 5 uses
  %i.bi = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.bf, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %1, align 8               ; 7 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #24 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i64 0, ptr %i.bx, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.by = ptrtoaddr ptr %i.bw to i64
  %i.bz = sub i64 %i.bm, %i.bn
  %i.ca = add i64 %i.bz, -8                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.ca, 24
  %i.cd = sub i64 %i.bn, %i.by
  %diff.check103 = icmp ugt i64 %i.cd, -32
  %or.cond120 = or i1 %min.iters.check105, %diff.check103
  br i1 %or.cond120, label %.lr.ph.i.i.i.i.i.i.preheader121, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec108 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec108, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next115, %vector.body109 ] ; 2 uses
  %i.ch = shl i64 %index110, 3                    ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.bl, i64 %i.ch ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.ci = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load113 = load <2 x i64>, ptr %next.gep112, align 8, !alias.scope !312, !noalias !309
  %wide.load114 = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !312, !noalias !309
  %i.cj = getelementptr i8, ptr %next.gep111, i64 16
  store <2 x i64> %wide.load113, ptr %next.gep111, align 8, !alias.scope !309, !noalias !312
  store <2 x i64> %wide.load114, ptr %i.cj, align 8, !alias.scope !309, !noalias !312
  %index.next115 = add nuw i64 %index110, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.ck, label %middle.block116, label %vector.body109, !llvm.loop !314

middle.block116:                                  ; preds = %vector.body109
  %cmp.n117 = icmp eq i64 %i.cc, %n.vec108
  br i1 %cmp.n117, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader121

.lr.ph.i.i.i.i.i.i.preheader121:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block116
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block116 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block116 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader121, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.cl = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !312, !noalias !309
  store i64 %i.cl, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !309, !noalias !312
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bh
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !315

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block116, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bw, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cf, %middle.block116 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #22
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bw, ptr %1, align 8
  store ptr %i.co, ptr %i.bf, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cp, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cq = phi ptr [ %i.bj, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
end_hunk_2
begin_hunk_3_@_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x317IfcRepresentationEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.h:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ult i64 %i.r, %i.m                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !266

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.m, %i.v
  br i1 %i.w, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.h, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %bb.i
  %.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ 0, %bb.h ], [ 0, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  store i64 %.0.i, ptr %1, align 8
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x319IfcConnectedFaceSetEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.895", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #20 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.117)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %11 = ptrtoint ptr %i.ah to i64
  %i.an = sub i64 %11, %i.ac
  %12 = add i64 %i.an, -8                         ; 2 uses
  %i.ao = lshr i64 %12, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 72
  %i.aq = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.al, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.aa, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.av = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !323, !noalias !320
  %wide.load96 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !323, !noalias !320
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !320, !noalias !323
  store <2 x i64> %wide.load96, ptr %i.aw, align 8, !alias.scope !320, !noalias !323
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !325

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !323, !noalias !320
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !alias.scope !320, !noalias !323
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !326

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bb, ptr %i.ag, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bc, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bd = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.be = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.be, %i.bd
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE7reserveEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dr, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bh = load ptr, ptr %i.bf, align 8            ; 5 uses
  %i.bi = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.bf, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %1, align 8               ; 7 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #24 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i64 0, ptr %i.bx, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.by = ptrtoaddr ptr %i.bw to i64
  %i.bz = sub i64 %i.bm, %i.bn
  %i.ca = add i64 %i.bz, -8                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.ca, 24
  %i.cd = sub i64 %i.bn, %i.by
  %diff.check99 = icmp ugt i64 %i.cd, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ch = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bl, i64 %i.ch ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.ci = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !330, !noalias !327
  %wide.load110 = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !330, !noalias !327
  %i.cj = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !327, !noalias !330
  store <2 x i64> %wide.load110, ptr %i.cj, align 8, !alias.scope !327, !noalias !330
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.ck, label %middle.block112, label %vector.body105, !llvm.loop !332

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cc, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.cl = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !330, !noalias !327
  store i64 %i.cl, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !327, !noalias !330
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bh
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !333

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bw, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cf, %middle.block112 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #22
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bw, ptr %1, align 8
  store ptr %i.co, ptr %i.bf, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cp, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cq = phi ptr [ %i.bj, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
end_hunk_3
begin_hunk_4_@_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x37IfcLoopEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.h:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ult i64 %i.r, %i.m                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !266

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.m, %i.v
  br i1 %i.w, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.h, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %bb.i
  %.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ 0, %bb.h ], [ 0, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  store i64 %.0.i, ptr %1, align 8
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x311IfcPropertyEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.900", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #20 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.117)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %11 = ptrtoint ptr %i.ah to i64
  %i.an = sub i64 %11, %i.ac
  %12 = add i64 %i.an, -8                         ; 2 uses
  %i.ao = lshr i64 %12, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 72
  %i.aq = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.al, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.aa, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.av = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !341, !noalias !338
  %wide.load96 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !341, !noalias !338
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !338, !noalias !341
  store <2 x i64> %wide.load96, ptr %i.aw, align 8, !alias.scope !338, !noalias !341
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !341, !noalias !338
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !alias.scope !338, !noalias !341
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !344

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bb, ptr %i.ag, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bc, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bd = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.be = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.be, %i.bd
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE7reserveEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dr, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bh = load ptr, ptr %i.bf, align 8            ; 5 uses
  %i.bi = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.bf, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %1, align 8               ; 7 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #24 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i64 0, ptr %i.bx, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.by = ptrtoaddr ptr %i.bw to i64
  %i.bz = sub i64 %i.bm, %i.bn
  %i.ca = add i64 %i.bz, -8                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.ca, 24
  %i.cd = sub i64 %i.bn, %i.by
  %diff.check99 = icmp ugt i64 %i.cd, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ch = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bl, i64 %i.ch ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.ci = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !348, !noalias !345
  %wide.load110 = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !348, !noalias !345
  %i.cj = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !345, !noalias !348
  store <2 x i64> %wide.load110, ptr %i.cj, align 8, !alias.scope !345, !noalias !348
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.ck, label %middle.block112, label %vector.body105, !llvm.loop !350

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cc, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.cl = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !348, !noalias !345
  store i64 %i.cl, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !345, !noalias !348
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bh
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !351

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bw, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cf, %middle.block112 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #22
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bw, ptr %1, align 8
  store ptr %i.co, ptr %i.bf, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cp, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cq = phi ptr [ %i.bj, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
end_hunk_4
begin_hunk_5_@_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x311IfcPropertyEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.h:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ult i64 %i.r, %i.m                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !266

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.m, %i.v
  br i1 %i.w, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.h, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %bb.i
  %.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ 0, %bb.h ], [ 0, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  store i64 %.0.i, ptr %1, align 8
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x314NotImplementedEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.878", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #20 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.117)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %11 = ptrtoint ptr %i.ah to i64
  %i.an = sub i64 %11, %i.ac
  %12 = add i64 %i.an, -8                         ; 2 uses
  %i.ao = lshr i64 %12, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 72
  %i.aq = sub i64 %i.ac, %i.am
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.al, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.aa, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.av = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !359, !noalias !356
  %wide.load96 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !359, !noalias !356
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !356, !noalias !359
  store <2 x i64> %wide.load96, ptr %i.aw, align 8, !alias.scope !356, !noalias !359
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !359, !noalias !356
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !alias.scope !356, !noalias !359
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !362

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bb, ptr %i.ag, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bc, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bd = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.be = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.be, %i.bd
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE7reserveEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dr, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bh = load ptr, ptr %i.bf, align 8            ; 5 uses
  %i.bi = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.bf, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %1, align 8               ; 7 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #24 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i64 0, ptr %i.bx, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.by = ptrtoaddr ptr %i.bw to i64
  %i.bz = sub i64 %i.bm, %i.bn
  %i.ca = add i64 %i.bz, -8                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.ca, 24
  %i.cd = sub i64 %i.bn, %i.by
  %diff.check99 = icmp ugt i64 %i.cd, -32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ch = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bl, i64 %i.ch ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.ci = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !366, !noalias !363
  %wide.load110 = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !366, !noalias !363
  %i.cj = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !363, !noalias !366
  store <2 x i64> %wide.load110, ptr %i.cj, align 8, !alias.scope !363, !noalias !366
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.ck, label %middle.block112, label %vector.body105, !llvm.loop !368

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cc, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.cl = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !366, !noalias !363
  store i64 %i.cl, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !363, !noalias !366
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bh
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !369

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bw, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cf, %middle.block112 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #22
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bw, ptr %1, align 8
  store ptr %i.co, ptr %i.bf, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cp, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cq = phi ptr [ %i.bj, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
end_hunk_5
