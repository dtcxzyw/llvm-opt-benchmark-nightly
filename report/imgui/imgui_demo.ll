Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZL17DemoWindowWidgetsP19ImGuiDemoWindowData:bb.a

bb.fc:                                            ; preds = %bb.fb, %_ZL10HelpMarkerPKc.exit41.i19
  %i.pc = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #30
  store <2 x float> zeroinitializer, ptr %68, align 8, !tbaa !46
  %i.pd = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.581, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef %i.pc, ptr noundef nonnull align 4 dereferenceable(8) %68)
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #30
  %i.pe = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 100
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !49
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.pg)
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #30
  store <2 x float> zeroinitializer, ptr %69, align 8, !tbaa !46
  %i.ph = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.582, ptr noundef nonnull align 4 dereferenceable(8) %69)
  %i.pi = or i1 %i.pd, %i.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #30
  br i1 %i.pi, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.pj = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.583, i32 noundef 0) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE12backup_color, ptr noundef nonnull align 8 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i64 16, i1 false), !tbaa.struct !50
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.pk = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.583, i32 noundef 0)
  br i1 %i.pk, label %bb.ff, label %bb.fu

bb.ff:                                            ; preds = %bb.fe
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.584)
  call void @_ZN5ImGui9SeparatorEv()
  %i.pl = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !51
  %i.pm = or i32 %i.pl, 272
  %i.pn = call noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef nonnull @.str.585, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef %i.pm, ptr noundef null) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui10BeginGroupEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.586)
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #30
  store <2 x float> <float 6.000000e+01, float 4.000000e+01>, ptr %70, align 8, !tbaa !46
  %i.po = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.587, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef 16388, ptr noundef nonnull align 4 dereferenceable(8) %70) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #30
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.588)
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #30
  store <2 x float> <float 6.000000e+01, float 4.000000e+01>, ptr %71, align 8, !tbaa !46
  %i.pp = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.589, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE12backup_color, i32 noundef 16388, ptr noundef nonnull align 4 dereferenceable(8) %71)
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #30
  br i1 %i.pp, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE12backup_color, i64 16, i1 false), !tbaa.struct !50
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  call void @_ZN5ImGui9SeparatorEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.582)
  br label %bb.fj

bb.fi:                                            ; preds = %bb.ft
  call void @_ZN5ImGui8EndGroupEv()
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.fu

bb.fj:                                            ; preds = %bb.ft, %bb.fh
  %indvars.iv49.i = phi i64 [ 0, %bb.fh ], [ %indvars.iv.next50.i, %bb.ft ] ; 3 uses
  %i.pq = trunc nuw nsw i64 %indvars.iv49.i to i32 ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.pq)
  %i.pr = and i32 %i.pq, 7
  %.not36.i = icmp eq i32 %i.pr, 0
  br i1 %.not36.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ps = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 96
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !132
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.pu)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE13saved_palette, i64 %indvars.iv49.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #30
  store <2 x float> splat (float 2.000000e+01), ptr %72, align 8, !tbaa !46
  %i.pw = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.590, ptr noundef nonnull align 4 dereferenceable(16) %i.pv, i32 noundef 70, ptr noundef nonnull align 4 dereferenceable(8) %72)
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #30
  br i1 %i.pw, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.py = load float, ptr %i.px, align 8, !tbaa !135
  %i.pz = load <2 x float>, ptr %i.pv, align 16, !tbaa !46
  store <2 x float> %i.pz, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, align 8, !tbaa !46
  store float %i.py, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i64 8), align 8, !tbaa !46
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.qa = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropTargetEv()
  br i1 %i.qa, label %bb.fo, label %bb.ft

