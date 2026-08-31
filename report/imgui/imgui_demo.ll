Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 134
begin_hunk_0_@_ZN5ImGui14ShowDemoWindowEPb:bb.a
bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN5ImGui14EndMainMenuBarEv()
  br label %_ZL25ShowExampleAppMainMenuBarv.exit

_ZL25ShowExampleAppMainMenuBarv.exit:             ; preds = %bb.j, %bb.e, %bb.d
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 4), align 4, !tbaa !16, !range !14, !noundef !15
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.k, label %_ZL23ShowExampleAppDocumentsPb.exit

bb.k:                                             ; preds = %_ZL25ShowExampleAppMainMenuBarv.exit
  %i.aa = load atomic i8, ptr @_ZGVZL23ShowExampleAppDocumentsPbE3app acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.o, !prof !8

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL23ShowExampleAppDocumentsPbE3app) #30
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

common.resume:                                    ; preds = %bb.ko, %bb.he, %bb.gc, %bb.cw, %bb.cq, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.mx, %bb.cq ], [ %i.ne, %bb.cw ], [ %i.anf, %bb.gc ], [ %i.aom, %bb.he ], [ %.pn.i, %bb.ko ]
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
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !17 ; 2 uses
  %i.aj = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !20 ; 3 uses
  %.not924.i = icmp eq i32 %i.aj, 0
  br i1 %.not924.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.t
  %i.ak = sext i32 %i.aj to i64
  %.idx.i = mul nsw i64 %i.ak, 56
  %i.al = add nsw i64 %.idx.i, -56                ; 2 uses
  %i.am = udiv i64 %i.al, 56
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %xtraiter = and i64 %i.an, 7                    ; 3 uses
  %i.ao = icmp ult i64 %i.al, 392
  br i1 %i.ao, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.an, 1152921504606846968
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.0896.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.cb, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0905.i.epil.init = phi ptr [ %i.ai, %.lr.ph.i.preheader ], [ %i.cc, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod240 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod240)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0896.i.epil = phi i32 [ %i.as, %.lr.ph.i.epil ], [ %.0896.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.0905.i.epil = phi ptr [ %i.at, %.lr.ph.i.epil ], [ %.0905.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0905.i.epil, i64 36
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !21, !range !14, !noundef !15
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = add nuw nsw i32 %.0896.i.epil, %i.ar    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0905.i.epil, i64 56
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !25

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.t
  %.089.lcssa.i = phi i32 [ 0, %bb.t ], [ %i.cb, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.as, %.lr.ph.i.epil ] ; 2 uses
  %i.au = icmp slt i32 %.089.lcssa.i, %i.aj
  %i.av = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.388, i1 noundef zeroext %i.au)
  br i1 %i.av, label %bb.u, label %bb.y

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0896.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.cb, %.lr.ph.i ]
  %.0905.i = phi ptr [ %i.ai, %.lr.ph.i.preheader.new ], [ %i.cc, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0905.i, i64 36
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !21, !range !14, !noundef !15
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = add nuw nsw i32 %.0896.i, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.0905.i, i64 92
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !21, !range !14, !noundef !15
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.az, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.0905.i, i64 148
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !21, !range !14, !noundef !15
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = add nuw nsw i32 %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.0905.i, i64 204
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !21, !range !14, !noundef !15
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.0905.i, i64 260
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !21, !range !14, !noundef !15
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bl, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.0905.i, i64 316
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !21, !range !14, !noundef !15
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %.0905.i, i64 372
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !21, !range !14, !noundef !15
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.bt, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.0905.i, i64 428
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !21, !range !14, !noundef !15
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = add nuw nsw i32 %i.bx, %i.ca            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0905.i, i64 448 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i

bb.u:                                             ; preds = %._crit_edge.i
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !17 ; 2 uses
  %i.ce = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !20 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %.idx47.i = mul nsw i64 %i.cf, 56
  %i.cg = getelementptr inbounds i8, ptr %i.cd, i64 %.idx47.i
  %.not937.i = icmp eq i32 %i.ce, 0
  br i1 %.not937.i, label %._crit_edge11.i, label %.lr.ph10.i

._crit_edge11.i:                                  ; preds = %bb.x, %bb.u
  tail call void @_ZN5ImGui7EndMenuEv()
  br label %bb.y

.lr.ph10.i:                                       ; preds = %bb.u, %bb.x
  %.0888.i = phi ptr [ %i.cl, %bb.x ], [ %i.cd, %bb.u ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0888.i, i64 36 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !21, !range !14, !noundef !15
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph10.i
  %i.ck = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull %.0888.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.ch, align 4, !tbaa !21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.lr.ph10.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.0888.i, i64 56 ; 2 uses
  %.not93.i = icmp eq ptr %i.cl, %i.cg
  br i1 %.not93.i, label %._crit_edge11.i, label %.lr.ph10.i

bb.y:                                             ; preds = %._crit_edge11.i, %._crit_edge.i
  %i.cm = icmp ne i32 %.089.lcssa.i, 0
  %i.cn = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2300, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %i.cm)
  br i1 %i.cn, label %bb.z, label %.loopexit3.i

bb.z:                                             ; preds = %bb.y
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !17 ; 2 uses
  %i.cp = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !20 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %.idx48.i = mul nsw i64 %i.cq, 56
  %i.cr = getelementptr inbounds i8, ptr %i.co, i64 %.idx48.i
  %.not9412.i = icmp eq i32 %i.cp, 0
  br i1 %.not9412.i, label %.loopexit3.i, label %.lr.ph15.preheader.i

.lr.ph15.preheader.i:                             ; preds = %bb.z
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !27
  br label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i, %.lr.ph15.preheader.i
  %i.cs = phi i32 [ %i.dn, %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i ], [ %.pre.i, %.lr.ph15.preheader.i ] ; 6 uses
  %.08713.i = phi ptr [ %i.do, %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i ], [ %i.co, %.lr.ph15.preheader.i ] ; 2 uses
  %173 = ptrtoint ptr %.08713.i to i64
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 20), align 4, !tbaa !31
  %i.cu = icmp eq i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.aa, label %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i.i: ; preds = %.lr.ph15.i
  %.pre.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !32
  br label %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i

bb.aa:                                            ; preds = %.lr.ph15.i
  %i.cv = add nsw i32 %i.cs, 1
  %.not.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sdiv i32 %i.cs, 2
  %i.cx = add nsw i32 %i.cw, %i.cs
  br label %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i.i: ; preds = %bb.ab, %bb.aa
  %i.cy = phi i32 [ %i.cx, %bb.ab ], [ 8, %bb.aa ]
  %i.cz = tail call noundef i32 @llvm.smax.i32(i32 %i.cy, i32 %i.cv) ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 3
  %i.dc = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.db) ; 3 uses
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !32 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not6.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i.i
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !27
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dc, ptr nonnull align 8 %i.dd, i64 %i.dg, i1 false)
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !32
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.dh)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i.i
  store ptr %i.dc, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !32
  store i32 %i.cz, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 20), align 4, !tbaa !31
  %.pre3.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !27
  br label %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i

_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i: ; preds = %bb.ad, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i.i
  %i.di = phi i32 [ %i.cs, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.ad ]
  %i.dj = phi ptr [ %.pre.i.i, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i.i ], [ %i.dc, %bb.ad ]
  %i.dk = sext i32 %i.di to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dk
  store i64 %173, ptr %i.dl, align 8
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !27
  %i.dn = add nsw i32 %i.dm, 1                    ; 2 uses
  store i32 %i.dn, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %.08713.i, i64 56 ; 2 uses
  %.not94.i = icmp eq ptr %i.do, %i.cr
  br i1 %.not94.i, label %.loopexit3.i, label %.lr.ph15.i

.loopexit3.i:                                     ; preds = %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i, %bb.z, %bb.y
  %i.dp = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2301, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.dp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.loopexit3.i
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 4), align 4, !tbaa !33
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.loopexit3.i
  tail call void @_ZN5ImGui7EndMenuEv()
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.s
  tail call void @_ZN5ImGui10EndMenuBarEv()
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.r
  %i.dq = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !34
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %bb.ai, label %._crit_edge19.i

bb.ai:                                            ; preds = %bb.ah
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !17 ; 4 uses
  tail call void @_ZN5ImGui6PushIDEPKv(ptr noundef nonnull %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 36 ; 3 uses
  %i.du = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dt)
  br i1 %i.du, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.dv = load i8, ptr %i.dt, align 4, !tbaa !21, !range !14, !noundef !15
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.dt, align 4, !tbaa !21
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 38
  store i8 0, ptr %i.dx, align 2, !tbaa !36
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  tail call void @_ZN5ImGui5PopIDEv()
  %i.dy = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !34
  %i.dz = icmp sgt i32 %i.dy, 1
  br i1 %i.dz, label %.lr.ph18.peel.next.i, label %._crit_edge19.i

._crit_edge19.i:                                  ; preds = %bb.ao, %bb.al, %bb.ah
  tail call void @_ZN5ImGui9SeparatorEv()
  %i.ea = tail call noundef zeroext i1 @_ZN5ImGui11BeginTabBarEPKci(ptr noundef nonnull @.str.211, i32 noundef 193)
  br i1 %i.ea, label %bb.ap, label %bb.be

.lr.ph18.peel.next.i:                             ; preds = %bb.al, %bb.ao
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ao ], [ 1, %bb.al ] ; 2 uses
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !17
  %i.ec = getelementptr inbounds nuw [56 x i8], ptr %i.eb, i64 %indvars.iv.i ; 4 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  tail call void @_ZN5ImGui6PushIDEPKv(ptr noundef nonnull %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 36 ; 3 uses
  %i.ee = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.ed)
  br i1 %i.ee, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.lr.ph18.peel.next.i
  %i.ef = load i8, ptr %i.ed, align 4, !tbaa !21, !range !14, !noundef !15
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 0, ptr %i.ed, align 4, !tbaa !21
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 38
  store i8 0, ptr %i.eh, align 2, !tbaa !36
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.lr.ph18.peel.next.i
  tail call void @_ZN5ImGui5PopIDEv()
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ei = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !34
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp slt i64 %indvars.iv.next.i, %i.ej
  br i1 %i.ek, label %.lr.ph18.peel.next.i, label %._crit_edge19.i, !llvm.loop !37

bb.ap:                                            ; preds = %._crit_edge19.i
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !17 ; 2 uses
  %i.em = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !20 ; 2 uses
  %i.en = sext i32 %i.em to i64
  %.idx.i.i = mul nsw i64 %i.en, 56
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 %.idx.i.i
  %.not12.i.i = icmp eq i32 %i.em, 0
  br i1 %.not12.i.i, label %._crit_edge24.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ap, %bb.as
  %.013.i.i = phi ptr [ %i.ex, %bb.as ], [ %i.el, %bb.ap ] ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 36 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 4, !tbaa !21, !range !14, !noundef !15
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 37
  %i.et = load i8, ptr %i.es, align 1, !tbaa !40, !range !14, !noundef !15
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZN5ImGui16SetTabItemClosedEPKc(ptr noundef nonnull %.013.i.i)
  %.pre.i101.i = load i8, ptr %i.ep, align 4, !tbaa !21, !range !14
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.lr.ph.i.i
  %i.ev = phi i8 [ %.pre.i101.i, %bb.ar ], [ 0, %bb.aq ], [ 1, %.lr.ph.i.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 37
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !40
  %i.ex = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ex, %i.eo
  br i1 %.not.i.i, label %_ZN19ExampleAppDocuments32NotifyOfDocumentsClosedElsewhereEv.exit.i, label %.lr.ph.i.i

_ZN19ExampleAppDocuments32NotifyOfDocumentsClosedElsewhereEv.exit.i: ; preds = %bb.as
  %.pre63.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !17 ; 2 uses
  %.pre64.i = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !20 ; 2 uses
  %i.ey = sext i32 %.pre64.i to i64
  %.idx49.i = mul nsw i64 %i.ey, 56
  %i.ez = getelementptr inbounds i8, ptr %.pre63.i, i64 %.idx49.i
  %.not9520.i = icmp eq i32 %.pre64.i, 0
  br i1 %.not9520.i, label %._crit_edge24.i, label %.lr.ph23.i

._crit_edge24.i:                                  ; preds = %bb.bd, %_ZN19ExampleAppDocuments32NotifyOfDocumentsClosedElsewhereEv.exit.i, %bb.ap
  call void @_ZN5ImGui9EndTabBarEv()
  br label %bb.be

.lr.ph23.i:                                       ; preds = %_ZN19ExampleAppDocuments32NotifyOfDocumentsClosedElsewhereEv.exit.i, %bb.bd
  %.08521.i = phi ptr [ %i.gk, %bb.bd ], [ %.pre63.i, %_ZN19ExampleAppDocuments32NotifyOfDocumentsClosedElsewhereEv.exit.i ] ; 8 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.08521.i, i64 36 ; 4 uses
  %i.fb = load i8, ptr %i.fa, align 4, !tbaa !21, !range !14, !noundef !15
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.at, label %bb.bd

bb.at:                                            ; preds = %.lr.ph23.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.fd = getelementptr inbounds nuw i8, ptr %.08521.i, i64 32
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !41
  %i.ff = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 64, ptr noundef nonnull @.str.2314, ptr noundef nonnull %.08521.i, i32 noundef %i.fe) #30 ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.08521.i, i64 38 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 2, !tbaa !36, !range !14, !noundef !15
  %i.fi = zext nneg i8 %i.fh to i32
  %i.fj = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull %i.i, ptr noundef nonnull %i.fa, i32 noundef %i.fi)
  %i.fk = load i8, ptr %i.fa, align 4, !tbaa !21, !range !14, !noundef !15
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fm = load i8, ptr %i.fg, align 2, !tbaa !36, !range !14, !noundef !15
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  store i8 1, ptr %i.fa, align 4, !tbaa !21
  %174 = ptrtoint ptr %.08521.i to i64
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !27 ; 6 uses
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 20), align 4, !tbaa !31
  %i.fq = icmp eq i32 %i.fo, %i.fp
  br i1 %i.fq, label %bb.aw, label %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i102.i

._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i102.i: ; preds = %bb.av
  %.pre.i103.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !32
  br label %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit108.i

bb.aw:                                            ; preds = %bb.av
  %i.fr = add nsw i32 %i.fo, 1
  %.not.i.i104.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i104.i, label %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i105.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fs = sdiv i32 %i.fo, 2
  %i.ft = add nsw i32 %i.fs, %i.fo
  br label %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i105.i

_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i105.i: ; preds = %bb.ax, %bb.aw
  %i.fu = phi i32 [ %i.ft, %bb.ax ], [ 8, %bb.aw ]
  %i.fv = call noundef i32 @llvm.smax.i32(i32 %i.fu, i32 %i.fr) ; 2 uses
  %i.fw = sext i32 %i.fv to i64
  %i.fx = shl nsw i64 %i.fw, 3
  %i.fy = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.fx) ; 3 uses
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !32 ; 2 uses
  %.not6.i.i106.i = icmp eq ptr %i.fz, null
  br i1 %.not6.i.i106.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i105.i
  %i.ga = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !27
  %i.gb = sext i32 %i.ga to i64
  %i.gc = shl nsw i64 %i.gb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.fy, ptr nonnull align 8 %i.fz, i64 %i.gc, i1 false)
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !32
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.gd)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i105.i
  store ptr %i.fy, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !32
  store i32 %i.fv, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 20), align 4, !tbaa !31
  %.pre3.i107.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !27
  br label %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit108.i

_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit108.i: ; preds = %bb.az, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i102.i
  %i.ge = phi i32 [ %i.fo, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i102.i ], [ %.pre3.i107.i, %bb.az ]
  %i.gf = phi ptr [ %.pre.i103.i, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i102.i ], [ %i.fy, %bb.az ]
  %i.gg = sext i32 %i.ge to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.gg
  store i64 %174, ptr %i.gh, align 8
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !27
  %i.gj = add nsw i32 %i.gi, 1
  store i32 %i.gj, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !27
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit108.i, %bb.au, %bb.at
  call void @_ZN19ExampleAppDocuments21DisplayDocContextMenuEP10MyDocument(ptr noundef nonnull align 8 dereferenceable(41) @_ZZL23ShowExampleAppDocumentsPbE3app, ptr noundef nonnull %.08521.i)
  br i1 %i.fj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN19ExampleAppDocuments18DisplayDocContentsEP10MyDocument(ptr noundef nonnull align 8 dereferenceable(41) @_ZZL23ShowExampleAppDocumentsPbE3app, ptr noundef nonnull %.08521.i)
  call void @_ZN5ImGui10EndTabItemEv()
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph23.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.08521.i, i64 56 ; 2 uses
  %.not95.i = icmp eq ptr %i.gk, %i.ez
  br i1 %.not95.i, label %._crit_edge24.i, label %.lr.ph23.i

bb.be:                                            ; preds = %._crit_edge24.i, %._crit_edge19.i
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 32), align 8, !tbaa !42
  %.not96.i = icmp eq ptr %i.gl, null
  br i1 %.not96.i, label %bb.bp, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 40), align 8, !tbaa !43, !range !14, !noundef !15
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.go = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.2302, i32 noundef 0) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.gp = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.2302, i32 noundef 0)
  br i1 %i.gp, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.gq = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.gr = fmul float %i.gq, 3.000000e+01
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.gr)
  %i.gs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 32), align 8, !tbaa !42
  %i.gt = call noundef zeroext i1 @_ZN5ImGui9InputTextEPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.2303, ptr noundef %i.gs, i64 noundef 32, i32 noundef 64, ptr noundef null, ptr noundef null)
  br i1 %i.gt, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 32), align 8, !tbaa !42
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.gu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 40), align 8, !tbaa !43, !range !14, !noundef !15
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN5ImGui20SetKeyboardFocusHereEi(i32 noundef -1)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bh
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 32), align 8, !tbaa !42
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 40), align 8, !tbaa !43
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.be
  %i.gw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !27 ; 5 uses
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %_ZN8ImVectorIP10MyDocumentE5clearEv.exit.i, label %.preheader2.i

