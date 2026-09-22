Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  br i1 %i.zo, label %bb.it, label %bb.js

bb.it:                                            ; preds = %bb.is
  %i.age = load ptr, ptr %i.yl, align 8, !tbaa !378 ; 6 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 4 ; 2 uses
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !394
  %i.agh = getelementptr inbounds nuw i8, ptr %i.age, i64 8 ; 2 uses
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !395
  %.not1641 = icmp eq i32 %i.agg, %i.agi
  br i1 %.not1641, label %bb.iu, label %.thread1779

.thread1779:                                      ; preds = %bb.it
  %i.agj = getelementptr inbounds nuw i8, ptr %.012601537, i64 112
  store i8 1, ptr %i.agj, align 8, !tbaa !419
  br label %bb.iv

bb.iu:                                            ; preds = %bb.it
  store i32 0, ptr %i.agf, align 4, !tbaa !394
  %i.agk = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !377 ; 3 uses
  store i32 %i.agl, ptr %i.agh, align 4, !tbaa !395
  store i32 %i.agl, ptr %i.age, align 4, !tbaa !388
  %i.agm = getelementptr inbounds nuw i8, ptr %i.age, i64 22
  store i8 0, ptr %i.agm, align 2, !tbaa !396
  %i.agn = icmp eq i32 %i.agl, 0
  %i.ago = getelementptr inbounds nuw i8, ptr %.012601537, i64 112
  store i8 1, ptr %i.ago, align 8, !tbaa !419
  br i1 %i.agn, label %bb.js, label %bb.iv

bb.iv:                                            ; preds = %.thread1779, %bb.iu
  call fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr noundef nonnull %.012601537, ptr noundef nonnull %i.age)
  %i.agp = getelementptr inbounds nuw i8, ptr %i.age, i64 22
  store i8 0, ptr %i.agp, align 2, !tbaa !396
  br label %bb.js

bb.iw:                                            ; preds = %bb.im
  br i1 %i.aab, label %bb.ix, label %bb.js

bb.ix:                                            ; preds = %bb.iw
  %i.agq = call noundef ptr @_ZN5ImGui16GetClipboardTextEv() ; 5 uses
  %.not1311 = icmp eq ptr %i.agq, null
  br i1 %.not1311, label %bb.js, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.agr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.agq) #40 ; 2 uses
  %i.ags = trunc i64 %i.agr to i32
  %sext1312 = shl i64 %i.agr, 32
  %i.agt = ashr exact i64 %sext1312, 32
  %i.agu = getelementptr inbounds i8, ptr %i.agq, i64 %i.agt
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.agv = add nsw i32 %i.ags, 1
  invoke void @_ZN8ImVectorIcE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.agv)
          to label %.preheader unwind label %bb.iz

.preheader:                                       ; preds = %bb.iy
  %i.agw = load i8, ptr %i.agq, align 1, !tbaa !351
  %.not13131658 = icmp eq i8 %i.agw, 0
  br i1 %.not13131658, label %._crit_edge, label %.lr.ph1660

.lr.ph1660:                                       ; preds = %.preheader
  %i.agx = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.ja

._crit_edge:                                      ; preds = %bb.jh, %.preheader
  %i.agy = load i32, ptr %15, align 8, !tbaa !384
  %i.agz = icmp sgt i32 %i.agy, 0
  br i1 %i.agz, label %bb.jm, label %bb.jq

bb.iz:                                            ; preds = %bb.jn, %bb.iy
  %i.aha = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

bb.ja:                                            ; preds = %.lr.ph1660, %bb.jh
  %.012221659 = phi ptr [ %i.agq, %.lr.ph1660 ], [ %i.ahd, %bb.jh ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.ahb = invoke noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.d, ptr noundef nonnull %.012221659, ptr noundef nonnull %i.agu)
          to label %bb.jb unwind label %bb.jd

bb.jb:                                            ; preds = %bb.ja
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds i8, ptr %.012221659, i64 %i.ahc ; 2 uses
  %i.ahe = invoke fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextP19ImGuiInputTextStatePjPFiP26ImGuiInputTextCallbackDataEPvb(ptr noundef %i.i, ptr noundef %.012601537, ptr noundef %i.d, ptr noundef %6, ptr noundef %7, i1 noundef zeroext true)
          to label %bb.jc unwind label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  br i1 %i.ahe, label %bb.je, label %bb.jh, !llvm.loop !684

bb.jd:                                            ; preds = %bb.jb, %bb.ja
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.je:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.ahg = load i32, ptr %i.d, align 4, !tbaa !208
  %i.ahh = invoke noundef i32 @_Z16ImTextCharToUtf8Pcj(ptr noundef nonnull %i.e, i32 noundef %i.ahg)
          to label %bb.jf unwind label %bb.ji     ; 0 uses

bb.jf:                                            ; preds = %bb.je
  %i.ahi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #40 ; 2 uses
  %i.ahj = trunc i64 %i.ahi to i32
  %i.ahk = load i32, ptr %15, align 8, !tbaa !384
  %i.ahl = add nsw i32 %i.ahk, %i.ahj
  invoke void @_ZN8ImVectorIcE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.ahl)
          to label %bb.jg unwind label %bb.jj

bb.jg:                                            ; preds = %bb.jf
  %i.ahm = load ptr, ptr %i.agx, align 8, !tbaa !383
  %i.ahn = load i32, ptr %15, align 8, !tbaa !384
  %i.aho = sext i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds i8, ptr %i.ahm, i64 %i.aho
  %sext1317 = shl i64 %i.ahi, 32
  %i.ahq = ashr exact i64 %sext1317, 32           ; 2 uses
  %i.ahr = sub nsw i64 0, %i.ahq
  %i.ahs = getelementptr inbounds i8, ptr %i.ahp, i64 %i.ahr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ahs, ptr nonnull align 1 %i.e, i64 %i.ahq, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jc, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  %i.aht = load i8, ptr %i.ahd, align 1, !tbaa !351
  %.not1313 = icmp eq i8 %i.aht, 0
  br i1 %.not1313, label %._crit_edge, label %bb.ja

bb.ji:                                            ; preds = %bb.je
  %i.ahu = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jj:                                            ; preds = %bb.jf
  %i.ahv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.pn = phi { ptr, i32 } [ %i.ahv, %bb.jj ], [ %i.ahu, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jd
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.jk ], [ %i.ahf, %bb.jd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %bb.jr

bb.jm:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  store i8 0, ptr %i.f, align 1, !tbaa !351
  invoke void @_ZN8ImVectorIcE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %bb.jn unwind label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  %i.ahw = load ptr, ptr %i.yl, align 8, !tbaa !378
  %i.ahx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !383
  %i.ahz = load i32, ptr %15, align 8, !tbaa !384
  %i.aia = add nsw i32 %i.ahz, -1
  invoke fastcc void @_ZN5ImStbL18stb_textedit_pasteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr noundef nonnull %.012601537, ptr noundef %i.ahw, ptr noundef %i.ahy, i32 noundef %i.aia)
          to label %bb.jo unwind label %bb.iz

bb.jo:                                            ; preds = %bb.jn
  %i.aib = getelementptr inbounds nuw i8, ptr %.012601537, i64 112
  store i8 1, ptr %i.aib, align 8, !tbaa !419
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jm
  %i.aic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jo, %._crit_edge
  call void @_ZN8ImVectorIcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.js

bb.jr:                                            ; preds = %bb.jp, %bb.jl, %bb.iz
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.jl ], [ %i.aha, %bb.iz ], [ %i.aic, %bb.jp ]
  call void @_ZN8ImVectorIcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  resume { ptr, i32 } %.pn.pn.pn

bb.js:                                            ; preds = %bb.gr, %bb.gx, %bb.gw, %bb.hd, %bb.hh, %bb.hn, %bb.ie, %bb.ij, %bb.is, %bb.iw, %bb.il, %bb.hv, %bb.hj, %bb.hf, %bb.ha, %bb.hb, %bb.gt, %bb.ih, %bb.ig, %bb.jq, %bb.ix, %bb.iu, %bb.iv
  %.21257 = phi i8 [ %.01255, %bb.gr ], [ %.01255, %bb.gt ], [ %.01255, %bb.gw ], [ %.01255, %bb.gx ], [ %.01255, %bb.ha ], [ %.01255, %bb.hb ], [ %.01255, %bb.hd ], [ %.01255, %bb.hf ], [ %.01255, %bb.hh ], [ %.01255, %bb.hj ], [ %.11256, %bb.ie ], [ %..01255, %bb.ih ], [ %.01255, %bb.hn ], [ %.01255, %bb.hv ], [ %.01255, %bb.ij ], [ %.01255, %bb.il ], [ %.01255, %bb.ix ], [ %.01255, %bb.is ], [ 1, %bb.ig ], [ %.01255, %bb.iw ], [ %.01255, %bb.jq ], [ %.01255, %bb.iu ], [ %.01255, %bb.iv ] ; 5 uses
  %.01249 = phi float [ %i.fn, %bb.gr ], [ %i.fn, %bb.gt ], [ %i.fn, %bb.gw ], [ %i.fn, %bb.gx ], [ %i.fn, %bb.ha ], [ %i.fn, %bb.hb ], [ %i.acs, %bb.hd ], [ %i.acx, %bb.hf ], [ %i.fn, %bb.hh ], [ %i.fn, %bb.hj ], [ %i.fn, %bb.ie ], [ %i.fn, %bb.ih ], [ %i.fn, %bb.hn ], [ %i.fn, %bb.hv ], [ %i.fn, %bb.ij ], [ %i.fn, %bb.il ], [ %i.fn, %bb.ix ], [ %i.fn, %bb.is ], [ %i.fn, %bb.ig ], [ %i.fn, %bb.iw ], [ %i.fn, %bb.jq ], [ %i.fn, %bb.iu ], [ %i.fn, %bb.iv ] ; 5 uses
  %.11243 = phi i8 [ %.01242, %bb.gr ], [ %.01242, %bb.gt ], [ %.01242, %bb.gw ], [ %.01242, %bb.gx ], [ %.01242, %bb.ha ], [ %.01242, %bb.hb ], [ %.01242, %bb.hd ], [ %.01242, %bb.hf ], [ %.01242, %bb.hh ], [ %.01242, %bb.hj ], [ %.01242, %bb.ie ], [ %..01242, %bb.ih ], [ %.01242, %bb.hn ], [ %.01242, %bb.hv ], [ %.01242, %bb.ij ], [ %.01242, %bb.il ], [ %.01242, %bb.ix ], [ %.01242, %bb.is ], [ 0, %bb.ig ], [ %.01242, %bb.iw ], [ %.01242, %bb.jq ], [ %.01242, %bb.iu ], [ %.01242, %bb.iv ] ; 6 uses
  %.01240 = phi i8 [ %i.qa, %bb.gr ], [ %i.qa, %bb.gt ], [ %i.qa, %bb.gw ], [ %i.qa, %bb.gx ], [ %i.qa, %bb.ha ], [ %i.qa, %bb.hb ], [ %i.qa, %bb.hd ], [ %i.qa, %bb.hf ], [ %i.qa, %bb.hh ], [ %i.qa, %bb.hj ], [ %i.qa, %bb.ie ], [ %., %bb.ih ], [ %i.qa, %bb.hn ], [ %i.qa, %bb.hv ], [ %i.qa, %bb.ij ], [ %i.qa, %bb.il ], [ %i.qa, %bb.ix ], [ %i.qa, %bb.is ], [ 0, %bb.ig ], [ %i.qa, %bb.iw ], [ %i.qa, %bb.jq ], [ %i.qa, %bb.iu ], [ %i.qa, %bb.iv ]
  %.11234 = phi i1 [ false, %bb.gr ], [ false, %bb.gt ], [ false, %bb.gw ], [ false, %bb.gx ], [ false, %bb.ha ], [ false, %bb.hb ], [ false, %bb.hd ], [ false, %bb.hf ], [ false, %bb.hh ], [ false, %bb.hj ], [ %.01233, %bb.ie ], [ false, %bb.ih ], [ false, %bb.hn ], [ false, %bb.hv ], [ false, %bb.ij ], [ false, %bb.il ], [ false, %bb.ix ], [ false, %bb.is ], [ false, %bb.ig ], [ false, %bb.iw ], [ false, %bb.jq ], [ false, %bb.iu ], [ false, %bb.iv ] ; 5 uses
  %.01229 = phi i1 [ false, %bb.gr ], [ false, %bb.gt ], [ false, %bb.gw ], [ false, %bb.gx ], [ false, %bb.ha ], [ false, %bb.hb ], [ false, %bb.hd ], [ false, %bb.hf ], [ false, %bb.hh ], [ false, %bb.hj ], [ false, %bb.ie ], [ %.not1320, %bb.ih ], [ false, %bb.hn ], [ false, %bb.hv ], [ false, %bb.ij ], [ false, %bb.il ], [ false, %bb.ix ], [ false, %bb.is ], [ true, %bb.ig ], [ false, %bb.iw ], [ false, %bb.jq ], [ false, %bb.iu ], [ false, %bb.iv ] ; 5 uses
  %i.aid = load ptr, ptr %i.yl, align 8, !tbaa !378 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 4
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !394
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !395
  %.not1644 = icmp eq i32 %i.aif, %i.aih
  %23 = select i1 %.not1644, i8 0, i8 %.11243
  %24 = or i8 %23, %.01240                        ; 5 uses
  %.pre1693 = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.aii = icmp eq i32 %.pre1693, %i.s
  br i1 %i.aii, label %bb.jt, label %.thread1572

