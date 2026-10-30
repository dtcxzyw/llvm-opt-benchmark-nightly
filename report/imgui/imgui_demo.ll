Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZN5ImGui14ShowDemoWindowEPb:bb.a
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN19ExampleAppDocumentsC2Ev(ptr noundef nonnull align 8 dereferenceable(41) @_ZZL23ShowExampleAppDocumentsPbE3app)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call i32 @__cxa_atexit(ptr nonnull @_ZN19ExampleAppDocumentsD2Ev, ptr nonnull @_ZZL23ShowExampleAppDocumentsPbE3app, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL23ShowExampleAppDocumentsPbE3app) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.ae = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2298, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 4), i32 noundef 1024)
  br i1 %i.ae, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN5ImGui3EndEv()
  br label %_ZL23ShowExampleAppDocumentsPb.exit

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.he, %bb.gc, %bb.cw, %bb.cq, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.lp, %bb.cq ], [ %i.lw, %bb.cw ], [ %i.alv, %bb.gc ], [ %i.anc, %bb.he ], [ %lpad.loopexit.split-lp244, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZL23ShowExampleAppDocumentsPbE3app) #30
  br label %common.resume

bb.r:                                             ; preds = %bb.o
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 10689, ptr noundef nonnull @.str.2299)
  %i.ag = tail call noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv()
  br i1 %i.ag, label %bb.s, label %bb.ah

bb.s:                                             ; preds = %bb.r
  %i.ah = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.1530, i1 noundef zeroext true)
  br i1 %i.ah, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !23 ; 2 uses
  %i.aj = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !24 ; 3 uses
  %i.ak = sext i32 %i.aj to i64
  %.idx.i = mul nsw i64 %i.ak, 56
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i
  %.not924.i = icmp eq i32 %i.aj, 0
  br i1 %.not924.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.t
  %.089.lcssa.i = phi i32 [ 0, %bb.t ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %i.am = icmp slt i32 %.089.lcssa.i, %i.aj
  %i.an = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.388, i1 noundef zeroext %i.am)
  br i1 %i.an, label %bb.u, label %bb.y

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %.0896.i = phi i32 [ %i.ar, %.lr.ph.i ], [ 0, %bb.t ]
  %.0905.i = phi ptr [ %i.as, %.lr.ph.i ], [ %i.ai, %bb.t ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0905.i, i64 36
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !28, !range !19, !noundef !20
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %.0896.i, %i.aq         ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0905.i, i64 56 ; 2 uses
  %.not92.i = icmp eq ptr %i.as, %i.al
  br i1 %.not92.i, label %._crit_edge.i, label %.lr.ph.i

bb.u:                                             ; preds = %._crit_edge.i
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !23 ; 2 uses
  %i.au = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !24 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %.idx47.i = mul nsw i64 %i.av, 56
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %.idx47.i
  %.not937.i = icmp eq i32 %i.au, 0
  br i1 %.not937.i, label %._crit_edge11.i, label %.lr.ph10.i

._crit_edge11.i:                                  ; preds = %bb.x, %bb.u
  tail call void @_ZN5ImGui7EndMenuEv()
  br label %bb.y

.lr.ph10.i:                                       ; preds = %bb.u, %bb.x
  %.0888.i = phi ptr [ %i.bb, %bb.x ], [ %i.at, %bb.u ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0888.i, i64 36 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !28, !range !19, !noundef !20
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph10.i
  %i.ba = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull %.0888.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.ba, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.ax, align 4, !tbaa !28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.lr.ph10.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0888.i, i64 56 ; 2 uses
  %.not93.i = icmp eq ptr %i.bb, %i.aw
  br i1 %.not93.i, label %._crit_edge11.i, label %.lr.ph10.i

bb.y:                                             ; preds = %._crit_edge11.i, %._crit_edge.i
  %i.bc = icmp ne i32 %.089.lcssa.i, 0
  %i.bd = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2300, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %i.bc)
  br i1 %i.bd, label %bb.z, label %.loopexit3.i

bb.z:                                             ; preds = %bb.y
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !23 ; 2 uses
  %i.bf = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !24 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %.idx48.i = mul nsw i64 %i.bg, 56
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %.idx48.i
  %.not9412.i = icmp eq i32 %i.bf, 0
  br i1 %.not9412.i, label %.loopexit3.i, label %.lr.ph15.preheader.i

.lr.ph15.preheader.i:                             ; preds = %bb.z
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !32
  br label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i, %.lr.ph15.preheader.i
  %i.bi = phi i32 [ %i.ce, %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i ], [ %.pre.i, %.lr.ph15.preheader.i ] ; 6 uses
  %.08713.i = phi ptr [ %i.cf, %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i ], [ %i.be, %.lr.ph15.preheader.i ] ; 2 uses
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 20), align 4, !tbaa !33
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.aa, label %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i.i: ; preds = %.lr.ph15.i
  %.pre.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !34
  br label %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i

