Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ObjFileImporter?download=true
inline.NumInlined: 1002
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZNSt10unique_ptrIN6Assimp8IOStreamEZNS0_15ObjFileImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS0_8IOSystemEE3$_0ED2Ev":bb.a
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
define hidden noundef ptr @_ZN6Assimp15ObjFileImporter11createNodesEPKNS_7ObjFile5ModelEPKNS1_6ObjectEP6aiNodeP7aiSceneRSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteISE_EESaISH_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.50", align 8 ; 9 uses
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
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
  %i.al = phi ptr [ %i.ad, %.lr.ph ], [ %i.cj, %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit ]
  %.04761 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.04761
  %i.an = load i32, ptr %i.am, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN6Assimp15ObjFileImporter14createTopologyEPKNS_7ObjFile5ModelEPKNS1_6ObjectEj(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.50") align 8 %6, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.an)
  %i.ao = load ptr, ptr %6, align 8               ; 4 uses
  %.not59 = icmp eq ptr %i.ao, null
  %i.ap = ptrtoint ptr %i.ao to i64
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
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i55 = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i55)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #24
          to label %.noexc57 unwind label %.loopexit60 ; 10 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %i.bj = load i64, ptr %6, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  store ptr null, ptr %6, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.aw, %i.as
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc57
  %i.bk = add i64 %i.ax, -8
  %i.bl = sub i64 %i.bk, %i.ay                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader90, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bh, i64 8
  %i.bo = add i64 %i.ax, -8
  %i.bp = sub i64 %i.bo, %i.ay
  %i.bq = and i64 %i.bp, -8                       ; 2 uses
  %scevgep84 = getelementptr i8, ptr %scevgep, i64 %i.bq
  %scevgep85 = getelementptr i8, ptr %i.aw, i64 8
  %scevgep86 = getelementptr i8, ptr %scevgep85, i64 %i.bq
  %bound0 = icmp ult ptr %i.bh, %scevgep86
  %bound1 = icmp ult ptr %i.aw, %scevgep84
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 4611686018427387900     ; 3 uses
  %i.br = shl i64 %n.vec, 3                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.aw, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.aw, i64 %i.bu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.bv = getelementptr i8, ptr %next.gep87, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep87, align 8, !alias.scope !33, !noalias !31
  %wide.load88 = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !33, !noalias !31
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !34, !noalias !33
  store <2 x i64> %wide.load88, ptr %i.bw, align 8, !alias.scope !34, !noalias !33
  %i.bx = getelementptr i8, ptr %next.gep87, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep87, align 8, !alias.scope !33, !noalias !31
  store <2 x ptr> splat (ptr null), ptr %i.bx, align 8, !alias.scope !33, !noalias !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader90

.lr.ph.i.i.i.i.preheader90:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader90, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.bz = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !32, !noalias !31
  store i64 %i.bz, ptr %.012.i.i.i.i, align 8, !alias.scope !31, !noalias !32
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !32, !noalias !31
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, %i.as
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !28

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc57
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bh, %.noexc57 ], [ %i.bs, %middle.block ], [ %i.cb, %.lr.ph.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.cd = load ptr, ptr %i.ae, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cf) #22
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
  store ptr %i.bh, ptr %5, align 8
  store ptr %i.cc, ptr %i.c, align 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.cg, ptr %i.ae, align 8
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
  %i.ch = add nuw i64 %.04761, 1                  ; 2 uses
  %i.ci = load ptr, ptr %i.ab, align 8
  %i.cj = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  %i.co = icmp ult i64 %i.ch, %i.cn
  br i1 %i.co, label %bb.g, label %._crit_edge, !llvm.loop !29

bb.o:                                             ; preds = %._crit_edge
  %i.cp = ptrtoint ptr %i.ai to i64
  %i.cq = ptrtoint ptr %i.ag to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = ashr exact i64 %i.cr, 3                 ; 2 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 1104
  store i32 %i.ct, ptr %i.cu, align 8
  %i.cv = icmp ugt i64 %i.cs, 2305843009213693951
  %i.cw = select i1 %i.cv, i64 -1, i64 %i.cr
  %i.cx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cw) #24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 1112
  store ptr %i.cx, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.j, i64 1120
  store i32 1, ptr %i.cz, align 8
  %i.da = call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #24
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 1128
  store ptr %i.da, ptr %i.db, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.dc = load ptr, ptr %i.c, align 8
  %i.dd = load ptr, ptr %5, align 8
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 3                 ; 2 uses
  %.not = icmp eq i64 %i.dh, %i.i
  br i1 %.not, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = sub nsw i64 %i.dh, %i.i                 ; 3 uses
  %i.dj = icmp ugt i64 %i.di, 4611686018427387903
  %i.dk = shl nsw i64 %i.di, 2
  %i.dl = select i1 %i.dj, i64 -1, i64 %i.dk
  %i.dm = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dl) #24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 1128 ; 2 uses
  store ptr %i.dm, ptr %i.dn, align 8
  %i.do = trunc i64 %i.di to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 1120
  store i32 %i.do, ptr %i.dp, align 8
  %i.dq = load ptr, ptr %i.c, align 8
  %i.dr = load ptr, ptr %5, align 8
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = icmp ult i64 %i.h, %i.du
  br i1 %i.dv, label %.lr.ph65, label %.loopexit

.lr.ph65:                                         ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.pre = load i32, ptr %i.dw, align 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph65, %bb.r
  %i.dx = phi i32 [ %.pre, %.lr.ph65 ], [ %i.eb, %bb.r ]
  %.063 = phi i64 [ %i.i, %.lr.ph65 ], [ %i.ed, %bb.r ]
  %.04562 = phi i64 [ 0, %.lr.ph65 ], [ %i.ec, %bb.r ] ; 2 uses
  %i.dy = load ptr, ptr %i.dn, align 8
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.04562
  store i32 %i.dx, ptr %i.dz, align 4
  %i.ea = load i32, ptr %i.dw, align 8
  %i.eb = add i32 %i.ea, 1                        ; 2 uses
  store i32 %i.eb, ptr %i.dw, align 8
  %i.ec = add i64 %.04562, 1
  %i.ed = add nuw i64 %.063, 1                    ; 2 uses
  %i.ee = load ptr, ptr %i.c, align 8
  %i.ef = load ptr, ptr %5, align 8
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 3
  %i.ek = icmp ult i64 %i.ed, %i.ej
  br i1 %i.ek, label %bb.r, label %.loopexit, !llvm.loop !30

bb.s:                                             ; preds = %bb.n, %bb.f
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %i.ak, %bb.f ]
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %bb.r, %bb.q, %bb.p, %bb.a
  %.046 = phi ptr [ null, %bb.a ], [ %i.j, %bb.p ], [ %i.j, %bb.q ], [ %i.j, %bb.r ]
  ret ptr %.046
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ObjFileImporter15createMaterialsEPKNS_7ObjFile5ModelEP7aiScene(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.ay = sub i64 %i.at, %i.aq
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ay, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ax, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.az = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.az, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.az, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.e, !llvm.loop !37

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ba = icmp eq ptr %.19.i.i.i, %i.aj
  br i1 %i.ba, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.aq) ; 2 uses
  %i.bd = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call i32 @memcmp(ptr noundef %i.ar, ptr noundef %i.bf, i64 noundef %.sroa.speculated.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.bh = sub i64 %i.aq, %i.bc
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bh, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bi = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bi, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  %i.bj = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 76 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8            ; 51 uses
  %i.bm = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef %i.bl, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 20636 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  switch i32 %i.bo, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.i:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 16) #22
  resume { ptr, i32 } %i.bp

