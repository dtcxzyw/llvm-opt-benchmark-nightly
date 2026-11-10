Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/velocityscalingtemperaturecoupling?download=true
inline.NumInlined: 2388
inline.NumDeleted: 1387
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3gmx3Any7ContentIiED0Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK3gmx3Any7ContentIiE8typeInfoEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr @_ZTIi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3gmx3Any7ContentIiE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.131") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN3gmx3Any7ContentIiEESt14default_deleteIS3_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36, !noalias !281, !inline_history !280 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentIiEE, i64 16), ptr %i.b, align 8, !tbaa !64, !noalias !281
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.a, align 8, !tbaa !113, !noalias !281
  store i32 %i.d, ptr %i.c, align 8, !tbaa !136, !noalias !281
  store ptr %i.b, ptr %0, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3gmx25KeyValueTreeObjectBuilder15addUniformArrayIfEENS_31KeyValueTreeUniformArrayBuilderIT_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::KeyValueTreeArray", align 8 ; 5 uses
  %3 = alloca %"class.gmx::KeyValueTreeValue", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !286
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !286
  %i.a = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit unwind label %bb.b, !noalias !286 ; 3 uses

common.resume:                                    ; preds = %_ZN3gmx17KeyValueTreeValueD2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.x, %_ZN3gmx17KeyValueTreeValueD2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx17KeyValueTreeArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #34, !noalias !286
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !286
  br label %common.resume

_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentINS_17KeyValueTreeArrayEEE, i64 16), ptr %i.a, align 8, !tbaa !64, !noalias !287
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !286
  %i.d = ptrtoint ptr %i.a to i64
  store i64 %i.d, ptr %3, align 8, !tbaa !94, !alias.scope !286
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !286
  %i.e = invoke ptr @_ZN3gmx25KeyValueTreeObjectBuilder11addPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEONS_17KeyValueTreeValueE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit
  %i.f = load ptr, ptr %3, align 8, !tbaa !94     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN3gmx17KeyValueTreeValueD2Ev.exit, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i: ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #34, !inline_history !5
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

_ZN3gmx17KeyValueTreeValueD2Ev.exit:              ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN3gmx17KeyValueTreeValueD2Ev.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k), !inline_history !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !96   ; 3 uses
  %i.r = icmp eq ptr %i.q, @_ZTSN3gmx17KeyValueTreeArrayE
  br i1 %i.r, label %_ZN3gmx17KeyValueTreeValue7asArrayEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.q, align 1, !tbaa !66
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 42
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i

_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i: ; preds = %bb.e
  %i.t = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(26) @_ZTSN3gmx17KeyValueTreeArrayE) #34
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN3gmx17KeyValueTreeValue7asArrayEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i, %bb.e, %_ZN3gmx17KeyValueTreeValueD2Ev.exit
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx3Any7castRefINS_17KeyValueTreeArrayEEERT_vENKUlvE_clEv, ptr noundef nonnull @.str.27, i32 noundef 219) #32
  unreachable

_ZN3gmx17KeyValueTreeValue7asArrayEv.exit:        ; preds = %bb.d, %_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  ret ptr %i.w

bb.g:                                             ; preds = %_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !94     ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i3, label %_ZN3gmx17KeyValueTreeValueD2Ev.exit5, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4: ; preds = %bb.g
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #34, !inline_history !5
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit5

