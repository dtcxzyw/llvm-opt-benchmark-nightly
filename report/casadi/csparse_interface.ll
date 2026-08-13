inline.NumInlined: 693
inline.NumDeleted: 329
begin_hunk_0_@casadi_load_linsol_csparse:bb.a
  %0 = alloca %"struct.casadi::PluginInterface<casadi::LinsolInternal>::Plugin", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @_ZN6casadi15PluginInterfaceINS_14LinsolInternalEE16pluginFromRegFcnEPFiPNS2_6PluginEE(ptr dead_on_unwind nonnull writable sret(%"struct.casadi::PluginInterface<casadi::LinsolInternal>::Plugin") align 8 %0, ptr noundef nonnull @casadi_register_linsol_csparse)
  call void @_ZN6casadi15PluginInterfaceINS_14LinsolInternalEE14registerPluginERKNS2_6PluginEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi16CsparseInterfaceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6casadi14LinsolInternalC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN6casadi16CsparseInterfaceE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6casadi16CsparseInterfaceE, i64 240), ptr %i.a, align 8, !tbaa !23
  ret void
}

declare void @_ZN6casadi14LinsolInternalC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6casadi16CsparseInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) initializes((0, 8), (168, 176)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN6casadi16CsparseInterfaceE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6casadi16CsparseInterfaceE, i64 240), ptr %i.a, align 8, !tbaa !23
  invoke void @_ZN6casadi13ProtoFunction9clear_memEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6casadi14LinsolInternalD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #24
  unreachable
}

declare void @_ZN6casadi13ProtoFunction9clear_memEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6casadi14LinsolInternalD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6casadi16CsparseInterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6casadi16CsparseInterfaceD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #22
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6casadi13CsparseMemoryD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke ptr @cs_sfree(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.j       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.not2 = icmp eq ptr %i.e, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = invoke ptr @cs_nfree(ptr noundef nonnull %i.e)
          to label %bb.e unwind label %bb.j       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIiSaIiEED2Ev.exit4, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4

_ZNSt6vectorIiSaIiEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi6FStatsEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef %i.ac)
          to label %_ZN6casadi19ProtoFunctionMemoryD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #24
  unreachable

_ZN6casadi19ProtoFunctionMemoryD2Ev.exit:         ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  ret void

bb.j:                                             ; preds = %bb.d, %bb.b
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #24
  unreachable
}

declare ptr @cs_sfree(ptr noundef) local_unnamed_addr #2

declare ptr @cs_nfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi16CsparseInterface4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6casadi14LinsolInternal4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  ret void
}

declare void @_ZN6casadi14LinsolInternal4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZNK6casadi16CsparseInterface8init_memEPv(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6casadi14LinsolInternal8init_memEPv(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.d = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.e, ptr %i.f, align 8, !tbaa !59
  %i.g = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %i.h, ptr %i.i, align 4, !tbaa !60
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store i32 %i.k, ptr %i.l, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  %i.n = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.o = add nsw i64 %i.n, 1                      ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62   ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !54   ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 3 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = sub nuw i64 %i.o, %i.v
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.x)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.y = icmp ult i64 %i.o, %i.v
  br i1 %i.y, label %bb.e, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.z
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.z, ptr %i.p, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.ab = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 2 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !54 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 3 uses
  %i.aj = icmp ugt i64 %i.ab, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ak = sub nuw i64 %i.ab, %i.ai
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef %i.ak)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit22

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.al = icmp ult i64 %i.ab, %i.ai
  br i1 %i.al, label %bb.h, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit22

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ab ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.ad, %i.am
  br i1 %.not.i.i20, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit22, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i21

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i21:      ; preds = %bb.h
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit22

_ZNSt6vectorIiSaIiEE6resizeEm.exit22:             ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i21
  %i.an = tail call noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !62  ; 2 uses
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !54  ; 4 uses
  %.not.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i, label %_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit22
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.at, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.at, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x i64>, ptr %i.au, align 8, !tbaa !63
  %wide.load49 = load <2 x i64>, ptr %i.av, align 8, !tbaa !63
  %i.aw = trunc <2 x i64> %wide.load to <2 x i32>
  %i.ax = trunc <2 x i64> %wide.load49 to <2 x i32>
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store <2 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !65
  store <2 x i32> %i.ax, ptr %i.az, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.06.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.06.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.06.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !63
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.06.i
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !65
  %i.bf = add nuw nsw i64 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %i.at
  br i1 %exitcond.not.i, label %_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit, label %.lr.ph.i, !llvm.loop !70

