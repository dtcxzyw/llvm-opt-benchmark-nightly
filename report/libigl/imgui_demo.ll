Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_demo?download=true
inline.NumInlined: 820
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 110
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZL21ShowDemoWindowWidgetsv:bb.a
  %i.bcw = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2(ptr noundef nonnull @.str.515, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL21ShowDemoWindowWidgetsvE5color, i32 noundef %i.bbv, <2 x float> zeroinitializer)
  %i.bcx = call noundef nonnull align 4 dereferenceable(1048) ptr @_ZN5ImGui8GetStyleEv()
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 84
  %i.bcz = load float, ptr %i.bcy, align 4, !tbaa !56
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.bcz)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27
  store <2 x float> zeroinitializer, ptr %51, align 8, !tbaa !41
  %i.bda = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.516, ptr noundef nonnull align 4 dereferenceable(8) %51)
  %i.bdb = or i1 %i.bcw, %i.bda
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br i1 %i.bdb, label %bb.rj, label %bb.rk

bb.rj:                                            ; preds = %bb.ri
  call void @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.517, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @_ZZL21ShowDemoWindowWidgetsvE12backup_color, ptr noundef nonnull align 16 dereferenceable(16) @_ZZL21ShowDemoWindowWidgetsvE5color, i64 16, i1 false), !tbaa.struct !57
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rj, %bb.ri
  %i.bdc = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.517, i32 noundef 0)
  br i1 %i.bdc, label %bb.rl, label %bb.sa

bb.rl:                                            ; preds = %bb.rk
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.518)
  call void @_ZN5ImGui9SeparatorEv()
  %i.bdd = or disjoint i32 %i.bbv, 272
  %i.bde = call noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef nonnull @.str.519, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE5color, i32 noundef %i.bdd, ptr noundef null) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui10BeginGroupEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.520)
  %i.bdf = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2(ptr noundef nonnull @.str.521, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL21ShowDemoWindowWidgetsvE5color, i32 noundef 262148, <2 x float> <float 6.000000e+01, float 4.000000e+01>) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.522)
  %i.bdg = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2(ptr noundef nonnull @.str.523, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL21ShowDemoWindowWidgetsvE12backup_color, i32 noundef 262148, <2 x float> <float 6.000000e+01, float 4.000000e+01>)
  br i1 %i.bdg, label %bb.rm, label %bb.rn

bb.rm:                                            ; preds = %bb.rl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_ZZL21ShowDemoWindowWidgetsvE5color, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL21ShowDemoWindowWidgetsvE12backup_color, i64 16, i1 false), !tbaa.struct !57
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %bb.rl
  call void @_ZN5ImGui9SeparatorEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.516)
  br label %bb.rp

bb.ro:                                            ; preds = %bb.rz
  call void @_ZN5ImGui8EndGroupEv()
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.sa

bb.rp:                                            ; preds = %bb.rn, %bb.rz
  %indvars.iv697 = phi i64 [ 0, %bb.rn ], [ %indvars.iv.next698, %bb.rz ] ; 3 uses
  %i.bdh = trunc nuw nsw i64 %indvars.iv697 to i32 ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.bdh)
  %i.bdi = and i32 %i.bdh, 7
  %.not381 = icmp eq i32 %i.bdi, 0
  br i1 %.not381, label %bb.rr, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.bdj = call noundef nonnull align 4 dereferenceable(1048) ptr @_ZN5ImGui8GetStyleEv()
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdj, i64 80
  %i.bdl = load float, ptr %i.bdk, align 4, !tbaa !83
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.bdl)
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.rp
  %i.bdm = getelementptr inbounds nuw [16 x i8], ptr @_ZZL21ShowDemoWindowWidgetsvE13saved_palette, i64 %indvars.iv697 ; 5 uses
  %i.bdn = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2(ptr noundef nonnull @.str.524, ptr noundef nonnull align 4 dereferenceable(16) %i.bdm, i32 noundef 70, <2 x float> splat (float 2.000000e+01))
  br i1 %i.bdn, label %bb.rs, label %bb.rt

bb.rs:                                            ; preds = %bb.rr
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdm, i64 8
  %i.bdp = load float, ptr %i.bdo, align 8, !tbaa !91
  %i.bdq = load <2 x float>, ptr %i.bdm, align 16, !tbaa !41
  store <2 x float> %i.bdq, ptr @_ZZL21ShowDemoWindowWidgetsvE5color, align 16, !tbaa !41
  store float %i.bdp, ptr getelementptr inbounds nuw (i8, ptr @_ZZL21ShowDemoWindowWidgetsvE5color, i64 8), align 8, !tbaa !41
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.rr
  %i.bdr = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropTargetEv()
  br i1 %i.bdr, label %bb.ru, label %bb.rz