.preheader2.i:                                    ; preds = %bb.bp
  %i.gy = icmp sgt i32 %i.gw, 0
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 24), align 8, !tbaa !32 ; 12 uses
  br i1 %i.gy, label %.lr.ph27.i, label %._crit_edge46.i

.lr.ph27.i:                                       ; preds = %.preheader2.i
  %wide.trip.count.i = zext nneg i32 %i.gw to i64 ; 4 uses
  %xtraiter241 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ha = icmp ult i32 %i.gw, 4
  br i1 %i.ha, label %.epil.preheader, label %.lr.ph27.i.new

.lr.ph27.i.new:                                   ; preds = %.lr.ph27.i
  %unroll_iter246 = and i64 %wide.trip.count.i, 2147483644
  br label %bb.br

._crit_edge28.i.unr-lcssa:                        ; preds = %bb.br
  %lcmp.mod243.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod243.not, label %._crit_edge28.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge28.i.unr-lcssa, %.lr.ph27.i
  %indvars.iv55.i.epil.init = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next56.i.3, %._crit_edge28.i.unr-lcssa ]
  %.08425.i.epil.init = phi i32 [ 0, %.lr.ph27.i ], [ %spec.select.i.3, %._crit_edge28.i.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter241, 0
  call void @llvm.assume(i1 %lcmp.mod245)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.epil.preheader
  %indvars.iv55.i.epil = phi i64 [ %indvars.iv55.i.epil.init, %.epil.preheader ], [ %indvars.iv.next56.i.epil, %bb.bq ] ; 2 uses
  %.08425.i.epil = phi i32 [ %.08425.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.bq ]
  %epil.iter242 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter242.next, %bb.bq ]
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv55.i.epil
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !44
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 38
  %i.he = load i8, ptr %i.hd, align 2, !tbaa !36, !range !14, !noundef !15
  %i.hf = zext nneg i8 %i.he to i32
  %spec.select.i.epil = add nuw nsw i32 %.08425.i.epil, %i.hf ; 2 uses
  %indvars.iv.next56.i.epil = add nuw nsw i64 %indvars.iv55.i.epil, 1
  %epil.iter242.next = add i64 %epil.iter242, 1   ; 2 uses
  %epil.iter242.cmp.not = icmp eq i64 %epil.iter242.next, %xtraiter241
  br i1 %epil.iter242.cmp.not, label %._crit_edge28.i, label %bb.bq, !llvm.loop !45

._crit_edge28.i:                                  ; preds = %bb.bq, %._crit_edge28.i.unr-lcssa
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.3, %._crit_edge28.i.unr-lcssa ], [ %spec.select.i.epil, %bb.bq ]
  %i.hg = icmp eq i32 %spec.select.i.lcssa, 0
  br i1 %i.hg, label %.lr.ph45.i.preheader, label %bb.bs

.lr.ph45.i.preheader:                             ; preds = %._crit_edge28.i
  %xtraiter252 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.hh = icmp ult i32 %i.gw, 4
  br i1 %i.hh, label %.lr.ph45.i.epil.preheader, label %.lr.ph45.i.preheader.new

.lr.ph45.i.preheader.new:                         ; preds = %.lr.ph45.i.preheader
  %unroll_iter256 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph45.i

bb.br:                                            ; preds = %bb.br, %.lr.ph27.i.new
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph27.i.new ], [ %indvars.iv.next56.i.3, %bb.br ] ; 5 uses
  %.08425.i = phi i32 [ 0, %.lr.ph27.i.new ], [ %spec.select.i.3, %bb.br ]
  %niter247 = phi i64 [ 0, %.lr.ph27.i.new ], [ %niter247.next.3, %bb.br ]
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv55.i
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !44
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 38
  %i.hl = load i8, ptr %i.hk, align 2, !tbaa !36, !range !14, !noundef !15
  %i.hm = zext nneg i8 %i.hl to i32
  %spec.select.i = add nuw nsw i32 %.08425.i, %i.hm
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv55.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !44
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 38
  %i.hr = load i8, ptr %i.hq, align 2, !tbaa !36, !range !14, !noundef !15
  %i.hs = zext nneg i8 %i.hr to i32
  %spec.select.i.1 = add nuw nsw i32 %spec.select.i, %i.hs
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv55.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !44
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 38
  %i.hx = load i8, ptr %i.hw, align 2, !tbaa !36, !range !14, !noundef !15
  %i.hy = zext nneg i8 %i.hx to i32
  %spec.select.i.2 = add nuw nsw i32 %spec.select.i.1, %i.hy
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv55.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !44
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 38
  %i.id = load i8, ptr %i.ic, align 2, !tbaa !36, !range !14, !noundef !15
  %i.ie = zext nneg i8 %i.id to i32
  %spec.select.i.3 = add nuw nsw i32 %spec.select.i.2, %i.ie ; 3 uses
  %indvars.iv.next56.i.3 = add nuw nsw i64 %indvars.iv55.i, 4 ; 2 uses
  %niter247.next.3 = add i64 %niter247, 4         ; 2 uses
  %niter247.ncmp.3 = icmp eq i64 %niter247.next.3, %unroll_iter246
  br i1 %niter247.ncmp.3, label %._crit_edge28.i.unr-lcssa, label %bb.br, !llvm.loop !46

._crit_edge46.i:                                  ; preds = %.preheader2.i
  %.not.i109.i = icmp eq ptr %i.gz, null
  br i1 %.not.i109.i, label %_ZN8ImVectorIP10MyDocumentE5clearEv.exit.i, label %._crit_edge46.thread.i

._crit_edge46.thread.i.loopexit.unr-lcssa:        ; preds = %.lr.ph45.i
  %lcmp.mod254.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod254.not, label %._crit_edge46.thread.i, label %.lr.ph45.i.epil.preheader

.lr.ph45.i.epil.preheader:                        ; preds = %._crit_edge46.thread.i.loopexit.unr-lcssa, %.lr.ph45.i.preheader
  %indvars.iv58.i.epil.init = phi i64 [ 0, %.lr.ph45.i.preheader ], [ %indvars.iv.next59.i.3, %._crit_edge46.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod255 = icmp ne i64 %xtraiter252, 0
  call void @llvm.assume(i1 %lcmp.mod255)
  br label %.lr.ph45.i.epil

.lr.ph45.i.epil:                                  ; preds = %.lr.ph45.i.epil, %.lr.ph45.i.epil.preheader
  %indvars.iv58.i.epil = phi i64 [ %indvars.iv.next59.i.epil, %.lr.ph45.i.epil ], [ %indvars.iv58.i.epil.init, %.lr.ph45.i.epil.preheader ] ; 2 uses
  %epil.iter253 = phi i64 [ %epil.iter253.next, %.lr.ph45.i.epil ], [ 0, %.lr.ph45.i.epil.preheader ]
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv58.i.epil
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !44 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 36
  store i8 0, ptr %i.ih, align 4, !tbaa !21
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 38
  store i8 0, ptr %i.ii, align 2, !tbaa !36
  %indvars.iv.next59.i.epil = add nuw nsw i64 %indvars.iv58.i.epil, 1
  %epil.iter253.next = add i64 %epil.iter253, 1   ; 2 uses
  %epil.iter253.cmp.not = icmp eq i64 %epil.iter253.next, %xtraiter252
  br i1 %epil.iter253.cmp.not, label %._crit_edge46.thread.i, label %.lr.ph45.i.epil, !llvm.loop !47

end_hunk_0
begin_hunk_1_@_ZN5ImGui14ShowDemoWindowEPb:bb.a
  %i.ahy = fcmp olt float %i.ahw, %i.ahx
  br i1 %i.ahy, label %.lr.ph37.i75, label %.loopexit.i71, !llvm.loop !100

.loopexit.i71:                                    ; preds = %.lr.ph37.i75, %._crit_edge.i74, %bb.fh
  %i.ahz = load i32, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, align 8, !tbaa !62
  %i.aia = icmp sgt i32 %i.ahz, 0
  br i1 %i.aia, label %.lr.ph40.i, label %._crit_edge41.i

._crit_edge41.i:                                  ; preds = %.lr.ph40.i, %.loopexit.i71
  call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %i.acm)
  call void @_ZN5ImGui10EndTabItemEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #30
  br label %bb.fj

.lr.ph40.i:                                       ; preds = %.loopexit.i71, %.lr.ph40.i
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i73, %.lr.ph40.i ], [ 0, %.loopexit.i71 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #30
  %i.aib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, i64 8), align 8, !tbaa !66
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.aib, i64 %indvars.iv.i72 ; 2 uses
  %i.aid = load <2 x float>, ptr %i.aic, align 4, !tbaa !56
  %i.aie = fadd <2 x float> %i.acv, %i.aid
  store <2 x float> %i.aie, ptr %153, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #30
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  %i.aig = load <2 x float>, ptr %i.aif, align 4, !tbaa !56
  %i.aih = fadd <2 x float> %i.acv, %i.aig
  store <2 x float> %i.aih, ptr %154, align 8, !tbaa !56
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.acm, ptr noundef nonnull align 4 dereferenceable(8) %153, ptr noundef nonnull align 4 dereferenceable(8) %154, i32 noundef -16711681, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i72, 2 ; 2 uses
  %i.aii = load i32, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, align 8, !tbaa !62
  %i.aij = trunc nuw i64 %indvars.iv.next.i73 to i32
  %i.aik = icmp sgt i32 %i.aii, %i.aij
  br i1 %i.aik, label %.lr.ph40.i, label %._crit_edge41.i, !llvm.loop !101

bb.fj:                                            ; preds = %._crit_edge41.i, %bb.dq
  %i.ail = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull @.str.2285, ptr noundef null, i32 noundef 0)
  br i1 %i.ail, label %bb.fk, label %bb.fr

bb.fk:                                            ; preds = %bb.fj
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 10494, ptr noundef nonnull @.str.2286)
  %i.aim = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2287, ptr noundef nonnull @_ZZL29ShowExampleAppCustomRenderingPbE7draw_bg) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ain = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ain, label %bb.fl, label %_ZL10HelpMarkerPKc.exit.i

bb.fl:                                            ; preds = %bb.fk
  %i.aio = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.aip = fmul float %i.aio, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.aip)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.2288, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit.i

_ZL10HelpMarkerPKc.exit.i:                        ; preds = %bb.fl, %bb.fk
  %i.aiq = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2289, ptr noundef nonnull @_ZZL29ShowExampleAppCustomRenderingPbE7draw_fg) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.air = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.air, label %bb.fm, label %_ZL10HelpMarkerPKc.exit342.i

bb.fm:                                            ; preds = %_ZL10HelpMarkerPKc.exit.i
  %i.ais = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.ait = fmul float %i.ais, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.ait)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.2290, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit342.i

_ZL10HelpMarkerPKc.exit342.i:                     ; preds = %bb.fm, %_ZL10HelpMarkerPKc.exit.i
  %i.aiu = call <2 x float> @_ZN5ImGui12GetWindowPosEv()
  %i.aiv = call <2 x float> @_ZN5ImGui13GetWindowSizeEv() ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #30
  %.sroa.040.4.vec.extract.i = extractelement <2 x float> %i.aiv, i64 1
  %i.aiw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aiv, <2 x float> splat (float 5.000000e-01), <2 x float> %i.aiu)
  store <2 x float> %i.aiw, ptr %155, align 8, !tbaa !56
  %i.aix = load i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE7draw_bg, align 1, !tbaa !33, !range !14, !noundef !15
  %i.aiy = trunc nuw i8 %i.aix to i1
  br i1 %i.aiy, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %_ZL10HelpMarkerPKc.exit342.i
  %.sroa.040.0.vec.extract.i = extractelement <2 x float> %i.aiv, i64 0
  %i.aiz = call noundef ptr @_ZN5ImGui21GetBackgroundDrawListEv()
  %i.aja = fmul float %.sroa.040.0.vec.extract.i, 6.000000e-01
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.aiz, ptr noundef nonnull align 4 dereferenceable(8) %155, float noundef %i.aja, i32 noundef -939523841, i32 noundef 0, float noundef 1.400000e+01)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %_ZL10HelpMarkerPKc.exit342.i
  %i.ajb = load i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE7draw_fg, align 1, !tbaa !33, !range !14, !noundef !15
  %i.ajc = trunc nuw i8 %i.ajb to i1
  br i1 %i.ajc, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.ajd = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv()
  %i.aje = fmul float %.sroa.040.4.vec.extract.i, 6.000000e-01
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ajd, ptr noundef nonnull align 4 dereferenceable(8) %155, float noundef %i.aje, i32 noundef -939458816, i32 noundef 0, float noundef 1.000000e+01)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  call void @_ZN5ImGui10EndTabItemEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #30
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fj
  %i.ajf = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull @.str.2291, ptr noundef null, i32 noundef 0)
  br i1 %i.ajf, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 10516, ptr noundef nonnull @.str.2292)
  %i.ajg = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() ; 9 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2293)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2294)
  %i.ajh = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #30
  %.sroa.020.0.vec.extract.i = extractelement <2 x float> %i.ajh, i64 0
  %.sroa.020.4.vec.extract.i = extractelement <2 x float> %i.ajh, i64 1
  store float %.sroa.020.0.vec.extract.i, ptr %156, align 4, !tbaa !49
  %i.aji = getelementptr inbounds nuw i8, ptr %156, i64 4
  store float %.sroa.020.4.vec.extract.i, ptr %i.aji, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #30
  %i.ajj = fadd <2 x float> %i.ajh, splat (float 5.000000e+01)
  store <2 x float> %i.ajj, ptr %157, align 8, !tbaa !56
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ajg, ptr noundef nonnull align 4 dereferenceable(8) %156, ptr noundef nonnull align 4 dereferenceable(8) %157, i32 noundef -65536, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #30
  %i.ajk = fadd <2 x float> %i.ajh, splat (float 2.500000e+01)
  store <2 x float> %i.ajk, ptr %158, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #30
  %i.ajl = fadd <2 x float> %i.ajh, splat (float 7.500000e+01)
  store <2 x float> %i.ajl, ptr %159, align 8, !tbaa !56
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ajg, ptr noundef nonnull align 4 dereferenceable(8) %158, ptr noundef nonnull align 4 dereferenceable(8) %159, i32 noundef -16776961, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #30
  store <2 x float> splat (float 7.500000e+01), ptr %160, align 8, !tbaa !56
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %160)
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #30
  call void @_ZN5ImGui9SeparatorEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2295)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2296)
  %i.ajm = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() ; 5 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajg, i64 136 ; 4 uses
  call void @_ZN18ImDrawListSplitter5SplitEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ajn, ptr noundef nonnull align 8 dereferenceable(224) %i.ajg, i32 noundef 2)
  call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ajn, ptr noundef nonnull align 8 dereferenceable(224) %i.ajg, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #30
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.ajm, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.ajm, i64 1
  store float %.sroa.0.0.vec.extract.i, ptr %161, align 4, !tbaa !49
  %i.ajo = getelementptr inbounds nuw i8, ptr %161, i64 4
  store float %.sroa.0.4.vec.extract.i, ptr %i.ajo, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #30
  %i.ajp = fadd <2 x float> %i.ajm, splat (float 5.000000e+01)
  store <2 x float> %i.ajp, ptr %162, align 8, !tbaa !56
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ajg, ptr noundef nonnull align 4 dereferenceable(8) %161, ptr noundef nonnull align 4 dereferenceable(8) %162, i32 noundef -65536, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #30
  call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ajn, ptr noundef nonnull align 8 dereferenceable(224) %i.ajg, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #30
  %i.ajq = fadd <2 x float> %i.ajm, splat (float 2.500000e+01)
  store <2 x float> %i.ajq, ptr %163, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #30
  %i.ajr = fadd <2 x float> %i.ajm, splat (float 7.500000e+01)
  store <2 x float> %i.ajr, ptr %164, align 8, !tbaa !56
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ajg, ptr noundef nonnull align 4 dereferenceable(8) %163, ptr noundef nonnull align 4 dereferenceable(8) %164, i32 noundef -16776961, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #30
  call void @_ZN18ImDrawListSplitter5MergeEP10ImDrawList(ptr noundef nonnull align 8 dereferenceable(24) %i.ajn, ptr noundef nonnull align 8 dereferenceable(224) %i.ajg)
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #30
  store <2 x float> splat (float 7.500000e+01), ptr %165, align 8, !tbaa !56
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %165)
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #30
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2297)
  call void @_ZN5ImGui10EndTabItemEv()
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  call void @_ZN5ImGui9EndTabBarEv()
  br label %_ZL29ShowExampleAppCustomRenderingPb.exit.sink.split

_ZL29ShowExampleAppCustomRenderingPb.exit.sink.split: ; preds = %bb.cz, %bb.ft, %bb.cy
  call void @_ZN5ImGui3EndEv()
  br label %_ZL29ShowExampleAppCustomRenderingPb.exit

