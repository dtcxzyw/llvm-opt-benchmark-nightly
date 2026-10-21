Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_metadata?download=true
inline.NumInlined: 1644
inline.NumDeleted: 561
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4node8Metadata8Versions5pairsEv:bb.a
  %.val.i.i = load i64, ptr %0, align 8           ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val.i.i, i64 %.0.val.i.i) ; 2 uses
  %i.dt = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dt, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %.val19.i.i = load ptr, ptr %.sroa.4143.0..sroa_idx, align 8
  %i.du = tail call i32 @memcmp(ptr noundef readonly %.0.val18.i.i, ptr noundef readonly %.val19.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #22 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_ESP_EEbSA_SC_.exit.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %i.dw = sub i64 %.0.val.i.i, %.val.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.dw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_ESP_EEbSA_SC_.exit.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_ESP_EEbSA_SC_.exit.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.du, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %i.dx = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_ESP_EEbSA_SC_.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.023.i.ptr.i, i64 32, i1 false)
  %i.dy = lshr exact i64 %.023.i.idx.i, 5         ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 64
  %i.ea = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ea, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i
  %i.eb = getelementptr inbounds i8, ptr %.023.i.ptr.i, i64 -32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 16, i1 false)
  %i.ed = getelementptr inbounds i8, ptr %.023.i.ptr.i, i64 -16
  %i.ee = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i64 16, i1 false)
  %i.ef = add nsw i64 %i.dy, -1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i.i.unr = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.unr = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.unr = phi ptr [ %.023.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.eg = icmp eq i64 %indvar, 0
  br i1 %i.eg, label %_ZSt13move_backwardIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_ES6_ET0_T_S8_S7_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -32
  %i.ei = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %i.eh, i64 16, i1 false)
  %i.ej = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -16
  %i.ek = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false)
  %i.el = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.em, ptr noundef nonnull align 8 dereferenceable(32) %i.el, i64 16, i1 false)
  %i.en = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -48
  %i.eo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false)
  %i.ep = add nsw i64 %.010.i.i.i.i.i.i.i, -2
  %i.eq = icmp sgt i64 %.010.i.i.i.i.i.i.i, 2
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_ES6_ET0_T_S8_S7_.exit.i.i, !llvm.loop !75

_ZSt13move_backwardIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_ES6_ET0_T_S8_S7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.f

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_ESP_EEbSA_SC_.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.09.i.i.i = phi ptr [ %.023.i.ptr.i, %bb.c ], [ %.0.i.i.i, %bb.e ] ; 8 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.09.i.i.i, i64 -32 ; 3 uses
  %.0.val.i.i.i = load i64, ptr %.0.i.i.i, align 8 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.0.val.i.i.i, i64 %.0.val.i.i) ; 2 uses
  %i.er = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.er, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.es = getelementptr i8, ptr %.09.i.i.i, i64 -24
  %.0.val11.i.i.i = load ptr, ptr %i.es, align 8
  %i.et = tail call i32 @memcmp(ptr noundef readonly %.0.val18.i.i, ptr noundef readonly %.0.val11.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #22 ; 2 uses
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclISt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_EPSO_EEbSB_SC_.exit.i.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ev = sub i64 %.0.val.i.i, %.0.val.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ev, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclISt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_EPSO_EEbSB_SC_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclISt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_EPSO_EEbSB_SC_.exit.i.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.et, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ew = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ew, label %bb.e, label %"_ZSt25__unguarded_linear_insertIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSI_OSK_E_EEEvSI_SK_.exit.i.i"

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclISt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_EPSO_EEbSB_SC_.exit.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i, i64 16, i1 false)
  %i.ex = getelementptr inbounds i8, ptr %.09.i.i.i, i64 -16
  %i.ey = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i64 16, i1 false)
  br label %bb.d, !llvm.loop !76