bb.ru:                                            ; preds = %bb.rt
  %i.bds = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.525, i32 noundef 0) ; 2 uses
  %.not382 = icmp eq ptr %i.bds, null
  br i1 %.not382, label %bb.rw, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bdm, ptr noundef nonnull align 1 dereferenceable(12) %i.bdt, i64 12, i1 false)
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %bb.ru
  %i.bdu = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.526, i32 noundef 0) ; 2 uses
  %.not383 = icmp eq ptr %i.bdu, null
  br i1 %.not383, label %bb.ry, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bdm, ptr noundef nonnull align 1 dereferenceable(16) %i.bdv, i64 16, i1 false)
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rw
  call void @_ZN5ImGui17EndDragDropTargetEv()
  br label %bb.rz

bb.rz:                                            ; preds = %bb.ry, %bb.rt
  call void @_ZN5ImGui5PopIDEv()
  %indvars.iv.next698 = add nuw nsw i64 %indvars.iv697, 1 ; 2 uses
  %exitcond700.not = icmp eq i64 %indvars.iv.next698, 32
  br i1 %exitcond700.not, label %bb.ro, label %bb.rp, !llvm.loop !204

bb.sa:                                            ; preds = %bb.ro, %bb.rk
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.527)
  %i.bdw = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.528, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE9no_border) ; 0 uses
  %i.bdx = load i8, ptr @_ZZL21ShowDemoWindowWidgetsvE9no_border, align 1, !tbaa !23, !range !21, !noundef !22
  %i.bdy = zext nneg i8 %i.bdx to i32
  %i.bdz = shl nuw nsw i32 %i.bdy, 10
  %i.bea = or disjoint i32 %i.bdz, %i.bbv
  %i.beb = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2(ptr noundef nonnull @.str.529, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL21ShowDemoWindowWidgetsvE5color, i32 noundef %i.bea, <2 x float> splat (float 8.000000e+01)) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.530)
  %i.bec = load atomic i8, ptr @_ZGVZL21ShowDemoWindowWidgetsvE11ref_color_v acquire, align 8
  %i.bed = icmp eq i8 %i.bec, 0
  br i1 %i.bed, label %bb.sb, label %bb.sd, !prof !24

bb.sb:                                            ; preds = %bb.sa
  %i.bee = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL21ShowDemoWindowWidgetsvE11ref_color_v) #27
  %.not374 = icmp eq i32 %i.bee, 0
  br i1 %.not374, label %bb.sd, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 5.000000e-01>, ptr @_ZZL21ShowDemoWindowWidgetsvE11ref_color_v, align 16, !tbaa !41
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL21ShowDemoWindowWidgetsvE11ref_color_v) #27
  br label %bb.sd

bb.sd:                                            ; preds = %bb.sc, %bb.sb, %bb.sa
  %i.bef = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.531, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE5alpha) ; 0 uses
  %i.beg = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.532, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE9alpha_bar) ; 0 uses
  %i.beh = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.533, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE12side_preview) ; 0 uses
  %i.bei = load i8, ptr @_ZZL21ShowDemoWindowWidgetsvE12side_preview, align 1, !tbaa !23, !range !21, !noundef !22
  %i.bej = trunc nuw i8 %i.bei to i1
  br i1 %i.bej, label %bb.se, label %bb.sg

bb.se:                                            ; preds = %bb.sd
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.bek = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.534, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE9ref_color) ; 0 uses
  %i.bel = load i8, ptr @_ZZL21ShowDemoWindowWidgetsvE9ref_color, align 1, !tbaa !23, !range !21, !noundef !22
  %i.bem = trunc nuw i8 %i.bel to i1
  br i1 %i.bem, label %bb.sf, label %bb.sg

bb.sf:                                            ; preds = %bb.se
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.ben = or disjoint i32 %i.bbv, 32
  %i.beo = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.535, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE11ref_color_v, i32 noundef %i.ben) ; 0 uses
  br label %bb.sg

bb.sg:                                            ; preds = %bb.se, %bb.sf, %bb.sd
  %i.bep = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.536, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE12display_mode, ptr noundef nonnull @.str.537, i32 noundef -1) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.236)
  %i.beq = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.beq, label %bb.sh, label %_ZL10HelpMarkerPKc.exit448

