Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4toml2v35arrayC2EPKNS0_4impl15array_init_elemES5_:bb.a
  %i.bd = load ptr, ptr %.035, align 8            ; 2 uses
  %.not30 = icmp eq ptr %i.bd, null
  %i.be = ptrtoint ptr %i.bd to i64
  br i1 %.not30, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !173 ; 4 uses
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !194
  %.not.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !175
  store ptr null, ptr %.035, align 8, !tbaa !175
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !173
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.035)
          to label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, %bb.c
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #50
  tail call void @_ZN4toml2v34nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #50
  resume { ptr, i32 } %lpad.loopexit.split-lp61

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.g, %bb.h, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %.not26 = icmp eq ptr %i.bi, %2
  br i1 %.not26, label %.loopexit, label %bb.e, !llvm.loop !472

.loopexit:                                        ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %.loopexit60, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35arrayC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.107, align 2            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !173  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !174  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.not58 = icmp eq ptr %i.e, %i.f
  br i1 %.not58, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #55
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc12:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !174  ; 8 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !173  ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc12
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = ptrtoaddr ptr %i.n to i64
  %i.r = add i64 %i.p, -8
  %i.s = sub i64 %i.r, %i.q                       ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader93, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %i.x = getelementptr i8, ptr %i.n, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.y ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.n, i64 %i.y ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.z = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep65, align 8, !tbaa !175, !alias.scope !492
  %wide.load66 = load <2 x i64>, ptr %i.z, align 8, !tbaa !175, !alias.scope !492
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !175, !alias.scope !491
  store <2 x i64> %wide.load66, ptr %i.aa, align 8, !tbaa !175, !alias.scope !491
  %i.ab = getelementptr i8, ptr %next.gep65, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep65, align 8, !tbaa !175, !alias.scope !492
  store <2 x ptr> splat (ptr null), ptr %i.ab, align 8, !tbaa !175, !alias.scope !492
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !478

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader93

.lr.ph.i.i.i.i.preheader93:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader93, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader93 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader93 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.ad = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !175, !alias.scope !492
  store i64 %i.ad, ptr %.012.i.i.i.i, align 8, !tbaa !175, !alias.scope !491
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !175, !alias.scope !492
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.o
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !479

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc12
  %.not.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !194
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.n to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.aj) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.m, ptr %i.b, align 8, !tbaa !174
  store ptr %i.m, ptr %i.l, align 8, !tbaa !173
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !194
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !160
  %.pre47 = load ptr, ptr %i.d, align 8, !tbaa !160
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, %bb.c
  %i.al = phi ptr [ %.pre47, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.am = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ], [ %i.f, %bb.c ] ; 2 uses
  %.not41 = icmp eq ptr %i.am, %i.al
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %.sroa.031.042 = phi ptr [ %i.am, %.lr.ph ], [ %i.cd, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.031.042, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50, !noalias !493
  store i16 -1, ptr %2, align 2, !tbaa !197, !noalias !493
  %i.ap = invoke noundef ptr @_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRKS1_EEPDaOT_NS0_11value_flagsEEUlS9_E_S6_EEDcS9_OT0_(ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.ao)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !482 ; 5 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50, !noalias !493
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !173 ; 6 uses
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !194
  %.not.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = ptrtoint ptr %i.ap to i64
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !175
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.an, align 8, !tbaa !173
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !174 ; 10 uses
  %i.av = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc26 unwind label %.loopexit.split-lp35.loopexit.split-lp

.noexc26:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #55
          to label %.noexc27 unwind label %.loopexit.split-lp35.loopexit.split-lp ; 10 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  %i.bh = ptrtoint ptr %i.ap to i64
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !175
  %.not10.i.i.i.i19 = icmp eq ptr %i.au, %i.aq
  br i1 %.not10.i.i.i.i19, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i20.preheader

.lr.ph.i.i.i.i20.preheader:                       ; preds = %.noexc27
  %i.bi = add i64 %i.av, -8
  %i.bj = sub i64 %i.bi, %i.aw                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.bj, 56
  br i1 %min.iters.check72, label %.lr.ph.i.i.i.i20.preheader86, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i20.preheader
  %i.bm = and i64 %i.bj, -8
  %3 = add i64 %i.bm, 8                           ; 2 uses
  %scevgep69 = getelementptr i8, ptr %i.bf, i64 %3
  %scevgep70 = getelementptr i8, ptr %i.au, i64 %3
  %bound0 = icmp ult ptr %i.bf, %scevgep70
  %bound1 = icmp ult ptr %i.au, %scevgep69
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i20.preheader86, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck
  %n.vec74 = and i64 %i.bl, 4611686018427387900   ; 3 uses
  %i.bn = shl i64 %n.vec74, 3                     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bf, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %i.au, i64 %i.bn
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next81, %vector.body75 ] ; 2 uses
  %i.bq = shl i64 %index76, 3                     ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.bf, i64 %i.bq ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.au, i64 %i.bq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.br = getelementptr i8, ptr %next.gep78, i64 16
  %wide.load79 = load <2 x i64>, ptr %next.gep78, align 8, !tbaa !175, !alias.scope !496
  %wide.load80 = load <2 x i64>, ptr %i.br, align 8, !tbaa !175, !alias.scope !496
  %i.bs = getelementptr i8, ptr %next.gep77, i64 16
  store <2 x i64> %wide.load79, ptr %next.gep77, align 8, !tbaa !175, !alias.scope !497, !noalias !498
  store <2 x i64> %wide.load80, ptr %i.bs, align 8, !tbaa !175, !alias.scope !497, !noalias !498
  %i.bt = getelementptr i8, ptr %next.gep78, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep78, align 8, !tbaa !175, !alias.scope !496
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !175, !alias.scope !496
  %index.next81 = add nuw i64 %index76, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.bu, label %middle.block82, label %vector.body75, !llvm.loop !489

