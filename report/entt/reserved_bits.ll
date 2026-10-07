Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/reserved_bits?download=true
inline.NumInlined: 2419
inline.NumDeleted: 1063
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN32ReservedBits_DisabledEntity_Test8TestBodyEv:bb.a

_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit789: ; preds = %bb.dd
  %i.to = load i32, ptr %i.b, align 4, !tbaa !77  ; 2 uses
  %i.tp = and i32 %i.to, 65535
  %i.tq = zext nneg i32 %i.tp to i64              ; 2 uses
  %i.tr = lshr i64 %i.tq, 12                      ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !87
  %i.tv = load ptr, ptr %i.ts, align 8, !tbaa !88 ; 2 uses
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = ashr exact i64 %i.ty, 3
  %i.ua = icmp ult i64 %i.tr, %i.tz
  br i1 %i.ua, label %bb.de, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4findES2_.exit797

bb.de:                                            ; preds = %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit789
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %i.tr
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i794 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i.i794, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4findES2_.exit797, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i795

_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i795: ; preds = %bb.de
  %i.ud = and i64 %i.tq, 4095
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.ud
  %i.uf = and i32 %i.to, 268369920
  %i.ug = load i32, ptr %i.ue, align 4, !tbaa !77 ; 2 uses
  %i.uh = xor i32 %i.ug, %i.uf
  %i.ui = icmp ult i32 %i.uh, 65535
  br i1 %i.ui, label %bb.df, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4findES2_.exit797

bb.df:                                            ; preds = %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i795
  %i.uj = and i32 %i.ug, 65535
  %narrow.i.i796 = add nuw nsw i32 %i.uj, 1
  %i.uk = zext nneg i32 %narrow.i.i796 to i64
  br label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4findES2_.exit797

_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4findES2_.exit797: ; preds = %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit789, %bb.de, %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i795, %bb.df
  %.pn4.i790 = phi i64 [ %i.uk, %bb.df ], [ 0, %bb.de ], [ 0, %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit789 ], [ 0, %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i795 ]
  %.pn6.i791 = getelementptr inbounds nuw i8, ptr %i.tn, i64 32
  %i.ul = load ptr, ptr %.pn6.i791, align 8, !tbaa !48
  %i.um = getelementptr [4 x i8], ptr %i.ul, i64 %.pn4.i790
  %i.un = getelementptr i8, ptr %i.um, i64 -4
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !77
  %i.up = and i32 %i.uo, 268435456
  %.not1470 = icmp eq i32 %i.up, 0                ; 2 uses
  %i.uq = zext i1 %.not1470 to i8
  store i8 %i.uq, ptr %38, align 8, !tbaa !260
  %i.ur = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  store ptr null, ptr %i.ur, align 8, !tbaa !261
  br i1 %.not1470, label %bb.dt, label %bb.di

bb.dg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit782, %bb.cr
  %.pn324.pn.pn.pn = phi { ptr, i32 } [ %.pn324.pn.pn, %_ZN7testing7MessageD2Ev.exit782 ], [ %i.sj, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dd
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.di:                                            ; preds = %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4findES2_.exit797
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.dj unwind label %bb.do

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.dk unwind label %bb.dp

bb.dk:                                            ; preds = %bb.dj
  %i.ut = load ptr, ptr %41, align 8, !tbaa !94
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 59, ptr noundef %i.ut)
          to label %bb.dl unwind label %bb.dq

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.dm unwind label %bb.dr

bb.dm:                                            ; preds = %bb.dl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #21
  %i.uu = load ptr, ptr %41, align 8, !tbaa !94   ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.uw = icmp eq ptr %i.uu, %i.uv
  br i1 %i.uw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit800, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i798

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i798: ; preds = %bb.dm
  %i.ux = load i64, ptr %i.uv, align 8, !tbaa !37
  %i.uy = add i64 %i.ux, 1
  call void @_ZdlPvm(ptr noundef %i.uu, i64 noundef %i.uy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit800

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit800: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i798
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  %i.uz = load ptr, ptr %39, align 8, !tbaa !96   ; 3 uses
  %.not.i.i801 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i801, label %_ZN7testing7MessageD2Ev.exit803, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i802

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i802: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit800
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !25
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8
  call void %i.vc(ptr noundef nonnull align 8 dereferenceable(128) %i.uz) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit803

_ZN7testing7MessageD2Ev.exit803:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit800, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i802
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.vd = load ptr, ptr %i.ur, align 8, !tbaa !97 ; 4 uses
  %.not.i.i804 = icmp eq ptr %i.vd, null
  br i1 %.not.i.i804, label %_ZN7testing15AssertionResultD2Ev.exit808, label %bb.dn

bb.dn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit803
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !94 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 16 ; 2 uses
  %i.vg = icmp eq ptr %i.ve, %i.vf
  br i1 %i.vg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i806, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i805

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i805: ; preds = %bb.dn
  %i.vh = load i64, ptr %i.vf, align 8, !tbaa !37
  %i.vi = add i64 %i.vh, 1
  call void @_ZdlPvm(ptr noundef %i.ve, i64 noundef %i.vi) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i806

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i806: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i805
  call void @_ZdlPvm(ptr noundef nonnull %i.vd, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit808

_ZN7testing15AssertionResultD2Ev.exit808:         ; preds = %_ZN7testing7MessageD2Ev.exit803, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i806
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  br label %bb.uk

bb.do:                                            ; preds = %bb.di
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit814

bb.dp:                                            ; preds = %bb.dj
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811

bb.dq:                                            ; preds = %bb.dk
  %i.vl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dl
  %i.vm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #21
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn329 = phi { ptr, i32 } [ %i.vm, %bb.dr ], [ %i.vl, %bb.dq ] ; 2 uses
  %i.vn = load ptr, ptr %41, align 8, !tbaa !94   ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.vp = icmp eq ptr %i.vn, %i.vo
  br i1 %i.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i809

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i809: ; preds = %bb.ds
  %i.vq = load i64, ptr %i.vo, align 8, !tbaa !37
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i809, %bb.dp
  %.pn329.pn = phi { ptr, i32 } [ %i.vk, %bb.dp ], [ %.pn329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i809 ], [ %.pn329, %bb.ds ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  %i.vs = load ptr, ptr %39, align 8, !tbaa !96   ; 3 uses
  %.not.i.i812 = icmp eq ptr %i.vs, null
  br i1 %.not.i.i812, label %_ZN7testing7MessageD2Ev.exit814, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i813

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i813: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !25
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vv = load ptr, ptr %i.vu, align 8
  call void %i.vv(ptr noundef nonnull align 8 dereferenceable(128) %i.vs) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit814

_ZN7testing7MessageD2Ev.exit814:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i813, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811, %bb.do
  %.pn329.pn.pn = phi { ptr, i32 } [ %i.vj, %bb.do ], [ %.pn329.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811 ], [ %.pn329.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i813 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #21
  br label %bb.ec

bb.dt:                                            ; preds = %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4findES2_.exit797
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  %i.vw = load i64, ptr %i.af, align 16, !tbaa !44
  %.not.i.i.i820 = icmp eq i64 %i.vw, 2           ; 2 uses
  %i.vx = select i1 %.not.i.i.i820, i64 2, i64 0
  store i64 %i.vx, ptr %i.af, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  br i1 %.not.i.i.i820, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit.thread, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.vy = load ptr, ptr %9, align 16, !tbaa !45, !noalias !262 ; 5 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 32 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 64
  %i.wb = load i8, ptr %i.wa, align 8, !tbaa !98, !noalias !262
  %i.wc = icmp eq i8 %i.wb, 2
  br i1 %i.wc, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vy, i64 72
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !99, !noalias !262
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit.i

bb.dw:                                            ; preds = %bb.du
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vy, i64 40
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !47, !noalias !262
  %i.wh = load ptr, ptr %i.vz, align 8, !tbaa !48, !noalias !262
  %i.wi = ptrtoint ptr %i.wg to i64
  %i.wj = ptrtoint ptr %i.wh to i64
  %i.wk = sub i64 %i.wi, %i.wj
  %i.wl = ashr exact i64 %i.wk, 2
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit.i

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit.thread: ; preds = %bb.dt
  %172 = getelementptr inbounds nuw i8, ptr %43, i64 40
  store i64 0, ptr %172, align 8, !tbaa !103, !alias.scope !262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %43, i8 0, i64 32, i1 false), !alias.scope !262
  br label %bb.dy

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit.i: ; preds = %bb.dv, %bb.dw
  %i.wm = phi i64 [ %i.we, %bb.dv ], [ %i.wl, %bb.dw ]
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !37, !noalias !262
  store ptr %i.vz, ptr %43, align 8, !tbaa !104, !alias.scope !262
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.wm, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !105, !alias.scope !262
  %i.wn = getelementptr inbounds nuw i8, ptr %43, i64 16
  store ptr %i.vy, ptr %i.wn, align 8, !alias.scope !262
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !37, !alias.scope !262
  %i.wo = getelementptr inbounds nuw i8, ptr %43, i64 40
  store i64 0, ptr %i.wo, align 8, !tbaa !103, !alias.scope !262
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %43)
  %.pre = load i64, ptr %i.af, align 16, !tbaa !44, !noalias !263 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %.not.i821 = icmp eq i64 %.pre, 2
  br i1 %.not.i821, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit.i
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.pre
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !45, !noalias !263
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 32
  store ptr %i.wr, ptr %44, align 8, !tbaa !104, !alias.scope !263
  %.sroa.23.0..sroa_idx.i.i825 = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.23.0..sroa_idx.i.i825, align 8, !tbaa !105, !alias.scope !263
  %i.ws = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.wt = load <2 x ptr>, ptr %9, align 16, !noalias !263
  store <2 x ptr> %i.wt, ptr %i.ws, align 8, !alias.scope !263
  %i.wu = getelementptr inbounds nuw i8, ptr %44, i64 40
  store i64 %.pre, ptr %i.wu, align 8, !tbaa !103, !alias.scope !263
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %44)
  %.sroa.41414.0.copyload.pre = load i64, ptr %.sroa.23.0..sroa_idx.i.i825, align 8
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit

bb.dy:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit.thread, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit.i
  %i.wv = getelementptr inbounds nuw i8, ptr %44, i64 40
  store i64 0, ptr %i.wv, align 8, !tbaa !103, !alias.scope !263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %44, i8 0, i64 32, i1 false), !alias.scope !263
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit: ; preds = %bb.dx, %bb.dy
  %.sroa.41414.0.copyload = phi i64 [ %.sroa.41414.0.copyload.pre, %bb.dx ], [ 0, %bb.dy ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %43, i64 48, i1 false)
  %i.ww = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !106 ; 2 uses
  %i.wy = icmp eq i64 %i.wx, %.sroa.41414.0.copyload
  br i1 %i.wy, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 0, ptr %i.c, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 2, ptr %i.d, align 4, !tbaa !107
  br label %bb.eb

.lr.ph.i:                                         ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit, %.lr.ph.i
  %i.wz = phi i64 [ %i.xc, %.lr.ph.i ], [ %i.wx, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit ]
  %.02.i = phi i64 [ %i.xb, %.lr.ph.i ], [ 0, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit ]
  %i.xa = add nsw i64 %i.wz, -1
  store i64 %i.xa, ptr %i.ww, align 8, !tbaa !106
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.xb = add nuw nsw i64 %.02.i, 1               ; 3 uses
  %i.xc = load i64, ptr %i.ww, align 8, !tbaa !106 ; 2 uses
  %i.xd = icmp eq i64 %i.xc, %.sroa.41414.0.copyload
  br i1 %i.xd, label %bb.dz, label %.lr.ph.i, !llvm.loop !229

bb.dz:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %i.xb, ptr %i.c, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 2, ptr %i.d, align 4, !tbaa !107
  %i.xe = icmp eq i64 %i.xb, 2
  br i1 %i.xe, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %42)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ed

bb.eb:                                            ; preds = %.thread, %bb.dz
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %42, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ed

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.xf = load i8, ptr %42, align 8, !tbaa !260, !range !264, !noundef !265
  %i.xg = trunc nuw i8 %i.xf to i1
  br i1 %i.xg, label %.critedge490, label %bb.ee

bb.ec:                                            ; preds = %_ZN7testing7MessageD2Ev.exit814, %bb.dh
  %.pn329.pn.pn.pn = phi { ptr, i32 } [ %.pn329.pn.pn, %_ZN7testing7MessageD2Ev.exit814 ], [ %i.us, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  br label %.loopexit.split-lp

bb.ed:                                            ; preds = %bb.eb, %bb.ea
  %i.xh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.ev

bb.ee:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %bb.ef unwind label %bb.ek

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  %i.xi = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i829 = icmp eq ptr %i.xj, null
  br i1 %.not.i.i.i829, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !94
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.eg, %bb.ef
  %i.xl = phi ptr [ %i.xk, %bb.eg ], [ @.str.27, %bb.ef ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %46, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 63, ptr noundef %i.xl)
          to label %bb.eh unwind label %bb.el

bb.eh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %bb.ei unwind label %bb.em

bb.ei:                                            ; preds = %bb.eh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.xm = load ptr, ptr %45, align 8, !tbaa !96   ; 3 uses
  %.not.i.i830 = icmp eq ptr %i.xm, null
  br i1 %.not.i.i830, label %_ZN7testing7MessageD2Ev.exit832, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i831

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i831: ; preds = %bb.ei
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !25
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8
  call void %i.xp(ptr noundef nonnull align 8 dereferenceable(128) %i.xm) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit832

_ZN7testing7MessageD2Ev.exit832:                  ; preds = %bb.ei, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i831
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  %i.xq = load ptr, ptr %i.xi, align 8, !tbaa !97 ; 4 uses
  %.not.i.i833 = icmp eq ptr %i.xq, null
  br i1 %.not.i.i833, label %_ZN7testing15AssertionResultD2Ev.exit837, label %bb.ej

bb.ej:                                            ; preds = %_ZN7testing7MessageD2Ev.exit832
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !94 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 16 ; 2 uses
  %i.xt = icmp eq ptr %i.xr, %i.xs
  br i1 %i.xt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i835, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i834

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i834: ; preds = %bb.ej
  %i.xu = load i64, ptr %i.xs, align 8, !tbaa !37
  %i.xv = add i64 %i.xu, 1
  call void @_ZdlPvm(ptr noundef %i.xr, i64 noundef %i.xv) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i835

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i835: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i834
  call void @_ZdlPvm(ptr noundef nonnull %i.xq, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit837

_ZN7testing15AssertionResultD2Ev.exit837:         ; preds = %_ZN7testing7MessageD2Ev.exit832, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i835
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  br label %bb.uk

bb.ek:                                            ; preds = %bb.ee
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit840

bb.el:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.em:                                            ; preds = %bb.eh
  %i.xy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #21
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pn336 = phi { ptr, i32 } [ %i.xy, %bb.em ], [ %i.xx, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.xz = load ptr, ptr %45, align 8, !tbaa !96   ; 3 uses
  %.not.i.i838 = icmp eq ptr %i.xz, null
  br i1 %.not.i.i838, label %_ZN7testing7MessageD2Ev.exit840, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i839

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i839: ; preds = %bb.en
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !25
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.yc = load ptr, ptr %i.yb, align 8
  call void %i.yc(ptr noundef nonnull align 8 dereferenceable(128) %i.xz) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit840

_ZN7testing7MessageD2Ev.exit840:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i839, %bb.en, %bb.ek
  %.pn336.pn = phi { ptr, i32 } [ %i.xw, %bb.ek ], [ %.pn336, %bb.en ], [ %.pn336, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i839 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #21
  br label %bb.ev

.critedge490:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.yd = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !97 ; 4 uses
  %.not.i.i841 = icmp eq ptr %i.ye, null
  br i1 %.not.i.i841, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %.critedge490
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !94 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 16 ; 2 uses
  %i.yh = icmp eq ptr %i.yf, %i.yg
  br i1 %i.yh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i843, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i842

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i842: ; preds = %bb.eo
  %i.yi = load i64, ptr %i.yg, align 8, !tbaa !37
  %i.yj = add i64 %i.yi, 1
  call void @_ZdlPvm(ptr noundef %i.yf, i64 noundef %i.yj) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i843

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i843: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i842
  call void @_ZdlPvm(ptr noundef nonnull %i.ye, i64 noundef 32) #22
  br label %bb.ep

bb.ep:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i843, %.critedge490
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.yk = load i64, ptr %i.af, align 16, !tbaa !44, !noalias !266 ; 3 uses
  %.not.i846 = icmp eq i64 %i.yk, 2
  br i1 %.not.i846, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit853.thread, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.yk
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !45, !noalias !266 ; 4 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 32 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 64
  %i.yp = load i8, ptr %i.yo, align 8, !tbaa !98, !noalias !266
  %i.yq = icmp eq i8 %i.yp, 2
  br i1 %i.yq, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ym, i64 72
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !99, !noalias !266
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit853

bb.es:                                            ; preds = %bb.eq
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ym, i64 40
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !47, !noalias !266
  %i.yv = load ptr, ptr %i.yn, align 8, !tbaa !48, !noalias !266
  %i.yw = ptrtoint ptr %i.yu to i64
  %i.yx = ptrtoint ptr %i.yv to i64
  %i.yy = sub i64 %i.yw, %i.yx
  %i.yz = ashr exact i64 %i.yy, 2
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit853

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit853.thread: ; preds = %bb.ep
  %i.za = getelementptr inbounds nuw i8, ptr %47, i64 40
  store i64 0, ptr %i.za, align 8, !tbaa !103, !alias.scope !266
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %47, i8 0, i64 32, i1 false), !alias.scope !266
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  br label %bb.eu

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit853: ; preds = %bb.er, %bb.es
  %i.zb = phi i64 [ %i.ys, %bb.er ], [ %i.yz, %bb.es ]
  store ptr %i.yn, ptr %47, align 8, !tbaa !104, !alias.scope !266
  %.sroa.23.0..sroa_idx.i.i851 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %i.zb, ptr %.sroa.23.0..sroa_idx.i.i851, align 8, !tbaa !105, !alias.scope !266
  %i.zc = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.zd = load <2 x ptr>, ptr %9, align 16, !noalias !266
  store <2 x ptr> %i.zd, ptr %i.zc, align 8, !alias.scope !266
  %i.ze = getelementptr inbounds nuw i8, ptr %47, i64 40
  store i64 %i.yk, ptr %i.ze, align 8, !tbaa !103, !alias.scope !266
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %47)
  %.pre1535 = load i64, ptr %i.af, align 16, !tbaa !44, !noalias !267 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %.not.i854 = icmp eq i64 %.pre1535, 2
  br i1 %.not.i854, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit853
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.pre1535
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !45, !noalias !267
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  store ptr %i.zh, ptr %48, align 8, !tbaa !104, !alias.scope !267
  %.sroa.23.0..sroa_idx.i.i858 = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.23.0..sroa_idx.i.i858, align 8, !tbaa !105, !alias.scope !267
  %i.zi = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.zj = load <2 x ptr>, ptr %9, align 16, !noalias !267
  store <2 x ptr> %i.zj, ptr %i.zi, align 8, !alias.scope !267
  %i.zk = getelementptr inbounds nuw i8, ptr %48, i64 40
  store i64 %.pre1535, ptr %i.zk, align 8, !tbaa !103, !alias.scope !267
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %48)
  %.pre1536 = load i64, ptr %.sroa.23.0..sroa_idx.i.i858, align 8, !tbaa !106
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit860

bb.eu:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit853.thread, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit853
  %i.zl = getelementptr inbounds nuw i8, ptr %48, i64 40
  store i64 0, ptr %i.zl, align 8, !tbaa !103, !alias.scope !267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %48, i8 0, i64 32, i1 false), !alias.scope !267
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit860

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit860: ; preds = %bb.et, %bb.eu
  %i.zm = phi i64 [ %.pre1536, %bb.et ], [ 0, %bb.eu ]
  %i.zn = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 4 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.zp = load i64, ptr %i.zn, align 8, !tbaa !106 ; 2 uses
  %i.zq = icmp eq i64 %i.zp, %i.zm
  br i1 %i.zq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit860
  %i.zr = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  br label %bb.ew

bb.ev:                                            ; preds = %_ZN7testing7MessageD2Ev.exit840, %bb.ed
  %.pn336.pn.pn = phi { ptr, i32 } [ %.pn336.pn, %_ZN7testing7MessageD2Ev.exit840 ], [ %i.xh, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  br label %.loopexit.split-lp

bb.ew:                                            ; preds = %.lr.ph, %.critedge504
  %i.zx = phi i64 [ %i.zp, %.lr.ph ], [ %i.aib, %.critedge504 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.zy = load ptr, ptr %47, align 8, !tbaa !108
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !48
  %i.aaa = getelementptr [4 x i8], ptr %i.zz, i64 %i.zx
  %i.aab = getelementptr i8, ptr %i.aaa, i64 -4
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !77 ; 4 uses
  store i32 %i.aac, ptr %i.e, align 4, !tbaa !77
  %i.aad = load i32, ptr %i.a, align 4, !tbaa !77 ; 2 uses
  %i.aae = xor i32 %i.aad, %i.aac
  %i.aaf = and i32 %i.aae, 65535
  %i.aag = icmp eq i32 %i.aaf, 0
  br i1 %i.aag, label %bb.ex, label %bb.gp

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  %.not.i861 = icmp eq i32 %i.aac, %i.aad
  br i1 %.not.i861, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49)
          to label %_ZN7testing8internal11CmpHelperNEIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit unwind label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_S6_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @.str.37)
          to label %_ZN7testing8internal11CmpHelperNEIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit unwind label %bb.fa

_ZN7testing8internal11CmpHelperNEIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit: ; preds = %bb.ey, %bb.ez
  %i.aah = load i8, ptr %49, align 8, !tbaa !260, !range !264, !noundef !265
  %i.aai = trunc nuw i8 %i.aah to i1
  br i1 %i.aai, label %.critedge492, label %bb.fb

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fb:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.fc unwind label %bb.fh

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  %i.aak = load ptr, ptr %i.zu, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i864 = icmp eq ptr %i.aak, null
  br i1 %.not.i.i.i864, label %_ZNK7testing15AssertionResult15failure_messageEv.exit865, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !94
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit865

_ZNK7testing15AssertionResult15failure_messageEv.exit865: ; preds = %bb.fd, %bb.fc
  %i.aam = phi ptr [ %i.aal, %bb.fd ], [ @.str.27, %bb.fc ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 67, ptr noundef %i.aam)
          to label %bb.fe unwind label %bb.fi

bb.fe:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit865
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.ff unwind label %bb.fj

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  %i.aan = load ptr, ptr %50, align 8, !tbaa !96  ; 3 uses
  %.not.i.i866 = icmp eq ptr %i.aan, null
  br i1 %.not.i.i866, label %_ZN7testing7MessageD2Ev.exit868, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i867

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i867: ; preds = %bb.ff
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !25
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.aaq = load ptr, ptr %i.aap, align 8
  call void %i.aaq(ptr noundef nonnull align 8 dereferenceable(128) %i.aan) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit868

_ZN7testing7MessageD2Ev.exit868:                  ; preds = %bb.ff, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i867
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  %i.aar = load ptr, ptr %i.zu, align 8, !tbaa !97 ; 4 uses
  %.not.i.i869 = icmp eq ptr %i.aar, null
  br i1 %.not.i.i869, label %_ZN7testing15AssertionResultD2Ev.exit873, label %bb.fg