bb.sh:                                            ; preds = %bb.sg
  call void @_ZN5ImGui12BeginTooltipEv()
  %i.ber = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.bes = fmul float %i.ber, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bes)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.538, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit448

_ZL10HelpMarkerPKc.exit448:                       ; preds = %bb.sg, %bb.sh
  %i.bet = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.539, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE11picker_mode, ptr noundef nonnull @.str.540, i32 noundef -1) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.236)
  %i.beu = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.beu, label %bb.si, label %_ZL10HelpMarkerPKc.exit449

bb.si:                                            ; preds = %_ZL10HelpMarkerPKc.exit448
  call void @_ZN5ImGui12BeginTooltipEv()
  %i.bev = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.bew = fmul float %i.bev, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bew)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.541, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit449

_ZL10HelpMarkerPKc.exit449:                       ; preds = %_ZL10HelpMarkerPKc.exit448, %bb.si
  %i.bex = load i8, ptr @_ZZL21ShowDemoWindowWidgetsvE5alpha, align 1, !tbaa !23, !range !21, !noundef !22
  %i.bey = trunc nuw i8 %i.bex to i1
  %i.bez = or disjoint i32 %i.bbv, 2
  %spec.select395 = select i1 %i.bey, i32 %i.bbv, i32 %i.bez
  %i.bfa = load i8, ptr @_ZZL21ShowDemoWindowWidgetsvE9alpha_bar, align 1, !tbaa !23, !range !21, !noundef !22
  %i.bfb = zext nneg i8 %i.bfa to i32
  %i.bfc = shl nuw nsw i32 %i.bfb, 16
  %.1321 = or disjoint i32 %i.bfc, %spec.select395 ; 2 uses
  %i.bfd = load i8, ptr @_ZZL21ShowDemoWindowWidgetsvE12side_preview, align 1, !tbaa !23, !range !21, !noundef !22
  %i.bfe = trunc nuw i8 %i.bfd to i1
  %i.bff = or i32 %.1321, 256
  %.2322 = select i1 %i.bfe, i32 %.1321, i32 %i.bff ; 3 uses
  %i.bfg = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE11picker_mode, align 4, !tbaa !42 ; 2 uses
  %i.bfh = icmp eq i32 %i.bfg, 1
  %i.bfi = or i32 %.2322, 33554432
  %.3323 = select i1 %i.bfh, i32 %i.bfi, i32 %.2322
  %i.bfj = icmp eq i32 %i.bfg, 2
  %i.bfk = or i32 %.2322, 67108864
  %.4324 = select i1 %i.bfj, i32 %i.bfk, i32 %.3323 ; 5 uses
  %i.bfl = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE12display_mode, align 4, !tbaa !42 ; 4 uses
  %i.bfm = icmp eq i32 %i.bfl, 1
  %i.bfn = or i32 %.4324, 32
  %.5325 = select i1 %i.bfm, i32 %i.bfn, i32 %.4324
  %i.bfo = icmp eq i32 %i.bfl, 2
  %i.bfp = or i32 %.4324, 1048576
  %.6326 = select i1 %i.bfo, i32 %i.bfp, i32 %.5325
  %i.bfq = icmp eq i32 %i.bfl, 3
  %i.bfr = or i32 %.4324, 2097152
  %.7327 = select i1 %i.bfq, i32 %i.bfr, i32 %.6326
  %i.bfs = icmp eq i32 %i.bfl, 4
  %i.bft = or i32 %.4324, 4194304
  %.8328 = select i1 %i.bfs, i32 %i.bft, i32 %.7327
  %i.bfu = load i8, ptr @_ZZL21ShowDemoWindowWidgetsvE9ref_color, align 1, !tbaa !23, !range !21, !noundef !22
  %i.bfv = trunc nuw i8 %i.bfu to i1
  %i.bfw = select i1 %i.bfv, ptr @_ZZL21ShowDemoWindowWidgetsvE11ref_color_v, ptr null
  %i.bfx = call noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef nonnull @.str.542, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE5color, i32 noundef %.8328, ptr noundef %i.bfw) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.543)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.236)
  %i.bfy = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.bfy, label %bb.sj, label %_ZL10HelpMarkerPKc.exit450

bb.sj:                                            ; preds = %_ZL10HelpMarkerPKc.exit449
  call void @_ZN5ImGui12BeginTooltipEv()
  %i.bfz = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.bga = fmul float %i.bfz, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bga)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.544, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit450