bb.fo:                                            ; preds = %bb.fn
  %i.qb = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.591, i32 noundef 0) ; 2 uses
  %.not37.i = icmp eq ptr %i.qb, null
  br i1 %.not37.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.pv, ptr noundef nonnull align 1 dereferenceable(12) %i.qc, i64 12, i1 false)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.qd = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.592, i32 noundef 0) ; 2 uses
  %.not38.i = icmp eq ptr %i.qd, null
  br i1 %.not38.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pv, ptr noundef nonnull align 1 dereferenceable(16) %i.qe, i64 16, i1 false)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  call void @_ZN5ImGui17EndDragDropTargetEv()
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fn
  call void @_ZN5ImGui5PopIDEv()
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 32
  br i1 %exitcond52.not.i, label %bb.fi, label %bb.fj, !llvm.loop !370

bb.fu:                                            ; preds = %bb.fi, %bb.fe
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1303, ptr noundef nonnull @.str.593)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.594)
  %i.qf = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.595, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE9no_border) ; 0 uses
  %i.qg = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !51
  %i.qh = load i8, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE9no_border, align 1, !tbaa !35, !range !19, !noundef !20
  %i.qi = zext nneg i8 %i.qh to i32
  %i.qj = shl nuw nsw i32 %i.qi, 10
  %i.qk = or i32 %i.qj, %i.qg
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #30
  store <2 x float> splat (float 8.000000e+01), ptr %73, align 8, !tbaa !46
  %i.ql = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.596, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef %i.qk, ptr noundef nonnull align 4 dereferenceable(8) %73) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #30
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1309, ptr noundef nonnull @.str.597)
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.598)
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.598)
  %i.qm = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.554, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE18color_picker_flags, i32 noundef 2) ; 0 uses
  %i.qn = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.599, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE18color_picker_flags, i32 noundef 262144) ; 0 uses
  %i.qo = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.600, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE18color_picker_flags, i32 noundef 256) ; 0 uses
  %i.qp = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE18color_picker_flags, align 4, !tbaa !51
  %i.qq = and i32 %i.qp, 256
  %.not.i22 = icmp eq i32 %i.qq, 0
  br i1 %.not.i22, label %bb.fx, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.qr = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.601, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE9ref_color) ; 0 uses
  %i.qs = load i8, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE9ref_color, align 1, !tbaa !35, !range !19, !noundef !20
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.qu = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !51
  %i.qv = or i32 %i.qu, 32
  %i.qw = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.602, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE11ref_color_v, i32 noundef %i.qv) ; 0 uses
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv, %bb.fu
  %i.qx = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.603, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE18color_picker_flags, i32 noundef 134217728) ; 0 uses
  %i.qy = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.604, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE11picker_mode, ptr noundef nonnull @.str.605, i32 noundef -1) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.qz = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.qz, label %bb.fy, label %_ZL10HelpMarkerPKc.exit42.i

bb.fy:                                            ; preds = %bb.fx
  %i.ra = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.rb = fmul float %i.ra, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.rb)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.606, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit42.i

_ZL10HelpMarkerPKc.exit42.i:                      ; preds = %bb.fy, %bb.fx
  %i.rc = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.607, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE12display_mode, ptr noundef nonnull @.str.608, i32 noundef -1) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.rd = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.rd, label %bb.fz, label %_ZL10HelpMarkerPKc.exit43.i

bb.fz:                                            ; preds = %_ZL10HelpMarkerPKc.exit42.i
  %i.re = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.rf = fmul float %i.re, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.rf)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.609, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit43.i