bb.fg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit868
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !94 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aar, i64 16 ; 2 uses
  %i.aau = icmp eq ptr %i.aas, %i.aat
  br i1 %i.aau, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i871, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i870

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i870: ; preds = %bb.fg
  %i.aav = load i64, ptr %i.aat, align 8, !tbaa !37
  %i.aaw = add i64 %i.aav, 1
  call void @_ZdlPvm(ptr noundef %i.aas, i64 noundef %i.aaw) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i871

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i871: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i870
  call void @_ZdlPvm(ptr noundef nonnull %i.aar, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit873

_ZN7testing15AssertionResultD2Ev.exit873:         ; preds = %_ZN7testing7MessageD2Ev.exit868, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i871
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %bb.ih

bb.fh:                                            ; preds = %bb.fb
  %i.aax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit876

bb.fi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit865
  %i.aay = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fe
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #21
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.pn352 = phi { ptr, i32 } [ %i.aaz, %bb.fj ], [ %i.aay, %bb.fi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  %i.aba = load ptr, ptr %50, align 8, !tbaa !96  ; 3 uses
  %.not.i.i874 = icmp eq ptr %i.aba, null
  br i1 %.not.i.i874, label %_ZN7testing7MessageD2Ev.exit876, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i875

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i875: ; preds = %bb.fk
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !25
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  %i.abd = load ptr, ptr %i.abc, align 8
  call void %i.abd(ptr noundef nonnull align 8 dereferenceable(128) %i.aba) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit876

_ZN7testing7MessageD2Ev.exit876:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i875, %bb.fk, %bb.fh
  %.pn352.pn = phi { ptr, i32 } [ %i.aax, %bb.fh ], [ %.pn352, %bb.fk ], [ %.pn352, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i875 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #21
  br label %bb.fp

.critedge492:                                     ; preds = %_ZN7testing8internal11CmpHelperNEIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit
  %i.abe = load ptr, ptr %i.zu, align 8, !tbaa !97 ; 4 uses
  %.not.i.i877 = icmp eq ptr %i.abe, null
  br i1 %.not.i.i877, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %.critedge492
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !94 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abe, i64 16 ; 2 uses
  %i.abh = icmp eq ptr %i.abf, %i.abg
  br i1 %i.abh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i879, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i878

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i878: ; preds = %bb.fl
  %i.abi = load i64, ptr %i.abg, align 8, !tbaa !37
  %i.abj = add i64 %i.abi, 1
  call void @_ZdlPvm(ptr noundef %i.abf, i64 noundef %i.abj) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i879

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i879: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i878
  call void @_ZdlPvm(ptr noundef nonnull %i.abe, i64 noundef 32) #22
  br label %bb.fm

bb.fm:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i879, %.critedge492
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.abk = load i32, ptr %i.e, align 4, !tbaa !77
  %i.abl = lshr i32 %i.abk, 16
  %i.abm = trunc nuw i32 %i.abl to i16
  %i.abn = and i16 %i.abm, 4095                   ; 2 uses
  store i16 %i.abn, ptr %i.f, align 2, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %i.abo = load i32, ptr %i.a, align 4, !tbaa !77
  %i.abp = lshr i32 %i.abo, 16
  %i.abq = trunc nuw i32 %i.abp to i16
  %i.abr = and i16 %i.abq, 4095                   ; 2 uses
  store i16 %i.abr, ptr %i.g, align 2, !tbaa !110
  %i.abs = icmp eq i16 %i.abn, %i.abr
end_hunk_0
begin_hunk_1_@_ZN32ReservedBits_DisabledEntity_Test8TestBodyEv:bb.a
  %i.agq = icmp eq ptr %i.ago, %i.agp
  br i1 %i.agq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i957, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i956

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i956: ; preds = %bb.ht
  %i.agr = load i64, ptr %i.agp, align 8, !tbaa !37
  %i.ags = add i64 %i.agr, 1
  call void @_ZdlPvm(ptr noundef %i.ago, i64 noundef %i.ags) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i957

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i957: ; preds = %bb.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i956
  call void @_ZdlPvm(ptr noundef nonnull %i.agn, i64 noundef 32) #22
  br label %bb.hu

bb.hu:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i957, %.critedge500
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #21
  %i.agt = load i32, ptr %i.e, align 4, !tbaa !77
  %i.agu = and i32 %i.agt, 268435456
  %.not1471 = icmp eq i32 %i.agu, 0               ; 2 uses
  %i.agv = zext i1 %.not1471 to i8
  store i8 %i.agv, ptr %65, align 8, !tbaa !260
  store ptr null, ptr %i.zt, align 8, !tbaa !261
  br i1 %.not1471, label %_ZN7testing15AssertionResultD2Ev.exit986, label %bb.hw

bb.hv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit954, %bb.hi
  %.pn344.pn.pn = phi { ptr, i32 } [ %.pn344.pn, %_ZN7testing7MessageD2Ev.exit954 ], [ %i.afs, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  br label %bb.ii

bb.hw:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %66)
          to label %bb.hx unwind label %bb.ic

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #21
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %68, ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.hy unwind label %bb.id

bb.hy:                                            ; preds = %bb.hx
  %i.agw = load ptr, ptr %68, align 8, !tbaa !94
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %67, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 73, ptr noundef %i.agw)
          to label %bb.hz unwind label %bb.ie

bb.hz:                                            ; preds = %bb.hy
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 8 dereferenceable(8) %66)
          to label %bb.ia unwind label %bb.if

bb.ia:                                            ; preds = %bb.hz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %67) #21
  %i.agx = load ptr, ptr %68, align 8, !tbaa !94  ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.agz = icmp eq ptr %i.agx, %i.agy
  br i1 %i.agz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i960

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i960: ; preds = %bb.ia
  %i.aha = load i64, ptr %i.agy, align 8, !tbaa !37
  %i.ahb = add i64 %i.aha, 1
  call void @_ZdlPvm(ptr noundef %i.agx, i64 noundef %i.ahb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962: ; preds = %bb.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i960
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  %i.ahc = load ptr, ptr %66, align 8, !tbaa !96  ; 3 uses
  %.not.i.i963 = icmp eq ptr %i.ahc, null
  br i1 %.not.i.i963, label %_ZN7testing7MessageD2Ev.exit965, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i964

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i964: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !25
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahf = load ptr, ptr %i.ahe, align 8
  call void %i.ahf(ptr noundef nonnull align 8 dereferenceable(128) %i.ahc) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit965

_ZN7testing7MessageD2Ev.exit965:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i964
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  %i.ahg = load ptr, ptr %i.zt, align 8, !tbaa !97 ; 4 uses
  %.not.i.i966 = icmp eq ptr %i.ahg, null
  br i1 %.not.i.i966, label %_ZN7testing15AssertionResultD2Ev.exit970, label %bb.ib

bb.ib:                                            ; preds = %_ZN7testing7MessageD2Ev.exit965
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !94 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16 ; 2 uses
  %i.ahj = icmp eq ptr %i.ahh, %i.ahi
  br i1 %i.ahj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i968, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i967

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i967: ; preds = %bb.ib
  %i.ahk = load i64, ptr %i.ahi, align 8, !tbaa !37
  %i.ahl = add i64 %i.ahk, 1
  call void @_ZdlPvm(ptr noundef %i.ahh, i64 noundef %i.ahl) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i968

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i968: ; preds = %bb.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i967
  call void @_ZdlPvm(ptr noundef nonnull %i.ahg, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit970

_ZN7testing15AssertionResultD2Ev.exit970:         ; preds = %_ZN7testing7MessageD2Ev.exit965, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i968
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  br label %bb.ih

bb.ic:                                            ; preds = %bb.hw
  %i.ahm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit976

bb.id:                                            ; preds = %bb.hx
  %i.ahn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973

bb.ie:                                            ; preds = %bb.hy
  %i.aho = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

bb.if:                                            ; preds = %bb.hz
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %67) #21
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.pn348 = phi { ptr, i32 } [ %i.ahp, %bb.if ], [ %i.aho, %bb.ie ] ; 2 uses
  %i.ahq = load ptr, ptr %68, align 8, !tbaa !94  ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.ahs = icmp eq ptr %i.ahq, %i.ahr
  br i1 %i.ahs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971: ; preds = %bb.ig
  %i.aht = load i64, ptr %i.ahr, align 8, !tbaa !37
  %i.ahu = add i64 %i.aht, 1
  call void @_ZdlPvm(ptr noundef %i.ahq, i64 noundef %i.ahu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973: ; preds = %bb.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971, %bb.id
  %.pn348.pn = phi { ptr, i32 } [ %i.ahn, %bb.id ], [ %.pn348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971 ], [ %.pn348, %bb.ig ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  %i.ahv = load ptr, ptr %66, align 8, !tbaa !96  ; 3 uses
  %.not.i.i974 = icmp eq ptr %i.ahv, null
  br i1 %.not.i.i974, label %_ZN7testing7MessageD2Ev.exit976, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i975

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i975: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !25
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8
  %i.ahy = load ptr, ptr %i.ahx, align 8
  call void %i.ahy(ptr noundef nonnull align 8 dereferenceable(128) %i.ahv) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit976

_ZN7testing7MessageD2Ev.exit976:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i975, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973, %bb.ic
  %.pn348.pn.pn = phi { ptr, i32 } [ %i.ahm, %bb.ic ], [ %.pn348.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973 ], [ %.pn348.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i975 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %65) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  br label %bb.ii

_ZN7testing15AssertionResultD2Ev.exit981:         ; preds = %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  br label %.critedge504

_ZN7testing15AssertionResultD2Ev.exit986:         ; preds = %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  br label %.critedge504

.critedge504:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit986, %_ZN7testing15AssertionResultD2Ev.exit981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  %i.ahz = load i64, ptr %i.zn, align 8, !tbaa !106
  %i.aia = add nsw i64 %i.ahz, -1
  store i64 %i.aia, ptr %i.zn, align 8, !tbaa !106
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %47)
  %i.aib = load i64, ptr %i.zn, align 8, !tbaa !106 ; 2 uses
  %i.aic = load i64, ptr %i.zo, align 8, !tbaa !106
  %i.aid = icmp eq i64 %i.aib, %i.aic
  br i1 %i.aid, label %._crit_edge, label %bb.ew

bb.ih:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit970, %_ZN7testing15AssertionResultD2Ev.exit951, %_ZN7testing15AssertionResultD2Ev.exit930, %_ZN7testing15AssertionResultD2Ev.exit912, %_ZN7testing15AssertionResultD2Ev.exit893, %_ZN7testing15AssertionResultD2Ev.exit873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %bb.uk

bb.ii:                                            ; preds = %_ZN7testing7MessageD2Ev.exit976, %bb.hv, %bb.hh, %_ZN7testing7MessageD2Ev.exit918, %bb.gd, %bb.fp
  %.pn360.pn.pn.pn = phi { ptr, i32 } [ %.pn360.pn.pn, %_ZN7testing7MessageD2Ev.exit918 ], [ %.pn356.pn.pn, %bb.gd ], [ %.pn352.pn.pn, %bb.fp ], [ %.pn348.pn.pn, %_ZN7testing7MessageD2Ev.exit976 ], [ %.pn344.pn.pn, %bb.hv ], [ %.pn340.pn.pn, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %.critedge504, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit860
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  %i.aie = load i64, ptr %i.af, align 16, !tbaa !44
  %.not.i.i.i987 = icmp eq i64 %i.aie, 2          ; 2 uses
  %i.aif = select i1 %.not.i.i.i987, i64 2, i64 1
  store i64 %i.aif, ptr %i.af, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  br i1 %.not.i.i.i987, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit995.thread, label %bb.ij

bb.ij:                                            ; preds = %._crit_edge
  %i.aig = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !45, !noalias !269 ; 5 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 32 ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 64
  %i.aij = load i8, ptr %i.aii, align 8, !tbaa !98, !noalias !269
  %i.aik = icmp eq i8 %i.aij, 2
  br i1 %i.aik, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aig, i64 72
  %i.aim = load i64, ptr %i.ail, align 8, !tbaa !99, !noalias !269
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit.i989

bb.il:                                            ; preds = %bb.ij
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aig, i64 40
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !47, !noalias !269
  %i.aip = load ptr, ptr %i.aih, align 8, !tbaa !48, !noalias !269
  %i.aiq = ptrtoint ptr %i.aio to i64
  %i.air = ptrtoint ptr %i.aip to i64
  %i.ais = sub i64 %i.aiq, %i.air
  %i.ait = ashr exact i64 %i.ais, 2
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit.i989

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit995.thread: ; preds = %._crit_edge
  %173 = getelementptr inbounds nuw i8, ptr %70, i64 40
  store i64 0, ptr %173, align 8, !tbaa !103, !alias.scope !269
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %70, i8 0, i64 32, i1 false), !alias.scope !269
  br label %bb.in

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit.i989: ; preds = %bb.ik, %bb.il
  %i.aiu = phi i64 [ %i.aim, %bb.ik ], [ %i.ait, %bb.il ]
  %.sroa.01.0.copyload.i990 = load ptr, ptr %9, align 16, !noalias !269
  store ptr %i.aih, ptr %70, align 8, !tbaa !104, !alias.scope !269
  %.sroa.23.0..sroa_idx.i.i993 = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i64 %i.aiu, ptr %.sroa.23.0..sroa_idx.i.i993, align 8, !tbaa !105, !alias.scope !269
  %i.aiv = getelementptr inbounds nuw i8, ptr %70, i64 16
  store ptr %.sroa.01.0.copyload.i990, ptr %i.aiv, align 8, !alias.scope !269
  %.sroa.2.0..sroa_idx.i.i994 = getelementptr inbounds nuw i8, ptr %70, i64 24
  store ptr %i.aig, ptr %.sroa.2.0..sroa_idx.i.i994, align 8, !tbaa !37, !alias.scope !269
  %i.aiw = getelementptr inbounds nuw i8, ptr %70, i64 40
  store i64 1, ptr %i.aiw, align 8, !tbaa !103, !alias.scope !269
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %70)
  %.pre1537 = load i64, ptr %i.af, align 16, !tbaa !44, !noalias !270 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %.not.i996 = icmp eq i64 %.pre1537, 2
  br i1 %.not.i996, label %bb.in, label %bb.im

bb.im:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit.i989
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.pre1537
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !45, !noalias !270
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 32
  store ptr %i.aiz, ptr %71, align 8, !tbaa !104, !alias.scope !270
  %.sroa.23.0..sroa_idx.i.i1000 = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.23.0..sroa_idx.i.i1000, align 8, !tbaa !105, !alias.scope !270
  %i.aja = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.ajb = load <2 x ptr>, ptr %9, align 16, !noalias !270
  store <2 x ptr> %i.ajb, ptr %i.aja, align 8, !alias.scope !270
  %i.ajc = getelementptr inbounds nuw i8, ptr %71, i64 40
  store i64 %.pre1537, ptr %i.ajc, align 8, !tbaa !103, !alias.scope !270
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %71)
  %.sroa.41423.0.copyload.pre = load i64, ptr %.sroa.23.0..sroa_idx.i.i1000, align 8
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit1002

bb.in:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit995.thread, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit.i989
  %i.ajd = getelementptr inbounds nuw i8, ptr %71, i64 40
  store i64 0, ptr %i.ajd, align 8, !tbaa !103, !alias.scope !270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %71, i8 0, i64 32, i1 false), !alias.scope !270
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit1002

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit1002: ; preds = %bb.im, %bb.in
  %.sroa.41423.0.copyload = phi i64 [ %.sroa.41423.0.copyload.pre, %bb.im ], [ 0, %bb.in ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %70, i64 48, i1 false)
  %i.aje = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !106 ; 2 uses
  %i.ajg = icmp eq i64 %i.ajf, %.sroa.41423.0.copyload
  br i1 %i.ajg, label %.thread1462, label %.lr.ph.i1003

.thread1462:                                      ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit1002
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 0, ptr %i.j, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  store i32 2, ptr %i.k, align 4, !tbaa !107
  br label %bb.iq

.lr.ph.i1003:                                     ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit1002, %.lr.ph.i1003
  %i.ajh = phi i64 [ %i.ajk, %.lr.ph.i1003 ], [ %i.ajf, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit1002 ]
  %.02.i1004 = phi i64 [ %i.ajj, %.lr.ph.i1003 ], [ 0, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit1002 ]
  %i.aji = add nsw i64 %i.ajh, -1
  store i64 %i.aji, ptr %i.aje, align 8, !tbaa !106
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
  %i.ajj = add nuw nsw i64 %.02.i1004, 1          ; 3 uses
  %i.ajk = load i64, ptr %i.aje, align 8, !tbaa !106 ; 2 uses
  %i.ajl = icmp eq i64 %i.ajk, %.sroa.41423.0.copyload
  br i1 %i.ajl, label %bb.io, label %.lr.ph.i1003, !llvm.loop !229

bb.io:                                            ; preds = %.lr.ph.i1003
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %i.ajj, ptr %i.j, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  store i32 2, ptr %i.k, align 4, !tbaa !107
  %i.ajm = icmp eq i64 %i.ajj, 2
  br i1 %i.ajm, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %69)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1009 unwind label %bb.ir

bb.iq:                                            ; preds = %.thread1462, %bb.io
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %69, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1009 unwind label %bb.ir

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1009: ; preds = %bb.ip, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  %i.ajn = load i8, ptr %69, align 8, !tbaa !260, !range !264, !noundef !265
  %i.ajo = trunc nuw i8 %i.ajn to i1
  br i1 %i.ajo, label %.critedge508, label %bb.is

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %i.ajp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  br label %bb.jj

bb.is:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1009
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %72)
          to label %bb.it unwind label %bb.iy

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #21
  %i.ajq = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i1010 = icmp eq ptr %i.ajr, null
  br i1 %.not.i.i.i1010, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1011, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !94
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1011

_ZNK7testing15AssertionResult15failure_messageEv.exit1011: ; preds = %bb.iu, %bb.it
  %i.ajt = phi ptr [ %i.ajs, %bb.iu ], [ @.str.27, %bb.it ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %73, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 79, ptr noundef %i.ajt)
          to label %bb.iv unwind label %bb.iz

bb.iv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1011
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef nonnull align 8 dereferenceable(8) %72)
          to label %bb.iw unwind label %bb.ja

bb.iw:                                            ; preds = %bb.iv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #21
  %i.aju = load ptr, ptr %72, align 8, !tbaa !96  ; 3 uses
  %.not.i.i1012 = icmp eq ptr %i.aju, null
  br i1 %.not.i.i1012, label %_ZN7testing7MessageD2Ev.exit1014, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1013

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1013: ; preds = %bb.iw
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !25
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 8
  %i.ajx = load ptr, ptr %i.ajw, align 8
  call void %i.ajx(ptr noundef nonnull align 8 dereferenceable(128) %i.aju) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1014

_ZN7testing7MessageD2Ev.exit1014:                 ; preds = %bb.iw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1013
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #21
  %i.ajy = load ptr, ptr %i.ajq, align 8, !tbaa !97 ; 4 uses
  %.not.i.i1015 = icmp eq ptr %i.ajy, null
  br i1 %.not.i.i1015, label %_ZN7testing15AssertionResultD2Ev.exit1019, label %bb.ix

bb.ix:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1014
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !94 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajy, i64 16 ; 2 uses
  %i.akb = icmp eq ptr %i.ajz, %i.aka
  br i1 %i.akb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1017, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1016

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1016: ; preds = %bb.ix
  %i.akc = load i64, ptr %i.aka, align 8, !tbaa !37
  %i.akd = add i64 %i.akc, 1
  call void @_ZdlPvm(ptr noundef %i.ajz, i64 noundef %i.akd) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1017

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1017: ; preds = %bb.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1016
  call void @_ZdlPvm(ptr noundef nonnull %i.ajy, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit1019

_ZN7testing15AssertionResultD2Ev.exit1019:        ; preds = %_ZN7testing7MessageD2Ev.exit1014, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1017
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  br label %bb.uk

bb.iy:                                            ; preds = %bb.is
  %i.ake = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1022

bb.iz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1011
  %i.akf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iv
  %i.akg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #21
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %.pn367 = phi { ptr, i32 } [ %i.akg, %bb.ja ], [ %i.akf, %bb.iz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #21
  %i.akh = load ptr, ptr %72, align 8, !tbaa !96  ; 3 uses
  %.not.i.i1020 = icmp eq ptr %i.akh, null
  br i1 %.not.i.i1020, label %_ZN7testing7MessageD2Ev.exit1022, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1021

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1021: ; preds = %bb.jb
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !25
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 8
  %i.akk = load ptr, ptr %i.akj, align 8
  call void %i.akk(ptr noundef nonnull align 8 dereferenceable(128) %i.akh) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1022

_ZN7testing7MessageD2Ev.exit1022:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1021, %bb.jb, %bb.iy
  %.pn367.pn = phi { ptr, i32 } [ %i.ake, %bb.iy ], [ %.pn367, %bb.jb ], [ %.pn367, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1021 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %69) #21
  br label %bb.jj

.critedge508:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1009
  %i.akl = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !97 ; 4 uses
  %.not.i.i1023 = icmp eq ptr %i.akm, null
  br i1 %.not.i.i1023, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %.critedge508
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !94 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akm, i64 16 ; 2 uses
  %i.akp = icmp eq ptr %i.akn, %i.ako
  br i1 %i.akp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1025, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1024

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1024: ; preds = %bb.jc
  %i.akq = load i64, ptr %i.ako, align 8, !tbaa !37
  %i.akr = add i64 %i.akq, 1
  call void @_ZdlPvm(ptr noundef %i.akn, i64 noundef %i.akr) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1025

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1025: ; preds = %bb.jc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1024
  call void @_ZdlPvm(ptr noundef nonnull %i.akm, i64 noundef 32) #22
  br label %bb.jd

bb.jd:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1025, %.critedge508
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.aks = load i64, ptr %i.af, align 16, !tbaa !44, !noalias !271 ; 3 uses
  %.not.i1028 = icmp eq i64 %i.aks, 2
  br i1 %.not.i1028, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit1035.thread, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.aks
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !45, !noalias !271 ; 4 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 32 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aku, i64 64
  %i.akx = load i8, ptr %i.akw, align 8, !tbaa !98, !noalias !271
  %i.aky = icmp eq i8 %i.akx, 2
  br i1 %i.aky, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aku, i64 72
  %i.ala = load i64, ptr %i.akz, align 8, !tbaa !99, !noalias !271
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit1035

bb.jg:                                            ; preds = %bb.je
  %i.alb = getelementptr inbounds nuw i8, ptr %i.aku, i64 40
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !47, !noalias !271
  %i.ald = load ptr, ptr %i.akv, align 8, !tbaa !48, !noalias !271
  %i.ale = ptrtoint ptr %i.alc to i64
  %i.alf = ptrtoint ptr %i.ald to i64
  %i.alg = sub i64 %i.ale, %i.alf
  %i.alh = ashr exact i64 %i.alg, 2
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit1035

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit1035.thread: ; preds = %bb.jd
  %i.ali = getelementptr inbounds nuw i8, ptr %74, i64 40
  store i64 0, ptr %i.ali, align 8, !tbaa !103, !alias.scope !271
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %74, i8 0, i64 32, i1 false), !alias.scope !271
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #21
  br label %bb.ji

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit1035: ; preds = %bb.jf, %bb.jg
  %i.alj = phi i64 [ %i.ala, %bb.jf ], [ %i.alh, %bb.jg ]
  store ptr %i.akv, ptr %74, align 8, !tbaa !104, !alias.scope !271
  %.sroa.23.0..sroa_idx.i.i1033 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store i64 %i.alj, ptr %.sroa.23.0..sroa_idx.i.i1033, align 8, !tbaa !105, !alias.scope !271
  %i.alk = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.all = load <2 x ptr>, ptr %9, align 16, !noalias !271
  store <2 x ptr> %i.all, ptr %i.alk, align 8, !alias.scope !271
  %i.alm = getelementptr inbounds nuw i8, ptr %74, i64 40
  store i64 %i.aks, ptr %i.alm, align 8, !tbaa !103, !alias.scope !271
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %74)
  %.pre1539 = load i64, ptr %i.af, align 16, !tbaa !44, !noalias !272 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %.not.i1036 = icmp eq i64 %.pre1539, 2
  br i1 %.not.i1036, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit1035
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.pre1539
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !45, !noalias !272
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 32
  store ptr %i.alp, ptr %75, align 8, !tbaa !104, !alias.scope !272
  %.sroa.23.0..sroa_idx.i.i1040 = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.23.0..sroa_idx.i.i1040, align 8, !tbaa !105, !alias.scope !272
  %i.alq = getelementptr inbounds nuw i8, ptr %75, i64 16
  %i.alr = load <2 x ptr>, ptr %9, align 16, !noalias !272
  store <2 x ptr> %i.alr, ptr %i.alq, align 8, !alias.scope !272
  %i.als = getelementptr inbounds nuw i8, ptr %75, i64 40
  store i64 %.pre1539, ptr %i.als, align 8, !tbaa !103, !alias.scope !272
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %75)
  %.pre1541 = load i64, ptr %.sroa.23.0..sroa_idx.i.i1040, align 8, !tbaa !106
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit1042

bb.ji:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit1035.thread, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv.exit1035
  %i.alt = getelementptr inbounds nuw i8, ptr %75, i64 40
  store i64 0, ptr %i.alt, align 8, !tbaa !103, !alias.scope !272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %75, i8 0, i64 32, i1 false), !alias.scope !272
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit1042

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit1042: ; preds = %bb.jh, %bb.ji
  %i.alu = phi i64 [ %.pre1541, %bb.jh ], [ 0, %bb.ji ]
  %i.alv = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 3 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.alx = load i64, ptr %i.alv, align 8, !tbaa !106 ; 2 uses
  %i.aly = icmp eq i64 %i.alx, %i.alu
  br i1 %i.aly, label %._crit_edge1517, label %.lr.ph1516

.lr.ph1516:                                       ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit1042
  %i.alz = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  br label %bb.jk

bb.jj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1022, %bb.ir
  %.pn367.pn.pn = phi { ptr, i32 } [ %.pn367.pn, %_ZN7testing7MessageD2Ev.exit1022 ], [ %i.ajp, %bb.ir ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  br label %.loopexit.split-lp

bb.jk:                                            ; preds = %.lr.ph1516, %bb.jw
  %i.ama = phi i64 [ %i.alx, %.lr.ph1516 ], [ %i.anm, %bb.jw ] ; 2 uses
  %i.amb = load ptr, ptr %74, align 8, !tbaa !108
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !48
  %i.amd = getelementptr [4 x i8], ptr %i.amc, i64 %i.ama
  %i.ame = getelementptr i8, ptr %i.amd, i64 -4
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #21
  %i.amg = and i32 %i.amf, 268435456
  %.not1474 = icmp eq i32 %i.amg, 0               ; 2 uses
  %i.amh = zext i1 %.not1474 to i8
  store i8 %i.amh, ptr %76, align 8, !tbaa !260
  store ptr null, ptr %i.alz, align 8, !tbaa !261
  br i1 %.not1474, label %bb.jw, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.jm unwind label %bb.jr

bb.jm:                                            ; preds = %bb.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #21
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr noundef nonnull align 8 dereferenceable(16) %76, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.jn unwind label %bb.js

bb.jn:                                            ; preds = %bb.jm
  %i.ami = load ptr, ptr %79, align 8, !tbaa !94
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %78, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 82, ptr noundef %i.ami)
          to label %bb.jo unwind label %bb.jt

bb.jo:                                            ; preds = %bb.jn
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.jp unwind label %bb.ju

bb.jp:                                            ; preds = %bb.jo
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #21
  %i.amj = load ptr, ptr %79, align 8, !tbaa !94  ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.aml = icmp eq ptr %i.amj, %i.amk
  br i1 %i.aml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1045, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1043

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1043: ; preds = %bb.jp
  %i.amm = load i64, ptr %i.amk, align 8, !tbaa !37
  %i.amn = add i64 %i.amm, 1
  call void @_ZdlPvm(ptr noundef %i.amj, i64 noundef %i.amn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1045

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1045: ; preds = %bb.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1043
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #21
  %i.amo = load ptr, ptr %77, align 8, !tbaa !96  ; 3 uses
  %.not.i.i1046 = icmp eq ptr %i.amo, null
  br i1 %.not.i.i1046, label %_ZN7testing7MessageD2Ev.exit1048, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1047

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1047: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1045
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !25
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 8
  %i.amr = load ptr, ptr %i.amq, align 8
  call void %i.amr(ptr noundef nonnull align 8 dereferenceable(128) %i.amo) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1048

_ZN7testing7MessageD2Ev.exit1048:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1045, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1047
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #21
  %i.ams = load ptr, ptr %i.alz, align 8, !tbaa !97 ; 4 uses
  %.not.i.i1049 = icmp eq ptr %i.ams, null
  br i1 %.not.i.i1049, label %bb.jx, label %bb.jq

bb.jq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1048
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !94 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ams, i64 16 ; 2 uses
  %i.amv = icmp eq ptr %i.amt, %i.amu
  br i1 %i.amv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1051, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1050

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1050: ; preds = %bb.jq
  %i.amw = load i64, ptr %i.amu, align 8, !tbaa !37
  %i.amx = add i64 %i.amw, 1
  call void @_ZdlPvm(ptr noundef %i.amt, i64 noundef %i.amx) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1051

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1051: ; preds = %bb.jq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1050
  call void @_ZdlPvm(ptr noundef nonnull %i.ams, i64 noundef 32) #22
  br label %bb.jx

bb.jr:                                            ; preds = %bb.jl
  %i.amy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1059

bb.js:                                            ; preds = %bb.jm
  %i.amz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056

bb.jt:                                            ; preds = %bb.jn
  %i.ana = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.ju:                                            ; preds = %bb.jo
  %i.anb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #21
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %.pn371 = phi { ptr, i32 } [ %i.anb, %bb.ju ], [ %i.ana, %bb.jt ] ; 2 uses
  %i.anc = load ptr, ptr %79, align 8, !tbaa !94  ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.ane = icmp eq ptr %i.anc, %i.and
  br i1 %i.ane, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054: ; preds = %bb.jv
  %i.anf = load i64, ptr %i.and, align 8, !tbaa !37
  %i.ang = add i64 %i.anf, 1
  call void @_ZdlPvm(ptr noundef %i.anc, i64 noundef %i.ang) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056: ; preds = %bb.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054, %bb.js
  %.pn371.pn = phi { ptr, i32 } [ %i.amz, %bb.js ], [ %.pn371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054 ], [ %.pn371, %bb.jv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #21
  %i.anh = load ptr, ptr %77, align 8, !tbaa !96  ; 3 uses
  %.not.i.i1057 = icmp eq ptr %i.anh, null
  br i1 %.not.i.i1057, label %_ZN7testing7MessageD2Ev.exit1059, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1058

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1058: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !25
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %i.ank = load ptr, ptr %i.anj, align 8
  call void %i.ank(ptr noundef nonnull align 8 dereferenceable(128) %i.anh) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1059

_ZN7testing7MessageD2Ev.exit1059:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1058, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056, %bb.jr
  %.pn371.pn.pn = phi { ptr, i32 } [ %i.amy, %bb.jr ], [ %.pn371.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056 ], [ %.pn371.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1058 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #21
  br label %.loopexit.split-lp

bb.jw:                                            ; preds = %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #21
  %i.anl = add nsw i64 %i.ama, -1
  store i64 %i.anl, ptr %i.alv, align 8, !tbaa !106
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %74)
  %i.anm = load i64, ptr %i.alv, align 8, !tbaa !106 ; 2 uses
  %i.ann = load i64, ptr %i.alw, align 8, !tbaa !106
  %i.ano = icmp eq i64 %i.anm, %i.ann
  br i1 %i.ano, label %._crit_edge1517, label %bb.jk

bb.jx:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1051, %_ZN7testing7MessageD2Ev.exit1048
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #21
  br label %bb.uk

._crit_edge1517:                                  ; preds = %bb.jw, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv.exit1042
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #21
  %i.anp = load i32, ptr %i.a, align 4, !tbaa !77 ; 3 uses
  %i.anq = and i32 %i.anp, 65535
  %i.anr = zext nneg i32 %i.anq to i64            ; 2 uses
  %i.ans = lshr i64 %i.anr, 12
  %i.ant = load ptr, ptr %i.ds, align 8, !tbaa !88
  %i.anu = getelementptr inbounds nuw [8 x i8], ptr %i.ant, i64 %i.ans
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !89
  %i.anw = and i64 %i.anr, 4095
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.anw ; 2 uses
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !77
  %i.anz = and i32 %i.any, 65535                  ; 2 uses
  %i.aoa = and i32 %i.anp, 268369920
  %i.aob = or disjoint i32 %i.anz, %i.aoa
  store i32 %i.aob, ptr %i.anx, align 4, !tbaa !77
  %i.aoc = zext nneg i32 %i.anz to i64
  %i.aod = load ptr, ptr %.pn6.i, align 8, !tbaa !48
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %i.aoc
  store i32 %i.anp, ptr %i.aoe, align 4, !tbaa !77
  %i.aof = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %8, i32 noundef -1779859874)
end_hunk_1
begin_hunk_2_@_ZN32ReservedBits_DisabledEntity_Test8TestBodyEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1117: ; preds = %bb.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1115, %bb.lf
  %.pn383.pn = phi { ptr, i32 } [ %i.atv, %bb.lf ], [ %.pn383, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1115 ], [ %.pn383, %bb.li ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #21
  %i.aud = load ptr, ptr %89, align 8, !tbaa !96  ; 3 uses
  %.not.i.i1118 = icmp eq ptr %i.aud, null
  br i1 %.not.i.i1118, label %_ZN7testing7MessageD2Ev.exit1120, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1119

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1117
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !25
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 8
  %i.aug = load ptr, ptr %i.auf, align 8
  call void %i.aug(ptr noundef nonnull align 8 dereferenceable(128) %i.aud) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1120

_ZN7testing7MessageD2Ev.exit1120:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1117, %bb.le
  %.pn383.pn.pn = phi { ptr, i32 } [ %i.atu, %bb.le ], [ %.pn383.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1117 ], [ %.pn383.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %88) #21
  br label %bb.lk

bb.lj:                                            ; preds = %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit1108
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %88) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #21
  %i.auh = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %8, i32 noundef -1779859874)
          to label %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit1122 unwind label %bb.ll