"_ZSt25__unguarded_linear_insertIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSI_OSK_E_EEEvSI_SK_.exit.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclISt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_EPSO_EEbSB_SC_.exit.i.i.i"
  store i64 %.0.val.i.i, ptr %.09.i.i.i, align 8
  %.sroa.5.0..09.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  store ptr %.0.val18.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i.i, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSI_OSK_E_EEEvSI_SK_.exit.i.i", %_ZSt13move_backwardIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_ES6_ET0_T_S8_S7_.exit.i.i
  %.023.i.add.i = add nuw nsw i64 %.023.i.idx.i, 32 ; 2 uses
  %.not.i.i = icmp eq i64 %.023.i.add.i, 512
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.lr.ph.i.i.i.i.i.i, label %bb.b, !llvm.loop !77

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %"_ZSt25__unguarded_linear_insertIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSI_OSK_E_EEEvSI_SK_.exit.i.i.i.i.i.i"
  %.010.i.i.i.i.i.idx.i = phi i64 [ %.010.i.i.i.i.i.add.i, %"_ZSt25__unguarded_linear_insertIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSI_OSK_E_EEEvSI_SK_.exit.i.i.i.i.i.i" ], [ 512, %bb.f ] ; 2 uses
  %.010.i.i.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.010.i.i.i.i.i.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.010.i.i.i.i.i.ptr.i, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.ptr.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.ptr.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %.010.i.i.i.i.i.ptr.i, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %bb.h ] ; 8 uses
  %.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.09.i.i.i.i.i.i.i, i64 -32 ; 3 uses
  %.0.val.i.i.i.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.0.val.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i) ; 2 uses
  %i.fa = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.fb = getelementptr i8, ptr %.09.i.i.i.i.i.i.i, i64 -24
  %.0.val11.i.i.i.i.i.i.i = load ptr, ptr %i.fb, align 8
  %i.fc = tail call i32 @memcmp(ptr noundef readonly %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr noundef readonly %.0.val11.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #22 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclISt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_EPSO_EEbSB_SC_.exit.i.i.i.i.i.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %i.fe = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.0.val.i.i.i.i.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.fe, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclISt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_EPSO_EEbSB_SC_.exit.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclISt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_EPSO_EEbSB_SC_.exit.i.i.i.i.i.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ff = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ff, label %bb.h, label %"_ZSt25__unguarded_linear_insertIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSI_OSK_E_EEEvSI_SK_.exit.i.i.i.i.i.i"

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclISt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_EPSO_EEbSB_SC_.exit.i.i.i.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.fg = getelementptr inbounds i8, ptr %.09.i.i.i.i.i.i.i, i64 -16
  %i.fh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i64 16, i1 false)
  br label %bb.g, !llvm.loop !76

"_ZSt25__unguarded_linear_insertIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSI_OSK_E_EEEvSI_SK_.exit.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSA_OSC_E_EclISt4pairISt17basic_string_viewIcSt11char_traitsIcEESN_EPSO_EEbSB_SC_.exit.i.i.i.i.i.i.i"
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.09.i.i.i.i.i.i.i, align 8
  %.sroa.5.0..09.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i.i.i.i.i.i, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i)
  %.010.i.i.i.i.i.add.i = add nuw nsw i64 %.010.i.i.i.i.i.idx.i, 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.010.i.i.i.i.i.add.i, 960
  br i1 %.not.i.i.i.i.i.i, label %"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt5arrayISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_ELm30EEZNK4node8Metadata8Versions5pairsEvE3$_0St8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISG_EEE4typeISI_NS_8danglingEEEOSG_SJ_SK_.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !78