_ZL10HelpMarkerPKc.exit43.i:                      ; preds = %bb.fz, %_ZL10HelpMarkerPKc.exit42.i
  %i.rg = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !51
  %i.rh = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE18color_picker_flags, align 4, !tbaa !51
  %i.ri = or i32 %i.rh, %i.rg                     ; 2 uses
  %i.rj = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE11picker_mode, align 4, !tbaa !51 ; 2 uses
  %i.rk = icmp eq i32 %i.rj, 1
  %i.rl = or i32 %i.ri, 33554432
  %spec.select.i = select i1 %i.rk, i32 %i.rl, i32 %i.ri ; 2 uses
  %i.rm = icmp eq i32 %i.rj, 2
  %i.rn = or i32 %spec.select.i, 67108864
  %.1.i = select i1 %i.rm, i32 %i.rn, i32 %spec.select.i ; 2 uses
  %i.ro = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE12display_mode, align 4, !tbaa !51 ; 4 uses
  %i.rp = icmp eq i32 %i.ro, 1
  %i.rq = or i32 %.1.i, 32
  %.2.i = select i1 %i.rp, i32 %i.rq, i32 %.1.i   ; 2 uses
  %i.rr = icmp eq i32 %i.ro, 2
  %i.rs = or i32 %.2.i, 1048576
  %.3.i = select i1 %i.rr, i32 %i.rs, i32 %.2.i   ; 2 uses
  %i.rt = icmp eq i32 %i.ro, 3
  %i.ru = or i32 %.3.i, 2097152
  %.4.i = select i1 %i.rt, i32 %i.ru, i32 %.3.i   ; 2 uses
  %i.rv = icmp eq i32 %i.ro, 4
  %i.rw = or i32 %.4.i, 4194304
  %.5.i = select i1 %i.rv, i32 %i.rw, i32 %.4.i
  %i.rx = load i8, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE9ref_color, align 1, !tbaa !35, !range !19, !noundef !20
  %i.ry = trunc nuw i8 %i.rx to i1
  %i.rz = select i1 %i.ry, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE11ref_color_v, ptr null
  %i.sa = call noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef nonnull @.str.610, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef %.5.i, ptr noundef %i.rz) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.611)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.sb = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.sb, label %bb.ga, label %_ZL10HelpMarkerPKc.exit44.i

bb.ga:                                            ; preds = %_ZL10HelpMarkerPKc.exit43.i
  %i.sc = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.sd = fmul float %i.sc, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.sd)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.612, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit44.i

_ZL10HelpMarkerPKc.exit44.i:                      ; preds = %bb.ga, %_ZL10HelpMarkerPKc.exit43.i
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #30
  store <2 x float> zeroinitializer, ptr %74, align 8, !tbaa !46
  %i.se = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.613, ptr noundef nonnull align 4 dereferenceable(8) %74)
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #30
  br i1 %i.se, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %_ZL10HelpMarkerPKc.exit44.i
  %i.sf = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 84
  store i32 44040192, ptr %i.sg, align 4, !tbaa !380
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %_ZL10HelpMarkerPKc.exit44.i
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #30
  store <2 x float> zeroinitializer, ptr %75, align 8, !tbaa !46
  %i.sh = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.614, ptr noundef nonnull align 4 dereferenceable(8) %75)
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #30
  br i1 %i.sh, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.si = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 84
  store i32 84410368, ptr %i.sj, align 4, !tbaa !380
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.615)
  %i.sk = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.sk, i64 0
  %i.sl = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 96
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !132
  %i.so = fsub float %.sroa.0.0.vec.extract.i, %i.sn
  %i.sp = fmul float %i.so, 4.000000e-01          ; 2 uses
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.sp)
  %i.sq = call noundef zeroext i1 @_ZN5ImGui12ColorPicker3EPKcPfi(ptr noundef nonnull @.str.616, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef 33554722) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.sp)
  %i.sr = call noundef zeroext i1 @_ZN5ImGui12ColorPicker3EPKcPfi(ptr noundef nonnull @.str.617, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef 67109154) ; 0 uses
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui7SpacingEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.618)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ss = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ss, label %bb.gf, label %_ZL10HelpMarkerPKc.exit45.i

bb.gf:                                            ; preds = %bb.ge
  %i.st = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.su = fmul float %i.st, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.su)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.619, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit45.i

