Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZL16DemoWindowTablesv:bb.a
  br i1 %i.bap, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %_ZL10HelpMarkerPKc.exit588
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1614, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1615, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1616, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui15TableHeadersRowEv()
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.baq = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 0, i32 noundef 0)
  %i.bar = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 1, i32 noundef 0)
  %i.bas = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 2, i32 noundef 0)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.bat = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 0, i32 noundef 1)
  %i.bau = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 1, i32 noundef 1)
  %i.bav = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 2, i32 noundef 1)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.baw = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 0, i32 noundef 2)
  %i.bax = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 1, i32 noundef 2)
  %i.bay = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 2, i32 noundef 2)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.baz = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 0, i32 noundef 3)
  %i.bba = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 1, i32 noundef 3)
  %i.bbb = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 2, i32 noundef 3)
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %_ZL10HelpMarkerPKc.exit588
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.bbc = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.bbc, label %bb.lh, label %_ZL10HelpMarkerPKc.exit589

bb.lh:                                            ; preds = %bb.lg
  %i.bbd = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.bbe = fmul float %i.bbd, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bbe)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1840, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit589

_ZL10HelpMarkerPKc.exit589:                       ; preds = %bb.lg, %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  store <2 x float> zeroinitializer, ptr %59, align 8, !tbaa !46
  %i.bbf = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1841, i32 noundef 3, i32 noundef 10119, ptr noundef nonnull align 4 dereferenceable(8) %59, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  br i1 %i.bbf, label %bb.li, label %bb.nc

bb.li:                                            ; preds = %_ZL10HelpMarkerPKc.exit589
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1614, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1615, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1616, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui15TableHeadersRowEv()
  br label %bb.lj

.preheader676:                                    ; preds = %bb.lv
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0)
  %i.bbg = call noundef i32 @_ZN5ImGui19TableGetColumnFlagsEi(i32 noundef 0)
  %i.bbh = lshr i32 %i.bbg, 27
  %i.bbi = and i32 %i.bbh, 1
  %sext = add nsw i32 %i.bbi, -1                  ; 2 uses
  %i.bbj = icmp eq i32 %sext, 0
  br i1 %i.bbj, label %bb.lw, label %bb.lz

bb.lj:                                            ; preds = %bb.li, %bb.lv
  %.0444775 = phi i32 [ 0, %bb.li ], [ %i.bbz, %bb.lv ] ; 8 uses
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.bbk = mul nuw nsw i32 %.0444775, 3           ; 3 uses
  %i.bbl = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 0, i32 noundef %.0444775)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.bbk)
  %i.bbm = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1203) ; 0 uses
  %i.bbn = call noundef zeroext i1 @_ZN5ImGui21BeginPopupContextItemEPKci(ptr noundef null, i32 noundef 0)
  br i1 %i.bbn, label %bb.lk, label %bb.ln

bb.lk:                                            ; preds = %bb.lj
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1842, i32 noundef 0, i32 noundef %.0444775)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  store <2 x float> zeroinitializer, ptr %60, align 8, !tbaa !46
  %i.bbo = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.907, ptr noundef nonnull align 4 dereferenceable(8) %60)
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  br i1 %i.bbo, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.lk
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.lj
  call void @_ZN5ImGui5PopIDEv()
  %i.bbp = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 1, i32 noundef %.0444775)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.bbq = add nuw nsw i32 %i.bbk, 1
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.bbq)
  %i.bbr = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1203) ; 0 uses
  %i.bbs = call noundef zeroext i1 @_ZN5ImGui21BeginPopupContextItemEPKci(ptr noundef null, i32 noundef 0)
  br i1 %i.bbs, label %bb.lo, label %bb.lr

bb.lo:                                            ; preds = %bb.ln
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1842, i32 noundef 1, i32 noundef %.0444775)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  store <2 x float> zeroinitializer, ptr %60, align 8, !tbaa !46
  %i.bbt = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.907, ptr noundef nonnull align 4 dereferenceable(8) %60)
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  br i1 %i.bbt, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.ln
  call void @_ZN5ImGui5PopIDEv()
  %i.bbu = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1754, i32 noundef 2, i32 noundef %.0444775)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.bbv = add nuw nsw i32 %i.bbk, 2
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.bbv)
  %i.bbw = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1203) ; 0 uses
  %i.bbx = call noundef zeroext i1 @_ZN5ImGui21BeginPopupContextItemEPKci(ptr noundef null, i32 noundef 0)
  br i1 %i.bbx, label %bb.ls, label %bb.lv