middle.block82:                                   ; preds = %vector.body75
  %cmp.n83 = icmp eq i64 %i.bl, %n.vec74
  br i1 %cmp.n83, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i20.preheader86

.lr.ph.i.i.i.i20.preheader86:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i20.preheader, %middle.block82
  %.012.i.i.i.i21.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.i.i20.preheader ], [ %i.bo, %middle.block82 ]
  %.0911.i.i.i.i22.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.i.i20.preheader ], [ %i.bp, %middle.block82 ]
  br label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %.lr.ph.i.i.i.i20.preheader86, %.lr.ph.i.i.i.i20
  %.012.i.i.i.i21 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i20 ], [ %.012.i.i.i.i21.ph, %.lr.ph.i.i.i.i20.preheader86 ] ; 2 uses
  %.0911.i.i.i.i22 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i20 ], [ %.0911.i.i.i.i22.ph, %.lr.ph.i.i.i.i20.preheader86 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.bv = load i64, ptr %.0911.i.i.i.i22, align 8, !tbaa !175, !alias.scope !495
  store i64 %i.bv, ptr %.012.i.i.i.i21, align 8, !tbaa !175, !alias.scope !494
  store ptr null, ptr %.0911.i.i.i.i22, align 8, !tbaa !175, !alias.scope !495
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i22, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21, i64 8 ; 2 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bw, %i.aq
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i20, !llvm.loop !490

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i20, %middle.block82, %.noexc27
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bf, %.noexc27 ], [ %i.bo, %middle.block82 ], [ %i.bx, %.lr.ph.i.i.i.i20 ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.au, null
  br i1 %.not.i23.i, label %.noexc14, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !194
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.cb) #51
  br label %.noexc14

.noexc14:                                         ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !174
  store ptr %i.by, ptr %i.an, align 8, !tbaa !173
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.cc, ptr %i.k, align 8, !tbaa !194
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.g, %.noexc14
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cd, %i.al
  br i1 %.not, label %._crit_edge, label %bb.e

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.b, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18

