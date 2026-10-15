Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaUtil?download=true
inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 43
begin_hunk_0_@Gia_ManGroupProve:bb.a
  %spec.select.sink.i91 = phi i32 [ %spec.select.i90, %bb.z ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i91, ptr %i.cp, align 8, !tbaa !29
  %.pre184 = load i32, ptr %i.cw, align 4, !tbaa !24
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %Vec_IntPush.exit, %bb.v, %Vec_PtrGrow.exit12.sink.split.i
  %i.dp = phi i32 [ %i.cx, %Vec_IntPush.exit ], [ %i.cx, %bb.v ], [ %.pre184, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !25
  %i.ds = add nsw i32 %i.dp, 1
  store i32 %i.ds, ptr %i.cw, align 4, !tbaa !24
  %i.dt = sext i32 %i.dp to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dt
  store ptr %i.cv, ptr %i.du, align 8, !tbaa !26
  br label %.loopexit

bb.aa:                                            ; preds = %Abc_Clock.exit89
  %i.dv = call ptr @Abc_FrameReadPoStatuses(ptr noundef %i.b) #38
  %i.dw = call ptr @Abc_FrameReadCexVec(ptr noundef %i.b) #38 ; 2 uses
  %i.dx = icmp sgt i32 %i.bl, 0
  br i1 %i.dx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aa
  %i.dy = getelementptr i8, ptr %i.dv, i64 8
  %.not = icmp eq ptr %i.dw, null
  %i.dz = getelementptr i8, ptr %i.dw, i64 8
  %i.ea = sext i32 %i.bc to i64
  %i.eb = zext nneg i32 %i.bl to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %Vec_PtrPush.exit108
  %indvars.iv167 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next168, %Vec_PtrPush.exit108 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ea, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit108 ] ; 7 uses
  %storemerge157 = phi ptr [ %i.bb, %.lr.ph ], [ %storemerge158, %Vec_PtrPush.exit108 ] ; 6 uses
  %spec.select.sink.i97155.a = phi i32 [ %.promoted153, %.lr.ph ], [ %spec.select.sink.i97154, %Vec_PtrPush.exit108 ] ; 3 uses
  %.val65 = load ptr, ptr %i.dy, align 8, !tbaa !59
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val65, i64 %indvars.iv167
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !20
  %i.ee = trunc nsw i64 %indvars.iv to i32
  %i.ef = icmp eq i32 %spec.select.sink.i97155.a, %i.ee
  br i1 %i.ef, label %bb.ac, label %Vec_IntPush.exit100

bb.ac:                                            ; preds = %bb.ab
  %i.eg = icmp slt i64 %indvars.iv, 16
  br i1 %i.eg, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not9.i.i98 = icmp eq ptr %storemerge157, null
  br i1 %.not9.i.i98, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge157, i64 noundef 64) #41
  br label %Vec_IntPush.exit100

bb.af:                                            ; preds = %bb.ad
  %i.ei = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntPush.exit100

bb.ag:                                            ; preds = %bb.ac
  %i.ej = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.ek = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i93 = select i1 %i.ej, i32 %i.ek, i32 2147483647 ; 4 uses
  %i.el = sext i32 %spec.select.i93 to i64
  %.not.i9.i94 = icmp samesign ult i64 %indvars.iv, %i.el
  br i1 %.not.i9.i94, label %bb.ah, label %Vec_IntPush.exit100

bb.ah:                                            ; preds = %bb.ag
  %.not9.i10.i95 = icmp eq ptr %storemerge157, null
  %i.em = zext nneg i32 %spec.select.i93 to i64
  %i.en = shl nuw nsw i64 %i.em, 2                ; 2 uses
  br i1 %.not9.i10.i95, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eo = call ptr @realloc(ptr noundef nonnull %storemerge157, i64 noundef %i.en) #41
  br label %Vec_IntPush.exit100

bb.aj:                                            ; preds = %bb.ah
  %i.ep = call noalias ptr @malloc(i64 noundef %i.en) #40
  br label %Vec_IntPush.exit100