_ZL29ShowExampleAppCustomRenderingPb.exit:        ; preds = %_ZL29ShowExampleAppCustomRenderingPb.exit.sink.split, %bb.cx
  %i.ajs = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 5), align 1, !tbaa !102, !range !14, !noundef !15
  %i.ajt = trunc nuw i8 %i.ajs to i1
  br i1 %i.ajt, label %bb.fu, label %bb.fw

bb.fu:                                            ; preds = %_ZL29ShowExampleAppCustomRenderingPb.exit
  %i.aju = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 56
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !103 ; 3 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 40
  %.sroa.011.0.copyload.i = load i64, ptr %i.ajx, align 8, !tbaa !104
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajw, i64 48
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !105
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajw, i64 56
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !106
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 36
  %i.akb = load <2 x i32>, ptr %i.aka, align 4, !tbaa !61 ; 3 uses
  %i.akc = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2155, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 5), i32 noundef 0)
  br i1 %i.akc, label %bb.fv, label %_ZL25ShowExampleAppImageViewerPb.exit

bb.fv:                                            ; preds = %bb.fu
  call fastcc void @_ZL30ExampleImageViewer_DrawOptionsP22ExampleImageViewerData(ptr noundef nonnull @_ZZL25ShowExampleAppImageViewerPbE12image_viewer)
  %i.akd = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() ; 2 uses
  %i.ake = call noundef zeroext i1 @_ZN5ImGui17IsWindowAppearingEv()
  %i.akf = sitofp <2 x i32> %i.akb to <2 x float>
  %i.akg = fmul nnan <2 x float> %i.akf, <float 3.000000e+00, float 4.000000e+00>
  %i.akh = insertelement <2 x i1> poison, i1 %i.ake, i64 0
  %i.aki = shufflevector <2 x i1> %i.akh, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.akj = select <2 x i1> %i.aki, <2 x float> %i.akg, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %i.akk = fcmp oge <2 x float> %i.akd, %i.akj
  %i.akl = select <2 x i1> %i.akk, <2 x float> %i.akd, <2 x float> %i.akj
  %175 = inttoptr i64 %.sroa.011.0.copyload.i to ptr
  %i.akm = extractelement <2 x i32> %i.akb, i64 0
  %i.akn = extractelement <2 x i32> %i.akb, i64 1
  call fastcc void @_ZL29ExampleImageViewer_DrawCanvasP22ExampleImageViewerData6ImVec212ImTextureRefii(ptr noundef nonnull @_ZZL25ShowExampleAppImageViewerPbE12image_viewer, <2 x float> %i.akl, ptr %175, i64 %.sroa.4.0.copyload.i, i32 noundef %i.akm, i32 noundef %i.akn)
  br label %_ZL25ShowExampleAppImageViewerPb.exit

_ZL25ShowExampleAppImageViewerPb.exit:            ; preds = %bb.fu, %bb.fv
  call void @_ZN5ImGui3EndEv()
  br label %bb.fw

bb.fw:                                            ; preds = %_ZL25ShowExampleAppImageViewerPb.exit, %_ZL29ShowExampleAppCustomRenderingPb.exit
  %i.ako = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 6), align 2, !tbaa !120, !range !14, !noundef !15
  %i.akp = trunc nuw i8 %i.ako to i1
  br i1 %i.akp, label %bb.fx, label %bb.gd

bb.fx:                                            ; preds = %bb.fw
  %i.akq = load atomic i8, ptr @_ZGVZL17ShowExampleAppLogPbE3log acquire, align 8
  %i.akr = icmp eq i8 %i.akq, 0
  br i1 %i.akr, label %bb.fy, label %bb.gb, !prof !8

bb.fy:                                            ; preds = %bb.fx
  %i.aks = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL17ShowExampleAppLogPbE3log) #30
  %.not.i84 = icmp eq i32 %i.aks, 0
  br i1 %.not.i84, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZN13ExampleAppLogC2Ev(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log)
          to label %bb.ga unwind label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.akt = call i32 @__cxa_atexit(ptr nonnull @_ZN13ExampleAppLogD2Ev, ptr nonnull @_ZZL17ShowExampleAppLogPbE3log, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL17ShowExampleAppLogPbE3log) #30
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fy, %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #30
  store <2 x float> <float 5.000000e+02, float 4.000000e+02>, ptr %95, align 8, !tbaa !56
  call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %95, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #30
  %i.aku = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2156, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 6), i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9581, ptr noundef nonnull @.str.2157)
  %i.akv = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.2158)
  br i1 %i.akv, label %.preheader.preheader.i, label %_ZL17ShowExampleAppLogPb.exit

.preheader.preheader.i:                           ; preds = %bb.gb
  %i.akw = load i32, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !61 ; 2 uses
  %i.akx = srem i32 %i.akw, 3
  %i.aky = sext i32 %i.akx to i64
  %i.akz = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.categories, i64 %i.aky
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !121
  %i.alb = srem i32 %i.akw, 7
  %i.alc = sext i32 %i.alb to i64
  %i.ald = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.words, i64 %i.alc
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !121
  %i.alf = call noundef i32 @_ZN5ImGui13GetFrameCountEv()
  %i.alg = call noundef double @_ZN5ImGui7GetTimeEv()
  call void (ptr, ptr, ...) @_ZN13ExampleAppLog6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2169, i32 noundef %i.alf, ptr noundef %i.ala, double noundef %i.alg, ptr noundef %i.ale)
  %i.alh = load i32, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !61
  %i.ali = add nsw i32 %i.alh, 1                  ; 3 uses
  store i32 %i.ali, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !61
  %i.alj = srem i32 %i.ali, 3
  %i.alk = sext i32 %i.alj to i64
  %i.all = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.categories, i64 %i.alk
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !121
  %i.aln = srem i32 %i.ali, 7
  %i.alo = sext i32 %i.aln to i64
  %i.alp = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.words, i64 %i.alo
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !121
  %i.alr = call noundef i32 @_ZN5ImGui13GetFrameCountEv()
  %i.als = call noundef double @_ZN5ImGui7GetTimeEv()
  call void (ptr, ptr, ...) @_ZN13ExampleAppLog6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2169, i32 noundef %i.alr, ptr noundef %i.alm, double noundef %i.als, ptr noundef %i.alq)
  %i.alt = load i32, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !61
  %i.alu = add nsw i32 %i.alt, 1                  ; 3 uses
  store i32 %i.alu, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !61
  %i.alv = srem i32 %i.alu, 3
  %i.alw = sext i32 %i.alv to i64
  %i.alx = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.categories, i64 %i.alw
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !121
  %i.alz = srem i32 %i.alu, 7
  %i.ama = sext i32 %i.alz to i64
  %i.amb = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.words, i64 %i.ama
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !121
  %i.amd = call noundef i32 @_ZN5ImGui13GetFrameCountEv()
  %i.ame = call noundef double @_ZN5ImGui7GetTimeEv()
  call void (ptr, ptr, ...) @_ZN13ExampleAppLog6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2169, i32 noundef %i.amd, ptr noundef %i.aly, double noundef %i.ame, ptr noundef %i.amc)
  %i.amf = load i32, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !61
  %i.amg = add nsw i32 %i.amf, 1                  ; 3 uses
  store i32 %i.amg, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !61
  %i.amh = srem i32 %i.amg, 3
  %i.ami = sext i32 %i.amh to i64
  %i.amj = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.categories, i64 %i.ami
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !121
  %i.aml = srem i32 %i.amg, 7
  %i.amm = sext i32 %i.aml to i64
  %i.amn = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.words, i64 %i.amm
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !121
  %i.amp = call noundef i32 @_ZN5ImGui13GetFrameCountEv()
  %i.amq = call noundef double @_ZN5ImGui7GetTimeEv()
  call void (ptr, ptr, ...) @_ZN13ExampleAppLog6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2169, i32 noundef %i.amp, ptr noundef %i.amk, double noundef %i.amq, ptr noundef %i.amo)
  %i.amr = load i32, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !61
  %i.ams = add nsw i32 %i.amr, 1                  ; 3 uses
  store i32 %i.ams, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !61
  %i.amt = srem i32 %i.ams, 3
  %i.amu = sext i32 %i.amt to i64
  %i.amv = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.categories, i64 %i.amu
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !121
  %i.amx = srem i32 %i.ams, 7
  %i.amy = sext i32 %i.amx to i64
  %i.amz = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.words, i64 %i.amy
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !121
  %i.anb = call noundef i32 @_ZN5ImGui13GetFrameCountEv()
  %i.anc = call noundef double @_ZN5ImGui7GetTimeEv()
  call void (ptr, ptr, ...) @_ZN13ExampleAppLog6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2169, i32 noundef %i.anb, ptr noundef %i.amw, double noundef %i.anc, ptr noundef %i.ana)
  %i.and = load i32, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !61
  %i.ane = add nsw i32 %i.and, 1
  store i32 %i.ane, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !61
  br label %_ZL17ShowExampleAppLogPb.exit

bb.gc:                                            ; preds = %bb.fz
  %i.anf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL17ShowExampleAppLogPbE3log) #30
  br label %common.resume

_ZL17ShowExampleAppLogPb.exit:                    ; preds = %bb.gb, %.preheader.preheader.i
  call void @_ZN5ImGui3EndEv()
  call void @_ZN13ExampleAppLog4DrawEPKcPb(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2156, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 6))
  br label %bb.gd

bb.gd:                                            ; preds = %_ZL17ShowExampleAppLogPb.exit, %bb.fw
  %i.ang = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 7), align 1, !tbaa !122, !range !14, !noundef !15
  %i.anh = trunc nuw i8 %i.ang to i1
  br i1 %i.anh, label %bb.ge, label %bb.gw

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #30
  store <2 x float> <float 5.000000e+02, float 4.400000e+02>, ptr %89, align 8, !tbaa !56
  call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %89, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #30
  %i.ani = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2171, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 7), i32 noundef 1024)
  br i1 %i.ani, label %bb.gf, label %_ZL20ShowExampleAppLayoutPb.exit

bb.gf:                                            ; preds = %bb.ge
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9612, ptr noundef nonnull @.str.2172)
  %i.anj = call noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv()
  br i1 %i.anj, label %bb.gg, label %bb.gl

bb.gg:                                            ; preds = %bb.gf
  %i.ank = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.1530, i1 noundef zeroext true)
  br i1 %i.ank, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %bb.gg
  %i.anl = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.907, ptr noundef nonnull @.str.2173, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.anl, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 7), align 1, !tbaa !33
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  call void @_ZN5ImGui7EndMenuEv()
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gg
  call void @_ZN5ImGui10EndMenuBarEv()
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #30
  store <2 x float> <float 1.500000e+02, float 0.000000e+00>, ptr %90, align 8, !tbaa !56
  %i.anm = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.2174, ptr noundef nonnull align 4 dereferenceable(8) %90, i32 noundef 5, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #30
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gp
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui10BeginGroupEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #30
  %i.ann = call noundef float @_ZN5ImGui25GetFrameHeightWithSpacingEv()
  %i.ano = fneg float %i.ann
  store float 0.000000e+00, ptr %92, align 4, !tbaa !49
  %i.anp = getelementptr inbounds nuw i8, ptr %92, i64 4
  store float %i.ano, ptr %i.anp, align 4, !tbaa !51
  %i.anq = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.2176, ptr noundef nonnull align 4 dereferenceable(8) %92, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #30
  %i.anr = load i32, ptr @_ZZL20ShowExampleAppLayoutPbE8selected, align 4, !tbaa !61
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2177, i32 noundef %i.anr)
  call void @_ZN5ImGui9SeparatorEv()
  %i.ans = call noundef zeroext i1 @_ZN5ImGui11BeginTabBarEPKci(ptr noundef nonnull @.str.2178, i32 noundef 0)
  br i1 %i.ans, label %bb.gq, label %bb.gv

bb.gn:                                            ; preds = %bb.gp, %bb.gl
  %.01.i = phi i32 [ 0, %bb.gl ], [ %i.anx, %bb.gp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.ant = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.2175, i32 noundef %.01.i) #30 ; 0 uses
  %i.anu = load i32, ptr @_ZZL20ShowExampleAppLayoutPbE8selected, align 4, !tbaa !61
  %i.anv = icmp eq i32 %i.anu, %.01.i
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #30
  store <2 x float> zeroinitializer, ptr %91, align 8, !tbaa !56
  %i.anw = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.h, i1 noundef zeroext %i.anv, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(8) %91)
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #30
  br i1 %i.anw, label %bb.go, label %bb.gp

end_hunk_1
begin_hunk_2_@_ZL17DemoWindowWidgetsP19ImGuiDemoWindowData:bb.a
bb.ew:                                            ; preds = %_ZL27DemoWindowWidgetsComboBoxesv.exit
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1197, ptr noundef nonnull @.str.553)
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.400)
  %i.nq = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.554, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, i32 noundef 2) ; 0 uses
  %i.nr = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.555, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, i32 noundef 4096) ; 0 uses
  %i.ns = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.556, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, i32 noundef 8192) ; 0 uses
  %i.nt = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.557, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, i32 noundef 16384) ; 0 uses
  %i.nu = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.558, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, i32 noundef 8) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.nv = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.nv, label %bb.ex, label %_ZL10HelpMarkerPKc.exit.i16

bb.ex:                                            ; preds = %bb.ew
  %i.nw = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.nx = fmul float %i.nw, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.nx)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.559, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit.i16

_ZL10HelpMarkerPKc.exit.i16:                      ; preds = %bb.ex, %bb.ew
  %i.ny = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.560, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, i32 noundef 512) ; 0 uses
  %i.nz = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.561, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, i32 noundef 2048) ; 0 uses
  %i.oa = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.562, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, i32 noundef 524288) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ob = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ob, label %bb.ey, label %_ZL10HelpMarkerPKc.exit39.i17

bb.ey:                                            ; preds = %_ZL10HelpMarkerPKc.exit.i16
  %i.oc = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.od = fmul float %i.oc, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.od)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.563, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit39.i17

_ZL10HelpMarkerPKc.exit39.i17:                    ; preds = %bb.ey, %_ZL10HelpMarkerPKc.exit.i16
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1211, ptr noundef nonnull @.str.564)
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.565)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.566)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.oe = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.oe, label %bb.ez, label %_ZL10HelpMarkerPKc.exit40.i18

bb.ez:                                            ; preds = %_ZL10HelpMarkerPKc.exit39.i17
  %i.of = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.og = fmul float %i.of, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.og)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.567, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit40.i18

_ZL10HelpMarkerPKc.exit40.i18:                    ; preds = %bb.ez, %_ZL10HelpMarkerPKc.exit39.i17
  %i.oh = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !61
  %i.oi = call noundef zeroext i1 @_ZN5ImGui10ColorEdit3EPKcPfi(ptr noundef nonnull @.str.568, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef %i.oh) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1219, ptr noundef nonnull @.str.569)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.570)
  %i.oj = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !61
  %i.ok = or i32 %i.oj, 2097152
  %i.ol = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.571, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef %i.ok) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1223, ptr noundef nonnull @.str.572)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.573)
  %i.om = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !61
  %i.on = or i32 %i.om, 16777216
  %i.oo = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.574, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef %i.on) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1227, ptr noundef nonnull @.str.575)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.576)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.op = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.op, label %bb.fa, label %_ZL10HelpMarkerPKc.exit41.i19

bb.fa:                                            ; preds = %_ZL10HelpMarkerPKc.exit40.i18
  %i.oq = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.or = fmul float %i.oq, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.or)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.577, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit41.i19

_ZL10HelpMarkerPKc.exit41.i19:                    ; preds = %bb.fa, %_ZL10HelpMarkerPKc.exit40.i18
  %i.os = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !61
  %i.ot = or i32 %i.os, 160
  %i.ou = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.578, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef %i.ot) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1235, ptr noundef nonnull @.str.579)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.580)
  %.b.i = load i1, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE18saved_palette_init, align 1
  br i1 %.b.i, label %bb.fc, label %.preheader.i20

bb.fb:                                            ; preds = %.preheader.i20
  store i1 true, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE18saved_palette_init, align 1
  br label %bb.fc

.preheader.i20:                                   ; preds = %_ZL10HelpMarkerPKc.exit41.i19, %.preheader.i20
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i20 ], [ 0, %_ZL10HelpMarkerPKc.exit41.i19 ] ; 3 uses
  %i.ov = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ow = uitofp nneg i32 %i.ov to float
  %i.ox = fdiv float %i.ow, 3.100000e+01
  %i.oy = getelementptr inbounds nuw [16 x i8], ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE13saved_palette, i64 %indvars.iv.i ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ox, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.oy, ptr noundef nonnull align 4 dereferenceable(4) %i.oz, ptr noundef nonnull align 4 dereferenceable(4) %i.pa)
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 12
  store float 1.000000e+00, ptr %i.pb, align 4, !tbaa !238
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i21, label %bb.fb, label %.preheader.i20, !llvm.loop !239

bb.fc:                                            ; preds = %bb.fb, %_ZL10HelpMarkerPKc.exit41.i19
  %i.pc = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #30
  store <2 x float> zeroinitializer, ptr %68, align 8, !tbaa !56
  %i.pd = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.581, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef %i.pc, ptr noundef nonnull align 4 dereferenceable(8) %68)
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #30
  %i.pe = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 100
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !57
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.pg)
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #30
  store <2 x float> zeroinitializer, ptr %69, align 8, !tbaa !56
  %i.ph = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.582, ptr noundef nonnull align 4 dereferenceable(8) %69)
  %i.pi = or i1 %i.pd, %i.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #30
  br i1 %i.pi, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.pj = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.583, i32 noundef 0) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE12backup_color, ptr noundef nonnull align 8 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i64 16, i1 false), !tbaa.struct !60
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.pk = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.583, i32 noundef 0)
  br i1 %i.pk, label %bb.ff, label %bb.fu