bb.jt:                                            ; preds = %bb.js
  %.not139 = xor i1 %.01229, true
  %or.cond142 = or i1 %i.dl, %.not139
  br i1 %or.cond142, label %.thread1808, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.aij = and i32 %5, 128
  %.not1322 = icmp eq i32 %i.aij, 0
  br i1 %.not1322, label %bb.jy, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.aik = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !378 ; 4 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.012601537, i64 24 ; 4 uses
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !377 ; 4 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ail, i64 32
  %i.aip = call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.aio, i32 noundef 0, i32 noundef %i.ain, i32 noundef range(i32 -2147483648, 2147483647) 0) ; 6 uses
  %.not.i.i1420 = icmp ne ptr %i.aip, null
  %i.aiq = icmp sgt i32 %i.ain, 0
  %or.cond.i.i = and i1 %i.aiq, %.not.i.i1420
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit

.lr.ph.i.i:                                       ; preds = %bb.jv
  %i.air = getelementptr i8, ptr %.012601537, i64 32 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ain to i64 ; 2 uses
  %xtraiter1885 = and i64 %wide.trip.count.i.i, 3 ; 3 uses
  %i.ais = icmp ult i32 %i.ain, 4
  br i1 %i.ais, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jw, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.jw ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.jw ]
  %.val.i.i = load ptr, ptr %i.air, align 8, !tbaa !400
  %i.ait = getelementptr i8, ptr %.val.i.i, i64 %indvars.iv.i.i
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !351
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aip, i64 %indvars.iv.i.i
  store i8 %i.aiu, ptr %i.aiv, align 1, !tbaa !351
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i.1 = load ptr, ptr %i.air, align 8, !tbaa !400
  %i.aiw = getelementptr i8, ptr %.val.i.i.1, i64 %indvars.iv.next.i.i
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !351
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aip, i64 %indvars.iv.next.i.i
  store i8 %i.aix, ptr %i.aiy, align 1, !tbaa !351
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %.val.i.i.2 = load ptr, ptr %i.air, align 8, !tbaa !400
  %i.aiz = getelementptr i8, ptr %.val.i.i.2, i64 %indvars.iv.next.i.i.1
  %i.aja = load i8, ptr %i.aiz, align 1, !tbaa !351
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aip, i64 %indvars.iv.next.i.i.1
  store i8 %i.aja, ptr %i.ajb, align 1, !tbaa !351
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %.val.i.i.3 = load ptr, ptr %i.air, align 8, !tbaa !400
  %i.ajc = getelementptr i8, ptr %.val.i.i.3, i64 %indvars.iv.next.i.i.2
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !351
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aip, i64 %indvars.iv.next.i.i.2
  store i8 %i.ajd, ptr %i.aje, align 1, !tbaa !351
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, label %bb.jw, !llvm.loop !9

_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa: ; preds = %bb.jw
  %lcmp.mod1886.not = icmp eq i64 %xtraiter1885, 0
  br i1 %lcmp.mod1886.not, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa ]
  %lcmp.mod1887 = icmp ne i64 %xtraiter1885, 0
  call void @llvm.assume(i1 %lcmp.mod1887)
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jx, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.jx ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.jx ]
  %.val.i.i.epil = load ptr, ptr %i.air, align 8, !tbaa !400
  %i.ajf = getelementptr i8, ptr %.val.i.i.epil, i64 %indvars.iv.i.i.epil
  %i.ajg = load i8, ptr %i.ajf, align 1, !tbaa !351
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aip, i64 %indvars.iv.i.i.epil
  store i8 %i.ajg, ptr %i.ajh, align 1, !tbaa !351
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1885
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, label %bb.jx, !llvm.loop !685

_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit: ; preds = %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, %bb.jx, %bb.jv
  %i.aji = load i32, ptr %i.aim, align 8, !tbaa !377 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !376 ; 2 uses
  %i.ajl = sext i32 %i.aji to i64
  %i.ajm = getelementptr inbounds i8, ptr %i.ajk, i64 %i.ajl
  %i.ajn = load i8, ptr %i.ajm, align 1
  store i8 %i.ajn, ptr %i.ajk, align 1
  %i.ajo = getelementptr inbounds nuw i8, ptr %.012601537, i64 116
  store i8 1, ptr %i.ajo, align 4, !tbaa !415
  %i.ajp = getelementptr inbounds nuw i8, ptr %.012601537, i64 115
  store i8 1, ptr %i.ajp, align 1, !tbaa !393
  %i.ajq = load i32, ptr %i.aim, align 8, !tbaa !377
  %i.ajr = sub nsw i32 %i.ajq, %i.aji
  store i32 %i.ajr, ptr %i.aim, align 8, !tbaa !377
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ail, i64 8
  store i32 0, ptr %i.ajs, align 4, !tbaa !395
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ail, i64 4
  store i32 0, ptr %i.ajt, align 4, !tbaa !394
  store i32 0, ptr %i.ail, align 4, !tbaa !388
  br label %.thread1808

bb.jy:                                            ; preds = %bb.ju
  %i.aju = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !376
  %i.ajw = getelementptr inbounds nuw i8, ptr %.012601537, i64 64
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !700 ; 3 uses
  %i.ajy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ajv, ptr noundef nonnull dereferenceable(1) %i.ajx) #40
  %.not1323 = icmp eq i32 %i.ajy, 0
  br i1 %.not1323, label %.thread1808, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.ajz = getelementptr inbounds nuw i8, ptr %.012601537, i64 56
  %i.aka = load i32, ptr %i.ajz, align 8, !tbaa !724
  %i.akb = add nsw i32 %i.aka, -1                 ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !378
  call fastcc void @_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr noundef nonnull %.012601537, ptr noundef %i.akd, ptr noundef nonnull %i.ajx, i32 noundef %i.akb)
  br label %.thread1808

.thread1808:                                      ; preds = %bb.fl, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, %bb.jz, %bb.jy, %bb.jt
  %.3125817891822 = phi i8 [ %.21257, %bb.jt ], [ %.21257, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.21257, %bb.jz ], [ %.21257, %bb.jy ], [ %.01255, %bb.fl ] ; 5 uses
  %.1125017911821 = phi float [ %.01249, %bb.jt ], [ %.01249, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.01249, %bb.jz ], [ %.01249, %bb.jy ], [ %i.fn, %bb.fl ] ; 5 uses
  %.2124417941820 = phi i8 [ %.11243, %bb.jt ], [ %.11243, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.11243, %bb.jz ], [ %.11243, %bb.jy ], [ %.01242, %bb.fl ] ; 5 uses
  %.1124117971819 = phi i8 [ %24, %bb.jt ], [ %24, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %24, %bb.jz ], [ %24, %bb.jy ], [ %i.qa, %bb.fl ] ; 5 uses
  %.2123517981818 = phi i1 [ %.11234, %bb.jt ], [ %.11234, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.11234, %bb.jz ], [ %.11234, %bb.jy ], [ false, %bb.fl ] ; 6 uses
  %.1123018001817 = phi i1 [ %.01229, %bb.jt ], [ %.01229, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.01229, %bb.jz ], [ %.01229, %bb.jy ], [ false, %bb.fl ]
  %.01236 = phi i1 [ false, %bb.jt ], [ true, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ true, %bb.jz ], [ false, %bb.jy ], [ false, %bb.fl ] ; 2 uses
  %.01218 = phi ptr [ null, %bb.jt ], [ @.str, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.ajx, %bb.jz ], [ null, %bb.jy ], [ null, %bb.fl ] ; 2 uses
  %.01213 = phi i32 [ 0, %bb.jt ], [ 0, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.akb, %bb.jz ], [ 0, %bb.jy ], [ 0, %bb.fl ] ; 2 uses
  %i.ake = and i32 %5, 10223616
  %.not1324 = icmp eq i32 %i.ake, 0
  br i1 %.not1324, label %bb.ku, label %bb.ka

bb.ka:                                            ; preds = %.thread1808
  %i.akf = and i32 %5, 262144
  %.not1325 = icmp eq i32 %i.akf, 0
  br i1 %.not1325, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.akg = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 512, i32 noundef 0, i32 noundef %i.s)
  br i1 %i.akg, label %.thread1563, label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.akh = and i32 %5, 524288
  %.not1326 = icmp eq i32 %i.akh, 0
  br i1 %.not1326, label %.critedge1386, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.aki = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 515, i1 noundef zeroext true)
  br i1 %i.aki, label %.thread1563, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.akj = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 516, i1 noundef zeroext true)
  br i1 %i.akj, label %.thread1563, label %.critedge1386