Vec_IntPush.exit100:                              ; preds = %bb.af, %bb.ae, %bb.aj, %bb.ai, %bb.ab, %bb.ag
  %storemerge158 = phi ptr [ %storemerge157, %bb.ab ], [ %storemerge157, %bb.ag ], [ %i.ei, %bb.af ], [ %i.eh, %bb.ae ], [ %i.eo, %bb.ai ], [ %i.ep, %bb.aj ] ; 5 uses
  %spec.select.sink.i97154 = phi i32 [ %spec.select.sink.i97155.a, %bb.ab ], [ %spec.select.sink.i97155.a, %bb.ag ], [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i93, %bb.ai ], [ %spec.select.i93, %bb.aj ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %storemerge158, i64 %indvars.iv
  store i32 %i.ed, ptr %i.eq, align 4, !tbaa !20
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !80  ; 7 uses
  br i1 %.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %Vec_IntPush.exit100
  %.val64 = load ptr, ptr %i.dz, align 8, !tbaa !25
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %indvars.iv167
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !26
  br label %bb.al

bb.al:                                            ; preds = %Vec_IntPush.exit100, %bb.ak
  %i.eu = phi ptr [ %i.et, %bb.ak ], [ null, %Vec_IntPush.exit100 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !24 ; 7 uses
  %i.ex = load i32, ptr %i.er, align 8, !tbaa !29
  %i.ey = icmp eq i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.am, label %Vec_PtrPush.exit108

bb.am:                                            ; preds = %bb.al
  %i.ez = icmp slt i32 %i.ew, 16
  br i1 %i.ez, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i106 = icmp eq ptr %i.fb, null
  br i1 %.not9.i.i106, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.fb, i64 noundef 128) #41
  br label %Vec_PtrGrow.exit.i107

bb.ap:                                            ; preds = %bb.an
  %i.fd = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #40
  br label %Vec_PtrGrow.exit.i107

Vec_PtrGrow.exit.i107:                            ; preds = %bb.ap, %bb.ao
  %i.fe = phi ptr [ %i.fc, %bb.ao ], [ %i.fd, %bb.ap ]
  store ptr %i.fe, ptr %i.fa, align 8, !tbaa !25
  br label %Vec_PtrGrow.exit12.sink.split.i104

bb.aq:                                            ; preds = %bb.am
  %i.ff = icmp samesign ult i32 %i.ew, 1073741823
  %i.fg = shl nuw nsw i32 %i.ew, 1
  %spec.select.i101 = select i1 %i.ff, i32 %i.fg, i32 2147483647 ; 3 uses
  %.not.i10.i102 = icmp samesign ult i32 %i.ew, %spec.select.i101
  br i1 %.not.i10.i102, label %bb.ar, label %Vec_PtrPush.exit108

bb.ar:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !25 ; 2 uses
  %.not9.i11.i103 = icmp eq ptr %i.fi, null
  %i.fj = zext nneg i32 %spec.select.i101 to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3                ; 2 uses
  br i1 %.not9.i11.i103, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = call ptr @realloc(ptr noundef nonnull %i.fi, i64 noundef %i.fk) #41
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.fm = call noalias ptr @malloc(i64 noundef %i.fk) #40
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fn = phi ptr [ %i.fl, %bb.as ], [ %i.fm, %bb.at ]
  store ptr %i.fn, ptr %i.fh, align 8, !tbaa !25
  br label %Vec_PtrGrow.exit12.sink.split.i104

Vec_PtrGrow.exit12.sink.split.i104:               ; preds = %bb.au, %Vec_PtrGrow.exit.i107
  %spec.select.sink.i105 = phi i32 [ %spec.select.i101, %bb.au ], [ 16, %Vec_PtrGrow.exit.i107 ]
  store i32 %spec.select.sink.i105, ptr %i.er, align 8, !tbaa !29
  %.pre = load i32, ptr %i.ev, align 4, !tbaa !24
  br label %Vec_PtrPush.exit108

Vec_PtrPush.exit108:                              ; preds = %bb.al, %bb.aq, %Vec_PtrGrow.exit12.sink.split.i104
  %i.fo = phi i32 [ %i.ew, %bb.al ], [ %i.ew, %bb.aq ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i104 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !25
  %i.fr = add nsw i32 %i.fo, 1
  store i32 %i.fr, ptr %i.ev, align 4, !tbaa !24
  %i.fs = sext i32 %i.fo to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fs
  store ptr %i.eu, ptr %i.ft, align 8, !tbaa !26
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.fu = icmp samesign ult i64 %indvars.iv.next168, %i.eb
  br i1 %i.fu, label %bb.ab, label %..loopexit_crit_edge, !llvm.loop !176

..loopexit_crit_edge:                             ; preds = %Vec_PtrPush.exit108
  %i.fv = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.fv, ptr %i.ab, align 4, !tbaa !61
  store i32 %spec.select.sink.i97154, ptr %i.aa, align 8
  store ptr %storemerge158, ptr %i.ag, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %..loopexit_crit_edge, %Vec_PtrPush.exit
  %i.fw = phi ptr [ %i.ay, %bb.aa ], [ %i.er, %..loopexit_crit_edge ], [ %i.cp, %Vec_PtrPush.exit ] ; 5 uses
  %i.fx = phi ptr [ %i.az, %bb.aa ], [ %storemerge158, %..loopexit_crit_edge ], [ %i.cq, %Vec_PtrPush.exit ]
  %i.fy = phi i32 [ %i.ba, %bb.aa ], [ %spec.select.sink.i97154, %..loopexit_crit_edge ], [ %i.cr, %Vec_PtrPush.exit ]
  %.promoted156182 = phi ptr [ %i.bb, %bb.aa ], [ %storemerge158, %..loopexit_crit_edge ], [ %i.cq, %Vec_PtrPush.exit ]
  %.promoted153179 = phi i32 [ %.promoted153, %bb.aa ], [ %spec.select.sink.i97154, %..loopexit_crit_edge ], [ %i.cr, %Vec_PtrPush.exit ]
  %.promoted177 = phi i32 [ %i.bc, %bb.aa ], [ %i.fv, %..loopexit_crit_edge ], [ %i.cs, %Vec_PtrPush.exit ]
  %exitcond.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !177

._crit_edge:                                      ; preds = %.loopexit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %.pre185 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !24 ; 4 uses
  %i.fz = sitofp i64 %i.cd to double              ; 3 uses
  %i.ga = icmp sgt i32 %.pre185, 0
  br i1 %i.ga, label %.lr.ph.i109, label %Vec_PtrCountZero.exit.thread

.lr.ph.i109:                                      ; preds = %._crit_edge
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !25 ; 2 uses
  %wide.trip.count.i110 = zext nneg i32 %.pre185 to i64 ; 3 uses
  %min.iters.check226 = icmp ult i32 %.pre185, 4
  br i1 %min.iters.check226, label %scalar.ph225.preheader, label %vector.ph227

vector.ph227:                                     ; preds = %.lr.ph.i109
  %n.vec228 = and i64 %wide.trip.count.i110, 2147483644 ; 3 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next233, %vector.body229 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph227 ], [ %i.gj, %vector.body229 ]
  %vec.phi231 = phi <2 x i32> [ zeroinitializer, %vector.ph227 ], [ %i.gk, %vector.body229 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %index230 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load = load <2 x ptr>, ptr %i.gd, align 8, !tbaa !26
  %wide.load232 = load <2 x ptr>, ptr %i.ge, align 8, !tbaa !26
  %i.gf = icmp eq <2 x ptr> %wide.load, splat (ptr null)
  %i.gg = icmp eq <2 x ptr> %wide.load232, splat (ptr null)
  %i.gh = zext <2 x i1> %i.gf to <2 x i32>
  %i.gi = zext <2 x i1> %i.gg to <2 x i32>
  %i.gj = add <2 x i32> %vec.phi, %i.gh           ; 2 uses
  %i.gk = add <2 x i32> %vec.phi231, %i.gi        ; 2 uses
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next233, %n.vec228
  br i1 %i.gl, label %middle.block234, label %vector.body229, !llvm.loop !178

middle.block234:                                  ; preds = %vector.body229
  %bin.rdx = add <2 x i32> %i.gk, %i.gj
  %i.gm = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n235 = icmp eq i64 %n.vec228, %wide.trip.count.i110
  br i1 %cmp.n235, label %Vec_PtrCountZero.exit, label %scalar.ph225.preheader

scalar.ph225.preheader:                           ; preds = %.lr.ph.i109, %middle.block234
  %indvars.iv.i111.ph = phi i64 [ 0, %.lr.ph.i109 ], [ %n.vec228, %middle.block234 ]
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i109 ], [ %i.gm, %middle.block234 ]
  br label %scalar.ph225

scalar.ph225:                                     ; preds = %scalar.ph225.preheader, %scalar.ph225
  %indvars.iv.i111 = phi i64 [ %indvars.iv.next.i112, %scalar.ph225 ], [ %indvars.iv.i111.ph, %scalar.ph225.preheader ] ; 2 uses
  %.08.i = phi i32 [ %i.gr, %scalar.ph225 ], [ %.08.i.ph, %scalar.ph225.preheader ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.i111
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !26
  %i.gp = icmp eq ptr %i.go, null
  %i.gq = zext i1 %i.gp to i32
  %i.gr = add nuw nsw i32 %.08.i, %i.gq           ; 2 uses
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %indvars.iv.next.i112, %wide.trip.count.i110
  br i1 %exitcond.not.i113, label %Vec_PtrCountZero.exit, label %scalar.ph225, !llvm.loop !179

Vec_PtrCountZero.exit:                            ; preds = %scalar.ph225, %middle.block234
  %.lcssa221 = phi i32 [ %i.gm, %middle.block234 ], [ %i.gr, %scalar.ph225 ]
  %i.gs = icmp slt i32 %.lcssa221, %.pre185
  br i1 %i.gs, label %bb.av, label %Vec_PtrCountZero.exit.thread

bb.av:                                            ; preds = %Vec_PtrCountZero.exit
  call void @Abc_FrameReplaceCexVec(ptr noundef %i.b, ptr noundef nonnull %i.a) #38
  br label %bb.ax

Vec_PtrCountZero.exit.thread:                     ; preds = %Vec_PtrAlloc.exit, %._crit_edge, %Vec_PtrCountZero.exit
  %8 = phi ptr [ %i.fw, %Vec_PtrCountZero.exit ], [ %i.fw, %._crit_edge ], [ %i.ah, %Vec_PtrAlloc.exit ] ; 2 uses
  %.0.lcssa208212 = phi double [ %i.fz, %Vec_PtrCountZero.exit ], [ %i.fz, %._crit_edge ], [ 0.000000e+00, %Vec_PtrAlloc.exit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !25 ; 2 uses
  %.not.i114 = icmp eq ptr %i.gu, null
  br i1 %.not.i114, label %Vec_PtrFree.exit, label %bb.aw

bb.aw:                                            ; preds = %Vec_PtrCountZero.exit.thread
  call void @free(ptr noundef nonnull %i.gu) #38
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %Vec_PtrCountZero.exit.thread, %bb.aw
  call void @free(ptr noundef nonnull %8) #38
  br label %bb.ax

bb.ax:                                            ; preds = %Vec_PtrFree.exit, %bb.av
  %.0.lcssa208211 = phi double [ %.0.lcssa208212, %Vec_PtrFree.exit ], [ %i.fz, %bb.av ]
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.37)
  %.val66 = load i32, ptr %i.i, align 8, !tbaa !69
  %.val67 = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.gv = getelementptr i8, ptr %.val67, i64 4
  %.val67.val = load i32, ptr %i.gv, align 4, !tbaa !61
  %i.gw = sub nsw i32 %.val67.val, %.val66
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.38, i32 noundef %i.gw)
  %i.gx = load i32, ptr %i.ab, align 4, !tbaa !61 ; 5 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph.i116, label %Vec_IntCountEntry.exit128

.lr.ph.i116:                                      ; preds = %bb.ax
  %i.gz = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 6 uses
  %wide.trip.count.i117 = zext nneg i32 %i.gx to i64 ; 9 uses
  %min.iters.check238 = icmp ult i32 %i.gx, 8
  br i1 %min.iters.check238, label %scalar.ph237.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %.lr.ph.i116
  %n.vec240 = and i64 %wide.trip.count.i117, 2147483640 ; 3 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph239
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next247, %vector.body241 ] ; 2 uses
  %vec.phi243 = phi <4 x i32> [ zeroinitializer, %vector.ph239 ], [ %i.hg, %vector.body241 ]
  %vec.phi244 = phi <4 x i32> [ zeroinitializer, %vector.ph239 ], [ %i.hh, %vector.body241 ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %index242 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %wide.load245 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !20
  %wide.load246 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !20
  %i.hc = icmp eq <4 x i32> %wide.load245, splat (i32 1)
  %i.hd = icmp eq <4 x i32> %wide.load246, splat (i32 1)
  %i.he = zext <4 x i1> %i.hc to <4 x i32>
  %i.hf = zext <4 x i1> %i.hd to <4 x i32>
  %i.hg = add <4 x i32> %vec.phi243, %i.he        ; 2 uses
  %i.hh = add <4 x i32> %vec.phi244, %i.hf        ; 2 uses
  %index.next247 = add nuw i64 %index242, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next247, %n.vec240
  br i1 %i.hi, label %middle.block248, label %vector.body241, !llvm.loop !180

middle.block248:                                  ; preds = %vector.body241
  %bin.rdx249 = add <4 x i32> %i.hh, %i.hg
  %i.hj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx249) ; 2 uses
  %cmp.n250 = icmp eq i64 %n.vec240, %wide.trip.count.i117
  br i1 %cmp.n250, label %.lr.ph.i122, label %scalar.ph237.preheader