_ZN3gmx17KeyValueTreeValueD2Ev.exit5:             ; preds = %bb.g, %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx31KeyValueTreeUniformArrayBuilderIfE8addValueERKf(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36, !noalias !298 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentIfEE, i64 16), ptr %i.a, align 8, !tbaa !64, !noalias !298
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load float, ptr %1, align 4, !tbaa !104, !noalias !298
  store float %i.c, ptr %i.b, align 8, !tbaa !159, !noalias !298
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !162    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.g, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !165
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !167  ; 9 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #32
          to label %.noexc7 unwind label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i, %i.p  ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #36
          to label %.noexc8 unwind label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6 ; 9 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store i64 %i.d, ptr %i.w, align 8, !tbaa !94
  %.not10.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc8
  %i.x = add i64 %i.l, -8
  %i.y = sub i64 %i.x, %i.m                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.y, 120
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 4611686018427387888     ; 4 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.af ; 4 uses
  %next.gep14 = getelementptr i8, ptr %i.k, i64 %i.af ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.ag = getelementptr i8, ptr %next.gep14, i64 32
  %i.ah = getelementptr i8, ptr %next.gep14, i64 64
  %i.ai = getelementptr i8, ptr %next.gep14, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep14, align 8, !tbaa !94, !alias.scope !300
  %wide.load15 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !94, !alias.scope !300
  %wide.load16 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !94, !alias.scope !300
  %wide.load17 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !94, !alias.scope !300
  %i.aj = getelementptr i8, ptr %next.gep, i64 32
  %i.ak = getelementptr i8, ptr %next.gep, i64 64
  %i.al = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !94, !alias.scope !299
  store <4 x i64> %wide.load15, ptr %i.aj, align 8, !tbaa !94, !alias.scope !299
  store <4 x i64> %wide.load16, ptr %i.ak, align 8, !tbaa !94, !alias.scope !299
  store <4 x i64> %wide.load17, ptr %i.al, align 8, !tbaa !94, !alias.scope !299
  %2 = getelementptr i8, ptr %next.gep14, i64 32
  %3 = getelementptr i8, ptr %next.gep14, i64 64
  %4 = getelementptr i8, ptr %next.gep14, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !94, !alias.scope !300
  store <4 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !94, !alias.scope !300
  store <4 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !94, !alias.scope !300
  store <4 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !94, !alias.scope !300
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !148

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.aa, 4611686018427387900   ; 3 uses
  %i.an = shl i64 %n.vec18, 3                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.v, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.k, i64 %i.an
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index19, 3                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.v, i64 %i.aq
  %next.gep21 = getelementptr i8, ptr %i.k, i64 %i.aq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %wide.load22 = load <4 x i64>, ptr %next.gep21, align 8, !tbaa !94, !alias.scope !300
  store <4 x i64> %wide.load22, ptr %next.gep20, align 8, !tbaa !94, !alias.scope !299
  store <4 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !94, !alias.scope !300
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !296

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.aa, %n.vec18
  br i1 %cmp.n24, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.as = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !94, !alias.scope !300
  store i64 %i.as, ptr %.012.i.i.i.i, align 8, !tbaa !94, !alias.scope !299
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !94, !alias.scope !300
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !297

_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.v, %.noexc8 ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !166
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ay) #35
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !167
  store ptr %i.av, ptr %i.f, align 8, !tbaa !165
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.az, ptr %i.h, align 8, !tbaa !166
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

_ZN3gmx17KeyValueTreeValueD2Ev.exit:              ; preds = %bb.b, %.noexc
  ret void

_ZN3gmx17KeyValueTreeValueD2Ev.exit6:             ; preds = %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #34, !inline_history !5
  resume { ptr, i32 } %i.ba
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx17KeyValueTreeArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !167    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #34, !inline_history !301
  br label %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i

_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !167
  br label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.i = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !166
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35
  br label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx3Any7ContentINS_17KeyValueTreeArrayEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentINS_17KeyValueTreeArrayEEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #34, !inline_history !302
  br label %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !167
  br label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN3gmx17KeyValueTreeArrayD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !166
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #35
  br label %_ZN3gmx17KeyValueTreeArrayD2Ev.exit

_ZN3gmx17KeyValueTreeArrayD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx3Any7ContentINS_17KeyValueTreeArrayEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentINS_17KeyValueTreeArrayEEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN3gmx34VelocityScalingTemperatureCoupling16doCheckpointDataILNS_23CheckpointDataOperationE1EEEvPNS_14CheckpointDataIXT_EEE:.noexc.i
  %i.bc = icmp eq ptr %i.bb, %i.ac
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bd = load i64, ptr %i.ac, align 8, !tbaa !66
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.i
  %.pn8 = phi { ptr, i32 } [ %i.ba, %bb.i ], [ %lpad.loopexit.split-lp43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %lpad.loopexit.split-lp43, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  resume { ptr, i32 } %.pn8.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3gmx25KeyValueTreeObjectBuilder15addUniformArrayIdEENS_31KeyValueTreeUniformArrayBuilderIT_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::KeyValueTreeArray", align 8 ; 5 uses
  %3 = alloca %"class.gmx::KeyValueTreeValue", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !358
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !358
  %i.a = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit unwind label %bb.b, !noalias !358 ; 3 uses

common.resume:                                    ; preds = %_ZN3gmx17KeyValueTreeValueD2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.x, %_ZN3gmx17KeyValueTreeValueD2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx17KeyValueTreeArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #34, !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !358
  br label %common.resume

_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentINS_17KeyValueTreeArrayEEE, i64 16), ptr %i.a, align 8, !tbaa !64, !noalias !359
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !358
  %i.d = ptrtoint ptr %i.a to i64
  store i64 %i.d, ptr %3, align 8, !tbaa !94, !alias.scope !358
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !358
  %i.e = invoke ptr @_ZN3gmx25KeyValueTreeObjectBuilder11addPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEONS_17KeyValueTreeValueE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit
  %i.f = load ptr, ptr %3, align 8, !tbaa !94     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN3gmx17KeyValueTreeValueD2Ev.exit, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i: ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #34, !inline_history !5
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