bb.ff:                                            ; preds = %bb.fe
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.584)
  call void @_ZN5ImGui9SeparatorEv()
  %i.pl = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !61
  %i.pm = or i32 %i.pl, 272
  %i.pn = call noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef nonnull @.str.585, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef %i.pm, ptr noundef null) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui10BeginGroupEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.586)
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #30
  store <2 x float> <float 6.000000e+01, float 4.000000e+01>, ptr %70, align 8, !tbaa !56
  %i.po = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.587, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef 16388, ptr noundef nonnull align 4 dereferenceable(8) %70) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #30
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.588)
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #30
  store <2 x float> <float 6.000000e+01, float 4.000000e+01>, ptr %71, align 8, !tbaa !56
  %i.pp = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.589, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE12backup_color, i32 noundef 16388, ptr noundef nonnull align 4 dereferenceable(8) %71)
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #30
  br i1 %i.pp, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE12backup_color, i64 16, i1 false), !tbaa.struct !60
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
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !216
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.pu)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE13saved_palette, i64 %indvars.iv49.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #30
  store <2 x float> splat (float 2.000000e+01), ptr %72, align 8, !tbaa !56
  %i.pw = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.590, ptr noundef nonnull align 4 dereferenceable(16) %i.pv, i32 noundef 70, ptr noundef nonnull align 4 dereferenceable(8) %72)
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #30
  br i1 %i.pw, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %84 = load i32, ptr %i.px, align 8, !tbaa !240
  %85 = load <2 x i32>, ptr %i.pv, align 16, !tbaa !56
  store <2 x i32> %85, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, align 8, !tbaa !56
  store i32 %84, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i64 8), align 8, !tbaa !56
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.py = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropTargetEv()
  br i1 %i.py, label %bb.fo, label %bb.ft

bb.fo:                                            ; preds = %bb.fn
  %i.pz = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.591, i32 noundef 0) ; 2 uses
  %.not37.i = icmp eq ptr %i.pz, null
  br i1 %.not37.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.pv, ptr noundef nonnull align 1 dereferenceable(12) %i.qa, i64 12, i1 false)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.qb = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.592, i32 noundef 0) ; 2 uses
  %.not38.i = icmp eq ptr %i.qb, null
  br i1 %.not38.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pv, ptr noundef nonnull align 1 dereferenceable(16) %i.qc, i64 16, i1 false)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  call void @_ZN5ImGui17EndDragDropTargetEv()
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fn
  call void @_ZN5ImGui5PopIDEv()
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 32
  br i1 %exitcond52.not.i, label %bb.fi, label %bb.fj, !llvm.loop !243

bb.fu:                                            ; preds = %bb.fi, %bb.fe
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1303, ptr noundef nonnull @.str.593)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.594)
  %i.qd = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.595, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE9no_border) ; 0 uses
  %i.qe = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !61
  %i.qf = load i8, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE9no_border, align 1, !tbaa !33, !range !14, !noundef !15
  %i.qg = zext nneg i8 %i.qf to i32
  %i.qh = shl nuw nsw i32 %i.qg, 10
  %i.qi = or i32 %i.qh, %i.qe
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #30
  store <2 x float> splat (float 8.000000e+01), ptr %73, align 8, !tbaa !56
  %i.qj = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.596, ptr noundef nonnull align 4 dereferenceable(16) @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef %i.qi, ptr noundef nonnull align 4 dereferenceable(8) %73) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #30
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1309, ptr noundef nonnull @.str.597)
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.598)
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.598)
  %i.qk = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.554, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE18color_picker_flags, i32 noundef 2) ; 0 uses
  %i.ql = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.599, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE18color_picker_flags, i32 noundef 262144) ; 0 uses
  %i.qm = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.600, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE18color_picker_flags, i32 noundef 256) ; 0 uses
  %i.qn = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE18color_picker_flags, align 4, !tbaa !61
  %i.qo = and i32 %i.qn, 256
  %.not.i22 = icmp eq i32 %i.qo, 0
  br i1 %.not.i22, label %bb.fx, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.qp = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.601, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE9ref_color) ; 0 uses
  %i.qq = load i8, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE9ref_color, align 1, !tbaa !33, !range !14, !noundef !15
  %i.qr = trunc nuw i8 %i.qq to i1
  br i1 %i.qr, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.qs = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !61
  %i.qt = or i32 %i.qs, 32
  %i.qu = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.602, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE11ref_color_v, i32 noundef %i.qt) ; 0 uses
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv, %bb.fu
  %i.qv = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.603, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE18color_picker_flags, i32 noundef 134217728) ; 0 uses
  %i.qw = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.604, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE11picker_mode, ptr noundef nonnull @.str.605, i32 noundef -1) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.qx = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.qx, label %bb.fy, label %_ZL10HelpMarkerPKc.exit42.i

bb.fy:                                            ; preds = %bb.fx
  %i.qy = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.qz = fmul float %i.qy, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.qz)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.606, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit42.i

_ZL10HelpMarkerPKc.exit42.i:                      ; preds = %bb.fy, %bb.fx
  %i.ra = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.607, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE12display_mode, ptr noundef nonnull @.str.608, i32 noundef -1) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.rb = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.rb, label %bb.fz, label %_ZL10HelpMarkerPKc.exit43.i

bb.fz:                                            ; preds = %_ZL10HelpMarkerPKc.exit42.i
  %i.rc = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.rd = fmul float %i.rc, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.rd)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.609, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit43.i

_ZL10HelpMarkerPKc.exit43.i:                      ; preds = %bb.fz, %_ZL10HelpMarkerPKc.exit42.i
  %i.re = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE10base_flags, align 4, !tbaa !61
  %i.rf = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE18color_picker_flags, align 4, !tbaa !61
  %i.rg = or i32 %i.rf, %i.re                     ; 2 uses
  %i.rh = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE11picker_mode, align 4, !tbaa !61 ; 2 uses
  %i.ri = icmp eq i32 %i.rh, 1
  %i.rj = or i32 %i.rg, 33554432
  %spec.select.i = select i1 %i.ri, i32 %i.rj, i32 %i.rg ; 2 uses
  %i.rk = icmp eq i32 %i.rh, 2
  %i.rl = or i32 %spec.select.i, 67108864
  %.1.i = select i1 %i.rk, i32 %i.rl, i32 %spec.select.i ; 2 uses
  %i.rm = load i32, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE12display_mode, align 4, !tbaa !61 ; 4 uses
  %i.rn = icmp eq i32 %i.rm, 1
  %i.ro = or i32 %.1.i, 32
  %.2.i = select i1 %i.rn, i32 %i.ro, i32 %.1.i   ; 2 uses
  %i.rp = icmp eq i32 %i.rm, 2
  %i.rq = or i32 %.2.i, 1048576
  %.3.i = select i1 %i.rp, i32 %i.rq, i32 %.2.i   ; 2 uses
  %i.rr = icmp eq i32 %i.rm, 3
  %i.rs = or i32 %.3.i, 2097152
  %.4.i = select i1 %i.rr, i32 %i.rs, i32 %.3.i   ; 2 uses
  %i.rt = icmp eq i32 %i.rm, 4
  %i.ru = or i32 %.4.i, 4194304
  %.5.i = select i1 %i.rt, i32 %i.ru, i32 %.4.i
  %i.rv = load i8, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE9ref_color, align 1, !tbaa !33, !range !14, !noundef !15
  %i.rw = trunc nuw i8 %i.rv to i1
  %i.rx = select i1 %i.rw, ptr @_ZZL32DemoWindowWidgetsColorAndPickersvE11ref_color_v, ptr null
  %i.ry = call noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef nonnull @.str.610, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef %.5.i, ptr noundef %i.rx) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.611)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.rz = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.rz, label %bb.ga, label %_ZL10HelpMarkerPKc.exit44.i

bb.ga:                                            ; preds = %_ZL10HelpMarkerPKc.exit43.i
  %i.sa = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.sb = fmul float %i.sa, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.sb)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.612, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit44.i

_ZL10HelpMarkerPKc.exit44.i:                      ; preds = %bb.ga, %_ZL10HelpMarkerPKc.exit43.i
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #30
  store <2 x float> zeroinitializer, ptr %74, align 8, !tbaa !56
  %i.sc = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.613, ptr noundef nonnull align 4 dereferenceable(8) %74)
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #30
  br i1 %i.sc, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %_ZL10HelpMarkerPKc.exit44.i
  %i.sd = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 84
  store i32 44040192, ptr %i.se, align 4, !tbaa !244
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %_ZL10HelpMarkerPKc.exit44.i
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #30
  store <2 x float> zeroinitializer, ptr %75, align 8, !tbaa !56
  %i.sf = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.614, ptr noundef nonnull align 4 dereferenceable(8) %75)
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #30
  br i1 %i.sf, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.sg = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 84
  store i32 84410368, ptr %i.sh, align 4, !tbaa !244
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.615)
  %i.si = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.si, i64 0
  %i.sj = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 96
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !216
  %i.sm = fsub float %.sroa.0.0.vec.extract.i, %i.sl
  %i.sn = fmul float %i.sm, 4.000000e-01          ; 2 uses
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.sn)
  %i.so = call noundef zeroext i1 @_ZN5ImGui12ColorPicker3EPKcPfi(ptr noundef nonnull @.str.616, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef 33554722) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.sn)
  %i.sp = call noundef zeroext i1 @_ZN5ImGui12ColorPicker3EPKcPfi(ptr noundef nonnull @.str.617, ptr noundef nonnull @_ZZL32DemoWindowWidgetsColorAndPickersvE5color, i32 noundef 67109154) ; 0 uses
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui7SpacingEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.618)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.sq = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.sq, label %bb.gf, label %_ZL10HelpMarkerPKc.exit45.i

bb.gf:                                            ; preds = %bb.ge
  %i.sr = call noundef float @_ZN5ImGui11GetFontSizeEv()
end_hunk_2
begin_hunk_3_@_ZL17DemoWindowWidgetsP19ImGuiDemoWindowData:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #30
  store <2 x float> zeroinitializer, ptr %66, align 8, !tbaa !56
  %i.ade = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.737, ptr noundef nonnull align 4 dereferenceable(8) %66) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #30
  %i.adf = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropTargetEv()
  br i1 %i.adf, label %bb.im, label %bb.ip

bb.im:                                            ; preds = %bb.il
  %i.adg = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.592, i32 noundef 5120)
  %.not29.1.i = icmp eq ptr %i.adg, null
  br i1 %.not29.1.i, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 10)
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.739)
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  call void @_ZN5ImGui17EndDragDropTargetEv()
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.il
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.ig
  call void @_ZN5ImGui7TreePopEv()
  br label %_ZL28DemoWindowWidgetsDragAndDropv.exit

_ZL28DemoWindowWidgetsDragAndDropv.exit:          ; preds = %bb.gj, %bb.iq
  %i.adh = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.741)
  br i1 %i.adh, label %bb.ir, label %_ZL32DemoWindowWidgetsDragsAndSlidersv.exit

bb.ir:                                            ; preds = %_ZL28DemoWindowWidgetsDragAndDropv.exit
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1804, ptr noundef nonnull @.str.742)
  %i.adi = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.743, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, i32 noundef 1536) ; 0 uses
  %i.adj = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.744, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, i32 noundef 512) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.adk = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.adk, label %bb.is, label %_ZL10HelpMarkerPKc.exit.i26

bb.is:                                            ; preds = %bb.ir
  %i.adl = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.adm = fmul float %i.adl, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.adm)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.745, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit.i26

_ZL10HelpMarkerPKc.exit.i26:                      ; preds = %bb.is, %bb.ir
  %i.adn = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.746, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, i32 noundef 1024) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ado = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ado, label %bb.it, label %_ZL10HelpMarkerPKc.exit2.i

bb.it:                                            ; preds = %_ZL10HelpMarkerPKc.exit.i26
  %i.adp = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.adq = fmul float %i.adp, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.adq)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.747, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit2.i

_ZL10HelpMarkerPKc.exit2.i:                       ; preds = %bb.it, %_ZL10HelpMarkerPKc.exit.i26
  %i.adr = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.748, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, i32 noundef 32) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ads = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ads, label %bb.iu, label %_ZL10HelpMarkerPKc.exit3.i

bb.iu:                                            ; preds = %_ZL10HelpMarkerPKc.exit2.i
  %i.adt = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.adu = fmul float %i.adt, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.adu)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.749, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit3.i

_ZL10HelpMarkerPKc.exit3.i:                       ; preds = %bb.iu, %_ZL10HelpMarkerPKc.exit2.i
  %i.adv = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.750, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, i32 noundef 64) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.adw = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.adw, label %bb.iv, label %_ZL10HelpMarkerPKc.exit4.i

bb.iv:                                            ; preds = %_ZL10HelpMarkerPKc.exit3.i
  %i.adx = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.ady = fmul float %i.adx, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.ady)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.751, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit4.i

_ZL10HelpMarkerPKc.exit4.i:                       ; preds = %bb.iv, %_ZL10HelpMarkerPKc.exit3.i
  %i.adz = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.752, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, i32 noundef 128) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.aea = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.aea, label %bb.iw, label %_ZL10HelpMarkerPKc.exit5.i

bb.iw:                                            ; preds = %_ZL10HelpMarkerPKc.exit4.i
  %i.aeb = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.aec = fmul float %i.aeb, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.aec)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.753, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit5.i

_ZL10HelpMarkerPKc.exit5.i:                       ; preds = %bb.iw, %_ZL10HelpMarkerPKc.exit4.i
  %i.aed = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.754, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, i32 noundef 2048) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.aee = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.aee, label %bb.ix, label %_ZL10HelpMarkerPKc.exit6.i

bb.ix:                                            ; preds = %_ZL10HelpMarkerPKc.exit5.i
  %i.aef = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.aeg = fmul float %i.aef, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.aeg)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.755, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit6.i

_ZL10HelpMarkerPKc.exit6.i:                       ; preds = %bb.ix, %_ZL10HelpMarkerPKc.exit5.i
  %i.aeh = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.756, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, i32 noundef 256) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.aei = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.aei, label %bb.iy, label %_ZL10HelpMarkerPKc.exit7.i

bb.iy:                                            ; preds = %_ZL10HelpMarkerPKc.exit6.i
  %i.aej = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.aek = fmul float %i.aej, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.aek)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.757, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit7.i

_ZL10HelpMarkerPKc.exit7.i:                       ; preds = %bb.iy, %_ZL10HelpMarkerPKc.exit6.i
  %i.ael = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.758, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, i32 noundef 4096) ; 0 uses
  %i.aem = load float, ptr @_ZZL32DemoWindowWidgetsDragsAndSlidersvE6drag_f, align 4, !tbaa !56
  %i.aen = fpext float %i.aem to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.759, double noundef %i.aen)
  %i.aeo = load i32, ptr @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, align 4, !tbaa !61
  %i.aep = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.760, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE6drag_f, float noundef 5.000000e-03, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.201, i32 noundef %i.aeo) ; 0 uses
  %i.aeq = load i32, ptr @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, align 4, !tbaa !61
  %i.aer = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.761, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE6drag_f, float noundef 5.000000e-03, float noundef 0.000000e+00, float noundef f0x7F7FFFFF, ptr noundef nonnull @.str.201, i32 noundef %i.aeq) ; 0 uses
  %i.aes = load i32, ptr @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, align 4, !tbaa !61
  %i.aet = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.762, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE6drag_f, float noundef 5.000000e-03, float noundef f0xFF7FFFFF, float noundef 1.000000e+00, ptr noundef nonnull @.str.201, i32 noundef %i.aes) ; 0 uses
  %i.aeu = load i32, ptr @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, align 4, !tbaa !61
  %i.aev = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.763, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE6drag_f, float noundef 5.000000e-03, float noundef f0xFF7FFFFF, float noundef f0x7F7FFFFF, ptr noundef nonnull @.str.201, i32 noundef %i.aeu) ; 0 uses
  %i.aew = load i32, ptr @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, align 4, !tbaa !61
  %i.aex = call noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef nonnull @.str.764, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE6drag_i, float noundef 5.000000e-01, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.435, i32 noundef %i.aew) ; 0 uses
  %i.aey = load i32, ptr @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, align 4, !tbaa !61
  %i.aez = call noundef zeroext i1 @_ZN5ImGui10DragFloat4EPKcPffffS1_i(ptr noundef nonnull @.str.765, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE7drag_f4, float noundef 5.000000e-03, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.201, i32 noundef %i.aey) ; 0 uses
  %i.afa = load i32, ptr @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, align 4, !tbaa !61
  %i.afb = and i32 %i.afa, -257                   ; 2 uses
  %i.afc = load float, ptr @_ZZL32DemoWindowWidgetsDragsAndSlidersvE8slider_f, align 4, !tbaa !56
  %i.afd = fpext float %i.afc to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.759, double noundef %i.afd)
  %i.afe = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.766, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE8slider_f, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.201, i32 noundef %i.afb) ; 0 uses
  %i.aff = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.767, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE8slider_i, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.435, i32 noundef %i.afb) ; 0 uses
  %i.afg = load i32, ptr @_ZZL32DemoWindowWidgetsDragsAndSlidersvE5flags, align 4, !tbaa !61
  %i.afh = call noundef zeroext i1 @_ZN5ImGui12SliderFloat4EPKcPfffS1_i(ptr noundef nonnull @.str.768, ptr noundef nonnull @_ZZL32DemoWindowWidgetsDragsAndSlidersvE9slider_f4, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.201, i32 noundef %i.afg) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %_ZL32DemoWindowWidgetsDragsAndSlidersv.exit