.loopexit.split-lp35.loopexit.split-lp:           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i16 = icmp eq ptr %i.ap, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17: ; preds = %.loopexit.split-lp35.loopexit.split-lp
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !75
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #50, !inline_history !19
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp35.loopexit.split-lp, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp35.loopexit.split-lp ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #50
  call void @_ZN4toml2v34nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #50
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4toml2v35arrayC2EOS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v34nodeE, i64 16), ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !157, !noalias !505
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !157, !alias.scope !505
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !160
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !194
  store ptr %i.k, ptr %i.i, align 8, !tbaa !194
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN4toml2v35arrayaSERKS1_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.107, align 2            ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151  ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !151
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4toml2v34nodeaSERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !153
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !154
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50, !inline_history !20
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50, !inline_history !20
  br label %_ZN4toml2v34nodeaSERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !155
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZN4toml2v34nodeaSERKS1_.exit, !prof !156

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50
  br label %_ZN4toml2v34nodeaSERKS1_.exit

_ZN4toml2v34nodeaSERKS1_.exit:                    ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !174  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173  ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4toml2v34nodeaSERKS1_.exit, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.t, %_ZN4toml2v34nodeaSERKS1_.exit ] ; 2 uses
  %i.w = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !175 ; 3 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i10, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #50, !inline_history !21
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.t, ptr %i.u, align 8, !tbaa !173
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit: ; preds = %_ZN4toml2v34nodeaSERKS1_.exit, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !173 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !174 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ugt i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !194
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !174
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.ah
  br i1 %i.ap, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.aq = ptrtoint ptr %i.t to i64
  %i.ar = sub i64 %i.aq, %i.an
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #55 ; 6 uses
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !174 ; 8 uses
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !173 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11.preheader

.lr.ph.i.i.i.i11.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = ptrtoaddr ptr %i.at to i64
  %i.ax = add i64 %i.av, -8
  %i.ay = sub i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i11.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i11.preheader
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.as, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.at, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.be ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.at, i64 %i.be ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.bf = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep66, align 8, !tbaa !175, !alias.scope !523
  %wide.load67 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !175, !alias.scope !523
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !175, !alias.scope !522
  store <2 x i64> %wide.load67, ptr %i.bg, align 8, !tbaa !175, !alias.scope !522
  %i.bh = getelementptr i8, ptr %next.gep66, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep66, align 8, !tbaa !175, !alias.scope !523
  store <2 x ptr> splat (ptr null), ptr %i.bh, align 8, !tbaa !175, !alias.scope !523
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !509

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11.preheader92

