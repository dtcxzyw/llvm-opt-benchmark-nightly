inline.NumInlined: 1002
inline.NumDeleted: 562
begin_hunk_0_@_ZN6Assimp15ObjFileImporter20CreateDataFromImportEPKNS_7ObjFile5ModelEP7aiScene:bb.a
bb.am:                                            ; preds = %bb.af, %bb.w
  unreachable
}

declare noundef ptr @_ZNK6Assimp13ObjFileParser8GetModelEv(ptr noundef nonnull align 8 dereferenceable(4184)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp13ObjFileParserD2Ev(ptr noundef nonnull align 8 dead_on_return(4184) dereferenceable(4184) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4152
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4168 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6Assimp7ObjFile5ModelESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6Assimp7ObjFile5ModelEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6Assimp7ObjFile5ModelEEclEPS2_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZN6Assimp7ObjFile5ModelD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %i.h) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 376) #22
  br label %_ZNSt10unique_ptrIN6Assimp7ObjFile5ModelESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp7ObjFile5ModelESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteIN6Assimp7ObjFile5ModelEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt10unique_ptrIN6Assimp8IOStreamEZNS0_15ObjFileImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS0_8IOSystemEE3$_0ED2Ev"(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %"_ZZN6Assimp15ObjFileImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEENK3$_0clEPNS_8IOStreamE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8
  %.val.val = load ptr, ptr %.val, align 8        ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %.val.val, ptr noundef nonnull %i.b)
          to label %"_ZZN6Assimp15ObjFileImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEENK3$_0clEPNS_8IOStreamE.exit" unwind label %bb.c, !inline_history !14

"_ZZN6Assimp15ObjFileImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEENK3$_0clEPNS_8IOStreamE.exit": ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp15ObjFileImporter11createNodesEPKNS_7ObjFile5ModelEPKNS1_6ObjectEP6aiNodeP7aiSceneRSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteISE_EESaISH_EE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(136) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr noundef captures(none) %4, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.50", align 8 ; 8 uses
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %5, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24 ; 15 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.j)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 4 uses
  %i.m = icmp ugt i64 %i.l, 1023
  br i1 %i.m, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw nsw i64 %i.l to i32
  store i32 %i.n, ptr %i.j, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.p = load ptr, ptr %2, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 1 %i.p, i64 %i.l, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 0, ptr %i.q, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %bb.d
  %i.r = icmp eq ptr %3, null
  br i1 %i.r, label %_ZN6Assimp15ObjFileImporter23appendChildToParentNodeEP6aiNodeS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1096
  store ptr %3, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 1104 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 1112
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = zext i32 %i.u to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  store ptr %i.j, ptr %i.z, align 8
  br label %_ZN6Assimp15ObjFileImporter23appendChildToParentNodeEP6aiNodeS2_.exit

_ZN6Assimp15ObjFileImporter23appendChildToParentNodeEP6aiNodeS2_.exit: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not66 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp15ObjFileImporter23appendChildToParentNodeEP6aiNodeS2_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit, %_ZN6Assimp15ObjFileImporter23appendChildToParentNodeEP6aiNodeS2_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.p, label %bb.o

bb.f:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 1144) #22
  br label %bb.s