.critedge1386:                                    ; preds = %bb.kc, %bb.ke
  %i.akk = and i32 %5, 8388608
  %.not1327 = icmp eq i32 %i.akk, 0
  br i1 %.not1327, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %.critedge1386
  %i.akl = getelementptr inbounds nuw i8, ptr %.012601537, i64 116
  %i.akm = load i8, ptr %i.akl, align 4, !tbaa !415, !range !184, !noundef !185
  %i.akn = trunc nuw i8 %i.akm to i1
  br i1 %i.akn, label %.thread1563, label %bb.kg

bb.kg:                                            ; preds = %.critedge1386, %bb.kf
  %i.ako = and i32 %5, 1048576
  %.not1328 = icmp eq i32 %i.ako, 0
  br i1 %.not1328, label %bb.ku, label %.thread1563

.thread1563:                                      ; preds = %bb.kf, %bb.ke, %bb.kd, %bb.kb, %bb.kg
  %.012111568 = phi i32 [ 0, %bb.kg ], [ 0, %bb.kf ], [ 516, %bb.ke ], [ 515, %bb.kd ], [ 512, %bb.kb ]
  %.012121567 = phi i32 [ 1048576, %bb.kg ], [ 8388608, %bb.kf ], [ 524288, %bb.ke ], [ 524288, %bb.kd ], [ 262144, %bb.kb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  call void @_ZN26ImGuiInputTextCallbackDataC1Ev(ptr noundef nonnull align 8 dereferenceable(68) %16)
  store ptr %i.i, ptr %16, align 8, !tbaa !423
  %i.akp = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %i.s, ptr %i.akp, align 8, !tbaa !424
  %i.akq = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %spec.select1349, ptr %i.akq, align 4, !tbaa !425
  %i.akr = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.012121567, ptr %i.akr, align 8, !tbaa !426
  %i.aks = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.akt = getelementptr inbounds nuw i8, ptr %.012601537, i64 20
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !392
  %i.akv = icmp eq i32 %i.aks, %i.aku
  br i1 %i.akv, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %.thread1563
  %i.akw = getelementptr inbounds nuw i8, ptr %i.i, i64 5440
  %i.akx = load i8, ptr %i.akw, align 8, !tbaa !230, !range !184, !noundef !185
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %.thread1563
  %i.aky = phi i8 [ 0, %.thread1563 ], [ %i.akx, %bb.kh ]
  %i.akz = getelementptr inbounds nuw i8, ptr %16, i64 34
  store i8 %i.aky, ptr %i.akz, align 2, !tbaa !427
  %i.ala = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %7, ptr %i.ala, align 8, !tbaa !428
  br i1 %i.dl, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.alb = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !376
  br label %bb.kk

bb.kk:                                            ; preds = %bb.ki, %bb.kj
  %i.ald = phi ptr [ %i.alc, %bb.kj ], [ %2, %bb.ki ] ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.012601537, i64 72 ; 3 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.012601537, i64 24 ; 4 uses
  %i.alg = load i32, ptr %i.alf, align 8, !tbaa !377 ; 2 uses
  %i.alh = add nsw i32 %i.alg, 1                  ; 3 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.012601537, i64 76 ; 2 uses
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !382 ; 4 uses
  %.not1645 = icmp slt i32 %i.alg, %i.alj
  br i1 %.not1645, label %._ZN8ImVectorIcE6resizeEi.exit1424_crit_edge, label %bb.kl

._ZN8ImVectorIcE6resizeEi.exit1424_crit_edge:     ; preds = %bb.kk
  %.phi.trans.insert1694 = getelementptr inbounds nuw i8, ptr %.012601537, i64 80
  %.pre1695 = load ptr, ptr %.phi.trans.insert1694, align 8, !tbaa !725
  br label %_ZN8ImVectorIcE6resizeEi.exit1424

bb.kl:                                            ; preds = %bb.kk
  %.not.i.i1421 = icmp eq i32 %i.alj, 0
  br i1 %.not.i.i1421, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1422, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.alk = sdiv i32 %i.alj, 2
  %i.all = add nsw i32 %i.alk, %i.alj
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1422

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1422:    ; preds = %bb.km, %bb.kl
  %i.alm = phi i32 [ %i.all, %bb.km ], [ 8, %bb.kl ]
  %i.aln = call noundef i32 @llvm.smax.i32(i32 %i.alm, i32 %i.alh) ; 2 uses
  %i.alo = sext i32 %i.aln to i64
  %i.alp = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.alo) ; 3 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %.012601537, i64 80 ; 3 uses
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !383 ; 2 uses
  %.not6.i.i1423 = icmp eq ptr %i.alr, null
  br i1 %.not6.i.i1423, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1422
  %i.als = load i32, ptr %i.ale, align 8, !tbaa !384
  %i.alt = sext i32 %i.als to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alp, ptr nonnull align 1 %i.alr, i64 %i.alt, i1 false)
  %i.alu = load ptr, ptr %i.alq, align 8, !tbaa !383
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.alu)
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1422
  store ptr %i.alp, ptr %i.alq, align 8, !tbaa !383
  store i32 %i.aln, ptr %i.ali, align 4, !tbaa !382
  %.pre1696 = load i32, ptr %i.alf, align 8, !tbaa !377
  %.pre1706 = add nsw i32 %.pre1696, 1
  br label %_ZN8ImVectorIcE6resizeEi.exit1424

_ZN8ImVectorIcE6resizeEi.exit1424:                ; preds = %._ZN8ImVectorIcE6resizeEi.exit1424_crit_edge, %bb.ko
  %.pre-phi = phi i32 [ %i.alh, %._ZN8ImVectorIcE6resizeEi.exit1424_crit_edge ], [ %.pre1706, %bb.ko ]
  %i.alv = phi ptr [ %.pre1695, %._ZN8ImVectorIcE6resizeEi.exit1424_crit_edge ], [ %i.alp, %bb.ko ]
  store i32 %i.alh, ptr %i.ale, align 8, !tbaa !384
  %i.alw = getelementptr inbounds nuw i8, ptr %.012601537, i64 80
  %i.alx = sext i32 %.pre-phi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alv, ptr align 1 %i.ald, i64 %i.alx, i1 false)
  %i.aly = getelementptr inbounds nuw i8, ptr %16, i64 28
  store i32 %.012111568, ptr %i.aly, align 4, !tbaa !726
  %i.alz = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  store ptr %i.ald, ptr %i.alz, align 8, !tbaa !429
  %i.ama = load i32, ptr %i.alf, align 8, !tbaa !377
  %i.amb = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 3 uses
  store i32 %i.ama, ptr %i.amb, align 8, !tbaa !430
  %i.amc = getelementptr inbounds nuw i8, ptr %.012601537, i64 88
  %i.amd = load i32, ptr %i.amc, align 8, !tbaa !416
  %i.ame = getelementptr inbounds nuw i8, ptr %16, i64 52
  store i32 %i.amd, ptr %i.ame, align 4, !tbaa !431
  %i.amf = getelementptr inbounds nuw i8, ptr %16, i64 35 ; 2 uses
  store i8 0, ptr %i.amf, align 1, !tbaa !432
  %i.amg = getelementptr inbounds nuw i8, ptr %.012601537, i64 8 ; 2 uses
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !378 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %16, i64 60
  %i.amk = load <2 x i32>, ptr %i.amh, align 4, !tbaa !208
  store <2 x i32> %i.amk, ptr %i.ami, align 8, !tbaa !208
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  %i.amm = load i32, ptr %i.aml, align 4, !tbaa !395
  %i.amn = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i32 %i.amm, ptr %i.amn, align 8, !tbaa !433
  %i.amo = call noundef i32 %6(ptr noundef nonnull %16) ; 0 uses
  %i.amp = load i8, ptr %i.amf, align 1, !tbaa !432, !range !184, !noundef !185
  %i.amq = trunc nuw i8 %i.amp to i1              ; 2 uses
  %.pre1697.pre = load i32, ptr %i.ami, align 8, !tbaa !434 ; 3 uses
  %.pre1698.pre = load ptr, ptr %i.amg, align 8, !tbaa !378 ; 3 uses
  br i1 %i.amq, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %_ZN8ImVectorIcE6resizeEi.exit1424
  %i.amr = load i32, ptr %.pre1698.pre, align 4, !tbaa !388
  %.not1330 = icmp eq i32 %.pre1697.pre, %i.amr
  br i1 %.not1330, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %_ZN8ImVectorIcE6resizeEi.exit1424
  %i.ams = getelementptr inbounds nuw i8, ptr %.012601537, i64 112
  store i8 1, ptr %i.ams, align 8, !tbaa !419
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %i.amt = load i32, ptr %i.amb, align 8, !tbaa !430 ; 3 uses
  %i.amu = icmp slt i32 %.pre1697.pre, 0
  %i.amv = call i32 @llvm.smin.i32(i32 %.pre1697.pre, i32 %i.amt)
  %i.amw = select i1 %i.amu, i32 0, i32 %i.amv
  store i32 %i.amw, ptr %.pre1698.pre, align 4, !tbaa !388
  %i.amx = getelementptr inbounds nuw i8, ptr %.pre1698.pre, i64 4
  %i.amy = load <2 x i32>, ptr %i.amj, align 4, !tbaa !208 ; 2 uses
  %i.amz = icmp slt <2 x i32> %i.amy, zeroinitializer
  %i.ana = insertelement <2 x i32> poison, i32 %i.amt, i64 0
  %i.anb = shufflevector <2 x i32> %i.ana, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.anc = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.amy, <2 x i32> %i.anb)
  %i.and = select <2 x i1> %i.amz, <2 x i32> zeroinitializer, <2 x i32> %i.anc
  store <2 x i32> %i.and, ptr %i.amx, align 4, !tbaa !208
  br i1 %i.amq, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.ane = load ptr, ptr %i.alw, align 8, !tbaa !725
  %i.anf = load i32, ptr %i.ale, align 8, !tbaa !727
  %i.ang = add nsw i32 %i.anf, -1
  %i.anh = load ptr, ptr %i.alz, align 8, !tbaa !429
  call fastcc void @_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i(ptr noundef nonnull %.012601537, ptr noundef %i.ane, i32 noundef %i.ang, ptr noundef %i.anh, i32 noundef %i.amt)
  %i.ani = load i32, ptr %i.amb, align 8, !tbaa !430
  store i32 %i.ani, ptr %i.alf, align 8, !tbaa !377
  %i.anj = getelementptr inbounds nuw i8, ptr %.012601537, i64 116
  store i8 1, ptr %i.anj, align 4, !tbaa !415
  %i.ank = getelementptr inbounds nuw i8, ptr %.012601537, i64 115
  store i8 1, ptr %i.ank, align 1, !tbaa !393
  %i.anl = getelementptr inbounds nuw i8, ptr %.012601537, i64 108
  store float -3.000000e-01, ptr %i.anl, align 4, !tbaa !391
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kg, %bb.kt, %.thread1808
  br i1 %i.dl, label %.thread1572, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.anm = load i32, ptr %i.cu, align 4, !tbaa !255
  %i.ann = and i32 %i.anm, 128
  %.not1331 = icmp eq i32 %i.ann, 0
  br i1 %.not1331, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.ano = getelementptr inbounds nuw i8, ptr %.012601537, i64 32
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !400 ; 2 uses
  %i.anq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.anp, ptr noundef nonnull dereferenceable(1) %2) #40
  %.not1332 = icmp eq i32 %i.anq, 0
  br i1 %.not1332, label %.thread1572, label %.thread1572.sink.split