bb.j:                                             ; preds = %bb.h
  store i32 9, ptr %i.n, align 4
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  store i32 2, ptr %i.n, align 4
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  store i32 3, ptr %i.n, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  store i32 2, ptr %i.n, align 4
  %i.bq = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bq, ptr noundef nonnull @.str.23)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.br = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.n, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.bs = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.bn, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 20580
  %i.bu = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.bt, i32 noundef 12, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 20592
  %i.bw = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.bv, i32 noundef 12, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 20604
  %i.by = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.bx, i32 noundef 12, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 20616
  %i.ca = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.bz, i32 noundef 12, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 20632
  %i.cc = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.cb, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 20628
  %i.ce = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.cd, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 20644
  %i.cg = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.cf, i32 noundef 12, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 20668
  %i.ci = load i8, ptr %i.ch, align 4, !range !7, !noundef !8
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 20664
  %i.cl = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.ck, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 20676
  %i.cn = load i8, ptr %i.cm, align 4, !range !7, !noundef !8
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bl, i64 20672
  %i.cq = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.cp, i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 20692
  %i.cs = load i8, ptr %i.cr, align 4, !range !7, !noundef !8
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 20680
  %i.cv = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.cu, i32 noundef 12, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bl, i64 20724
  %i.cx = load i8, ptr %i.cw, align 4, !range !7, !noundef !8
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bl, i64 20720
  %i.da = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.cz, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.bl, i64 20732
  %i.dc = load i8, ptr %i.db, align 4, !range !7, !noundef !8
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.bl, i64 20728
  %i.df = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.de, i32 noundef 4, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 20744
  %i.dh = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.dg, i32 noundef 4, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bl, i64 20640
  %i.dj = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.di, i32 noundef 4, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #21
  store i32 0, ptr %i.o, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bl, i64 1028 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.dk, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dn = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bl, i64 20560
  %i.dp = load i8, ptr %i.do, align 4, !range !7, !noundef !8
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 1, ptr %i.m, align 4
  %i.dr = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.m, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.ds = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.m, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3084 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4
  %.not158 = icmp eq i32 %i.du, 0
  br i1 %.not158, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.dt, ptr noundef nonnull @.str.40, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.dw = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 3, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bl, i64 20562
  %i.dy = load i8, ptr %i.dx, align 2, !range !7, !noundef !8
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 1, ptr %i.l, align 4
  %i.ea = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.l, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 3, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.eb = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.l, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 3, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bl, i64 4112 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4
  %.not159 = icmp eq i32 %i.ed, 0
  br i1 %.not159, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.ec, ptr noundef nonnull @.str.40, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ef = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 4, i32 noundef 0, i32 noundef 4) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bl, i64 2056 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4
  %.not160 = icmp eq i32 %i.eh, 0
  br i1 %.not160, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.eg, ptr noundef nonnull @.str.40, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ej = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 2, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bl, i64 20561
  %i.el = load i8, ptr %i.ek, align 1, !range !7, !noundef !8
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 1, ptr %i.k, align 4
  %i.en = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.k, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 2, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.eo = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.k, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 2, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bl, i64 5140 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4
  %.not161 = icmp eq i32 %i.eq, 0
  br i1 %.not161, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.ep, ptr noundef nonnull @.str.40, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.es = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 5, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.bl, i64 20772 ; 2 uses
  %i.eu = load float, ptr %i.et, align 4
  %i.ev = fcmp une float %i.eu, 1.000000e+00
  br i1 %i.ev, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ew = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.et, i32 noundef 4, ptr noundef nonnull @.str.42, i32 noundef 5, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bl, i64 20564
  %i.ey = load i8, ptr %i.ex, align 4, !range !7, !noundef !8
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 1, ptr %i.j, align 4
  %i.fa = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.j, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 5, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.fb = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.j, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 5, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.ai
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bl, i64 6168 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4
  %.not162 = icmp eq i32 %i.fd, 0
  br i1 %.not162, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fe = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.40, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.ff = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 6, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bl, i64 20772 ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4
  %i.fi = fcmp une float %i.fh, 1.000000e+00
  br i1 %i.fi, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fj = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.fg, i32 noundef 4, ptr noundef nonnull @.str.42, i32 noundef 6, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bl, i64 20565
  %i.fl = load i8, ptr %i.fk, align 1, !range !7, !noundef !8
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 1, ptr %i.i, align 4
  %i.fn = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.i, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 6, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.fo = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.i, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 6, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.an
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bl, i64 7196 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4
  %.not163 = icmp eq i32 %i.fq, 0
  br i1 %.not163, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bl, i64 8224
  %i.fs = load i32, ptr %i.fr, align 4
  %.not164 = icmp ne i32 %i.fs, 0                 ; 2 uses
  %i.ft = select i1 %.not164, i64 20567, i64 20566
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ft
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aw
  %indvars.iv = phi i64 [ 0, %bb.at ], [ %indvars.iv.next, %bb.aw ] ; 4 uses
  %i.fv = getelementptr inbounds nuw [1028 x i8], ptr %i.fp, i64 %indvars.iv
  %i.fw = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.fx = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.fv, ptr noundef nonnull @.str.40, i32 noundef 11, i32 noundef %i.fw) ; 0 uses
  %i.fy = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 11, i32 noundef %i.fw, i32 noundef 4) ; 0 uses
  %i.fz = load i8, ptr %i.fu, align 1, !range !7, !noundef !8
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 1, ptr %i.h, align 4
  %i.gb = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.h, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 11, i32 noundef %i.fw, i32 noundef 4) ; 0 uses
  %i.gc = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.h, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 11, i32 noundef %i.fw, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.gd = icmp samesign ult i64 %indvars.iv, 5
  %i.ge = select i1 %.not164, i1 %i.gd, i1 false
  br i1 %i.ge, label %bb.au, label %.loopexit, !llvm.loop !38