_ZN3gmx17KeyValueTreeValueD2Ev.exit:              ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN3gmx17KeyValueTreeValueD2Ev.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k), !inline_history !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !96   ; 3 uses
  %i.r = icmp eq ptr %i.q, @_ZTSN3gmx17KeyValueTreeArrayE
  br i1 %i.r, label %_ZN3gmx17KeyValueTreeValue7asArrayEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.q, align 1, !tbaa !66
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 42
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i

_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i: ; preds = %bb.e
  %i.t = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(26) @_ZTSN3gmx17KeyValueTreeArrayE) #34
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN3gmx17KeyValueTreeValue7asArrayEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i, %bb.e, %_ZN3gmx17KeyValueTreeValueD2Ev.exit
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx3Any7castRefINS_17KeyValueTreeArrayEEERT_vENKUlvE_clEv, ptr noundef nonnull @.str.27, i32 noundef 219) #32
  unreachable

_ZN3gmx17KeyValueTreeValue7asArrayEv.exit:        ; preds = %bb.d, %_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  ret ptr %i.w

bb.g:                                             ; preds = %_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !94     ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i3, label %_ZN3gmx17KeyValueTreeValueD2Ev.exit5, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4: ; preds = %bb.g
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #34, !inline_history !5
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit5

_ZN3gmx17KeyValueTreeValueD2Ev.exit5:             ; preds = %bb.g, %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36, !noalias !370 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentIdEE, i64 16), ptr %i.a, align 8, !tbaa !64, !noalias !370
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load double, ptr %1, align 8, !tbaa !106, !noalias !370
  store double %i.c, ptr %i.b, align 8, !tbaa !187, !noalias !370
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !162    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.g, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !165
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !167  ; 9 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #32
          to label %.noexc7 unwind label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i, %i.p  ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #36
          to label %.noexc8 unwind label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6 ; 9 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store i64 %i.d, ptr %i.w, align 8, !tbaa !94
  %.not10.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc8
  %i.x = add i64 %i.l, -8
  %i.y = sub i64 %i.x, %i.m                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.y, 120
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 4611686018427387888     ; 4 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.af ; 4 uses
  %next.gep14 = getelementptr i8, ptr %i.k, i64 %i.af ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.ag = getelementptr i8, ptr %next.gep14, i64 32
  %i.ah = getelementptr i8, ptr %next.gep14, i64 64
  %i.ai = getelementptr i8, ptr %next.gep14, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep14, align 8, !tbaa !94, !alias.scope !372
  %wide.load15 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !94, !alias.scope !372
  %wide.load16 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !94, !alias.scope !372
  %wide.load17 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !94, !alias.scope !372
  %i.aj = getelementptr i8, ptr %next.gep, i64 32
  %i.ak = getelementptr i8, ptr %next.gep, i64 64
  %i.al = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !94, !alias.scope !371
  store <4 x i64> %wide.load15, ptr %i.aj, align 8, !tbaa !94, !alias.scope !371
  store <4 x i64> %wide.load16, ptr %i.ak, align 8, !tbaa !94, !alias.scope !371
  store <4 x i64> %wide.load17, ptr %i.al, align 8, !tbaa !94, !alias.scope !371
  %2 = getelementptr i8, ptr %next.gep14, i64 32
  %3 = getelementptr i8, ptr %next.gep14, i64 64
  %4 = getelementptr i8, ptr %next.gep14, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !94, !alias.scope !372
  store <4 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !94, !alias.scope !372
  store <4 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !94, !alias.scope !372
  store <4 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !94, !alias.scope !372
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !148

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.aa, 4611686018427387900   ; 3 uses
  %i.an = shl i64 %n.vec18, 3                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.v, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.k, i64 %i.an
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index19, 3                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.v, i64 %i.aq
  %next.gep21 = getelementptr i8, ptr %i.k, i64 %i.aq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %wide.load22 = load <4 x i64>, ptr %next.gep21, align 8, !tbaa !94, !alias.scope !372
  store <4 x i64> %wide.load22, ptr %next.gep20, align 8, !tbaa !94, !alias.scope !371
  store <4 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !94, !alias.scope !372
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !368

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.aa, %n.vec18
  br i1 %cmp.n24, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.as = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !94, !alias.scope !372
  store i64 %i.as, ptr %.012.i.i.i.i, align 8, !tbaa !94, !alias.scope !371
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !94, !alias.scope !372
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !369