_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit1122: ; preds = %bb.lj
  %i.aui = load i32, ptr %i.b, align 4, !tbaa !77
  %i.auj = call { ptr, i64 } @_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4findES2_(ptr noundef nonnull align 8 dereferenceable(80) %i.auh, i32 noundef %i.aui) #21 ; 2 uses
  %i.auk = extractvalue { ptr, i64 } %i.auj, 0
  %i.aul = extractvalue { ptr, i64 } %i.auj, 1
  %i.aum = load ptr, ptr %i.auk, align 8, !tbaa !48
  %i.aun = getelementptr [4 x i8], ptr %i.aum, i64 %i.aul
  %i.auo = getelementptr i8, ptr %i.aun, i64 -4
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !77
  %i.auq = and i32 %i.aup, 268435456              ; 2 uses
  %.not1479 = icmp eq i32 %i.auq, 0
  %.lobit1478 = lshr exact i32 %i.auq, 28
  %i.aur = trunc nuw nsw i32 %.lobit1478 to i8
  store i8 %i.aur, ptr %92, align 8, !tbaa !260
  %i.aus = getelementptr inbounds nuw i8, ptr %92, i64 8
  store ptr null, ptr %i.aus, align 8, !tbaa !261
  br i1 %.not1479, label %bb.lm, label %bb.lw

bb.lk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1120, %bb.ky
  %.pn383.pn.pn.pn = phi { ptr, i32 } [ %.pn383.pn.pn, %_ZN7testing7MessageD2Ev.exit1120 ], [ %i.atj, %bb.ky ]
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #21
  br label %.loopexit.split-lp

bb.ll:                                            ; preds = %bb.lj
  %i.aut = landingpad { ptr, i32 }
          cleanup
  br label %bb.ly

bb.lm:                                            ; preds = %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit1122
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %93)
          to label %bb.ln unwind label %bb.lr

bb.ln:                                            ; preds = %bb.lm
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #21
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %95, ptr noundef nonnull align 8 dereferenceable(16) %92, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.lo unwind label %bb.ls

bb.lo:                                            ; preds = %bb.ln
  %i.auu = load ptr, ptr %95, align 8, !tbaa !94
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %94, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 92, ptr noundef %i.auu)
          to label %bb.lp unwind label %bb.lt

bb.lp:                                            ; preds = %bb.lo
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull align 8 dereferenceable(8) %93)
          to label %bb.lq unwind label %bb.lu

bb.lq:                                            ; preds = %bb.lp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %94) #21
  %i.auv = load ptr, ptr %95, align 8, !tbaa !94  ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 2 uses
  %i.aux = icmp eq ptr %i.auv, %i.auw
  br i1 %i.aux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1123: ; preds = %bb.lq
  %i.auy = load i64, ptr %i.auw, align 8, !tbaa !37
  %i.auz = add i64 %i.auy, 1
  call void @_ZdlPvm(ptr noundef %i.auv, i64 noundef %i.auz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1125: ; preds = %bb.lq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1123
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #21
  %i.ava = load ptr, ptr %93, align 8, !tbaa !96  ; 3 uses
  %.not.i.i1126 = icmp eq ptr %i.ava, null
  br i1 %.not.i.i1126, label %_ZN7testing7MessageD2Ev.exit1128, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1127

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1125
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !25
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  %i.avd = load ptr, ptr %i.avc, align 8
  call void %i.avd(ptr noundef nonnull align 8 dereferenceable(128) %i.ava) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1128

_ZN7testing7MessageD2Ev.exit1128:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1125, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1127
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %92) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #21
  br label %bb.uk

bb.lr:                                            ; preds = %bb.lm
  %i.ave = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1134

bb.ls:                                            ; preds = %bb.ln
  %i.avf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1131

bb.lt:                                            ; preds = %bb.lo
  %i.avg = landingpad { ptr, i32 }
          cleanup
  br label %bb.lv

bb.lu:                                            ; preds = %bb.lp
  %i.avh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %94) #21
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %.pn388 = phi { ptr, i32 } [ %i.avh, %bb.lu ], [ %i.avg, %bb.lt ] ; 2 uses
  %i.avi = load ptr, ptr %95, align 8, !tbaa !94  ; 2 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 2 uses
  %i.avk = icmp eq ptr %i.avi, %i.avj
  br i1 %i.avk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1129: ; preds = %bb.lv
  %i.avl = load i64, ptr %i.avj, align 8, !tbaa !37
  %i.avm = add i64 %i.avl, 1
  call void @_ZdlPvm(ptr noundef %i.avi, i64 noundef %i.avm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1131: ; preds = %bb.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1129, %bb.ls
  %.pn388.pn = phi { ptr, i32 } [ %i.avf, %bb.ls ], [ %.pn388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1129 ], [ %.pn388, %bb.lv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #21
  %i.avn = load ptr, ptr %93, align 8, !tbaa !96  ; 3 uses
  %.not.i.i1132 = icmp eq ptr %i.avn, null
  br i1 %.not.i.i1132, label %_ZN7testing7MessageD2Ev.exit1134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1131
  %i.avo = load ptr, ptr %i.avn, align 8, !tbaa !25
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 8
  %i.avq = load ptr, ptr %i.avp, align 8
  call void %i.avq(ptr noundef nonnull align 8 dereferenceable(128) %i.avn) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1134

_ZN7testing7MessageD2Ev.exit1134:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1131, %bb.lr
  %.pn388.pn.pn = phi { ptr, i32 } [ %i.ave, %bb.lr ], [ %.pn388.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1131 ], [ %.pn388.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %92) #21
  br label %bb.ly

bb.lw:                                            ; preds = %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit1122
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %92) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #21
  %i.avr = load i64, ptr %i.af, align 16, !tbaa !44
  %.not.i.i.i1135 = icmp eq i64 %i.avr, 2
  %i.avs = select i1 %.not.i.i.i1135, i64 2, i64 0
  store i64 %i.avs, ptr %i.af, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %97, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %98, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  %.sroa.41432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %98, i64 8
  %.sroa.41432.0.copyload = load i64, ptr %.sroa.41432.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %97, i64 48, i1 false)
  %i.avt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.avu = load i64, ptr %i.avt, align 8, !tbaa !106 ; 2 uses
  %i.avv = icmp eq i64 %i.avu, %.sroa.41432.0.copyload
  br i1 %i.avv, label %.loopexit1493, label %.lr.ph.i1136

.lr.ph.i1136:                                     ; preds = %bb.lw, %.lr.ph.i1136
  %i.avw = phi i64 [ %i.avz, %.lr.ph.i1136 ], [ %i.avu, %bb.lw ]
  %.02.i1137 = phi i64 [ %i.avy, %.lr.ph.i1136 ], [ 0, %bb.lw ]
  %i.avx = add nsw i64 %i.avw, -1
  store i64 %i.avx, ptr %i.avt, align 8, !tbaa !106
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.avy = add nuw nsw i64 %.02.i1137, 1          ; 2 uses
  %i.avz = load i64, ptr %i.avt, align 8, !tbaa !106 ; 2 uses
  %i.awa = icmp eq i64 %i.avz, %.sroa.41432.0.copyload
  br i1 %i.awa, label %.loopexit1493, label %.lr.ph.i1136, !llvm.loop !229

.loopexit1493:                                    ; preds = %.lr.ph.i1136, %bb.lw
  %.0.lcssa.i1138 = phi i64 [ 0, %bb.lw ], [ %i.avy, %.lr.ph.i1136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %.0.lcssa.i1138, ptr %i.l, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #21
  store i32 2, ptr %i.m, align 4, !tbaa !107
  invoke void @_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %96, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %bb.lx unwind label %bb.lz

bb.lx:                                            ; preds = %.loopexit1493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  %i.awb = load i8, ptr %96, align 8, !tbaa !260, !range !264, !noundef !265
  %i.awc = trunc nuw i8 %i.awb to i1
  br i1 %i.awc, label %bb.mj, label %bb.ma

bb.ly:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1134, %bb.ll
  %.pn388.pn.pn.pn = phi { ptr, i32 } [ %.pn388.pn.pn, %_ZN7testing7MessageD2Ev.exit1134 ], [ %i.aut, %bb.ll ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #21
  br label %.loopexit.split-lp

bb.lz:                                            ; preds = %.loopexit1493
  %i.awd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  br label %bb.mk

bb.ma:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %99)
          to label %bb.mb unwind label %bb.mf

bb.mb:                                            ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #21
  %i.awe = getelementptr inbounds nuw i8, ptr %96, i64 8
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i1140 = icmp eq ptr %i.awf, null
  br i1 %.not.i.i.i1140, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1141, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !94
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1141

_ZNK7testing15AssertionResult15failure_messageEv.exit1141: ; preds = %bb.mc, %bb.mb
  %i.awh = phi ptr [ %i.awg, %bb.mc ], [ @.str.27, %bb.mb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %100, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 96, ptr noundef %i.awh)
          to label %bb.md unwind label %bb.mg

bb.md:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1141
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %100, ptr noundef nonnull align 8 dereferenceable(8) %99)
          to label %bb.me unwind label %bb.mh

bb.me:                                            ; preds = %bb.md
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %100) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #21
  %i.awi = load ptr, ptr %99, align 8, !tbaa !96  ; 3 uses
  %.not.i.i1142 = icmp eq ptr %i.awi, null
  br i1 %.not.i.i1142, label %_ZN7testing7MessageD2Ev.exit1144, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1143

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1143: ; preds = %bb.me
  %i.awj = load ptr, ptr %i.awi, align 8, !tbaa !25
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 8
  %i.awl = load ptr, ptr %i.awk, align 8
  call void %i.awl(ptr noundef nonnull align 8 dereferenceable(128) %i.awi) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1144

_ZN7testing7MessageD2Ev.exit1144:                 ; preds = %bb.me, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1143
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %96) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #21
  br label %bb.uk

bb.mf:                                            ; preds = %bb.ma
  %i.awm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1147

bb.mg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1141
  %i.awn = landingpad { ptr, i32 }
          cleanup
  br label %bb.mi

bb.mh:                                            ; preds = %bb.md
  %i.awo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %100) #21
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg
  %.pn395 = phi { ptr, i32 } [ %i.awo, %bb.mh ], [ %i.awn, %bb.mg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #21
  %i.awp = load ptr, ptr %99, align 8, !tbaa !96  ; 3 uses
  %.not.i.i1145 = icmp eq ptr %i.awp, null
  br i1 %.not.i.i1145, label %_ZN7testing7MessageD2Ev.exit1147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1146: ; preds = %bb.mi
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !25
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 8
  %i.aws = load ptr, ptr %i.awr, align 8
  call void %i.aws(ptr noundef nonnull align 8 dereferenceable(128) %i.awp) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1147

_ZN7testing7MessageD2Ev.exit1147:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1146, %bb.mi, %bb.mf
  %.pn395.pn = phi { ptr, i32 } [ %i.awm, %bb.mf ], [ %.pn395, %bb.mi ], [ %.pn395, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %96) #21
  br label %bb.mk

bb.mj:                                            ; preds = %bb.lx
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %96) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %101, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %102, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  %i.awt = getelementptr inbounds nuw i8, ptr %101, i64 8 ; 3 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %102, i64 8 ; 2 uses
  %i.awv = load i64, ptr %i.awt, align 8, !tbaa !106 ; 2 uses
  %i.aww = load i64, ptr %i.awu, align 8, !tbaa !106
  %i.awx = icmp eq i64 %i.awv, %i.aww
  br i1 %i.awx, label %._crit_edge1520, label %.lr.ph1519

.lr.ph1519:                                       ; preds = %bb.mj
  %i.awy = getelementptr inbounds nuw i8, ptr %103, i64 8 ; 2 uses
  br label %bb.ml

bb.mk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1147, %bb.lz
  %.pn395.pn.pn = phi { ptr, i32 } [ %.pn395.pn, %_ZN7testing7MessageD2Ev.exit1147 ], [ %i.awd, %bb.lz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #21
  br label %.loopexit.split-lp

bb.ml:                                            ; preds = %.lr.ph1519, %bb.mx
  %i.awz = phi i64 [ %i.awv, %.lr.ph1519 ], [ %i.ayl, %bb.mx ] ; 2 uses
  %i.axa = load ptr, ptr %101, align 8, !tbaa !108
  %i.axb = load ptr, ptr %i.axa, align 8, !tbaa !48
  %i.axc = getelementptr [4 x i8], ptr %i.axb, i64 %i.awz
  %i.axd = getelementptr i8, ptr %i.axc, i64 -4
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #21
  %i.axf = and i32 %i.axe, 268435456
  %.not1480 = icmp eq i32 %i.axf, 0               ; 2 uses
  %i.axg = zext i1 %.not1480 to i8
  store i8 %i.axg, ptr %103, align 8, !tbaa !260
  store ptr null, ptr %i.awy, align 8, !tbaa !261
  br i1 %.not1480, label %bb.mx, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %104)
          to label %bb.mn unwind label %bb.ms

bb.mn:                                            ; preds = %bb.mm
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #21
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %106, ptr noundef nonnull align 8 dereferenceable(16) %103, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.mo unwind label %bb.mt

bb.mo:                                            ; preds = %bb.mn
  %i.axh = load ptr, ptr %106, align 8, !tbaa !94
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %105, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 99, ptr noundef %i.axh)
          to label %bb.mp unwind label %bb.mu

bb.mp:                                            ; preds = %bb.mo
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull align 8 dereferenceable(8) %104)
          to label %bb.mq unwind label %bb.mv

bb.mq:                                            ; preds = %bb.mp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %105) #21
  %i.axi = load ptr, ptr %106, align 8, !tbaa !94 ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %106, i64 16 ; 2 uses
  %i.axk = icmp eq ptr %i.axi, %i.axj
  br i1 %i.axk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1148: ; preds = %bb.mq
  %i.axl = load i64, ptr %i.axj, align 8, !tbaa !37
  %i.axm = add i64 %i.axl, 1
  call void @_ZdlPvm(ptr noundef %i.axi, i64 noundef %i.axm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1150: ; preds = %bb.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1148
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #21
  %i.axn = load ptr, ptr %104, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1151 = icmp eq ptr %i.axn, null
  br i1 %.not.i.i1151, label %_ZN7testing7MessageD2Ev.exit1153, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1152

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1150
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !25
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 8
  %i.axq = load ptr, ptr %i.axp, align 8
  call void %i.axq(ptr noundef nonnull align 8 dereferenceable(128) %i.axn) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1153

_ZN7testing7MessageD2Ev.exit1153:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1150, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1152
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #21
  %i.axr = load ptr, ptr %i.awy, align 8, !tbaa !97 ; 4 uses
  %.not.i.i1154 = icmp eq ptr %i.axr, null
  br i1 %.not.i.i1154, label %bb.my, label %bb.mr

bb.mr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1153
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !94 ; 2 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axr, i64 16 ; 2 uses
  %i.axu = icmp eq ptr %i.axs, %i.axt
  br i1 %i.axu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1155: ; preds = %bb.mr
  %i.axv = load i64, ptr %i.axt, align 8, !tbaa !37
  %i.axw = add i64 %i.axv, 1
  call void @_ZdlPvm(ptr noundef %i.axs, i64 noundef %i.axw) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1156

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1156: ; preds = %bb.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1155
  call void @_ZdlPvm(ptr noundef nonnull %i.axr, i64 noundef 32) #22
  br label %bb.my

bb.ms:                                            ; preds = %bb.mm
  %i.axx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1164

bb.mt:                                            ; preds = %bb.mn
  %i.axy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161

bb.mu:                                            ; preds = %bb.mo
  %i.axz = landingpad { ptr, i32 }
          cleanup
  br label %bb.mw

bb.mv:                                            ; preds = %bb.mp
  %i.aya = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %105) #21
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %bb.mu
  %.pn399 = phi { ptr, i32 } [ %i.aya, %bb.mv ], [ %i.axz, %bb.mu ] ; 2 uses
  %i.ayb = load ptr, ptr %106, align 8, !tbaa !94 ; 2 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %106, i64 16 ; 2 uses
  %i.ayd = icmp eq ptr %i.ayb, %i.ayc
  br i1 %i.ayd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1159: ; preds = %bb.mw
  %i.aye = load i64, ptr %i.ayc, align 8, !tbaa !37
  %i.ayf = add i64 %i.aye, 1
  call void @_ZdlPvm(ptr noundef %i.ayb, i64 noundef %i.ayf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161: ; preds = %bb.mw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1159, %bb.mt
  %.pn399.pn = phi { ptr, i32 } [ %i.axy, %bb.mt ], [ %.pn399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1159 ], [ %.pn399, %bb.mw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #21
  %i.ayg = load ptr, ptr %104, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1162 = icmp eq ptr %i.ayg, null
  br i1 %.not.i.i1162, label %_ZN7testing7MessageD2Ev.exit1164, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1163

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161
  %i.ayh = load ptr, ptr %i.ayg, align 8, !tbaa !25
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 8
  %i.ayj = load ptr, ptr %i.ayi, align 8
  call void %i.ayj(ptr noundef nonnull align 8 dereferenceable(128) %i.ayg) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1164

_ZN7testing7MessageD2Ev.exit1164:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161, %bb.ms
  %.pn399.pn.pn = phi { ptr, i32 } [ %i.axx, %bb.ms ], [ %.pn399.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161 ], [ %.pn399.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %103) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #21
  br label %.loopexit.split-lp

bb.mx:                                            ; preds = %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #21
  %i.ayk = add nsw i64 %i.awz, -1
  store i64 %i.ayk, ptr %i.awt, align 8, !tbaa !106
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %101)
  %i.ayl = load i64, ptr %i.awt, align 8, !tbaa !106 ; 2 uses
  %i.aym = load i64, ptr %i.awu, align 8, !tbaa !106
  %i.ayn = icmp eq i64 %i.ayl, %i.aym
  br i1 %i.ayn, label %._crit_edge1520, label %bb.ml

bb.my:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1156, %_ZN7testing7MessageD2Ev.exit1153
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #21
  br label %bb.uk

._crit_edge1520:                                  ; preds = %bb.mx, %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #21
  %i.ayo = load i64, ptr %i.af, align 16, !tbaa !44
  %.not.i.i.i1170 = icmp eq i64 %i.ayo, 2
  %i.ayp = select i1 %.not.i.i.i1170, i64 2, i64 1
  store i64 %i.ayp, ptr %i.af, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %108, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %109, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  %.sroa.41441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %109, i64 8
  %.sroa.41441.0.copyload = load i64, ptr %.sroa.41441.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %108, i64 48, i1 false)
  %i.ayq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ayr = load i64, ptr %i.ayq, align 8, !tbaa !106 ; 2 uses
  %i.ays = icmp eq i64 %i.ayr, %.sroa.41441.0.copyload
  br i1 %i.ays, label %.loopexit1492, label %.lr.ph.i1171

.lr.ph.i1171:                                     ; preds = %._crit_edge1520, %.lr.ph.i1171
  %i.ayt = phi i64 [ %i.ayw, %.lr.ph.i1171 ], [ %i.ayr, %._crit_edge1520 ]
  %.02.i1172 = phi i64 [ %i.ayv, %.lr.ph.i1171 ], [ 0, %._crit_edge1520 ]
  %i.ayu = add nsw i64 %i.ayt, -1
  store i64 %i.ayu, ptr %i.ayq, align 8, !tbaa !106
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.ayv = add nuw nsw i64 %.02.i1172, 1          ; 2 uses
  %i.ayw = load i64, ptr %i.ayq, align 8, !tbaa !106 ; 2 uses
  %i.ayx = icmp eq i64 %i.ayw, %.sroa.41441.0.copyload
  br i1 %i.ayx, label %.loopexit1492, label %.lr.ph.i1171, !llvm.loop !229

.loopexit1492:                                    ; preds = %.lr.ph.i1171, %._crit_edge1520
  %.0.lcssa.i1173 = phi i64 [ 0, %._crit_edge1520 ], [ %i.ayv, %.lr.ph.i1171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i64 %.0.lcssa.i1173, ptr %i.n, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #21
  store i32 2, ptr %i.o, align 4, !tbaa !107
  invoke void @_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %107, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
          to label %bb.mz unwind label %bb.na

bb.mz:                                            ; preds = %.loopexit1492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #21
  %i.ayy = load i8, ptr %107, align 8, !tbaa !260, !range !264, !noundef !265
  %i.ayz = trunc nuw i8 %i.ayy to i1
  br i1 %i.ayz, label %bb.nk, label %bb.nb

bb.na:                                            ; preds = %.loopexit1492
  %i.aza = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #21
  br label %bb.nl

bb.nb:                                            ; preds = %bb.mz
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %110)
          to label %bb.nc unwind label %bb.ng

bb.nc:                                            ; preds = %bb.nb
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #21
  %i.azb = getelementptr inbounds nuw i8, ptr %107, i64 8
  %i.azc = load ptr, ptr %i.azb, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i1175 = icmp eq ptr %i.azc, null
  br i1 %.not.i.i.i1175, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1176, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.azd = load ptr, ptr %i.azc, align 8, !tbaa !94
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1176

_ZNK7testing15AssertionResult15failure_messageEv.exit1176: ; preds = %bb.nd, %bb.nc
  %i.aze = phi ptr [ %i.azd, %bb.nd ], [ @.str.27, %bb.nc ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %111, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 104, ptr noundef %i.aze)
          to label %bb.ne unwind label %bb.nh

bb.ne:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1176
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef nonnull align 8 dereferenceable(8) %110)
          to label %bb.nf unwind label %bb.ni

bb.nf:                                            ; preds = %bb.ne
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %111) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #21
  %i.azf = load ptr, ptr %110, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1177 = icmp eq ptr %i.azf, null
  br i1 %.not.i.i1177, label %_ZN7testing7MessageD2Ev.exit1179, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1178

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1178: ; preds = %bb.nf
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !25
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 8
  %i.azi = load ptr, ptr %i.azh, align 8
  call void %i.azi(ptr noundef nonnull align 8 dereferenceable(128) %i.azf) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1179

_ZN7testing7MessageD2Ev.exit1179:                 ; preds = %bb.nf, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1178
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %107) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #21
  br label %bb.uk

bb.ng:                                            ; preds = %bb.nb
  %i.azj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1182

bb.nh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1176
  %i.azk = landingpad { ptr, i32 }
          cleanup
  br label %bb.nj

bb.ni:                                            ; preds = %bb.ne
  %i.azl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %111) #21
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.nh
  %.pn405 = phi { ptr, i32 } [ %i.azl, %bb.ni ], [ %i.azk, %bb.nh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #21
  %i.azm = load ptr, ptr %110, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1180 = icmp eq ptr %i.azm, null
  br i1 %.not.i.i1180, label %_ZN7testing7MessageD2Ev.exit1182, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1181

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1181: ; preds = %bb.nj
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !25
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 8
  %i.azp = load ptr, ptr %i.azo, align 8
  call void %i.azp(ptr noundef nonnull align 8 dereferenceable(128) %i.azm) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1182

_ZN7testing7MessageD2Ev.exit1182:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1181, %bb.nj, %bb.ng
  %.pn405.pn = phi { ptr, i32 } [ %i.azj, %bb.ng ], [ %.pn405, %bb.nj ], [ %.pn405, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %107) #21
  br label %bb.nl

bb.nk:                                            ; preds = %bb.mz
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %107) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %112, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %113, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  %i.azq = getelementptr inbounds nuw i8, ptr %112, i64 8 ; 4 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %113, i64 8 ; 2 uses
  %i.azs = load i64, ptr %i.azq, align 8, !tbaa !106 ; 2 uses
  %i.azt = load i64, ptr %i.azr, align 8, !tbaa !106
  %i.azu = icmp eq i64 %i.azs, %i.azt
  br i1 %i.azu, label %._crit_edge1523, label %.lr.ph1522

.lr.ph1522:                                       ; preds = %bb.nk
  %i.azv = getelementptr inbounds nuw i8, ptr %130, i64 8
  %i.azw = getelementptr inbounds nuw i8, ptr %120, i64 8
  br label %bb.nm

bb.nl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1182, %bb.na
  %.pn405.pn.pn = phi { ptr, i32 } [ %.pn405.pn, %_ZN7testing7MessageD2Ev.exit1182 ], [ %i.aza, %bb.na ]
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #21
  br label %.loopexit.split-lp

bb.nm:                                            ; preds = %.lr.ph1522, %.critedge542
  %i.azx = phi i64 [ %i.azs, %.lr.ph1522 ], [ %i.bfx, %.critedge542 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #21
  %i.azy = load ptr, ptr %112, align 8, !tbaa !108
  %i.azz = load ptr, ptr %i.azy, align 8, !tbaa !48
  %i.baa = getelementptr [4 x i8], ptr %i.azz, i64 %i.azx
  %i.bab = getelementptr i8, ptr %i.baa, i64 -4
  %i.bac = load i32, ptr %i.bab, align 4, !tbaa !77 ; 4 uses
  store i32 %i.bac, ptr %i.p, align 4, !tbaa !77
  %i.bad = load i32, ptr %i.b, align 4, !tbaa !77 ; 2 uses
  %i.bae = xor i32 %i.bad, %i.bac
  %i.baf = and i32 %i.bae, 65535
  %i.bag = icmp eq i32 %i.baf, 0
  br i1 %i.bag, label %bb.nn, label %bb.pa

bb.nn:                                            ; preds = %bb.nm
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #21
  %.not.i1183 = icmp eq i32 %i.bac, %i.bad
  br i1 %.not.i1183, label %bb.np, label %bb.no

bb.no:                                            ; preds = %bb.nn
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %114)
          to label %_ZN7testing8internal11CmpHelperNEIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit1186 unwind label %bb.nq

bb.np:                                            ; preds = %bb.nn
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_S6_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %114, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.37)
          to label %_ZN7testing8internal11CmpHelperNEIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit1186 unwind label %bb.nq

_ZN7testing8internal11CmpHelperNEIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit1186: ; preds = %bb.no, %bb.np
  %i.bah = load i8, ptr %114, align 8, !tbaa !260, !range !264, !noundef !265
  %i.bai = trunc nuw i8 %i.bah to i1
  br i1 %i.bai, label %bb.oa, label %bb.nr

bb.nq:                                            ; preds = %bb.np, %bb.no
  %i.baj = landingpad { ptr, i32 }
          cleanup
  br label %bb.od

bb.nr:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit1186
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %115)
          to label %bb.ns unwind label %bb.nw

bb.ns:                                            ; preds = %bb.nr
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #21
  %i.bak = getelementptr inbounds nuw i8, ptr %114, i64 8
  %i.bal = load ptr, ptr %i.bak, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i1187 = icmp eq ptr %i.bal, null
  br i1 %.not.i.i.i1187, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1188, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !94
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1188

_ZNK7testing15AssertionResult15failure_messageEv.exit1188: ; preds = %bb.nt, %bb.ns
  %i.ban = phi ptr [ %i.bam, %bb.nt ], [ @.str.27, %bb.ns ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %116, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 108, ptr noundef %i.ban)
          to label %bb.nu unwind label %bb.nx

bb.nu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1188
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull align 8 dereferenceable(8) %115)
          to label %bb.nv unwind label %bb.ny