"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt5arrayISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_ELm30EEZNK4node8Metadata8Versions5pairsEvE3$_0St8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISG_EEE4typeISI_NS_8danglingEEEOSG_SJ_SK_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNK4node8Metadata8Versions5pairsEvE3$_0St8identityEEDaRT_RT0_EUlOSI_OSK_E_EEEvSI_SK_.exit.i.i.i.i.i.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node8Metadata7ReleaseC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  store i32 1701080942, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.h, align 8
  %1 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.52, i64 noundef 63) ; 0 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull @.str.53, i64 noundef 71) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node8MetadataC2Ev(ptr noundef nonnull align 8 dereferenceable(1120) %0) unnamed_addr #0 align 2 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i:
  tail call void @_ZN4node8Metadata8VersionsC2Ev(ptr noundef nonnull align 8 dereferenceable(960) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  store i32 1701080942, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i64 4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 980
  store i8 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 5 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  store i64 0, ptr %i.g, align 8
  store i8 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  %i.k = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.k, ptr noundef nonnull align 1 dereferenceable(63) @.str.52, i64 63, i1 false)
  %.pre.i = load ptr, ptr %i.e, align 8           ; 2 uses
  %i.l = icmp eq ptr %.pre.i, %i.f
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.m = load i64, ptr %i.f, align 8
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i
  store ptr %i.k, ptr %i.e, align 8
  store i64 63, ptr %i.f, align 8
  store i64 63, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 63
  store i8 0, ptr %i.o, align 1
  %i.p = load i64, ptr %i.j, align 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef %i.p, ptr noundef nonnull @.str.53, i64 noundef 71) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.s, ptr noundef nonnull align 1 dereferenceable(3) @.str.54, i64 3, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i64 3, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1075
  store i8 0, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.w, ptr noundef nonnull align 1 dereferenceable(5) @.str.55, i64 5, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store i64 5, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1109
  store i8 0, ptr %i.y, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.56() #6 section ".text.startup" comdat($_ZN3ada37url_pattern_compile_component_options7DEFAULTE) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN3ada37url_pattern_compile_component_options7DEFAULTE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN3ada37url_pattern_compile_component_options7DEFAULTE) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZN3ada37url_pattern_compile_component_options7DEFAULTE, align 1
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3ada37url_pattern_compile_component_options7DEFAULTE, i64 1), align 1
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3ada37url_pattern_compile_component_options7DEFAULTE, i64 3), align 1
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN3ada37url_pattern_compile_component_options7DEFAULTE) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.57() #6 section ".text.startup" comdat($_ZN3ada37url_pattern_compile_component_options8HOSTNAMEE) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN3ada37url_pattern_compile_component_options8HOSTNAMEE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN3ada37url_pattern_compile_component_options8HOSTNAMEE) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZN3ada37url_pattern_compile_component_options8HOSTNAMEE, align 1
  store i16 302, ptr getelementptr inbounds nuw (i8, ptr @_ZN3ada37url_pattern_compile_component_options8HOSTNAMEE, i64 1), align 1
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3ada37url_pattern_compile_component_options8HOSTNAMEE, i64 3), align 1
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN3ada37url_pattern_compile_component_options8HOSTNAMEE) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.58() #6 section ".text.startup" comdat($_ZN3ada37url_pattern_compile_component_options8PATHNAMEE) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN3ada37url_pattern_compile_component_options8PATHNAMEE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN3ada37url_pattern_compile_component_options8PATHNAMEE) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZN3ada37url_pattern_compile_component_options8PATHNAMEE, align 1
  store i16 303, ptr getelementptr inbounds nuw (i8, ptr @_ZN3ada37url_pattern_compile_component_options8PATHNAMEE, i64 1), align 1
  store i16 303, ptr getelementptr inbounds nuw (i8, ptr @_ZN3ada37url_pattern_compile_component_options8PATHNAMEE, i64 3), align 1
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN3ada37url_pattern_compile_component_options8PATHNAMEE) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal24fractured_string_builder14format_elementERKNS_3dom7elementERKNS0_15element_metricsEm(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.simdjson::dom::array", align 8 ; 8 uses
  %5 = alloca %"class.simdjson::dom::object", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i64 %i.f, 56
  %trunc = trunc nuw i64 %i.g to i8
  switch i8 %trunc, label %bb.l [
    i8 91, label %bb.b
    i8 123, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %.mask.i = and i64 %i.f, -72057594037927936
  %cond.i = icmp eq i64 %.mask.i, 6557241057451442176
  br i1 %cond.i, label %bb.c, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %4, align 8
  store i64 %i.c, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load i32, ptr %i.i, align 8
  switch i32 %i.j, label %bb.g [
    i32 0, label %bb.d
    i32 1, label %bb.e
end_hunk_0