_ZL10HelpMarkerPKc.exit45.i:                      ; preds = %bb.gf, %bb.ge
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.620)
  %i.sv = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.621, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE9color_hsv, i32 noundef 554696704) ; 0 uses
  %i.sw = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.622, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE9color_hsv, i32 noundef 555745280) ; 0 uses
  %i.sx = call noundef zeroext i1 @_ZN5ImGui10DragFloat4EPKcPffffS1_i(ptr noundef nonnull @.str.623, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE9color_hsv, float noundef f0x3C23D70A, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.201, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %_ZL32DemoWindowWidgetsColorAndPickersv.exit

_ZL32DemoWindowWidgetsColorAndPickersv.exit:      ; preds = %_ZL27DemoWindowWidgetsComboBoxesv.exit, %_ZL10HelpMarkerPKc.exit45.i
  %i.sy = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.624)
  br i1 %i.sy, label %bb.gg, label %_ZL26DemoWindowWidgetsDataTypesv.exit

bb.gg:                                            ; preds = %_ZL32DemoWindowWidgetsColorAndPickersv.exit
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1496, ptr noundef nonnull @.str.625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #30
  store i8 0, ptr %i.y, align 1, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #30
  store i8 1, ptr %i.z, align 1, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #30
  store i8 50, ptr %i.aa, align 1, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #30
  store i8 -128, ptr %i.ab, align 1, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #30
  store i8 127, ptr %i.ac, align 1, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #30
  store i8 0, ptr %i.ad, align 1, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #30
  store i8 1, ptr %i.ae, align 1, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #30
  store i8 50, ptr %i.af, align 1, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #30
  store i8 0, ptr %i.ag, align 1, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #30
  store i8 -1, ptr %i.ah, align 1, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #30
  store i16 0, ptr %i.ai, align 2, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #30
  store i16 1, ptr %i.aj, align 2, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #30
  store i16 50, ptr %i.ak, align 2, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #30
  store i16 -32768, ptr %i.al, align 2, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #30
  store i16 32767, ptr %i.am, align 2, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #30
  store i16 0, ptr %i.an, align 2, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #30
  store i16 1, ptr %i.ao, align 2, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #30
  store i16 50, ptr %i.ap, align 2, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #30
  store i16 0, ptr %i.aq, align 2, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #30
  store i16 -1, ptr %i.ar, align 2, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #30
  store i32 0, ptr %i.as, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #30
  store i32 1, ptr %i.at, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #30
  store i32 50, ptr %i.au, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #30
  store i32 -1073741824, ptr %i.av, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #30
  store i32 1073741823, ptr %i.aw, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #30
  store i32 1073741723, ptr %i.ax, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #30
  store i32 1073741823, ptr %i.ay, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #30
  store i32 0, ptr %i.az, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #30
  store i32 1, ptr %i.ba, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #30
  store i32 50, ptr %i.bb, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #30
  store i32 0, ptr %i.bc, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #30
  store i32 2147483647, ptr %i.bd, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #30
  store i32 2147483547, ptr %i.be, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #30
  store i32 2147483647, ptr %i.bf, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg) #30
  store i64 0, ptr %i.bg, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #30
  store i64 1, ptr %i.bh, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #30
  store i64 50, ptr %i.bi, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj) #30
  store i64 -4611686018427387904, ptr %i.bj, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk) #30
  store i64 4611686018427387903, ptr %i.bk, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl) #30
  store i64 4611686018427387803, ptr %i.bl, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm) #30
  store i64 4611686018427387903, ptr %i.bm, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn) #30
  store i64 0, ptr %i.bn, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #30
  store i64 1, ptr %i.bo, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp) #30
  store i64 50, ptr %i.bp, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq) #30
  store i64 0, ptr %i.bq, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br) #30
  store i64 9223372036854775807, ptr %i.br, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs) #30
  store i64 9223372036854775707, ptr %i.bs, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt) #30
  store i64 9223372036854775807, ptr %i.bt, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu) #30
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv) #30
  store float 1.000000e+00, ptr %i.bv, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw) #30
  store float -1.000000e+10, ptr %i.bw, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx) #30
  store float 1.000000e+10, ptr %i.bx, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by) #30
  store double 0.000000e+00, ptr %i.by, align 8, !tbaa !381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz) #30
  store double 1.000000e+00, ptr %i.bz, align 8, !tbaa !381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca) #30
end_hunk_0