bb.nv:                                            ; preds = %bb.nu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %116) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #21
  %i.bao = load ptr, ptr %115, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1189 = icmp eq ptr %i.bao, null
  br i1 %.not.i.i1189, label %_ZN7testing7MessageD2Ev.exit1191, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1190

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1190: ; preds = %bb.nv
  %i.bap = load ptr, ptr %i.bao, align 8, !tbaa !25
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 8
  %i.bar = load ptr, ptr %i.baq, align 8
  call void %i.bar(ptr noundef nonnull align 8 dereferenceable(128) %i.bao) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1191
end_hunk_2
begin_hunk_3_@_ZN32ReservedBits_DisabledEntity_Test8TestBodyEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.bkk, i64 noundef %i.bko) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1288: ; preds = %bb.rv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1286, %bb.rs
  %.pn442.pn = phi { ptr, i32 } [ %i.bkh, %bb.rs ], [ %.pn442, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1286 ], [ %.pn442, %bb.rv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #21
  %i.bkp = load ptr, ptr %143, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1289 = icmp eq ptr %i.bkp, null
  br i1 %.not.i.i1289, label %_ZN7testing7MessageD2Ev.exit1291, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1290

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1290: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1288
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !25
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 8
  %i.bks = load ptr, ptr %i.bkr, align 8
  call void %i.bks(ptr noundef nonnull align 8 dereferenceable(128) %i.bkp) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1291

_ZN7testing7MessageD2Ev.exit1291:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1288, %bb.rr
  %.pn442.pn.pn = phi { ptr, i32 } [ %i.bkg, %bb.rr ], [ %.pn442.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1288 ], [ %.pn442.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1290 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %142) #21
  br label %bb.rx

bb.rw:                                            ; preds = %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit1279
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %142) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #21
  %i.bkt = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %8, i32 noundef -1779859874)
          to label %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit1293 unwind label %bb.ry

_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit1293: ; preds = %bb.rw
  %i.bku = load i32, ptr %i.b, align 4, !tbaa !77
  %i.bkv = call { ptr, i64 } @_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4findES2_(ptr noundef nonnull align 8 dereferenceable(80) %i.bkt, i32 noundef %i.bku) #21 ; 2 uses
  %i.bkw = extractvalue { ptr, i64 } %i.bkv, 0
  %i.bkx = extractvalue { ptr, i64 } %i.bkv, 1
  %i.bky = load ptr, ptr %i.bkw, align 8, !tbaa !48
  %i.bkz = getelementptr [4 x i8], ptr %i.bky, i64 %i.bkx
  %i.bla = getelementptr i8, ptr %i.bkz, i64 -4
  %i.blb = load i32, ptr %i.bla, align 4, !tbaa !77
  %i.blc = and i32 %i.blb, 268435456
  %.not1487 = icmp eq i32 %i.blc, 0               ; 2 uses
  %i.bld = zext i1 %.not1487 to i8
  store i8 %i.bld, ptr %146, align 8, !tbaa !260
  %i.ble = getelementptr inbounds nuw i8, ptr %146, i64 8
  store ptr null, ptr %i.ble, align 8, !tbaa !261
  br i1 %.not1487, label %bb.sj, label %bb.rz

bb.rx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1291, %bb.rl
  %.pn442.pn.pn.pn = phi { ptr, i32 } [ %.pn442.pn.pn, %_ZN7testing7MessageD2Ev.exit1291 ], [ %i.bjv, %bb.rl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #21
  br label %.loopexit.split-lp

bb.ry:                                            ; preds = %bb.rw
  %i.blf = landingpad { ptr, i32 }
          cleanup
  br label %bb.sl

bb.rz:                                            ; preds = %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit1293
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %147)
          to label %bb.sa unwind label %bb.se

bb.sa:                                            ; preds = %bb.rz
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #21
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %149, ptr noundef nonnull align 8 dereferenceable(16) %146, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.sb unwind label %bb.sf

bb.sb:                                            ; preds = %bb.sa
  %i.blg = load ptr, ptr %149, align 8, !tbaa !94
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %148, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 124, ptr noundef %i.blg)
          to label %bb.sc unwind label %bb.sg

bb.sc:                                            ; preds = %bb.sb
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %148, ptr noundef nonnull align 8 dereferenceable(8) %147)
          to label %bb.sd unwind label %bb.sh

bb.sd:                                            ; preds = %bb.sc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %148) #21
  %i.blh = load ptr, ptr %149, align 8, !tbaa !94 ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %149, i64 16 ; 2 uses
  %i.blj = icmp eq ptr %i.blh, %i.bli
  br i1 %i.blj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1294: ; preds = %bb.sd
  %i.blk = load i64, ptr %i.bli, align 8, !tbaa !37
  %i.bll = add i64 %i.blk, 1
  call void @_ZdlPvm(ptr noundef %i.blh, i64 noundef %i.bll) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1296: ; preds = %bb.sd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1294
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #21
  %i.blm = load ptr, ptr %147, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1297 = icmp eq ptr %i.blm, null
  br i1 %.not.i.i1297, label %_ZN7testing7MessageD2Ev.exit1299, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1298

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1296
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !25
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bln, i64 8
  %i.blp = load ptr, ptr %i.blo, align 8
  call void %i.blp(ptr noundef nonnull align 8 dereferenceable(128) %i.blm) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1299

_ZN7testing7MessageD2Ev.exit1299:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1296, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1298
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %146) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #21
  br label %bb.uk

bb.se:                                            ; preds = %bb.rz
  %i.blq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1305

bb.sf:                                            ; preds = %bb.sa
  %i.blr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1302

bb.sg:                                            ; preds = %bb.sb
  %i.bls = landingpad { ptr, i32 }
          cleanup
  br label %bb.si

bb.sh:                                            ; preds = %bb.sc
  %i.blt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %148) #21
  br label %bb.si

bb.si:                                            ; preds = %bb.sh, %bb.sg
  %.pn447 = phi { ptr, i32 } [ %i.blt, %bb.sh ], [ %i.bls, %bb.sg ] ; 2 uses
  %i.blu = load ptr, ptr %149, align 8, !tbaa !94 ; 2 uses
  %i.blv = getelementptr inbounds nuw i8, ptr %149, i64 16 ; 2 uses
  %i.blw = icmp eq ptr %i.blu, %i.blv
  br i1 %i.blw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1300: ; preds = %bb.si
  %i.blx = load i64, ptr %i.blv, align 8, !tbaa !37
  %i.bly = add i64 %i.blx, 1
  call void @_ZdlPvm(ptr noundef %i.blu, i64 noundef %i.bly) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1302: ; preds = %bb.si, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1300, %bb.sf
  %.pn447.pn = phi { ptr, i32 } [ %i.blr, %bb.sf ], [ %.pn447, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1300 ], [ %.pn447, %bb.si ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #21
  %i.blz = load ptr, ptr %147, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1303 = icmp eq ptr %i.blz, null
  br i1 %.not.i.i1303, label %_ZN7testing7MessageD2Ev.exit1305, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1304

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1304: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1302
  %i.bma = load ptr, ptr %i.blz, align 8, !tbaa !25
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 8
  %i.bmc = load ptr, ptr %i.bmb, align 8
  call void %i.bmc(ptr noundef nonnull align 8 dereferenceable(128) %i.blz) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1305

_ZN7testing7MessageD2Ev.exit1305:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1302, %bb.se
  %.pn447.pn.pn = phi { ptr, i32 } [ %i.blq, %bb.se ], [ %.pn447.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1302 ], [ %.pn447.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1304 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %146) #21
  br label %bb.sl

bb.sj:                                            ; preds = %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj.exit1293
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %146) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #21
  %i.bmd = load i64, ptr %i.af, align 16, !tbaa !44
  %.not.i.i.i1306 = icmp eq i64 %i.bmd, 2
  %i.bme = select i1 %.not.i.i.i1306, i64 2, i64 0
  store i64 %i.bme, ptr %i.af, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %151, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %152, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  %.sroa.41450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %152, i64 8
  %.sroa.41450.0.copyload = load i64, ptr %.sroa.41450.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %151, i64 48, i1 false)
  %i.bmf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bmg = load i64, ptr %i.bmf, align 8, !tbaa !106 ; 2 uses
  %i.bmh = icmp eq i64 %i.bmg, %.sroa.41450.0.copyload
  br i1 %i.bmh, label %.loopexit1491, label %.lr.ph.i1307

.lr.ph.i1307:                                     ; preds = %bb.sj, %.lr.ph.i1307
  %i.bmi = phi i64 [ %i.bml, %.lr.ph.i1307 ], [ %i.bmg, %bb.sj ]
  %.02.i1308 = phi i64 [ %i.bmk, %.lr.ph.i1307 ], [ 0, %bb.sj ]
  %i.bmj = add nsw i64 %i.bmi, -1
  store i64 %i.bmj, ptr %i.bmf, align 8, !tbaa !106
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.bmk = add nuw nsw i64 %.02.i1308, 1          ; 2 uses
  %i.bml = load i64, ptr %i.bmf, align 8, !tbaa !106 ; 2 uses
  %i.bmm = icmp eq i64 %i.bml, %.sroa.41450.0.copyload
  br i1 %i.bmm, label %.loopexit1491, label %.lr.ph.i1307, !llvm.loop !229

.loopexit1491:                                    ; preds = %.lr.ph.i1307, %bb.sj
  %.0.lcssa.i1309 = phi i64 [ 0, %bb.sj ], [ %i.bmk, %.lr.ph.i1307 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i64 %.0.lcssa.i1309, ptr %i.u, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #21
  store i32 2, ptr %i.v, align 4, !tbaa !107
  invoke void @_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %150, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %bb.sk unwind label %bb.sm

bb.sk:                                            ; preds = %.loopexit1491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #21
  %i.bmn = load i8, ptr %150, align 8, !tbaa !260, !range !264, !noundef !265
  %i.bmo = trunc nuw i8 %i.bmn to i1
  br i1 %i.bmo, label %bb.sw, label %bb.sn

bb.sl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1305, %bb.ry
  %.pn447.pn.pn.pn = phi { ptr, i32 } [ %.pn447.pn.pn, %_ZN7testing7MessageD2Ev.exit1305 ], [ %i.blf, %bb.ry ]
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #21
  br label %.loopexit.split-lp

bb.sm:                                            ; preds = %.loopexit1491
  %i.bmp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #21
  br label %bb.sx

bb.sn:                                            ; preds = %bb.sk
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %153)
          to label %bb.so unwind label %bb.ss

bb.so:                                            ; preds = %bb.sn
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #21
  %i.bmq = getelementptr inbounds nuw i8, ptr %150, i64 8
  %i.bmr = load ptr, ptr %i.bmq, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i1311 = icmp eq ptr %i.bmr, null
  br i1 %.not.i.i.i1311, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1312, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.bms = load ptr, ptr %i.bmr, align 8, !tbaa !94
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1312

_ZNK7testing15AssertionResult15failure_messageEv.exit1312: ; preds = %bb.sp, %bb.so
  %i.bmt = phi ptr [ %i.bms, %bb.sp ], [ @.str.27, %bb.so ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %154, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 128, ptr noundef %i.bmt)
          to label %bb.sq unwind label %bb.st

bb.sq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1312
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %154, ptr noundef nonnull align 8 dereferenceable(8) %153)
          to label %bb.sr unwind label %bb.su

bb.sr:                                            ; preds = %bb.sq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %154) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #21
  %i.bmu = load ptr, ptr %153, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1313 = icmp eq ptr %i.bmu, null
  br i1 %.not.i.i1313, label %_ZN7testing7MessageD2Ev.exit1315, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1314

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1314: ; preds = %bb.sr
  %i.bmv = load ptr, ptr %i.bmu, align 8, !tbaa !25
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 8
  %i.bmx = load ptr, ptr %i.bmw, align 8
  call void %i.bmx(ptr noundef nonnull align 8 dereferenceable(128) %i.bmu) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1315

_ZN7testing7MessageD2Ev.exit1315:                 ; preds = %bb.sr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1314
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %150) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #21
  br label %bb.uk

bb.ss:                                            ; preds = %bb.sn
  %i.bmy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1318

bb.st:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1312
  %i.bmz = landingpad { ptr, i32 }
          cleanup
  br label %bb.sv

bb.su:                                            ; preds = %bb.sq
  %i.bna = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %154) #21
  br label %bb.sv

bb.sv:                                            ; preds = %bb.su, %bb.st
  %.pn454 = phi { ptr, i32 } [ %i.bna, %bb.su ], [ %i.bmz, %bb.st ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #21
  %i.bnb = load ptr, ptr %153, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1316 = icmp eq ptr %i.bnb, null
  br i1 %.not.i.i1316, label %_ZN7testing7MessageD2Ev.exit1318, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1317

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1317: ; preds = %bb.sv
  %i.bnc = load ptr, ptr %i.bnb, align 8, !tbaa !25
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bnc, i64 8
  %i.bne = load ptr, ptr %i.bnd, align 8
  call void %i.bne(ptr noundef nonnull align 8 dereferenceable(128) %i.bnb) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1318

_ZN7testing7MessageD2Ev.exit1318:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1317, %bb.sv, %bb.ss
  %.pn454.pn = phi { ptr, i32 } [ %i.bmy, %bb.ss ], [ %.pn454, %bb.sv ], [ %.pn454, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1317 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %150) #21
  br label %bb.sx

bb.sw:                                            ; preds = %bb.sk
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %150) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %155, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %156, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  %i.bnf = getelementptr inbounds nuw i8, ptr %155, i64 8 ; 4 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %156, i64 8 ; 2 uses
  %i.bnh = load i64, ptr %i.bnf, align 8, !tbaa !106 ; 2 uses
  %i.bni = load i64, ptr %i.bng, align 8, !tbaa !106
  %i.bnj = icmp eq i64 %i.bnh, %i.bni
  br i1 %i.bnj, label %._crit_edge1526, label %.lr.ph1525

.lr.ph1525:                                       ; preds = %bb.sw
  %i.bnk = getelementptr inbounds nuw i8, ptr %157, i64 8
  br label %bb.sy

bb.sx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1318, %bb.sm
  %.pn454.pn.pn = phi { ptr, i32 } [ %.pn454.pn, %_ZN7testing7MessageD2Ev.exit1318 ], [ %i.bmp, %bb.sm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #21
  br label %.loopexit.split-lp

bb.sy:                                            ; preds = %.lr.ph1525, %bb.tj
  %i.bnl = phi i64 [ %i.bnh, %.lr.ph1525 ], [ %i.bos, %bb.tj ]
  %i.bnm = load ptr, ptr %155, align 8, !tbaa !108
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !48
  %i.bno = getelementptr [4 x i8], ptr %i.bnn, i64 %i.bnl
  %i.bnp = getelementptr i8, ptr %i.bno, i64 -4
  %i.bnq = load i32, ptr %i.bnp, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #21
  %i.bnr = and i32 %i.bnq, 268435456
  %.not1488 = icmp eq i32 %i.bnr, 0               ; 2 uses
  %i.bns = zext i1 %.not1488 to i8
  store i8 %i.bns, ptr %157, align 8, !tbaa !260
  store ptr null, ptr %i.bnk, align 8, !tbaa !261
  br i1 %.not1488, label %bb.tj, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %158)
          to label %bb.ta unwind label %bb.te

bb.ta:                                            ; preds = %bb.sz
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #21
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %160, ptr noundef nonnull align 8 dereferenceable(16) %157, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.tb unwind label %bb.tf

bb.tb:                                            ; preds = %bb.ta
  %i.bnt = load ptr, ptr %160, align 8, !tbaa !94
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %159, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 131, ptr noundef %i.bnt)
          to label %bb.tc unwind label %bb.tg

bb.tc:                                            ; preds = %bb.tb
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %159, ptr noundef nonnull align 8 dereferenceable(8) %158)
          to label %bb.td unwind label %bb.th

bb.td:                                            ; preds = %bb.tc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %159) #21
  %i.bnu = load ptr, ptr %160, align 8, !tbaa !94 ; 2 uses
  %i.bnv = getelementptr inbounds nuw i8, ptr %160, i64 16 ; 2 uses
  %i.bnw = icmp eq ptr %i.bnu, %i.bnv
  br i1 %i.bnw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1319: ; preds = %bb.td
  %i.bnx = load i64, ptr %i.bnv, align 8, !tbaa !37
  %i.bny = add i64 %i.bnx, 1
  call void @_ZdlPvm(ptr noundef %i.bnu, i64 noundef %i.bny) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1321: ; preds = %bb.td, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1319
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #21
  %i.bnz = load ptr, ptr %158, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1322 = icmp eq ptr %i.bnz, null
  br i1 %.not.i.i1322, label %bb.tk, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1323

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1321
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !25
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 8
  %i.boc = load ptr, ptr %i.bob, align 8
  call void %i.boc(ptr noundef nonnull align 8 dereferenceable(128) %i.bnz) #21, !inline_history !224
  br label %bb.tk

bb.te:                                            ; preds = %bb.sz
  %i.bod = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1330

bb.tf:                                            ; preds = %bb.ta
  %i.boe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1327

bb.tg:                                            ; preds = %bb.tb
  %i.bof = landingpad { ptr, i32 }
          cleanup
  br label %bb.ti

bb.th:                                            ; preds = %bb.tc
  %i.bog = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %159) #21
  br label %bb.ti

bb.ti:                                            ; preds = %bb.th, %bb.tg
  %.pn458 = phi { ptr, i32 } [ %i.bog, %bb.th ], [ %i.bof, %bb.tg ] ; 2 uses
  %i.boh = load ptr, ptr %160, align 8, !tbaa !94 ; 2 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %160, i64 16 ; 2 uses
  %i.boj = icmp eq ptr %i.boh, %i.boi
  br i1 %i.boj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1325: ; preds = %bb.ti
  %i.bok = load i64, ptr %i.boi, align 8, !tbaa !37
  %i.bol = add i64 %i.bok, 1
  call void @_ZdlPvm(ptr noundef %i.boh, i64 noundef %i.bol) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1327: ; preds = %bb.ti, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1325, %bb.tf
  %.pn458.pn = phi { ptr, i32 } [ %i.boe, %bb.tf ], [ %.pn458, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1325 ], [ %.pn458, %bb.ti ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #21
  %i.bom = load ptr, ptr %158, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1328 = icmp eq ptr %i.bom, null
  br i1 %.not.i.i1328, label %_ZN7testing7MessageD2Ev.exit1330, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1329

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1327
  %i.bon = load ptr, ptr %i.bom, align 8, !tbaa !25
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 8
  %i.bop = load ptr, ptr %i.boo, align 8
  call void %i.bop(ptr noundef nonnull align 8 dereferenceable(128) %i.bom) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1330

_ZN7testing7MessageD2Ev.exit1330:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1327, %bb.te
  %.pn458.pn.pn = phi { ptr, i32 } [ %i.bod, %bb.te ], [ %.pn458.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1327 ], [ %.pn458.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1329 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %157) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #21
  br label %.loopexit.split-lp

bb.tj:                                            ; preds = %bb.sy
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %157) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #21
  %i.boq = load i64, ptr %i.bnf, align 8, !tbaa !106
  %i.bor = add nsw i64 %i.boq, -1
  store i64 %i.bor, ptr %i.bnf, align 8, !tbaa !106
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %155)
  %i.bos = load i64, ptr %i.bnf, align 8, !tbaa !106 ; 2 uses
  %i.bot = load i64, ptr %i.bng, align 8, !tbaa !106
  %i.bou = icmp eq i64 %i.bos, %i.bot
  br i1 %i.bou, label %._crit_edge1526, label %bb.sy

bb.tk:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1321
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %157) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #21
  br label %bb.uk

._crit_edge1526:                                  ; preds = %bb.tj, %bb.sw
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #21
  %i.bov = load i64, ptr %i.af, align 16, !tbaa !44
  %.not.i.i.i1331 = icmp eq i64 %i.bov, 2
  %i.bow = select i1 %.not.i.i.i1331, i64 2, i64 1
  store i64 %i.bow, ptr %i.af, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %162, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %163, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  %.sroa.41459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %163, i64 8
  %.sroa.41459.0.copyload = load i64, ptr %.sroa.41459.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %162, i64 48, i1 false)
  %i.box = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.boy = load i64, ptr %i.box, align 8, !tbaa !106 ; 2 uses
  %i.boz = icmp eq i64 %i.boy, %.sroa.41459.0.copyload
  br i1 %i.boz, label %.loopexit1490, label %.lr.ph.i1332

.lr.ph.i1332:                                     ; preds = %._crit_edge1526, %.lr.ph.i1332
  %i.bpa = phi i64 [ %i.bpd, %.lr.ph.i1332 ], [ %i.boy, %._crit_edge1526 ]
  %.02.i1333 = phi i64 [ %i.bpc, %.lr.ph.i1332 ], [ 0, %._crit_edge1526 ]
  %i.bpb = add nsw i64 %i.bpa, -1
  store i64 %i.bpb, ptr %i.box, align 8, !tbaa !106
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.bpc = add nuw nsw i64 %.02.i1333, 1          ; 2 uses
  %i.bpd = load i64, ptr %i.box, align 8, !tbaa !106 ; 2 uses
  %i.bpe = icmp eq i64 %i.bpd, %.sroa.41459.0.copyload
  br i1 %i.bpe, label %.loopexit1490, label %.lr.ph.i1332, !llvm.loop !229

.loopexit1490:                                    ; preds = %.lr.ph.i1332, %._crit_edge1526
  %.0.lcssa.i1334 = phi i64 [ 0, %._crit_edge1526 ], [ %i.bpc, %.lr.ph.i1332 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store i64 %.0.lcssa.i1334, ptr %i.w, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #21
  store i32 2, ptr %i.x, align 4, !tbaa !107
  invoke void @_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %161, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %bb.tl unwind label %bb.tm

bb.tl:                                            ; preds = %.loopexit1490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #21
  %i.bpf = load i8, ptr %161, align 8, !tbaa !260, !range !264, !noundef !265
  %i.bpg = trunc nuw i8 %i.bpf to i1
  br i1 %i.bpg, label %bb.tw, label %bb.tn

bb.tm:                                            ; preds = %.loopexit1490
  %i.bph = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #21
  br label %bb.tx

bb.tn:                                            ; preds = %bb.tl
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %164)
          to label %bb.to unwind label %bb.ts

bb.to:                                            ; preds = %bb.tn
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #21
  %i.bpi = getelementptr inbounds nuw i8, ptr %161, i64 8
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i1336 = icmp eq ptr %i.bpj, null
  br i1 %.not.i.i.i1336, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1337, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  %i.bpk = load ptr, ptr %i.bpj, align 8, !tbaa !94
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1337

_ZNK7testing15AssertionResult15failure_messageEv.exit1337: ; preds = %bb.tp, %bb.to
  %i.bpl = phi ptr [ %i.bpk, %bb.tp ], [ @.str.27, %bb.to ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %165, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 136, ptr noundef %i.bpl)
          to label %bb.tq unwind label %bb.tt

bb.tq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1337
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %165, ptr noundef nonnull align 8 dereferenceable(8) %164)
          to label %bb.tr unwind label %bb.tu

bb.tr:                                            ; preds = %bb.tq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %165) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #21
  %i.bpm = load ptr, ptr %164, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1338 = icmp eq ptr %i.bpm, null
  br i1 %.not.i.i1338, label %_ZN7testing7MessageD2Ev.exit1340, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1339

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1339: ; preds = %bb.tr
  %i.bpn = load ptr, ptr %i.bpm, align 8, !tbaa !25
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 8
  %i.bpp = load ptr, ptr %i.bpo, align 8
  call void %i.bpp(ptr noundef nonnull align 8 dereferenceable(128) %i.bpm) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1340

_ZN7testing7MessageD2Ev.exit1340:                 ; preds = %bb.tr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1339
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %161) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #21
  br label %bb.uk

bb.ts:                                            ; preds = %bb.tn
  %i.bpq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1343

bb.tt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1337
  %i.bpr = landingpad { ptr, i32 }
          cleanup
  br label %bb.tv

bb.tu:                                            ; preds = %bb.tq
  %i.bps = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %165) #21
  br label %bb.tv

bb.tv:                                            ; preds = %bb.tu, %bb.tt
  %.pn464 = phi { ptr, i32 } [ %i.bps, %bb.tu ], [ %i.bpr, %bb.tt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #21
  %i.bpt = load ptr, ptr %164, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1341 = icmp eq ptr %i.bpt, null
  br i1 %.not.i.i1341, label %_ZN7testing7MessageD2Ev.exit1343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1342: ; preds = %bb.tv
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !25
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 8
  %i.bpw = load ptr, ptr %i.bpv, align 8
  call void %i.bpw(ptr noundef nonnull align 8 dereferenceable(128) %i.bpt) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1343

_ZN7testing7MessageD2Ev.exit1343:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1342, %bb.tv, %bb.ts
  %.pn464.pn = phi { ptr, i32 } [ %i.bpq, %bb.ts ], [ %.pn464, %bb.tv ], [ %.pn464, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %161) #21
  br label %bb.tx

bb.tw:                                            ; preds = %bb.tl
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %161) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %166, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #21
  call void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv(ptr dead_on_unwind nonnull writable sret(%"class.entt::internal::view_iterator") align 8 %167, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  %i.bpx = getelementptr inbounds nuw i8, ptr %166, i64 8 ; 4 uses
  %i.bpy = getelementptr inbounds nuw i8, ptr %167, i64 8 ; 2 uses
  %i.bpz = load i64, ptr %i.bpx, align 8, !tbaa !106 ; 2 uses
  %i.bqa = load i64, ptr %i.bpy, align 8, !tbaa !106
  %i.bqb = icmp eq i64 %i.bpz, %i.bqa
  br i1 %i.bqb, label %.loopexit, label %.lr.ph1528

.lr.ph1528:                                       ; preds = %bb.tw
  %i.bqc = getelementptr inbounds nuw i8, ptr %168, i64 8
  br label %bb.ty

bb.tx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1343, %bb.tm
  %.pn464.pn.pn = phi { ptr, i32 } [ %.pn464.pn, %_ZN7testing7MessageD2Ev.exit1343 ], [ %i.bph, %bb.tm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #21
  br label %.loopexit.split-lp

bb.ty:                                            ; preds = %.lr.ph1528, %bb.uj
  %i.bqd = phi i64 [ %i.bpz, %.lr.ph1528 ], [ %i.brk, %bb.uj ]
  %i.bqe = load ptr, ptr %166, align 8, !tbaa !108
  %i.bqf = load ptr, ptr %i.bqe, align 8, !tbaa !48
  %i.bqg = getelementptr [4 x i8], ptr %i.bqf, i64 %i.bqd
  %i.bqh = getelementptr i8, ptr %i.bqg, i64 -4
  %i.bqi = load i32, ptr %i.bqh, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #21
  %i.bqj = and i32 %i.bqi, 268435456
  %.not1489 = icmp eq i32 %i.bqj, 0               ; 2 uses
  %i.bqk = zext i1 %.not1489 to i8
  store i8 %i.bqk, ptr %168, align 8, !tbaa !260
  store ptr null, ptr %i.bqc, align 8, !tbaa !261
  br i1 %.not1489, label %bb.uj, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %169)
          to label %bb.ua unwind label %bb.ue

bb.ua:                                            ; preds = %bb.tz
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #21
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %171, ptr noundef nonnull align 8 dereferenceable(16) %168, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.ub unwind label %bb.uf

bb.ub:                                            ; preds = %bb.ua
  %i.bql = load ptr, ptr %171, align 8, !tbaa !94
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %170, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 139, ptr noundef %i.bql)
          to label %bb.uc unwind label %bb.ug

bb.uc:                                            ; preds = %bb.ub
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %170, ptr noundef nonnull align 8 dereferenceable(8) %169)
          to label %bb.ud unwind label %bb.uh

bb.ud:                                            ; preds = %bb.uc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %170) #21
  %i.bqm = load ptr, ptr %171, align 8, !tbaa !94 ; 2 uses
  %i.bqn = getelementptr inbounds nuw i8, ptr %171, i64 16 ; 2 uses
  %i.bqo = icmp eq ptr %i.bqm, %i.bqn
  br i1 %i.bqo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1344: ; preds = %bb.ud
  %i.bqp = load i64, ptr %i.bqn, align 8, !tbaa !37
  %i.bqq = add i64 %i.bqp, 1
  call void @_ZdlPvm(ptr noundef %i.bqm, i64 noundef %i.bqq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1346: ; preds = %bb.ud, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1344
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #21
  %i.bqr = load ptr, ptr %169, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1347 = icmp eq ptr %i.bqr, null
  br i1 %.not.i.i1347, label %_ZN7testing7MessageD2Ev.exit1349, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1348

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1346
  %i.bqs = load ptr, ptr %i.bqr, align 8, !tbaa !25
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 8
  %i.bqu = load ptr, ptr %i.bqt, align 8
  call void %i.bqu(ptr noundef nonnull align 8 dereferenceable(128) %i.bqr) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1349

_ZN7testing7MessageD2Ev.exit1349:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1346, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1348
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %168) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #21
  br label %.loopexit