scalar.ph237.preheader:                           ; preds = %.lr.ph.i116, %middle.block248
  %indvars.iv.i118.ph = phi i64 [ 0, %.lr.ph.i116 ], [ %n.vec240, %middle.block248 ]
  %.09.i.ph = phi i32 [ 0, %.lr.ph.i116 ], [ %i.hj, %middle.block248 ]
  br label %scalar.ph237

scalar.ph237:                                     ; preds = %scalar.ph237.preheader, %scalar.ph237
  %indvars.iv.i118 = phi i64 [ %indvars.iv.next.i119, %scalar.ph237 ], [ %indvars.iv.i118.ph, %scalar.ph237.preheader ] ; 2 uses
  %.09.i = phi i32 [ %i.ho, %scalar.ph237 ], [ %.09.i.ph, %scalar.ph237.preheader ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i118
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !20
  %i.hm = icmp eq i32 %i.hl, 1
  %i.hn = zext i1 %i.hm to i32
  %i.ho = add nuw nsw i32 %.09.i, %i.hn           ; 2 uses
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %wide.trip.count.i117
  br i1 %exitcond.not.i120, label %.lr.ph.i122, label %scalar.ph237, !llvm.loop !181

.lr.ph.i122:                                      ; preds = %scalar.ph237, %middle.block248
  %.lcssa220 = phi i32 [ %i.hj, %middle.block248 ], [ %i.ho, %scalar.ph237 ]
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.39, i32 noundef %.lcssa220)
  %min.iters.check254 = icmp ult i32 %i.gx, 8
  br i1 %min.iters.check254, label %scalar.ph253.preheader, label %vector.ph255