bb.g:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit
  %i.al = phi ptr [ %i.ad, %.lr.ph ], [ %i.cg, %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit ]
  %.04961 = phi i64 [ 0, %.lr.ph ], [ %i.ce, %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.04961
  %i.an = load i32, ptr %i.am, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN6Assimp15ObjFileImporter14createTopologyEPKNS_7ObjFile5ModelEPKNS1_6ObjectEj(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.50") align 8 %6, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.an)
  %i.ao = load ptr, ptr %6, align 8               ; 4 uses
  %.not59 = icmp eq ptr %i.ao, null
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  br i1 %.not59, label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  %.not53 = icmp eq i32 %i.ar, 0
  br i1 %.not53, label %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.at = load ptr, ptr %i.ae, align 8
  %.not.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.ap, ptr %i.as, align 8
  %i.au = load ptr, ptr %i.c, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.c, align 8
  br label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %5, align 8               ; 10 uses
  %i.ax = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #23
          to label %.noexc56 unwind label %.loopexit.split-lp

.noexc56:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.bb = ashr exact i64 %i.az, 3                 ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i, %i.bb ; 2 uses
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975) ; 2 uses
  %.not.i.i55 = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i55)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #24
          to label %.noexc57 unwind label %.loopexit60 ; 10 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.az
  store i64 %i.ap, ptr %i.bg, align 8
  store ptr null, ptr %6, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.aw, %i.as
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc57
  %i.bh = add i64 %i.ax, -8
  %i.bi = sub i64 %i.bh, %i.ay                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader90, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bf, i64 8
  %i.bl = add i64 %i.ax, -8
  %i.bm = sub i64 %i.bl, %i.ay
  %i.bn = and i64 %i.bm, -8                       ; 2 uses
  %scevgep84.a = getelementptr i8, ptr %scevgep, i64 %i.bn
  %scevgep85 = getelementptr i8, ptr %i.aw, i64 8
  %scevgep86 = getelementptr i8, ptr %scevgep85, i64 %i.bn
  %bound0 = icmp ult ptr %i.bf, %scevgep86
  %bound1 = icmp ult ptr %i.aw, %scevgep84.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bf, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.aw, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.br ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.aw, i64 %i.br ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.bs = getelementptr i8, ptr %next.gep87, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep87, align 8, !alias.scope !24, !noalias !19
  %wide.load88 = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !24, !noalias !19
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !27, !noalias !24
  store <2 x i64> %wide.load88, ptr %i.bt, align 8, !alias.scope !27, !noalias !24
  %i.bu = getelementptr i8, ptr %next.gep87, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep87, align 8, !alias.scope !24, !noalias !19
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !alias.scope !24, !noalias !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader90

.lr.ph.i.i.i.i.preheader90:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader90, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.bw = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !22, !noalias !19
  store i64 %i.bw, ptr %.012.i.i.i.i, align 8, !alias.scope !19, !noalias !22
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !22, !noalias !19
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, %i.as
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !32

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc57
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bf, %.noexc57 ], [ %i.bp, %middle.block ], [ %i.by, %.lr.ph.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.ca = load ptr, ptr %i.ae, align 8
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cc) #22
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit

.loopexit60:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit60
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit60 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.s

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.m
  store ptr %i.bf, ptr %5, align 8
  store ptr %i.bz, ptr %i.c, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.cd, ptr %i.ae, align 8
  %.pr.pre = load ptr, ptr %6, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i

_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i:    ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit
  %.pr83 = phi ptr [ %.pr.pre, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit ], [ %i.ao, %bb.h ] ; 2 uses
  call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %.pr83) #21
  call void @_ZdlPvm(ptr noundef nonnull %.pr83, i64 noundef 1320) #22
  br label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.g, %bb.j, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit, %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ce = add nuw i64 %.04961, 1                  ; 2 uses
  %i.cf = load ptr, ptr %i.ab, align 8
  %i.cg = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 2
  %i.cl = icmp ult i64 %i.ce, %i.ck
  br i1 %i.cl, label %bb.g, label %._crit_edge, !llvm.loop !33