bb.ue:                                            ; preds = %bb.tz
  %i.bqv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1355

bb.uf:                                            ; preds = %bb.ua
  %i.bqw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1352

bb.ug:                                            ; preds = %bb.ub
  %i.bqx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ui

bb.uh:                                            ; preds = %bb.uc
  %i.bqy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %170) #21
  br label %bb.ui

bb.ui:                                            ; preds = %bb.uh, %bb.ug
  %.pn468 = phi { ptr, i32 } [ %i.bqy, %bb.uh ], [ %i.bqx, %bb.ug ] ; 2 uses
  %i.bqz = load ptr, ptr %171, align 8, !tbaa !94 ; 2 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %171, i64 16 ; 2 uses
  %i.brb = icmp eq ptr %i.bqz, %i.bra
  br i1 %i.brb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1350: ; preds = %bb.ui
  %i.brc = load i64, ptr %i.bra, align 8, !tbaa !37
  %i.brd = add i64 %i.brc, 1
  call void @_ZdlPvm(ptr noundef %i.bqz, i64 noundef %i.brd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1352: ; preds = %bb.ui, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1350, %bb.uf
  %.pn468.pn = phi { ptr, i32 } [ %i.bqw, %bb.uf ], [ %.pn468, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1350 ], [ %.pn468, %bb.ui ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #21
  %i.bre = load ptr, ptr %169, align 8, !tbaa !96 ; 3 uses
  %.not.i.i1353 = icmp eq ptr %i.bre, null
  br i1 %.not.i.i1353, label %_ZN7testing7MessageD2Ev.exit1355, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1354

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1354: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1352
  %i.brf = load ptr, ptr %i.bre, align 8, !tbaa !25
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 8
  %i.brh = load ptr, ptr %i.brg, align 8
  call void %i.brh(ptr noundef nonnull align 8 dereferenceable(128) %i.bre) #21, !inline_history !224
  br label %_ZN7testing7MessageD2Ev.exit1355

_ZN7testing7MessageD2Ev.exit1355:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1354, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1352, %bb.ue
  %.pn468.pn.pn = phi { ptr, i32 } [ %i.bqv, %bb.ue ], [ %.pn468.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1352 ], [ %.pn468.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1354 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %168) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #21
  br label %.loopexit.split-lp

bb.uj:                                            ; preds = %bb.ty
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %168) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #21
  %i.bri = load i64, ptr %i.bpx, align 8, !tbaa !106
  %i.brj = add nsw i64 %i.bri, -1
  store i64 %i.brj, ptr %i.bpx, align 8, !tbaa !106
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %166)
  %i.brk = load i64, ptr %i.bpx, align 8, !tbaa !106 ; 2 uses
  %i.brl = load i64, ptr %i.bpy, align 8, !tbaa !106
  %i.brm = icmp eq i64 %i.brk, %i.brl
  br i1 %i.brm, label %.loopexit, label %bb.ty

.loopexit:                                        ; preds = %bb.uj, %bb.tw, %_ZN7testing7MessageD2Ev.exit1349
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #21
  br label %bb.uk

bb.uk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1340, %bb.tk, %_ZN7testing7MessageD2Ev.exit1315, %_ZN7testing7MessageD2Ev.exit1299, %_ZN7testing7MessageD2Ev.exit1285, %_ZN7testing7MessageD2Ev.exit1271, %_ZN7testing7MessageD2Ev.exit1259, %bb.qn, %_ZN7testing7MessageD2Ev.exit1179, %bb.my, %_ZN7testing7MessageD2Ev.exit1144, %_ZN7testing7MessageD2Ev.exit1128, %_ZN7testing7MessageD2Ev.exit1114, %_ZN7testing7MessageD2Ev.exit1100, %_ZN7testing7MessageD2Ev.exit1080, %bb.jx, %_ZN7testing15AssertionResultD2Ev.exit1019, %bb.ih, %_ZN7testing15AssertionResultD2Ev.exit837, %_ZN7testing15AssertionResultD2Ev.exit808, %_ZN7testing15AssertionResultD2Ev.exit776, %_ZN7testing15AssertionResultD2Ev.exit744, %_ZN7testing15AssertionResultD2Ev.exit714, %_ZN7testing15AssertionResultD2Ev.exit684, %_ZN7testing15AssertionResultD2Ev.exit652, %_ZN7testing15AssertionResultD2Ev.exit621, %_ZN7testing15AssertionResultD2Ev.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit1494, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZN7testing7MessageD2Ev.exit1355, %bb.tx, %_ZN7testing7MessageD2Ev.exit1330, %bb.sx, %bb.sl, %bb.rx, %_ZN7testing7MessageD2Ev.exit1277, %_ZN7testing7MessageD2Ev.exit1265, %bb.qo, %bb.nl, %_ZN7testing7MessageD2Ev.exit1164, %bb.mk, %bb.ly, %bb.lk, %_ZN7testing7MessageD2Ev.exit1106, %_ZN7testing7MessageD2Ev.exit1086, %_ZN7testing7MessageD2Ev.exit1059, %bb.jj, %bb.ii, %bb.ev, %bb.ec, %bb.dg, %_ZN7testing7MessageD2Ev.exit750, %_ZN7testing7MessageD2Ev.exit720, %bb.bo, %bb.ay, %_ZN7testing7MessageD2Ev.exit627, %_ZN7testing7MessageD2Ev.exit597
  %.pn468.pn.pn.pn = phi { ptr, i32 } [ %.pn468.pn.pn, %_ZN7testing7MessageD2Ev.exit1355 ], [ %.pn464.pn.pn, %bb.tx ], [ %.pn458.pn.pn, %_ZN7testing7MessageD2Ev.exit1330 ], [ %.pn454.pn.pn, %bb.sx ], [ %.pn447.pn.pn.pn, %bb.sl ], [ %.pn442.pn.pn.pn, %bb.rx ], [ %.pn438.pn.pn, %_ZN7testing7MessageD2Ev.exit1277 ], [ %.pn434.pn.pn, %_ZN7testing7MessageD2Ev.exit1265 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit597 ], [ %.pn429.pn.pn.pn, %bb.qo ], [ %.pn405.pn.pn, %bb.nl ], [ %.pn399.pn.pn, %_ZN7testing7MessageD2Ev.exit1164 ], [ %.pn395.pn.pn, %bb.mk ], [ %.pn388.pn.pn.pn, %bb.ly ], [ %.pn383.pn.pn.pn, %bb.lk ], [ %.pn379.pn.pn, %_ZN7testing7MessageD2Ev.exit1106 ], [ %.pn375.pn.pn, %_ZN7testing7MessageD2Ev.exit1086 ], [ %.pn371.pn.pn, %_ZN7testing7MessageD2Ev.exit1059 ], [ %.pn367.pn.pn, %bb.jj ], [ %.pn360.pn.pn.pn, %bb.ii ], [ %.pn336.pn.pn, %bb.ev ], [ %.pn329.pn.pn.pn, %bb.ec ], [ %.pn324.pn.pn.pn, %bb.dg ], [ %.pn320.pn.pn, %_ZN7testing7MessageD2Ev.exit750 ], [ %.pn316.pn.pn, %_ZN7testing7MessageD2Ev.exit720 ], [ %.pn311.pn.pn.pn, %bb.bo ], [ %.pn306.pn.pn.pn, %bb.ay ], [ %.pn302.pn.pn, %_ZN7testing7MessageD2Ev.exit627 ], [ %lpad.loopexit, %.loopexit1494 ], [ %lpad.loopexit1496, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit1500, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ul

bb.ul:                                            ; preds = %.loopexit1502, %.loopexit.split-lp1503, %.loopexit.split-lp
  %.pn468.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn468.pn.pn.pn, %.loopexit.split-lp ], [ %lpad.loopexit1504, %.loopexit1502 ], [ %lpad.loopexit.split-lp1505, %.loopexit.split-lp1503 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.um

bb.um:                                            ; preds = %bb.ul, %bb.g
  %.pn468.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn468.pn.pn.pn.pn, %bb.ul ], [ %i.es, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %.pn468.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4findES2_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %1, 65535
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = lshr i64 %i.b, 12                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = icmp ult i64 %i.c, %i.k
  br i1 %i.l, label %bb.b, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.thread, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit

_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit: ; preds = %bb.b
  %i.o = and i64 %i.b, 4095
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = and i32 %1, 268369920
  %i.r = load i32, ptr %i.p, align 4, !tbaa !77   ; 2 uses
  %i.s = xor i32 %i.r, %i.q
  %i.t = icmp ult i32 %i.s, 65535
  br i1 %i.t, label %bb.c, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.thread

bb.c:                                             ; preds = %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit
  %i.u = and i32 %i.r, 65535
  %narrow.i = add nuw nsw i32 %i.u, 1
  %i.v = zext nneg i32 %narrow.i to i64
  br label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.thread

_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.thread: ; preds = %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit, %bb.a, %bb.b, %bb.c
  %.pn4 = phi i64 [ %i.v, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit ]
  %.pn6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.fca.0.insert.i.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn6, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.i.pn, i64 %.pn4, 1
  ret { ptr, i64 } %.pn
}

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !37
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #22
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !105, !noalias !276
  %i.b = load i32, ptr %4, align 4, !tbaa !107, !noalias !276
  %i.c = sext i32 %i.b to i64
  %i.d = icmp eq i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIliEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN7testing8internal11CmpHelperEQIliEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIliEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.entt::internal::view_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !98
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !99
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit

_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit: ; preds = %bb.c, %bb.d
  %i.r = phi i64 [ %i.j, %bb.c ], [ %i.q, %bb.d ]
  store ptr %i.e, ptr %0, align 8, !tbaa !104
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.b, ptr %i.u, align 8, !tbaa !103
  tail call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE6offsetEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv(ptr dead_on_unwind noalias writable sret(%"class.entt::internal::view_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.e, ptr %0, align 8, !tbaa !104
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.b, ptr %i.h, align 8, !tbaa !103
  tail call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN12ReservedBits9my_entityES3_SaIS3_EEENS_14basic_registryIS3_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.c) #21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(29) %i.j)
          to label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i unwind label %bb.c, !inline_history !2

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #23
  unreachable

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !113
  br label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.a
  %i.n = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !119
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #22
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i.i

_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !122    ; 3 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !123
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #22
  br label %_ZN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEED2Ev.exit

_ZN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEED2Ev.exit: ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN32ReservedBits_DisabledEntity_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI32ReservedBits_DisabledEntity_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI32ReservedBits_DisabledEntity_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV32ReservedBits_DisabledEntity_Test, i64 16), ptr %i.a, align 8, !tbaa !25
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !122  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 4294967295
  %i.l = and i64 %i.k, %i.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.in.i.i = phi ptr [ %i.m, %bb.a ], [ %i.p, %bb.c ]
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !105 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.07.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !107
  %i.s = icmp eq i32 %i.r, %1
  br i1 %i.s, label %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE4findERSC_.exit.loopexit, label %bb.b, !llvm.loop !4

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !127  ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  br label %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE4findERSC_.exit

_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE4findERSC_.exit.loopexit: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !127
  br label %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE4findERSC_.exit

_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE4findERSC_.exit: ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE4findERSC_.exit.loopexit, %bb.d
  %i.z = phi ptr [ %i.u, %bb.d ], [ %.pre, %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE4findERSC_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.y, %bb.d ], [ %i.p, %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE4findERSC_.exit.loopexit ] ; 2 uses
  %i.aa = icmp eq ptr %.sroa.0.1.i.i, %i.z
  br i1 %i.aa, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE4findERSC_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !131
  br label %bb.q

.noexc:                                           ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE4findERSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ad = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #24 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 1, ptr %i.ae, align 8, !tbaa !133, !noalias !284
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 1, ptr %i.af, align 4, !tbaa !134, !noalias !284
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4entt16basic_sigh_mixinINS0_13basic_storageIiN12ReservedBits9my_entityESaIiEEENS0_14basic_registryIS4_SaIS4_EEEEES8_LN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ad, align 8, !tbaa !25, !noalias !284
  %i.ag = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !284
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_ZNSt12__shared_ptrIN4entt16basic_sigh_mixinINS0_13basic_storageIiN12ReservedBits9my_entityESaIiEEENS0_14basic_registryIS4_SaIS4_EEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !38

bb.f:                                             ; preds = %.noexc
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #21, !noalias !284
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN4entt16basic_sigh_mixinINS0_13basic_storageIiN12ReservedBits9my_entityESaIiEEENS0_14basic_registryIS4_SaIS4_EEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #21, !noalias !284
  %i.aj = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance), !noalias !284 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #21, !noalias !284
  br label %_ZNSt12__shared_ptrIN4entt16basic_sigh_mixinINS0_13basic_storageIiN12ReservedBits9my_entityESaIiEEENS0_14basic_registryIS4_SaIS4_EEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4entt16basic_sigh_mixinINS0_13basic_storageIiN12ReservedBits9my_entityESaIiEEENS0_14basic_registryIS4_SaIS4_EEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc, %bb.f, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i8 0, i64 48, i1 false), !noalias !284
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %i.am, align 8, !tbaa !135, !noalias !284
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i8 0, ptr %i.an, align 8, !tbaa !98, !noalias !284
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store i64 65535, ptr %i.ao, align 8, !tbaa !99, !noalias !284
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false), !noalias !284
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sigh_mixinINS_13basic_storageIiN12ReservedBits9my_entityESaIiEEENS_14basic_registryIS3_SaIS3_EEEEE, i64 16), ptr %i.ak, align 8, !tbaa !25, !noalias !284
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i8 0, i64 80, i1 false), !noalias !284
  store ptr %i.ak, ptr %3, align 8, !tbaa !131
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.ar, align 8, !tbaa !136
  %i.as = invoke { ptr, i8 } @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE20insert_or_do_nothingIRSC_JRS7_EEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(52) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE7emplaceIJRSC_RS7_EEESB_INS_8internal18dense_map_iteratorIPNSJ_14dense_map_nodeIjS7_EEEEbEDpOT_.exit unwind label %bb.p ; 0 uses

_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE7emplaceIJRSC_RS7_EEESB_INS_8internal18dense_map_iteratorIPNSJ_14dense_map_nodeIjS7_EEEEbEDpOT_.exit: ; preds = %_ZNSt12__shared_ptrIN4entt16basic_sigh_mixinINS0_13basic_storageIiN12ReservedBits9my_entityESaIiEEENS0_14basic_registryIS4_SaIS4_EEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.at = load ptr, ptr %3, align 8, !tbaa !131   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryIN12ReservedBits9my_entityESaIS5_EEEEEPKvNS_8internal11any_requestERKS1_S9_, ptr %i.au, align 8, !tbaa !139, !alias.scope !285
  store i32 552509104, ptr %i.aw, align 8, !tbaa !140, !alias.scope !285
  store ptr null, ptr %i.av, align 8, !tbaa !141, !alias.scope !285
  store i8 3, ptr %i.ax, align 4, !tbaa !142, !alias.scope !285
  store ptr %0, ptr %2, align 8, !tbaa !37, !alias.scope !285
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %2) #21, !inline_history !281
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i10, label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE7emplaceIJRSC_RS7_EEESB_INS_8internal18dense_map_iteratorIPNSJ_14dense_map_nodeIjS7_EEEEbEDpOT_.exit
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(37) %2)
          to label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit unwind label %bb.i, !inline_history !282

bb.i:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #23, !inline_history !281
  unreachable

_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit: ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE7emplaceIJRSC_RS7_EEESB_INS_8internal18dense_map_iteratorIPNSJ_14dense_map_nodeIjS7_EEEEbEDpOT_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.be = load ptr, ptr %3, align 8, !tbaa !131
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !136 ; 8 uses
  %.not.i.i11 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i11, label %_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bg, align 8, !tbaa !133
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !134
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #21, !inline_history !283
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #21, !inline_history !283
  br label %_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i12 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13

bb.n:                                             ; preds = %bb.l
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i14 = phi i32 [ %i.bj, %bb.m ], [ %i.bt, %bb.n ]
  %i.bu = icmp eq i32 %.0.i.i.i.i14, 1
  br i1 %i.bu, label %bb.o, label %_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !143

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #21
  br label %_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN4entt16basic_sigh_mixinINS0_13basic_storageIiN12ReservedBits9my_entityESaIiEEENS0_14basic_registryIS4_SaIS4_EEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.bv

bb.q:                                             ; preds = %bb.e, %_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.1 = phi ptr [ %i.be, %_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.ac, %bb.e ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !134
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !286
end_hunk_3
begin_hunk_4_@_ZN4entt13basic_storageIiN12ReservedBits9my_entityESaIiEED2Ev:bb.a

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !145 ; 5 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, %.pre8.i
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPPiS0_EvT_S2_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPiS0_EvT_S2_RSaIT0_E.exit.i.i.i:   ; preds = %._crit_edge.i
  store ptr %.pre8.i, ptr %i.b, align 8, !tbaa !154
  br label %_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i

_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i:          ; preds = %bb.a, %_ZSt8_DestroyIPPiS0_EvT_S2_RSaIT0_E.exit.i.i.i, %._crit_edge.i
  %i.i = phi ptr [ %.pre8.i, %_ZSt8_DestroyIPPiS0_EvT_S2_RSaIT0_E.exit.i.i.i ], [ %.pre8.i, %._crit_edge.i ], [ %i.d, %bb.a ]
  %i.j = phi ptr [ %.pre8.i, %_ZSt8_DestroyIPPiS0_EvT_S2_RSaIT0_E.exit.i.i.i ], [ %.pre.i, %._crit_edge.i ], [ %i.c, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %_ZN4entt13basic_storageIiN12ReservedBits9my_entityESaIiEE14shrink_to_sizeEm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i
  %i.n = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIPiSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #21 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !145
  br label %_ZN4entt13basic_storageIiN12ReservedBits9my_entityESaIiEE14shrink_to_sizeEm.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi i64 [ %i.r, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !145
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.07.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !147
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef 4096) #22
  %i.r = add i64 %.07.i, 1                        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8

_ZN4entt13basic_storageIiN12ReservedBits9my_entityESaIiEE14shrink_to_sizeEm.exit: ; preds = %bb.b, %_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i
  %i.s = phi ptr [ %.pre, %bb.b ], [ %i.i, %_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i ] ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4entt13basic_storageIiN12ReservedBits9my_entityESaIiEE14shrink_to_sizeEm.exit
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !155
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #22
  br label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit

_ZNSt6vectorIPiSaIS0_EED2Ev.exit:                 ; preds = %_ZN4entt13basic_storageIiN12ReservedBits9my_entityESaIiEE14shrink_to_sizeEm.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !150  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !150 ; 2 uses
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIPiSaIS0_EED2Ev.exit, %bb.e
  %.sroa.08.012.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.y, %_ZNSt6vectorIPiSaIS0_EED2Ev.exit ] ; 3 uses
  %i.ac = load ptr, ptr %.sroa.08.012.i.i, align 8, !tbaa !89 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 16384) #22, !inline_history !156
  store ptr null, ptr %.sroa.08.012.i.i, align 8, !tbaa !89
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 8 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.aa
  br i1 %i.ae, label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i

_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE20release_sparse_pagesEv.exit.i: ; preds = %bb.e, %_ZNSt6vectorIPiSaIS0_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN12ReservedBits9my_entityESaIS1_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE20release_sparse_pagesEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !153
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #22, !inline_history !156
  br label %_ZNSt6vectorIN12ReservedBits9my_entityESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN12ReservedBits9my_entityESaIS1_EED2Ev.exit.i: ; preds = %bb.f, %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE20release_sparse_pagesEv.exit.i
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !88  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i1.i, label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN12ReservedBits9my_entityESaIS1_EED2Ev.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !157
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #22, !inline_history !156
  br label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EED2Ev.exit

_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN12ReservedBits9my_entityESaIS1_EED2Ev.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt13basic_storageIiN12ReservedBits9my_entityESaIiEED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN4entt13basic_storageIiN12ReservedBits9my_entityESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #22
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexIiE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexIiE5valueEv.exit, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexIiE5valueEvE5value) #21
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexIiE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !107 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !107
  store i32 %i.d, ptr @_ZZN4entt10type_indexIiE5valueEvE5value, align 4, !tbaa !107
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexIiE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexIiE5valueEvE5value) #21
  br label %_ZN4entt10type_indexIiE5valueEv.exit

_ZN4entt10type_indexIiE5valueEv.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexIiE5valueEvE5value, align 4, !tbaa !107
  store i32 %i.g, ptr %0, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1779859874, ptr %i.h, align 4, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.20, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE6get_atEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE12swap_or_moveEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_S3_EEES9_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !98
  switch i8 %i.b, label %.loopexit [
    i8 0, label %.preheader
    i8 1, label %.preheader14
    i8 2, label %.preheader16
  ]

.preheader16:                                     ; preds = %bb.a
  %i.c = icmp eq i64 %2, %4
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader16
  %i.d = load ptr, ptr %1, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load i64, ptr %i.i, align 8, !tbaa !99
  br label %bb.c

.preheader14:                                     ; preds = %bb.a
  %i.j = icmp eq i64 %2, %4
  br i1 %i.j, label %.loopexit, label %.lr.ph20