_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.v, %.noexc8 ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !166
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ay) #35
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !167
  store ptr %i.av, ptr %i.f, align 8, !tbaa !165
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.az, ptr %i.h, align 8, !tbaa !166
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

_ZN3gmx17KeyValueTreeValueD2Ev.exit:              ; preds = %bb.b, %.noexc
  ret void

_ZN3gmx17KeyValueTreeValueD2Ev.exit6:             ; preds = %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #34, !inline_history !5
  resume { ptr, i32 } %i.ba
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx3Any8IContentD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx3Any7ContentIdED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK3gmx3Any7ContentIdE8typeInfoEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr @_ZTId
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3gmx3Any7ContentIdE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.131") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN3gmx3Any7ContentIdEESt14default_deleteIS3_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36, !noalias !376, !inline_history !375 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentIdEE, i64 16), ptr %i.b, align 8, !tbaa !64, !noalias !376
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load double, ptr %i.a, align 8, !tbaa !106, !noalias !376
  store double %i.d, ptr %i.c, align 8, !tbaa !187, !noalias !376
  store ptr %i.b, ptr %0, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3gmx25KeyValueTreeObjectBuilder9addObjectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::KeyValueTreeValue", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @_ZN3gmx19KeyValueTreeBuilder11createValueINS_18KeyValueTreeObjectEEENS_17KeyValueTreeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.gmx::KeyValueTreeValue") align 8 %2)
  %i.a = invoke ptr @_ZN3gmx25KeyValueTreeObjectBuilder11addPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEONS_17KeyValueTreeValueE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !94     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN3gmx17KeyValueTreeValueD2Ev.exit, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i: ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #34, !inline_history !5
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

_ZN3gmx17KeyValueTreeValueD2Ev.exit:              ; preds = %bb.b, %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN3gmx17KeyValueTreeValueD2Ev.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(16) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !inline_history !377
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96   ; 3 uses
  %i.n = icmp eq ptr %i.m, @_ZTSN3gmx18KeyValueTreeObjectE
  br i1 %i.n, label %_ZN3gmx25KeyValueTreeObjectBuilderC2EPNS_17KeyValueTreeValueE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.m, align 1, !tbaa !66
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 42
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_ZNK3gmx3Any6isTypeINS_18KeyValueTreeObjectEEEbv.exit.i.i.i.i

_ZNK3gmx3Any6isTypeINS_18KeyValueTreeObjectEEEbv.exit.i.i.i.i: ; preds = %bb.d
  %i.p = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(27) @_ZTSN3gmx18KeyValueTreeObjectE) #34
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN3gmx25KeyValueTreeObjectBuilderC2EPNS_17KeyValueTreeValueE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK3gmx3Any6isTypeINS_18KeyValueTreeObjectEEEbv.exit.i.i.i.i, %bb.d, %_ZN3gmx17KeyValueTreeValueD2Ev.exit
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx3Any7castRefINS_17KeyValueTreeArrayEEERT_vENKUlvE_clEv, ptr noundef nonnull @.str.27, i32 noundef 219) #32
  unreachable

_ZN3gmx25KeyValueTreeObjectBuilderC2EPNS_17KeyValueTreeValueE.exit: ; preds = %bb.c, %_ZNK3gmx3Any6isTypeINS_18KeyValueTreeObjectEEEbv.exit.i.i.i.i
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  ret ptr %i.s