.lr.ph.i.i.i.i11.preheader92:                     ; preds = %.lr.ph.i.i.i.i11.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i11.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i11.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %.lr.ph.i.i.i.i11.preheader92, %.lr.ph.i.i.i.i11
  %.012.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i11 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i11.preheader92 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i11 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i11.preheader92 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.bj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !175, !alias.scope !523
  store i64 %i.bj, ptr %.012.i.i.i.i, align 8, !tbaa !175, !alias.scope !522
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !175, !alias.scope !523
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i12 = icmp eq ptr %i.bk, %i.au
  br i1 %.not.i.i.i.i12, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11, !llvm.loop !510

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i11, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.at, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.bm = load ptr, ptr %i.aj, align 8, !tbaa !194
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.at to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bp) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.as, ptr %i.s, align 8, !tbaa !174
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store ptr %i.bq, ptr %i.u, align 8, !tbaa !173
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ah
  store ptr %i.br, ptr %i.aj, align 8, !tbaa !194
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !160
  %.pre42 = load ptr, ptr %i.ac, align 8, !tbaa !160
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.j, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bs = phi ptr [ %i.ad, %bb.j ], [ %.pre42, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %i.bt = phi ptr [ %i.ae, %bb.j ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %.not3337 = icmp eq ptr %i.bt, %i.bs
  br i1 %.not3337, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %.sroa.030.038 = phi ptr [ %i.dj, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.bt, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ] ; 2 uses
  %i.bu = load ptr, ptr %.sroa.030.038, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50, !noalias !524
  store i16 -1, ptr %2, align 2, !tbaa !197, !noalias !524
  %i.bv = call noundef ptr @_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRKS1_EEPDaOT_NS0_11value_flagsEEUlS9_E_S6_EEDcS9_OT0_(ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.bu), !noalias !524, !inline_history !513 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50, !noalias !524
  %i.bw = load ptr, ptr %i.u, align 8, !tbaa !173 ; 6 uses
  %i.bx = load ptr, ptr %i.aj, align 8, !tbaa !194
  %.not.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.by = ptrtoint ptr %i.bv to i64
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !175
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bz, ptr %i.u, align 8, !tbaa !173
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.m:                                             ; preds = %.lr.ph
  %i.ca = load ptr, ptr %i.s, align 8, !tbaa !174 ; 10 uses
  %i.cb = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.cf = ashr exact i64 %i.cd, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i17 = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i17)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #55
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  %i.cn = ptrtoint ptr %i.bv to i64
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !175
  %.not10.i.i.i.i18 = icmp eq ptr %i.ca, %i.bw
  br i1 %.not10.i.i.i.i18, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader

.lr.ph.i.i.i.i19.preheader:                       ; preds = %.noexc26
  %i.co = add i64 %i.cb, -8
  %i.cp = sub i64 %i.co, %i.cc                    ; 3 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.cp, 56
  br i1 %min.iters.check73, label %.lr.ph.i.i.i.i19.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i19.preheader
  %i.cs = and i64 %i.cp, -8
  %3 = add i64 %i.cs, 8                           ; 2 uses
  %scevgep70 = getelementptr i8, ptr %i.cl, i64 %3
  %scevgep71 = getelementptr i8, ptr %i.ca, i64 %3
  %bound0 = icmp ult ptr %i.cl, %scevgep71
  %bound1 = icmp ult ptr %i.ca, %scevgep70
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i19.preheader87, label %vector.ph74

vector.ph74:                                      ; preds = %vector.memcheck
  %n.vec75 = and i64 %i.cr, 4611686018427387900   ; 3 uses
  %i.ct = shl i64 %n.vec75, 3                     ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cl, i64 %i.ct  ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ca, i64 %i.ct
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %i.cw = shl i64 %index77, 3                     ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.cl, i64 %i.cw ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.ca, i64 %i.cw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.cx = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80 = load <2 x i64>, ptr %next.gep79, align 8, !tbaa !175, !alias.scope !527
  %wide.load81 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !175, !alias.scope !527
  %i.cy = getelementptr i8, ptr %next.gep78, i64 16
  store <2 x i64> %wide.load80, ptr %next.gep78, align 8, !tbaa !175, !alias.scope !528, !noalias !529
  store <2 x i64> %wide.load81, ptr %i.cy, align 8, !tbaa !175, !alias.scope !528, !noalias !529
  %i.cz = getelementptr i8, ptr %next.gep79, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep79, align 8, !tbaa !175, !alias.scope !527
  store <2 x ptr> splat (ptr null), ptr %i.cz, align 8, !tbaa !175, !alias.scope !527
  %index.next82 = add nuw i64 %index77, 4         ; 2 uses
  %i.da = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.da, label %middle.block83, label %vector.body76, !llvm.loop !520

middle.block83:                                   ; preds = %vector.body76
  %cmp.n84 = icmp eq i64 %i.cr, %n.vec75
  br i1 %cmp.n84, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader87

.lr.ph.i.i.i.i19.preheader87:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i19.preheader, %middle.block83
  %.012.i.i.i.i20.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i19.preheader ], [ %i.cu, %middle.block83 ]
  %.0911.i.i.i.i21.ph = phi ptr [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph.i.i.i.i19.preheader ], [ %i.cv, %middle.block83 ]
  br label %.lr.ph.i.i.i.i19

.lr.ph.i.i.i.i19:                                 ; preds = %.lr.ph.i.i.i.i19.preheader87, %.lr.ph.i.i.i.i19
  %.012.i.i.i.i20 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i19 ], [ %.012.i.i.i.i20.ph, %.lr.ph.i.i.i.i19.preheader87 ] ; 2 uses
  %.0911.i.i.i.i21 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i19 ], [ %.0911.i.i.i.i21.ph, %.lr.ph.i.i.i.i19.preheader87 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.db = load i64, ptr %.0911.i.i.i.i21, align 8, !tbaa !175, !alias.scope !526
  store i64 %i.db, ptr %.012.i.i.i.i20, align 8, !tbaa !175, !alias.scope !525
  store ptr null, ptr %.0911.i.i.i.i21, align 8, !tbaa !175, !alias.scope !526
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i21, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.dc, %i.bw
  br i1 %.not.i.i.i.i22, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19, !llvm.loop !521

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i19, %middle.block83, %.noexc26
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cl, %.noexc26 ], [ %i.cu, %middle.block83 ], [ %i.dd, %.lr.ph.i.i.i.i19 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ca, null
  br i1 %.not.i23.i, label %.noexc, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.df = load ptr, ptr %i.aj, align 8, !tbaa !194
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.dh) #51
  br label %.noexc