.loopexit:                                        ; preds = %bb.aw, %bb.as
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bl, i64 15420 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4
  %.not165 = icmp eq i32 %i.gg, 0
  br i1 %.not165, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  %i.gh = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.gf, ptr noundef nonnull @.str.40, i32 noundef 9, i32 noundef 0) ; 0 uses
  %i.gi = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 9, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bl, i64 20575
  %i.gk = load i8, ptr %i.gj, align 1, !range !7, !noundef !8
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 1, ptr %i.g, align 4
  %i.gm = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.g, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 9, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.gn = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.g, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 9, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %.loopexit
  %i.go = getelementptr inbounds nuw i8, ptr %i.bl, i64 14392 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4
  %.not166 = icmp eq i32 %i.gp, 0
  br i1 %.not166, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.go, ptr noundef nonnull @.str.40, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.gr = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 8, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bl, i64 20574
  %i.gt = load i8, ptr %i.gs, align 2, !range !7, !noundef !8
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 1, ptr %i.f, align 4
  %i.gv = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.f, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 8, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.gw = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.f, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 8, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.az
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bl, i64 13364 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4
  %.not167 = icmp eq i32 %i.gy, 0
  br i1 %.not167, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gz = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.gx, ptr noundef nonnull @.str.40, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.ha = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 7, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bl, i64 20573
  %i.hc = load i8, ptr %i.hb, align 1, !range !7, !noundef !8
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 1, ptr %i.e, align 4
  %i.he = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.e, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 7, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.hf = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.e, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 7, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.bc
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bl, i64 16448 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4
  %.not168 = icmp eq i32 %i.hh, 0
  br i1 %.not168, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hi = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.hg, ptr noundef nonnull @.str.40, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.hj = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 16, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bl, i64 20576
  %i.hl = load i8, ptr %i.hk, align 4, !range !7, !noundef !8
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 1, ptr %i.d, align 4
  %i.hn = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.d, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 16, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.ho = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.d, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 16, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bf
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bl, i64 17476 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4
  %.not169 = icmp eq i32 %i.hq, 0
  br i1 %.not169, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hr = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.hp, ptr noundef nonnull @.str.40, i32 noundef 15, i32 noundef 0) ; 0 uses
  %i.hs = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 15, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bl, i64 20577
  %i.hu = load i8, ptr %i.ht, align 1, !range !7, !noundef !8
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 1, ptr %i.c, align 4
  %i.hw = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 15, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.hx = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 15, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk, %bb.bi
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bl, i64 18504 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4
  %.not170 = icmp eq i32 %i.hz, 0
  br i1 %.not170, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ia = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.hy, ptr noundef nonnull @.str.40, i32 noundef 19, i32 noundef 0) ; 0 uses
  %i.ib = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 19, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bl, i64 20578
  %i.id = load i8, ptr %i.ic, align 2, !range !7, !noundef !8
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 1, ptr %i.b, align 4
  %i.if = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 19, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.ig = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 19, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bl
  %i.ih = getelementptr inbounds nuw i8, ptr %i.bl, i64 19532 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4
  %.not171 = icmp eq i32 %i.ii, 0
  br i1 %.not171, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ij = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.ih, ptr noundef nonnull @.str.40, i32 noundef 18, i32 noundef 0) ; 0 uses
  %i.ik = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 18, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.bl, i64 20579
  %i.im = load i8, ptr %i.il, align 1, !range !7, !noundef !8
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4
  %i.io = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 18, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.ip = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 18, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq, %bb.bo
  %i.iq = load ptr, ptr %i.ag, align 8
  %i.ir = load i32, ptr %i.y, align 8
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.is
  store ptr %i.bj, ptr %i.it, align 8
  %i.iu = load i32, ptr %i.y, align 8
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #21
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %.lr.ph.split, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, %bb.br
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit175, label %.lr.ph.splitthread-pre-split, !llvm.loop !39

.loopexit175:                                     ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, %.lr.ph, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrI6aiMeshSt14default_deleteIS1_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrI6aiMeshSt14default_deleteIS1_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI6aiMeshSt14default_deleteIS1_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.d) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1320) #22
  br label %_ZSt8_DestroyISt10unique_ptrI6aiMeshSt14default_deleteIS1_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrI6aiMeshSt14default_deleteIS1_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i.i.i.i, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrI6aiMeshSt14default_deleteIS1_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #22
  br label %_ZNSt12_Vector_baseISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit

_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit:      ; preds = %bb.a
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.a) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1320) #22
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp15ObjFileImporter23appendChildToParentNodeEP6aiNodeS2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1096
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext i32 %i.e to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  store ptr %2, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ObjFileImporter14createTopologyEPKNS_7ObjFile5ModelEPKNS1_6ObjectEj(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.50") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.d = zext i32 %4 to i64
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8              ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #24 ; 11 uses
  store i32 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 1272
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 1312
  store ptr null, ptr %i.t, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.q, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.r, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.s, i8 0, i64 36, i1 false)
  store ptr %i.n, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 4 uses
  %i.w = add i64 %i.v, -1024
  %or.cond87 = icmp ult i64 %i.w, -1023
  br i1 %or.cond87, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 236
  %i.y = trunc nuw nsw i64 %i.v to i32
  store i32 %i.y, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 240 ; 2 uses
  %i.aa = load ptr, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 1 %i.aa, i64 %i.v, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  store i8 0, ptr %i.ab, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.d
  %i.ac = load ptr, ptr %i.k, align 8
  %i.ad = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not117 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not117, label %.loopexit90, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.not = icmp eq i32 %.pre, 0
  br i1 %.not, label %.loopexit90, label %bb.m

