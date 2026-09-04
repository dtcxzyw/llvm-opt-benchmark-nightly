Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/accelerator?download=true
inline.NumInlined: 2113
inline.NumDeleted: 840
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_Z50accel_statevector_anyCtrlAnyTargZOrPhaseGadget_sub5QuregSt6vectorIiSaIiEES2_S2_St7complexIdES4_:bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ax = getelementptr inbounds i8, ptr %i.ap, i64 %i.at
  store ptr %i.ax, ptr %i.aq, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !26    ; 3 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i73 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i.i73, label %.noexc77, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = icmp ugt i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %.noexc.i.i75, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i74, !prof !28

.noexc.i.i75:                                     ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #13
          to label %.noexc76 unwind label %bb.w

.noexc76:                                         ; preds = %.noexc.i.i75
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i74: ; preds = %bb.m
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #11
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge unwind label %bb.w

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i74
  %.pre131 = load ptr, ptr %3, align 8, !tbaa !23 ; 2 uses
  %.pre132 = load ptr, ptr %i.ay, align 8, !tbaa !23
  %.pre140 = ptrtoint ptr %.pre132 to i64
  %.pre142 = ptrtoint ptr %.pre131 to i64
  br label %.noexc77

.noexc77:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge, %bb.l
  %.pre-phi143 = phi i64 [ %.pre142, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge ], [ %i.bc, %bb.l ]
  %.pre-phi141 = phi i64 [ %.pre140, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge ], [ %i.bb, %bb.l ]
  %i.bg = phi ptr [ %.pre131, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge ], [ %i.ba, %bb.l ] ; 2 uses
  %i.bh = phi ptr [ %i.bf, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge ], [ null, %bb.l ] ; 5 uses
  store ptr %i.bh, ptr %10, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bd
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !29
  %i.bl = sub i64 %.pre-phi141, %.pre-phi143      ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, 4
  br i1 %i.bm, label %bb.n, label %bb.o, !prof !30

bb.n:                                             ; preds = %.noexc77
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bh, ptr align 4 %i.bg, i64 %i.bl, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %.noexc77
  %i.bn = icmp eq i64 %i.bl, 4
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.bg, align 4, !tbaa !31
  store i32 %i.bo, ptr %i.bh, align 4, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bp = getelementptr inbounds i8, ptr %i.bh, i64 %i.bl
  store ptr %i.bp, ptr %i.bi, align 8, !tbaa !25
  invoke void %i.n(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %8, ptr nofree noundef nonnull align 8 dereferenceable(24) %9, ptr nofree noundef nonnull align 8 dereferenceable(24) %10, double %4, double %5, double %6, double %7)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %10, align 8, !tbaa !26   ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !29
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.r, %bb.s
  %i.bv = load ptr, ptr %9, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIiSaIiEED2Ev.exit81, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bw = load ptr, ptr %i.as, align 8, !tbaa !29
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.bz) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit81

_ZNSt6vectorIiSaIiEED2Ev.exit81:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.t
  %i.ca = load ptr, ptr %8, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i82 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorIiSaIiEED2Ev.exit83, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit81
  %i.cb = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ce) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit83

_ZNSt6vectorIiSaIiEED2Ev.exit83:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit81, %bb.u
  ret void

bb.v:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i69, %.noexc.i.i70
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit87

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i74, %.noexc.i.i75
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit85

bb.x:                                             ; preds = %bb.q
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %10, align 8, !tbaa !26   ; 3 uses
  %.not.i.i.i84 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIiSaIiEED2Ev.exit85, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = load ptr, ptr %i.bk, align 8, !tbaa !29
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cm) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit85

_ZNSt6vectorIiSaIiEED2Ev.exit85:                  ; preds = %bb.y, %bb.x, %bb.w
  %.pn43 = phi { ptr, i32 } [ %i.cg, %bb.w ], [ %i.ch, %bb.x ], [ %i.ch, %bb.y ] ; 2 uses
  %i.cn = load ptr, ptr %9, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i86 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIiSaIiEED2Ev.exit87, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit85
  %i.co = load ptr, ptr %i.as, align 8, !tbaa !29
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cr) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit87