bb.ls:                                            ; preds = %bb.lr
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1842, i32 noundef 2, i32 noundef %.0444775)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  store <2 x float> zeroinitializer, ptr %60, align 8, !tbaa !46
  %i.bby = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.907, ptr noundef nonnull align 4 dereferenceable(8) %60)
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  br i1 %i.bby, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lr
  call void @_ZN5ImGui5PopIDEv()
  %i.bbz = add nuw nsw i32 %.0444775, 1           ; 2 uses
  %exitcond868.not = icmp eq i32 %i.bbz, 4
  br i1 %exitcond868.not, label %.preheader676, label %bb.lj, !llvm.loop !409

bb.lw:                                            ; preds = %.preheader676
  %i.bca = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.bca, label %bb.lz, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.bcb = call noundef zeroext i1 @_ZN5ImGui15IsMouseReleasedEi(i32 noundef 1)
  br i1 %i.bcb, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  %i.bcc = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.1843, i32 noundef 0) ; 0 uses
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lx, %bb.lw, %.preheader676
  %i.bcd = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.1843, i32 noundef 0)
  br i1 %i.bcd, label %bb.ma, label %bb.md

bb.ma:                                            ; preds = %bb.lz
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1845, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> zeroinitializer, ptr %61, align 8, !tbaa !46
  %i.bce = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.907, ptr noundef nonnull align 4 dereferenceable(8) %61)
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  br i1 %i.bce, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.ma
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.lz
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 1)
  %i.bcf = call noundef i32 @_ZN5ImGui19TableGetColumnFlagsEi(i32 noundef 1)
  %i.bcg = and i32 %i.bcf, 134217728
  %.not540.1 = icmp eq i32 %i.bcg, 0              ; 2 uses
  %spec.select549.1 = select i1 %.not540.1, i32 %sext, i32 1
  br i1 %.not540.1, label %bb.mh, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.bch = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.bch, label %bb.mh, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bci = call noundef zeroext i1 @_ZN5ImGui15IsMouseReleasedEi(i32 noundef 1)
  br i1 %i.bci, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  %i.bcj = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.1843, i32 noundef 0) ; 0 uses
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf, %bb.me, %bb.md
  %i.bck = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.1843, i32 noundef 0)
  br i1 %i.bck, label %bb.mi, label %bb.ml

bb.mi:                                            ; preds = %bb.mh
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1845, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> zeroinitializer, ptr %61, align 8, !tbaa !46
  %i.bcl = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.907, ptr noundef nonnull align 4 dereferenceable(8) %61)
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  br i1 %i.bcl, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mk, %bb.mh
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 2)
  %i.bcm = call noundef i32 @_ZN5ImGui19TableGetColumnFlagsEi(i32 noundef 2)
  %i.bcn = and i32 %i.bcm, 134217728
  %.not540.2 = icmp eq i32 %i.bcn, 0              ; 2 uses
  %spec.select549.2 = select i1 %.not540.2, i32 %spec.select549.1, i32 2
  br i1 %.not540.2, label %bb.mp, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.bco = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.bco, label %bb.mp, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.bcp = call noundef zeroext i1 @_ZN5ImGui15IsMouseReleasedEi(i32 noundef 1)
  br i1 %i.bcp, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  %i.bcq = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.1843, i32 noundef 0) ; 0 uses
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %bb.mn, %bb.mm, %bb.ml
  %i.bcr = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.1843, i32 noundef 0)
  br i1 %i.bcr, label %bb.mq, label %bb.mt

bb.mq:                                            ; preds = %bb.mp
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1845, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> zeroinitializer, ptr %61, align 8, !tbaa !46
  %i.bcs = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.907, ptr noundef nonnull align 4 dereferenceable(8) %61)
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  br i1 %i.bcs, label %bb.mr, label %bb.ms

bb.mr:                                            ; preds = %bb.mq
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %bb.mq
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mp
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 3)
  %i.bct = call noundef i32 @_ZN5ImGui19TableGetColumnFlagsEi(i32 noundef 3)
  %i.bcu = and i32 %i.bct, 134217728
  %.not540.3 = icmp eq i32 %i.bcu, 0              ; 2 uses
  %spec.select549.3 = select i1 %.not540.3, i32 %spec.select549.2, i32 3
  br i1 %.not540.3, label %bb.mx, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.bcv = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.bcv, label %bb.mx, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.bcw = call noundef zeroext i1 @_ZN5ImGui15IsMouseReleasedEi(i32 noundef 1)
  br i1 %i.bcw, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.bcx = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.1843, i32 noundef 0) ; 0 uses
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mv, %bb.mu, %bb.mt
  %i.bcy = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.1843, i32 noundef 0)
  br i1 %i.bcy, label %bb.my, label %bb.nb

bb.my:                                            ; preds = %bb.mx
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1844)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> zeroinitializer, ptr %61, align 8, !tbaa !46
  %i.bcz = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.907, ptr noundef nonnull align 4 dereferenceable(8) %61)
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  br i1 %i.bcz, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.na