bb.aa:                                            ; preds = %.lr.ph15.i
  %i.bl = add nsw i32 %i.bi, 1
  %.not.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bm = sdiv i32 %i.bi, 2
  %i.bn = add nsw i32 %i.bm, %i.bi
  br label %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i.i: ; preds = %bb.ab, %bb.aa
  %i.bo = phi i32 [ %i.bn, %bb.ab ], [ 8, %bb.aa ]
  %i.bp = tail call noundef i32 @llvm.smax.i32(i32 %i.bo, i32 %i.bl) ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl nsw i64 %i.bq, 3
  %i.bs = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.br) ; 3 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !34 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not6.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i.i
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !32
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bs, ptr nonnull align 8 %i.bt, i64 %i.bw, i1 false)
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !34
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bx)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i.i
  store ptr %i.bs, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !34
  store i32 %i.bp, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 20), align 4, !tbaa !33
  %.pre3.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !32
  br label %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i

_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i: ; preds = %bb.ad, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i.i
  %i.by = phi i32 [ %i.bi, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.ad ]
  %i.bz = phi ptr [ %.pre.i.i, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i.i ], [ %i.bs, %bb.ad ]
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = ptrtoint ptr %.08713.i to i64
  store i64 %i.cc, ptr %i.cb, align 8
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !32
  %i.ce = add nsw i32 %i.cd, 1                    ; 2 uses
  store i32 %i.ce, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !32
  %i.cf = getelementptr inbounds nuw i8, ptr %.08713.i, i64 56 ; 2 uses
  %.not94.i = icmp eq ptr %i.cf, %i.bh
  br i1 %.not94.i, label %.loopexit3.i, label %.lr.ph15.i

.loopexit3.i:                                     ; preds = %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i, %bb.z, %bb.y
  %i.cg = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2301, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.cg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.loopexit3.i
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 4), align 4, !tbaa !35
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.loopexit3.i
  tail call void @_ZN5ImGui7EndMenuEv()
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.s
  tail call void @_ZN5ImGui10EndMenuBarEv()
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.r
  %i.ch = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !284
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %bb.ai, label %._crit_edge19.i

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !23 ; 4 uses
  tail call void @_ZN5ImGui6PushIDEPKv(ptr noundef nonnull %i.cj)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 36 ; 2 uses
  %i.cl = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck)
  br i1 %i.cl, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cm = load i8, ptr %i.ck, align 4, !tbaa !28, !range !19, !noundef !20
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 38
  store i8 0, ptr %i.co, align 2, !tbaa !37
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  tail call void @_ZN5ImGui5PopIDEv()
  %i.cp = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !284
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %.lr.ph18.peel.next.i, label %._crit_edge19.i

._crit_edge19.i:                                  ; preds = %bb.ao, %bb.al, %bb.ah
  tail call void @_ZN5ImGui9SeparatorEv()
  %i.cr = tail call noundef zeroext i1 @_ZN5ImGui11BeginTabBarEPKci(ptr noundef nonnull @.str.211, i32 noundef 193)
  br i1 %i.cr, label %bb.ap, label %bb.be