bb.kx:                                            ; preds = %bb.kv
  %i.anr = trunc nuw i8 %.3125817891822 to i1
  %or.cond145 = select i1 %.2123517981818, i1 true, i1 %i.anr
  %or.cond148 = or i1 %or.cond145, %.1123018001817
  br i1 %or.cond148, label %bb.ky, label %.thread1572

bb.ky:                                            ; preds = %bb.kx
  %i.ans = getelementptr inbounds nuw i8, ptr %.012601537, i64 32
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !400 ; 2 uses
  %i.anu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ant, ptr noundef nonnull dereferenceable(1) %2) #40
  %.not1646 = icmp eq i32 %i.anu, 0
  br i1 %.not1646, label %.thread1572, label %.thread1572.sink.split

.thread1572.sink.split:                           ; preds = %bb.ky, %bb.kw
  %.11219.ph = phi ptr [ %i.anp, %bb.kw ], [ %i.ant, %bb.ky ]
  %i.anv = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  %i.anw = load i32, ptr %i.anv, align 8, !tbaa !377
  br label %.thread1572

.thread1572:                                      ; preds = %.thread1572.sink.split, %bb.fk, %bb.kx, %bb.ky, %bb.ku, %bb.kw, %bb.js
  %.212351799 = phi i1 [ %.2123517981818, %bb.ku ], [ %.2123517981818, %bb.kx ], [ %.2123517981818, %bb.kw ], [ %.11234, %bb.js ], [ false, %bb.fk ], [ %.2123517981818, %bb.ky ], [ %.2123517981818, %.thread1572.sink.split ]
  %.112411796 = phi i8 [ %.1124117971819, %bb.ku ], [ %.1124117971819, %bb.kx ], [ %.1124117971819, %bb.kw ], [ %24, %bb.js ], [ %i.qa, %bb.fk ], [ %.1124117971819, %bb.ky ], [ %.1124117971819, %.thread1572.sink.split ] ; 4 uses
  %.212441793 = phi i8 [ %.2124417941820, %bb.ku ], [ %.2124417941820, %bb.kx ], [ %.2124417941820, %bb.kw ], [ %.11243, %bb.js ], [ %.01242, %bb.fk ], [ %.2124417941820, %bb.ky ], [ %.2124417941820, %.thread1572.sink.split ] ; 4 uses
  %.112501790 = phi float [ %.1125017911821, %bb.ku ], [ %.1125017911821, %bb.kx ], [ %.1125017911821, %bb.kw ], [ %.01249, %bb.js ], [ %i.fn, %bb.fk ], [ %.1125017911821, %bb.ky ], [ %.1125017911821, %.thread1572.sink.split ] ; 7 uses
  %.312581788 = phi i8 [ %.3125817891822, %bb.ku ], [ 0, %bb.kx ], [ %.3125817891822, %bb.kw ], [ %.21257, %bb.js ], [ %.01255, %bb.fk ], [ %.3125817891822, %bb.ky ], [ %.3125817891822, %.thread1572.sink.split ]
  %.11237 = phi i1 [ %.01236, %bb.ku ], [ false, %bb.kx ], [ %.01236, %bb.kw ], [ false, %bb.js ], [ false, %bb.fk ], [ false, %bb.ky ], [ true, %.thread1572.sink.split ] ; 4 uses
  %.11219 = phi ptr [ %.01218, %bb.ku ], [ null, %bb.kx ], [ %.01218, %bb.kw ], [ null, %bb.js ], [ null, %bb.fk ], [ null, %bb.ky ], [ %.11219.ph, %.thread1572.sink.split ] ; 4 uses
  %.11214 = phi i32 [ %.01213, %bb.ku ], [ 0, %bb.kx ], [ %.01213, %bb.kw ], [ 0, %bb.js ], [ 0, %bb.fk ], [ 0, %bb.ky ], [ %i.anw, %.thread1572.sink.split ] ; 4 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.i, i64 9568 ; 2 uses
  %i.any = load i32, ptr %i.anx, align 8, !tbaa !364
  %i.anz = icmp eq i32 %i.any, %i.s
  br i1 %i.anz, label %bb.kz, label %bb.lg

bb.kz:                                            ; preds = %.thread1572
  %i.aoa = load i32, ptr %i.ei, align 4, !tbaa !218
  %.not1333 = icmp eq i32 %i.aoa, %i.s
  br i1 %.not1333, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.aob = call noundef zeroext i1 @_ZN5ImGui17IsItemDeactivatedEv()
  br i1 %i.aob, label %bb.lc, label %._crit_edge1699

._crit_edge1699:                                  ; preds = %bb.la
  %.pre1700 = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.aoc = icmp eq i32 %.pre1700, %i.s
  br label %bb.lb

bb.lb:                                            ; preds = %._crit_edge1699, %bb.kz
  %i.aod = phi i1 [ %i.aoc, %._crit_edge1699 ], [ true, %bb.kz ]
  %i.aoe = and i32 %spec.select1349, 134218240
  %or.cond202.not = icmp eq i32 %i.aoe, 134217728
  %or.cond1389 = and i1 %or.cond202.not, %i.aod
  br i1 %or.cond1389, label %bb.ld, label %bb.lf

bb.lc:                                            ; preds = %bb.la
  br i1 %i.dl, label %bb.lf, label %bb.ld

bb.ld:                                            ; preds = %bb.lb, %bb.lc
  %i.aof = getelementptr inbounds nuw i8, ptr %i.i, i64 9584
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !435 ; 2 uses
  %i.aoh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aog, ptr noundef nonnull dereferenceable(1) %2) #40
  %.not1334 = icmp eq i32 %i.aoh, 0
  br i1 %.not1334, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.i, i64 9576
  %i.aoj = load i32, ptr %i.aoi, align 8, !tbaa !728
  %i.aok = add nsw i32 %i.aoj, -1
  br label %bb.lf

bb.lf:                                            ; preds = %bb.lc, %bb.ld, %bb.le, %bb.lb
  %.21238 = phi i1 [ %.11237, %bb.lc ], [ true, %bb.le ], [ %.11237, %bb.ld ], [ %.11237, %bb.lb ]
  %.21220 = phi ptr [ %.11219, %bb.lc ], [ %i.aog, %bb.le ], [ %.11219, %bb.ld ], [ %.11219, %bb.lb ]
  %.21215 = phi i32 [ %.11214, %bb.lc ], [ %i.aok, %bb.le ], [ %.11214, %bb.ld ], [ %.11214, %bb.lb ]
  store i32 0, ptr %i.anx, align 8, !tbaa !364
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %.thread1572
  %.31239 = phi i1 [ %.21238, %bb.lf ], [ %.11237, %.thread1572 ] ; 2 uses
  %.31221 = phi ptr [ %.21220, %bb.lf ], [ %.11219, %.thread1572 ] ; 2 uses
  %.31216 = phi i32 [ %.21215, %bb.lf ], [ %.11214, %.thread1572 ] ; 3 uses
  %.not1335 = icmp eq ptr %.31221, null
  br i1 %.not1335, label %bb.ln, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  br i1 %.not1291, label %bb.lm, label %bb.li

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  call void @_ZN26ImGuiInputTextCallbackDataC1Ev(ptr noundef nonnull align 8 dereferenceable(68) %17)
  store ptr %i.i, ptr %17, align 8, !tbaa !423
  %i.aol = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 %i.s, ptr %i.aol, align 8, !tbaa !424
  %i.aom = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %spec.select1349, ptr %i.aom, align 4, !tbaa !425
  %i.aon = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 4194304, ptr %i.aon, align 8, !tbaa !426
  br i1 %i.pm, label %bb.lj, label %bb.ll

bb.lj:                                            ; preds = %bb.li
  %i.aoo = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.aop = getelementptr inbounds nuw i8, ptr %.012601537, i64 20
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !392
  %i.aor = icmp eq i32 %i.aoo, %i.aoq
  br i1 %i.aor, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.aos = getelementptr inbounds nuw i8, ptr %i.i, i64 5440
  %i.aot = load i8, ptr %i.aos, align 8, !tbaa !230, !range !184, !noundef !185
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj, %bb.li
  %i.aou = phi i8 [ 0, %bb.lj ], [ 0, %bb.li ], [ %i.aot, %bb.lk ]
  %i.aov = getelementptr inbounds nuw i8, ptr %17, i64 34
  store i8 %i.aou, ptr %i.aov, align 2, !tbaa !427
  %i.aow = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  store ptr %2, ptr %i.aow, align 8, !tbaa !429
  %i.aox = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store i32 %.31216, ptr %i.aox, align 8, !tbaa !430
  %i.aoy = add nsw i32 %.31216, 1
  %i.aoz = call noundef i32 @llvm.smax.i32(i32 %3, i32 %i.aoy)
  %i.apa = getelementptr inbounds nuw i8, ptr %17, i64 52 ; 2 uses
  store i32 %i.aoz, ptr %i.apa, align 4, !tbaa !431
  %i.apb = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %7, ptr %i.apb, align 8, !tbaa !428
  %i.apc = call noundef i32 %6(ptr noundef nonnull %17) ; 0 uses
  %i.apd = load ptr, ptr %i.aow, align 8, !tbaa !429
  %i.ape = load i32, ptr %i.apa, align 4, !tbaa !431 ; 2 uses
  %i.apf = load i32, ptr %i.aox, align 8, !tbaa !430
  %i.apg = add nsw i32 %i.ape, -1
  %i.aph = call noundef i32 @llvm.smin.i32(i32 %i.apf, i32 %i.apg)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.lh
  %.41217 = phi i32 [ %i.aph, %bb.ll ], [ %.31216, %bb.lh ]
  %.01197 = phi i32 [ %i.ape, %bb.ll ], [ %3, %bb.lh ]
  %.01195 = phi ptr [ %i.apd, %bb.ll ], [ %2, %bb.lh ] ; 2 uses
  %i.api = add nsw i32 %.41217, 1
  %i.apj = call noundef i32 @llvm.smin.i32(i32 %i.api, i32 %.01197)
  %i.apk = sext i32 %i.apj to i64
  call void @_Z9ImStrncpyPcPKcm(ptr noundef %.01195, ptr noundef nonnull %.31221, i64 noundef %i.apk)
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.lg
  %.11196 = phi ptr [ %.01195, %bb.lm ], [ %2, %bb.lg ] ; 2 uses
  %i.apl = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.apm = icmp eq i32 %i.apl, %i.s
  %i.apn = trunc nuw i8 %.312581788 to i1
  %or.cond151 = select i1 %i.apm, i1 %i.apn, i1 false
  br i1 %or.cond151, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  %i.apo = getelementptr inbounds nuw i8, ptr %.012601537, i64 115
  store i8 0, ptr %i.apo, align 1, !tbaa !393
  call void @_ZN5ImGui13ClearActiveIDEv()
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  br i1 %i.r, label %.critedge1391, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.s, i32 noundef 0, float noundef -1.000000e+00)
  %.sroa.0296.0.copyload = load <2 x float>, ptr %11, align 8
  %.sroa.0295.0.copyload = load <2 x float>, ptr %i.ao, align 8
  %i.app = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 7, float noundef 1.000000e+00)
  %i.apq = getelementptr inbounds nuw i8, ptr %i.i, i64 3292
  %i.apr = load float, ptr %i.apq, align 4, !tbaa !233
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.0296.0.copyload, <2 x float> %.sroa.0295.0.copyload, i32 noundef %i.app, i1 noundef zeroext true, float noundef %i.apr)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.aps = load <2 x float>, ptr %11, align 8, !tbaa !190 ; 2 uses
  %i.apt = load <2 x float>, ptr %i.aa, align 4, !tbaa !190
  %i.apu = fadd <2 x float> %i.aps, %i.apt
  %i.apv = bitcast <2 x float> %i.apu to i64
  br label %bb.lr