.lr.ph:                                           ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.l
  %i.ae = phi ptr [ %i.ce, %bb.l ], [ %i.n, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 4 uses
  %i.af = phi ptr [ %i.ch, %bb.l ], [ %i.ad, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %.06498 = phi i64 [ %i.cf, %bb.l ], [ 0, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.06498
  %i.ah = load ptr, ptr %i.ag, align 8            ; 8 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aj = load i32, ptr %i.ah, align 8
  switch i32 %i.aj, label %bb.i [
    i32 2, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.ak, align 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = lshr exact i64 %i.aq, 2
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = add i32 %i.au, -1
  %i.aw = add i32 %i.av, %i.as
  store i32 %i.aw, ptr %i.at, align 8
  %i.ax = load ptr, ptr %0, align 8               ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = or i32 %i.ay, 2
  store i32 %i.az, ptr %i.ax, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr exact i64 %i.bg, 2
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = add i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %0, align 8               ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = or i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.bs, align 8
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp ugt i64 %i.by, 12
  %i.ca = load ptr, ptr %0, align 8               ; 5 uses
  %i.cb = load i32, ptr %i.ca, align 8            ; 2 uses
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = or i32 %i.cb, 8
  store i32 %i.cc, ptr %i.ca, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cd = or i32 %i.cb, 4
  store i32 %i.cd, ptr %i.ca, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.j, %bb.k, %bb.h, %.lr.ph
  %i.ce = phi ptr [ %i.ax, %bb.g ], [ %i.ca, %bb.j ], [ %i.ca, %bb.k ], [ %i.bm, %bb.h ], [ %i.ae, %.lr.ph ] ; 3 uses
  %i.cf = add nuw i64 %.06498, 1                  ; 2 uses
  %i.cg = load ptr, ptr %i.k, align 8
  %i.ch = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3
  %i.cm = icmp ult i64 %i.cf, %i.cl
  br i1 %i.cm, label %.lr.ph, label %._crit_edge, !llvm.loop !41

bb.m:                                             ; preds = %._crit_edge
  %i.cn = zext i32 %.pre to i64                   ; 5 uses
  %i.co = shl nuw nsw i64 %i.cn, 4
  %i.cp = or disjoint i64 %i.co, 8
  %i.cq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #24
          to label %bb.n unwind label %bb.p       ; 2 uses

bb.n:                                             ; preds = %bb.m
  store i64 %i.cn, ptr %i.cq, align 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cn
  %i.ct = add nuw nsw i64 %i.cn, 1152921504606846975
  %i.cu = and i64 %i.ct, 1152921504606846975
  %xtraiter = and i64 %i.cn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.n, %.prol.preheader
  %i.cv = phi ptr [ %i.cx, %.prol.preheader ], [ %i.cr, %bb.n ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.n ]
  store i32 0, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr null, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !42

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.n
  %.unr = phi ptr [ %i.cr, %bb.n ], [ %i.cx, %.prol.preheader ]
  %i.cy = icmp samesign ult i64 %i.cu, 7
  br i1 %i.cy, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.cz = phi ptr [ %i.dp, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr null, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 0, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store ptr null, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  store i32 0, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store ptr null, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store i32 0, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  store ptr null, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  store i32 0, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  store ptr null, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 80
  store i32 0, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  store ptr null, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  store i32 0, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 104
  store ptr null, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 112
  store i32 0, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 120
  store ptr null, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 128 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cs
  br i1 %i.dq, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ce, i64 208
  store ptr %i.cr, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %i.dt = load i32, ptr %i.ds, align 4            ; 2 uses
  %.not79 = icmp eq i32 %i.dt, -1
  br i1 %.not79, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.unr-lcssa
  %i.du = load ptr, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 232
  store i32 %i.dt, ptr %i.dv, align 8
  br label %bb.q

bb.p:                                             ; preds = %.loopexit90, %bb.m
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.q:                                             ; preds = %bb.o, %.unr-lcssa
  %i.dx = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.dy = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not86110 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not86110, label %.loopexit90, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.q, %.loopexit
  %.059113 = phi i32 [ %.3, %.loopexit ], [ 0, %bb.q ] ; 6 uses
  %.060112 = phi i32 [ %.363, %.loopexit ], [ 0, %bb.q ] ; 5 uses
  %.sroa.083.0111 = phi ptr [ %i.gp, %.loopexit ], [ %i.dx, %bb.q ] ; 2 uses
  %i.dz = load ptr, ptr %.sroa.083.0111, align 8  ; 7 uses
  %i.ea = load i32, ptr %i.dz, align 8
  switch i32 %i.ea, label %bb.v [
    i32 2, label %.preheader
    i32 1, label %.preheader88
  ]

.preheader88:                                     ; preds = %.lr.ph115
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = load ptr, ptr %i.eb, align 8
  %.not118 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not118, label %.loopexit, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.preheader88
  %.pre124 = load ptr, ptr %0, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre124, i64 208
  br label %.lr.ph102

.preheader:                                       ; preds = %.lr.ph115
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = load ptr, ptr %i.eg, align 8
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %.not119 = icmp eq i64 %i.em, 4
  br i1 %.not119, label %.loopexit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %.preheader
  %.pre125 = load ptr, ptr %0, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.pre125, i64 208
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %bb.r
  %.058106 = phi i64 [ %i.ev, %bb.r ], [ 0, %.lr.ph107.preheader ]
  %.1105 = phi i32 [ %i.et, %bb.r ], [ %.059113, %.lr.ph107.preheader ] ; 2 uses
  %.161104 = phi i32 [ %i.es, %bb.r ], [ %.060112, %.lr.ph107.preheader ]
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = zext i32 %.1105 to i64
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.ep ; 2 uses
  store i32 2, ptr %i.eq, align 8
  %i.er = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #24
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph107
  %i.es = add i32 %.161104, 2                     ; 2 uses
  %i.et = add i32 %.1105, 1                       ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %i.er, ptr %i.eu, align 8
  %i.ev = add nuw i64 %.058106, 1                 ; 2 uses
  %i.ew = load ptr, ptr %i.eh, align 8
  %i.ex = load ptr, ptr %i.eg, align 8
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 2
  %i.fc = add nsw i64 %i.fb, -1
  %i.fd = icmp ult i64 %i.ev, %i.fc
  br i1 %i.fd, label %.lr.ph107, label %.loopexit, !llvm.loop !43

bb.s:                                             ; preds = %.lr.ph107
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %bb.t
  %.0101 = phi i64 [ %i.fm, %bb.t ], [ 0, %.lr.ph102.preheader ]
  %.2100 = phi i32 [ %i.fk, %bb.t ], [ %.059113, %.lr.ph102.preheader ] ; 2 uses
  %.26299 = phi i32 [ %i.fj, %bb.t ], [ %.060112, %.lr.ph102.preheader ]
  %i.ff = load ptr, ptr %i.ef, align 8
  %i.fg = zext i32 %.2100 to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fg ; 2 uses
  store i32 1, ptr %i.fh, align 8
  %i.fi = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #24
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph102
  %i.fj = add i32 %.26299, 1                      ; 2 uses
  %i.fk = add i32 %.2100, 1                       ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fi, ptr %i.fl, align 8
  %i.fm = add nuw i64 %.0101, 1                   ; 2 uses
  %i.fn = load ptr, ptr %i.ec, align 8
  %i.fo = load ptr, ptr %i.eb, align 8
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 2
  %i.ft = icmp ult i64 %i.fm, %i.fs
  br i1 %i.ft, label %.lr.ph102, label %.loopexit, !llvm.loop !44

bb.u:                                             ; preds = %.lr.ph102
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %.lr.ph115
  %i.fv = load ptr, ptr %0, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 208
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = add i32 %.059113, 1                     ; 2 uses
  %i.fz = zext i32 %.059113 to i64
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = load ptr, ptr %i.gb, align 8
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg                    ; 2 uses
  %i.gi = lshr exact i64 %i.gh, 2
  %i.gj = trunc i64 %i.gi to i32                  ; 3 uses
  store i32 %i.gj, ptr %i.ga, align 8
  %i.gk = add i32 %.060112, %i.gj                 ; 2 uses
  %.not80 = icmp eq i32 %i.gj, 0
  br i1 %.not80, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gl = and i64 %i.gh, 17179869180
  %i.gm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gl) #24
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.gm, ptr %i.gn, align 8
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit:                                        ; preds = %bb.t, %bb.r, %.preheader88, %.preheader, %bb.v, %bb.x
  %.363 = phi i32 [ %i.es, %bb.r ], [ %i.gk, %bb.v ], [ %i.gk, %bb.x ], [ %.060112, %.preheader ], [ %.060112, %.preheader88 ], [ %i.fj, %bb.t ] ; 2 uses
  %.3 = phi i32 [ %i.et, %bb.r ], [ %i.fy, %bb.v ], [ %i.fy, %bb.x ], [ %.059113, %.preheader ], [ %.059113, %.preheader88 ], [ %i.fk, %bb.t ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.083.0111, i64 8 ; 2 uses
  %.not86 = icmp eq ptr %i.gp, %i.dy
  br i1 %.not86, label %.loopexit90, label %.lr.ph115

.loopexit90:                                      ; preds = %.loopexit, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.q, %._crit_edge
  %.4 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.q ], [ 0, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.363, %.loopexit ]
  %i.gq = load ptr, ptr %0, align 8
  invoke void @_ZN6Assimp15ObjFileImporter17createVertexArrayEPKNS_7ObjFile5ModelEPKNS1_6ObjectEjP6aiMeshj(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %i.gq, i32 noundef %.4)
          to label %bb.aa unwind label %bb.p

bb.z:                                             ; preds = %bb.s, %bb.u, %bb.y, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.p ], [ %i.fe, %bb.s ], [ %i.fu, %bb.u ], [ %i.go, %bb.y ]
  tail call void @_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  resume { ptr, i32 } %.pn.pn

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %.loopexit90
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ObjFileImporter17createVertexArrayEPKNS_7ObjFile5ModelEPKNS1_6ObjectEjP6aiMeshj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.a
  %i.c = icmp eq ptr %4, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %.thread261, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %.thread261, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.j = zext i32 %3 to i64
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8              ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread261, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread261, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  store i32 %5, ptr %i.r, align 4
  %i.s = icmp eq i32 %5, 0
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.15)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.i:                                             ; preds = %bb.e
  %i.v = icmp slt i32 %5, 0
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @.str.16)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.m:                                             ; preds = %bb.i
  %i.y = zext nneg i32 %5 to i64
  %i.z = mul nuw nsw i64 %i.y, 12                 ; 2 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #24 ; 2 uses
  %i.ab = add nsw i64 %i.z, -12                   ; 2 uses
  %i.ac = urem i64 %i.ab, 12
  %i.ad = sub nuw nsw i64 %i.ab, %i.ac
  %i.ae = add nuw nsw i64 %i.ad, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aa, i8 0, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.aa, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.am = load i8, ptr %i.al, align 8, !range !7, !noundef !8
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = load i32, ptr %i.r, align 4             ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.ap, 12               ; 2 uses
  %i.ar = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #24 ; 2 uses
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %.loopexit197, label %.loopexit197.loopexit

.loopexit197.loopexit:                            ; preds = %bb.o
  %i.at = add nsw i64 %i.aq, -12                  ; 2 uses
  %i.au = urem i64 %i.at, 12
  %i.av = sub nuw nsw i64 %i.at, %i.au
  %i.aw = add nsw i64 %i.av, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ar, i8 0, i64 %i.aw, i1 false)
  br label %.loopexit197