.lr.ph18.peel.next.i:                             ; preds = %bb.al, %bb.ao
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ao ], [ 1, %bb.al ] ; 2 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !23
  %i.ct = getelementptr inbounds nuw [56 x i8], ptr %i.cs, i64 %indvars.iv.i ; 4 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  tail call void @_ZN5ImGui6PushIDEPKv(ptr noundef nonnull %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 36 ; 2 uses
  %i.cv = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cu)
  br i1 %i.cv, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.lr.ph18.peel.next.i
  %i.cw = load i8, ptr %i.cu, align 4, !tbaa !28, !range !19, !noundef !20
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 38
  store i8 0, ptr %i.cy, align 2, !tbaa !37
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.lr.ph18.peel.next.i
  tail call void @_ZN5ImGui5PopIDEv()
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cz = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !284
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next.i, %i.da
  br i1 %i.db, label %.lr.ph18.peel.next.i, label %._crit_edge19.i, !llvm.loop !263

bb.ap:                                            ; preds = %._crit_edge19.i
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !23 ; 2 uses
  %i.dd = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !24 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %.idx.i.i = mul nsw i64 %i.de, 56
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %.idx.i.i
  %.not12.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not12.i.i, label %._crit_edge24.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ap, %bb.as
  %.013.i.i = phi ptr [ %i.do, %bb.as ], [ %i.dc, %bb.ap ] ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 36 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 4, !tbaa !28, !range !19, !noundef !20
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 37
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !285, !range !19, !noundef !20
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZN5ImGui16SetTabItemClosedEPKc(ptr noundef nonnull %.013.i.i)
  %.pre.i101.i = load i8, ptr %i.dg, align 4, !tbaa !28, !range !19
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.lr.ph.i.i
  %i.dm = phi i8 [ %.pre.i101.i, %bb.ar ], [ 0, %bb.aq ], [ 1, %.lr.ph.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 37
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !285
  %i.do = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.do, %i.df
  br i1 %.not.i.i, label %_ZN19ExampleAppDocuments32NotifyOfDocumentsClosedElsewhereEv.exit.i, label %.lr.ph.i.i

_ZN19ExampleAppDocuments32NotifyOfDocumentsClosedElsewhereEv.exit.i: ; preds = %bb.as
  %.pre63.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !23 ; 2 uses
  %.pre64.i = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !24 ; 2 uses
  %i.dp = sext i32 %.pre64.i to i64
  %.idx49.i = mul nsw i64 %i.dp, 56
  %i.dq = getelementptr inbounds i8, ptr %.pre63.i, i64 %.idx49.i
  %.not9520.i = icmp eq i32 %.pre64.i, 0
  br i1 %.not9520.i, label %._crit_edge24.i, label %.lr.ph23.i

._crit_edge24.i:                                  ; preds = %bb.bd, %_ZN19ExampleAppDocuments32NotifyOfDocumentsClosedElsewhereEv.exit.i, %bb.ap
  call void @_ZN5ImGui9EndTabBarEv()
  br label %bb.be

.lr.ph23.i:                                       ; preds = %_ZN19ExampleAppDocuments32NotifyOfDocumentsClosedElsewhereEv.exit.i, %bb.bd
  %.08521.i = phi ptr [ %i.fc, %bb.bd ], [ %.pre63.i, %_ZN19ExampleAppDocuments32NotifyOfDocumentsClosedElsewhereEv.exit.i ] ; 8 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.08521.i, i64 36 ; 4 uses
  %i.ds = load i8, ptr %i.dr, align 4, !tbaa !28, !range !19, !noundef !20
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.at, label %bb.bd

bb.at:                                            ; preds = %.lr.ph23.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.du = getelementptr inbounds nuw i8, ptr %.08521.i, i64 32
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !286
  %i.dw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 64, ptr noundef nonnull @.str.2314, ptr noundef nonnull %.08521.i, i32 noundef %i.dv) #30 ; 0 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.08521.i, i64 38 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !37, !range !19, !noundef !20
  %i.dz = zext nneg i8 %i.dy to i32
  %i.ea = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dr, i32 noundef %i.dz)
  %i.eb = load i8, ptr %i.dr, align 4, !tbaa !28, !range !19, !noundef !20
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ed = load i8, ptr %i.dx, align 2, !tbaa !37, !range !19, !noundef !20
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  store i8 1, ptr %i.dr, align 4, !tbaa !28
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !32 ; 6 uses
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 20), align 4, !tbaa !33
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.aw, label %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i102.i