_ZL10HelpMarkerPKc.exit450:                       ; preds = %_ZL10HelpMarkerPKc.exit449, %bb.sj
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27
  store <2 x float> zeroinitializer, ptr %52, align 8, !tbaa !41
  %i.bgb = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.545, ptr noundef nonnull align 4 dereferenceable(8) %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  br i1 %i.bgb, label %bb.sk, label %bb.sl

bb.sk:                                            ; preds = %_ZL10HelpMarkerPKc.exit450
  call void @_ZN5ImGui19SetColorEditOptionsEi(i32 noundef 44040192)
  br label %bb.sl

bb.sl:                                            ; preds = %bb.sk, %_ZL10HelpMarkerPKc.exit450
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #27
  store <2 x float> zeroinitializer, ptr %53, align 8, !tbaa !41
  %i.bgc = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.546, ptr noundef nonnull align 4 dereferenceable(8) %53)
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  br i1 %i.bgc, label %bb.sm, label %bb.sn

bb.sm:                                            ; preds = %bb.sl
  call void @_ZN5ImGui19SetColorEditOptionsEi(i32 noundef 84410368)
  br label %bb.sn

bb.sn:                                            ; preds = %bb.sm, %bb.sl
  %i.bgd = load atomic i8, ptr @_ZGVZL21ShowDemoWindowWidgetsvE9color_hsv acquire, align 8
  %i.bge = icmp eq i8 %i.bgd, 0
  br i1 %i.bge, label %bb.so, label %bb.sq, !prof !24

bb.so:                                            ; preds = %bb.sn
  %i.bgf = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL21ShowDemoWindowWidgetsvE9color_hsv) #27
  %.not375 = icmp eq i32 %i.bgf, 0
  br i1 %.not375, label %bb.sq, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  store <4 x float> <float 2.300000e-01, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr @_ZZL21ShowDemoWindowWidgetsvE9color_hsv, align 16, !tbaa !41
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL21ShowDemoWindowWidgetsvE9color_hsv) #27
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %bb.so, %bb.sn
  call void @_ZN5ImGui7SpacingEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.547)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.236)
  %i.bgg = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.bgg, label %bb.sr, label %_ZL10HelpMarkerPKc.exit451

bb.sr:                                            ; preds = %bb.sq
  call void @_ZN5ImGui12BeginTooltipEv()
  %i.bgh = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.bgi = fmul float %i.bgh, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bgi)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.548, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit451

_ZL10HelpMarkerPKc.exit451:                       ; preds = %bb.sq, %bb.sr
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.549)
  %i.bgj = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.550, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE9color_hsv, i32 noundef 286261248) ; 0 uses
  %i.bgk = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.551, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE9color_hsv, i32 noundef 287309824) ; 0 uses
  %i.bgl = call noundef zeroext i1 @_ZN5ImGui10DragFloat4EPKcPffffS1_i(ptr noundef nonnull @.str.552, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE9color_hsv, float noundef f0x3C23D70A, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.277, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.ss

bb.ss:                                            ; preds = %_ZL10HelpMarkerPKc.exit451, %bb.qt
  %i.bgm = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.553)
  br i1 %i.bgm, label %bb.st, label %bb.sy

bb.st:                                            ; preds = %bb.ss
  %i.bgn = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.554, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE5flags_1, i32 noundef 16) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.236)
  %i.bgo = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.bgo, label %bb.su, label %_ZL10HelpMarkerPKc.exit452

bb.su:                                            ; preds = %bb.st
  call void @_ZN5ImGui12BeginTooltipEv()
  %i.bgp = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.bgq = fmul float %i.bgp, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bgq)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.555, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit452

_ZL10HelpMarkerPKc.exit452:                       ; preds = %bb.st, %bb.su
  %i.bgr = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.556, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE5flags_1, i32 noundef 32) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.236)
  %i.bgs = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.bgs, label %bb.sv, label %_ZL10HelpMarkerPKc.exit453

bb.sv:                                            ; preds = %_ZL10HelpMarkerPKc.exit452
  call void @_ZN5ImGui12BeginTooltipEv()
  %i.bgt = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.bgu = fmul float %i.bgt, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bgu)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.557, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit453

_ZL10HelpMarkerPKc.exit453:                       ; preds = %_ZL10HelpMarkerPKc.exit452, %bb.sv
  %i.bgv = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.558, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE5flags_1, i32 noundef 64) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.236)
  %i.bgw = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.bgw, label %bb.sw, label %_ZL10HelpMarkerPKc.exit454

bb.sw:                                            ; preds = %_ZL10HelpMarkerPKc.exit453
  call void @_ZN5ImGui12BeginTooltipEv()
  %i.bgx = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.bgy = fmul float %i.bgx, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bgy)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.559, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit454