_ZL32DemoWindowWidgetsDragsAndSlidersv.exit:      ; preds = %_ZL28DemoWindowWidgetsDragAndDropv.exit, %_ZL10HelpMarkerPKc.exit7.i
  %i.afi = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.308)
  br i1 %i.afi, label %bb.iz, label %_ZL22DemoWindowWidgetsFontsv.exit

bb.iz:                                            ; preds = %_ZL32DemoWindowWidgetsDragsAndSlidersv.exit
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1860, ptr noundef nonnull @.str.769)
  %i.afj = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 56
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !103
  call void @_ZN5ImGui13ShowFontAtlasEP11ImFontAtlas(ptr noundef %i.afl)
  call void @_ZN5ImGui7TreePopEv()
  br label %_ZL22DemoWindowWidgetsFontsv.exit

_ZL22DemoWindowWidgetsFontsv.exit:                ; preds = %_ZL32DemoWindowWidgetsDragsAndSlidersv.exit, %bb.iz
  %i.afm = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.770)
  br i1 %i.afm, label %bb.ja, label %_ZL23DemoWindowWidgetsImagesv.exit

bb.ja:                                            ; preds = %_ZL22DemoWindowWidgetsFontsv.exit
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1876, ptr noundef nonnull @.str.771)
  %i.afn = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  call void (ptr, ...) @_ZN5ImGui11TextWrappedEPKcz(ptr noundef nonnull @.str.772)
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 56
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !103 ; 3 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 40
  %.sroa.021.0.copyload.i = load i64, ptr %i.afq, align 8, !tbaa !104
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.afp, i64 48
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !105 ; 10 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afp, i64 56
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !106
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 36
  %i.afu = load <2 x i32>, ptr %i.aft, align 4, !tbaa !61
  %i.afv = sitofp <2 x i32> %i.afu to <2 x float> ; 5 uses
  %i.afw = fpext <2 x float> %i.afv to <2 x double> ; 2 uses
  %i.afx = extractelement <2 x double> %i.afw, i64 0
  %i.afy = extractelement <2 x double> %i.afw, i64 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.773, double noundef %i.afx, double noundef %i.afy)
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.774)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #30
  store <2 x float> zeroinitializer, ptr %53, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #30
  store <2 x float> splat (float 1.000000e+00), ptr %54, align 8, !tbaa !56
  %i.afz = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 160
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !247
  %i.agc = fcmp ugt float %i.agb, 1.000000e+00
  br i1 %i.agc, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.agd = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 160
  %i.agf = load float, ptr %i.age, align 4, !tbaa !247
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %i.agg = phi float [ %i.agf, %bb.jb ], [ 1.000000e+00, %bb.ja ]
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 24, float noundef %i.agg)
  %86 = inttoptr i64 %.sroa.021.0.copyload.i to ptr ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #30
  %i.agh = extractelement <2 x float> %i.afv, i64 0
  %i.agi = extractelement <2 x float> %i.afv, i64 1 ; 2 uses
  store <2 x float> %i.afv, ptr %55, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #30
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %56, align 16, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #30
  store <4 x float> splat (float 1.000000e+00), ptr %57, align 16, !tbaa !56
  call void @_ZN5ImGui11ImageWithBgE12ImTextureRefRK6ImVec2S3_S3_RK6ImVec4S6_(ptr %86, i64 %.sroa.6.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(8) %55, ptr noundef nonnull align 4 dereferenceable(8) %53, ptr noundef nonnull align 4 dereferenceable(8) %54, ptr noundef nonnull align 4 dereferenceable(16) %56, ptr noundef nonnull align 4 dereferenceable(16) %57)
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #30
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.775)
  %i.agj = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %i.agk = fmul nnan float %i.agi, 2.000000e+00
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.agj, float %i.agk, i64 1
  call fastcc void @_ZL30ExampleImageViewer_DrawOptionsP22ExampleImageViewerData(ptr noundef nonnull @_ZZL23DemoWindowWidgetsImagesvE12image_viewer)
  %i.agl = fptosi float %i.agh to i32
  %i.agm = fptosi float %i.agi to i32
  call fastcc void @_ZL29ExampleImageViewer_DrawCanvasP22ExampleImageViewerData6ImVec212ImTextureRefii(ptr noundef nonnull @_ZZL23DemoWindowWidgetsImagesvE12image_viewer, <2 x float> %.sroa.0.4.vec.insert.i, ptr %86, i64 %.sroa.6.0.copyload.i, i32 noundef %i.agl, i32 noundef %i.agm)
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1920, ptr noundef nonnull @.str.776)
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.777)
  call void (ptr, ...) @_ZN5ImGui11TextWrappedEPKcz(ptr noundef nonnull @.str.778)
  %i.agn = getelementptr inbounds nuw i8, ptr %58, i64 4 ; 7 uses
  %i.ago = fdiv <2 x float> splat (float 3.200000e+01), %i.afv ; 8 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  store <2 x float> splat (float 3.200000e+01), ptr %59, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  store <2 x float> zeroinitializer, ptr %60, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> %i.ago, ptr %61, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #30
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %62, align 16, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #30
  store <4 x float> splat (float 1.000000e+00), ptr %63, align 16, !tbaa !56
  %i.agp = call noundef zeroext i1 @_ZN5ImGui11ImageButtonEPKc12ImTextureRefRK6ImVec2S5_S5_RK6ImVec4S8_(ptr noundef nonnull @.str.157, ptr %86, i64 %.sroa.6.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(8) %59, ptr noundef nonnull align 4 dereferenceable(8) %60, ptr noundef nonnull align 4 dereferenceable(8) %61, ptr noundef nonnull align 4 dereferenceable(16) %62, ptr noundef nonnull align 4 dereferenceable(16) %63)
  br i1 %i.agp, label %bb.jd, label %.peel.next.i27

bb.jd:                                            ; preds = %bb.jc
  %i.agq = load i32, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  %i.agr = add nsw i32 %i.agq, 1
  store i32 %i.agr, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  br label %.peel.next.i27

.peel.next.i27:                                   ; preds = %bb.jd, %bb.jc
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  call void @_ZN5ImGui6PushIDEi(i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #30
  store float 0.000000e+00, ptr %58, align 4, !tbaa !49
  store float 0.000000e+00, ptr %i.agn, align 4, !tbaa !51
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %58)
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  store <2 x float> splat (float 3.200000e+01), ptr %59, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  store <2 x float> zeroinitializer, ptr %60, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> %i.ago, ptr %61, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #30
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %62, align 16, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #30
  store <4 x float> splat (float 1.000000e+00), ptr %63, align 16, !tbaa !56
  %i.ags = call noundef zeroext i1 @_ZN5ImGui11ImageButtonEPKc12ImTextureRefRK6ImVec2S5_S5_RK6ImVec4S8_(ptr noundef nonnull @.str.157, ptr %86, i64 %.sroa.6.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(8) %59, ptr noundef nonnull align 4 dereferenceable(8) %60, ptr noundef nonnull align 4 dereferenceable(8) %61, ptr noundef nonnull align 4 dereferenceable(16) %62, ptr noundef nonnull align 4 dereferenceable(16) %63)
  br i1 %i.ags, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %.peel.next.i27
  %i.agt = load i32, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  %i.agu = add nsw i32 %i.agt, 1
  store i32 %i.agu, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %.peel.next.i27
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  call void @_ZN5ImGui6PushIDEi(i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #30
  store float 1.000000e+00, ptr %58, align 4, !tbaa !49
  store float 1.000000e+00, ptr %i.agn, align 4, !tbaa !51
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %58)
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  store <2 x float> splat (float 3.200000e+01), ptr %59, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  store <2 x float> zeroinitializer, ptr %60, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> %i.ago, ptr %61, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #30
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %62, align 16, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #30
  store <4 x float> splat (float 1.000000e+00), ptr %63, align 16, !tbaa !56
  %i.agv = call noundef zeroext i1 @_ZN5ImGui11ImageButtonEPKc12ImTextureRefRK6ImVec2S5_S5_RK6ImVec4S8_(ptr noundef nonnull @.str.157, ptr %86, i64 %.sroa.6.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(8) %59, ptr noundef nonnull align 4 dereferenceable(8) %60, ptr noundef nonnull align 4 dereferenceable(8) %61, ptr noundef nonnull align 4 dereferenceable(16) %62, ptr noundef nonnull align 4 dereferenceable(16) %63)
  br i1 %i.agv, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.agw = load i32, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  %i.agx = add nsw i32 %i.agw, 1
  store i32 %i.agx, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  call void @_ZN5ImGui6PushIDEi(i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #30
  store float 2.000000e+00, ptr %58, align 4, !tbaa !49
  store float 2.000000e+00, ptr %i.agn, align 4, !tbaa !51
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %58)
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  store <2 x float> splat (float 3.200000e+01), ptr %59, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  store <2 x float> zeroinitializer, ptr %60, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> %i.ago, ptr %61, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #30
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %62, align 16, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #30
  store <4 x float> splat (float 1.000000e+00), ptr %63, align 16, !tbaa !56
  %i.agy = call noundef zeroext i1 @_ZN5ImGui11ImageButtonEPKc12ImTextureRefRK6ImVec2S5_S5_RK6ImVec4S8_(ptr noundef nonnull @.str.157, ptr %86, i64 %.sroa.6.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(8) %59, ptr noundef nonnull align 4 dereferenceable(8) %60, ptr noundef nonnull align 4 dereferenceable(8) %61, ptr noundef nonnull align 4 dereferenceable(16) %62, ptr noundef nonnull align 4 dereferenceable(16) %63)
  br i1 %i.agy, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.agz = load i32, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  %i.aha = add nsw i32 %i.agz, 1
  store i32 %i.aha, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  call void @_ZN5ImGui6PushIDEi(i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #30
  store float 3.000000e+00, ptr %58, align 4, !tbaa !49
  store float 3.000000e+00, ptr %i.agn, align 4, !tbaa !51
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %58)
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  store <2 x float> splat (float 3.200000e+01), ptr %59, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  store <2 x float> zeroinitializer, ptr %60, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> %i.ago, ptr %61, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #30
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %62, align 16, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #30
  store <4 x float> splat (float 1.000000e+00), ptr %63, align 16, !tbaa !56
  %i.ahb = call noundef zeroext i1 @_ZN5ImGui11ImageButtonEPKc12ImTextureRefRK6ImVec2S5_S5_RK6ImVec4S8_(ptr noundef nonnull @.str.157, ptr %86, i64 %.sroa.6.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(8) %59, ptr noundef nonnull align 4 dereferenceable(8) %60, ptr noundef nonnull align 4 dereferenceable(8) %61, ptr noundef nonnull align 4 dereferenceable(16) %62, ptr noundef nonnull align 4 dereferenceable(16) %63)
  br i1 %i.ahb, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.ahc = load i32, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  %i.ahd = add nsw i32 %i.ahc, 1
  store i32 %i.ahd, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  call void @_ZN5ImGui6PushIDEi(i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #30
  store float 4.000000e+00, ptr %58, align 4, !tbaa !49
  store float 4.000000e+00, ptr %i.agn, align 4, !tbaa !51
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %58)
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  store <2 x float> splat (float 3.200000e+01), ptr %59, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  store <2 x float> zeroinitializer, ptr %60, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> %i.ago, ptr %61, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #30
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %62, align 16, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #30
  store <4 x float> splat (float 1.000000e+00), ptr %63, align 16, !tbaa !56
  %i.ahe = call noundef zeroext i1 @_ZN5ImGui11ImageButtonEPKc12ImTextureRefRK6ImVec2S5_S5_RK6ImVec4S8_(ptr noundef nonnull @.str.157, ptr %86, i64 %.sroa.6.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(8) %59, ptr noundef nonnull align 4 dereferenceable(8) %60, ptr noundef nonnull align 4 dereferenceable(8) %61, ptr noundef nonnull align 4 dereferenceable(16) %62, ptr noundef nonnull align 4 dereferenceable(16) %63)
  br i1 %i.ahe, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.ahf = load i32, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  %i.ahg = add nsw i32 %i.ahf, 1
  store i32 %i.ahg, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  call void @_ZN5ImGui6PushIDEi(i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #30
  store float 5.000000e+00, ptr %58, align 4, !tbaa !49
  store float 5.000000e+00, ptr %i.agn, align 4, !tbaa !51
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %58)
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  store <2 x float> splat (float 3.200000e+01), ptr %59, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  store <2 x float> zeroinitializer, ptr %60, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> %i.ago, ptr %61, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #30
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %62, align 16, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #30
  store <4 x float> splat (float 1.000000e+00), ptr %63, align 16, !tbaa !56
  %i.ahh = call noundef zeroext i1 @_ZN5ImGui11ImageButtonEPKc12ImTextureRefRK6ImVec2S5_S5_RK6ImVec4S8_(ptr noundef nonnull @.str.157, ptr %86, i64 %.sroa.6.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(8) %59, ptr noundef nonnull align 4 dereferenceable(8) %60, ptr noundef nonnull align 4 dereferenceable(8) %61, ptr noundef nonnull align 4 dereferenceable(16) %62, ptr noundef nonnull align 4 dereferenceable(16) %63)
  br i1 %i.ahh, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.ahi = load i32, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  %i.ahj = add nsw i32 %i.ahi, 1
  store i32 %i.ahj, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  call void @_ZN5ImGui6PushIDEi(i32 noundef 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #30
  store float 6.000000e+00, ptr %58, align 4, !tbaa !49
  store float 6.000000e+00, ptr %i.agn, align 4, !tbaa !51
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %58)
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  store <2 x float> splat (float 3.200000e+01), ptr %59, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  store <2 x float> zeroinitializer, ptr %60, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> %i.ago, ptr %61, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #30
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %62, align 16, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #30
  store <4 x float> splat (float 1.000000e+00), ptr %63, align 16, !tbaa !56
  %i.ahk = call noundef zeroext i1 @_ZN5ImGui11ImageButtonEPKc12ImTextureRefRK6ImVec2S5_S5_RK6ImVec4S8_(ptr noundef nonnull @.str.157, ptr %86, i64 %.sroa.6.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(8) %59, ptr noundef nonnull align 4 dereferenceable(8) %60, ptr noundef nonnull align 4 dereferenceable(8) %61, ptr noundef nonnull align 4 dereferenceable(16) %62, ptr noundef nonnull align 4 dereferenceable(16) %63)
  br i1 %i.ahk, label %bb.jq, label %.loopexit.i29

bb.jq:                                            ; preds = %bb.jp
  %i.ahl = load i32, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  %i.ahm = add nsw i32 %i.ahl, 1
  store i32 %i.ahm, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  br label %.loopexit.i29

.loopexit.i29:                                    ; preds = %bb.jq, %bb.jp
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  call void @_ZN5ImGui7NewLineEv()
  %i.ahn = load i32, ptr @_ZZL23DemoWindowWidgetsImagesvE13pressed_count, align 4, !tbaa !61
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.779, i32 noundef %i.ahn)
  call void @_ZN5ImGui7TreePopEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #30
  br label %_ZL23DemoWindowWidgetsImagesv.exit

_ZL23DemoWindowWidgetsImagesv.exit:               ; preds = %_ZL22DemoWindowWidgetsFontsv.exit, %.loopexit.i29
  %i.aho = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.784)
  br i1 %i.aho, label %bb.jr, label %_ZL26DemoWindowWidgetsListBoxesv.exit

bb.jr:                                            ; preds = %_ZL23DemoWindowWidgetsImagesv.exit
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1958, ptr noundef nonnull @.str.785)
  %i.ahp = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.786, ptr noundef nonnull @_ZZL26DemoWindowWidgetsListBoxesvE14item_highlight) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #30
  store <2 x float> zeroinitializer, ptr %49, align 8, !tbaa !56
  %i.ahq = call noundef zeroext i1 @_ZN5ImGui12BeginListBoxEPKcRK6ImVec2(ptr noundef nonnull @.str.787, ptr noundef nonnull align 4 dereferenceable(8) %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #30
  br i1 %i.ahq, label %.preheader20.i, label %bb.jz

bb.js:                                            ; preds = %bb.jy
  call void @_ZN5ImGui10EndListBoxEv()
  %i.ahr = zext i32 %.1.i34 to i64
  br label %bb.jz

.preheader20.i:                                   ; preds = %bb.jr, %bb.jy
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i35, %bb.jy ], [ 0, %bb.jr ] ; 5 uses
  %.01921.i = phi i32 [ %.1.i34, %bb.jy ], [ -1, %bb.jr ] ; 2 uses
  %i.ahs = load i32, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !61
  %i.aht = zext i32 %i.ahs to i64
  %i.ahu = icmp eq i64 %indvars.iv.i33, %i.aht    ; 2 uses
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL26DemoWindowWidgetsListBoxesv.items, i64 %indvars.iv.i33
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #30
  store <2 x float> zeroinitializer, ptr %50, align 8, !tbaa !56
  %i.ahx = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %i.ahw, i1 noundef zeroext %i.ahu, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  br i1 %i.ahx, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %.preheader20.i
  %i.ahy = trunc nuw nsw i64 %indvars.iv.i33 to i32
  store i32 %i.ahy, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !61
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %.preheader20.i
  %i.ahz = load i8, ptr @_ZZL26DemoWindowWidgetsListBoxesvE14item_highlight, align 1, !tbaa !33, !range !14, !noundef !15
  %i.aia = trunc nuw i8 %i.ahz to i1
  br i1 %i.aia, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.aib = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  %i.aic = trunc nuw nsw i64 %indvars.iv.i33 to i32
  %spec.select.i37 = select i1 %i.aib, i32 %i.aic, i32 %.01921.i
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %.1.i34 = phi i32 [ %.01921.i, %bb.ju ], [ %spec.select.i37, %bb.jv ] ; 2 uses
  br i1 %i.ahu, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %exitcond.not.i36 = icmp eq i64 %indvars.iv.next.i35, 14
  br i1 %exitcond.not.i36, label %bb.js, label %.preheader20.i, !llvm.loop !248