.critedge1391:                                    ; preds = %bb.lp
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.apw = getelementptr inbounds nuw i8, ptr %.21264, i64 280
  %i.apx = load i64, ptr %i.apw, align 8
  %i.apy = load <2 x float>, ptr %11, align 8, !tbaa !190
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %.critedge1391
  %storemerge = phi i64 [ %i.apx, %.critedge1391 ], [ %i.apv, %bb.lq ]
  %i.apz = phi <2 x float> [ %i.apy, %.critedge1391 ], [ %i.aps, %bb.lq ] ; 4 uses
  store i64 %storemerge, ptr %18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.aqa = insertelement <2 x float> %i.ae, float %.sroa.0780.2, i64 0
  %i.aqb = fadd <2 x float> %i.aqa, %i.apz        ; 3 uses
  %i.aqc = shufflevector <2 x float> %i.apz, <2 x float> %i.aqb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.aqc, ptr %19, align 16, !tbaa !190
  br i1 %i.r, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.aqd = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aqe = getelementptr inbounds nuw i8, ptr %.21264, i64 616
  %i.aqf = load <2 x float>, ptr %i.aqe, align 4, !tbaa !190 ; 2 uses
  %i.aqg = fcmp oge <2 x float> %i.apz, %i.aqf
  %i.aqh = select <2 x i1> %i.aqg, <2 x float> %i.apz, <2 x float> %i.aqf
  store <2 x float> %i.aqh, ptr %19, align 16
  %i.aqi = getelementptr inbounds nuw i8, ptr %.21264, i64 624
  %i.aqj = load <2 x float>, ptr %i.aqi, align 4, !tbaa !190 ; 2 uses
  %i.aqk = fcmp olt <2 x float> %i.aqb, %i.aqj
  %i.aql = select <2 x i1> %i.aqk, <2 x float> %i.aqb, <2 x float> %i.aqj
  store <2 x float> %i.aql, ptr %i.aqd, align 8
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lr
  br i1 %i.qb, label %bb.lu, label %.thread1573

bb.lu:                                            ; preds = %bb.lt
  %i.aqm = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !376 ; 2 uses
  br i1 %.not1306, label %.thr_comm1575, label %.thread1574

.thread1573:                                      ; preds = %bb.lt
  br i1 %.not1306, label %.thr_comm1575, label %.thread1574

.thr_comm1575:                                    ; preds = %.thread1573, %bb.lu
  %.ph1576 = phi ptr [ %.11196, %.thread1573 ], [ %i.aqn, %bb.lu ] ; 2 uses
  br i1 %i.qh, label %bb.lv, label %.thread1823
end_hunk_0
begin_hunk_1_@_ZN5ImGui10ColorEdit4EPKcPfi:bb.a

bb.ar:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit
  %i.hw = and i32 %.4.fr, 4194304
  %.not245 = icmp ne i32 %i.hw, 0
  %or.cond275 = and i1 %.not245, %i.dw
  br i1 %or.cond275, label %bb.as, label %.split.us

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  %i.hx = extractelement <4 x i32> %i.dn, i64 0
  %i.hy = call i32 @llvm.smax.i32(i32 %i.hx, i32 0)
  %i.hz = call i32 @llvm.umin.i32(i32 %i.hy, i32 255) ; 2 uses
  %i.ia = extractelement <4 x i32> %i.dn, i64 1
  %i.ib = call i32 @llvm.smax.i32(i32 %i.ia, i32 0)
  %i.ic = call i32 @llvm.umin.i32(i32 %i.ib, i32 255) ; 2 uses
  %i.id = extractelement <4 x i32> %i.dn, i64 2
  %i.ie = call i32 @llvm.smax.i32(i32 %i.id, i32 0)
  %i.if = call i32 @llvm.umin.i32(i32 %i.ie, i32 255) ; 2 uses
  br i1 %i.bf, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ig = extractelement <4 x i32> %i.dn, i64 3
  %i.ih = call i32 @llvm.smax.i32(i32 %i.ig, i32 0)
  %i.ii = call i32 @llvm.umin.i32(i32 %i.ih, i32 255)
  %i.ij = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.g, i64 noundef 64, ptr noundef nonnull @.str.61, i32 noundef %i.hz, i32 noundef %i.ic, i32 noundef %i.if, i32 noundef %i.ii) ; 0 uses
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ik = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.g, i64 noundef 64, ptr noundef nonnull @.str.62, i32 noundef %i.hz, i32 noundef %i.ic, i32 noundef %i.if) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !190
  %i.il = call noundef zeroext i1 @_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.63, ptr noundef null, ptr noundef nonnull %i.g, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef 8, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br i1 %i.il, label %.preheader290, label %bb.az

.preheader290:                                    ; preds = %bb.av, %.critedge
  %.0214 = phi ptr [ %i.in, %.critedge ], [ %i.g, %bb.av ] ; 4 uses
  %i.im = load i8, ptr %.0214, align 1, !tbaa !351
  switch i8 %i.im, label %bb.aw [
    i8 35, label %.critedge
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

.critedge:                                        ; preds = %.preheader290, %.preheader290, %.preheader290
  %i.in = getelementptr inbounds nuw i8, ptr %.0214, i64 1
  br label %.preheader290, !llvm.loop !766

bb.aw:                                            ; preds = %.preheader290
  store <4 x i32> <i32 0, i32 0, i32 0, i32 255>, ptr %i.f, align 16, !tbaa !208
  br i1 %i.bf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.io = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.0214, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.f, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di) #41 ; 0 uses
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ip = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.0214, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.f, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.dh) #41 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.av
  %.2222 = phi i8 [ 0, %bb.av ], [ 1, %bb.ay ], [ 1, %bb.ax ]
  %i.iq = and i32 %i.bd, 8
  %.not246 = icmp eq i32 %i.iq, 0
  br i1 %.not246, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ir = call noundef zeroext i1 @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef nonnull @.str.60, i32 noundef 8) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  br label %.split.us

.split.us:                                        ; preds = %bb.am, %.split.us.loopexit297, %bb.ar, %bb.bb
  %.3223 = phi i8 [ 0, %bb.ar ], [ %.2222, %bb.bb ], [ %i.ht, %.split.us.loopexit297 ], [ %i.gs, %bb.am ] ; 4 uses
  %.2219 = phi i1 [ false, %bb.ar ], [ false, %bb.bb ], [ %i.gu, %.split.us.loopexit297 ], [ false, %bb.am ]
  br i1 %.not239, label %bb.bc, label %bb.bs

bb.bc:                                            ; preds = %.split.us
  br i1 %i.dw, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.is = load i32, ptr %i.dp, align 4, !tbaa !767
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iu = getelementptr inbounds nuw i8, ptr %i.h, i64 3308
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !204
  %i.iw = fadd float %i.bp, %i.iv
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.bd, %bb.be
  %i.ix = phi float [ %i.iw, %bb.be ], [ 0.000000e+00, %bb.bd ], [ 0.000000e+00, %bb.bc ]
  %i.iy = fadd float %.sroa.046.0.copyload, %i.ix
  store float %i.iy, ptr %i.do, align 8
  store i32 %.sroa.6.0.copyload289, ptr %.sroa.6.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.iz = load <2 x float>, ptr %1, align 4, !tbaa !190
  %i.ja = load float, ptr %i.bv, align 4, !tbaa !190
  br i1 %i.bf, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !190
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.jd = phi float [ %i.jc, %bb.bg ], [ 1.000000e+00, %bb.bf ]
  store <2 x float> %i.iz, ptr %6, align 8, !tbaa !190
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ja, ptr %i.je, align 8, !tbaa !312
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.jd, ptr %i.jf, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !190
  %i.jg = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.66, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %i.bd, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.jh = and i32 %i.bd, 4
  %.not250 = icmp eq i32 %i.jh, 0
  %or.cond276 = and i1 %.not250, %i.jg
  br i1 %or.cond276, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ji = getelementptr inbounds nuw i8, ptr %i.h, i64 9744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !236
  %i.jj = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.67, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.jk = getelementptr inbounds nuw i8, ptr %i.h, i64 7860
  %i.jl = load <4 x float>, ptr %i.jk, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.h, i64 3304
  %i.jn = load float, ptr %i.jm, align 8, !tbaa !320
  %i.jo = shufflevector <4 x float> %i.jl, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.jp = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.jn, i64 1
  %i.jq = fadd <2 x float> %i.jo, %i.jp
  store <2 x float> %i.jq, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !190
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.jr = and i32 %i.bd, 8
  %.not251 = icmp eq i32 %i.jr, 0
  br i1 %.not251, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.js = call noundef zeroext i1 @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef nonnull @.str.60, i32 noundef 8) ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.jt = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.67, i32 noundef 0)
  br i1 %i.jt, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  %i.ju = load ptr, ptr %i.i, align 8, !tbaa !158 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 218
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !466
  %i.jx = icmp eq i16 %i.jw, 1
  br i1 %i.jx, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %.not252 = icmp eq ptr %0, %i.p
  br i1 %.not252, label %_ZN5ImGui7SpacingEv.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %i.p, i32 noundef 0)
  %i.jy = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 5312
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !158 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 206
  store i8 1, ptr %i.kb, align 2, !tbaa !182
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 209
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !183, !range !184, !noundef !185
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %_ZN5ImGui7SpacingEv.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !190
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %_ZN5ImGui7SpacingEv.exit