bb.f:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %2, align 8, !tbaa !94     ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i3, label %_ZN3gmx17KeyValueTreeValueD2Ev.exit5, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4: ; preds = %bb.f
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #34, !inline_history !5
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit5

_ZN3gmx17KeyValueTreeValueD2Ev.exit5:             ; preds = %bb.f, %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx19KeyValueTreeBuilder11createValueINS_18KeyValueTreeObjectEEENS_17KeyValueTreeValueEv(ptr dead_on_unwind noalias writable sret(%"class.gmx::KeyValueTreeValue") align 8 %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN3gmx34VelocityScalingTemperatureCoupling21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerENS_6OffsetENS_13UseFullStepKEENS_33ReportPreviousStepConservedEnergyERKNS_13PropagatorTagE:bb.a
  %i.bm = load ptr, ptr %i.ap, align 8, !tbaa !59 ; 2 uses
  %.not.i25 = icmp eq ptr %i.bm, null
  br i1 %.not.i25, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = invoke noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.m, %bb.n
  %i.bq = load ptr, ptr %i.ab, align 8, !tbaa !65 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ac
  br i1 %i.br, label %"_ZZN3gmx34VelocityScalingTemperatureCoupling21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerENS_6OffsetENS_13UseFullStepKEENS_33ReportPreviousStepConservedEnergyERKNS_13PropagatorTagEEN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bs = load i64, ptr %i.ac, align 8, !tbaa !66
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %"_ZZN3gmx34VelocityScalingTemperatureCoupling21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerENS_6OffsetENS_13UseFullStepKEENS_33ReportPreviousStepConservedEnergyERKNS_13PropagatorTagEEN3$_0D2Ev.exit"

"_ZZN3gmx34VelocityScalingTemperatureCoupling21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerENS_6OffsetENS_13UseFullStepKEENS_33ReportPreviousStepConservedEnergyERKNS_13PropagatorTagEEN3$_0D2Ev.exit": ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.bu = ptrtoint ptr %i.z to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.bx, align 8
  store i64 %i.bu, ptr %14, align 8, !tbaa !57
  store ptr @"_ZNSt17_Function_handlerIFvN3gmx8ArrayRefIKfEENS0_35ReferenceTemperatureChangeAlgorithmEEZNS0_34VelocityScalingTemperatureCoupling21getElementPointerImplEPNS0_19LegacySimulatorDataEPNS0_38ModularSimulatorAlgorithmBuilderHelperEPNS0_19StatePropagatorDataEPNS0_10EnergyDataEPNS0_26FreeEnergyPerturbationDataEPNS0_25GlobalCommunicationHelperEPNS0_18ObservablesReducerENS0_6OffsetENS0_13UseFullStepKEENS0_33ReportPreviousStepConservedEnergyERKNS0_13PropagatorTagEE3$_1E9_M_invokeERKSt9_Any_dataOS3_OS4_", ptr %i.bw, align 8, !tbaa !555
  store ptr @"_ZNSt17_Function_handlerIFvN3gmx8ArrayRefIKfEENS0_35ReferenceTemperatureChangeAlgorithmEEZNS0_34VelocityScalingTemperatureCoupling21getElementPointerImplEPNS0_19LegacySimulatorDataEPNS0_38ModularSimulatorAlgorithmBuilderHelperEPNS0_19StatePropagatorDataEPNS0_10EnergyDataEPNS0_26FreeEnergyPerturbationDataEPNS0_25GlobalCommunicationHelperEPNS0_18ObservablesReducerENS0_6OffsetENS0_13UseFullStepKEENS0_33ReportPreviousStepConservedEnergyERKNS0_13PropagatorTagEE3$_1E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation", ptr %i.bv, align 8, !tbaa !59
  invoke void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper34registerReferenceTemperatureUpdateESt8functionIFvNS_8ArrayRefIKfEENS_35ReferenceTemperatureChangeAlgorithmEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %14)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %"_ZZN3gmx34VelocityScalingTemperatureCoupling21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerENS_6OffsetENS_13UseFullStepKEENS_33ReportPreviousStepConservedEnergyERKNS_13PropagatorTagEEN3$_0D2Ev.exit"
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !59 ; 2 uses
  %.not.i26 = icmp eq ptr %i.by, null
  br i1 %.not.i26, label %_ZNSt14_Function_baseD2Ev.exit27, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit27 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit27:                 ; preds = %bb.p, %bb.q
  ret ptr %i.z