_ZL10HelpMarkerPKc.exit454:                       ; preds = %_ZL10HelpMarkerPKc.exit453, %bb.sw
  %i.bgz = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.560, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE5flags_1, i32 noundef 128) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.236)
  %i.bha = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.bha, label %bb.sx, label %_ZL10HelpMarkerPKc.exit455

bb.sx:                                            ; preds = %_ZL10HelpMarkerPKc.exit454
  call void @_ZN5ImGui12BeginTooltipEv()
  %i.bhb = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.bhc = fmul float %i.bhb, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bhc)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.561, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit455

_ZL10HelpMarkerPKc.exit455:                       ; preds = %_ZL10HelpMarkerPKc.exit454, %bb.sx
  %i.bhd = load float, ptr @_ZZL21ShowDemoWindowWidgetsvE6drag_f, align 4, !tbaa !41
  %i.bhe = fpext float %i.bhd to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.562, double noundef %i.bhe)
  %i.bhf = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE5flags_1, align 4, !tbaa !42
  %i.bhg = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.563, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE6drag_f, float noundef 5.000000e-03, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.277, i32 noundef %i.bhf) ; 0 uses
  %i.bhh = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE5flags_1, align 4, !tbaa !42
  %i.bhi = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.564, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE6drag_f, float noundef 5.000000e-03, float noundef 0.000000e+00, float noundef f0x7F7FFFFF, ptr noundef nonnull @.str.277, i32 noundef %i.bhh) ; 0 uses
  %i.bhj = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE5flags_1, align 4, !tbaa !42
  %i.bhk = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.565, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE6drag_f, float noundef 5.000000e-03, float noundef f0xFF7FFFFF, float noundef 1.000000e+00, ptr noundef nonnull @.str.277, i32 noundef %i.bhj) ; 0 uses
  %i.bhl = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE5flags_1, align 4, !tbaa !42
  %i.bhm = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.566, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE6drag_f, float noundef 5.000000e-03, float noundef f0xFF7FFFFF, float noundef f0x7F7FFFFF, ptr noundef nonnull @.str.277, i32 noundef %i.bhl) ; 0 uses
  %i.bhn = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE5flags_1, align 4, !tbaa !42
  %i.bho = call noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef nonnull @.str.567, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE6drag_i, float noundef 5.000000e-01, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.249, i32 noundef %i.bhn) ; 0 uses
  %i.bhp = load float, ptr @_ZZL21ShowDemoWindowWidgetsvE8slider_f, align 4, !tbaa !41
  %i.bhq = fpext float %i.bhp to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.562, double noundef %i.bhq)
  %i.bhr = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE5flags_1, align 4, !tbaa !42
  %i.bhs = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.568, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE8slider_f, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.277, i32 noundef %i.bhr) ; 0 uses
  %i.bht = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE5flags_1, align 4, !tbaa !42
  %i.bhu = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.569, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE8slider_i, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.249, i32 noundef %i.bht) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.sy

bb.sy:                                            ; preds = %_ZL10HelpMarkerPKc.exit455, %bb.ss
  %i.bhv = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.570)
  br i1 %i.bhv, label %bb.sz, label %bb.ta

bb.sz:                                            ; preds = %bb.sy
  %i.bhw = call noundef zeroext i1 @_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_i(ptr noundef nonnull @.str.571, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE5begin, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE3end, float noundef 2.500000e-01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.572, ptr noundef nonnull @.str.573, i32 noundef 16) ; 0 uses
  %i.bhx = call noundef zeroext i1 @_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_i(ptr noundef nonnull @.str.574, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE7begin_i, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE5end_i, float noundef 5.000000e+00, i32 noundef 0, i32 noundef 1000, ptr noundef nonnull @.str.575, ptr noundef nonnull @.str.576, i32 noundef 0) ; 0 uses
  %i.bhy = call noundef zeroext i1 @_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_i(ptr noundef nonnull @.str.577, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE7begin_i, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE5end_i, float noundef 5.000000e+00, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.575, ptr noundef nonnull @.str.576, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.ta

bb.ta:                                            ; preds = %bb.sz, %bb.sy
  %i.bhz = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.578)
  br i1 %i.bhz, label %bb.tb, label %bb.td

bb.tb:                                            ; preds = %bb.ta
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #27
  store i8 0, ptr %i.ai, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #27
  store i8 1, ptr %i.aj, align 1, !tbaa !54
end_hunk_0