_ZN5ImGui7SpacingEv.exit:                         ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.kf = and i32 %2, 931921922
  %i.kg = or disjoint i32 %i.kf, 7356544
  %i.kh = fmul float %i.o, 1.200000e+01
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.kh)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.h, i64 9744
  %i.kj = call noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef nonnull @.str.68, ptr noundef nonnull %1, i32 noundef %i.kg, ptr noundef nonnull %i.ki)
  %i.kk = zext i1 %i.kj to i8
  %i.kl = or i8 %.3223, %i.kk
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN5ImGui7SpacingEv.exit, %bb.bm
  %.4224 = phi i8 [ %i.kl, %_ZN5ImGui7SpacingEv.exit ], [ %.3223, %bb.bm ]
  %.0211 = phi ptr [ %i.ju, %_ZN5ImGui7SpacingEv.exit ], [ null, %bb.bm ]
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bl
  %.5 = phi i8 [ %.4224, %bb.bq ], [ %.3223, %bb.bl ]
  %.1212 = phi ptr [ %.0211, %bb.bq ], [ null, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.split.us
  %.6 = phi i8 [ %.3223, %.split.us ], [ %.5, %bb.br ] ; 5 uses
  %.2213 = phi ptr [ null, %.split.us ], [ %.1212, %bb.br ] ; 2 uses
  %.not253 = icmp ne ptr %0, %i.p
  %i.km = and i32 %i.bd, 128
  %.not254 = icmp eq i32 %i.km, 0
  %or.cond277 = and i1 %.not253, %.not254
  br i1 %or.cond277, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 3308 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !204
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.ko)
  br i1 %i.dw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.kp = load float, ptr %i.kn, align 4, !tbaa !204
  %i.kq = fadd float %i.bq, %i.kp
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.kr = phi float [ %i.kq, %bb.bu ], [ %i.bm, %bb.bt ]
  %i.ks = fadd float %.sroa.046.0.copyload, %i.kr
  store float %i.ks, ptr %i.do, align 8, !tbaa !186
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %i.p, i32 noundef 0)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %i.kt = trunc nuw i8 %.6 to i1
  %i.ku = icmp eq ptr %.2213, null                ; 2 uses
  %or.cond = and i1 %i.ku, %i.kt
  br i1 %or.cond, label %bb.bx, label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  br i1 %.2219, label %..loopexit_crit_edge, label %.preheader.preheader

..loopexit_crit_edge:                             ; preds = %bb.bx
  %i.kv = load <2 x float>, ptr %i.e, align 16, !tbaa !190
  %.pre315.pre320.pre = load float, ptr %i.bu, align 8, !tbaa !190
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.bx
  %i.kw = load <2 x i32>, ptr %i.f, align 16, !tbaa !208
  %i.kx = sitofp <2 x i32> %i.kw to <2 x float>
  %i.ky = fdiv <2 x float> %i.kx, splat (float 2.550000e+02) ; 2 uses
  store <2 x float> %i.ky, ptr %i.e, align 16, !tbaa !190
  %i.kz = load <2 x i32>, ptr %i.dh, align 8, !tbaa !208
  %i.la = sitofp <2 x i32> %i.kz to <2 x float>
  %i.lb = fdiv <2 x float> %i.la, splat (float 2.550000e+02) ; 2 uses
  store <2 x float> %i.lb, ptr %i.bu, align 8, !tbaa !190
  %i.lc = extractelement <2 x float> %i.lb, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader.preheader
  %.pre315.pre320 = phi float [ %.pre315.pre320.pre, %..loopexit_crit_edge ], [ %i.lc, %.preheader.preheader ] ; 2 uses
  %i.ld = phi <2 x float> [ %i.kv, %..loopexit_crit_edge ], [ %i.ky, %.preheader.preheader ] ; 4 uses
  %i.le = and i32 %.4.fr, 270532608
  %or.cond278.not = icmp eq i32 %i.le, 270532608
  br i1 %or.cond278.not, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.loopexit
  %i.lf = getelementptr inbounds nuw i8, ptr %i.h, i64 9732
  %i.lg = extractelement <2 x float> %i.ld, i64 0
  %i.lh = extractelement <2 x float> %i.ld, i64 1
  store <2 x float> %i.ld, ptr %i.lf, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.lg, float noundef %i.lh, float noundef %.pre315.pre320, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %i.bu)
  %i.li = load i32, ptr %i.t, align 4, !tbaa !458
  %i.lj = getelementptr inbounds nuw i8, ptr %i.h, i64 9728
  store i32 %i.li, ptr %i.lj, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.lk = load float, ptr %i.bu, align 8, !tbaa !190
  %i.ll = load <2 x float>, ptr %i.e, align 16, !tbaa !190
  store <2 x float> %i.ll, ptr %10, align 8, !tbaa !190
  %i.lm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float %i.lk, ptr %i.lm, align 8, !tbaa !312
  %i.ln = getelementptr inbounds nuw i8, ptr %10, i64 12
  store float 0.000000e+00, ptr %i.ln, align 4, !tbaa !254
  %i.lo = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %10)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.h, i64 9740
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !463
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.lq = load <2 x float>, ptr %i.e, align 16, !tbaa !190
  %.pre315.pre = load float, ptr %i.bu, align 8, !tbaa !190
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.loopexit
  %.pre315 = phi float [ %.pre315.pre, %bb.by ], [ %.pre315.pre320, %.loopexit ] ; 2 uses
  %i.lr = phi <2 x float> [ %i.lq, %bb.by ], [ %i.ld, %.loopexit ] ; 3 uses
  br i1 %or.cond270.not, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ls = extractelement <2 x float> %i.lr, i64 0
  %i.lt = extractelement <2 x float> %i.lr, i64 1
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.ls, float noundef %i.lt, float noundef %.pre315, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %i.bu)
  %i.lu = load <2 x float>, ptr %i.e, align 16, !tbaa !190
  %.pre314 = load float, ptr %i.bu, align 8, !tbaa !190
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.lv = phi float [ %.pre315, %bb.bz ], [ %.pre314, %bb.ca ]
  %i.lw = phi <2 x float> [ %i.lr, %bb.bz ], [ %i.lu, %bb.ca ]
  store <2 x float> %i.lw, ptr %1, align 4, !tbaa !190
  store float %i.lv, ptr %i.bv, align 4, !tbaa !190
  br i1 %i.bf, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lx = load float, ptr %i.bx, align 4, !tbaa !190
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.lx, ptr %i.ly, align 4, !tbaa !190
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.bw
  br i1 %i.v, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %i.t, align 4, !tbaa !458
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8EndGroupEv()
  %i.lz = getelementptr inbounds nuw i8, ptr %i.h, i64 7848 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.h, i64 7856
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !275
  %i.mc = and i32 %i.mb, 1
  %.not259 = icmp eq i32 %i.mc, 0
  br i1 %.not259, label %bb.cp, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.md = getelementptr inbounds nuw i8, ptr %i.h, i64 7852
  %i.me = load i32, ptr %i.md, align 4, !tbaa !255
  %i.mf = and i32 %i.me, 2048
  %i.mg = and i32 %i.bd, 512
  %i.mh = or disjoint i32 %i.mf, %i.mg
  %or.cond279 = icmp eq i32 %i.mh, 0
  br i1 %or.cond279, label %bb.ch, label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  %i.mi = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropTargetEv()
  br i1 %i.mi, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  %i.mj = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.69, i32 noundef 0) ; 2 uses
  %.not262 = icmp ne ptr %i.mj, null              ; 2 uses
  br i1 %.not262, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) %i.mk, i64 12, i1 false)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.7 = phi i8 [ 1, %bb.cj ], [ %.6, %bb.ci ]
  %i.ml = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.70, i32 noundef 0) ; 2 uses
  %.not263 = icmp eq ptr %i.ml, null
  br i1 %.not263, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !768
  %i.mn = shl nuw nsw i32 %i.bh, 2
  %i.mo = zext nneg i32 %i.mn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.mm, i64 %i.mo, i1 false)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.8 = phi i8 [ 1, %bb.cl ], [ %.7, %bb.ck ]
  %.1 = phi i1 [ true, %bb.cl ], [ %.not262, %bb.ck ]
  %brmerge280.not = and i1 %.not240, %.1
  br i1 %brmerge280.not, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.mp = load float, ptr %1, align 4, !tbaa !190
  %i.mq = load float, ptr %i.bs, align 4, !tbaa !190
  %i.mr = load float, ptr %i.bv, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.mp, float noundef %i.mq, float noundef %i.mr, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bs, ptr noundef nonnull align 4 dereferenceable(4) %i.bv)
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  call void @_ZN5ImGui17EndDragDropTargetEv()
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.ch, %bb.cg, %bb.cf
  %.9 = phi i8 [ %.6, %bb.cg ], [ %.6, %bb.cf ], [ %.8, %bb.co ], [ %.6, %bb.ch ]
  br i1 %i.ku, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ms = getelementptr inbounds nuw i8, ptr %i.h, i64 5428
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !218 ; 2 uses
  %.not265 = icmp eq i32 %i.mt, 0
  br i1 %.not265, label %bb.ct, label %bb.cr