vector.ph255:                                     ; preds = %.lr.ph.i122
  %n.vec256 = and i64 %wide.trip.count.i117, 2147483640 ; 3 uses
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next263, %vector.body257 ] ; 2 uses
  %vec.phi259 = phi <4 x i32> [ zeroinitializer, %vector.ph255 ], [ %i.hv, %vector.body257 ]
  %vec.phi260 = phi <4 x i32> [ zeroinitializer, %vector.ph255 ], [ %i.hw, %vector.body257 ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %index258 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %wide.load261 = load <4 x i32>, ptr %i.hp, align 4, !tbaa !20
  %wide.load262 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !20
  %i.hr = icmp eq <4 x i32> %wide.load261, zeroinitializer
  %i.hs = icmp eq <4 x i32> %wide.load262, zeroinitializer
  %i.ht = zext <4 x i1> %i.hr to <4 x i32>
  %i.hu = zext <4 x i1> %i.hs to <4 x i32>
  %i.hv = add <4 x i32> %vec.phi259, %i.ht        ; 2 uses
  %i.hw = add <4 x i32> %vec.phi260, %i.hu        ; 2 uses
  %index.next263 = add nuw i64 %index258, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next263, %n.vec256
  br i1 %i.hx, label %middle.block264, label %vector.body257, !llvm.loop !182

middle.block264:                                  ; preds = %vector.body257
  %bin.rdx265 = add <4 x i32> %i.hw, %i.hv
  %i.hy = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx265) ; 2 uses
  %cmp.n266 = icmp eq i64 %n.vec256, %wide.trip.count.i117
  br i1 %cmp.n266, label %.lr.ph.i130, label %scalar.ph253.preheader