.lr.ph20:                                         ; preds = %.preheader14
  %i.k = load ptr, ptr %1, align 8, !tbaa !48     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 3 uses
  %.promoted21 = load i64, ptr %i.n, align 8, !tbaa !105
  %i.q = trunc i64 %.promoted21 to i32
  %i.r = and i32 %i.q, 65535                      ; 2 uses
  %i.s = sub i64 %2, %4
  %.neg = add i64 %4, 1
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph20
  %i.t = getelementptr [4 x i8], ptr %i.k, i64 %2
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !77
  %i.w = and i32 %i.v, 65535
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = lshr i64 %i.x, 12
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89
  %i.ab = and i64 %i.x, 4095
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !77
  store i32 268435455, ptr %i.ac, align 4, !tbaa !77
  %i.ae = and i32 %i.ad, 65535                    ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = or disjoint i32 %i.r, 268369920
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.af
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !77
  %i.ai = add nsw i64 %2, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph20
  %.lcssa.unr = phi i64 [ poison, %.lr.ph20 ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i32 [ %i.r, %.lr.ph20 ], [ %i.ae, %.prol.loopexit.unr-lcssa ]
  %.sroa.4.119.unr = phi i64 [ %2, %.lr.ph20 ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %i.aj = icmp eq i64 %2, %.neg
  br i1 %i.aj, label %..loopexit15_crit_edge, label %.lr.ph20.new

.preheader:                                       ; preds = %bb.a
  %i.ak = icmp eq i64 %2, %4
  br i1 %i.ak, label %.loopexit, label %.lr.ph24

.lr.ph24:                                         ; preds = %.preheader
  %i.al = load ptr, ptr %1, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !88 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !48
  %.promoted25 = load ptr, ptr %i.ap, align 8, !tbaa !89
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph24, %bb.b
  %i.ar = phi ptr [ %.promoted25, %.lr.ph24 ], [ %i.be, %bb.b ]
  %.sroa.4.023 = phi i64 [ %2, %.lr.ph24 ], [ %i.bs, %bb.b ] ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %i.al, i64 %.sroa.4.023
  %i.at = getelementptr i8, ptr %i.as, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !77
  %i.av = and i32 %i.au, 65535
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = lshr i64 %i.aw, 12
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !89
  %i.ba = and i64 %i.aw, 4095
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !77
  %i.bd = and i32 %i.bc, 65535                    ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.ar, i64 -4 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !77 ; 2 uses
  %i.bg = and i32 %i.bf, 268369920
  %i.bh = or disjoint i32 %i.bg, %i.bd
  %i.bi = and i32 %i.bf, 65535
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !89
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  store i32 %i.bh, ptr %i.bo, align 4, !tbaa !77
  %i.bp = load i32, ptr %i.be, align 4, !tbaa !77
  %i.bq = zext nneg i32 %i.bd to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bq
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !77
  store i32 268435455, ptr %i.bb, align 4, !tbaa !77
  store ptr %i.be, ptr %i.ap, align 8, !tbaa !47
  %i.bs = add nsw i64 %.sroa.4.023, -1            ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %4
  br i1 %i.bt, label %.loopexit, label %bb.b, !llvm.loop !293

.lr.ph20.new:                                     ; preds = %.prol.loopexit, %.lr.ph20.new
  %i.bu = phi i32 [ %i.cv, %.lr.ph20.new ], [ %.unr, %.prol.loopexit ]
  %.sroa.4.119 = phi i64 [ %i.cz, %.lr.ph20.new ], [ %.sroa.4.119.unr, %.prol.loopexit ] ; 3 uses
  %i.bv = getelementptr [4 x i8], ptr %i.k, i64 %.sroa.4.119
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !77
  %i.by = and i32 %i.bx, 65535
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = lshr i64 %i.bz, 12
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !89
  %i.cd = and i64 %i.bz, 4095
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !77
  store i32 268435455, ptr %i.ce, align 4, !tbaa !77
  %i.cg = and i32 %i.cf, 65535                    ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = or disjoint i32 %i.bu, 268369920
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ch
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !77
  %i.ck = getelementptr [4 x i8], ptr %i.k, i64 %.sroa.4.119
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !77
  %i.cn = and i32 %i.cm, 65535
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = lshr i64 %i.co, 12
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !89
  %i.cs = and i64 %i.co, 4095
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !77
  store i32 268435455, ptr %i.ct, align 4, !tbaa !77
  %i.cv = and i32 %i.cu, 65535                    ; 2 uses
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = or disjoint i32 %i.cg, 268369920
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cw
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !77
  %i.cz = add nsw i64 %.sroa.4.119, -2            ; 2 uses
  %i.da = icmp eq i64 %i.cz, %4
  br i1 %i.da, label %..loopexit15_crit_edge, label %.lr.ph20.new, !llvm.loop !294

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.db = phi i64 [ %.promoted, %.lr.ph ], [ %i.dz, %bb.c ] ; 2 uses
  %.sroa.4.218 = phi i64 [ %2, %.lr.ph ], [ %i.eq, %bb.c ] ; 2 uses
  %i.dc = getelementptr [4 x i8], ptr %i.d, i64 %.sroa.4.218
  %i.dd = getelementptr i8, ptr %i.dc, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !77 ; 2 uses
  %i.df = and i32 %i.de, 65535                    ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = lshr i64 %i.dg, 12
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !89
  %i.dk = and i64 %i.dg, 4095
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !77
  %i.dn = and i32 %i.dm, 65535                    ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.dp = lshr i32 %i.de, 16
  %i.dq = and i32 %i.dp, 4095
  %i.dr = add nuw nsw i32 %i.dq, 1                ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 4095
  %i.dt = shl nuw nsw i32 %i.dr, 16
  %i.du = and i32 %i.dt, 268369920
  %i.dv = select i1 %i.ds, i32 0, i32 %i.du       ; 2 uses
  %i.dw = or disjoint i32 %i.dv, %i.df
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.do ; 3 uses
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !77
  %i.dy = icmp ugt i64 %i.db, %i.do
  %.neg.i = sext i1 %i.dy to i64
  %i.dz = add i64 %i.db, %.neg.i                  ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dz ; 3 uses
  %i.eb = trunc i64 %i.dz to i32
  %i.ec = and i32 %i.eb, 65535
  %i.ed = or disjoint i32 %i.ec, %i.dv
  store i32 %i.ed, ptr %i.dl, align 4, !tbaa !77
  %i.ee = load i32, ptr %i.ea, align 4, !tbaa !77 ; 2 uses
  %i.ef = and i32 %i.ee, 268369920
  %i.eg = or disjoint i32 %i.ef, %i.dn
  %i.eh = and i32 %i.ee, 65535
  %i.ei = zext nneg i32 %i.eh to i64              ; 2 uses
  %i.ej = lshr i64 %i.ei, 12
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !89
  %i.em = and i64 %i.ei, 4095
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.em
  store i32 %i.eg, ptr %i.en, align 4, !tbaa !77
  %i.eo = load i32, ptr %i.dx, align 4, !tbaa !77
  %i.ep = load i32, ptr %i.ea, align 4, !tbaa !77
  store i32 %i.ep, ptr %i.dx, align 4, !tbaa !77
  store i32 %i.eo, ptr %i.ea, align 4, !tbaa !77
  %i.eq = add nsw i64 %.sroa.4.218, -1            ; 2 uses
  %i.er = icmp eq i64 %i.eq, %4
  br i1 %i.er, label %..loopexit17_crit_edge, label %bb.c, !llvm.loop !295

..loopexit15_crit_edge:                           ; preds = %.lr.ph20.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.cw, %.lr.ph20.new ]
  store i64 %.lcssa, ptr %i.n, align 8, !tbaa !105
  br label %.loopexit

..loopexit17_crit_edge:                           ; preds = %bb.c
  store i64 %i.dz, ptr %i.i, align 8, !tbaa !99
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader16, %..loopexit17_crit_edge, %.preheader14, %..loopexit15_crit_edge, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7pop_allEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !98
  %.not.i10 = icmp eq i8 %i.g, 2
  %i.h = select i1 %.not.i10, i64 0, i64 65535
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.h, ptr %i.i, align 8, !tbaa !99
  br label %_ZNSt6vectorIN12ReservedBits9my_entityESaIS1_EE5clearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !150  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !150  ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_ZSt8_DestroyIPN12ReservedBits9my_entityES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.loopexit
  %.sroa.07.012 = phi ptr [ %i.ab, %.loopexit ], [ %i.k, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.07.012, align 8, !tbaa !89 ; 5 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %.lr.ph ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> splat (i32 268435455), ptr %i.p, align 4, !tbaa !77
  store <4 x i32> splat (i32 268435455), ptr %i.q, align 4, !tbaa !77
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store <4 x i32> splat (i32 268435455), ptr %i.s, align 4, !tbaa !77
  store <4 x i32> splat (i32 268435455), ptr %i.t, align 4, !tbaa !77
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store <4 x i32> splat (i32 268435455), ptr %i.v, align 4, !tbaa !77
  store <4 x i32> splat (i32 268435455), ptr %i.w, align 4, !tbaa !77
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  store <4 x i32> splat (i32 268435455), ptr %i.y, align 4, !tbaa !77
  store <4 x i32> splat (i32 268435455), ptr %i.z, align 4, !tbaa !77
  %index.next.3 = add nuw nsw i64 %index, 32      ; 2 uses
  %i.aa = icmp eq i64 %index.next.3, 4096
  br i1 %i.aa, label %.loopexit, label %vector.body, !llvm.loop !296

.loopexit:                                        ; preds = %vector.body, %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 8 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.m
  br i1 %i.ac, label %_ZSt8_DestroyIPN12ReservedBits9my_entityES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph

_ZSt8_DestroyIPN12ReservedBits9my_entityES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.loopexit, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !98
  %.not.i = icmp eq i8 %i.ae, 2
  %i.af = select i1 %.not.i, i64 0, i64 65535
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !99
  store ptr %i.b, ptr %i.c, align 8, !tbaa !47
  br label %_ZNSt6vectorIN12ReservedBits9my_entityESaIS1_EE5clearEv.exit

_ZNSt6vectorIN12ReservedBits9my_entityESaIS1_EE5clearEv.exit: ; preds = %.thread, %_ZSt8_DestroyIPN12ReservedBits9my_entityES1_EvT_S3_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = and i32 %1, 65535
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = lshr i64 %i.c, 12                        ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIPN12ReservedBits9my_entityESaIS2_EE6resizeEmRKS2_.exit.i

_ZNSt6vectorIPN12ReservedBits9my_entityESaIS2_EE6resizeEmRKS2_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !tbaa !89
  %i.n = add nuw nsw i64 %i.d, 1
  %i.o = sub nuw nsw i64 %i.n, %i.l
  call void @_ZNSt6vectorIPN12ReservedBits9my_entityESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.g, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !88
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPN12ReservedBits9my_entityESaIS2_EE6resizeEmRKS2_.exit.i, %bb.a
  %i.p = phi ptr [ %.pre.i, %_ZNSt6vectorIPN12ReservedBits9my_entityESaIS2_EE6resizeEmRKS2_.exit.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.d ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE15assure_at_leastES2_.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.s = call noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #24
  store ptr %i.s, ptr %i.q, align 8, !tbaa !89
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !89   ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i.i.i.i.i.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.w = shl nuw nsw i64 %index, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> splat (i32 268435455), ptr %i.x, align 4, !tbaa !77
  store <4 x i32> splat (i32 268435455), ptr %i.y, align 4, !tbaa !77
  %index.next = shl i64 %index, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %index.next ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store <4 x i32> splat (i32 268435455), ptr %i.aa, align 4, !tbaa !77
  store <4 x i32> splat (i32 268435455), ptr %i.ab, align 4, !tbaa !77
  %index.next.1 = shl i64 %index, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %index.next.1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store <4 x i32> splat (i32 268435455), ptr %i.ad, align 4, !tbaa !77
  store <4 x i32> splat (i32 268435455), ptr %i.ae, align 4, !tbaa !77
  %index.next.2 = shl i64 %index, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %index.next.2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  store <4 x i32> splat (i32 268435455), ptr %i.ag, align 4, !tbaa !77
  store <4 x i32> splat (i32 268435455), ptr %i.ah, align 4, !tbaa !77
  %index.next.3 = add nuw nsw i64 %index, 32      ; 2 uses
  %i.ai = icmp eq i64 %index.next.3, 4096
  br i1 %i.ai, label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE15assure_at_leastES2_.exit, label %vector.body, !llvm.loop !297

_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE15assure_at_leastES2_.exit: ; preds = %vector.body, %bb.b
  %i.aj = phi ptr [ %i.p, %bb.b ], [ %i.t, %vector.body ] ; 3 uses
  %i.ak = phi ptr [ %i.r, %bb.b ], [ %i.v, %vector.body ]
  %i.al = and i64 %i.c, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !47 ; 7 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !48 ; 11 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 11 uses
  %i.au = ashr exact i64 %i.at, 2                 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !98
  switch i8 %i.aw, label %bb.t [
    i8 1, label %bb.c
    i8 0, label %bb.e
    i8 2, label %bb.k
  ]

bb.c:                                             ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE15assure_at_leastES2_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !99 ; 4 uses
  %i.az = icmp eq i64 %i.ay, 65535
  %or.cond = or i1 %2, %i.az
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = trunc i64 %i.ay to i32
  %i.bb = and i32 %i.ba, 65535
  %i.bc = and i32 %1, 268369920
  %i.bd = or disjoint i32 %i.bb, %i.bc
  store i32 %i.bd, ptr %i.am, align 4, !tbaa !77
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ay ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !77
  store i32 %1, ptr %i.be, align 4, !tbaa !77
  %i.bg = and i32 %i.bf, 65535
  %i.bh = zext nneg i32 %i.bg to i64
  store i64 %i.bh, ptr %i.ax, align 8, !tbaa !99
  br label %bb.t
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIPiSaIS0_EE17_M_default_appendEm:bb.a
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !147
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPimS0_ET_S2_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !147
  br label %_ZSt27__uninitialized_default_n_aIPPimS0_ET_S2_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPimS0_ET_S2_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPimS0_ET_S2_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPimS0_ET_S2_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPiSaIS0_EE13_M_deallocateEPS0_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIPiSaIS0_EE13_M_deallocateEPS0_m.exit36

_ZNSt12_Vector_baseIPiSaIS0_EE13_M_deallocateEPS0_m.exit36: ; preds = %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !145
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !154
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !155
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPimS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPiSaIS0_EE13_M_deallocateEPS0_m.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIPiSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !305    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !305  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #25
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIPiSaIS0_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPiSaIS0_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIPiSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

_ZNSt12_Vector_baseIPiSaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIPiSaIS0_EED2Ev.exit.i ; 6 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPiSaIS0_EE11_M_allocateEm.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 4 uses
  %i.k = icmp samesign ugt i64 %i.f, 8
  br i1 %i.k, label %bb.c, label %bb.d, !prof !164

bb.c:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.a, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPiSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

bb.d:                                             ; preds = %.noexc5.i
  %i.l = icmp eq i64 %i.f, 8
  br i1 %i.l, label %_ZNSt6vectorIPiSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread, label %_ZNSt6vectorIPiSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

_ZNSt6vectorIPiSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread: ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !147
  store ptr %i.m, ptr %i.i, align 8, !tbaa !147
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !155
  store ptr %i.i, ptr %0, align 8, !tbaa !145
  store ptr %i.j, ptr %i.b, align 8, !tbaa !154
  store ptr %i.j, ptr %i.n, align 8, !tbaa !155
  br label %bb.e

_ZNSt12_Vector_baseIPiSaIS0_EED2Ev.exit.i:        ; preds = %bb.b, %_ZNSt12_Vector_baseIPiSaIS0_EE11_M_allocateEm.exit.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.09) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit unwind label %bb.f

_ZNSt6vectorIPiSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit: ; preds = %bb.d, %bb.c, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.h, %.thread.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.012.0 = phi ptr [ null, %.thread.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !145
  store ptr %.sroa.12.0, ptr %i.b, align 8, !tbaa !154
  store ptr %.sroa.12.0, ptr %i.r, align 8, !tbaa !155
  %.not.i.i.i10 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPiSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread, %_ZNSt6vectorIPiSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit
  %i.t = phi ptr [ %i.o, %_ZNSt6vectorIPiSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread ], [ %i.s, %_ZNSt6vectorIPiSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit

_ZNSt6vectorIPiSaIS0_EED2Ev.exit:                 ; preds = %bb.e, %_ZNSt6vectorIPiSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit, %_ZNSt12_Vector_baseIPiSaIS0_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIPiSaIS0_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIPiSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ], [ true, %bb.e ]
  ret i1 %.0

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPiSaIS0_EED2Ev.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #23
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !306
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !107  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !306
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE20insert_or_do_nothingIRSC_JRS7_EEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.105", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.108", align 8    ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !107    ; 3 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.e = load ptr, ptr %0, align 8, !tbaa !122    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, %i.b                       ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.in.i = phi ptr [ %i.l, %bb.a ], [ %i.o, %bb.c ]
  %.07.i = load i64, ptr %.07.in.i, align 8, !tbaa !105 ; 2 uses
  %.not.i = icmp eq i64 %.07.i, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.07.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !107
  %i.r = icmp eq i32 %i.q, %i.a
  br i1 %i.r, label %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE16constrained_findIjEEDaRKT_m.exit.loopexit, label %bb.b, !llvm.loop !4

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !127  ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w
  br label %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE16constrained_findIjEEDaRKT_m.exit

_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE16constrained_findIjEEDaRKT_m.exit.loopexit: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !127
  br label %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE16constrained_findIjEEDaRKT_m.exit

_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE16constrained_findIjEEDaRKT_m.exit: ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE16constrained_findIjEEDaRKT_m.exit.loopexit, %bb.d
  %i.y = phi ptr [ %i.t, %bb.d ], [ %.pre, %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE16constrained_findIjEEDaRKT_m.exit.loopexit ] ; 8 uses
  %.sroa.0.1.i = phi ptr [ %i.x, %bb.d ], [ %i.o, %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE16constrained_findIjEEDaRKT_m.exit.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = icmp eq ptr %.sroa.0.1.i, %i.y
  br i1 %i.aa, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE16constrained_findIjEEDaRKT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %1, ptr %3, align 8, !tbaa !147, !alias.scope !311
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %2, ptr %4, align 8, !tbaa !166, !alias.scope !312
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167
  %.not.i13 = icmp eq ptr %i.y, %i.ac
  br i1 %.not.i13, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !105
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !171
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %i.a, ptr %i.ae, align 8, !tbaa !172
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !136 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %2, align 8, !tbaa !89
  store <2 x ptr> %i.ai, ptr %i.af, align 8, !tbaa !89
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt12construct_atIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESF_IJRS9_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !107
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !107
  br label %_ZSt12construct_atIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESF_IJRS9_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !127
  br label %_ZSt12construct_atIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESF_IJRS9_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit.i

_ZSt12construct_atIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESF_IJRS9_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ao = phi ptr [ %i.y, %bb.f ], [ %i.y, %bb.h ], [ %.pre.i, %bb.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  store ptr %i.ap, ptr %i.z, align 8, !tbaa !127
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEERSA_DpOT_.exit

bb.j:                                             ; preds = %bb.e
  call void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre21 = load ptr, ptr %i.z, align 8, !tbaa !127
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEERSA_DpOT_.exit

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEERSA_DpOT_.exit: ; preds = %_ZSt12construct_atIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESF_IJRS9_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit.i, %bb.j
  %i.aq = phi ptr [ %i.ap, %_ZSt12construct_atIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESF_IJRS9_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit.i ], [ %.pre21, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !173 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 5                 ; 2 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = load ptr, ptr %0, align 8, !tbaa !122   ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.k
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !105
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = uitofp i64 %i.bd to float
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !186
  %i.bh = fmul float %i.bg, %i.be
  %i.bi = fptoui float %i.bh to i64
  %i.bj = icmp ugt i64 %i.av, %i.bi
  br i1 %i.bj, label %bb.k, label %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE18rehash_if_requiredEv.exit

bb.k:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEERSA_DpOT_.exit
  %i.bk = ashr exact i64 %i.bc, 2
  call void @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %i.bk)
  %.pre22 = load ptr, ptr %i.m, align 8, !tbaa !173 ; 2 uses
  %.pre23 = load ptr, ptr %i.z, align 8, !tbaa !127
  %.pre24 = ptrtoint ptr %.pre23 to i64
  %.pre25 = ptrtoint ptr %.pre22 to i64
  %.pre27 = sub i64 %.pre24, %.pre25
  br label %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE18rehash_if_requiredEv.exit

_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE18rehash_if_requiredEv.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEERSA_DpOT_.exit, %bb.k
  %.pre-phi28 = phi i64 [ %i.au, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEERSA_DpOT_.exit ], [ %.pre27, %bb.k ]
  %i.bl = phi ptr [ %i.ar, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEERSA_DpOT_.exit ], [ %.pre22, %bb.k ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.pre-phi28
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -32
  br label %bb.l

bb.l:                                             ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE16constrained_findIjEEDaRKT_m.exit, %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE18rehash_if_requiredEv.exit
  %.sroa.012.1 = phi ptr [ %i.bn, %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE18rehash_if_requiredEv.exit ], [ %.sroa.0.1.i, %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE16constrained_findIjEEDaRKT_m.exit ]
  %.sroa.3.1 = phi i8 [ 1, %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE18rehash_if_requiredEv.exit ], [ 0, %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE16constrained_findIjEEDaRKT_m.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.012.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !173    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
  unreachable

_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !105
  store i64 %i.r, ptr %i.q, align 8, !tbaa !171
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %4, align 8, !tbaa !147
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %5, align 8, !tbaa !166
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i32, ptr %i.u, align 4, !tbaa !107
  store i32 %i.x, ptr %i.s, align 8, !tbaa !172
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !136 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.w, align 8, !tbaa !89
  store <2 x ptr> %i.ab, ptr %i.y, align 8, !tbaa !89
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEEE9constructISA_JRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEEvRSB_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !107
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !107
  br label %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEEE9constructISA_JRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEEvRSB_PT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEEE9constructISA_JRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEEvRSB_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEEE9constructISA_JRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEEvRSB_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEEE9constructISA_JRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEEvRSB_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEEE9constructISA_JRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEEvRSB_PT_DpOT0_.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEEE9constructISA_JRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEEvRSB_PT_DpOT0_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.ah = load i64, ptr %.0911.i.i.i, align 8, !tbaa !171, !alias.scope !320, !noalias !319
  store i64 %i.ah, ptr %.012.i.i.i, align 8, !tbaa !171, !alias.scope !319, !noalias !320
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !172, !alias.scope !320, !noalias !319
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !172, !alias.scope !319, !noalias !320
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !tbaa !89, !alias.scope !320, !noalias !319
  store ptr null, ptr %i.an, align 8, !tbaa !136, !alias.scope !320, !noalias !319
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !89, !alias.scope !319, !noalias !320
  store ptr null, ptr %i.am, align 8, !tbaa !131, !alias.scope !320, !noalias !319
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i, !llvm.loop !9

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEEE9constructISA_JRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEEvRSB_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEEEE9constructISA_JRmRKSt21piecewise_construct_tSt5tupleIJRKjEESI_IJRS9_EEEEEvRSB_PT_DpOT0_.exit ], [ %i.aq, %.lr.ph.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bb, %.lr.ph.i.i.i30 ], [ %i.ar, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 4 uses
  %.0911.i.i.i32 = phi ptr [ %i.ba, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.as = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !171, !alias.scope !322, !noalias !321
  store i64 %i.as, ptr %.012.i.i.i31, align 8, !tbaa !171, !alias.scope !321, !noalias !322
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !172, !alias.scope !322, !noalias !321
  store i32 %i.av, ptr %i.at, align 8, !tbaa !172, !alias.scope !321, !noalias !322
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 24
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !89, !alias.scope !322, !noalias !321
  store ptr null, ptr %i.ay, align 8, !tbaa !136, !alias.scope !322, !noalias !321
  store <2 x ptr> %i.az, ptr %i.aw, align 8, !tbaa !89, !alias.scope !321, !noalias !322
  store ptr null, ptr %i.ax, align 8, !tbaa !131, !alias.scope !322, !noalias !321
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 32 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !9

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ar, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ], [ %i.bb, %.lr.ph.i.i.i30 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE13_M_deallocateEPSA_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit35
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !167
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #22
  br label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE13_M_deallocateEPSA_m.exit

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE13_M_deallocateEPSA_m.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !173
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !127
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %i.i = uitofp i64 %i.h to float
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load float, ptr %i.j, align 8, !tbaa !186
  %i.l = fdiv float %i.i, %i.k
  %i.m = fptoui float %i.l to i64
  %i.n = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.m)
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 8)
  %i.p = add i64 %i.o, -1
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 false)
  %i.r = sub nuw nsw i64 64, %i.q
  %i.s = shl nuw i64 1, %i.r                      ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !124  ; 4 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !122    ; 5 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 4 uses
  %.not = icmp eq i64 %i.s, %i.z
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp ugt i64 %i.s, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = sub nuw i64 %i.s, %i.z
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab)
  %.pre = load ptr, ptr %0, align 8, !tbaa !187
  %.pre26 = load ptr, ptr %i.t, align 8, !tbaa !187
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.s, %i.z
  br i1 %i.ac, label %bb.e, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !124
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.ae = phi ptr [ %.pre26, %bb.c ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.ad, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.af = phi ptr [ %.pre, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ah = ptrtoaddr ptr %i.ae to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -8
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = and i64 %i.ak, -8
  %i.am = add i64 %i.al, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 -1, i64 %i.am, i1 false), !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !127 ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !173 ; 5 uses
  %.not25 = icmp eq ptr %i.an, %i.ao
  br i1 %.not25, label %.loopexit, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = ashr exact i64 %i.ar, 5                 ; 2 uses
  %i.at = ptrtoint ptr %i.ae to i64
  %i.au = ptrtoint ptr %i.af to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = lshr exact i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 4294967295       ; 3 uses
  %i.ay = icmp eq i64 %i.ar, 32
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph24.new

.lr.ph24.new:                                     ; preds = %.lr.ph24
  %unroll_iter = and i64 %i.as, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph24.new
  %.022 = phi i64 [ 0, %.lr.ph24.new ], [ %i.bo, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph24.new ], [ %niter.next.1, %bb.f ]
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %.022 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !107
  %i.bc = zext i32 %i.bb to i64
  %i.bd = and i64 %i.ax, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !105
  store i64 %.022, ptr %i.be, align 8, !tbaa !105
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !171
  %i.bg = or disjoint i64 %.022, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !107
  %i.bk = zext i32 %i.bj to i64
  %i.bl = and i64 %i.ax, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !105
  store i64 %i.bg, ptr %i.bm, align 8, !tbaa !105
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !171
  %i.bo = add nuw i64 %.022, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !323

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %i.bp = and i64 %i.ar, 32
  %lcmp.mod.not = icmp eq i64 %i.bp, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph24
  %.022.epil.init = phi i64 [ 0, %.lr.ph24 ], [ %i.bo, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %.022.epil.init ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !107
  %i.bt = zext i32 %i.bs to i64
  %i.bu = and i64 %i.ax, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bu ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !105
  store i64 %.022.epil.init, ptr %i.bv, align 8, !tbaa !105
  store i64 %i.bw, ptr %i.bq, align 8, !tbaa !171
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !122    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !105
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !124
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #25
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !105
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !105
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !122
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !124
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !123
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryIN12ReservedBits9my_entityESaIS5_EEEEEPKvNS_8internal11any_requestERKS1_S9_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !142
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = select i1 %i.c, ptr %1, ptr %i.d         ; 2 uses
  switch i8 %0, label %_ZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEv.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEv.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEvE8instance) #21
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2INS_14basic_registryIN12ReservedBits9my_entityESaIS4_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEvE8instance) #21
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEvE8instance) #21
  br label %_ZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(336) %i.e, ptr noundef nonnull align 8 dereferenceable(336) %2) #21, !inline_history !324
  br label %_ZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %i.e, %2
  %i.k = select i1 %i.j, ptr %2, ptr null
  br label %_ZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEv.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b, %bb.f, %bb.e
  %i.l = phi ptr [ %2, %bb.e ], [ %i.k, %bb.f ], [ null, %bb.a ], [ @_ZZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEERKNS_9type_infoEvE8instance, %bb.b ]
  ret ptr %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2INS_14basic_registryIN12ReservedBits9my_entityESaIS4_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEE5valueEv.exit, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEE5valueEvE5value) #21
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !107 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !107
  store i32 %i.d, ptr @_ZZN4entt10type_indexINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEE5valueEvE5value, align 4, !tbaa !107
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEE5valueEvE5value) #21
  br label %_ZN4entt10type_indexINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEE5valueEv.exit

_ZN4entt10type_indexINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexINS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEE5valueEvE5value, align 4, !tbaa !107
  store i32 %i.g, ptr %0, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 552509104, ptr %i.h, align 4, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 45, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.26, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %3 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %4 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %5 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %6 = alloca %"class.entt::dense_map.21", align 16 ; 7 uses
  %7 = alloca %"class.entt::dense_map.12", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load <2 x ptr>, ptr %0, align 8, !tbaa !187
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 24, i1 false)
  %i.h = load <2 x ptr>, ptr %i.c, align 8, !tbaa !188
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.j = load float, ptr %i.e, align 8, !tbaa !195
  %i.k = tail call noundef nonnull align 8 dereferenceable(52) ptr @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #21 ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !122    ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !123
  store <2 x ptr> %i.g, ptr %1, align 8, !tbaa !187
  store ptr %i.b, ptr %i.f, align 8, !tbaa !123
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.p) #22
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i

_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !114  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !119
  store <2 x ptr> %i.h, ptr %i.q, align 8, !tbaa !188
  store ptr %i.i, ptr %i.u, align 8, !tbaa !119
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.r, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !118  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(29) %i.y)
          to label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.d, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #23
  unreachable

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i4.i.i = icmp eq ptr %i.ab, %i.t
  br i1 %.not.i.i.i.i.i.i.i4.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt4swapIN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = ptrtoint ptr %i.r to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ae) #22
  br label %_ZSt4swapIN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_.exit

_ZSt4swapIN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_.exit: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.j, ptr %i.af, align 8, !tbaa !195
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.ai = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !187
  store <2 x ptr> %i.ai, ptr %7, align 16, !tbaa !187
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
end_hunk_5
begin_hunk_6_@_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE4swapERS4_:bb.a
  call void @_ZSt4swapIN4entt16basic_sigh_mixinINS0_13basic_storageIN12ReservedBits9my_entityES4_SaIS4_EEENS0_14basic_registryIS4_S5_EEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISD_ESt18is_move_assignableISD_EEE5valueEvE4typeERSD_SM_(ptr noundef nonnull align 8 dereferenceable(168) %i.bs, ptr noundef nonnull align 8 dereferenceable(168) %i.bt) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryIN12ReservedBits9my_entityESaIS5_EEEEEPKvNS_8internal11any_requestERKS1_S9_, ptr %i.bu, align 8, !tbaa !139, !alias.scope !333
  store i32 552509104, ptr %i.bw, align 8, !tbaa !140, !alias.scope !333
  store ptr null, ptr %i.bv, align 8, !tbaa !141, !alias.scope !333
  store i8 3, ptr %i.bx, align 4, !tbaa !142, !alias.scope !333
  store ptr %0, ptr %5, align 8, !tbaa !37, !alias.scope !333
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(80) %i.bs, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %5) #21, !inline_history !10
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i, label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZSt4swapIN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_.exit
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(37) %5)
          to label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i unwind label %bb.g, !inline_history !11

bb.g:                                             ; preds = %bb.f
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #23, !inline_history !10
  unreachable

_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i: ; preds = %bb.f, %_ZSt4swapIN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ce = load ptr, ptr %i.al, align 8, !tbaa !173 ; 2 uses
  %i.cf = load ptr, ptr %i.am, align 8, !tbaa !127 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6rebindEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 36
  br label %bb.h

bb.h:                                             ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i, %.lr.ph.i
  %.sroa.06.09.i = phi ptr [ %i.ce, %.lr.ph.i ], [ %i.ct, %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryIN12ReservedBits9my_entityESaIS5_EEEEEPKvNS_8internal11any_requestERKS1_S9_, ptr %i.ch, align 8, !tbaa !139, !alias.scope !334
  store i32 552509104, ptr %i.cj, align 8, !tbaa !140, !alias.scope !334
  store ptr null, ptr %i.ci, align 8, !tbaa !141, !alias.scope !334
  store i8 3, ptr %i.ck, align 4, !tbaa !142, !alias.scope !334
  store ptr %0, ptr %4, align 8, !tbaa !37, !alias.scope !334
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(80) %i.cm, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %4) #21, !inline_history !10
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i4.i, label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(37) %4)
          to label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i unwind label %bb.j, !inline_history !11

bb.j:                                             ; preds = %bb.i
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #23, !inline_history !10
  unreachable

_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 32 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.cf
  br i1 %i.cu, label %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6rebindEv.exit, label %bb.h

_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6rebindEv.exit: ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i, %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryIN12ReservedBits9my_entityESaIS5_EEEEEPKvNS_8internal11any_requestERKS1_S9_, ptr %i.cv, align 8, !tbaa !139, !alias.scope !335
  store i32 552509104, ptr %i.cx, align 8, !tbaa !140, !alias.scope !335
  store ptr null, ptr %i.cw, align 8, !tbaa !141, !alias.scope !335
  store i8 3, ptr %i.cy, align 4, !tbaa !142, !alias.scope !335
  store ptr %1, ptr %3, align 8, !tbaa !37, !alias.scope !335
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %3) #21, !inline_history !10
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i6, label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i7, label %bb.k

bb.k:                                             ; preds = %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6rebindEv.exit
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(37) %3)
          to label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i7 unwind label %bb.l, !inline_history !11

bb.l:                                             ; preds = %bb.k
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #23, !inline_history !10
  unreachable

_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i7: ; preds = %bb.k, %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6rebindEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !173 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !127 ; 2 uses
  %i.dj = icmp eq ptr %i.dg, %i.di
  br i1 %i.dj, label %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6rebindEv.exit12, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i7
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 36
  br label %bb.m

bb.m:                                             ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i11, %.lr.ph.i8
  %.sroa.06.09.i9 = phi ptr [ %i.dg, %.lr.ph.i8 ], [ %i.dw, %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i11 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i9, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryIN12ReservedBits9my_entityESaIS5_EEEEEPKvNS_8internal11any_requestERKS1_S9_, ptr %i.dk, align 8, !tbaa !139, !alias.scope !336
  store i32 552509104, ptr %i.dm, align 8, !tbaa !140, !alias.scope !336
  store ptr null, ptr %i.dl, align 8, !tbaa !141, !alias.scope !336
  store i8 3, ptr %i.dn, align 4, !tbaa !142, !alias.scope !336
  store ptr %1, ptr %2, align 8, !tbaa !37, !alias.scope !336
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !25
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(80) %i.dp, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %2) #21, !inline_history !10
  %i.dt = load ptr, ptr %i.dl, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i4.i10 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i4.i10, label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i11, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(37) %2)
          to label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i11 unwind label %bb.o, !inline_history !11