bb.s:                                             ; preds = %_ZSt11make_uniqueIN3gmx34VelocityScalingTemperatureCouplingEJRKiRNS0_6OffsetERNS0_13UseFullStepKEERNS0_33ReportPreviousStepConservedEnergyERKlS3_dRKPfSE_SE_RPNS0_10EnergyDataERK19TemperatureCouplingEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx34VelocityScalingTemperatureCouplingESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #34
  br label %common.resume

bb.t:                                             ; preds = %bb.l
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !59 ; 2 uses
  %.not.i28 = icmp eq ptr %i.ce, null
  br i1 %.not.i28, label %.body, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %.body unwind label %bb.v      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #33
  unreachable

.body:                                            ; preds = %bb.u, %bb.t, %bb.j, %.body.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.cd, %bb.u ], [ %eh.lpad-body.i, %bb.j ], [ %i.cd, %bb.t ]
  %i.ci = load ptr, ptr %i.ab, align 8, !tbaa !65 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ac
  br i1 %i.cj, label %"_ZZN3gmx34VelocityScalingTemperatureCoupling21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerENS_6OffsetENS_13UseFullStepKEENS_33ReportPreviousStepConservedEnergyERKNS_13PropagatorTagEEN3$_0D2Ev.exit32", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30: ; preds = %.body
  %i.ck = load i64, ptr %i.ac, align 8, !tbaa !66
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #35
  br label %"_ZZN3gmx34VelocityScalingTemperatureCoupling21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerENS_6OffsetENS_13UseFullStepKEENS_33ReportPreviousStepConservedEnergyERKNS_13PropagatorTagEEN3$_0D2Ev.exit32"

"_ZZN3gmx34VelocityScalingTemperatureCoupling21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerENS_6OffsetENS_13UseFullStepKEENS_33ReportPreviousStepConservedEnergyERKNS_13PropagatorTagEEN3$_0D2Ev.exit32": ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %common.resume

bb.w:                                             ; preds = %"_ZZN3gmx34VelocityScalingTemperatureCoupling21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerENS_6OffsetENS_13UseFullStepKEENS_33ReportPreviousStepConservedEnergyERKNS_13PropagatorTagEEN3$_0D2Ev.exit"
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %i.bv, align 8, !tbaa !59 ; 2 uses
  %.not.i33 = icmp eq ptr %i.cn, null
  br i1 %.not.i33, label %common.resume, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = invoke noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 3)
          to label %common.resume unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_34VelocityScalingTemperatureCouplingEEEPT_St10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.292", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !564    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !57     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !57
  store ptr null, ptr %1, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !567  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !568
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !57
  store ptr %i.g, ptr %i.d, align 8, !tbaa !570
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !567
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_34VelocityScalingTemperatureCouplingES3_IS9_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !571  ; 9 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #32
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #36
          to label %.noexc5 unwind label %bb.f    ; 9 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr null, ptr %2, align 8, !tbaa !57
  store ptr %i.g, ptr %i.v, align 8, !tbaa !570
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc5
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 4 uses
  %next.gep11 = getelementptr i8, ptr %i.j, i64 %i.ae ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.af = getelementptr i8, ptr %next.gep11, i64 32
  %i.ag = getelementptr i8, ptr %next.gep11, i64 64
  %i.ah = getelementptr i8, ptr %next.gep11, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep11, align 8, !tbaa !196, !alias.scope !573
  %wide.load12 = load <4 x i64>, ptr %i.af, align 8, !tbaa !196, !alias.scope !573
  %wide.load13 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !196, !alias.scope !573
  %wide.load14 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !196, !alias.scope !573
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !196, !alias.scope !572
  store <4 x i64> %wide.load12, ptr %i.ai, align 8, !tbaa !196, !alias.scope !572
  store <4 x i64> %wide.load13, ptr %i.aj, align 8, !tbaa !196, !alias.scope !572
  store <4 x i64> %wide.load14, ptr %i.ak, align 8, !tbaa !196, !alias.scope !572
  %3 = getelementptr i8, ptr %next.gep11, i64 32
  %4 = getelementptr i8, ptr %next.gep11, i64 64
  %5 = getelementptr i8, ptr %next.gep11, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !196, !alias.scope !573
  store <4 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !196, !alias.scope !573
  store <4 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !196, !alias.scope !573
  store <4 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !196, !alias.scope !573
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !559

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !148

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.am = shl i64 %n.vec15, 3                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.u, i64 %i.am   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.j, i64 %i.am
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl i64 %index16, 3                     ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.u, i64 %i.ap
  %next.gep18 = getelementptr i8, ptr %i.j, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %wide.load19 = load <4 x i64>, ptr %next.gep18, align 8, !tbaa !196, !alias.scope !573
  store <4 x i64> %wide.load19, ptr %next.gep17, align 8, !tbaa !196, !alias.scope !572
  store <4 x ptr> splat (ptr null), ptr %next.gep18, align 8, !tbaa !196, !alias.scope !573
  %index.next20 = add nuw i64 %index16, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next20, %n.vec15
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !560

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %i.z, %n.vec15
  br i1 %cmp.n21, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.ar = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !196, !alias.scope !573
  store i64 %i.ar, ptr %.012.i.i.i.i, align 8, !tbaa !196, !alias.scope !572
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !196, !alias.scope !573
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !561

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc5
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc5 ], [ %i.an, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !568
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ax) #35
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !571
  store ptr %i.au, ptr %i.c, align 8, !tbaa !567
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !568
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_34VelocityScalingTemperatureCouplingES3_IS9_EEEEERS5_DpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_34VelocityScalingTemperatureCouplingES3_IS9_EEEEERS5_DpOT_.exit.i: ; preds = %.noexc, %bb.b
  %i.az = phi ptr [ %i.d, %bb.b ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !196 ; 2 uses
  invoke void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_34VelocityScalingTemperatureCouplingEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef %i.ba)
          to label %_ZNSt10unique_ptrIN3gmx34VelocityScalingTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit unwind label %bb.f