scalar.ph253.preheader:                           ; preds = %.lr.ph.i122, %middle.block264
  %indvars.iv.i124.ph = phi i64 [ 0, %.lr.ph.i122 ], [ %n.vec256, %middle.block264 ]
  %.09.i125.ph = phi i32 [ 0, %.lr.ph.i122 ], [ %i.hy, %middle.block264 ]
  br label %scalar.ph253

scalar.ph253:                                     ; preds = %scalar.ph253.preheader, %scalar.ph253
  %indvars.iv.i124 = phi i64 [ %indvars.iv.next.i126, %scalar.ph253 ], [ %indvars.iv.i124.ph, %scalar.ph253.preheader ] ; 2 uses
  %.09.i125 = phi i32 [ %i.id, %scalar.ph253 ], [ %.09.i125.ph, %scalar.ph253.preheader ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i124
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !20
  %i.ib = icmp eq i32 %i.ia, 0
  %i.ic = zext i1 %i.ib to i32
  %i.id = add nuw nsw i32 %.09.i125, %i.ic        ; 2 uses
  %indvars.iv.next.i126 = add nuw nsw i64 %indvars.iv.i124, 1 ; 2 uses
  %exitcond.not.i127 = icmp eq i64 %indvars.iv.next.i126, %wide.trip.count.i117
  br i1 %exitcond.not.i127, label %.lr.ph.i130, label %scalar.ph253, !llvm.loop !183

Vec_IntCountEntry.exit128:                        ; preds = %bb.ax
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.39, i32 noundef 0)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.40, i32 noundef 0)
  br label %Vec_IntCountEntry.exit136