.loopexit197:                                     ; preds = %.loopexit197.loopexit, %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ar, ptr %i.ax, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit197, %bb.n, %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load i32, ptr %i.r, align 4             ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 4                ; 2 uses
  %i.bg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bf) #24 ; 2 uses
  %i.bh = icmp eq i32 %i.bd, 0
  br i1 %i.bh, label %.loopexit196, label %.loopexit196.loopexit

end_hunk_0
begin_hunk_1_@_ZN6Assimp15ObjFileImporter17createVertexArrayEPKNS_7ObjFile5ModelEPKNS1_6ObjectEjP6aiMeshj:bb.a
  %i.eb = ashr exact i64 %i.ea, 2
  %i.ec = icmp ult i64 %.0137220, %i.eb
  br i1 %i.ec, label %_ZNSt6vectorIjSaIjEE2atEm.exit183, label %bb.ah

_ZNSt6vectorIjSaIjEE2atEm.exit183:                ; preds = %bb.af
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.0137220
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = ptrtoint ptr %i.du to i64
  %i.eh = ptrtoint ptr %i.dt to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = sdiv exact i64 %i.ei, 12
  %.not174 = icmp ugt i64 %i.ej, %i.ef
  br i1 %.not174, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit183
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.ef
  %i.el = load ptr, ptr %i.cj, align 8
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.em, ptr noundef nonnull align 4 dereferenceable(12) %i.ek, i64 12, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt6vectorIjSaIjEE2atEm.exit183, %bb.af, %bb.ae, %bb.ad
  %.3152 = phi i8 [ 1, %bb.ae ], [ 0, %bb.ad ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 0, %_ZNSt6vectorIjSaIjEE2atEm.exit183 ] ; 2 uses
  %i.en = load ptr, ptr %i.ba, align 8
  %i.eo = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = sdiv exact i64 %i.er, 12
  %i.et = icmp ugt i64 %i.es, %i.dc
  br i1 %i.et, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eu = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %i.dc ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load float, ptr %i.ev, align 4
  %i.ex = load ptr, ptr %i.ck, align 8
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.dq ; 3 uses
  %i.ez = load <2 x float>, ptr %i.eu, align 4
  store <2 x float> %i.ez, ptr %i.ey, align 4
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store float %i.ew, ptr %.sroa.5188.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store float 1.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fa = trunc nuw i8 %.1146217 to i1
  br i1 %i.fa, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fb = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.fc = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = load ptr, ptr %i.cx, align 8
  %i.ff = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = ashr exact i64 %i.fi, 2
  %i.fk = icmp ult i64 %.0137220, %i.fj
  br i1 %i.fk, label %_ZNSt6vectorIjSaIjEE2atEm.exit185, label %bb.an

_ZNSt6vectorIjSaIjEE2atEm.exit185:                ; preds = %bb.al
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.0137220
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %i.fo = ptrtoint ptr %i.fc to i64
  %i.fp = ptrtoint ptr %i.fb to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = sdiv exact i64 %i.fq, 12
  %.not175 = icmp ugt i64 %i.fr, %i.fn
  br i1 %.not175, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit185
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.fb, i64 %i.fn ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load float, ptr %i.ft, align 4
  %i.fv = load ptr, ptr %i.cl, align 8
  %i.fw = getelementptr inbounds nuw [12 x i8], ptr %i.fv, i64 %i.dq ; 2 uses
  %i.fx = load <2 x float>, ptr %i.fs, align 4
  store <2 x float> %i.fx, ptr %i.fw, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store float %i.fu, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNSt6vectorIjSaIjEE2atEm.exit185, %bb.al, %bb.ak, %bb.aj
  %.3148 = phi i8 [ 1, %bb.ak ], [ 0, %bb.aj ], [ 1, %bb.al ], [ 1, %bb.am ], [ 0, %_ZNSt6vectorIjSaIjEE2atEm.exit185 ] ; 2 uses
  %i.fy = load ptr, ptr %i.cm, align 8
  %i.fz = zext i32 %.1139219 to i64
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %i.fz ; 2 uses
  %i.gb = load ptr, ptr %i.cr, align 8
  %i.gc = load ptr, ptr %i.cq, align 8
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 2
  %i.gh = add nsw i64 %i.gg, -1
  %i.gi = icmp eq i64 %.0137220, %i.gh            ; 4 uses
  %i.gj = load i32, ptr %i.cp, align 8
  %i.gk = icmp eq i32 %i.gj, 2
  %or.cond5 = select i1 %i.gk, i1 %i.gi, i1 false
  br i1 %or.cond5, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.0136221
  store i32 %.1142218, ptr %i.gn, align 4
  %.pr = load i32, ptr %i.cp, align 8
  switch i32 %.pr, label %bb.ba [
    i32 1, label %bb.ap
    i32 2, label %.thread
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.go = add i32 %.1139219, 1
  br label %bb.bb

.thread:                                          ; preds = %bb.an, %bb.ao
  %not. = xor i1 %i.gi, true
  %i.gp = zext i1 %not. to i32
  %spec.select = add i32 %.1139219, %i.gp         ; 2 uses
  %.not176 = icmp eq i64 %.0137220, 0
  br i1 %.not176, label %bb.bb, label %bb.aq

bb.aq:                                            ; preds = %.thread
  br i1 %i.gi, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gq = load i32, ptr %i.r, align 4
  %i.gr = add nuw i32 %.1142218, 1                ; 4 uses
  %.not177 = icmp ugt i32 %i.gq, %i.gr
  br i1 %.not177, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gs = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull @.str.18)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @__cxa_throw(ptr nonnull %i.gs, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.av:                                            ; preds = %bb.ar
  %i.gu = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.gv = getelementptr inbounds nuw [12 x i8], ptr %i.gu, i64 %i.dq
  %i.gw = zext i32 %i.gr to i64                   ; 3 uses
  %i.gx = getelementptr inbounds nuw [12 x i8], ptr %i.gu, i64 %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gx, ptr noundef nonnull align 4 dereferenceable(12) %i.gv, i64 12, i1 false)
  %i.gy = load ptr, ptr %i.cu, align 8
  %i.gz = load ptr, ptr %i.cv, align 8
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hb = load ptr, ptr %i.ag, align 8
  %i.hc = load ptr, ptr %i.ai, align 8
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.he = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.hf = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.dq
  %i.hg = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hg, ptr noundef nonnull align 4 dereferenceable(12) %i.hf, i64 12, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %i.hh = load ptr, ptr %i.bj, align 8
  %i.hi = load ptr, ptr %i.bl, align 8
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ay, %bb.az
  %.0 = phi i64 [ %i.hu, %bb.az ], [ 0, %bb.ay ]  ; 3 uses
  %i.hk = load <8 x ptr>, ptr %i.cl, align 8
  %i.hl = icmp ne <8 x ptr> %i.hk, splat (ptr null)
  %i.hm = bitcast <8 x i1> %i.hl to i8
  %i.hn = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hm)
  %i.ho = zext nneg i8 %i.hn to i64
  %i.hp = icmp samesign ult i64 %.0, %i.ho
  br i1 %i.hp, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %.preheader
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.0
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  %i.hs = getelementptr inbounds nuw [12 x i8], ptr %i.hr, i64 %i.dq
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %i.hr, i64 %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ht, ptr noundef nonnull align 4 dereferenceable(12) %i.hs, i64 12, i1 false)
  %i.hu = add nuw nsw i64 %.0, 1
  br label %.preheader, !llvm.loop !46