.noexc:                                           ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.cl, ptr %i.s, align 8, !tbaa !174
  store ptr %i.de, ptr %i.u, align 8, !tbaa !173
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.di, ptr %i.aj, align 8, !tbaa !194
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.l, %.noexc
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.030.038, i64 8 ; 2 uses
  %.not33 = icmp eq ptr %i.dj, %i.bs
  br i1 %.not33, label %.loopexit, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.n
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  %.not.i14 = icmp eq ptr %i.bv, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit16, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i15

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i15: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.dk = load ptr, ptr %i.bv, align 8, !tbaa !75
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(40) %i.bv) #50, !inline_history !19
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit16

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit16: ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i15
  resume { ptr, i32 } %lpad.loopexit.split-lp88

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN4toml2v35arrayaSEOS1_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(64) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.010.i = alloca { %"struct.toml::v3::source_position", %"struct.toml::v3::source_position" }, align 8 ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, label %_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit.i

_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.i)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.i, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !157, !noalias !535
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.i, i64 16, i1 false)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !151  ; 8 uses
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !157
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4toml2v34nodeaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !154
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !22
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !22
  br label %_ZN4toml2v34nodeaSEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !155
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZN4toml2v34nodeaSEOS1_.exit, !prof !156

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50
  br label %_ZN4toml2v34nodeaSEOS1_.exit

_ZN4toml2v34nodeaSEOS1_.exit:                     ; preds = %_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit.i, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010.i)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !174  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !173 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !194
  %i.ad = load <2 x ptr>, ptr %i.w, align 8, !tbaa !160
  store <2 x ptr> %i.ad, ptr %i.x, align 8, !tbaa !160
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !194
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !194
  %.not4.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4toml2v34nodeaSEOS1_.exit, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.y, %_ZN4toml2v34nodeaSEOS1_.exit ] ; 2 uses
  %i.ag = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !175 ; 3 uses
  %.not.i.i.i.i.i.i.i5 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i5, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #50, !inline_history !534
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

end_hunk_0
begin_hunk_1_@_ZN4toml2v34impl7impl_ex6parser11parse_arrayEv:bb.a
  store ptr @.str.72, ptr %i.ag, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %7) #54
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.thread.i
  unreachable

bb.ab:                                            ; preds = %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.thread.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %.loopexit.split-lp.i

bb.ac:                                            ; preds = %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.i
  %i.ai = and i32 %i.v, -2048
  %i.aj = icmp eq i32 %i.ai, 55296
  br i1 %i.aj, label %bb.ad, label %.invoke.i, !prof !156

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store i64 75, ptr %8, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.73, ptr %i.ak, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %8) #54
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %.loopexit.split-lp.i

.invoke.i:                                        ; preds = %bb.ac, %bb.s
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !31

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af, %bb.ab
  %.pn.i = phi { ptr, i32 } [ %i.ah, %bb.ab ], [ %i.al, %bb.af ], [ %lpad.loopexit.split-lp266, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

_ZN4toml2v34impl7impl_ex6parser15consume_commentEv.exit: ; preds = %.preheader.i, %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %_ZN4toml2v34impl7impl_ex6parser15consume_commentEv.exit, %bb.r, %bb.i
  br label %.critedge, !llvm.loop !612

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge, %bb.n, %bb.r, %bb.aj, %.invoke178, %bb.q, %bb.ar
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #50
  store i64 23, ptr %15, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.13, ptr %i.am, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %15) #54
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.thread
  unreachable