bb.jz:                                            ; preds = %bb.js, %bb.jr
  %.2.i30 = phi i64 [ %i.ahr, %bb.js ], [ 4294967295, %bb.jr ] ; 14 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.aid = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.aid, label %bb.ka, label %_ZL10HelpMarkerPKc.exit.i31

bb.ka:                                            ; preds = %bb.jz
  %i.aie = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.aif = fmul float %i.aie, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.aif)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.788, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit.i31

_ZL10HelpMarkerPKc.exit.i31:                      ; preds = %bb.ka, %bb.jz
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.789)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #30
  %i.aig = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.aih = fmul float %i.aig, 5.000000e+00
  store float f0x80800000, ptr %51, align 4, !tbaa !49
  %i.aii = getelementptr inbounds nuw i8, ptr %51, i64 4
  store float %i.aih, ptr %i.aii, align 4, !tbaa !51
  %i.aij = call noundef zeroext i1 @_ZN5ImGui12BeginListBoxEPKcRK6ImVec2(ptr noundef nonnull @.str.790, ptr noundef nonnull align 4 dereferenceable(8) %51)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #30
  br i1 %i.aij, label %.preheader.i32, label %bb.mf

.preheader.i32:                                   ; preds = %_ZL10HelpMarkerPKc.exit.i31
  %i.aik = load i32, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !61
  %i.ail = icmp eq i32 %i.aik, 0                  ; 2 uses
  %i.aim = icmp eq i64 %.2.i30, 0
  %i.ain = select i1 %i.aim, i32 32, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #30
  store <2 x float> zeroinitializer, ptr %52, align 8, !tbaa !56
  %i.aio = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.488, i1 noundef zeroext %i.ail, i32 noundef %i.ain, ptr noundef nonnull align 4 dereferenceable(8) %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #30
  br i1 %i.aio, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %.preheader.i32
  store i32 0, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !61
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %.preheader.i32
  br i1 %i.ail, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %i.aip = load i32, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !61
  %i.aiq = icmp eq i32 %i.aip, 1                  ; 2 uses
  %i.air = icmp eq i64 %.2.i30, 1
  %i.ais = select i1 %i.air, i32 32, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #30
  store <2 x float> zeroinitializer, ptr %52, align 8, !tbaa !56
  %i.ait = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.489, i1 noundef zeroext %i.aiq, i32 noundef %i.ais, ptr noundef nonnull align 4 dereferenceable(8) %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #30
  br i1 %i.ait, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  store i32 1, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !61
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.ke
  br i1 %i.aiq, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %i.aiu = load i32, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !61
  %i.aiv = icmp eq i32 %i.aiu, 2                  ; 2 uses
  %i.aiw = icmp eq i64 %.2.i30, 2
  %i.aix = select i1 %i.aiw, i32 32, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #30
  store <2 x float> zeroinitializer, ptr %52, align 8, !tbaa !56
  %i.aiy = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.490, i1 noundef zeroext %i.aiv, i32 noundef %i.aix, ptr noundef nonnull align 4 dereferenceable(8) %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #30
  br i1 %i.aiy, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  store i32 2, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !61
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  br i1 %i.aiv, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %i.aiz = load i32, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !61
  %i.aja = icmp eq i32 %i.aiz, 3                  ; 2 uses
  %i.ajb = icmp eq i64 %.2.i30, 3
  %i.ajc = select i1 %i.ajb, i32 32, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #30
  store <2 x float> zeroinitializer, ptr %52, align 8, !tbaa !56
  %i.ajd = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.491, i1 noundef zeroext %i.aja, i32 noundef %i.ajc, ptr noundef nonnull align 4 dereferenceable(8) %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #30
  br i1 %i.ajd, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  store i32 3, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !61
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km
  br i1 %i.aja, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
end_hunk_3
begin_hunk_4_@_ZN17ExampleAppConsole4DrawEPKcPb:bb.a
  br i1 %i.g, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2139)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.h = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.2140)
  br i1 %i.h, label %bb.k, label %_ZN17ExampleAppConsole8ClearLogEv.exit

bb.k:                                             ; preds = %bb.j
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !437
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.m

._crit_edge.i:                                    ; preds = %bb.m, %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !442  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN17ExampleAppConsole8ClearLogEv.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 0, ptr %i.o, align 4, !tbaa !443
  store i32 0, ptr %i.i, align 8, !tbaa !444
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.n)
  store ptr null, ptr %i.m, align 8, !tbaa !442
  br label %_ZN17ExampleAppConsole8ClearLogEv.exit

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !442
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !121
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.r)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = load i32, ptr %i.i, align 8, !tbaa !437
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %bb.m, label %._crit_edge.i, !llvm.loop !445

_ZN17ExampleAppConsole8ClearLogEv.exit:           ; preds = %bb.l, %._crit_edge.i, %bb.j
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.v = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.711) ; 2 uses
  call void @_ZN5ImGui9SeparatorEv()
  %i.w = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.400, i32 noundef 0)
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN17ExampleAppConsole8ClearLogEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.y = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2141, ptr noundef nonnull %i.x) ; 0 uses
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN17ExampleAppConsole8ClearLogEv.exit
  call void @_ZN5ImGui19SetNextItemShortcutEii(i32 noundef 4656, i32 noundef 262144)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !56
  %i.z = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.400, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.z, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aa = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.400, i32 noundef 0) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ac = call noundef zeroext i1 @_ZN15ImGuiTextFilter4DrawEPKcf(ptr noundef nonnull align 8 dereferenceable(276) %i.ab, ptr noundef nonnull @.str.2142, float noundef 1.800000e+02) ; 0 uses
  call void @_ZN5ImGui9SeparatorEv()
  %i.ad = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv() ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 268
  %i.af = load float, ptr %i.ae, align 4, !tbaa !454
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !216
  %i.ai = fadd float %i.af, %i.ah
  %i.aj = call noundef float @_ZN5ImGui25GetFrameHeightWithSpacingEv()
  %i.ak = fadd float %i.ai, %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.al = fneg float %i.ak
  store float 0.000000e+00, ptr %5, align 4, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.al, ptr %i.am, align 4, !tbaa !51
  %i.an = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.2143, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef 256, i32 noundef 2048)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.an, label %bb.r, label %bb.ak

bb.r:                                             ; preds = %bb.q
  %i.ao = call noundef zeroext i1 @_ZN5ImGui23BeginPopupContextWindowEPKci(ptr noundef null, i32 noundef 0)
  br i1 %i.ao, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !56
  %i.ap = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.2140, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %i.ap, label %bb.t, label %_ZN17ExampleAppConsole8ClearLogEv.exit38

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !437
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i35, label %._crit_edge.i33

.lr.ph.i35:                                       ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.v

._crit_edge.i33:                                  ; preds = %bb.v, %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !442 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.av, null
  br i1 %.not.i.i34, label %_ZN17ExampleAppConsole8ClearLogEv.exit38, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i33
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 0, ptr %i.aw, align 4, !tbaa !443
  store i32 0, ptr %i.aq, align 8, !tbaa !444
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.av)
  store ptr null, ptr %i.au, align 8, !tbaa !442
  br label %_ZN17ExampleAppConsole8ClearLogEv.exit38

bb.v:                                             ; preds = %bb.v, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ 0, %.lr.ph.i35 ], [ %indvars.iv.next.i37, %bb.v ] ; 2 uses
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !442
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i36
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !121
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.az)
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %i.ba = load i32, ptr %i.aq, align 8, !tbaa !437
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next.i37, %i.bb
  br i1 %i.bc, label %bb.v, label %._crit_edge.i33, !llvm.loop !445

_ZN17ExampleAppConsole8ClearLogEv.exit38:         ; preds = %bb.u, %._crit_edge.i33, %bb.s
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.w

bb.w:                                             ; preds = %_ZN17ExampleAppConsole8ClearLogEv.exit38, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store <2 x float> <float 4.000000e+00, float 1.000000e+00>, ptr %7, align 8, !tbaa !56
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %i.v, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_ZN5ImGui14LogToClipboardEi(i32 noundef -1)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !442 ; 2 uses
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !444 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %.idx = shl nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 %.idx
  %.not43 = icmp eq i32 %i.bg, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 12
  br label %bb.z

._crit_edge:                                      ; preds = %bb.ad, %bb.y
  br i1 %i.v, label %bb.ae, label %bb.af

bb.z:                                             ; preds = %.lr.ph, %bb.ad
  %.02744 = phi ptr [ %i.bf, %.lr.ph ], [ %i.bq, %bb.ad ] ; 2 uses
  %i.bj = load ptr, ptr %.02744, align 8, !tbaa !121 ; 6 uses
  %i.bk = call noundef zeroext i1 @_ZNK15ImGuiTextFilter10PassFilterEPKcS1_(ptr noundef nonnull align 8 dereferenceable(276) %i.ab, ptr noundef %i.bj, ptr noundef null)
  br i1 %i.bk, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.bl = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bj, ptr noundef nonnull dereferenceable(1) @.str.2144) #32
  %.not29 = icmp eq ptr %i.bl, null
  br i1 %.not29, label %sub_0, label %bb.ab

sub_0:                                            ; preds = %bb.aa
  %i.bm = load i8, ptr %i.bj, align 1
  %.not45 = icmp eq i8 %i.bm, 35
  br i1 %.not45, label %.tail, label %.critedge

.tail:                                            ; preds = %sub_0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = icmp eq i8 %i.bo, 32
  br i1 %i.bp, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %.tail, %bb.aa
  %9 = phi <2 x i32> [ splat (i32 1053609165), %bb.aa ], [ <i32 1061997773, i32 1058642330>, %.tail ]
  store i32 1065353216, ptr %8, align 4, !tbaa !56
  store <2 x i32> %9, ptr %.sroa.440.0..sroa_idx, align 4, !tbaa !56
  store i32 1065353216, ptr %.sroa.642.0..sroa_idx, align 4, !tbaa !56
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %8)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %i.bj, ptr noundef null)
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  br label %bb.ac

.critedge:                                        ; preds = %sub_0, %.tail
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %i.bj, ptr noundef null)
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac
  %i.bq = getelementptr inbounds nuw i8, ptr %.02744, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.bi
  br i1 %.not, label %._crit_edge, label %bb.z

bb.ae:                                            ; preds = %._crit_edge
  call void @_ZN5ImGui9LogFinishEv()
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 593 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !451, !range !14, !noundef !15
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !450, !range !14, !noundef !15
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.bx = call noundef float @_ZN5ImGui10GetScrollYEv()
  %i.by = call noundef float @_ZN5ImGui13GetScrollMaxYEv()
  %i.bz = fcmp ult float %i.bx, %i.by
  br i1 %i.bz, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  call void @_ZN5ImGui14SetScrollHereYEf(float noundef 1.000000e+00)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  store i8 0, ptr %i.br, align 1, !tbaa !451
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.q
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui9SeparatorEv()
  %i.ca = call noundef zeroext i1 @_ZN5ImGui9InputTextEPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.406, ptr noundef nonnull %0, i64 noundef 256, i32 noundef 786624, ptr noundef nonnull @_ZN17ExampleAppConsole20TextEditCallbackStubEP26ImGuiInputTextCallbackData, ptr noundef nonnull %0)
  br i1 %i.ca, label %bb.al, label %.critedge31

bb.al:                                            ; preds = %bb.ak
  %i.cb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cb ; 2 uses
  %.not54 = icmp eq i64 %i.cb, 0
  br i1 %.not54, label %_ZN17ExampleAppConsole13StrtrimblanksEPc.exit, label %.lr.ph51

bb.am:                                            ; preds = %.lr.ph51
  %i.cd = icmp ugt ptr %i.ce, %0
  br i1 %i.cd, label %.lr.ph51, label %_ZN17ExampleAppConsole13StrtrimblanksEPc.exit, !llvm.loop !455

.lr.ph51:                                         ; preds = %bb.al, %bb.am
  %.0.i49 = phi ptr [ %i.ce, %bb.am ], [ %i.cc, %bb.al ] ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.0.i49, i64 -1 ; 4 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !156
  %i.cg = icmp eq i8 %i.cf, 32
  br i1 %i.cg, label %bb.am, label %._ZN17ExampleAppConsole13StrtrimblanksEPc.exit_crit_edge52, !llvm.loop !455

._ZN17ExampleAppConsole13StrtrimblanksEPc.exit_crit_edge52: ; preds = %.lr.ph51
  br label %_ZN17ExampleAppConsole13StrtrimblanksEPc.exit, !llvm.loop !455

_ZN17ExampleAppConsole13StrtrimblanksEPc.exit:    ; preds = %bb.am, %._ZN17ExampleAppConsole13StrtrimblanksEPc.exit_crit_edge52, %bb.al
  %.0.i.lcssa = phi ptr [ %i.cc, %bb.al ], [ %.0.i49, %._ZN17ExampleAppConsole13StrtrimblanksEPc.exit_crit_edge52 ], [ %i.ce, %bb.am ]
  store i8 0, ptr %.0.i.lcssa, align 1, !tbaa !156
  %i.ch = load i8, ptr %0, align 8, !tbaa !156
  %.not28 = icmp eq i8 %i.ch, 0
  br i1 %.not28, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN17ExampleAppConsole13StrtrimblanksEPc.exit
  call void @_ZN17ExampleAppConsole11ExecCommandEPKc(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull %0)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN17ExampleAppConsole13StrtrimblanksEPc.exit
  store i8 0, ptr %0, align 8, !tbaa !156
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  call void @_ZN5ImGui20SetKeyboardFocusHereEi(i32 noundef -1)
  br label %bb.ap

.critedge31:                                      ; preds = %bb.ak
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.critedge31, %bb.a
  call void @_ZN5ImGui3EndEv()
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef %1, ...) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef %1, ptr noundef nonnull %2) #30 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1023
  store i8 0, ptr %i.c, align 1, !tbaa !156
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #32
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.f) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 16 %i.a, i64 %i.f, i1 false)
  %i.h = load i32, ptr %i.d, align 8, !tbaa !444  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !443
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i:     ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !442
  br label %_ZN8ImVectorIPcE9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.h, 1
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i32 %i.h, 2
  %i.n = add nsw i32 %i.m, %i.h
  br label %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i

_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i:       ; preds = %bb.c, %bb.b
  %i.o = phi i32 [ %i.n, %bb.c ], [ 8, %bb.b ]
  %i.p = call noundef i32 @llvm.smax.i32(i32 %i.o, i32 %i.l) ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.r) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !442  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.u, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i
  %i.v = load i32, ptr %i.d, align 8, !tbaa !444
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.s, ptr nonnull align 8 %i.u, i64 %i.x, i1 false)
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !442
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.y)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i
  store ptr %i.s, ptr %i.t, align 8, !tbaa !442
  store i32 %i.p, ptr %i.i, align 4, !tbaa !443
  %.pre3.i = load i32, ptr %i.d, align 8, !tbaa !444
  br label %_ZN8ImVectorIPcE9push_backERKS0_.exit

_ZN8ImVectorIPcE9push_backERKS0_.exit:            ; preds = %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i, %bb.e
  %i.z = phi i32 [ %i.h, %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.e ]
  %i.aa = phi ptr [ %.pre.i, %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i ], [ %i.s, %bb.e ]
  %3 = ptrtoint ptr %i.g to i64
  %4 = sext i32 %i.z to i64
  %5 = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %4
  store i64 %3, ptr %5, align 8
  %i.ab = load i32, ptr %i.d, align 8, !tbaa !444
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.d, align 8, !tbaa !444
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8ImVectorIPcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !442  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8ImVectorIPKcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #26

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #26