.lr.ph.i130:                                      ; preds = %scalar.ph253, %middle.block264
  %.lcssa219 = phi i32 [ %i.hy, %middle.block264 ], [ %i.id, %scalar.ph253 ]
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.40, i32 noundef %.lcssa219)
  %min.iters.check270 = icmp ult i32 %i.gx, 8
  br i1 %min.iters.check270, label %scalar.ph269.preheader, label %vector.ph271

vector.ph271:                                     ; preds = %.lr.ph.i130
  %n.vec272 = and i64 %wide.trip.count.i117, 2147483640 ; 3 uses
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph271
  %index274 = phi i64 [ 0, %vector.ph271 ], [ %index.next279, %vector.body273 ] ; 2 uses
  %vec.phi275 = phi <4 x i32> [ zeroinitializer, %vector.ph271 ], [ %i.ik, %vector.body273 ]
  %vec.phi276 = phi <4 x i32> [ zeroinitializer, %vector.ph271 ], [ %i.il, %vector.body273 ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %index274 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %wide.load277 = load <4 x i32>, ptr %i.ie, align 4, !tbaa !20
  %wide.load278 = load <4 x i32>, ptr %i.if, align 4, !tbaa !20
  %i.ig = icmp eq <4 x i32> %wide.load277, splat (i32 -1)
  %i.ih = icmp eq <4 x i32> %wide.load278, splat (i32 -1)
  %i.ii = zext <4 x i1> %i.ig to <4 x i32>
  %i.ij = zext <4 x i1> %i.ih to <4 x i32>
  %i.ik = add <4 x i32> %vec.phi275, %i.ii        ; 2 uses
  %i.il = add <4 x i32> %vec.phi276, %i.ij        ; 2 uses
  %index.next279 = add nuw i64 %index274, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next279, %n.vec272
  br i1 %i.im, label %middle.block280, label %vector.body273, !llvm.loop !184

middle.block280:                                  ; preds = %vector.body273
  %bin.rdx281 = add <4 x i32> %i.il, %i.ik
  %i.in = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx281) ; 2 uses
  %cmp.n282 = icmp eq i64 %n.vec272, %wide.trip.count.i117
  br i1 %cmp.n282, label %Vec_IntCountEntry.exit136, label %scalar.ph269.preheader