.loopexit:                                        ; preds = %.preheader, %bb.ay, %bb.aq
  %.2143 = phi i32 [ %.1142218, %bb.aq ], [ %i.gr, %bb.ay ], [ %i.gr, %.preheader ] ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %i.ga, i64 -8
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i32 %.2143, ptr %i.hx, align 4
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ao
  %i.hy = add i64 %.0136221, 1
  %i.hz = zext i1 %i.gi to i32
  %spec.select181 = add i32 %.1139219, %i.hz
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.loopexit, %.thread, %bb.ap
  %.3144 = phi i32 [ %.1142218, %bb.ap ], [ %.2143, %.loopexit ], [ %.1142218, %.thread ], [ %.1142218, %bb.ba ]
  %.3 = phi i32 [ %i.go, %bb.ap ], [ %spec.select, %.loopexit ], [ %spec.select, %.thread ], [ %spec.select181, %bb.ba ] ; 2 uses
  %.2 = phi i64 [ 0, %bb.ap ], [ 0, %.loopexit ], [ 0, %.thread ], [ %i.hy, %bb.ba ]
  %i.ia = add i32 %.3144, 1                       ; 2 uses
  %i.ib = add nuw i64 %.0137220, 1                ; 2 uses
  %i.ic = load ptr, ptr %i.cr, align 8
  %i.id = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 2
  %i.ii = icmp ult i64 %i.ib, %i.ih
  br i1 %i.ii, label %_ZNSt6vectorIjSaIjEE2atEm.exit, label %._crit_edge, !llvm.loop !47

bb.bc:                                            ; preds = %._crit_edge232
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8            ; 2 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %.split, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZdaPv(ptr noundef nonnull %i.ik) #22
  br label %.split

.split:                                           ; preds = %bb.bd, %bb.bc
  store ptr null, ptr %i.ij, align 8
  br i1 %i.co, label %.thread261, label %bb.bf

bb.be:                                            ; preds = %._crit_edge232
  br i1 %i.co, label %.thread261, label %bb.bf

bb.bf:                                            ; preds = %.split, %bb.be
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8            ; 2 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZdaPv(ptr noundef nonnull %i.in) #22
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store ptr null, ptr %i.im, align 8
  br label %.thread261

.thread261:                                       ; preds = %bb.u, %.split, %bb.d, %bb.c, %bb.bh, %bb.be, %bb.b, %bb.a
  ret void

bb.bi:                                            ; preds = %bb.y, %bb.ac, %bb.au, %bb.l, %bb.h
  %.sink = phi ptr [ %i.dj, %bb.y ], [ %i.dm, %bb.ac ], [ %i.gs, %bb.au ], [ %i.w, %bb.l ], [ %i.t, %bb.h ]
  %.pn179 = phi { ptr, i32 } [ %i.dk, %bb.y ], [ %i.dn, %bb.ac ], [ %i.gt, %bb.au ], [ %i.x, %bb.l ], [ %i.u, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn179
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp15ObjFileImporter12countObjectsERKSt6vectorIPNS_7ObjFile6ObjectESaIS4_EERi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2) local_unnamed_addr #11 align 2 {
bb.a:
  store i32 0, ptr %2, align 4
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  store i32 %i.i, ptr %2, align 4
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.j, %i.k
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.sroa.011.015 = phi ptr [ %i.r, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.011.015, align 8    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN6Assimp15ObjFileImporter12countObjectsERKSt6vectorIPNS_7ObjFile6ObjectESaIS4_EERi(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.k
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ObjFileImporter29addTextureMappingModePropertyEP10aiMaterial13aiTextureTypeii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %3, ptr %i.a, align 4
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %2, i32 noundef %4, i32 noundef 4) ; 0 uses
  %i.d = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %2, i32 noundef %4, i32 noundef 4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare void @_ZN6Assimp12BaseImporter15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #21
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #21
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #21
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !57
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !57
  store i8 0, ptr %i.a, align 8, !alias.scope !57
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !57 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !57 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !57 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !57 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #21
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7ObjFile5ModelD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not47 = icmp eq ptr %i.b, %i.d
  br i1 %.not47, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not4449 = icmp eq ptr %i.f, %i.h
  br i1 %.not4449, label %._crit_edge53, label %.lr.ph52

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.041.048 = phi ptr [ %i.k, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.041.048, align 8    ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN6Assimp7ObjFile6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.i) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 144) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.041.048, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge53:                                    ; preds = %bb.e, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %.not4554 = icmp eq ptr %i.n, %i.o
  br i1 %.not4554, label %._crit_edge58, label %.lr.ph57

.lr.ph52:                                         ; preds = %._crit_edge, %bb.e
  %.sroa.037.050 = phi ptr [ %i.r, %bb.e ], [ %i.f, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.037.050, align 8    ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph52
  tail call void @_ZN6Assimp7ObjFile4MeshD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %i.p) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 112) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph52
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.037.050, i64 8 ; 2 uses
  %.not44 = icmp eq ptr %i.r, %i.h
  br i1 %.not44, label %._crit_edge53, label %.lr.ph52