declare noundef zeroext i1 @_ZN5ImGui23BeginPopupContextWindowEPKci(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN17ExampleAppConsole20TextEditCallbackStubEP26ImGuiInputTextCallbackData(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418
  %i.c = tail call noundef i32 @_ZN17ExampleAppConsole16TextEditCallbackEP26ImGuiInputTextCallbackData(ptr noundef nonnull align 8 dereferenceable(594) %i.b, ptr noundef %0)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17ExampleAppConsole11ExecCommandEPKc(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2150, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 -1, ptr %i.a, align 8, !tbaa !446
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 10 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !452  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 7 uses
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph112, label %.loopexit

.lr.ph112:                                        ; preds = %bb.a
  %i.f = zext nneg i32 %i.c to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !442
  %i.h = tail call ptr @__ctype_toupper_loc() #33
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !456  ; 4 uses
  %i.j = load i8, ptr %1, align 1, !tbaa !156
  %i.k = sext i8 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !61   ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit
  %i.n = trunc nuw i64 %i.p to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %.loopexit, !llvm.loop !457

bb.c:                                             ; preds = %.lr.ph112, %bb.b
  %.in = phi i64 [ %i.f, %.lr.ph112 ], [ %i.p, %bb.b ]
  %i.p = add nsw i64 %.in, -1                     ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !121  ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !156   ; 2 uses
  %i.t = sext i8 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !61   ; 2 uses
  %i.w = icmp ne i32 %i.m, %i.v
  %.not9.i = icmp eq i8 %i.s, 0
  %or.cond10.i = or i1 %.not9.i, %i.w
  br i1 %or.cond10.i, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit, label %toupper.exit.i

toupper.exit.i:                                   ; preds = %bb.c, %toupper.exit.i
  %.012.i = phi ptr [ %i.y, %toupper.exit.i ], [ %1, %bb.c ]
  %.0511.i = phi ptr [ %i.x, %toupper.exit.i ], [ %i.r, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0511.i, i64 1 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !156
  %i.aa = sext i8 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !61 ; 2 uses
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !156  ; 2 uses
  %i.ae = sext i8 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !61 ; 2 uses
  %i.ah = icmp ne i32 %i.ac, %i.ag
  %.not.i = icmp eq i8 %i.ad, 0
  %or.cond.i = or i1 %.not.i, %i.ah
  br i1 %or.cond.i, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit, label %toupper.exit.i, !llvm.loop !458

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit:       ; preds = %toupper.exit.i, %bb.c
  %.lcssa8.i = phi i32 [ %i.m, %bb.c ], [ %i.ac, %toupper.exit.i ]
  %.lcssa.i = phi i32 [ %i.v, %bb.c ], [ %i.ag, %toupper.exit.i ]
  %i.ai = icmp eq i32 %.lcssa8.i, %.lcssa.i
  br i1 %i.ai, label %bb.d, label %bb.b, !llvm.loop !457

bb.d:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.r)
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !442
  %i.ak = and i64 %i.p, 4294967295                ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.b, align 8, !tbaa !444
  %i.ao = sext i32 %i.an to i64
  %i.ap = xor i64 %i.ak, -1
  %i.aq = add nsw i64 %i.ao, %i.ap
  %i.ar = shl nsw i64 %i.aq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr nonnull align 8 %i.am, i64 %i.ar, i1 false)
  %i.as = load i32, ptr %i.b, align 8, !tbaa !444
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.b, align 8, !tbaa !444
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %i.au = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %i.av = add i64 %i.au, 1                        ; 2 uses
  %i.aw = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.av) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull align 1 %1, i64 %i.av, i1 false)
  %2 = ptrtoint ptr %i.aw to i64
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !444 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !443
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.e, label %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i:     ; preds = %.loopexit
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !442
  br label %_ZN8ImVectorIPcE9push_backERKS0_.exit

bb.e:                                             ; preds = %.loopexit
  %i.bb = add nsw i32 %i.ax, 1
  %.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = sdiv i32 %i.ax, 2
  %i.bd = add nsw i32 %i.bc, %i.ax
  br label %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i

_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i:       ; preds = %bb.f, %bb.e
  %i.be = phi i32 [ %i.bd, %bb.f ], [ 8, %bb.e ]
  %i.bf = tail call noundef i32 @llvm.smax.i32(i32 %i.be, i32 %i.bb) ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bh) ; 3 uses
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !442 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bj, null
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i
  %i.bk = load i32, ptr %i.b, align 8, !tbaa !444
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bi, ptr nonnull align 8 %i.bj, i64 %i.bm, i1 false)
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !442
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bn)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorIPcE14_grow_capacityEi.exit.i
  store ptr %i.bi, ptr %i.d, align 8, !tbaa !442
  store i32 %i.bf, ptr %i.ay, align 4, !tbaa !443
  %.pre3.i = load i32, ptr %i.b, align 8, !tbaa !444
  br label %_ZN8ImVectorIPcE9push_backERKS0_.exit

_ZN8ImVectorIPcE9push_backERKS0_.exit:            ; preds = %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i, %bb.h
  %i.bo = phi i32 [ %i.ax, %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.h ]
  %i.bp = phi ptr [ %.pre.i, %._ZN8ImVectorIPcE7reserveEi.exit_crit_edge.i ], [ %i.bi, %bb.h ]
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  store i64 %2, ptr %i.br, align 8
  %i.bs = load i32, ptr %i.b, align 8, !tbaa !444 ; 2 uses
  %i.bt = add nsw i32 %i.bs, 1                    ; 2 uses
  store i32 %i.bt, ptr %i.b, align 8, !tbaa !444
  %i.bu = tail call ptr @__ctype_toupper_loc() #33
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !456 ; 9 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 268
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !61 ; 2 uses
  %i.by = load i8, ptr %1, align 1, !tbaa !156    ; 2 uses
  %i.bz = sext i8 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !61 ; 4 uses
  %i.cc = icmp ne i32 %i.bx, %i.cb
  %.not9.i23 = icmp eq i8 %i.by, 0                ; 2 uses
  %or.cond10.i24 = or i1 %.not9.i23, %i.cc
  br i1 %or.cond10.i24, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32, label %toupper.exit.i25

toupper.exit.i25:                                 ; preds = %_ZN8ImVectorIPcE9push_backERKS0_.exit, %toupper.exit.i25
  %.012.i26 = phi ptr [ %i.ce, %toupper.exit.i25 ], [ @.str.2127, %_ZN8ImVectorIPcE9push_backERKS0_.exit ]
  %.0511.i27 = phi ptr [ %i.cd, %toupper.exit.i25 ], [ %1, %_ZN8ImVectorIPcE9push_backERKS0_.exit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0511.i27, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i26, i64 1 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !156
  %i.cg = sext i8 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !61 ; 2 uses
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !156 ; 2 uses
  %i.ck = sext i8 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !61 ; 2 uses
  %i.cn = icmp ne i32 %i.ci, %i.cm
  %.not.i28 = icmp eq i8 %i.cj, 0
  %or.cond.i29 = or i1 %.not.i28, %i.cn
  br i1 %or.cond.i29, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32, label %toupper.exit.i25, !llvm.loop !458

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32:     ; preds = %toupper.exit.i25, %_ZN8ImVectorIPcE9push_backERKS0_.exit
  %.lcssa8.i30 = phi i32 [ %i.bx, %_ZN8ImVectorIPcE9push_backERKS0_.exit ], [ %i.ci, %toupper.exit.i25 ]
  %.lcssa.i31 = phi i32 [ %i.cb, %_ZN8ImVectorIPcE9push_backERKS0_.exit ], [ %i.cm, %toupper.exit.i25 ]
  %i.co = icmp eq i32 %.lcssa8.i30, %.lcssa.i31
  br i1 %i.co, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !437
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.k

._crit_edge.i:                                    ; preds = %bb.k, %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !442 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i33, label %_ZN17ExampleAppConsole8ClearLogEv.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 0, ptr %i.cv, align 4, !tbaa !443
  store i32 0, ptr %i.cp, align 8, !tbaa !444
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.cu)
  store ptr null, ptr %i.ct, align 8, !tbaa !442
  br label %_ZN17ExampleAppConsole8ClearLogEv.exit

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !442
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !121
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cy)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cz = load i32, ptr %i.cp, align 8, !tbaa !437
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next.i, %i.da
  br i1 %i.db, label %bb.k, label %._crit_edge.i, !llvm.loop !445

bb.l:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bv, i64 288
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !61 ; 2 uses
  %i.de = icmp ne i32 %i.dd, %i.cb
  %or.cond10.i35 = or i1 %.not9.i23, %i.de
  br i1 %or.cond10.i35, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43, label %toupper.exit.i36

toupper.exit.i36:                                 ; preds = %bb.l, %toupper.exit.i36
  %.012.i37 = phi ptr [ %i.dg, %toupper.exit.i36 ], [ @.str.2125, %bb.l ]
  %.0511.i38 = phi ptr [ %i.df, %toupper.exit.i36 ], [ %1, %bb.l ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0511.i38, i64 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i37, i64 1 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !156
  %i.di = sext i8 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !61 ; 2 uses
  %i.dl = load i8, ptr %i.df, align 1, !tbaa !156 ; 2 uses
  %i.dm = sext i8 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !61 ; 2 uses
  %i.dp = icmp ne i32 %i.dk, %i.do
  %.not.i39 = icmp eq i8 %i.dl, 0
  %or.cond.i40 = or i1 %.not.i39, %i.dp
  br i1 %or.cond.i40, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread, label %toupper.exit.i36, !llvm.loop !458

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43:     ; preds = %bb.l
  %i.dq = icmp eq i32 %i.dd, %i.cb
  br i1 %i.dq, label %bb.m, label %.critedge

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread: ; preds = %toupper.exit.i36
  %i.dr = icmp eq i32 %i.dk, %i.do
  br i1 %i.dr, label %bb.m, label %toupper.exit.i46

bb.m:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread, %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2151)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !459
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph67, label %_ZN17ExampleAppConsole8ClearLogEv.exit

.lr.ph67:                                         ; preds = %bb.m
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph67, %bb.n
  %indvars.iv83 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next84, %bb.n ] ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !449
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv83
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !121
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2152, ptr noundef %i.dy)
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.dz = load i32, ptr %i.ds, align 8, !tbaa !459
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next84, %i.ea
  br i1 %i.eb, label %bb.n, label %_ZN17ExampleAppConsole8ClearLogEv.exit, !llvm.loop !460

toupper.exit.i46:                                 ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread, %toupper.exit.i46
  %.012.i47 = phi ptr [ %i.ed, %toupper.exit.i46 ], [ @.str.2126, %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread ]
  %.0511.i48 = phi ptr [ %i.ec, %toupper.exit.i46 ], [ %1, %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43.thread ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.0511.i48, i64 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i47, i64 1 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !156
  %i.ef = sext i8 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !61 ; 2 uses
  %i.ei = load i8, ptr %i.ec, align 1, !tbaa !156 ; 2 uses
  %i.ej = sext i8 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !61 ; 2 uses
  %i.em = icmp ne i32 %i.eh, %i.el
  %.not.i49 = icmp eq i8 %i.ei, 0
  %or.cond.i50 = or i1 %.not.i49, %i.em
  br i1 %or.cond.i50, label %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit53.loopexit, label %toupper.exit.i46, !llvm.loop !458

_ZN17ExampleAppConsole7StricmpEPKcS1_.exit53.loopexit: ; preds = %toupper.exit.i46
  %i.en = icmp eq i32 %i.eh, %i.el
  br i1 %i.en, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit53.loopexit
  %i.eo = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 10) ; 2 uses
  %i.ep = add nsw i32 %i.eo, -10
  %.not = icmp sgt i32 %i.ep, %i.bs
  br i1 %.not, label %_ZN17ExampleAppConsole8ClearLogEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.eq = zext nneg i32 %i.eo to i64
  %i.er = add nsw i64 %i.eq, -10
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv80 = phi i64 [ %i.er, %.lr.ph ], [ %indvars.iv.next81, %bb.p ] ; 3 uses
  %i.es = load ptr, ptr %i.d, align 8, !tbaa !442
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %indvars.iv80
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !121
  %i.ev = trunc nuw nsw i64 %indvars.iv80 to i32
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2153, i32 noundef %i.ev, ptr noundef %i.eu)
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.ew = load i32, ptr %i.b, align 8, !tbaa !452
  %i.ex = sext i32 %i.ew to i64
  %i.ey = icmp slt i64 %indvars.iv.next81, %i.ex
  br i1 %i.ey, label %bb.p, label %_ZN17ExampleAppConsole8ClearLogEv.exit, !llvm.loop !461

.critedge:                                        ; preds = %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit43, %_ZN17ExampleAppConsole7StricmpEPKcS1_.exit53.loopexit
  tail call void (ptr, ptr, ...) @_ZN17ExampleAppConsole6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef nonnull @.str.2154, ptr noundef nonnull %1)
  br label %_ZN17ExampleAppConsole8ClearLogEv.exit

_ZN17ExampleAppConsole8ClearLogEv.exit:           ; preds = %bb.p, %bb.n, %bb.o, %bb.m, %bb.j, %._crit_edge.i, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 593
  store i8 1, ptr %i.ez, align 1, !tbaa !451
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN17ExampleAppConsole16TextEditCallbackEP26ImGuiInputTextCallbackData(ptr noundef nonnull align 8 dereferenceable(594) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.ImVector.27, align 8        ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !410
  switch i32 %i.b, label %.thread111 [
    i32 262144, label %bb.b
    i32 524288, label %bb.w
  ]

end_hunk_4
begin_hunk_5_@_ZN24ExampleAppPropertyEditor12DrawTreeNodeEP15ExampleTreeNode:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 340
  tail call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !389
  tail call void @_ZN5ImGui20SetNextItemStorageIDEj(i32 noundef %i.o)
  %i.p = load i32, ptr %i.n, align 4, !tbaa !389
  %i.q = sext i32 %i.p to i64
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = tail call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef %i.r, i32 noundef %.1, ptr noundef nonnull @.str.1078, ptr noundef nonnull %1)
  %i.t = load i32, ptr %i.e, align 8, !tbaa !392
  %i.u = load i8, ptr %i.i, align 1, !tbaa !386, !range !14, !noundef !15
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = tail call noundef zeroext i1 @_ZN5ImGui13IsItemFocusedEv()
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %1, ptr %i.b, align 8, !tbaa !125
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = icmp ne i32 %i.t, 0
  %narrow = and i1 %i.s, %i.x
  ret i1 %narrow
}

declare void @_ZN5ImGui8TreePushEPKc(ptr noundef) local_unnamed_addr #1

declare void @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints11AspectRatioEP21ImGuiSizeCallbackData(ptr nofree noundef captures(none) initializes((28, 32)) %0) #28 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !478
  %i.b = load float, ptr %i.a, align 4, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load float, ptr %i.c, align 8, !tbaa !480
  %i.e = fdiv float %i.d, %i.b
  %i.f = fptosi float %i.e to i32
  %i.g = sitofp i32 %i.f to float
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.g, ptr %i.h, align 4, !tbaa !481
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints6SquareEP21ImGuiSizeCallbackData(ptr nofree noundef captures(none) %0) #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !480 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !481 ; 2 uses
  %.inv = fcmp oge float %i.b, %i.d
  %. = select i1 %.inv, float %i.b, float %i.d    ; 2 uses
  store float %., ptr %i.c, align 4, !tbaa !481
  store float %., ptr %i.a, align 8, !tbaa !480
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints4StepEP21ImGuiSizeCallbackData(ptr nofree noundef captures(none) %0) #28 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !478
  %i.b = load float, ptr %i.a, align 4, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load <2 x float>, ptr %i.c, align 8, !tbaa !56
  %i.e = insertelement <2 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.g = fdiv <2 x float> %i.d, %i.f
  %i.h = fadd <2 x float> %i.g, splat (float 5.000000e-01)
  %i.i = fptosi <2 x float> %i.h to <2 x i32>
  %i.j = sitofp <2 x i32> %i.i to <2 x float>
  %i.k = fmul <2 x float> %i.f, %i.j
  store <2 x float> %i.k, ptr %i.c, align 8
  ret void
}

declare void @_ZN5ImGui13SetWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui20SetNextWindowBgAlphaEf(float noundef) local_unnamed_addr #1

declare noundef float @_ZN5ImGui13CalcItemWidthEv() local_unnamed_addr #1

declare noundef i32 @_ZN5ImGui11GetColorU32Ejf(i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList7AddNgonERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList10AddEllipseERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList18AddBezierQuadraticERK6ImVec2S2_S2_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList14AddBezierCubicERK6ImVec2S2_S2_S2_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList13AddNgonFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList16AddEllipseFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList26PathBezierQuadraticCurveToERK6ImVec2S2_i(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8ImVectorI6ImVec2ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable
}

declare noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare <2 x float> @_ZN5ImGui12GetWindowPosEv() local_unnamed_addr #1

declare noundef ptr @_ZN5ImGui21GetBackgroundDrawListEv() local_unnamed_addr #1

declare noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList20AddConcavePolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN18ImDrawListSplitter5SplitEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN18ImDrawListSplitter5MergeEP10ImDrawList(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN19ExampleAppDocumentsC2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %0, i8 0, i64 41, i1 false)
  %i.b = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 448)
          to label %.noexc unwind label %bb.w     ; 3 uses

.noexc:                                           ; preds = %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.d, null
  br i1 %.not6.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc
  %i.e = load i32, ptr %0, align 8, !tbaa !20
  %i.f = sext i32 %i.e to i64
  %i.g = mul nsw i64 %i.f, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.b, ptr nonnull align 4 %i.d, i64 %i.g, i1 false)
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !17
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.h)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %.noexc, %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !17
  store i32 8, ptr %i.a, align 4, !tbaa !482
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !20
  %i.i = sext i32 %.pre3.i to i64
  %i.j = getelementptr inbounds [56 x i8], ptr %i.b, i64 %i.i ; 6 uses
  store i64 28538328763884876, ptr %i.j, align 4
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 0, ptr %.sroa.5121.0..sroa_idx, align 4
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i8 1, ptr %.sroa.6122.0..sroa_idx, align 4
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 37
  store i8 1, ptr %.sroa.7123.0..sroa_idx, align 1
  %.sroa.8124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 38
  store i8 0, ptr %.sroa.8124.0..sroa_idx, align 2
  %.sroa.9126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store <4 x i32> <i32 1053609165, i32 1061997773, i32 1053609165, i32 1065353216>, ptr %.sroa.9126.0..sroa_idx, align 4
  %i.k = load i32, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.l = add nsw i32 %i.k, 1                      ; 6 uses
  store i32 %i.l, ptr %0, align 8, !tbaa !20
  %i.m = load i32, ptr %i.a, align 4, !tbaa !482
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i5