bb.o:                                             ; preds = %._crit_edge
  %i.cm = ptrtoint ptr %i.ai to i64
  %i.cn = ptrtoint ptr %i.ag to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = ashr exact i64 %i.co, 3                 ; 2 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 1104
  store i32 %i.cq, ptr %i.cr, align 8
  %i.cs = icmp ugt i64 %i.cp, 2305843009213693951
  %i.ct = select i1 %i.cs, i64 -1, i64 %i.co
  %i.cu = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ct) #24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 1112
  store ptr %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 1120
  store i32 1, ptr %i.cw, align 8
  %i.cx = call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 1128
  store ptr %i.cx, ptr %i.cy, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.cz = load ptr, ptr %i.c, align 8
  %i.da = load ptr, ptr %5, align 8
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = ashr exact i64 %i.dd, 3                 ; 2 uses
  %.not = icmp eq i64 %i.de, %i.i
  br i1 %.not, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = sub nsw i64 %i.de, %i.i                 ; 3 uses
  %i.dg = icmp ugt i64 %i.df, 4611686018427387903
  %i.dh = shl nsw i64 %i.df, 2
  %i.di = select i1 %i.dg, i64 -1, i64 %i.dh
  %i.dj = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.di) #24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 1128 ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8
  %i.dl = trunc i64 %i.df to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 1120
  store i32 %i.dl, ptr %i.dm, align 8
  %i.dn = icmp ult i64 %i.h, %i.dd
  br i1 %i.dn, label %.lr.ph65, label %.loopexit

.lr.ph65:                                         ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.pre = load i32, ptr %i.do, align 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph65, %bb.r
  %i.dp = phi i32 [ %.pre, %.lr.ph65 ], [ %i.dt, %bb.r ]
  %.063 = phi i64 [ %i.i, %.lr.ph65 ], [ %i.dv, %bb.r ]
  %.04562 = phi i64 [ 0, %.lr.ph65 ], [ %i.du, %bb.r ] ; 2 uses
  %i.dq = load ptr, ptr %i.dk, align 8
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.04562
  store i32 %i.dp, ptr %i.dr, align 4
  %i.ds = load i32, ptr %i.do, align 8
  %i.dt = add i32 %i.ds, 1                        ; 2 uses
  store i32 %i.dt, ptr %i.do, align 8
  %i.du = add i64 %.04562, 1
  %i.dv = add nuw i64 %.063, 1                    ; 2 uses
  %i.dw = load ptr, ptr %i.c, align 8
  %i.dx = load ptr, ptr %5, align 8
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 3
  %i.ec = icmp ult i64 %i.dv, %i.eb
  br i1 %i.ec, label %bb.r, label %.loopexit, !llvm.loop !34

bb.s:                                             ; preds = %bb.n, %bb.f
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %i.ak, %bb.f ]
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %bb.r, %bb.q, %bb.p, %bb.a
  %.046 = phi ptr [ null, %bb.a ], [ %i.j, %bb.p ], [ %i.j, %bb.q ], [ %i.j, %bb.r ]
  ret ptr %.046
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ObjFileImporter15createMaterialsEPKNS_7ObjFile5ModelEP7aiScene(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(address) %1, ptr noundef captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 7 uses
  %i.o = alloca i32, align 4                      ; 17 uses
  %i.p = icmp eq ptr %2, null
  br i1 %i.p, label %.loopexit175, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = lshr i64 %i.w, 5
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store i32 0, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.q, align 8
  %i.aa = load ptr, ptr %i.r, align 8
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr noundef nonnull @.str.21)
  br label %.loopexit175

bb.d:                                             ; preds = %bb.b
  %i.ad = lshr exact i64 %i.w, 2
  %i.ae = and i64 %i.ad, 34359738360
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = and i64 %i.w, 137438953440
  %.not178 = icmp eq i64 %i.ah, 0
  br i1 %.not178, label %.loopexit175, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.loopexit175, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = and i64 %i.x, 4294967295
  br label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread
  %.pr = load ptr, ptr %i.ai, align 8
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.splitthread-pre-split, %.lr.ph.split.preheader
  %i.am = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.ak, %.lr.ph.split.preheader ] ; 2 uses
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split
  %i.an = load ptr, ptr %i.q, align 8
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %indvars.iv181 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8            ; 4 uses
  %i.ar = load ptr, ptr %i.ao, align 8            ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.at) ; 2 uses
  %i.au = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.au, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call i32 @memcmp(ptr noundef %i.aw, ptr noundef %i.ar, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.e
end_hunk_0