bb.o:                                             ; preds = %bb.n
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #23, !inline_history !10
  unreachable

_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i11: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i9, i64 32 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.di
  br i1 %i.dx, label %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6rebindEv.exit12, label %bb.m

_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6rebindEv.exit12: ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i11, %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i7
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt4swapIN4entt16basic_sigh_mixinINS0_13basic_storageIN12ReservedBits9my_entityES4_SaIS4_EEENS0_14basic_registryIS4_S5_EEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISD_ESt18is_move_assignableISD_EEE5valueEvE4typeERSD_SM_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.entt::basic_sigh_mixin", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !150
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !150
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !157
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !89
  %i.l = insertelement <4 x ptr> poison, ptr %i.i, i64 0
  %i.m = insertelement <4 x ptr> %i.l, ptr %i.j, i64 1
  %i.n = shufflevector <2 x ptr> %i.k, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.o = shufflevector <4 x ptr> %i.m, <4 x ptr> %i.n, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.o, ptr %i.d, align 8, !tbaa !89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !135
  store ptr %i.r, ptr %i.p, align 8, !tbaa !135
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i8, ptr %i.t, align 8, !tbaa !98    ; 2 uses
  store i8 %i.u, ptr %i.s, align 8, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.u, 2
  %i.x = select i1 %.not.i.i.i.i, i64 0, i64 65535
  %i.y = load i64, ptr %i.w, align 8, !tbaa !105
  store i64 %i.x, ptr %i.w, align 8, !tbaa !105
  store i64 %i.y, ptr %i.v, align 8, !tbaa !99
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sigh_mixinINS_13basic_storageIN12ReservedBits9my_entityES3_SaIS3_EEENS_14basic_registryIS3_S4_EEEE, i64 16), ptr %2, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !89
  %i.aq = load <2 x ptr>, ptr %i.af, align 8, !tbaa !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !148
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.av = load ptr, ptr %i.aj, align 8, !tbaa !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.aw = load ptr, ptr %i.ak, align 8, !tbaa !71
  %i.ax = load <2 x ptr>, ptr %i.am, align 8, !tbaa !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  tail call void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN12ReservedBits9my_entityES3_SaIS3_EEENS_14basic_registryIS3_S4_EEE4swapERS8_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) #21
  %i.ay = load <2 x ptr>, ptr %i.an, align 8, !tbaa !89
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !89
  store <2 x ptr> %i.ay, ptr %i.ab, align 8, !tbaa !89
  %i.az = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !148
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !148
  store <2 x ptr> %i.az, ptr %i.ae, align 8, !tbaa !148
  %i.ba = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !148
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !148
  store <2 x ptr> %i.ba, ptr %i.ag, align 8, !tbaa !148
  %i.bb = load <2 x ptr>, ptr %i.as, align 8, !tbaa !148
  store <2 x ptr> %i.bb, ptr %i.ai, align 8, !tbaa !148
  %i.bc = load <2 x ptr>, ptr %i.au, align 8, !tbaa !148
  %i.bd = insertelement <4 x ptr> poison, ptr %i.av, i64 0
  %i.be = insertelement <4 x ptr> %i.bd, ptr %i.aw, i64 1
  %i.bf = shufflevector <2 x ptr> %i.ax, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x ptr> %i.be, <4 x ptr> %i.bf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.bg, ptr %i.as, align 8, !tbaa !148
  store <2 x ptr> %i.bc, ptr %i.al, align 8, !tbaa !148
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !150
  %i.bl = load <2 x ptr>, ptr %i.a, align 8, !tbaa !150
  store <2 x ptr> %i.bl, ptr %i.bi, align 8, !tbaa !150
  store <2 x ptr> %i.bk, ptr %i.a, align 8, !tbaa !150
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bn = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !89
  %i.bo = load <2 x ptr>, ptr %i.d, align 8, !tbaa !89
  store <2 x ptr> %i.bo, ptr %i.bj, align 8, !tbaa !89
  store <2 x ptr> %i.bn, ptr %i.d, align 8, !tbaa !89
  %i.bp = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !89
  %i.bq = load <2 x ptr>, ptr %i.g, align 8, !tbaa !89
  store <2 x ptr> %i.bq, ptr %i.bm, align 8, !tbaa !89
  store <2 x ptr> %i.bp, ptr %i.g, align 8, !tbaa !89
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !209
  %i.bt = load ptr, ptr %i.p, align 8, !tbaa !209
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !209
  store ptr %i.bs, ptr %i.p, align 8, !tbaa !209
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !210
  %i.bw = load i8, ptr %i.s, align 8, !tbaa !210
  store i8 %i.bw, ptr %i.bu, align 8, !tbaa !210
  store i8 %i.bv, ptr %i.s, align 8, !tbaa !210
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.by = load i64, ptr %i.v, align 8, !tbaa !105
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !tbaa !105
  store i64 %i.aa, ptr %i.bh, align 8, !tbaa !105
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !105
  store <2 x i64> %i.bz, ptr %i.v, align 8, !tbaa !105
  call void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN12ReservedBits9my_entityES3_SaIS3_EEENS_14basic_registryIS3_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(29) %i.g)
          to label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i unwind label %bb.c, !inline_history !2

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #23
  unreachable

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !119
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #22
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i

_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.q = load ptr, ptr %0, align 8, !tbaa !122    ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !123
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #22
  br label %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEED2Ev.exit

_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEED2Ev.exit: ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(52) ptr @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !122    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !187
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !187
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  store ptr %i.f, ptr %i.b, align 8, !tbaa !123
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #22
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit

_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !113  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !119
  %i.q = load <2 x ptr>, ptr %i.k, align 8, !tbaa !188
  store <2 x ptr> %i.q, ptr %i.j, align 8, !tbaa !188
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !119
  store ptr %i.s, ptr %i.o, align 8, !tbaa !119
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.l, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(29) %i.v)
          to label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i unwind label %bb.d, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #23
  unreachable

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.y, %i.n
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EESt8equal_toIvEEaSEOSB_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.z = ptrtoint ptr %i.p to i64
  %i.aa = ptrtoint ptr %i.l to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ab) #22
  br label %_ZN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EESt8equal_toIvEEaSEOSB_.exit

_ZN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EESt8equal_toIvEEaSEOSB_.exit: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !195
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ad, ptr %i.ae, align 8, !tbaa !195
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(29) %i.f)
          to label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i unwind label %bb.c, !inline_history !2

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #23
  unreachable

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !113
  br label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i
end_hunk_6
begin_hunk_7_@_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EED2Ev:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !157
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22
  br label %_ZNSt6vectorIPN12ReservedBits9my_entityESaIS2_EED2Ev.exit

_ZNSt6vectorIPN12ReservedBits9my_entityESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN12ReservedBits9my_entityESaIS1_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN4entt13basic_storageIN12ReservedBits9my_entityES2_SaIS2_EE8generateES2_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %1, 65535                        ; 2 uses
  %i.b = icmp eq i32 %i.a, 65535
  %i.c = and i32 %1, 268369920
  %i.d = icmp eq i32 %i.c, 268369920
  %or.cond = or i1 %i.b, %i.d
  br i1 %or.cond, label %..thread_crit_edge, label %bb.b

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !99
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.a to i64                ; 2 uses
  %i.f = lshr i64 %i.e, 12                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !88   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = icmp ult i64 %i.f, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.thread, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit

_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit: ; preds = %bb.c
  %i.r = and i64 %i.e, 4095
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !77   ; 2 uses
  %i.u = and i32 %i.t, 268369920
  %i.v = icmp eq i32 %i.u, 268369920
  br i1 %i.v, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit
  %i.w = and i32 %i.t, 65535
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !99   ; 2 uses
  %i.aa = icmp ugt i64 %i.z, %i.x
  br i1 %i.aa, label %.thread, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %i.ab = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.z, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2
  %i.ak = icmp eq i64 %i.ab, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !208 ; 3 uses
  %i.an = trunc i64 %i.am to i32
  %i.ao = and i32 %i.an, 65535                    ; 3 uses
  %i.ap = icmp ne i32 %i.ao, 65535
  %i.aq = zext i1 %i.ap to i64
  %i.ar = add i64 %i.am, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !87
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !88 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3                 ; 2 uses
  %i.ba = and i64 %i.am, 65535                    ; 2 uses
  %i.bb = lshr i64 %i.ba, 12                      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZN4entt13basic_storageIN12ReservedBits9my_entityES2_SaIS2_EE4nextEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %i.bd = phi i64 [ %i.bs, %bb.f ], [ %i.bb, %bb.e ]
  %i.be = phi i64 [ %i.br, %bb.f ], [ %i.ba, %bb.e ]
  %.05.i.i = phi i32 [ %i.bn, %bb.f ], [ %i.ao, %bb.e ] ; 3 uses
  %storemerge4.i.i = phi i64 [ %i.bq, %bb.f ], [ %i.ar, %bb.e ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN4entt13basic_storageIN12ReservedBits9my_entityES2_SaIS2_EE4nextEv.exit.i, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.i.i

_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bh = and i64 %i.be, 4095
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !77
  %i.bk = and i32 %i.bj, 268369920
  %.not.i.i10 = icmp eq i32 %i.bk, 268369920
  %i.bl = icmp eq i32 %.05.i.i, 65535
  %or.cond.i.i = or i1 %i.bl, %.not.i.i10
  br i1 %or.cond.i.i, label %_ZN4entt13basic_storageIN12ReservedBits9my_entityES2_SaIS2_EE4nextEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.i.i
  %i.bm = trunc i64 %storemerge4.i.i to i32
  %i.bn = and i32 %i.bm, 65535                    ; 3 uses
  %i.bo = icmp ne i32 %i.bn, 65535
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %storemerge4.i.i, %i.bp         ; 2 uses
  %i.br = and i64 %storemerge4.i.i, 65535         ; 2 uses
  %i.bs = lshr i64 %i.br, 12                      ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.az
  br i1 %i.bt, label %.lr.ph.i.i, label %_ZN4entt13basic_storageIN12ReservedBits9my_entityES2_SaIS2_EE4nextEv.exit.i, !llvm.loop !346

_ZN4entt13basic_storageIN12ReservedBits9my_entityES2_SaIS2_EE4nextEv.exit.i: ; preds = %bb.f, %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.i.i, %.lr.ph.i.i, %bb.e
  %storemerge.lcssa.i.i = phi i64 [ %i.ar, %bb.e ], [ %storemerge4.i.i, %.lr.ph.i.i ], [ %i.bq, %bb.f ], [ %storemerge4.i.i, %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.i.i ]
  %.0.lcssa.i.i = phi i32 [ %i.ao, %bb.e ], [ %.05.i.i, %.lr.ph.i.i ], [ %i.bn, %bb.f ], [ %.05.i.i, %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.i.i ]
  store i64 %storemerge.lcssa.i.i, ptr %i.al, align 8, !tbaa !208
  br label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.thread

bb.g:                                             ; preds = %.thread
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ab
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !77
  br label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.thread

_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit.thread: ; preds = %bb.g, %_ZN4entt13basic_storageIN12ReservedBits9my_entityES2_SaIS2_EE4nextEv.exit.i, %bb.d, %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit, %bb.b, %bb.c
  %.sink25 = phi i32 [ %1, %bb.d ], [ %1, %bb.c ], [ %1, %bb.b ], [ %1, %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE7currentES2_.exit ], [ %.0.lcssa.i.i, %_ZN4entt13basic_storageIN12ReservedBits9my_entityES2_SaIS2_EE4nextEv.exit.i ], [ %i.bv, %bb.g ]
  %i.bw = tail call { ptr, i64 } @_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.sink25, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0
  %i.by = extractvalue { ptr, i64 } %i.bw, 1
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !48
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %i.by
  %.1.in = getelementptr i8, ptr %i.ca, i64 -4
  %.1 = load i32, ptr %.1.in, align 4, !tbaa !77
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN12ReservedBits9my_entityES3_SaIS3_EEENS_14basic_registryIS3_S4_EEE4swapERS8_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !347
  store ptr %i.d, ptr %i.a, align 8, !tbaa !347
  store ptr %i.c, ptr %i.b, align 8, !tbaa !347
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.e, align 8, !tbaa !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.k = load <2 x ptr>, ptr %i.f, align 8, !tbaa !148
  store <2 x ptr> %i.k, ptr %i.e, align 8, !tbaa !148
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !144
  store ptr %i.l, ptr %i.g, align 8, !tbaa !144
  store <2 x ptr> %i.j, ptr %i.f, align 8, !tbaa !148
  store ptr %i.h, ptr %i.i, align 8, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.m, align 8, !tbaa !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.s = load <2 x ptr>, ptr %i.n, align 8, !tbaa !148
  store <2 x ptr> %i.s, ptr %i.m, align 8, !tbaa !148
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !144
  store ptr %i.t, ptr %i.o, align 8, !tbaa !144
  store <2 x ptr> %i.r, ptr %i.n, align 8, !tbaa !148
  store ptr %i.p, ptr %i.q, align 8, !tbaa !144
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !144
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.u, align 8, !tbaa !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.aa = load <2 x ptr>, ptr %i.v, align 8, !tbaa !148
  store <2 x ptr> %i.aa, ptr %i.u, align 8, !tbaa !148
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !144
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !144
  store <2 x ptr> %i.z, ptr %i.v, align 8, !tbaa !148
  store ptr %i.x, ptr %i.y, align 8, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !105
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !105
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !105
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !157
  %i.ak = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !150
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !150
  store <2 x ptr> %i.ak, ptr %i.ag, align 8, !tbaa !150
  store <2 x ptr> %i.am, ptr %i.ah, align 8, !tbaa !150
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !153
  %i.as = load <2 x ptr>, ptr %i.al, align 8, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load <2 x ptr>, ptr %i.an, align 8, !tbaa !89
  store <2 x ptr> %i.as, ptr %i.ai, align 8, !tbaa !89
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !157
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !89
  store <2 x ptr> %i.aw, ptr %i.ap, align 8, !tbaa !89
  store <2 x ptr> %i.av, ptr %i.ao, align 8, !tbaa !89
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !153
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !209
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !209
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !209
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !209
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bd = load i8, ptr %i.bb, align 8, !tbaa !210
  %i.be = load i8, ptr %i.bc, align 8, !tbaa !210
  store i8 %i.be, ptr %i.bb, align 8, !tbaa !210
  store i8 %i.bd, ptr %i.bc, align 8, !tbaa !210
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !105
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !105
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !105
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !105
  ret void
}

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(336) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %4 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 48, i1 false)
  store float 8.750000e-01, ptr %i.a, align 8, !tbaa !195
  invoke void @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 8)
          to label %_ZN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEEC2ERKSaISt4pairIKjNS_9basic_anyILm0ELm8EEEEE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #21
  %i.d = load ptr, ptr %0, align 8, !tbaa !122    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #22
  br label %.body

_ZN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEEC2ERKSaISt4pairIKjNS_9basic_anyILm0ELm8EEEEE.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.j, i8 0, i64 48, i1 false)
  store float 8.750000e-01, ptr %i.k, align 8, !tbaa !186
  invoke void @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %i.j, i64 noundef 8)
          to label %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEEC2ERKSE_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEEC2ERKSaISt4pairIKjNS_9basic_anyILm0ELm8EEEEE.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS7_EEEEEESaISB_EELm0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #21
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %.body15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #22
  br label %.body15

_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEEC2ERKSE_.exit: ; preds = %_ZN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEEC2ERKSaISt4pairIKjNS_9basic_anyILm0ELm8EEEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.t, i8 0, i64 48, i1 false)
  store float 8.750000e-01, ptr %i.u, align 8, !tbaa !207
  invoke void @_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %i.t, i64 noundef 8)
          to label %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEEC2ERKSB_.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEEC2ERKSE_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjSt10shared_ptrINS0_16group_descriptorEEEESaIS7_EELm0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.w) #21
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i.i.i17 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i17, label %.body19, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !123
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #22
  br label %.body19

_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEEC2ERKSB_.exit: ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEEC2ERKSE_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.ae = load atomic i8, ptr @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.j, !prof !38

bb.h:                                             ; preds = %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEEC2ERKSB_.exit
  %i.ag = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #21
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4entt9type_infoC2IvEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #21
  %i.ah = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEEC2ERKSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance, ptr %i.aj, align 8, !tbaa !135
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 2, ptr %i.ak, align 8, !tbaa !98
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sigh_mixinINS_13basic_storageIN12ReservedBits9my_entityES3_SaIS3_EEENS_14basic_registryIS3_S4_EEEE, i64 16), ptr %i.ad, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.am, i8 0, i64 80, i1 false)
  invoke void @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(52) %i.j, i64 noundef %1)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryIN12ReservedBits9my_entityESaIS5_EEEEEPKvNS_8internal11any_requestERKS1_S9_, ptr %i.an, align 8, !tbaa !139, !alias.scope !352
  store i32 552509104, ptr %i.ap, align 8, !tbaa !140, !alias.scope !352
  store ptr null, ptr %i.ao, align 8, !tbaa !141, !alias.scope !352
  store i8 3, ptr %i.aq, align 4, !tbaa !142, !alias.scope !352
  store ptr %0, ptr %4, align 8, !tbaa !37, !alias.scope !352
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %4) #21, !inline_history !10
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(37) %4)
          to label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i unwind label %bb.m, !inline_history !11

bb.m:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #23, !inline_history !10
  unreachable

_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !173 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !127 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6rebindEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 36
  br label %bb.n

bb.n:                                             ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i, %.lr.ph.i
  %.sroa.06.09.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.bo, %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryIN12ReservedBits9my_entityESaIS5_EEEEEPKvNS_8internal11any_requestERKS1_S9_, ptr %i.bc, align 8, !tbaa !139, !alias.scope !353
  store i32 552509104, ptr %i.be, align 8, !tbaa !140, !alias.scope !353
  store ptr null, ptr %i.bd, align 8, !tbaa !141, !alias.scope !353
  store i8 3, ptr %i.bf, align 4, !tbaa !142, !alias.scope !353
  store ptr %0, ptr %3, align 8, !tbaa !37, !alias.scope !353
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(80) %i.bh, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %3) #21, !inline_history !10
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i4.i, label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(37) %3)
          to label %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i unwind label %bb.p, !inline_history !11

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #23, !inline_history !10
  unreachable

_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 32 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ba
  br i1 %i.bp, label %_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6rebindEv.exit, label %bb.n

_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE6rebindEv.exit: ; preds = %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit5.i, %_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE4bindIRNS_14basic_registryIS2_S3_EEEEvOT_.exit.i
  ret void

bb.q:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN12ReservedBits9my_entityES3_SaIS3_EEENS_14basic_registryIS3_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.ad) #21
  tail call void @_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.t) #21
  br label %.body19

.body19:                                          ; preds = %bb.g, %bb.f, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.q ], [ %i.v, %bb.f ], [ %i.v, %bb.g ]
  tail call void @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.j) #21
  br label %.body15

.body15:                                          ; preds = %bb.e, %bb.d, %.body19
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body19 ], [ %i.l, %bb.d ], [ %i.l, %bb.e ]
  tail call void @_ZN4entt8internal16registry_contextISaIN12ReservedBits9my_entityEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #21
  br label %.body

.body:                                            ; preds = %bb.c, %bb.b, %.body15
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body15 ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = icmp ugt i64 %1, 288230376151711743
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !173  ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 5
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !127  ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g
  %i.o = shl nuw nsw i64 %1, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_M_allocateEm.exit.i ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_M_allocateEm.exit.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.q = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !171, !alias.scope !358, !noalias !357
  store i64 %i.q, ptr %.012.i.i.i.i, align 8, !tbaa !171, !alias.scope !357, !noalias !358
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !172, !alias.scope !358, !noalias !357
  store i32 %i.t, ptr %i.r, align 8, !tbaa !172, !alias.scope !357, !noalias !358
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !89, !alias.scope !358, !noalias !357
  store ptr null, ptr %i.w, align 8, !tbaa !136, !alias.scope !358, !noalias !357
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !89, !alias.scope !357, !noalias !358
  store ptr null, ptr %i.v, align 8, !tbaa !131, !alias.scope !358, !noalias !357
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.l
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.e, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE13_M_deallocateEPSA_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.h) #22
  br label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE13_M_deallocateEPSA_m.exit.i

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE13_M_deallocateEPSA_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit.i
  store ptr %i.p, ptr %i.a, align 8, !tbaa !173
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !127
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %1
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !167
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE7reserveEm.exit

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE13_M_deallocateEPSA_m.exit.i
  %i.ac = uitofp nneg i64 %1 to float
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !186
  %i.af = fdiv float %i.ac, %i.ae
  %i.ag = tail call noundef float @llvm.ceil.f32(float %i.af)
  %i.ah = fptoui float %i.ag to i64
  tail call void @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %i.ah)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = uitofp i64 %i.h to float
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load float, ptr %i.j, align 8, !tbaa !195
  %i.l = fdiv float %i.i, %i.k
  %i.m = fptoui float %i.l to i64
  %i.n = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.m)
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 8)
  %i.p = add i64 %i.o, -1
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 false)
  %i.r = sub nuw nsw i64 64, %i.q
  %i.s = shl nuw i64 1, %i.r                      ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !124  ; 4 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !122    ; 5 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 4 uses
  %.not = icmp eq i64 %i.s, %i.z
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp ugt i64 %i.s, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = sub nuw i64 %i.s, %i.z
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab)
  %.pre = load ptr, ptr %0, align 8, !tbaa !187
  %.pre26 = load ptr, ptr %i.t, align 8, !tbaa !187
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.s, %i.z
  br i1 %i.ac, label %bb.e, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !124
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.ae = phi ptr [ %.pre26, %bb.c ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.ad, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.af = phi ptr [ %.pre, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ah = ptrtoaddr ptr %i.ae to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -8
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = and i64 %i.ak, -8
  %i.am = add i64 %i.al, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 -1, i64 %i.am, i1 false), !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !114 ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !113 ; 5 uses
  %.not25 = icmp eq ptr %i.an, %i.ao
  br i1 %.not25, label %.loopexit, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = sdiv exact i64 %i.ar, 48                ; 3 uses
  %i.at = ptrtoint ptr %i.ae to i64
  %i.au = ptrtoint ptr %i.af to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = lshr exact i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 4294967295       ; 3 uses
  %xtraiter = and i64 %i.as, 1
  %i.ay = icmp eq i64 %i.ar, 48
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph24.new

.lr.ph24.new:                                     ; preds = %.lr.ph24
  %unroll_iter = and i64 %i.as, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph24.new
  %.022 = phi i64 [ 0, %.lr.ph24.new ], [ %i.bo, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph24.new ], [ %niter.next.1, %bb.f ]
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %.022 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !107
  %i.bc = zext i32 %i.bb to i64
  %i.bd = and i64 %i.ax, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !105
  store i64 %.022, ptr %i.be, align 8, !tbaa !105
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !362
  %i.bg = or disjoint i64 %.022, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !107
  %i.bk = zext i32 %i.bj to i64
  %i.bl = and i64 %i.ax, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !105
  store i64 %i.bg, ptr %i.bm, align 8, !tbaa !105
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !362
  %i.bo = add nuw i64 %.022, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !359

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph24
  %.022.epil.init = phi i64 [ 0, %.lr.ph24 ], [ %i.bo, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %.022.epil.init ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !107
  %i.bs = zext i32 %i.br to i64
  %i.bt = and i64 %i.ax, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bt ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !105
  store i64 %.022.epil.init, ptr %i.bu, align 8, !tbaa !105
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !362
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %i.i = uitofp i64 %i.h to float
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load float, ptr %i.j, align 8, !tbaa !207
  %i.l = fdiv float %i.i, %i.k
  %i.m = fptoui float %i.l to i64
  %i.n = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.m)
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 8)
  %i.p = add i64 %i.o, -1
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 false)
  %i.r = sub nuw nsw i64 64, %i.q
  %i.s = shl nuw i64 1, %i.r                      ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !124  ; 4 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !122    ; 5 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 4 uses
  %.not = icmp eq i64 %i.s, %i.z
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp ugt i64 %i.s, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = sub nuw i64 %i.s, %i.z
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab)
  %.pre = load ptr, ptr %0, align 8, !tbaa !187
  %.pre26 = load ptr, ptr %i.t, align 8, !tbaa !187
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.s, %i.z
  br i1 %i.ac, label %bb.e, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !124
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.ae = phi ptr [ %.pre26, %bb.c ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.ad, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.af = phi ptr [ %.pre, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ah = ptrtoaddr ptr %i.ae to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -8
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = and i64 %i.ak, -8
  %i.am = add i64 %i.al, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 -1, i64 %i.am, i1 false), !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !211 ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !199 ; 5 uses
  %.not25 = icmp eq ptr %i.an, %i.ao
  br i1 %.not25, label %.loopexit, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = ashr exact i64 %i.ar, 5                 ; 2 uses
  %i.at = ptrtoint ptr %i.ae to i64
  %i.au = ptrtoint ptr %i.af to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = lshr exact i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 4294967295       ; 3 uses
  %i.ay = icmp eq i64 %i.ar, 32
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph24.new

.lr.ph24.new:                                     ; preds = %.lr.ph24
  %unroll_iter = and i64 %i.as, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph24.new
  %.022 = phi i64 [ 0, %.lr.ph24.new ], [ %i.bo, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph24.new ], [ %niter.next.1, %bb.f ]
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %.022 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !107
  %i.bc = zext i32 %i.bb to i64
  %i.bd = and i64 %i.ax, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !105
  store i64 %.022, ptr %i.be, align 8, !tbaa !105
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !369
  %i.bg = or disjoint i64 %.022, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !107
  %i.bk = zext i32 %i.bj to i64
  %i.bl = and i64 %i.ax, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !105
  store i64 %i.bg, ptr %i.bm, align 8, !tbaa !105
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !369
  %i.bo = add nuw i64 %.022, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !363

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %i.bp = and i64 %i.ar, 32
  %lcmp.mod.not = icmp eq i64 %i.bp, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph24
  %.022.epil.init = phi i64 [ 0, %.lr.ph24 ], [ %i.bo, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %.022.epil.init ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !107
  %i.bt = zext i32 %i.bs to i64
  %i.bu = and i64 %i.ax, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bu ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !105
  store i64 %.022.epil.init, ptr %i.bv, align 8, !tbaa !105
  store i64 %i.bw, ptr %i.bq, align 8, !tbaa !369
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2IvEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexIvE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexIvE5valueEv.exit, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexIvE5valueEvE5value) #21
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexIvE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !107 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !107
  store i32 %i.d, ptr @_ZZN4entt10type_indexIvE5valueEvE5value, align 4, !tbaa !107
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexIvE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexIvE5valueEvE5value) #21
  br label %_ZN4entt10type_indexIvE5valueEv.exit

_ZN4entt10type_indexIvE5valueEv.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexIvE5valueEvE5value, align 4, !tbaa !107
  store i32 %i.g, ptr %0, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1219850847, ptr %i.h, align 4, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.33, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idIvEERKNS_9type_infoEv.exit, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #21
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idIvEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IvEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #21
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #21
  br label %_ZN4entt7type_idIvEERKNS_9type_infoEv.exit

_ZN4entt7type_idIvEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance, ptr %i.f, align 8, !tbaa !135
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.g, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 65535, ptr %i.h, align 8, !tbaa !99
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !106 ; 4 uses
  %i.b = icmp eq i64 %.promoted, 0
  br i1 %i.b, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !108
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !103
  %.fr = freeze i64 %i.f                          ; 2 uses
  %.idx.i = shl nsw i64 %.fr, 3                   ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %.idx.i
  %.ptr13.i = getelementptr i8, ptr %i.g, i64 16
  %.ptr12.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.add11.i = add i64 %.idx.i, 24                 ; 2 uses
  switch i64 %.fr, label %.lr.ph.i.i [
    i64 0, label %..lr.ph.i3_crit_edge.i.us.preheader
    i64 1, label %.lr.ph.i.i.us.preheader
  ]