_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit: ; preds = %.lr.ph.i, %middle.block, %_ZNSt6vectorIiSaIiEE6resizeEm.exit22
  %i.bg = tail call noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 2 uses
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !54 ; 6 uses
  %.not.i23 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i23, label %_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit28, label %.lr.ph.preheader.i24

.lr.ph.preheader.i24:                             ; preds = %_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2                 ; 4 uses
  %min.iters.check51 = icmp ult i64 %i.bm, 4
  br i1 %min.iters.check51, label %.lr.ph.i25.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.preheader.i24
  %n.vec53 = and i64 %i.bm, -4                    ; 3 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next58, %vector.body54 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index55 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load56 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !63
  %wide.load57 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !63
  %i.bp = trunc <2 x i64> %wide.load56 to <2 x i32>
  %i.bq = trunc <2 x i64> %wide.load57 to <2 x i32>
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index55 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store <2 x i32> %i.bp, ptr %i.br, align 4, !tbaa !65
  store <2 x i32> %i.bq, ptr %i.bs, align 4, !tbaa !65
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.bt, label %middle.block59, label %vector.body54, !llvm.loop !71

middle.block59:                                   ; preds = %vector.body54
  %cmp.n60 = icmp eq i64 %i.bm, %n.vec53
  br i1 %cmp.n60, label %_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit28, label %.lr.ph.i25.preheader

.lr.ph.i25.preheader:                             ; preds = %.lr.ph.preheader.i24, %middle.block59
  %.06.i26.ph = phi i64 [ 0, %.lr.ph.preheader.i24 ], [ %n.vec53, %middle.block59 ]
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25.preheader, %.lr.ph.i25
  %.06.i26 = phi i64 [ %i.by, %.lr.ph.i25 ], [ %.06.i26.ph, %.lr.ph.i25.preheader ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.06.i26
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !63
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.06.i26
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !65
  %i.by = add nuw nsw i64 %.06.i26, 1             ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %i.by, %i.bm
  br i1 %exitcond.not.i27, label %_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit28, label %.lr.ph.i25, !llvm.loop !72

_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit28: ; preds = %.lr.ph.i25, %middle.block59, %_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit
  %spec.select.i29 = phi ptr [ null, %_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit ], [ %i.bi, %middle.block59 ], [ %i.bi, %.lr.ph.i25 ]
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !73  ; 2 uses
  %i.ca = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.cb = icmp eq ptr %i.bz, %i.ca
  %spec.select.i = select i1 %i.cb, ptr null, ptr %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %spec.select.i, ptr %i.cc, align 8, !tbaa !74
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %spec.select.i29, ptr %i.cd, align 8, !tbaa !75
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr null, ptr %i.ce, align 8, !tbaa !76
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 -1, ptr %i.cf, align 8, !tbaa !77
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ch = load i32, ptr %i.l, align 8, !tbaa !61
  %i.ci = sext i32 %i.ch to i64                   ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !78 ; 2 uses
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !56 ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3                 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, %i.ci
  br i1 %i.cq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit28
  %i.cr = sub nuw nsw i64 %i.ci, %i.cp
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 noundef %i.cr)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.j:                                             ; preds = %_ZN6casadi11copy_vectorIxiEEvPKT_RSt6vectorIT0_SaIS5_EE.exit28
  %i.cs = icmp ugt i64 %i.cp, %i.ci
  br i1 %i.cs, label %bb.k, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ci ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.ck, %i.ct
  br i1 %.not.i.i30, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.ct, ptr %i.cj, align 8, !tbaa !78
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %bb.k, %bb.j, %bb.i, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  ret i32 %.0
}

declare noundef i32 @_ZNK6casadi14LinsolInternal8init_memEPv(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
end_hunk_0