end_hunk_1
begin_hunk_2_@_ZN5ImGui12ColorPicker4EPKcPfiPKf:bb.a
  br i1 %.not457, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mq = load float, ptr %i.bx, align 4, !tbaa !204
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.mq)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %i.mp, i32 noundef 0)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bl, %bb.bo, %bb.bk
  br i1 %.not457, label %bb.bq, label %bb.cb

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 4, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #41
  %i.mr = load <2 x float>, ptr %1, align 4, !tbaa !190
  %i.ms = load float, ptr %i.dr, align 4, !tbaa !190
  br i1 %.not449, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !190
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.mv = phi float [ %i.mu, %bb.br ], [ 1.000000e+00, %bb.bq ]
  store <2 x float> %i.mr, ptr %24, align 8, !tbaa !190
  %i.mw = getelementptr inbounds nuw i8, ptr %24, i64 8
  store float %i.ms, ptr %i.mw, align 8, !tbaa !312
  %i.mx = getelementptr inbounds nuw i8, ptr %24, i64 12
  store float %i.mv, ptr %i.mx, align 4, !tbaa !254
  br i1 %.not458, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.75)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.my = and i32 %.3, 805859394                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #41
  %i.mz = fmul float %i.bw, 3.000000e+00          ; 2 uses
  %i.na = fmul float %i.bw, 2.000000e+00          ; 2 uses
  store float %i.mz, ptr %25, align 4, !tbaa !194
  %i.nb = getelementptr inbounds nuw i8, ptr %25, i64 4
  store float %i.na, ptr %i.nb, align 4, !tbaa !197
  %i.nc = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.76, ptr noundef nonnull align 4 dereferenceable(16) %24, i32 noundef %i.my, ptr noundef nonnull align 4 dereferenceable(8) %25) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #41
  %.not460 = icmp eq ptr %3, null
  br i1 %.not460, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.77)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #41
  %i.nd = load <2 x float>, ptr %3, align 4, !tbaa !190
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !190
  br i1 %.not449, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !190
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.ni = phi float [ %i.nh, %bb.bw ], [ 1.000000e+00, %bb.bv ]
  store <2 x float> %i.nd, ptr %26, align 8, !tbaa !190
  %i.nj = getelementptr inbounds nuw i8, ptr %26, i64 8
  store float %i.nf, ptr %i.nj, align 8, !tbaa !312
  %i.nk = getelementptr inbounds nuw i8, ptr %26, i64 12
  store float %i.ni, ptr %i.nk, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #41
  store float %i.mz, ptr %27, align 4, !tbaa !194
  %i.nl = getelementptr inbounds nuw i8, ptr %27, i64 4
  store float %i.na, ptr %i.nl, align 4, !tbaa !197
  %i.nm = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.78, ptr noundef nonnull align 4 dereferenceable(16) %26, i32 noundef %i.my, ptr noundef nonnull align 4 dereferenceable(8) %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #41
  br i1 %i.nm, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 %i.ch, i1 false)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.6 = phi i8 [ 1, %bb.by ], [ %.5, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bu
  %.7 = phi i8 [ %.6, %bb.bz ], [ %.5, %bb.bu ]
  call void @_ZN5ImGui11PopItemFlagEv()
  call void @_ZN5ImGui8EndGroupEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #41
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bp
  %.8 = phi i8 [ %.5, %bb.bp ], [ %.7, %bb.ca ]   ; 3 uses
  %i.nn = trunc nuw i8 %.2428 to i1
  %i.no = trunc nuw i8 %.3425 to i1
  %i.np = or i8 %.3425, %.2428
  %or.cond9.not = icmp eq i8 %i.np, 0
  br i1 %or.cond9.not, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %.not451, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nq = load float, ptr %i.j, align 4, !tbaa !190
  %i.nr = load float, ptr %i.k, align 4, !tbaa !190
  %i.ns = load float, ptr %i.l, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.nq, float noundef %i.nr, float noundef %i.ns, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dp, ptr noundef nonnull align 4 dereferenceable(4) %i.dr)
  %i.nt = load float, ptr %i.j, align 4, !tbaa !190
  %i.nu = getelementptr inbounds nuw i8, ptr %i.w, i64 9732
  store float %i.nt, ptr %i.nu, align 4, !tbaa !464
  %i.nv = load float, ptr %i.k, align 4, !tbaa !190
  %i.nw = getelementptr inbounds nuw i8, ptr %i.w, i64 9736
  store float %i.nv, ptr %i.nw, align 8, !tbaa !465
  %i.nx = load i32, ptr %i.ao, align 4, !tbaa !458
  %i.ny = getelementptr inbounds nuw i8, ptr %i.w, i64 9728
  store i32 %i.nx, ptr %i.ny, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #41
  %i.nz = load float, ptr %i.dr, align 4, !tbaa !190
  %i.oa = load <2 x float>, ptr %1, align 4, !tbaa !190
  store <2 x float> %i.oa, ptr %28, align 8, !tbaa !190
  %i.ob = getelementptr inbounds nuw i8, ptr %28, i64 8
  store float %i.nz, ptr %i.ob, align 8, !tbaa !312
  %i.oc = getelementptr inbounds nuw i8, ptr %28, i64 12
  store float 0.000000e+00, ptr %i.oc, align 4, !tbaa !254
  %i.od = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %28)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.w, i64 9740
  store i32 %i.od, ptr %i.oe, align 4, !tbaa !463
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cc
  %i.of = and i32 %.3, 536870912
  %.not461 = icmp eq i32 %i.of, 0
  br i1 %.not461, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.og = load float, ptr %i.j, align 4, !tbaa !190
  store float %i.og, ptr %1, align 4, !tbaa !190
  %i.oh = load float, ptr %i.k, align 4, !tbaa !190
  store float %i.oh, ptr %i.dp, align 4, !tbaa !190
  %i.oi = load float, ptr %i.l, align 4, !tbaa !190
  store float %i.oi, ptr %i.dr, align 4, !tbaa !190
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cd, %bb.cf, %bb.ce, %bb.cb
  %i.oj = and i32 %.3, 32
  %i.ok = icmp eq i32 %i.oj, 0
  br i1 %i.ok, label %bb.ch, label %.thread598

bb.ch:                                            ; preds = %bb.cg
  %i.ol = select i1 %spec.select473, float %i.cu, float %i.cs
  %i.om = fadd float %i.bw, %i.ol
  %i.on = fsub float %i.om, %i.cq
  call void @_ZN5ImGui13PushItemWidthEf(float noundef %i.on)
  %i.oo = and i32 %.3, 831025242                  ; 3 uses
  %i.op = and i32 %.3, 1048576
  %.not462 = icmp ne i32 %i.op, 0
  %i.oq = and i32 %.3, 6291456
  %i.or = icmp eq i32 %i.oq, 0
  %or.cond475 = or i1 %.not462, %i.or
  br i1 %or.cond475, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.os = or disjoint i32 %i.oo, 1048580
  %i.ot = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.79, ptr noundef nonnull %1, i32 noundef %i.os)
  br i1 %i.ot, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.ou = getelementptr inbounds nuw i8, ptr %i.w, i64 5428
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !218
  %.not463 = icmp eq i32 %i.ov, 0
  br i1 %.not463, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ow = getelementptr inbounds nuw i8, ptr %i.w, i64 5443
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !417, !range !184, !noundef !185
  %i.oy = trunc nuw i8 %i.ox to i1
  %i.oz = or i1 %.not451, %i.oy
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck, %bb.ch, %bb.ci
  %.9 = phi i8 [ %.8, %bb.ch ], [ %.8, %bb.ci ], [ 1, %bb.ck ], [ 1, %bb.cj ] ; 2 uses
  %.1421.not = phi i1 [ true, %bb.ch ], [ true, %bb.ci ], [ %i.oz, %bb.ck ], [ true, %bb.cj ]
  %i.pa = and i32 %.3, 2097152
  %.not464 = icmp ne i32 %i.pa, 0
  %i.pb = and i32 %.3, 5242880
  %i.pc = icmp eq i32 %i.pb, 0
  %or.cond477 = or i1 %.not464, %i.pc
  br i1 %or.cond477, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.pd = or disjoint i32 %i.oo, 2097156
  %i.pe = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.80, ptr noundef nonnull %1, i32 noundef %i.pd)
  %i.pf = zext i1 %i.pe to i8
  %i.pg = or i8 %.9, %i.pf
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  %.10 = phi i8 [ %i.pg, %bb.cm ], [ %.9, %bb.cl ] ; 2 uses
  %i.ph = and i32 %.3, 4194304
  %.not465 = icmp ne i32 %i.ph, 0
  %i.pi = and i32 %.3, 3145728
  %i.pj = icmp eq i32 %i.pi, 0
  %or.cond479 = or i1 %.not465, %i.pj
  br i1 %or.cond479, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.pk = or disjoint i32 %i.oo, 4194308
  %i.pl = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.81, ptr noundef nonnull %1, i32 noundef %i.pk)
  %i.pm = zext i1 %i.pl to i8
  %i.pn = or i8 %.10, %i.pm
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.11 = phi i8 [ %i.pn, %bb.co ], [ %.10, %bb.cn ] ; 2 uses
  call void @_ZN5ImGui12PopItemWidthEv()
  br i1 %.1421.not, label %.thread598, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #41
  %i.po = load float, ptr %1, align 4, !tbaa !190
  %i.pp = load float, ptr %i.dp, align 4, !tbaa !190
  %i.pq = load float, ptr %i.dr, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.po, float noundef %i.pp, float noundef %i.pq, ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.u)
  %i.pr = load float, ptr %i.s, align 4, !tbaa !190
  %i.ps = fcmp ole float %i.pr, 0.000000e+00
  %i.pt = load float, ptr %i.j, align 4           ; 3 uses
  %i.pu = fcmp ogt float %i.pt, 0.000000e+00
  %or.cond11 = select i1 %i.ps, i1 %i.pu, i1 false
  br i1 %or.cond11, label %bb.cr, label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  %i.pv = load float, ptr %i.u, align 4, !tbaa !190 ; 3 uses
  %i.pw = fcmp ugt float %i.pv, 0.000000e+00
  br i1 %i.pw, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.px = load float, ptr %i.l, align 4, !tbaa !190 ; 2 uses
  %i.py = fcmp une float %i.px, %i.pv
  br i1 %i.py, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.pz = load float, ptr %i.k, align 4, !tbaa !190
  %i.qa = fmul float %i.px, 5.000000e-01
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.pt, float noundef %i.pz, float noundef %i.qa, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dp, ptr noundef nonnull align 4 dereferenceable(4) %i.dr)
  br label %bb.cw

bb.cu:                                            ; preds = %bb.cs, %bb.cr
  %i.qb = load float, ptr %i.t, align 4, !tbaa !190
  %i.qc = fcmp ugt float %i.qb, 0.000000e+00
  br i1 %i.qc, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qd = load float, ptr %i.k, align 4
  %i.qe = fmul float %i.qd, 5.000000e-01
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.pt, float noundef %i.qe, float noundef %i.pv, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dp, ptr noundef nonnull align 4 dereferenceable(4) %i.dr)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.ct, %bb.cv, %bb.cu, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #41
  br label %.thread598

.thread598:                                       ; preds = %bb.cg, %bb.cp, %bb.cw
  %.12603 = phi i8 [ %.11, %bb.cw ], [ %.11, %bb.cp ], [ %.8, %bb.cg ]
  %i.qf = trunc nuw i8 %.12603 to i1              ; 2 uses
  br i1 %i.qf, label %bb.cx, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.cx:                                            ; preds = %.thread598
  br i1 %.not451, label %bb.dg, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qg = load float, ptr %1, align 4, !tbaa !190 ; 2 uses
  store float %i.qg, ptr %i.m, align 4, !tbaa !190
  %i.qh = load float, ptr %i.dp, align 4, !tbaa !190 ; 2 uses
  store float %i.qh, ptr %i.n, align 4, !tbaa !190
  %i.qi = load float, ptr %i.dr, align 4, !tbaa !190 ; 2 uses
  store float %i.qi, ptr %i.o, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.qg, float noundef %i.qh, float noundef %i.qi, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.qj = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 6 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 9728
  %i.ql = load i32, ptr %i.qk, align 8, !tbaa !462
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 9724
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !458
  %.not.i510 = icmp eq i32 %i.ql, %i.qn
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  br i1 %.not.i510, label %bb.cz, label %.critedge.i511

bb.cz:                                            ; preds = %bb.cy
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 9740
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !463
  %i.qq = load float, ptr %i.dr, align 4, !tbaa !190
  %i.qr = load <2 x float>, ptr %1, align 4, !tbaa !190
  store <2 x float> %i.qr, ptr %4, align 8, !tbaa !190
  %i.qs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.qq, ptr %i.qs, align 8, !tbaa !312
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.qt, align 4, !tbaa !254
  %i.qu = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4)
  %.not14.i512 = icmp eq i32 %i.qp, %i.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br i1 %.not14.i512, label %bb.da, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

.critedge.i511:                                   ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.da:                                            ; preds = %bb.cz
  %i.qv = load float, ptr %i.k, align 4, !tbaa !190
  %i.qw = fcmp oeq float %i.qv, 0.000000e+00
  br i1 %i.qw, label %._crit_edge.i513, label %bb.db