..lr.ph.i3_crit_edge.i.us.preheader:              ; preds = %.lr.ph
  %.07.i4.ptr.i.us.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 %.add11.i
  %.pre12 = load ptr, ptr %.07.i4.ptr.i.us.phi.trans.insert, align 8, !tbaa !45 ; 2 uses
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %.pre12, i64 16
  %.pre14 = load ptr, ptr %.phi.trans.insert13, align 8, !tbaa !87
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %.pre12, i64 8
  %.pre16 = load ptr, ptr %.phi.trans.insert15, align 8, !tbaa !88 ; 2 uses
  %i.h = ptrtoint ptr %.pre14 to i64
  %i.i = ptrtoint ptr %.pre16 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  br label %..lr.ph.i3_crit_edge.i.us

..lr.ph.i3_crit_edge.i.us:                        ; preds = %..lr.ph.i3_crit_edge.i.us.preheader, %.loopexit.us
  %i.l = phi i64 [ %i.z, %.loopexit.us ], [ %.promoted, %..lr.ph.i3_crit_edge.i.us.preheader ] ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %i.d, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !77   ; 2 uses
  %i.p = and i32 %i.o, 65535
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = and i64 %i.q, 4095
  %.pre.i.us = lshr i64 %i.q, 12                  ; 2 uses
  %.pre17.i.us = and i32 %i.o, 268369920
  %i.s = icmp ult i64 %.pre.i.us, %i.k
  br i1 %i.s, label %bb.b, label %.loopexit.us

bb.b:                                             ; preds = %..lr.ph.i3_crit_edge.i.us
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.pre16, i64 %.pre.i.us
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i6.i.us = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i6.i.us, label %.loopexit.us, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i7.i.us

_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i7.i.us: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r
  %i.w = load i32, ptr %i.v, align 4, !tbaa !77
  %i.x = xor i32 %i.w, %.pre17.i.us
  %i.y = icmp ult i32 %i.x, 65535
  br i1 %i.y, label %.critedge, label %.loopexit.us

.loopexit.us:                                     ; preds = %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i7.i.us, %bb.b, %..lr.ph.i3_crit_edge.i.us
  %i.z = add nsw i64 %i.l, -1                     ; 3 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !106
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.critedge, label %..lr.ph.i3_crit_edge.i.us, !llvm.loop !370

.lr.ph.i.i.us.preheader:                          ; preds = %.lr.ph
  %.pre = load ptr, ptr %.ptr12.i, align 8, !tbaa !45 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre9 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !87
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !88 ; 2 uses
  %i.ab = ptrtoint ptr %.pre9 to i64
  %i.ac = ptrtoint ptr %.pre11 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader, %.loopexit1.us
  %i.af = phi i64 [ %i.av, %.loopexit1.us ], [ %.promoted, %.lr.ph.i.i.us.preheader ] ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.d, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !77 ; 2 uses
  %i.aj = and i32 %i.ai, 65535
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = and i64 %i.ak, 4095
  %i.am = lshr i64 %i.ak, 12                      ; 2 uses
  %i.an = and i32 %i.ai, 268369920
  %i.ao = icmp ult i64 %i.am, %i.ae
  br i1 %i.ao, label %bb.c, label %.loopexit1.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.pre11, i64 %i.am
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.i.us = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.us, label %.loopexit1.us, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i.i.us

_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i.i.us: ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.al
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !77
  %i.at = xor i32 %i.as, %i.an
  %i.au = icmp ult i32 %i.at, 65535
  br i1 %i.au, label %.critedge, label %.loopexit1.us

.loopexit1.us:                                    ; preds = %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i.i.us, %bb.c, %.lr.ph.i.i.us
  %i.av = add nsw i64 %i.af, -1                   ; 3 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !106
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.critedge, label %.lr.ph.i.i.us, !llvm.loop !370

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.loopexit
  %i.ax = phi i64 [ %i.cn, %.loopexit ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.d, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !77 ; 2 uses
  %i.bb = and i32 %i.ba, 65535
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = and i64 %i.bc, 4095                     ; 2 uses
  %i.be = lshr i64 %i.bc, 12                      ; 4 uses
  %i.bf = and i32 %i.ba, 268369920                ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, %.ptr13.i
  br i1 %.not.i.i, label %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEESA_S4_EEbT_T0_T1_.exit.i, label %bb.e, !llvm.loop !371

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %.ptr12.i, %.lr.ph.i.i ], [ %i.bg, %bb.d ] ; 2 uses
  %i.bh = load ptr, ptr %.07.i.i, align 8, !tbaa !45 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !88 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3
  %i.bq = icmp ult i64 %i.be, %i.bp
  br i1 %i.bq, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.be
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i.i

_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i.i: ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bd
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !77
  %i.bv = xor i32 %i.bu, %i.bf
  %i.bw = icmp ult i32 %i.bv, 65535
  br i1 %i.bw, label %bb.d, label %.loopexit

bb.g:                                             ; preds = %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i7.i
  %.07.i4.add.i = add nsw i64 %.07.i4.idx.i, 8    ; 2 uses
  %.not.i8.i = icmp eq i64 %.07.i4.add.i, 32
  br i1 %.not.i8.i, label %.critedge, label %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEESA_S4_EEbT_T0_T1_.exit.i, !llvm.loop !371

_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEESA_S4_EEbT_T0_T1_.exit.i: ; preds = %bb.d, %bb.g
  %.07.i4.idx.i = phi i64 [ %.07.i4.add.i, %bb.g ], [ %.add11.i, %bb.d ] ; 2 uses
  %.07.i4.ptr.i = getelementptr inbounds i8, ptr %0, i64 %.07.i4.idx.i
  %i.bx = load ptr, ptr %.07.i4.ptr.i, align 8, !tbaa !45 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !87
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !88 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3
  %i.cg = icmp ult i64 %i.be, %i.cf
  br i1 %i.cg, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEESA_S4_EEbT_T0_T1_.exit.i
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.be
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i6.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i6.i, label %.loopexit, label %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i7.i

_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i7.i: ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.bd
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !77
  %i.cl = xor i32 %i.ck, %i.bf
  %i.cm = icmp ult i32 %i.cl, 65535
  br i1 %i.cm, label %bb.g, label %.loopexit

.critedge:                                        ; preds = %.loopexit1.us, %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i.i.us, %.loopexit.us, %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i7.i.us, %.loopexit, %bb.g, %bb.a
  ret void

.loopexit:                                        ; preds = %bb.f, %bb.e, %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i.i, %_ZNK4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EE8containsES2_.exit.i7.i, %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEESA_S4_EEbT_T0_T1_.exit.i, %bb.h
  %i.cn = add nsw i64 %i.ax, -1                   ; 3 uses
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !106
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.critedge, label %.lr.ph.i.i, !llvm.loop !370
}

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !94     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !37
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.f = load ptr, ptr %5, align 8, !tbaa !94     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !37
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !94     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !37
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.r = load ptr, ptr %5, align 8, !tbaa !94     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !37
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn
}

declare void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !105
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZN7testing8internal21UniversalTersePrinterIlE5PrintERKlPSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterIlE5PrintERKlPSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !213, !alias.scope !378
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !214, !alias.scope !378
  store i8 0, ptr %i.d, align 8, !tbaa !37, !alias.scope !378
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !216, !noalias !378 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !378 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIlE5PrintERKlPSo.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !217, !noalias !378 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !94, !alias.scope !378 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !tbaa !37, !alias.scope !378
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #22
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIlE5PrintERKlPSo.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !25
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !25
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !94 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !37
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #21
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !25
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !219
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !214  ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !94     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !162

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !37
  store i8 %i.v, ptr %i.t, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !37
  store i8 %i.w, ptr %i.m, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
end_hunk_7
begin_hunk_8_@_GLOBAL__sub_I_reserved_bits.cpp:.noexc11.i
  store i64 56, ptr %i.c, align 8, !tbaa !214
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 0, ptr %i.d, align 1, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 37, ptr %i.e, align 8, !tbaa !409
  %i.f = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverI12ReservedBitsE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 37)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %.noexc11.i
  %i.g = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverI12ReservedBitsE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 37)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI32ReservedBits_DisabledEntity_TestEE, i64 16), ptr %i.h, align 8, !tbaa !25
  %i.i = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperI12ReservedBitsE6dummy_E, ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !37
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #22
  br label %__cxx_global_var_init.exit

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %.noexc11.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZN7testing8internal12CodeLocationD2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.a, align 8, !tbaa !37
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #22
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit14.i

_ZN7testing8internal12CodeLocationD2Ev.exit14.i:  ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i
  resume { ptr, i32 } %i.n

__cxx_global_var_init.exit:                       ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  store ptr %i.i, ptr @_ZN32ReservedBits_DisabledEntity_Test10test_info_E, align 8, !tbaa !411
  %i.s = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN32ReservedBits_DisabledEntity_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #25 = { noreturn }
attributes #26 = { cold }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!23}

!0 = distinct !{!0, !75}
!1 = distinct !{!1, !75}
!2 = distinct !{null}
!3 = distinct !{!3, !75}
!4 = distinct !{!4, !75}
!5 = distinct !{!5, !75}
!6 = distinct !{null, null}
!7 = distinct !{null}
!8 = distinct !{!8, !75}
!9 = distinct !{!9, !75}
!10 = distinct !{null, null}
!11 = distinct !{null, null, null}
!12 = distinct !{!12, !75}
!13 = distinct !{!13, !75}
!14 = distinct !{null, null}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!19 = !{!"Simple C++ TBAA"}
!20 = !{!"omnipotent char", !19, i64 0}
!21 = !{!"int", !20, i64 0}
!22 = !{!"__libc_errno", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"vtable pointer", !19, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"long", !20, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !20, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !20, i64 0}
!29 = !{!"any pointer", !20, i64 0}
!30 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !29, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !29, i64 0, !26, i64 8}
!32 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !29, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !29, i64 0}
!34 = !{!"_ZTSSt6locale", !33, i64 0}
!35 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !30, i64 40, !31, i64 48, !20, i64 64, !21, i64 192, !32, i64 200, !34, i64 208}
!36 = !{!35, !28, i64 32}
!37 = !{!20, !20, i64 0}
!38 = !{!"branch_weights", i32 1, i32 1048575}
!39 = !{!"_ZTSSt5arrayIPKN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELm2EE", !20, i64 0}
!40 = !{!"_ZTSNSt14__array_traitsIPKN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELm0EE5_TypeE"}
!41 = !{!"_ZTSSt5arrayIPKN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELm0EE", !40, i64 0}
!42 = !{!"p1 _ZTSN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EEE", !29, i64 0}
!43 = !{!"_ZTSN4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EEE", !39, i64 0, !41, i64 16, !42, i64 24, !26, i64 32}
!44 = !{!43, !26, i64 32}
!45 = !{!42, !42, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN12ReservedBits9my_entityESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!47 = !{!46, !29, i64 8}
!48 = !{!46, !29, i64 0}
!49 = !{!"any p2 pointer", !29, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIPN12ReservedBits9my_entityESaIS2_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIPN12ReservedBits9my_entityESaIS2_EE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIPN12ReservedBits9my_entityESaIS2_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIPN12ReservedBits9my_entityESaIS2_EE", !52, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN12ReservedBits9my_entityESaIS1_EE12_Vector_implE", !46, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIN12ReservedBits9my_entityESaIS1_EE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIN12ReservedBits9my_entityESaIS1_EE", !55, i64 0}
!57 = !{!"p1 _ZTSN4entt9type_infoE", !29, i64 0}
!58 = !{!"_ZTSN4entt15deletion_policyE", !20, i64 0}
!59 = !{!"_ZTSN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EEE", !53, i64 8, !56, i64 32, !57, i64 56, !58, i64 64, !26, i64 72}
!60 = !{!"_ZTSN4entt13basic_storageIN12ReservedBits9my_entityES2_SaIS2_EEE", !59, i64 0, !26, i64 80}
!61 = !{!"p1 _ZTSN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EEE", !29, i64 0}
!62 = !{!"p1 _ZTSN4entt8delegateIFvRNS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEES3_EEE", !29, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN4entt8delegateIFvRNS0_14basic_registryIN12ReservedBits9my_entityESaIS4_EEES4_EEESaIS9_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseIN4entt8delegateIFvRNS0_14basic_registryIN12ReservedBits9my_entityESaIS4_EEES4_EEESaIS9_EE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIN4entt8delegateIFvRNS0_14basic_registryIN12ReservedBits9my_entityESaIS4_EEES4_EEESaIS9_EE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorIN4entt8delegateIFvRNS0_14basic_registryIN12ReservedBits9my_entityESaIS4_EEES4_EEESaIS9_EE", !65, i64 0}
!67 = !{!"_ZTSN4entt4sighIFvRNS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEES3_ES4_EE", !66, i64 0}
!68 = !{!"_ZTSN4entt16basic_sigh_mixinINS_13basic_storageIN12ReservedBits9my_entityES3_SaIS3_EEENS_14basic_registryIS3_S4_EEEE", !60, i64 0, !61, i64 88, !67, i64 96, !67, i64 120, !67, i64 144}
!69 = !{!68, !61, i64 88}
!70 = !{!63, !62, i64 8}
!71 = !{!63, !62, i64 0}
!72 = !{!"_ZTSN4entt8delegateIFvRNS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEES3_EEE", !29, i64 0, !29, i64 8}
!73 = !{!72, !29, i64 8}
!74 = !{!72, !29, i64 0}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"_ZTSN12ReservedBits9my_entityE", !20, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"p2 int", !49, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIPiSaIS0_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!"_ZTSNSt12_Vector_baseIPiSaIS0_EE12_Vector_implE", !79, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseIPiSaIS0_EE", !80, i64 0}
!82 = !{!"_ZTSSt6vectorIPiSaIS0_EE", !81, i64 0}
!83 = !{!"_ZTSN4entt13basic_storageIiN12ReservedBits9my_entityESaIiEEE", !59, i64 0, !82, i64 80}
!84 = !{!"_ZTSN4entt4sighIFvRNS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEES3_ESaIiEEE", !66, i64 0}
!85 = !{!"_ZTSN4entt16basic_sigh_mixinINS_13basic_storageIiN12ReservedBits9my_entityESaIiEEENS_14basic_registryIS3_SaIS3_EEEEE", !83, i64 0, !61, i64 104, !84, i64 112, !84, i64 136, !84, i64 160}
!86 = !{!85, !61, i64 104}
!87 = !{!50, !49, i64 8}
!88 = !{!50, !49, i64 0}
!89 = !{!29, !29, i64 0}
!90 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0}
!91 = !{!"p1 omnipotent char", !29, i64 0}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !91, i64 0}
!93 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !92, i64 0, !26, i64 8, !20, i64 16}
!94 = !{!93, !91, i64 0}
!95 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !29, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!90, !90, i64 0}
!98 = !{!59, !58, i64 64}
!99 = !{!59, !26, i64 72}
!100 = !{!"p1 _ZTSSt6vectorIN12ReservedBits9my_entityESaIS1_EE", !29, i64 0}
!101 = !{!"_ZTSN4entt8internal19sparse_set_iteratorISt6vectorIN12ReservedBits9my_entityESaIS4_EEEE", !100, i64 0, !26, i64 8}
!102 = !{!"_ZTSN4entt8internal13view_iteratorINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEELb0ELm2ELm0EEE", !101, i64 0, !39, i64 16, !41, i64 32, !26, i64 40}
!103 = !{!102, !26, i64 40}
!104 = !{!100, !100, i64 0}
!105 = !{!26, !26, i64 0}
!106 = !{!101, !26, i64 8}
!107 = !{!21, !21, i64 0}
!108 = !{!101, !100, i64 0}
!109 = !{!"short", !20, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!"p1 _ZTSN4entt8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEE", !29, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!112, !111, i64 8}
!115 = !{!"_ZTSN4entt8internal17basic_any_storageILm0ELm8EEE", !29, i64 0}
!116 = !{!"_ZTSN4entt10any_policyE", !20, i64 0}
!117 = !{!"_ZTSN4entt9basic_anyILm0ELm8EEE", !115, i64 0, !29, i64 8, !29, i64 16, !21, i64 24, !116, i64 28}
!118 = !{!117, !29, i64 16}
!119 = !{!112, !111, i64 16}
!120 = !{!"p1 long", !29, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!122 = !{!121, !120, i64 0}
!123 = !{!121, !120, i64 16}
!124 = !{!121, !120, i64 8}
!125 = !{!"p1 _ZTSN4entt8internal14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS5_EEEEEE", !29, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!127 = !{!126, !125, i64 8}
!128 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !29, i64 0}
!129 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !128, i64 0}
!130 = !{!"_ZTSSt12__shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0, !129, i64 8}
!131 = !{!130, !42, i64 0}
!132 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 8, !21, i64 12}
!133 = !{!132, !21, i64 8}
!134 = !{!132, !21, i64 12}
!135 = !{!59, !57, i64 56}
!136 = !{!129, !128, i64 0}
!137 = !{!"_ZTSN4entt8internal17basic_any_storageILm16ELm8EEE", !20, i64 0}
!138 = !{!"_ZTSN4entt9basic_anyILm16ELm8EEE", !137, i64 0, !29, i64 16, !29, i64 24, !21, i64 32, !116, i64 36}
!139 = !{!138, !29, i64 16}
!140 = !{!138, !21, i64 32}
!141 = !{!138, !29, i64 24}
!142 = !{!138, !116, i64 36}
!143 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!144 = !{!63, !62, i64 16}
!145 = !{!79, !78, i64 0}
!146 = !{!"p1 int", !29, i64 0}
!147 = !{!146, !146, i64 0}
!148 = !{!62, !62, i64 0}
!149 = !{!"llvm.loop.unswitch.partial.disable"}
!150 = !{!49, !49, i64 0}
!151 = !{!"llvm.loop.isvectorized", i32 1}
!152 = !{!"llvm.loop.unroll.runtime.disable"}
!153 = !{!46, !29, i64 16}
!154 = !{!79, !78, i64 8}
!155 = !{!79, !78, i64 16}
!156 = !{ptr @_ZN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS2_EED2Ev}
!157 = !{!50, !49, i64 16}
!158 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !26, i64 0, !91, i64 8}
!159 = !{!"_ZTSN4entt9type_infoE", !21, i64 0, !21, i64 4, !158, i64 8}
!160 = !{!159, !21, i64 0}
!161 = !{!159, !21, i64 4}
!162 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!163 = !{!"llvm.loop.unroll.disable"}
!164 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!165 = !{!"p1 _ZTSSt10shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEEE", !29, i64 0}
!166 = !{!165, !165, i64 0}
!167 = !{!126, !125, i64 16}
!168 = !{!"_ZTSSt10shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEEE", !130, i64 0}
!169 = !{!"_ZTSSt4pairIjSt10shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEEE", !21, i64 0, !168, i64 8}
!170 = !{!"_ZTSN4entt8internal14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS5_EEEEEE", !26, i64 0, !169, i64 8}
!171 = !{!170, !26, i64 0}
!172 = !{!169, !21, i64 0}
!173 = !{!126, !125, i64 0}
!174 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !121, i64 0}
!175 = !{!"_ZTSSt12_Vector_baseImSaImEE", !174, i64 0}
!176 = !{!"_ZTSSt6vectorImSaImEE", !175, i64 0}
!177 = !{!"_ZTSN4entt8internal23compressed_pair_elementISt6vectorImSaImEELm0EEE", !176, i64 0}
!178 = !{!"_ZTSN4entt15compressed_pairISt6vectorImSaImEESt8identityEE", !177, i64 0}
!179 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE12_Vector_implE", !126, i64 0}
!180 = !{!"_ZTSSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE", !179, i64 0}
!181 = !{!"_ZTSSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN12ReservedBits9my_entityESaIS6_EEEEEESaISA_EE", !180, i64 0}
!182 = !{!"_ZTSN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS7_EEEEEESaISB_EELm0EEE", !181, i64 0}
!183 = !{!"_ZTSN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS7_EEEEEESaISB_EESt8equal_toIvEEE", !182, i64 0}
!184 = !{!"float", !20, i64 0}
!185 = !{!"_ZTSN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEEE", !178, i64 0, !183, i64 24, !184, i64 48}
!186 = !{!185, !184, i64 48}
!187 = !{!120, !120, i64 0}
!188 = !{!111, !111, i64 0}
!189 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12_Vector_implE", !112, i64 0}
!190 = !{!"_ZTSSt12_Vector_baseIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE", !189, i64 0}
!191 = !{!"_ZTSSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE", !190, i64 0}
!192 = !{!"_ZTSN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EEE", !191, i64 0}
!193 = !{!"_ZTSN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EESt8equal_toIvEEE", !192, i64 0}
!194 = !{!"_ZTSN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEEE", !178, i64 0, !193, i64 24, !184, i64 48}
!195 = !{!194, !184, i64 48}
!196 = !{!125, !125, i64 0}
!197 = !{!"p1 _ZTSN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16group_descriptorEEEE", !29, i64 0}
!198 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE17_Vector_impl_dataE", !197, i64 0, !197, i64 8, !197, i64 16}
!199 = !{!198, !197, i64 0}
!200 = !{!197, !197, i64 0}
!201 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12_Vector_implE", !198, i64 0}
!202 = !{!"_ZTSSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE", !201, i64 0}
!203 = !{!"_ZTSSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE", !202, i64 0}
!204 = !{!"_ZTSN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjSt10shared_ptrINS0_16group_descriptorEEEESaIS7_EELm0EEE", !203, i64 0}
!205 = !{!"_ZTSN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEESaIS7_EESt8equal_toIvEEE", !204, i64 0}
!206 = !{!"_ZTSN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEEE", !178, i64 0, !205, i64 24, !184, i64 48}
!207 = !{!206, !184, i64 48}
!208 = !{!60, !26, i64 80}
!209 = !{!57, !57, i64 0}
!210 = !{!58, !58, i64 0}
!211 = !{!198, !197, i64 8}
!212 = !{!198, !197, i64 16}
!213 = !{!92, !91, i64 0}
!214 = !{!93, !26, i64 8}
!215 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !91, i64 8, !91, i64 16, !91, i64 24, !91, i64 32, !91, i64 40, !91, i64 48, !34, i64 56}
!216 = !{!215, !91, i64 40}
!217 = !{!215, !91, i64 32}
!218 = !{!"_ZTSSi", !26, i64 8}
!219 = !{!218, !26, i64 8}
!220 = distinct !{!220, i1 false, !"_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE4viewIS2_JiEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S2_SaINSt12remove_constIS9_E4typeEEE4typeEDpNS8_IT0_S2_SaINSA_ISG_E4typeEEE4typeEEEENS_9exclude_tIJDpNS8_IT1_S2_SaINSA_ISP_E4typeEEE4typeEEEEEENSO_IJDpSP_EEE"}
!221 = distinct !{!221, !220, !"_ZN4entt14basic_registryIN12ReservedBits9my_entityESaIS2_EE4viewIS2_JiEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S2_SaINSt12remove_constIS9_E4typeEEE4typeEDpNS8_IT0_S2_SaINSA_ISG_E4typeEEE4typeEEEENS_9exclude_tIJDpNS8_IT1_S2_SaINSA_ISP_E4typeEEE4typeEEEEEENSO_IJDpSP_EEE: argument 0"}
!222 = distinct !{null}
!223 = distinct !{null}
!224 = distinct !{null, null, null}
!225 = distinct !{!225, i1 false, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv"}
!226 = distinct !{!226, !225, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv: argument 0"}
!227 = distinct !{!227, i1 false, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv"}
!228 = distinct !{!228, !227, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv: argument 0"}
!229 = distinct !{!229, !75}
!230 = distinct !{!230, i1 false, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv"}
!231 = distinct !{!231, !230, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv: argument 0"}
!232 = distinct !{!232, i1 false, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv"}
!233 = distinct !{!233, !232, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv: argument 0"}
!234 = distinct !{!234, i1 false, !"_ZN7testing8internal8EqHelper7CompareIN12ReservedBits9my_entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_"}
!235 = distinct !{!235, !234, !"_ZN7testing8internal8EqHelper7CompareIN12ReservedBits9my_entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_: argument 0"}
!236 = distinct !{!236, i1 false, !"_ZN7testing8internal11CmpHelperEQIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_"}
!237 = distinct !{!237, !236, !"_ZN7testing8internal11CmpHelperEQIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_: argument 0"}
!238 = distinct !{!238, i1 false, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv"}
!239 = distinct !{!239, !238, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv: argument 0"}
!240 = distinct !{!240, i1 false, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv"}
!241 = distinct !{!241, !240, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv: argument 0"}
!242 = distinct !{!242, i1 false, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv"}
!243 = distinct !{!243, !242, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE5beginEv: argument 0"}
!244 = distinct !{!244, i1 false, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv"}
!245 = distinct !{!245, !244, !"_ZNK4entt17basic_common_viewINS_16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELb0ELm2ELm0EE3endEv: argument 0"}
!246 = distinct !{!246, i1 false, !"_ZN7testing8internal8EqHelper7CompareIN12ReservedBits9my_entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_"}
!247 = distinct !{!247, !246, !"_ZN7testing8internal8EqHelper7CompareIN12ReservedBits9my_entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_: argument 0"}
!248 = distinct !{!248, i1 false, !"_ZN7testing8internal11CmpHelperEQIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_"}
!249 = distinct !{!249, !248, !"_ZN7testing8internal11CmpHelperEQIN12ReservedBits9my_entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_: argument 0"}
!250 = !{!221}
!251 = !{!43, !42, i64 24}
!252 = !{!"bool", !20, i64 0}
!253 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !90, i64 0}
!254 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !253, i64 0}
!255 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !254, i64 0}
!256 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !255, i64 0}
!257 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !256, i64 0}
!258 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !257, i64 0}
!259 = !{!"_ZTSN7testing15AssertionResultE", !252, i64 0, !258, i64 8}
!260 = !{!259, !252, i64 0}
!261 = !{!253, !90, i64 0}
!262 = !{!226}
!263 = !{!228}
!264 = !{i8 0, i8 2}
!265 = !{}
!266 = !{!231}
!267 = !{!233}
!268 = !{!237, !235}
!269 = !{!239}
!270 = !{!241}
!271 = !{!243}
!272 = !{!245}
!273 = !{!249, !247}
!274 = distinct !{!274, i1 false, !"_ZN7testing8internal11CmpHelperEQIliEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!275 = distinct !{!275, !274, !"_ZN7testing8internal11CmpHelperEQIliEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!276 = !{!275}
!277 = distinct !{!277, i1 false, !"_ZSt15allocate_sharedIN4entt16basic_sigh_mixinINS0_13basic_storageIiN12ReservedBits9my_entityESaIiEEENS0_14basic_registryIS4_SaIS4_EEEEES8_JS8_EESt10shared_ptrIT_ERKT0_DpOT1_"}
!278 = distinct !{!278, !277, !"_ZSt15allocate_sharedIN4entt16basic_sigh_mixinINS0_13basic_storageIiN12ReservedBits9my_entityESaIiEEENS0_14basic_registryIS4_SaIS4_EEEEES8_JS8_EESt10shared_ptrIT_ERKT0_DpOT1_: argument 0"}
!279 = distinct !{!279, i1 false, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_"}
!280 = distinct !{!280, !279, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN12ReservedBits9my_entityESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_: argument 0"}
!281 = distinct !{null}
!282 = distinct !{null, null}
!283 = distinct !{ptr @_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN12ReservedBits9my_entityESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!284 = !{!278}
!285 = !{!280}
!286 = distinct !{null, null}
!287 = !{!"_ZTSSt9type_info", !91, i64 8}
!288 = !{!287, !91, i64 8}
!289 = distinct !{!289, !75}
!290 = distinct !{!290, !149}
!291 = distinct !{!291, !75, !151, !152}
!292 = distinct !{!292, !75, !151, !152}
!293 = distinct !{!293, !75}
!294 = distinct !{!294, !75}
!295 = distinct !{!295, !75}
!296 = distinct !{!296, !75, !151, !152}
!297 = distinct !{!297, !75, !151, !152}
!298 = distinct !{!298, !163}
!299 = distinct !{!299, !75}
!300 = distinct !{!300, !163}
!301 = distinct !{!301, !75}
!302 = distinct !{!302, !163}
!303 = distinct !{!303, !75}
!304 = distinct !{!304, !163}
!305 = !{!78, !78, i64 0}
!306 = distinct !{null}
!307 = distinct !{!307, i1 false, !"_ZSt16forward_as_tupleIJRKjEESt5tupleIJDpOT_EES5_"}
!308 = distinct !{!308, !307, !"_ZSt16forward_as_tupleIJRKjEESt5tupleIJDpOT_EES5_: argument 0"}
end_hunk_8