bb.ah:                                            ; preds = %.thread
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.ai:                                            ; preds = %bb.m
  br i1 %i.k, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !240
  %.not16 = icmp eq ptr %i.ao, null
  br i1 %.not16, label %bb.al, label %.backedge.backedge, !prof !156

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #50
  store i64 23, ptr %16, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @.str.13, ptr %i.ap, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %16) #54
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #50
  store i64 40, ptr %17, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @.str.14, ptr %i.ar, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %17) #54
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.ar:                                            ; preds = %bb.m
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.m
  br i1 %i.k, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #50
  store i64 36, ptr %18, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str.15, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #50
  %i.au = icmp ult i32 %i.n, 32
  br i1 %i.au, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.av = zext nneg i32 %i.n to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.av ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.aw, align 16, !tbaa !124
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !125
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.av:                                            ; preds = %bb.at
  %i.ax = icmp eq i32 %i.n, 127
  br i1 %i.ax, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !247
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.au, %bb.av, %bb.aw
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.au ], [ %i.ay, %bb.aw ], [ @.str.29, %bb.av ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.au ], [ %i.ba, %bb.aw ], [ 6, %bb.av ]
  store i64 %.sroa.0.0.i, ptr %19, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.sroa.4.0.i, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #50
  store i64 1, ptr %20, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str.16, ptr %i.bc, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20) #54
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.az:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #50
  invoke void @_ZN4toml2v34impl7impl_ex6parser11parse_valueEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %21, ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !194 ; 3 uses
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !174 ; 2 uses
  %.not14 = icmp eq ptr %i.be, %i.bf
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !173 ; 2 uses
  br i1 %.not14, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i, label %bb.bd

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i: ; preds = %bb.ba
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %.pre to i64
  %i.bi = sub i64 %i.bh, %i.bg
  %i.bj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #55
          to label %.noexc27 unwind label %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc27:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !174 ; 11 uses
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !173 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc27
  %22 = ptrtoaddr ptr %i.bl to i64
  %23 = ptrtoaddr ptr %i.bk to i64
  %i.bm = add i64 %22, -8
  %i.bn = sub i64 %i.bm, %23                      ; 3 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check245 = icmp ult i64 %i.bn, 56
  br i1 %min.iters.check245, label %.lr.ph.i.i.i.i.i.preheader261, label %vector.memcheck236

vector.memcheck236:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bq = and i64 %i.bn, -8
  %24 = add i64 %i.bq, 8                          ; 2 uses
  %scevgep239 = getelementptr i8, ptr %i.bj, i64 %24
  %scevgep240 = getelementptr i8, ptr %i.bk, i64 %24
  %bound0241 = icmp ult ptr %i.bj, %scevgep240
  %bound1242 = icmp ult ptr %i.bk, %scevgep239
  %found.conflict243 = and i1 %bound0241, %bound1242
  br i1 %found.conflict243, label %.lr.ph.i.i.i.i.i.preheader261, label %vector.ph246

vector.ph246:                                     ; preds = %vector.memcheck236
  %n.vec247 = and i64 %i.bp, 4611686018427387900  ; 3 uses
  %i.br = shl i64 %n.vec247, 3                    ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bj, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bk, i64 %i.br
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph246
  %index249 = phi i64 [ 0, %vector.ph246 ], [ %index.next254, %vector.body248 ] ; 2 uses
  %i.bu = shl i64 %index249, 3                    ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.bj, i64 %i.bu ; 2 uses
  %next.gep251 = getelementptr i8, ptr %i.bk, i64 %i.bu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.bv = getelementptr i8, ptr %next.gep251, i64 16
  %wide.load252 = load <2 x i64>, ptr %next.gep251, align 8, !tbaa !175, !alias.scope !632
  %wide.load253 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !175, !alias.scope !632
  %i.bw = getelementptr i8, ptr %next.gep250, i64 16
  store <2 x i64> %wide.load252, ptr %next.gep250, align 8, !tbaa !175, !alias.scope !633, !noalias !634
  store <2 x i64> %wide.load253, ptr %i.bw, align 8, !tbaa !175, !alias.scope !633, !noalias !634
  %i.bx = getelementptr i8, ptr %next.gep251, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep251, align 8, !tbaa !175, !alias.scope !632
  store <2 x ptr> splat (ptr null), ptr %i.bx, align 8, !tbaa !175, !alias.scope !632
  %index.next254 = add nuw i64 %index249, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next254, %n.vec247
  br i1 %i.by, label %middle.block255, label %vector.body248, !llvm.loop !619