._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i5: ; preds = %bb.b
  %.phi.trans.insert.i6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i7 = load ptr, ptr %.phi.trans.insert.i6, align 8, !tbaa !17
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %i.k, 2
  %.not.i.i8 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i8, label %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i9, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sdiv i32 %i.l, 2
  %i.q = add nsw i32 %i.p, %i.l
  br label %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i9

_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i9: ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.q, %bb.d ], [ 8, %bb.c ]
  %i.s = tail call noundef i32 @llvm.smax.i32(i32 %i.r, i32 %i.o) ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.t, 56
  %i.v = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.u)
          to label %.noexc12 unwind label %bb.x   ; 3 uses

.noexc12:                                         ; preds = %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17   ; 2 uses
  %.not6.i.i10 = icmp eq ptr %i.x, null
  br i1 %.not6.i.i10, label %.noexc13, label %bb.e

bb.e:                                             ; preds = %.noexc12
  %i.y = load i32, ptr %0, align 8, !tbaa !20
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.v, ptr nonnull align 4 %i.x, i64 %i.aa, i1 false)
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !17
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ab)
          to label %.noexc13 unwind label %bb.x

.noexc13:                                         ; preds = %bb.e, %.noexc12
  store ptr %i.v, ptr %i.w, align 8, !tbaa !17
  store i32 %i.s, ptr %i.a, align 4, !tbaa !482
  %.pre3.i11 = load i32, ptr %0, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i5, %.noexc13
  %i.ac = phi i32 [ %i.l, %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i5 ], [ %.pre3.i11, %.noexc13 ]
  %i.ad = phi ptr [ %.pre.i7, %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i5 ], [ %i.v, %.noexc13 ]
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [56 x i8], ptr %i.ad, i64 %i.ae ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.af, ptr noundef nonnull align 4 dereferenceable(9) @.str.2310, i64 9, i1 false)
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 1, ptr %.sroa.5110.0..sroa_idx, align 4
  %.sroa.6111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  store i8 1, ptr %.sroa.6111.0..sroa_idx, align 4
  %.sroa.7112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 37
  store i8 1, ptr %.sroa.7112.0..sroa_idx, align 1
  %.sroa.8113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 38
  store i8 0, ptr %.sroa.8113.0..sroa_idx, align 2
  %.sroa.9115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store <4 x i32> <i32 1061997773, i32 1056964608, i32 1065353216, i32 1065353216>, ptr %.sroa.9115.0..sroa_idx, align 4
  %i.ag = load i32, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.ah = add nsw i32 %i.ag, 1                    ; 6 uses
  store i32 %i.ah, ptr %0, align 8, !tbaa !20
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !482
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i15

._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i15: ; preds = %bb.f
  %.phi.trans.insert.i16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i17 = load ptr, ptr %.phi.trans.insert.i16, align 8, !tbaa !17
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %i.ag, 2
  %.not.i.i18 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i18, label %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i19, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = sdiv i32 %i.ah, 2
  %i.am = add nsw i32 %i.al, %i.ah
  br label %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i19

_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i19: ; preds = %bb.h, %bb.g
  %i.an = phi i32 [ %i.am, %bb.h ], [ 8, %bb.g ]
  %i.ao = tail call noundef i32 @llvm.smax.i32(i32 %i.an, i32 %i.ak) ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %i.ap, 56
  %i.ar = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aq)
          to label %.noexc22 unwind label %bb.y   ; 3 uses

.noexc22:                                         ; preds = %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i19
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %.not6.i.i20 = icmp eq ptr %i.at, null
  br i1 %.not6.i.i20, label %.noexc23, label %bb.i

bb.i:                                             ; preds = %.noexc22
  %i.au = load i32, ptr %0, align 8, !tbaa !20
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.av, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ar, ptr nonnull align 4 %i.at, i64 %i.aw, i1 false)
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !17
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ax)
          to label %.noexc23 unwind label %bb.y

.noexc23:                                         ; preds = %bb.i, %.noexc22
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !17
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !482
  %.pre3.i21 = load i32, ptr %0, align 8, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i15, %.noexc23
  %i.ay = phi i32 [ %i.ah, %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i15 ], [ %.pre3.i21, %.noexc23 ]
  %i.az = phi ptr [ %.pre.i17, %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i15 ], [ %i.ar, %.noexc23 ]
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [56 x i8], ptr %i.az, i64 %i.ba ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.bb, ptr noundef nonnull align 4 dereferenceable(7) @.str.1054, i64 7, i1 false)
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i32 2, ptr %.sroa.5100.0..sroa_idx, align 4
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 36
  store i8 1, ptr %.sroa.6101.0..sroa_idx, align 4
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 37
  store i8 1, ptr %.sroa.7102.0..sroa_idx, align 1
  %.sroa.8103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 38
  store i8 0, ptr %.sroa.8103.0..sroa_idx, align 2
  %.sroa.9105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store <4 x i32> <i32 1065353216, i32 1061997773, i32 1056964608, i32 1065353216>, ptr %.sroa.9105.0..sroa_idx, align 4
  %i.bc = load i32, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.bd = add nsw i32 %i.bc, 1                    ; 6 uses
  store i32 %i.bd, ptr %0, align 8, !tbaa !20
  %i.be = load i32, ptr %i.a, align 4, !tbaa !482
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.k, label %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i25

._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i25: ; preds = %bb.j
  %.phi.trans.insert.i26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i27 = load ptr, ptr %.phi.trans.insert.i26, align 8, !tbaa !17
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bg = add nsw i32 %i.bc, 2
  %.not.i.i28 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i28, label %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i29, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = sdiv i32 %i.bd, 2
  %i.bi = add nsw i32 %i.bh, %i.bd
  br label %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i29

_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i29: ; preds = %bb.l, %bb.k
  %i.bj = phi i32 [ %i.bi, %bb.l ], [ 8, %bb.k ]
  %i.bk = tail call noundef i32 @llvm.smax.i32(i32 %i.bj, i32 %i.bg) ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i64 %i.bl, 56
  %i.bn = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bm)
          to label %.noexc32 unwind label %bb.z   ; 3 uses

.noexc32:                                         ; preds = %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i29
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 2 uses
  %.not6.i.i30 = icmp eq ptr %i.bp, null
  br i1 %.not6.i.i30, label %.noexc33, label %bb.m

bb.m:                                             ; preds = %.noexc32
  %i.bq = load i32, ptr %0, align 8, !tbaa !20
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul nsw i64 %i.br, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bn, ptr nonnull align 4 %i.bp, i64 %i.bs, i1 false)
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !17
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bt)
          to label %.noexc33 unwind label %bb.z

.noexc33:                                         ; preds = %bb.m, %.noexc32
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !17
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !482
  %.pre3.i31 = load i32, ptr %0, align 8, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i25, %.noexc33
  %i.bu = phi i32 [ %i.bd, %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i25 ], [ %.pre3.i31, %.noexc33 ]
  %i.bv = phi ptr [ %.pre.i27, %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i25 ], [ %i.bn, %.noexc33 ]
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [56 x i8], ptr %i.bv, i64 %i.bw ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.bx, ptr noundef nonnull align 4 dereferenceable(7) @.str.2311, i64 7, i1 false)
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i32 3, ptr %.sroa.590.0..sroa_idx, align 4
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  store i8 0, ptr %.sroa.691.0..sroa_idx, align 4
  %.sroa.792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 37
  store i8 0, ptr %.sroa.792.0..sroa_idx, align 1
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 38
  store i8 0, ptr %.sroa.893.0..sroa_idx, align 2
  %.sroa.995.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store <4 x i32> <i32 1065353216, i32 1050253722, i32 1053609165, i32 1065353216>, ptr %.sroa.995.0..sroa_idx, align 4
  %i.by = load i32, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.bz = add nsw i32 %i.by, 1                    ; 6 uses
  store i32 %i.bz, ptr %0, align 8, !tbaa !20
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !482
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.o, label %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i35

._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i35: ; preds = %bb.n
  %.phi.trans.insert.i36 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i37 = load ptr, ptr %.phi.trans.insert.i36, align 8, !tbaa !17
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cc = add nsw i32 %i.by, 2
  %.not.i.i38 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i38, label %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i39, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = sdiv i32 %i.bz, 2
  %i.ce = add nsw i32 %i.cd, %i.bz
  br label %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i39

_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i39: ; preds = %bb.p, %bb.o
  %i.cf = phi i32 [ %i.ce, %bb.p ], [ 8, %bb.o ]
  %i.cg = tail call noundef i32 @llvm.smax.i32(i32 %i.cf, i32 %i.cc) ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.ch, 56
  %i.cj = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ci)
          to label %.noexc42 unwind label %bb.aa  ; 3 uses

.noexc42:                                         ; preds = %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i39
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !17 ; 2 uses
  %.not6.i.i40 = icmp eq ptr %i.cl, null
  br i1 %.not6.i.i40, label %.noexc43, label %bb.q

bb.q:                                             ; preds = %.noexc42
  %i.cm = load i32, ptr %0, align 8, !tbaa !20
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %i.cn, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cj, ptr nonnull align 4 %i.cl, i64 %i.co, i1 false)
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !17
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cp)
          to label %.noexc43 unwind label %bb.aa

.noexc43:                                         ; preds = %bb.q, %.noexc42
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !17
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !482
  %.pre3.i41 = load i32, ptr %0, align 8, !tbaa !20
  br label %bb.r

bb.r:                                             ; preds = %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i35, %.noexc43
  %i.cq = phi i32 [ %i.bz, %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i35 ], [ %.pre3.i41, %.noexc43 ]
  %i.cr = phi ptr [ %.pre.i37, %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i35 ], [ %i.cj, %.noexc43 ]
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr inbounds [56 x i8], ptr %i.cr, i64 %i.cs ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ct, ptr noundef nonnull align 4 dereferenceable(20) @.str.2312, i64 20, i1 false)
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store i32 4, ptr %.sroa.580.0..sroa_idx, align 4
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 36
  store i8 0, ptr %.sroa.681.0..sroa_idx, align 4
  %.sroa.782.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 37
  store i8 0, ptr %.sroa.782.0..sroa_idx, align 1
  %.sroa.883.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 38
  store i8 0, ptr %.sroa.883.0..sroa_idx, align 2
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store <4 x i32> <i32 1053609165, i32 1061997773, i32 1061997773, i32 1065353216>, ptr %.sroa.985.0..sroa_idx, align 4
  %i.cu = load i32, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.cv = add nsw i32 %i.cu, 1                    ; 6 uses
  store i32 %i.cv, ptr %0, align 8, !tbaa !20
  %i.cw = load i32, ptr %i.a, align 4, !tbaa !482
  %i.cx = icmp eq i32 %i.cv, %i.cw
  br i1 %i.cx, label %bb.s, label %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i45

._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i45: ; preds = %bb.r
  %.phi.trans.insert.i46 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i47 = load ptr, ptr %.phi.trans.insert.i46, align 8, !tbaa !17
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cy = add nsw i32 %i.cu, 2
  %.not.i.i48 = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i48, label %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i49, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = sdiv i32 %i.cv, 2
  %i.da = add nsw i32 %i.cz, %i.cv
  br label %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i49

_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i49: ; preds = %bb.t, %bb.s
  %i.db = phi i32 [ %i.da, %bb.t ], [ 8, %bb.s ]
  %i.dc = tail call noundef i32 @llvm.smax.i32(i32 %i.db, i32 %i.cy) ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %i.dd, 56
  %i.df = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.de)
          to label %.noexc52 unwind label %bb.ab  ; 3 uses

.noexc52:                                         ; preds = %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i49
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !17 ; 2 uses
  %.not6.i.i50 = icmp eq ptr %i.dh, null
  br i1 %.not6.i.i50, label %.noexc53, label %bb.u

bb.u:                                             ; preds = %.noexc52
  %i.di = load i32, ptr %0, align 8, !tbaa !20
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul nsw i64 %i.dj, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.df, ptr nonnull align 4 %i.dh, i64 %i.dk, i1 false)
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !17
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.dl)
          to label %.noexc53 unwind label %bb.ab

.noexc53:                                         ; preds = %bb.u, %.noexc52
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !17
  store i32 %i.dc, ptr %i.a, align 4, !tbaa !482
  %.pre3.i51 = load i32, ptr %0, align 8, !tbaa !20
  br label %bb.v

bb.v:                                             ; preds = %.noexc53, %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i45
  %i.dm = phi i32 [ %i.cv, %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i45 ], [ %.pre3.i51, %.noexc53 ]
  %i.dn = phi ptr [ %.pre.i47, %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i45 ], [ %i.df, %.noexc53 ]
  %i.do = sext i32 %i.dm to i64
  %i.dp = getelementptr inbounds [56 x i8], ptr %i.dn, i64 %i.do ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.dp, ptr noundef nonnull align 4 dereferenceable(14) @.str.2313, i64 14, i1 false)
  %.sroa.5.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store i32 5, ptr %.sroa.5.0..sroa_idx75, align 4
  %.sroa.6.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.dp, i64 36
  store i8 0, ptr %.sroa.6.0..sroa_idx76, align 4
  %.sroa.7.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.dp, i64 37
  store i8 0, ptr %.sroa.7.0..sroa_idx77, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 38
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  store <4 x i32> <i32 1061997773, i32 1061997773, i32 1065353216, i32 1065353216>, ptr %.sroa.978.0..sroa_idx, align 4
  %i.dq = load i32, ptr %0, align 8, !tbaa !20
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %0, align 8, !tbaa !20
  ret void

bb.w:                                             ; preds = %bb.a, %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.x:                                             ; preds = %bb.e, %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i9
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %bb.i, %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i19
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.m, %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i29
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.aa:                                            ; preds = %bb.q, %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i39
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.u, %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i49
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.dx, %bb.ab ], [ %i.dw, %bb.aa ], [ %i.dv, %bb.z ], [ %i.du, %bb.y ], [ %i.dt, %bb.x ], [ %i.ds, %bb.w ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8ImVectorIP10MyDocumentED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dy) #30
  tail call void @_ZN8ImVectorI10MyDocumentED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN19ExampleAppDocumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN8ImVectorIP10MyDocumentED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %_ZN8ImVectorIP10MyDocumentED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZN8ImVectorIP10MyDocumentED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %.not.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i1, label %_ZN8ImVectorI10MyDocumentED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8ImVectorIP10MyDocumentED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.f)
          to label %_ZN8ImVectorI10MyDocumentED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #31
  unreachable

_ZN8ImVectorI10MyDocumentED2Ev.exit:              ; preds = %_ZN8ImVectorIP10MyDocumentED2Ev.exit, %bb.d
  ret void
}

declare void @_ZN5ImGui6PushIDEPKv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN19ExampleAppDocuments21DisplayDocContextMenuEP10MyDocument(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui21BeginPopupContextItemEPKci(ptr noundef null, i32 noundef 0)
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.2315, ptr noundef %1) #30 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !21, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.398, i1 noundef zeroext false, i1 noundef zeroext %i.f)
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 38
  store i8 0, ptr %i.h, align 2, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load i8, ptr %i.d, align 4, !tbaa !21, !range !14, !noundef !15
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2316, ptr noundef nonnull @.str.2317, i1 noundef zeroext false, i1 noundef zeroext %i.j)
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.l, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load i8, ptr %i.d, align 4, !tbaa !21, !range !14, !noundef !15
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.907, ptr noundef nonnull @.str.2173, i1 noundef zeroext false, i1 noundef zeroext %i.n)
  br i1 %i.o, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.h, label %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i: ; preds = %bb.g
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !32
  br label %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.q, 1
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = sdiv i32 %i.q, 2
  %i.w = add nsw i32 %i.v, %i.q
  br label %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i

_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i: ; preds = %bb.i, %bb.h
  %i.x = phi i32 [ %i.w, %bb.i ], [ 8, %bb.h ]
  %i.y = call noundef i32 @llvm.smax.i32(i32 %i.x, i32 %i.u) ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aa) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ad, null
  br i1 %.not6.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i
  %i.ae = load i32, ptr %i.p, align 8, !tbaa !27
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ab, ptr nonnull align 8 %i.ad, i64 %i.ag, i1 false)
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !32
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ah)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK8ImVectorIP10MyDocumentE14_grow_capacityEi.exit.i
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !32
  store i32 %i.y, ptr %i.r, align 4, !tbaa !31
  %.pre3.i = load i32, ptr %i.p, align 8, !tbaa !27
  br label %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit

_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit: ; preds = %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i, %bb.k
  %i.ai = phi i32 [ %i.q, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.k ]
  %i.aj = phi ptr [ %.pre.i, %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i ], [ %i.ab, %bb.k ]
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = ptrtoint ptr %1 to i64
  store i64 %i.am, ptr %i.al, align 8
  %i.an = load i32, ptr %i.p, align 8, !tbaa !27
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.p, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit, %bb.f
  call void @_ZN5ImGui8EndPopupEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN19ExampleAppDocuments18DisplayDocContentsEP10MyDocument(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
end_hunk_5