_ZNSt6vectorIiSaIiEED2Ev.exit87:                  ; preds = %bb.z, %_ZNSt6vectorIiSaIiEED2Ev.exit85, %bb.v
  %.pn43.pn = phi { ptr, i32 } [ %i.cf, %bb.v ], [ %.pn43, %_ZNSt6vectorIiSaIiEED2Ev.exit85 ], [ %.pn43, %bb.z ]
  %i.cs = load ptr, ptr %8, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIiSaIiEED2Ev.exit89, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit87
  %i.ct = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cw) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit89

_ZNSt6vectorIiSaIiEED2Ev.exit89:                  ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit87
  resume { ptr, i32 } %.pn43.pn
}

declare void @_Z48gpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILi0EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48gpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILi1EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48gpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILi2EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48gpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILi3EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48gpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILi4EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48gpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILi5EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48gpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILin1EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48cpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILi0EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48cpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILi1EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48cpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILi2EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48cpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILi3EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48cpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILi4EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48cpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILi5EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

declare void @_Z48cpu_statevector_anyCtrlAnyTargZOrPhaseGadget_subILin1EEv5QuregSt6vectorIiSaIiEES3_S3_St7complexIdES5_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double, double, double, double) #1

; Function Attrs: mustprogress uwtable
define void @_Z40accel_statevec_setQuregToWeightedSum_sub5QuregSt6vectorISt7complexIdESaIS2_EES0_IS_SaIS_EE(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.98", align 8    ; 6 uses
  %4 = alloca %"class.std::vector.103", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %.not.not.not = icmp eq i32 %i.b, 0
  %i.c = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #11 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  br i1 %.not.not.not, label %.critedge44, label %_ZNSt6vectorIPFv5QuregS_ISt7complexIdESaIS2_EES_IS0_SaIS0_EEESaIS8_EED2Ev.exit57

_ZNSt6vectorIPFv5QuregS_ISt7complexIdESaIS2_EES_IS0_SaIS0_EEESaIS8_EED2Ev.exit57: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) @constinit.148, i64 56, i1 false)
  br label %bb.b