middle.block255:                                  ; preds = %vector.body248
  %cmp.n256 = icmp eq i64 %i.bp, %n.vec247
  br i1 %cmp.n256, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader261

.lr.ph.i.i.i.i.i.preheader261:                    ; preds = %vector.memcheck236, %.lr.ph.i.i.i.i.i.preheader, %middle.block255
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bj, %vector.memcheck236 ], [ %i.bj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block255 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck236 ], [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bt, %middle.block255 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader261, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader261 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader261 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.bz = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !175, !alias.scope !631
  store i64 %i.bz, ptr %.012.i.i.i.i.i, align 8, !tbaa !175, !alias.scope !630
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !175, !alias.scope !631
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ca, %i.bl
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !620

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block255, %.noexc27
  %.not.i8.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i8.i.i, label %_ZN4toml2v35array7reserveEm.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !194
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.bk to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cf) #51
  br label %_ZN4toml2v35array7reserveEm.exit

_ZN4toml2v35array7reserveEm.exit:                 ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, %bb.bb
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !174
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 2 uses
  store ptr %i.cg, ptr %i.j, align 8, !tbaa !173
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  store ptr %i.ch, ptr %i.i, align 8, !tbaa !194
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i, %bb.bf
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %21, align 8, !tbaa !175  ; 3 uses
  %.not.i28 = icmp eq ptr %i.cj, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i: ; preds = %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !75
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(40) %i.cj) #50, !inline_history !19
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.bd:                                            ; preds = %_ZN4toml2v35array7reserveEm.exit, %bb.ba
  %i.cn = phi ptr [ %i.bj, %_ZN4toml2v35array7reserveEm.exit ], [ %i.bf, %bb.ba ] ; 10 uses
  %i.co = phi ptr [ %i.ch, %_ZN4toml2v35array7reserveEm.exit ], [ %i.be, %bb.ba ] ; 4 uses
  %i.cp = phi ptr [ %i.cg, %_ZN4toml2v35array7reserveEm.exit ], [ %.pre, %bb.ba ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.co
  br i1 %.not.i.i.i.i, label %bb.be, label %.thread57

.thread57:                                        ; preds = %bb.bd
  %i.cq = load i64, ptr %21, align 8, !tbaa !175
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !175
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cr, ptr %i.j, align 8, !tbaa !173
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32

bb.be:                                            ; preds = %bb.bd
  %i.cs = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.ct = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 3 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %bb.bf, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc47 unwind label %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.bf
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.be
  %i.cw = ashr exact i64 %i.cu, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cx, i64 1152921504606846975)
  %i.da = select i1 %i.cy, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i = icmp ne i64 %i.da, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #55
          to label %.noexc48 unwind label %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  %i.de = load i64, ptr %21, align 8, !tbaa !175
  store i64 %i.de, ptr %i.dd, align 8, !tbaa !175
  store ptr null, ptr %21, align 8, !tbaa !175
  %.not10.i.i.i.i = icmp eq ptr %i.cn, %i.co
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc48
  %i.df = add i64 %i.cs, -8
  %i.dg = sub i64 %i.df, %i.ct                    ; 3 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader260, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dj = and i64 %i.dg, -8
  %25 = add i64 %i.dj, 8                          ; 2 uses
  %scevgep231 = getelementptr i8, ptr %i.dc, i64 %25
  %scevgep232 = getelementptr i8, ptr %i.cn, i64 %25
  %bound0 = icmp ult ptr %i.dc, %scevgep232
  %bound1 = icmp ult ptr %i.cn, %scevgep231
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader260, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.di, 4611686018427387900     ; 3 uses
  %i.dk = shl i64 %n.vec, 3                       ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dc, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.cn, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dc, i64 %i.dn ; 2 uses
  %next.gep233 = getelementptr i8, ptr %i.cn, i64 %i.dn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.do = getelementptr i8, ptr %next.gep233, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep233, align 8, !tbaa !175, !alias.scope !637
  %wide.load234 = load <2 x i64>, ptr %i.do, align 8, !tbaa !175, !alias.scope !637
  %i.dp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !175, !alias.scope !638, !noalias !639
  store <2 x i64> %wide.load234, ptr %i.dp, align 8, !tbaa !175, !alias.scope !638, !noalias !639
  %i.dq = getelementptr i8, ptr %next.gep233, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep233, align 8, !tbaa !175, !alias.scope !637
  store <2 x ptr> splat (ptr null), ptr %i.dq, align 8, !tbaa !175, !alias.scope !637
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !627

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader260