._crit_edge58:                                    ; preds = %bb.h, %._crit_edge53
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.not4659 = icmp eq ptr %i.u, %i.v
  br i1 %.not4659, label %._crit_edge63, label %.lr.ph62

.lr.ph57:                                         ; preds = %._crit_edge53, %bb.h
  %.sroa.033.055 = phi ptr [ %i.af, %bb.h ], [ %i.n, %._crit_edge53 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.033.055, i64 64
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph57
  %i.z = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #22
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %.lr.ph57
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.033.055) #26 ; 2 uses
  %.not45 = icmp eq ptr %i.af, %i.o
  br i1 %.not45, label %._crit_edge58, label %.lr.ph57

._crit_edge63:                                    ; preds = %bb.s, %._crit_edge58
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef %i.ah)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %._crit_edge63
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #25
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %._crit_edge63
  %i.ak = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIPN6Assimp7ObjFile4MeshESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #22
  br label %_ZNSt6vectorIPN6Assimp7ObjFile4MeshESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp7ObjFile4MeshESaIS3_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN6Assimp7ObjFile4MeshESaIS3_EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.at = load ptr, ptr %i.as, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp7ObjFile5ModelD2Ev:bb.a
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23:  ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit21, %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cd, %i.cf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.cd, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23 ] ; 3 uses
  %i.cg = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cj = load i64, ptr %i.ch, align 8
  %i.ck = add i64 %i.cj, 1
  tail call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.cl, %i.cf
  br i1 %.not.i.i.i24, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.cc, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23
  %i.cm = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.cd, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.p
  %i.cs = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cx) #22
  br label %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.q
  %i.cy = load ptr, ptr %0, align 8               ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EED2Ev.exit
  %i.db = load i64, ptr %i.cz, align 8
  %i.dc = add i64 %i.db, 1
  tail call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  ret void

.lr.ph62:                                         ; preds = %._crit_edge58, %bb.s
  %.sroa.029.060 = phi ptr [ %i.dg, %bb.s ], [ %i.u, %._crit_edge58 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.029.060, i64 64
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph62
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 20776) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph62
  %i.dg = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.029.060) #26 ; 2 uses
  %.not46 = icmp eq ptr %i.dg, %i.v
  br i1 %.not46, label %._crit_edge63, label %.lr.ph62
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7ObjFile4MeshD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4 = icmp eq ptr %i.b, %i.d
  br i1 %.not4, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre6 = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre6, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #22
  br label %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  %i.k = load ptr, ptr %0, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EED2Ev.exit
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %i.p = phi ptr [ %i.an, %bb.g ], [ %i.d, %bb.a ]
  %.sroa.01.05 = phi ptr [ %i.ao, %bb.g ], [ %i.b, %bb.a ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.01.05, align 8      ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit2.i

_ZNSt6vectorIjSaIjEED2Ev.exit2.i:                 ; preds = %bb.e, %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i3.i, label %_ZN6Assimp7ObjFile4FaceD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit2.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #22
  br label %_ZN6Assimp7ObjFile4FaceD2Ev.exit

_ZN6Assimp7ObjFile4FaceD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit2.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 88) #22
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN6Assimp7ObjFile4FaceD2Ev.exit
  %i.an = phi ptr [ %i.p, %.lr.ph ], [ %.pre, %_ZN6Assimp7ObjFile4FaceD2Ev.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.01.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.an
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !58
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !59

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA21_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(21) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %2) #21
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(21) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA2_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #21
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #21
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA2_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #21
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #21
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %2) #21
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(2) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #21
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #21
  resume { ptr, i32 } %i.q
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #16

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
end_hunk_2
begin_hunk_3_@_ZN6aiMeshD2Ev:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.preheader47.4, label %bb.ac

bb.ac:                                            ; preds = %.preheader47.3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 1028) #22
  %.pre71 = load ptr, ptr %i.am, align 8
  br label %.preheader47.4

.preheader47.4:                                   ; preds = %bb.ac, %.preheader47.3
  %i.ba = phi ptr [ %.pre71, %bb.ac ], [ %i.aw, %.preheader47.3 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.preheader47.5, label %bb.ad

bb.ad:                                            ; preds = %.preheader47.4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 1028) #22
  %.pre72 = load ptr, ptr %i.am, align 8
  br label %.preheader47.5

.preheader47.5:                                   ; preds = %bb.ad, %.preheader47.4
  %i.be = phi ptr [ %.pre72, %bb.ad ], [ %i.ba, %.preheader47.4 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.preheader47.6, label %bb.ae

bb.ae:                                            ; preds = %.preheader47.5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 1028) #22
  %.pre73 = load ptr, ptr %i.am, align 8
  br label %.preheader47.6

.preheader47.6:                                   ; preds = %bb.ae, %.preheader47.5
  %i.bi = phi ptr [ %.pre73, %bb.ae ], [ %i.be, %.preheader47.5 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.preheader47.7, label %bb.af

bb.af:                                            ; preds = %.preheader47.6
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 1028) #22
  %.pre74 = load ptr, ptr %i.am, align 8
  br label %.preheader47.7

.preheader47.7:                                   ; preds = %bb.af, %.preheader47.6
  %i.bm = phi ptr [ %.pre74, %bb.af ], [ %i.bi, %.preheader47.6 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %.preheader47.7
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 1028) #22
  %.pre75 = load ptr, ptr %i.am, align 8          ; 2 uses
  %i.bq = icmp eq ptr %.pre75, null
  br i1 %i.bq, label %bb.ah, label %.thread

.thread:                                          ; preds = %.preheader47.7, %bb.ag
  %i.br = phi ptr [ %.pre75, %bb.ag ], [ %i.bm, %.preheader47.7 ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.br) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread, %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdaPv(ptr noundef nonnull %i.bt) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZdaPv(ptr noundef nonnull %i.bw) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZdaPv(ptr noundef nonnull %i.bz) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZdaPv(ptr noundef nonnull %i.cc) #22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZdaPv(ptr noundef nonnull %i.cf) #22
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZdaPv(ptr noundef nonnull %i.ci) #22
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @_ZdaPv(ptr noundef nonnull %i.cl) #22
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZdaPv(ptr noundef nonnull %i.co) #22
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %.not37 = icmp eq i32 %i.cr, 0
  br i1 %.not37, label %bb.bh, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not38 = icmp eq ptr %i.ct, null
  br i1 %.not38, label %bb.bh, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.cu, ptr %2, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 1, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.ba
  %.pre77 = load ptr, ptr %i.cw, align 8          ; 2 uses
  %.not4552 = icmp eq ptr %.pre77, null
  br i1 %.not4552, label %._crit_edge56, label %.lr.ph55

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ba
  %i.cz = phi i32 [ %i.cr, %.lr.ph.preheader ], [ %i.de, %bb.ba ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ba ] ; 2 uses
  %i.da = load ptr, ptr %i.cs, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8
  %.not41 = icmp eq ptr %i.dc, null
  br i1 %.not41, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %2, ptr %1, align 8
  %i.dd = invoke { ptr, i8 } @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE6insertERKS2_.exit unwind label %bb.bq ; 0 uses

