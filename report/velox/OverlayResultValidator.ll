inline.NumInlined: 312
inline.NumDeleted: 186
begin_hunk_0_@_ZN4geos9operation7overlay8validate22OverlayResultValidator11addVerticesERKNS_4geom8GeometryE:bb.a

.noexc9:                                          ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i.i = icmp eq ptr %i.u, %i.aa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.ae, %.noexc9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.u, %.noexc9 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !35, !alias.scope !51
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !55

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc9
  %.not.i8.i = icmp eq ptr %i.u, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.u) #12
  br label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.ae, ptr %i.d, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store ptr %i.ah, ptr %i.e, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.q
  store ptr %i.ai, ptr %i.s, align 8, !tbaa !50
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit.preheader

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit.preheader: ; preds = %bb.c, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit.i
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit.preheader, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit
  %.0 = phi i64 [ %i.bt, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ], [ 0, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit.preheader ] ; 3 uses
  %i.aj = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit11 unwind label %.loopexit, !inline_history !49

_ZNK4geos4geom18CoordinateSequence4sizeEv.exit11: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit
  %i.ao = icmp ult i64 %.0, %i.an
  %i.ap = load ptr, ptr %2, align 8, !tbaa !47    ; 5 uses
  br i1 %i.ao, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit11
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %bb.e
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #11, !inline_history !56
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i, %bb.b, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit:                                        ; preds = %bb.g, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit11
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i64 noundef %.0)
          to label %bb.h unwind label %.loopexit  ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !31  ; 5 uses
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !50
  %.not.i12 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !tbaa.struct !35
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %i.bb, ptr %i.e, align 8, !tbaa !31
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !32  ; 5 uses
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.k, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #13
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bh = sdiv exact i64 %i.bf, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = call i64 @llvm.umin.i64(i64 %i.bi, i64 384307168202282325)
  %i.bl = select i1 %i.bj, i64 384307168202282325, i64 %i.bk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bl, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bm = mul nuw nsw i64 %i.bl, 24
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #14
          to label %.noexc14 unwind label %.loopexit ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !tbaa.struct !35
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.ay
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc14, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %i.bn, %.noexc14 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.bc, %.noexc14 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !35, !alias.scope !57
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.ay
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !55

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bn, %.noexc14 ], [ %i.bq, %.lr.ph.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bc) #12
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.bn, ptr %i.d, align 8, !tbaa !32
  store ptr %i.br, ptr %i.e, align 8, !tbaa !31
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.bs, ptr %i.s, align 8, !tbaa !50
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.i
  %i.bt = add nuw i64 %.0, 1
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit, !llvm.loop !61

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.at, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bu = load ptr, ptr %2, align 8, !tbaa !47    ; 3 uses
  %.not.i15 = icmp eq ptr %i.bu, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16: ; preds = %bb.m
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bu) #11, !inline_history !56
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17: ; preds = %bb.m, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation7overlay8validate22OverlayResultValidator9testValidENS1_9OverlayOp6OpCodeERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #14 ; 7 uses
  store i8 0, ptr %i.a, align 1, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store i16 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = invoke noundef signext i8 @_ZN4geos9operation7overlay8validate17FuzzyPointLocator11getLocationERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %_ZNSt6vectorIN4geos4geom8LocationESaIS2_EED2Ev.exit14

bb.b:                                             ; preds = %bb.a
  store i8 %i.d, ptr %i.a, align 1, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = invoke noundef signext i8 @_ZN4geos9operation7overlay8validate17FuzzyPointLocator11getLocationERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %_ZNSt6vectorIN4geos4geom8LocationESaIS2_EED2Ev.exit14

bb.c:                                             ; preds = %bb.b
  store i8 %i.f, ptr %i.b, align 1, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = invoke noundef signext i8 @_ZN4geos9operation7overlay8validate17FuzzyPointLocator11getLocationERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %._crit_edge.i.i.i unwind label %_ZNSt6vectorIN4geos4geom8LocationESaIS2_EED2Ev.exit14 ; 2 uses

._crit_edge.i.i.i:                                ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.h, ptr %3, align 1, !tbaa !62
  %4 = load i8, ptr %i.a, align 1, !tbaa !62      ; 2 uses
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %_ZNSt6vectorIN4geos4geom8LocationESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !62    ; 2 uses
  %i.j = icmp eq i8 %i.i, 1
  %i.k = icmp eq i8 %i.h, 1
  %or.cond.a = or i1 %i.j, %i.k
  br i1 %or.cond.a, label %_ZNSt6vectorIN4geos4geom8LocationESaIS2_EED2Ev.exit, label %bb.e

_ZNSt6vectorIN4geos4geom8LocationESaIS2_EED2Ev.exit14: ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #12
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noundef zeroext i1 @_ZN4geos9operation7overlay9OverlayOp12isResultOfOpENS_4geom8LocationES4_NS2_6OpCodeE(i8 noundef signext %4, i8 noundef signext %i.i, i32 noundef %1)
          to label %_ZN4geos9operation7overlay8validate22OverlayResultValidator13isValidResultENS1_9OverlayOp6OpCodeERSt6vectorINS_4geom8LocationESaIS8_EE.exit unwind label %_ZNSt6vectorIN4geos4geom8LocationESaIS2_EED2Ev.exit14