._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i102.i: ; preds = %bb.av
  %.pre.i103.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !34
  br label %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit108.i

bb.aw:                                            ; preds = %bb.av
  %i.ei = add nsw i32 %i.ef, 1
  %.not.i.i104.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i104.i, label %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i105.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ej = sdiv i32 %i.ef, 2
  %i.ek = add nsw i32 %i.ej, %i.ef
  br label %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i105.i

_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i105.i: ; preds = %bb.ax, %bb.aw
  %i.el = phi i32 [ %i.ek, %bb.ax ], [ 8, %bb.aw ]
  %i.em = call noundef i32 @llvm.smax.i32(i32 %i.el, i32 %i.ei) ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = shl nsw i64 %i.en, 3
  %i.ep = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.eo) ; 3 uses
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !34 ; 2 uses
  %.not6.i.i106.i = icmp eq ptr %i.eq, null
  br i1 %.not6.i.i106.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i105.i
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !32
  %i.es = sext i32 %i.er to i64
  %i.et = shl nsw i64 %i.es, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ep, ptr nonnull align 8 %i.eq, i64 %i.et, i1 false)
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !34
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.eu)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i105.i
  store ptr %i.ep, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !34
  store i32 %i.em, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 20), align 4, !tbaa !33
  %.pre3.i107.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !32
  br label %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit108.i

_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit108.i: ; preds = %bb.az, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i102.i
  %i.ev = phi i32 [ %i.ef, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i102.i ], [ %.pre3.i107.i, %bb.az ]
  %i.ew = phi ptr [ %.pre.i103.i, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i102.i ], [ %i.ep, %bb.az ]
  %i.ex = sext i32 %i.ev to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = ptrtoint ptr %.08521.i to i64
  store i64 %i.ez, ptr %i.ey, align 8
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !32
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !32
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit108.i, %bb.au, %bb.at
  call void @_ZN19ExampleAppDocuments21DisplayDocContextMenuEP10MyDocument(ptr noundef nonnull align 8 dereferenceable(41) @_ZZL23ShowExampleAppDocumentsPbE3app, ptr noundef nonnull %.08521.i)
  br i1 %i.ea, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN19ExampleAppDocuments18DisplayDocContentsEP10MyDocument(ptr noundef nonnull align 8 dereferenceable(41) @_ZZL23ShowExampleAppDocumentsPbE3app, ptr noundef nonnull %.08521.i)
  call void @_ZN5ImGui10EndTabItemEv()
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph23.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.08521.i, i64 56 ; 2 uses
  %.not95.i = icmp eq ptr %i.fc, %i.dq
  br i1 %.not95.i, label %._crit_edge24.i, label %.lr.ph23.i

bb.be:                                            ; preds = %._crit_edge24.i, %._crit_edge19.i
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 32), align 8, !tbaa !40
  %.not96.i = icmp eq ptr %i.fd, null
  br i1 %.not96.i, label %bb.bp, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fe = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 40), align 8, !tbaa !41, !range !19, !noundef !20
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fg = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.2302, i32 noundef 0) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fh = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.2302, i32 noundef 0)
  br i1 %i.fh, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.fi = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.fj = fmul float %i.fi, 3.000000e+01
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.fj)
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 32), align 8, !tbaa !40
  %i.fl = call noundef zeroext i1 @_ZN5ImGui9InputTextEPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.2303, ptr noundef %i.fk, i64 noundef 32, i32 noundef 64, ptr noundef null, ptr noundef null)
  br i1 %i.fl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 32), align 8, !tbaa !40
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 40), align 8, !tbaa !41, !range !19, !noundef !20
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN5ImGui20SetKeyboardFocusHereEi(i32 noundef -1)
  br label %bb.bm
end_hunk_0