_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE6insertERKS2_.exit: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.pre76 = load i32, ptr %i.cq, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE6insertERKS2_.exit, %.lr.ph
  %i.de = phi i32 [ %.pre76, %_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE6insertERKS2_.exit ], [ %i.cz, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = icmp samesign ult i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge56:                                    ; preds = %bb.bd, %._crit_edge
  %i.dh = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.bf, label %bb.be

.lr.ph55:                                         ; preds = %._crit_edge, %bb.bd
  %.sroa.042.053 = phi ptr [ %i.dp, %bb.bd ], [ %.pre77, %._crit_edge ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.042.053, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8            ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph55
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1048
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZN6aiBoneD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZdaPv(ptr noundef nonnull %i.dn) #22
  br label %_ZN6aiBoneD2Ev.exit

_ZN6aiBoneD2Ev.exit:                              ; preds = %bb.bb, %bb.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef 1120) #22
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN6aiBoneD2Ev.exit, %.lr.ph55
  %i.dp = load ptr, ptr %.sroa.042.053, align 8   ; 2 uses
  %.not45 = icmp eq ptr %i.dp, null
  br i1 %.not45, label %._crit_edge56, label %.lr.ph55

bb.be:                                            ; preds = %._crit_edge56
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #22
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge56
  %i.dq = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bf, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i ], [ %i.dq, %bb.bf ] ; 2 uses
  %i.dr = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #22
  %.not.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !62

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.bf
  %i.ds = load ptr, ptr %2, align 8
  %i.dt = load i64, ptr %i.cv, align 8
  %i.du = shl i64 %i.dt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ds, i8 0, i64 %i.du, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  %i.dv = load ptr, ptr %2, align 8               ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.cu
  br i1 %i.dw, label %_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.dx = load i64, ptr %i.cv, align 8
  %i.dy = shl i64 %i.dx, 3
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #22
  br label %_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit

_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit, %bb.ay, %bb.ax
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8            ; 2 uses
  %.not39 = icmp eq i32 %i.ea, 0
  br i1 %.not39, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %.not40 = icmp eq ptr %i.ec, null
  br i1 %.not40, label %bb.bm, label %.lr.ph58

._crit_edge59:                                    ; preds = %bb.bk
  %.pre79 = load ptr, ptr %i.eb, align 8          ; 2 uses
  %i.ed = icmp eq ptr %.pre79, null
  br i1 %i.ed, label %bb.bm, label %bb.bl

.lr.ph58:                                         ; preds = %bb.bi, %bb.bk
  %i.ee = phi i32 [ %i.ej, %bb.bk ], [ %i.ea, %bb.bi ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.bk ], [ 0, %bb.bi ] ; 2 uses
  %i.ef = load ptr, ptr %i.eb, align 8
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv66
  %i.eh = load ptr, ptr %i.eg, align 8            ; 3 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph58
  call void @_ZN10aiAnimMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1200) dereferenceable(1200) %i.eh) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 1200) #22
  %.pre78 = load i32, ptr %i.dz, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph58, %bb.bj
  %i.ej = phi i32 [ %i.ee, %.lr.ph58 ], [ %.pre78, %bb.bj ] ; 2 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = icmp samesign ult i64 %indvars.iv.next67, %i.ek
  br i1 %i.el, label %.lr.ph58, label %._crit_edge59, !llvm.loop !63

bb.bl:                                            ; preds = %._crit_edge59
  call void @_ZdaPv(ptr noundef nonnull %.pre79) #22
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge59, %bb.bl, %bb.bi, %bb.bh
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.en = load ptr, ptr %i.em, align 8            ; 4 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 -8 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %.idx = shl i64 %i.eq, 4                        ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bn
  %i.es = getelementptr inbounds i8, ptr %i.en, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN6aiFaceD2Ev.exit
  %i.et = phi ptr [ %i.eu, %_ZN6aiFaceD2Ev.exit ], [ %i.es, %.preheader.preheader ] ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -16 ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN6aiFaceD2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %.preheader
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #22
  br label %_ZN6aiFaceD2Ev.exit

_ZN6aiFaceD2Ev.exit:                              ; preds = %.preheader, %bb.bo
  %i.ey = icmp eq ptr %i.eu, %i.en
  br i1 %i.ey, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN6aiFaceD2Ev.exit, %bb.bn
  %i.ez = or disjoint i64 %.idx, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.ep, i64 noundef %i.ez) #22
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit, %bb.bm
  ret void

bb.bq:                                            ; preds = %bb.az
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10aiAnimMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1200) dereferenceable(1200) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.z) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #22
  br label %.preheader

.preheader:                                       ; preds = %bb.x, %bb.w
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.al) #22
  br label %bb.z

bb.z:                                             ; preds = %.preheader, %bb.y
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZdaPv(ptr noundef nonnull %i.ar) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZdaPv(ptr noundef nonnull %i.au) #22
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZdaPv(ptr noundef nonnull %i.ax) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdaPv(ptr noundef nonnull %i.ba) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZdaPv(ptr noundef nonnull %i.bd) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZdaPv(ptr noundef nonnull %i.bg) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !64

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = urem i64 %i.p, %i.r
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.t = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.c, %i.v
  br i1 %i.w, label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.x = icmp eq ptr %i.c, %i.aa
  br i1 %i.x, label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !65

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.f ]
  %i.y = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !65

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !65

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.af = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %1, align 8
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = invoke ptr @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 16) #22
  resume { ptr, i32 } %i.aj

_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ai, %.critedge ], [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #21 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ] ; 3 uses
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr %3, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.0
  %i.z = load ptr, ptr %i.y, align 8
  store ptr %3, ptr %i.z, align 8
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  store ptr %i.ab, ptr %3, align 8
  store ptr %3, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %3, align 8               ; 2 uses
  %.not11.i = icmp eq ptr %i.ac, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.d, align 8
  %i.ag = load ptr, ptr %i.ae, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = urem i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  store ptr %3, ptr %i.aj, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0
  store ptr %i.aa, ptr %i.al, align 8
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.am = load i64, ptr %i.f, align 8
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.f, align 8
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !67

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.02530, align 8
  store ptr %.02530, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.02530, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.02530, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.02530, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #22
  br label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = distinct !{null}
!2 = distinct !{!2, !6}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !6}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{!12, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!13 = distinct !{!13, !12, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!14 = distinct !{!14, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!15 = distinct !{!15, !14, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!16 = !{!13}
!17 = !{!15}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!22 = distinct !{!22, !21, !"_ZSt19__relocate_object_aISt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!23 = distinct !{!23, !21, !"_ZSt19__relocate_object_aISt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!24 = distinct !{!24, i1 false, !"LVerDomain"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !6, !35, !36}
!28 = distinct !{!28, !6, !35}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = !{!22}
!32 = !{!23}
!33 = !{!23, !25}
!34 = !{!22, !26}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6, !40}
!40 = !{!"llvm.loop.unswitch.partial.disable"}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !45}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!49 = distinct !{!49, !48, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!50 = distinct !{!50, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!51 = distinct !{!51, !50, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!52 = distinct !{!52, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!53 = distinct !{!53, !52, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!54 = !{!49}
!55 = !{!51}
!56 = !{!53}
!57 = !{!53, !51, !49}
!58 = distinct !{!58, !6}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, !6}
!63 = distinct !{!63, !6}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !6}
!66 = distinct !{!66, !6}
!67 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_3