_ZN4geos9operation7overlay8validate22OverlayResultValidator13isValidResultENS1_9OverlayOp6OpCodeERSt6vectorINS_4geom8LocationESaIS8_EE.exit: ; preds = %bb.e
  %i.n = load i8, ptr %3, align 1, !tbaa !62
  %i.o = icmp ne i8 %i.n, 0
  %i.p = xor i1 %i.m, %i.o
  br label %_ZNSt6vectorIN4geos4geom8LocationESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom8LocationESaIS2_EED2Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %_ZN4geos9operation7overlay8validate22OverlayResultValidator13isValidResultENS1_9OverlayOp6OpCodeERSt6vectorINS_4geom8LocationESaIS8_EE.exit
  %.0 = phi i1 [ true, %._crit_edge.i.i.i ], [ %i.p, %_ZN4geos9operation7overlay8validate22OverlayResultValidator13isValidResultENS1_9OverlayOp6OpCodeERSt6vectorINS_4geom8LocationESaIS8_EE.exit ], [ true, %bb.d ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #12
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef signext i8 @_ZN4geos9operation7overlay8validate17FuzzyPointLocator11getLocationERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation7overlay8validate22OverlayResultValidator13isValidResultENS1_9OverlayOp6OpCodeERSt6vectorINS_4geom8LocationESaIS8_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(176) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !62
  %i.e = tail call noundef zeroext i1 @_ZN4geos9operation7overlay9OverlayOp12isResultOfOpENS_4geom8LocationES4_NS2_6OpCodeE(i8 noundef signext %i.b, i8 noundef signext %i.d, i32 noundef %1)
  %i.f = load ptr, ptr %2, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !62
  %i.i = icmp ne i8 %i.h, 0
  %i.j = xor i1 %i.e, %i.i
  ret i1 %i.j
}

declare noundef zeroext i1 @_ZN4geos9operation7overlay9OverlayOp12isResultOfOpENS_4geom8LocationES4_NS2_6OpCodeE(i8 noundef signext, i8 noundef signext, i32 noundef) local_unnamed_addr #3

declare noundef double @_ZN4geos9operation7overlay4snap15GeometrySnapper29computeSizeBasedSnapToleranceERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 6 uses
  %i.n = sdiv exact i64 %i.m, 24                  ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !35
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !66

_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.c
  store ptr %i.t, ptr %i.g, align 8, !tbaa !31
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.u, %i.l                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 24
  br i1 %i.w, label %bb.e, label %bb.f, !prof !67

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.neg116 = udiv exact i64 %i.v, 24
  %.neg116.neg = sub nsw i64 0, %.neg116
  %i.x = getelementptr inbounds [24 x i8], ptr %i.h, i64 %.neg116.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.y = icmp eq i64 %i.v, 24
  br i1 %i.y, label %bb.g, label %_ZSt13move_backwardIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds i8, ptr %i.h, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !35
  br label %_ZSt13move_backwardIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aa = icmp sgt i64 %i.c, 24
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !67

bb.h:                                             ; preds = %_ZSt13move_backwardIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit
  %i.ab = icmp eq i64 %i.c, 24
  br i1 %i.ab, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !35
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.ac, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i, i64 24, i1 false), !tbaa.struct !35
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ad, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !68

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !31
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.af = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ag = sub nuw nsw i64 %i.d, %i.n
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ag ; 3 uses
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !31
  %.not11.i.i.i.i.i51 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i51, label %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit57, label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i52
  %.013.i.i.i.i.i53 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i52 ], [ %i.ah, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i54 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i52 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i53, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i54, i64 24, i1 false), !tbaa.struct !35
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i54, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i53, i64 24
  %.not.i.i.i.i.i55 = icmp eq ptr %i.ai, %i.h
  br i1 %.not.i.i.i.i.i55, label %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52, !llvm.loop !66

_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit57.loopexit: ; preds = %.lr.ph.i.i.i.i.i52
  %.pre99 = load ptr, ptr %i.g, align 8, !tbaa !31
  br label %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit57

_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit57: ; preds = %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit57.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit
  %i.ak = phi ptr [ %.pre99, %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit57.loopexit ], [ %i.ah, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.m
  store ptr %i.al, ptr %i.g, align 8, !tbaa !31
  %i.am = icmp sgt i64 %i.m, 24
  br i1 %i.am, label %bb.k, label %bb.l, !prof !67

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit57
  %i.an = icmp eq i64 %i.m, 24
  br i1 %i.an, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !35
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.b
  %i.ao = load ptr, ptr %0, align 8, !tbaa !32    ; 5 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.j, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 24                ; 4 uses
  %i.as = sub nsw i64 384307168202282325, %i.ar
  %i.at = icmp ult i64 %i.as, %i.d
  br i1 %i.at, label %bb.o, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.d)
  %i.au = add nsw i64 %.sroa.speculated.i, %i.ar  ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.ar
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 384307168202282325)
  %i.ax = select i1 %i.av, i64 384307168202282325, i64 %i.aw ; 3 uses
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ay = mul nuw nsw i64 %i.ax, 24
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #14
  br label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit

end_hunk_0
