begin_hunk_0
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.std::vector.85", align 8    ; 14 uses
  %7 = alloca %"class.std::vector.90", align 8    ; 16 uses
  %8 = alloca %"class.arrow::Result.96", align 8  ; 14 uses
  %9 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 2 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %11 = alloca %"class.arrow::Result", align 8    ; 10 uses
end_hunk_0
begin_hunk_1
  %19 = alloca %"class.std::shared_ptr.49", align 8 ; 6 uses
  %20 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %21 = alloca %"class.std::vector.13", align 8   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !286  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !289    ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %i.h = icmp eq ptr %i.c, %i.d
  %.2.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2

.critedge.a:                                      ; preds = %bb.p
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.eo

bb.q:                                             ; preds = %._crit_edge
  %i.ap = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52, !noalias !304
  %i.au = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !51, !noalias !304
  store ptr null, ptr %i.as, align 8, !tbaa !52, !noalias !304
end_hunk_3
begin_hunk_4
  br i1 %i.bh, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.t
  %i.bi = load ptr, ptr %.2.sroa.gep, align 8, !tbaa !286 ; 3 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.bf
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #26
end_hunk_4
begin_hunk_5
_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.u, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.bl, ptr %6, align 8, !tbaa !289
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bq, ptr %.2.sroa.gep, align 8, !tbaa !286
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.az
  store ptr %i.br, ptr %i.bb, align 8, !tbaa !305
  %.pre304.a = load ptr, ptr %1, align 8, !tbaa !312
end_hunk_5
begin_hunk_6
  br i1 %i.bu, label %._crit_edge284, label %.lr.ph283

.lr.ph283:                                        ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE11_M_allocateEm.exit.i, %bb.s
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.w:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit, %.lr.ph283
  %.sroa.0265.0282 = phi ptr [ %i.bt, %.lr.ph283 ], [ %22, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit ] ; 2 uses
  %i.by = load ptr, ptr %.2.sroa.gep, align 8, !tbaa !286 ; 3 uses
  %i.bz = load ptr, ptr %i.bb, align 8, !tbaa !305
  %.not.i107 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i107, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  %i.ca = load ptr, ptr %.2.sroa.gep, align 8, !tbaa !286
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cb, ptr %.2.sroa.gep, align 8, !tbaa !286
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.y:                                             ; preds = %bb.w
end_hunk_6
begin_hunk_7
bb.ad:                                            ; preds = %bb.z
  %i.cg = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !51, !noalias !313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  %i.ch = load ptr, ptr %.2.sroa.gep, align 8, !tbaa !312 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -16
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !52 ; 8 uses
end_hunk_7
begin_hunk_8

_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit: ; preds = %bb.ak, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %22 = getelementptr inbounds nuw i8, ptr %.sroa.0265.0282, i64 16 ; 2 uses
  %23 = icmp ne ptr %22, %i.bs
  %or.cond.not = select i1 %i.cd, i1 %23, i1 false
  br i1 %or.cond.not, label %bb.w, label %._crit_edge284.loopexit

._crit_edge284.loopexit:                          ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit
  %.pre306.a = load ptr, ptr %i.ar, align 8, !tbaa !52
  br label %._crit_edge284

._crit_edge284:                                   ; preds = %._crit_edge284.loopexit, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit
  %i.dw = phi ptr [ %i.at, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit ], [ %.pre306.a, %._crit_edge284.loopexit ] ; 8 uses
  %.lcssa275 = phi i1 [ true, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit ], [ %i.cd, %._crit_edge284.loopexit ]
  %.not.i.i115 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i115, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %._crit_edge284
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 4 uses
end_hunk_8
begin_hunk_9
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #28
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.au:                                            ; preds = %bb.as
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
end_hunk_9
begin_hunk_10
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i117: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i118 = phi i32 [ %i.ea, %bb.av ], [ %i.ek, %bb.aw ]
  %i.el = icmp eq i32 %.0.i.i.i.i118, 1
  br i1 %i.el, label %bb.ax, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i117
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #28
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge284, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i117, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.em = load ptr, ptr %8, align 8, !tbaa !114   ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.ay, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !117

bb.ay:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eo = load ptr, ptr %i.as, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i119 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i119, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 4 uses
end_hunk_10
begin_hunk_11
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i121, %bb.ba
  %.pr.i123.pr = load ptr, ptr %8, align 8, !tbaa !114 ; 2 uses
  %.not.i.i124 = icmp eq ptr %.pr.i123.pr, null
  br i1 %.not.i.i124, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !123
end_hunk_11
begin_hunk_12
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit: ; preds = %bb.ay, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.fi = load ptr, ptr %7, align 8, !tbaa !293   ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_12
begin_hunk_13

_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %.lcssa275, label %bb.ct, label %bb.eo

bb.bn:                                            ; preds = %bb.ab, %bb.ac, %bb.v
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.v ], [ %i.ce, %bb.ab ], [ %i.cf, %bb.ac ]
end_hunk_13
begin_hunk_14
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit
  %.2.sroa.phi = phi ptr [ %.2.sroa.gep, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit ], [ %i.b, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150 ]
  %.2 = phi ptr [ %6, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit ], [ %1, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.kh = load ptr, ptr %.2, align 8, !tbaa !312
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !103 ; 2 uses
end_hunk_14
begin_hunk_15
  %i.lb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.kz, ptr %i.lb, align 8, !tbaa !113
  store ptr %scevgep.i.i.i.i.i, ptr %i.la, align 8, !tbaa !78
  %i.lc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.le = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
end_hunk_15
begin_hunk_16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.mc = load ptr, ptr %.2, align 8, !tbaa !312  ; 2 uses
  %i.md = load ptr, ptr %.2.sroa.phi, align 8, !tbaa !312 ; 2 uses
  %i.me = icmp eq ptr %i.mc, %i.md
  %.pre318 = trunc nuw nsw i64 %indvars.iv to i32 ; 2 uses
  br i1 %i.me, label %._crit_edge292, label %.lr.ph291
end_hunk_16
begin_hunk_17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.ew

bb.eo:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139, %.critedge.a, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227
  %i.rg = load ptr, ptr %6, align 8, !tbaa !289   ; 3 uses
  %i.rh = load ptr, ptr %.2.sroa.gep, align 8, !tbaa !286 ; 2 uses
  %.not4.i.i.i228 = icmp eq ptr %i.rg, %i.rh
  br i1 %.not4.i.i.i228, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i229

end_hunk_17