scalar.ph269.preheader:                           ; preds = %.lr.ph.i130, %middle.block280
  %indvars.iv.i132.ph = phi i64 [ 0, %.lr.ph.i130 ], [ %n.vec272, %middle.block280 ]
  %.09.i133.ph = phi i32 [ 0, %.lr.ph.i130 ], [ %i.in, %middle.block280 ]
  br label %scalar.ph269

scalar.ph269:                                     ; preds = %scalar.ph269.preheader, %scalar.ph269
  %indvars.iv.i132 = phi i64 [ %indvars.iv.next.i134, %scalar.ph269 ], [ %indvars.iv.i132.ph, %scalar.ph269.preheader ] ; 2 uses
  %.09.i133 = phi i32 [ %i.is, %scalar.ph269 ], [ %.09.i133.ph, %scalar.ph269.preheader ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i132
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !20
  %i.iq = icmp eq i32 %i.ip, -1
  %i.ir = zext i1 %i.iq to i32
  %i.is = add nuw nsw i32 %.09.i133, %i.ir        ; 2 uses
  %indvars.iv.next.i134 = add nuw nsw i64 %indvars.iv.i132, 1 ; 2 uses
  %exitcond.not.i135 = icmp eq i64 %indvars.iv.next.i134, %wide.trip.count.i117
  br i1 %exitcond.not.i135, label %Vec_IntCountEntry.exit136, label %scalar.ph269, !llvm.loop !185

Vec_IntCountEntry.exit136:                        ; preds = %scalar.ph269, %middle.block280, %Vec_IntCountEntry.exit128
  %.0.lcssa.i129 = phi i32 [ 0, %Vec_IntCountEntry.exit128 ], [ %i.in, %middle.block280 ], [ %i.is, %scalar.ph269 ]
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.41, i32 noundef %.0.lcssa.i129)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.42)
  %i.it = fdiv double %.0.lcssa208211, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.107, double noundef %i.it)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.iu = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #38
  %i.iv = icmp slt i32 %i.iu, 0
  br i1 %i.iv, label %Abc_Clock.exit138, label %bb.ay

bb.ay:                                            ; preds = %Vec_IntCountEntry.exit136
  %i.iw = load i64, ptr %4, align 8, !tbaa !74
  %i.ix = mul nsw i64 %i.iw, 1000000
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !75
  %i.ja = sdiv i64 %i.iz, 1000
  %i.jb = add nsw i64 %i.ja, %i.ix
  br label %Abc_Clock.exit138

Abc_Clock.exit138:                                ; preds = %Vec_IntCountEntry.exit136, %bb.ay
  %.0.i137 = phi i64 [ %i.jb, %bb.ay ], [ -1, %Vec_IntCountEntry.exit136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.jc = add i64 %.0.i137, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.43)
  %i.jd = sitofp i64 %i.jc to double
  %i.je = fdiv double %i.jd, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.107, double noundef %i.je)
  %i.jf = load ptr, ptr %i.t, align 8, !tbaa !59  ; 2 uses
  %.not.i139 = icmp eq ptr %i.jf, null
end_hunk_0