._crit_edge.i513:                                 ; preds = %bb.da
  %.phi.trans.insert.i514 = getelementptr inbounds nuw i8, ptr %i.qj, i64 9732
  %.pre.i515 = load float, ptr %.phi.trans.insert.i514, align 4, !tbaa !464
  br label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.qx = load float, ptr %i.j, align 4, !tbaa !190
  %i.qy = fcmp oeq float %i.qx, 0.000000e+00
  br i1 %i.qy, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qj, i64 9732
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !464
  %i.rb = fcmp oeq float %i.ra, 1.000000e+00
  br i1 %i.rb, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc, %._crit_edge.i513
  %i.rc = phi float [ %.pre.i515, %._crit_edge.i513 ], [ 1.000000e+00, %bb.dc ]
  store float %i.rc, ptr %i.j, align 4, !tbaa !190
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %i.rd = load float, ptr %i.l, align 4, !tbaa !190
  %i.re = fcmp oeq float %i.rd, 0.000000e+00
  br i1 %i.re, label %bb.df, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.df:                                            ; preds = %bb.de
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qj, i64 9736
  %i.rg = load float, ptr %i.rf, align 8, !tbaa !465
  store float %i.rg, ptr %i.k, align 4, !tbaa !190
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.dg:                                            ; preds = %bb.cx
  %i.rh = and i32 %.3, 536870912
  %.not466 = icmp eq i32 %i.rh, 0
  br i1 %.not466, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ri = load float, ptr %1, align 4, !tbaa !190 ; 2 uses
  store float %i.ri, ptr %i.j, align 4, !tbaa !190
  %i.rj = load float, ptr %i.dp, align 4, !tbaa !190 ; 2 uses
  store float %i.rj, ptr %i.k, align 4, !tbaa !190
  %i.rk = load float, ptr %i.dr, align 4, !tbaa !190 ; 2 uses
  store float %i.rk, ptr %i.l, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ri, float noundef %i.rj, float noundef %i.rk, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516:       ; preds = %bb.df, %bb.de, %.critedge.i511, %bb.cz, %bb.dh, %bb.dg, %.thread598
  %i.rl = getelementptr inbounds nuw i8, ptr %i.w, i64 3220 ; 4 uses
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !771 ; 4 uses
  %i.rn = fcmp olt float %i.rm, 0.000000e+00
  %i.ro = fcmp ogt float %i.rm, 1.000000e+00
  %i.rp = select i1 %i.ro, float 1.000000e+00, float %i.rm
  %i.rq = call float @llvm.fmuladd.f32(float %i.rp, float 2.550000e+02, float 5.000000e-01)
  %i.rr = select i1 %i.rn, float 5.000000e-01, float %i.rq
  %i.rs = fptosi float %i.rr to i32
  %i.rt = shl i32 %i.rs, 24                       ; 11 uses
  %i.ru = or disjoint i32 %i.rt, 16711680         ; 5 uses
  %i.rv = or disjoint i32 %i.rt, 16776960         ; 5 uses
  %i.rw = or disjoint i32 %i.rt, 16777215         ; 6 uses
  %i.rx = or disjoint i32 %i.rt, 8421504          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #41
  %i.ry = or disjoint i32 %i.rt, 255              ; 7 uses
  store i32 %i.ry, ptr %i.v, align 16, !tbaa !208
  %i.rz = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.sa = or disjoint i32 %i.rt, 65280            ; 5 uses
  %i.sb = or disjoint i32 %i.rt, 65535            ; 5 uses
  store i32 %i.sb, ptr %i.rz, align 4, !tbaa !208
  %i.sc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.sa, ptr %i.sc, align 8, !tbaa !208
  %i.sd = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.rv, ptr %i.sd, align 4, !tbaa !208
  %i.se = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %i.ru, ptr %i.se, align 16, !tbaa !208
  %i.sf = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.sg = or disjoint i32 %i.rt, 16711935         ; 5 uses
  store i32 %i.sg, ptr %i.sf, align 4, !tbaa !208
  %i.sh = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.ry, ptr %i.sh, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  %i.si = getelementptr inbounds nuw i8, ptr %29, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %29, align 8, !tbaa !190
  %i.sj = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.sj, align 8, !tbaa !312
  %i.sk = getelementptr inbounds nuw i8, ptr %29, i64 12
  store float %i.rm, ptr %i.sk, align 4, !tbaa !254
  %i.sl = load float, ptr %i.j, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.sl, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %29, ptr noundef nonnull align 4 dereferenceable(4) %i.si, ptr noundef nonnull align 4 dereferenceable(4) %i.sj)
  %i.sm = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %29) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #41
  %i.sn = load float, ptr %i.m, align 4, !tbaa !190
  %i.so = load float, ptr %i.n, align 4, !tbaa !190
  %i.sp = load float, ptr %i.o, align 4, !tbaa !190
  %i.sq = load float, ptr %i.rl, align 4, !tbaa !771
  store float %i.sn, ptr %30, align 4, !tbaa !310
  %i.sr = getelementptr inbounds nuw i8, ptr %30, i64 4
  store float %i.so, ptr %i.sr, align 4, !tbaa !311
  %i.ss = getelementptr inbounds nuw i8, ptr %30, i64 8
  store float %i.sp, ptr %i.ss, align 4, !tbaa !312
  %i.st = getelementptr inbounds nuw i8, ptr %30, i64 12
end_hunk_2
begin_hunk_3_@_ZN5ImGui9TreeNodeVEPKvPKcP13__va_list_tag:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.c, ptr noundef %0, ptr noundef null)
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.h, i32 noundef %1, ptr noundef %0, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKciS1_z(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %3)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %3)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret i1 %.0.i
}

declare noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui15TreeNodeGetOpenEj(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !481
  %i.f = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %0, i32 noundef 0)
  %i.g = icmp ne i32 %i.f, 0
  ret i1 %i.g
}

declare noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15TreeNodeSetOpenEjb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !481
  %i.f = zext i1 %1 to i32
  tail call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %0, i32 noundef %i.f)
  ret void
}

declare void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui22TreeNodeUpdateNextOpenEji(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = and i32 %1, 256
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !481  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 7792
  %i.h = load i32, ptr %i.g, align 8, !tbaa !360
  %i.i = and i32 %i.h, 2
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 7829
  %i.k = load i8, ptr %i.j, align 1, !tbaa !482
  %i.l = and i8 %i.k, 1
  %.not28 = icmp eq i8 %i.l, 0
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 7828
  %i.n = load i8, ptr %i.m, align 4, !tbaa !483, !range !184, !noundef !185 ; 2 uses
  %i.o = zext nneg i8 %i.n to i32
  tail call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %0, i32 noundef %i.o)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %0, i32 noundef -1) ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 7828
  %i.s = load i8, ptr %i.r, align 4, !tbaa !483, !range !184, !noundef !185 ; 2 uses
  %2 = zext nneg i8 %i.s to i32
  %i.t = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5312
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !158
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 448
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !481
  tail call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef %0, i32 noundef %2)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.y = icmp ne i32 %i.p, 0
  %i.z = zext i1 %i.y to i8
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.aa = lshr i32 %1, 5
  %.lobit = and i32 %i.aa, 1
  %i.ab = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %0, i32 noundef %.lobit)
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.h
  %.1 = phi i8 [ %i.n, %bb.d ], [ %i.ad, %bb.h ], [ %i.s, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 10264
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !191, !range !184, !noundef !185
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = and i32 %1, 16
  %.not29 = icmp eq i32 %i.ah, 0
  %or.cond = and i1 %.not29, %i.ag
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !475
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 10324
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !780
  %i.am = sub nsw i32 %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 10328
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !781
  %i.ap = icmp slt i32 %i.am, %i.ao
  %spec.select = select i1 %i.ap, i8 1, i8 %.1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2 = phi i8 [ %.1, %bb.i ], [ %spec.select, %bb.j ]
  %i.aq = trunc nuw i8 %.2 to i1
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.024 = phi i1 [ %i.aq, %bb.k ], [ true, %bb.a ]
  ret i1 %.024
}

declare noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL22TreeNodeStoreStackDataif(i32 noundef %0, float noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8184 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !477  ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8188 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !782  ; 4 uses
  %.not30 = icmp slt i32 %i.e, %i.h
  br i1 %.not30, label %._ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit_crit_edge, label %bb.b

._ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8192
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !476
  br label %_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sdiv i32 %i.h, 2
  %i.j = add nsw i32 %i.i, %i.h
  br label %_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i

_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i: ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ %i.j, %bb.c ], [ 8, %bb.b ]
  %i.l = tail call noundef i32 @llvm.smax.i32(i32 %i.k, i32 %i.f) ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.m, 40
  %i.o = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.n) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8192 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !783  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i
  %i.r = load i32, ptr %i.d, align 8, !tbaa !484
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.s, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.o, ptr nonnull align 4 %i.q, i64 %i.t, i1 false)
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !783
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.u)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i
  store ptr %i.o, ptr %i.p, align 8, !tbaa !783
  store i32 %i.l, ptr %i.g, align 4, !tbaa !782
  br label %_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit

_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit: ; preds = %._ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit_crit_edge, %bb.e
  %i.v = phi ptr [ %.pre, %._ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit_crit_edge ], [ %i.o, %bb.e ]
  store i32 %i.f, ptr %i.d, align 8, !tbaa !484
  %i.w = sext i32 %i.f to i64
  %i.x = getelementptr [40 x i8], ptr %i.v, i64 %i.w ; 8 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -40
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !207
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !784
  %i.ab = getelementptr i8, ptr %i.x, i64 -36
  store i32 %0, ptr %i.ab, align 4, !tbaa !485
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 7852
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !255
  %i.ae = getelementptr i8, ptr %i.x, i64 -32
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !785
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 7876
  %i.ag = getelementptr i8, ptr %i.x, i64 -28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !236
  %i.ah = and i32 %0, 1572864
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !205
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 5.000000e-01, float %1)
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 3284
  %i.am = load float, ptr %i.al, align 4, !tbaa !330
  %i.an = fadd float %i.ak, %i.am
  %i.ao = getelementptr i8, ptr %i.x, i64 -12
  store float %i.an, ptr %i.ao, align 4, !tbaa !486
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !283 ; 2 uses
  %.not28 = icmp eq ptr %i.aq, null
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 116
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !299
  %i.at = trunc i32 %i.as to i16
  br label %bb.h

.critedge:                                        ; preds = %_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit
  %i.au = getelementptr i8, ptr %i.x, i64 -12
  store float f0x7F7FFFFF, ptr %i.au, align 4, !tbaa !486
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.f, %bb.g
  %i.av = phi i16 [ %i.at, %bb.g ], [ -1, %bb.f ], [ -1, %.critedge ]
  %i.aw = getelementptr i8, ptr %i.x, i64 -4
  store i16 %i.av, ptr %i.aw, align 4, !tbaa !487
  %i.ax = getelementptr i8, ptr %i.x, i64 -8
  store float f0xFF7FFFFF, ptr %i.ax, align 4, !tbaa !479
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !475
  %i.ba = shl nuw i32 1, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 420 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !488
  %i.bd = or i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !488
  %i.be = and i32 %0, 1048576
  %.not29 = icmp eq i32 %i.be, 0
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 424 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !474
  %i.bh = or i32 %i.bg, %i.ba
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !474
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui18TreePushOverrideIDEj(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 416 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !475
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !475
  tail call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %0)
  ret void
}

declare void @_ZN5ImGui26TablePushBackgroundChannelEv() local_unnamed_addr #3

declare void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui20NavMoveRequestCancelEv() local_unnamed_addr #3

declare void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3
end_hunk_3