bb.na:                                            ; preds = %bb.mz, %bb.my
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mx
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8EndTableEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1846, i32 noundef %spec.select549.3)
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %_ZL10HelpMarkerPKc.exit589
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.lc
  br i1 %.not521.demorgan, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %not.660 = xor i1 %i.o, true
  call void @_ZN5ImGui15SetNextItemOpenEbi(i1 noundef zeroext %not.660, i32 noundef 0)
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %i.bda = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1847)
  br i1 %i.bda, label %bb.ng, label %bb.nr

bb.ng:                                            ; preds = %bb.nf
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 7341, ptr noundef nonnull @.str.1848)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.bdb = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.bdb, label %bb.nh, label %_ZL10HelpMarkerPKc.exit590

bb.nh:                                            ; preds = %bb.ng
  %i.bdc = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.bdd = fmul float %i.bdc, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bdd)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1849, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit590

_ZL10HelpMarkerPKc.exit590:                       ; preds = %bb.ng, %bb.nh
  %i.bde = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1620, ptr noundef nonnull @_ZZL16DemoWindowTablesvE5flags_9, i32 noundef 1) ; 0 uses
  %i.bdf = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1671, ptr noundef nonnull @_ZZL16DemoWindowTablesvE5flags_9, i32 noundef 33554432) ; 0 uses
  %i.bdg = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1850, ptr noundef nonnull @_ZZL16DemoWindowTablesvE5flags_9, i32 noundef 8192) ; 0 uses
  %i.bdh = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1640, ptr noundef nonnull @_ZZL16DemoWindowTablesvE5flags_9, i32 noundef 268435456) ; 0 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %62, i64 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.bdj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.1851, i32 noundef 0) #30 ; 0 uses
  %i.bdk = call noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKci(ptr noundef nonnull %i.h, i32 noundef 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #30
  br i1 %i.bdk, label %bb.ni, label %.critedge

bb.ni:                                            ; preds = %_ZL10HelpMarkerPKc.exit590
  %i.bdl = load i32, ptr @_ZZL16DemoWindowTablesvE5flags_9, align 4, !tbaa !51
  %i.bdm = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.bdn = fmul float %i.bdm, 5.000000e+00
  store float 0.000000e+00, ptr %62, align 4, !tbaa !44
  store float %i.bdn, ptr %i.bdi, align 4, !tbaa !45
  %i.bdo = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1852, i32 noundef 3, i32 noundef %i.bdl, ptr noundef nonnull align 4 dereferenceable(8) %62, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  br i1 %i.bdo, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1614, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1615, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1616, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui15TableHeadersRowEv()
  %i.bdp = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 0)
  %i.bdq = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 1)
  %i.bdr = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 2)
  %i.bds = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 3)
  %i.bdt = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 4)
  %i.bdu = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 5)
  %i.bdv = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 6)
  %i.bdw = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 7)
  %i.bdx = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 8)
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.nk

.critedge:                                        ; preds = %_ZL10HelpMarkerPKc.exit590
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  br label %bb.nk

bb.nk:                                            ; preds = %.critedge, %bb.nj, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.bdy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.1851, i32 noundef 1) #30 ; 0 uses
  %i.bdz = call noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKci(ptr noundef nonnull %i.h, i32 noundef 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #30
  br i1 %i.bdz, label %bb.nl, label %.critedge.1

.critedge.1:                                      ; preds = %bb.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  br label %bb.nn

bb.nl:                                            ; preds = %bb.nk
  %i.bea = load i32, ptr @_ZZL16DemoWindowTablesvE5flags_9, align 4, !tbaa !51
  %i.beb = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.bec = fmul float %i.beb, 5.000000e+00
  store float 0.000000e+00, ptr %62, align 4, !tbaa !44
  store float %i.bec, ptr %i.bdi, align 4, !tbaa !45
  %i.bed = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1852, i32 noundef 3, i32 noundef %i.bea, ptr noundef nonnull align 4 dereferenceable(8) %62, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  br i1 %i.bed, label %bb.nm, label %bb.nn

bb.nm:                                            ; preds = %bb.nl
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1614, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1615, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1616, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui15TableHeadersRowEv()
  %i.bee = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 0)
  %i.bef = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 1)
  %i.beg = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 2)
  %i.beh = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 3)
  %i.bei = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 4)
  %i.bej = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 5)
  %i.bek = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 6)
  %i.bel = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 7)
  %i.bem = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 8)
  %i.ben = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 9)
  %i.beo = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 10)
  %i.bep = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 11)
  %i.beq = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 12)
  %i.ber = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 13)
  %i.bes = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 14)
  %i.bet = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 15)
  %i.beu = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 16)
  %i.bev = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 17)
  %i.bew = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 18)
  %i.bex = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 19)
  %i.bey = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 20)
  %i.bez = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 21)
  %i.bfa = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 22)
  %i.bfb = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 23)
  %i.bfc = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1853, i32 noundef 24)
  %i.bfd = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
end_hunk_0