_ZNSt10unique_ptrIN3gmx34VelocityScalingTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_34VelocityScalingTemperatureCouplingES3_IS9_EEEEERS5_DpOT_.exit.i
  ret ptr %i.ba

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_34VelocityScalingTemperatureCouplingES3_IS9_EEEEERS5_DpOT_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx34VelocityScalingTemperatureCouplingESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #34
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN3gmx34VelocityScalingTemperatureCouplingESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN3gmx34VelocityScalingTemperatureCouplingEEclEPS1_.exit

_ZNKSt14default_deleteIN3gmx34VelocityScalingTemperatureCouplingEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN3gmx34VelocityScalingTemperatureCouplingD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %i.a) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 256) #35
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN3gmx34VelocityScalingTemperatureCouplingEEclEPS1_.exit, %bb.a
  ret void
}

declare void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper34registerTemperaturePressureControlESt8functionIFvRKNS_20PropagatorConnectionEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8) local_unnamed_addr #9

declare void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper34registerReferenceTemperatureUpdateESt8functionIFvNS_8ArrayRefIKfEENS_35ReferenceTemperatureChangeAlgorithmEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_34VelocityScalingTemperatureCouplingEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::ElementNotFoundError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZNK3gmx32ModularSimulatorAlgorithmBuilder13elementExistsEPKNS_17ISimulatorElementE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 24) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.44)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.d unwind label %.thread15

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx20ElementNotFoundErrorE, i64 16), ptr %2, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_34VelocityScalingTemperatureCouplingEEEvPT_, ptr %i.c, align 8, !tbaa !197
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.45, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !197
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 735, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !113
  invoke void @_ZN3gmxlsINS_20ElementNotFoundErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::ElementNotFoundError") align 8 %i.b, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.b, ptr nonnull @_ZTIN3gmx20ElementNotFoundErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #32
          to label %bb.o unwind label %bb.f

.thread:                                          ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread15:                                        ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #34
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #34
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br i1 %.0, label %bb.g, label %bb.n

.sink.split:                                      ; preds = %.thread, %.thread15
  %.pn.pn14.ph = phi { ptr, i32 } [ %i.e, %.thread15 ], [ %i.d, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %.pn.pn14 = phi { ptr, i32 } [ %i.f, %bb.f ], [ %.pn.pn14.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !576  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !577
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %1, ptr %i.i, align 8, !tbaa !196
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !576
  br label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12emplace_backIJRPNS0_34VelocityScalingTemperatureCouplingEEEERS2_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !578  ; 4 uses
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
end_hunk_2
