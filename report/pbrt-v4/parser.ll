Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/parser?download=true
inline.NumInlined: 5493
inline.NumDeleted: 1043
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 28
begin_hunk_0_@"_ZZN4pbrtL17upgradeTriMeshUVsB5cxx11ERKNS_22FormattingParserTargetEPNS_19ParameterDictionaryEENK3$_0clEPKc":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %wide.load52 = load <4 x i64>, ptr %next.gep51, align 4, !alias.scope !1556
  store <4 x i64> %wide.load52, ptr %next.gep50, align 4, !alias.scope !1555
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next53, %n.vec48
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1552

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.by, %n.vec48
  br i1 %cmp.n54, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bs, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %i.cr = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !1556
  store i64 %i.cr, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !1555
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.ba
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1553

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc32
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bs, %.noexc32 ], [ %i.cn, %vec.epilog.middle.block ], [ %i.cc, %middle.block ], [ %i.ct, %.lr.ph.i.i.i.i.i.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bk) #36
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bs, ptr %3, align 8, !tbaa !213
  store ptr %i.cu, ptr %i.aq, align 8, !tbaa !212
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq ; 2 uses
  store ptr %i.cv, ptr %i.aj, align 8, !tbaa !214
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.q
  %i.cw = phi ptr [ %i.cv, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.pre10, %bb.q ]
  %i.cx = phi ptr [ %i.cu, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bg, %bb.q ]
  %i.cy = add nuw nsw i64 %.08, 1                 ; 2 uses
  %i.cz = load ptr, ptr %i.u, align 8, !tbaa !176
  %i.da = load ptr, ptr %1, align 8, !tbaa !177   ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 2
  %i.df = lshr i64 %i.de, 1
  %i.dg = icmp samesign ult i64 %i.cy, %i.df
  br i1 %i.dg, label %bb.p, label %._crit_edge, !llvm.loop !1554

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i25
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !43
  %i.dj = load ptr, ptr %4, align 8, !tbaa !45
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  store i8 0, ptr %i.dk, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  invoke void @_ZN4pbrt19ParameterDictionary11RemoveFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(108) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.as
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.v
  %i.dn = load i64, ptr %i.as, align 8, !tbaa !44
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.dp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.w unwind label %bb.o       ; 0 uses

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.dq = load ptr, ptr %3, align 8, !tbaa !213   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.aj, align 8, !tbaa !214
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.du) #36
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit:  ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %.pr = load ptr, ptr %1, align 8, !tbaa !177
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit
  %i.dv = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pr, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !178
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void

bb.aa:                                            ; preds = %.noexc.i26
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.ab:                                            ; preds = %bb.u
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.as
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.ab
  %i.ef = load i64, ptr %i.as, align 8, !tbaa !44
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.aa
  %.pn14 = phi { ptr, i32 } [ %i.eb, %bb.aa ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.ec, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.o
  %.pn16 = phi { ptr, i32 } [ %.pn14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.az, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.eh = load ptr, ptr %3, align 8, !tbaa !213   ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !214
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #36
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.en = load ptr, ptr %1, align 8, !tbaa !177   ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIfSaIfEED2Ev.exit43, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !178
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit43

_ZNSt6vectorIfSaIfEED2Ev.exit43:                  ; preds = %bb.ae, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %.pn16, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41 ], [ %.pn16, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.c = load ptr, ptr %1, align 8, !tbaa !213    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !214
  %i.i = load ptr, ptr %0, align 8, !tbaa !213    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !194

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 3 uses
  %i.o = add i64 %i.d, -8
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -8
  %i.r = add i64 %i.q, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.r, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !213      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !214
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #36
  br label %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !213
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !214
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt6Point2IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !212
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 8
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !168

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt6Point2IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 8
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt6Point2IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.c, align 4
  store i64 %i.ad, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt6Point2IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.aa, 8
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !168

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN4pbrt6Point2IfEES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %i.aa, 8
  br i1 %i.af, label %bb.n, label %_ZSt4copyIPN4pbrt6Point2IfEES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = load i64, ptr %i.c, align 4
  store i64 %i.ag, ptr %i.i, align 4
  br label %_ZSt4copyIPN4pbrt6Point2IfEES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN4pbrt6Point2IfEES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !213   ; 2 uses
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !212 ; 6 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !213
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 6 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !212 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt6Point2IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt4copyIPN4pbrt6Point2IfEES3_ET0_T_S5_S4_.exit
  %i.ap = ptrtoaddr ptr %i.ah to i64              ; 2 uses
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = add i64 %i.aq, %i.al
  %i.as = add i64 %i.ar, -8
  %i.at = add i64 %i.ak, %i.ap
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.au, 24
  %i.ax = sub i64 %i.ap, %i.al
  %diff.check = icmp ugt i64 %i.ax, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp ult i64 %i.au, 120
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.aw, 12
  %n.vec = and i64 %i.aw, 4611686018427387888     ; 4 uses
  %i.az = shl i64 %n.vec, 3                       ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ai, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.an, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.bc ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.an, i64 %i.bc ; 4 uses
  %i.bd = getelementptr i8, ptr %next.gep33, i64 32
  %i.be = getelementptr i8, ptr %next.gep33, i64 64
  %i.bf = getelementptr i8, ptr %next.gep33, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep33, align 4
  %wide.load34 = load <4 x i64>, ptr %i.bd, align 4
  %wide.load35 = load <4 x i64>, ptr %i.be, align 4
  %wide.load36 = load <4 x i64>, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %next.gep, i64 32
  %i.bh = getelementptr i8, ptr %next.gep, i64 64
  %i.bi = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4
  store <4 x i64> %wide.load34, ptr %i.bg, align 4
  store <4 x i64> %wide.load35, ptr %i.bh, align 4
  store <4 x i64> %wide.load36, ptr %i.bi, align 4
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1557

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt6Point2IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !130

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.aw, 4611686018427387900   ; 3 uses
  %i.bk = shl i64 %n.vec38, 3                     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ai, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.an, i64 %i.bk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 2 uses
  %i.bn = shl i64 %index39, 3                     ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.ai, i64 %i.bn
  %next.gep41 = getelementptr i8, ptr %i.an, i64 %i.bn
  %wide.load42 = load <4 x i64>, ptr %next.gep41, align 4
  store <4 x i64> %wide.load42, ptr %next.gep40, align 4
  %index.next43 = add nuw i64 %index39, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next43, %n.vec38
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1558

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i64 %i.aw, %n.vec38
  br i1 %cmp.n44, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt6Point2IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.ai, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.an, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.bp = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.bp, ptr %.011.i.i.i.i, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bq, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt6Point2IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1559

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt6Point2IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt4copyIPN4pbrt6Point2IfEES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.bs = load ptr, ptr %0, align 8, !tbaa !213
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !212
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt6Point2IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #20

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRfJS2_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 42, i64 noundef 0) #35
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 115, i64 noundef 0) #35
  %.not20 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 100, i64 noundef 0) #35
  %.not21 = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.ab
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_0