.critedge44:                                      ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) @constinit.149, i64 56, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %.critedge44, %_ZNSt6vectorIPFv5QuregS_ISt7complexIdESaIS2_EES_IS0_SaIS0_EEESaIS8_EED2Ev.exit57
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = load ptr, ptr %2, align 8, !tbaa !59
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 104
  %i.k = trunc i64 %i.j to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.k, i32 6)
  %i.l = sext i32 %.sroa.speculated to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 56) #12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61   ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !62     ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp ugt i64 %i.t, 9223372036854775792
  br i1 %i.u, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, !prof !28

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #11
  %.pre = load ptr, ptr %1, align 8, !tbaa !46
  %.pre105 = load ptr, ptr %i.o, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %6 = phi ptr [ %i.p, %bb.b ], [ %.pre105, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %7 = phi ptr [ %i.q, %bb.b ], [ %.pre, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %8 = phi ptr [ null, %bb.b ], [ %5, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %8, ptr %3, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !63
  %.not7.i.i.i.i.i = icmp eq ptr %7, %6
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %8, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %7, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !65
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %6
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !56

_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit:  ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi ptr [ %8, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.v, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58 ; 2 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !59    ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i58 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i58, label %.noexc60, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.ag = sdiv exact i64 %i.af, 104
  %i.ah = icmp ugt i64 %i.ag, 88686269585142075
  br i1 %i.ah, label %.noexc.i.i59, label %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i, !prof !28

.noexc.i.i59:                                     ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #13
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i59
  unreachable

_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #11
          to label %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge unwind label %bb.m

_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge: ; preds = %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i
  %.pre106 = load ptr, ptr %2, align 8, !tbaa !27 ; 2 uses
  %.pre107 = load ptr, ptr %i.aa, align 8, !tbaa !27
  %.pre108 = ptrtoint ptr %.pre107 to i64
  %.pre109 = ptrtoint ptr %.pre106 to i64
  br label %.noexc60

.noexc60:                                         ; preds = %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge, %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %.pre-phi110 = phi i64 [ %.pre109, %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge ], [ %i.ae, %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit ]
  %.pre-phi = phi i64 [ %.pre108, %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge ], [ %i.ad, %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit ]
  %i.aj = phi ptr [ %.pre106, %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge ], [ %i.ac, %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit ] ; 2 uses
  %i.ak = phi ptr [ %i.ai, %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge ], [ null, %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit ] ; 5 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !66
  %i.ao = sub i64 %.pre-phi, %.pre-phi110         ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 104
  br i1 %i.ap, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %.noexc60
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ak, ptr align 8 %i.aj, i64 %i.ao, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %.noexc60
  %i.aq = icmp eq i64 %i.ao, 104
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i64 104, i1 false), !tbaa.struct !67
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !58
  invoke void %i.n(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %4, align 8, !tbaa !59    ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !66
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #12
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit

_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit:             ; preds = %bb.j, %bb.k
  %i.ax = load ptr, ptr %3, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !63
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #12
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit, %bb.l
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i59
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit64

bb.n:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !59    ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit64, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !66
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #12
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit64

_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit64:           ; preds = %bb.o, %bb.n, %bb.m
  %.pn34 = phi { ptr, i32 } [ %i.bc, %bb.m ], [ %i.bd, %bb.n ], [ %i.bd, %bb.o ]
  %i.bj = load ptr, ptr %3, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit66, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit64
  %i.bk = load ptr, ptr %i.x, align 8, !tbaa !63
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #12
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit66

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit66:    ; preds = %bb.p, %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit64
  resume { ptr, i32 } %.pn34
}

declare void @_Z38gpu_statevec_setQuregToWeightedSum_subILi0EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38gpu_statevec_setQuregToWeightedSum_subILi1EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38gpu_statevec_setQuregToWeightedSum_subILi2EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38gpu_statevec_setQuregToWeightedSum_subILi3EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38gpu_statevec_setQuregToWeightedSum_subILi4EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38gpu_statevec_setQuregToWeightedSum_subILi5EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38gpu_statevec_setQuregToWeightedSum_subILin1EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38cpu_statevec_setQuregToWeightedSum_subILi0EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38cpu_statevec_setQuregToWeightedSum_subILi1EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38cpu_statevec_setQuregToWeightedSum_subILi2EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38cpu_statevec_setQuregToWeightedSum_subILi3EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38cpu_statevec_setQuregToWeightedSum_subILi4EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38cpu_statevec_setQuregToWeightedSum_subILi5EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

declare void @_Z38cpu_statevec_setQuregToWeightedSum_subILin1EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) #1

; Function Attrs: mustprogress uwtable
define void @_Z28accel_densmatr_mixQureg_subAd5QuregdS_(double noundef %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1, double noundef %2, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z32assert_mixedQuregIsDensityMatrix5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  tail call void @_Z32assert_mixedQuregIsDensityMatrix5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  tail call void @_Z45assert_mixedQuregsAreBothOrNeitherDistributed5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %1, ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %i.c = icmp ne i32 %i.b, 0                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %i.f = icmp ne i32 %i.e, 0                      ; 4 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void @_Z26gpu_densmatr_mixQureg_subAd5QuregdS_(double noundef %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1, double noundef %2, ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  br label %.thread24

bb.b:                                             ; preds = %bb.a
  %or.cond3 = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_Z26cpu_densmatr_mixQureg_subAd5QuregdS_(double noundef %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1, double noundef %2, ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  br label %.thread24

.thread24:                                        ; preds = %.thread, %bb.c
  %.not25 = xor i1 %i.c, true
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.not = xor i1 %i.c, true                       ; 2 uses
  %or.cond5 = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond5, label %.thread28, label %bb.e

.thread28:                                        ; preds = %bb.d
  tail call void @_Z16gpu_copyGpuToCpu5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  tail call void @_Z26cpu_densmatr_mixQureg_subAd5QuregdS_(double noundef %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1, double noundef %2, ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  br label %bb.g

bb.e:                                             ; preds = %.thread24, %bb.d
  %.not27 = phi i1 [ %.not25, %.thread24 ], [ %.not, %bb.d ]
  %or.cond8 = select i1 %.not27, i1 true, i1 %i.f
  br i1 %or.cond8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_Z16gpu_copyGpuToCpu5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  tail call void @_Z26cpu_densmatr_mixQureg_subAd5QuregdS_(double noundef %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1, double noundef %2, ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  tail call void @_Z16gpu_copyCpuToGpu5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  br label %bb.g

bb.g:                                             ; preds = %.thread28, %bb.f, %bb.e
  ret void
}

declare void @_Z32assert_mixedQuregIsDensityMatrix5Qureg(ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

declare void @_Z45assert_mixedQuregsAreBothOrNeitherDistributed5QuregS_(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

declare void @_Z26gpu_densmatr_mixQureg_subAd5QuregdS_(double noundef, ptr noundef byval(%struct.Qureg) align 8, double noundef, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

declare void @_Z26cpu_densmatr_mixQureg_subAd5QuregdS_(double noundef, ptr noundef byval(%struct.Qureg) align 8, double noundef, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z28accel_densmatr_mixQureg_subBd5QuregdS_(double noundef %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1, double noundef %2, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.Qureg, align 8              ; 8 uses
  %5 = alloca %struct.Qureg, align 8              ; 8 uses
  tail call void @_Z32assert_mixedQuregIsDensityMatrix5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  tail call void @_Z30assert_mixedQuregIsStatevector5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  tail call void @_Z24assert_mixedQuregIsLocal5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  tail call void @_Z24assert_mixedQuregIsLocal5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %i.c = icmp ne i32 %i.b, 0                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %i.f = icmp ne i32 %i.e, 0                      ; 4 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void @_Z26gpu_densmatr_mixQureg_subBd5QuregdS_(double noundef %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1, double noundef %2, ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  br label %.thread47

bb.b:                                             ; preds = %bb.a
  %or.cond3 = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_Z26cpu_densmatr_mixQureg_subBd5QuregdS_(double noundef %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1, double noundef %2, ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  br label %.thread47

.thread47:                                        ; preds = %.thread, %bb.c
  %.not48 = xor i1 %i.c, true
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.not = xor i1 %i.c, true                       ; 2 uses
  %or.cond5 = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond5, label %.thread51, label %bb.e

.thread51:                                        ; preds = %bb.d
  tail call void @_Z16gpu_copyGpuToCpu5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  tail call void @_Z26cpu_densmatr_mixQureg_subBd5QuregdS_(double noundef %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1, double noundef %2, ptr noundef nonnull byval(%struct.Qureg) align 8 %3)
  br label %bb.g

bb.e:                                             ; preds = %.thread47, %bb.d
  %.not50 = phi i1 [ %.not48, %.thread47 ], [ %.not, %bb.d ]
  %or.cond8 = select i1 %.not50, i1 true, i1 %i.f
  br i1 %or.cond8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !31 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false)
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.617.0.copyload = load i64, ptr %.sroa.617.0..sroa_idx, align 8, !tbaa !43 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %.sroa.7.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %.sroa.10.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx31, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i64 16, i1 false)
  %i.g = tail call noundef ptr @_Z14gpu_allocArrayx(i64 noundef %.sroa.617.0.copyload) ; 4 uses
  tail call void @_Z36assert_mixQuregTempGpuAllocSucceededPSt7complexIdE(ptr noundef %i.g)
  store i32 %.sroa.0.0.copyload, ptr %4, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %.sroa.5.0..sroa_idx11, align 4, !tbaa !31
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false)
  %.sroa.617.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %.sroa.617.0.copyload, ptr %.sroa.617.0..sroa_idx18, align 8, !tbaa !43
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %.sroa.724.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %i.g, ptr %.sroa.724.0..sroa_idx25, align 8, !tbaa !46
  %.sroa.10.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx30, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i64 16, i1 false)
  tail call void @_Z16gpu_copyCpuToGpu5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %4)
  store i32 %.sroa.0.0.copyload, ptr %5, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 1, ptr %.sroa.5.0..sroa_idx13, align 4, !tbaa !31
  %.sroa.617.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %.sroa.617.0.copyload, ptr %.sroa.617.0..sroa_idx20, align 8, !tbaa !43
  %.sroa.724.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %i.g, ptr %.sroa.724.0..sroa_idx27, align 8, !tbaa !46
  tail call void @_Z26gpu_densmatr_mixQureg_subBd5QuregdS_(double noundef %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1, double noundef %2, ptr noundef nonnull byval(%struct.Qureg) align 8 %5)
  tail call void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef %i.g)
  br label %bb.g

bb.g:                                             ; preds = %.thread51, %bb.f, %bb.e
  ret void
}

declare void @_Z30assert_mixedQuregIsStatevector5Qureg(ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

declare void @_Z24assert_mixedQuregIsLocal5Qureg(ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

declare void @_Z26gpu_densmatr_mixQureg_subBd5QuregdS_(double noundef, ptr noundef byval(%struct.Qureg) align 8, double noundef, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1
end_hunk_0
