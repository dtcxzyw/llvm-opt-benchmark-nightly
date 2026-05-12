inline.NumInlined: 461
inline.NumDeleted: 172
begin_hunk_0_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i
  store ptr %2, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !48
  %i.dw = load ptr, ptr %i.bs, align 8, !tbaa !49
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !43
  %.not = icmp eq ptr %i.dw, %i.dx
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  br label %bb.ai

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.s
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !49
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !43
  %.not228 = icmp eq ptr %i.eb, %i.ec
  br i1 %.not228, label %._crit_edge, label %.lr.ph227

.lr.ph227:                                        ; preds = %.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  br label %bb.aw

end_hunk_1
begin_hunk_2_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i

bb.ai:                                            ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.gp = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #23
          to label %bb.aj unwind label %bb.as     ; 4 uses

end_hunk_2
begin_hunk_3_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i
  %i.gq = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %16, align 16, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %20 = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %indvars.iv
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !50
  invoke void @_ZN4Mesh9getXPlaneEd(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.11") align 8 %17, ptr noundef nonnull align 8 dereferenceable(616) %i.gq, double noundef %i.gs)
end_hunk_3
begin_hunk_4_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i
bb.an:                                            ; preds = %bb.al
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !55  ; 4 uses
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = ptrtoint ptr %i.gw to i64               ; 2 uses
  %i.gz = sub i64 %i.gx, %i.gy                    ; 5 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775800
  br i1 %i.ha, label %bb.ao, label %_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_4
begin_hunk_5_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %21 = load ptr, ptr %i.dz, align 8, !tbaa !52
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %22, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %23) #22
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.aq, %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
end_hunk_5
begin_hunk_6_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hr = load ptr, ptr %i.bs, align 8, !tbaa !49
  %i.hs = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
end_hunk_6
begin_hunk_7_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i

bb.aw:                                            ; preds = %.lr.ph227, %_ZNSt6vectorIiSaIiEED2Ev.exit182
  %indvars.iv237 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next238, %_ZNSt6vectorIiSaIiEED2Ev.exit182 ] ; 2 uses
  %i.ik = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #23
          to label %bb.ax unwind label %bb.bg     ; 4 uses

end_hunk_7
begin_hunk_8_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i
  %i.il = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %18, align 16, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %24 = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %indvars.iv237
  %i.in = load double, ptr %i.im, align 8, !tbaa !50
  invoke void @_ZN4Mesh9getYPlaneEd(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.11") align 8 %19, ptr noundef nonnull align 8 dereferenceable(616) %i.il, double noundef %i.in)
          to label %bb.ay unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit184.thread
end_hunk_8
begin_hunk_9_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i
bb.bb:                                            ; preds = %bb.az
  %i.ir = load ptr, ptr %i.a, align 8, !tbaa !55  ; 4 uses
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = ptrtoint ptr %i.ir to i64               ; 2 uses
  %i.iu = sub i64 %i.is, %i.it                    ; 5 uses
  %i.iv = icmp eq i64 %i.iu, 9223372036854775800
  br i1 %i.iv, label %bb.bc, label %_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i172

end_hunk_9
begin_hunk_10_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i
  br i1 %.not.i17.i.i.i176, label %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i177, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i175
  %25 = load ptr, ptr %i.ee, align 8, !tbaa !52
  %26 = ptrtoint ptr %25 to i64
  %27 = sub i64 %26, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %27) #22
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i177

_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i177: ; preds = %bb.be, %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i175
end_hunk_10
begin_hunk_11_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.jm = load ptr, ptr %i.ct, align 8, !tbaa !49
  %i.jn = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
end_hunk_11