.lr.ph.i.i.i.i.preheader260:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dc, %vector.memcheck ], [ %i.dc, %.lr.ph.i.i.i.i.preheader ], [ %i.dl, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cn, %vector.memcheck ], [ %i.cn, %.lr.ph.i.i.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader260, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader260 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader260 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.ds = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !175, !alias.scope !636
  store i64 %i.ds, ptr %.012.i.i.i.i, align 8, !tbaa !175, !alias.scope !635
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !175, !alias.scope !636
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.dt, %i.co
  br i1 %.not.i.i.i.i46, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !628

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc48
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dc, %.noexc48 ], [ %i.dl, %middle.block ], [ %i.du, %.lr.ph.i.i.i.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cn, null
  br i1 %.not.i23.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dw = load ptr, ptr %i.i, align 8, !tbaa !194
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.dy) #51
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.bg
  store ptr %i.dc, ptr %i.h, align 8, !tbaa !174
  store ptr %i.dv, ptr %i.j, align 8, !tbaa !173
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da
  store ptr %i.dz, ptr %i.i, align 8, !tbaa !194
  %.pr56 = load ptr, ptr %21, align 8, !tbaa !175 ; 3 uses
  %.not.i30 = icmp eq ptr %.pr56, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31: ; preds = %bb.bh
  %i.ea = load ptr, ptr %.pr56, align 8, !tbaa !75
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(40) %.pr56) #50, !inline_history !19
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32: ; preds = %.thread57, %bb.bh, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32, %bb.ak
  %.be = phi i1 [ false, %bb.ak ], [ true, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32 ]
  br label %.backedge, !llvm.loop !629

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i, %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.bc ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp272, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ah, %bb.an, %bb.aq, %bb.ay, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %.loopexit.split-lp.i
  %.pn17 = phi { ptr, i32 } [ %i.an, %bb.ah ], [ %i.aq, %bb.an ], [ %.pn, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.as, %bb.aq ], [ %i.bd, %bb.ay ], [ %.pn.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ed = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #50, !inline_history !19
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

bb.bi:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34, %bb.f, %bb.e
  %.pn19 = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.e, %bb.e ], [ %.pn17, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240, !nonnull !106, !noundef !106
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.e = load i64, ptr %i.c, align 8, !tbaa !155
  store i64 %i.e, ptr %i.d, align 8, !tbaa !155
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !248  ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !248
  %.not9.i = icmp eq i64 %i.h, 0
  br i1 %.not9.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !249
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.m = load i64, ptr %i.l, align 8, !tbaa !250
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.o = load i64, ptr %i.n, align 8, !tbaa !251
  %reass.sub = sub i64 %i.m, %i.g
  %i.p = add i64 %reass.sub, 1
  %i.q = add i64 %i.p, %i.o
  %i.r = urem i64 %i.q, 127
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.r
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3056 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !251  ; 4 uses
  %.not6.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.x, null               ; 2 uses
  %i.y = select i1 %.not6.i, i1 %.not7.i, i1 false
  br i1 %i.y, label %bb.f, label %bb.g, !prof !156

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !252, !nonnull !106, !align !253 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z), !inline_history !32 ; 2 uses
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !249
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.g:                                             ; preds = %bb.e
  br i1 %.not7.i, label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread, label %bb.h

_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread: ; preds = %bb.g
  store ptr null, ptr %i.a, align 8, !tbaa !240
  br label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ult i64 %i.v, 127
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !156

bb.i:                                             ; preds = %bb.h
  %i.af = add nuw nsw i64 %i.v, 1
  store i64 %i.af, ptr %i.u, align 8, !tbaa !251
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3064 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !250 ; 2 uses
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !250
  %i.aj = add i64 %i.ah, 127
  %i.ak = urem i64 %i.aj, 127
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink13.i = phi i64 [ %i.ak, %bb.j ], [ %i.v, %bb.i ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.sink13.i
end_hunk_1
