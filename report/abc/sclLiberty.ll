Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sclLiberty?download=true
inline.NumInlined: 558
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@Scl_LibertyReadTemplates:Scl_LibertyItem.exit
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  %.not238242 = icmp eq ptr %.val, null
  %.not238 = or i1 %i.h, %.not238242
  br i1 %.not238, label %._crit_edge241.thread, label %.lr.ph240

.lr.ph240:                                        ; preds = %Scl_LibertyItem.exit
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.g
  %i.j = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph240, %Scl_LibertyItem.exit185
  %.067239 = phi ptr [ %i.i, %.lr.ph240 ], [ %i.la, %Scl_LibertyItem.exit185 ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.067239, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.067239, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %.val90 = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.p = getelementptr inbounds i8, ptr %.val90, i64 %i.m ; 2 uses
  %i.q = sub nsw i64 %i.o, %i.m                   ; 4 uses
  %i.r = tail call i32 @strncmp(ptr noundef readonly %i.p, ptr noundef nonnull @.str.99, i64 noundef %i.q) #34
  %.not.i = icmp eq i32 %i.r, 0
  %.not214 = icmp eq i64 %i.q, 17
  %or.cond223 = and i1 %.not214, %.not.i
  br i1 %or.cond223, label %bb.b, label %Scl_LibertyCompare.exit.thread

Scl_LibertyCompare.exit.thread:                   ; preds = %bb.a
  %i.s = tail call i32 @strncmp(ptr noundef readonly %i.p, ptr noundef nonnull @.str.100, i64 noundef %i.q) #34
  %.not.i92 = icmp eq i32 %i.s, 0
  %.not215 = icmp eq i64 %i.q, 18
  %or.cond224 = and i1 %.not215, %.not.i92
  br i1 %or.cond224, label %bb.b, label %Vec_FltFreeP.exit152

bb.b:                                             ; preds = %Scl_LibertyCompare.exit.thread, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.067239, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22   ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %Vec_FltFreeP.exit152, label %Scl_LibertyItem.exit94

Scl_LibertyItem.exit94:                           ; preds = %bb.b
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %.not70229 = icmp eq ptr %i.w, null
  br i1 %.not70229, label %Vec_FltFreeP.exit152, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %Scl_LibertyItem.exit94
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %i.u
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Scl_LibertyItem.exit148
  %.0234 = phi ptr [ %.1, %Scl_LibertyItem.exit148 ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.064233 = phi ptr [ %.165, %Scl_LibertyItem.exit148 ], [ null, %.lr.ph.preheader ] ; 7 uses
  %.066232 = phi ptr [ %i.gz, %Scl_LibertyItem.exit148 ], [ %i.x, %.lr.ph.preheader ] ; 11 uses
  %.0197231 = phi ptr [ %.1198, %Scl_LibertyItem.exit148 ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.0199230 = phi ptr [ %.1200, %Scl_LibertyItem.exit148 ], [ null, %.lr.ph.preheader ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.066232, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.066232, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %.val88 = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.ac = getelementptr inbounds i8, ptr %.val88, i64 %i.z ; 4 uses
  %i.ad = sub nsw i64 %i.ab, %i.z                 ; 6 uses
  %i.ae = tail call i32 @strncmp(ptr noundef readonly %i.ac, ptr noundef nonnull @.str.87, i64 noundef %i.ad) #34
  %.not.i95 = icmp eq i32 %i.ae, 0
  %.not216 = icmp eq i64 %i.ad, 7                 ; 2 uses
  %or.cond225 = and i1 %.not216, %.not.i95
  br i1 %or.cond225, label %bb.c, label %Scl_LibertyCompare.exit96.thread

bb.c:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.066232, i64 32
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.066232, i64 40
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = sub nsw i64 %i.ai, %i.ag                ; 5 uses
  %i.ak = add nsw i64 %i.aj, 2
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !38  ; 5 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4      ; 3 uses
  %.val.i = load i32, ptr %i.am, align 4, !tbaa !39
  %i.an = sext i32 %.val.i to i64
  %i.ao = icmp sgt i64 %i.ak, %i.an
  br i1 %i.ao, label %bb.d, label %Vec_StrFill.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ap = trunc i64 %i.aj to i32
  %i.aq = add i32 %i.ap, 100                      ; 5 uses
  %i.ar = load i32, ptr %i.al, align 8, !tbaa !41
  %.not.i.i.i = icmp slt i32 %i.ar, %i.aq
  br i1 %.not.i.i.i, label %bb.e, label %Vec_StrGrow.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.at, null
  %i.au = sext i32 %i.aq to i64                   ; 2 uses
  br i1 %.not9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = tail call ptr @realloc(ptr noundef nonnull %i.at, i64 noundef %i.au) #31
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.au) #32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = phi ptr [ %i.av, %bb.f ], [ %i.aw, %bb.g ]
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !42
  store i32 %i.aq, ptr %i.al, align 8, !tbaa !41
  br label %Vec_StrGrow.exit.i.i

Vec_StrGrow.exit.i.i:                             ; preds = %bb.h, %bb.d
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !39
  %i.ay = icmp sgt i32 %i.aq, 0
  br i1 %i.ay, label %.lr.ph.i.i, label %Vec_StrFill.exit.i

.lr.ph.i.i:                                       ; preds = %Vec_StrGrow.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.i.i
  store i8 0, ptr %i.bb, align 1, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bc = load i32, ptr %i.am, align 4, !tbaa !39
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next.i.i, %i.bd
  br i1 %i.be, label %bb.i, label %Vec_StrFill.exit.i, !llvm.loop !43

Vec_StrFill.exit.i:                               ; preds = %bb.i, %Vec_StrGrow.exit.i.i, %bb.c
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %.val22.i = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 6 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.ag
  %i.bj = tail call ptr @strncpy(ptr noundef %.val22.i, ptr noundef %i.bi, i64 noundef %i.aj) #33 ; 0 uses
  %i.bk = icmp slt i64 %i.ag, %i.ai
  br i1 %i.bk, label %bb.j, label %bb.l

bb.j:                                             ; preds = %Vec_StrFill.exit.i
  %i.bl = load i8, ptr %.val22.i, align 1, !tbaa !20
  %i.bm = icmp eq i8 %i.bl, 34
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr i8, ptr %.val22.i, i64 %i.aj
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  store i8 0, ptr %i.bo, align 1, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %.val22.i, i64 1
  br label %Scl_LibertyReadString.exit

bb.l:                                             ; preds = %bb.j, %Vec_StrFill.exit.i
  %i.bq = getelementptr inbounds i8, ptr %.val22.i, i64 %i.aj
  store i8 0, ptr %i.bq, align 1, !tbaa !20
  br label %Scl_LibertyReadString.exit

Scl_LibertyReadString.exit:                       ; preds = %bb.k, %bb.l
  %.0.i = phi ptr [ %i.bp, %bb.k ], [ %.val22.i, %bb.l ]
  %i.br = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  store i32 0, ptr %i.bs, align 4, !tbaa !126
  store i32 100, ptr %i.br, align 8, !tbaa !129
  %i.bt = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !130
  %i.bv = tail call ptr @strtok(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.64) #33 ; 2 uses
  %.not5.i = icmp eq ptr %i.bv, null
  br i1 %.not5.i, label %Scl_LibertyReadFloatVec.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Scl_LibertyReadString.exit, %Vec_FltPush.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Vec_FltPush.exit.i ], [ 0, %Scl_LibertyReadString.exit ] ; 6 uses
  %storemerge11.i = phi ptr [ %storemerge12.i, %Vec_FltPush.exit.i ], [ %i.bt, %Scl_LibertyReadString.exit ] ; 6 uses
  %spec.select.sink.i9.i = phi i32 [ %spec.select.sink.i8.i, %Vec_FltPush.exit.i ], [ 100, %Scl_LibertyReadString.exit ] ; 4 uses
  %.06.i = phi ptr [ %i.ck, %Vec_FltPush.exit.i ], [ %i.bv, %Scl_LibertyReadString.exit ]
  %i.bw = tail call double @strtod(ptr noundef nonnull captures(none) %.06.i, ptr noundef null) #33, !inline_history !96
  %i.bx = fptrunc double %i.bw to float
  %i.by = trunc nsw i64 %indvars.iv.i to i32
  %i.bz = icmp eq i32 %spec.select.sink.i9.i, %i.by
  br i1 %i.bz, label %bb.m, label %Vec_FltPush.exit.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.ca = icmp samesign ult i64 %indvars.iv.i, 16
  br i1 %i.ca, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not9.i.i.i98 = icmp eq ptr %storemerge11.i, null
  br i1 %.not9.i.i.i98, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge11.i, i64 noundef 64) #31
  br label %Vec_FltPush.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #32
  br label %Vec_FltPush.exit.i

bb.q:                                             ; preds = %bb.m
  %i.cd = icmp samesign ult i64 %indvars.iv.i, 1073741823
  %i.ce = shl nuw nsw i32 %spec.select.sink.i9.i, 1
  %spec.select.i.i = select i1 %i.cd, i32 %i.ce, i32 2147483647 ; 4 uses
  %i.cf = zext nneg i32 %spec.select.i.i to i64
  %.not.i10.i.i = icmp samesign ult i64 %indvars.iv.i, %i.cf
  br i1 %.not.i10.i.i, label %bb.r, label %Vec_FltPush.exit.i

bb.r:                                             ; preds = %bb.q
  %.not9.i11.i.i = icmp eq ptr %storemerge11.i, null
  %1 = zext nneg i32 %spec.select.i.i to i64
  %i.cg = shl nuw nsw i64 %1, 2                   ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = tail call ptr @realloc(ptr noundef nonnull %storemerge11.i, i64 noundef %i.cg) #31
  br label %Vec_FltPush.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ci = tail call noalias ptr @malloc(i64 noundef %i.cg) #32
  br label %Vec_FltPush.exit.i

Vec_FltPush.exit.i:                               ; preds = %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %.lr.ph.i
  %storemerge12.i = phi ptr [ %storemerge11.i, %.lr.ph.i ], [ %storemerge11.i, %bb.q ], [ %i.cc, %bb.p ], [ %i.cb, %bb.o ], [ %i.ch, %bb.s ], [ %i.ci, %bb.t ] ; 3 uses
  %spec.select.sink.i8.i = phi i32 [ %spec.select.sink.i9.i, %.lr.ph.i ], [ %spec.select.sink.i9.i, %bb.q ], [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i.i, %bb.s ], [ %spec.select.i.i, %bb.t ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %storemerge12.i, i64 %indvars.iv.i
  store float %i.bx, ptr %i.cj, align 4, !tbaa !131
  %i.ck = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.64) #33 ; 2 uses
  %.not.i97 = icmp eq ptr %i.ck, null
  br i1 %.not.i97, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !133

._crit_edge.i:                                    ; preds = %Vec_FltPush.exit.i
  %i.cl = trunc nsw i64 %indvars.iv.next.i to i32
  store i32 %i.cl, ptr %i.bs, align 4, !tbaa !126
  store i32 %spec.select.sink.i8.i, ptr %i.br, align 8
  store ptr %storemerge12.i, ptr %i.bu, align 8
  br label %Scl_LibertyReadFloatVec.exit

Scl_LibertyCompare.exit96.thread:                 ; preds = %.lr.ph
  %i.cm = tail call i32 @strncmp(ptr noundef readonly %i.ac, ptr noundef nonnull @.str.88, i64 noundef %i.ad) #34
  %.not.i99 = icmp eq i32 %i.cm, 0
  %or.cond226 = and i1 %.not216, %.not.i99
  br i1 %or.cond226, label %bb.u, label %Scl_LibertyCompare.exit100.thread

bb.u:                                             ; preds = %Scl_LibertyCompare.exit96.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %.066232, i64 32
  %i.co = load i64, ptr %i.cn, align 8            ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.066232, i64 40
  %i.cq = load i64, ptr %i.cp, align 8            ; 2 uses
  %i.cr = sub nsw i64 %i.cq, %i.co                ; 5 uses
  %i.cs = add nsw i64 %i.cr, 2
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !38  ; 5 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 4      ; 3 uses
  %.val.i101 = load i32, ptr %i.cu, align 4, !tbaa !39
  %i.cv = sext i32 %.val.i101 to i64
  %i.cw = icmp sgt i64 %i.cs, %i.cv
  br i1 %i.cw, label %bb.v, label %Vec_StrFill.exit.i102

bb.v:                                             ; preds = %bb.u
  %i.cx = trunc i64 %i.cr to i32
  %i.cy = add i32 %i.cx, 100                      ; 5 uses
  %i.cz = load i32, ptr %i.ct, align 8, !tbaa !41
  %.not.i.i.i105 = icmp slt i32 %i.cz, %i.cy
  br i1 %.not.i.i.i105, label %bb.w, label %Vec_StrGrow.exit.i.i106

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i.i110 = icmp eq ptr %i.db, null
  %i.dc = sext i32 %i.cy to i64                   ; 2 uses
  br i1 %.not9.i.i.i110, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = tail call ptr @realloc(ptr noundef nonnull %i.db, i64 noundef %i.dc) #31
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.de = tail call noalias ptr @malloc(i64 noundef %i.dc) #32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.df = phi ptr [ %i.dd, %bb.x ], [ %i.de, %bb.y ]
  store ptr %i.df, ptr %i.da, align 8, !tbaa !42
  store i32 %i.cy, ptr %i.ct, align 8, !tbaa !41
  br label %Vec_StrGrow.exit.i.i106

Vec_StrGrow.exit.i.i106:                          ; preds = %bb.z, %bb.v
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !39
  %i.dg = icmp sgt i32 %i.cy, 0
  br i1 %i.dg, label %.lr.ph.i.i107, label %Vec_StrFill.exit.i102

.lr.ph.i.i107:                                    ; preds = %Vec_StrGrow.exit.i.i106
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i107
  %indvars.iv.i.i108 = phi i64 [ 0, %.lr.ph.i.i107 ], [ %indvars.iv.next.i.i109, %bb.aa ] ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !42
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.i.i108
  store i8 0, ptr %i.dj, align 1, !tbaa !20
  %indvars.iv.next.i.i109 = add nuw nsw i64 %indvars.iv.i.i108, 1 ; 2 uses
  %i.dk = load i32, ptr %i.cu, align 4, !tbaa !39
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next.i.i109, %i.dl
  br i1 %i.dm, label %bb.aa, label %Vec_StrFill.exit.i102, !llvm.loop !43

Vec_StrFill.exit.i102:                            ; preds = %bb.aa, %Vec_StrGrow.exit.i.i106, %bb.u
  %i.dn = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %.val22.i103 = load ptr, ptr %i.do, align 8, !tbaa !42 ; 6 uses
  %i.dp = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.co
  %i.dr = tail call ptr @strncpy(ptr noundef %.val22.i103, ptr noundef %i.dq, i64 noundef %i.cr) #33 ; 0 uses
  %i.ds = icmp slt i64 %i.co, %i.cq
  br i1 %i.ds, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %Vec_StrFill.exit.i102
  %i.dt = load i8, ptr %.val22.i103, align 1, !tbaa !20
  %i.du = icmp eq i8 %i.dt, 34
  br i1 %i.du, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr i8, ptr %.val22.i103, i64 %i.cr
  %i.dw = getelementptr i8, ptr %i.dv, i64 -1
  store i8 0, ptr %i.dw, align 1, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %.val22.i103, i64 1
  br label %Scl_LibertyReadString.exit111

bb.ad:                                            ; preds = %bb.ab, %Vec_StrFill.exit.i102
  %i.dy = getelementptr inbounds i8, ptr %.val22.i103, i64 %i.cr
  store i8 0, ptr %i.dy, align 1, !tbaa !20
  br label %Scl_LibertyReadString.exit111

Scl_LibertyReadString.exit111:                    ; preds = %bb.ac, %bb.ad
  %.0.i104 = phi ptr [ %i.dx, %bb.ac ], [ %.val22.i103, %bb.ad ]
  %i.dz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  store i32 0, ptr %i.ea, align 4, !tbaa !126
  store i32 100, ptr %i.dz, align 8, !tbaa !129
  %i.eb = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !130
  %i.ed = tail call ptr @strtok(ptr noundef nonnull %.0.i104, ptr noundef nonnull @.str.64) #33 ; 2 uses
  %.not5.i112 = icmp eq ptr %i.ed, null
  br i1 %.not5.i112, label %Scl_LibertyReadFloatVec.exit, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %Scl_LibertyReadString.exit111, %Vec_FltPush.exit.i118
  %indvars.iv.i114 = phi i64 [ %indvars.iv.next.i121, %Vec_FltPush.exit.i118 ], [ 0, %Scl_LibertyReadString.exit111 ] ; 6 uses
  %storemerge11.i115 = phi ptr [ %storemerge12.i119, %Vec_FltPush.exit.i118 ], [ %i.eb, %Scl_LibertyReadString.exit111 ] ; 6 uses
  %spec.select.sink.i9.i116 = phi i32 [ %spec.select.sink.i8.i120, %Vec_FltPush.exit.i118 ], [ 100, %Scl_LibertyReadString.exit111 ] ; 4 uses
  %.06.i117 = phi ptr [ %i.es, %Vec_FltPush.exit.i118 ], [ %i.ed, %Scl_LibertyReadString.exit111 ]
  %i.ee = tail call double @strtod(ptr noundef nonnull captures(none) %.06.i117, ptr noundef null) #33, !inline_history !96
  %i.ef = fptrunc double %i.ee to float
  %i.eg = trunc nsw i64 %indvars.iv.i114 to i32
  %i.eh = icmp eq i32 %spec.select.sink.i9.i116, %i.eg
  br i1 %i.eh, label %bb.ae, label %Vec_FltPush.exit.i118

bb.ae:                                            ; preds = %.lr.ph.i113
  %i.ei = icmp samesign ult i64 %indvars.iv.i114, 16
  br i1 %i.ei, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.not9.i.i.i128 = icmp eq ptr %storemerge11.i115, null
  br i1 %.not9.i.i.i128, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ej = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge11.i115, i64 noundef 64) #31
  br label %Vec_FltPush.exit.i118

bb.ah:                                            ; preds = %bb.af
  %i.ek = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #32
  br label %Vec_FltPush.exit.i118

bb.ai:                                            ; preds = %bb.ae
  %i.el = icmp samesign ult i64 %indvars.iv.i114, 1073741823
  %i.em = shl nuw nsw i32 %spec.select.sink.i9.i116, 1
  %spec.select.i.i125 = select i1 %i.el, i32 %i.em, i32 2147483647 ; 4 uses
  %i.en = zext nneg i32 %spec.select.i.i125 to i64
  %.not.i10.i.i126 = icmp samesign ult i64 %indvars.iv.i114, %i.en
  br i1 %.not.i10.i.i126, label %bb.aj, label %Vec_FltPush.exit.i118

bb.aj:                                            ; preds = %bb.ai
  %.not9.i11.i.i127 = icmp eq ptr %storemerge11.i115, null
  %2 = zext nneg i32 %spec.select.i.i125 to i64
  %i.eo = shl nuw nsw i64 %2, 2                   ; 2 uses
  br i1 %.not9.i11.i.i127, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = tail call ptr @realloc(ptr noundef nonnull %storemerge11.i115, i64 noundef %i.eo) #31
  br label %Vec_FltPush.exit.i118

bb.al:                                            ; preds = %bb.aj
  %i.eq = tail call noalias ptr @malloc(i64 noundef %i.eo) #32
  br label %Vec_FltPush.exit.i118

Vec_FltPush.exit.i118:                            ; preds = %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %.lr.ph.i113
  %storemerge12.i119 = phi ptr [ %storemerge11.i115, %.lr.ph.i113 ], [ %storemerge11.i115, %bb.ai ], [ %i.ek, %bb.ah ], [ %i.ej, %bb.ag ], [ %i.ep, %bb.ak ], [ %i.eq, %bb.al ] ; 3 uses
  %spec.select.sink.i8.i120 = phi i32 [ %spec.select.sink.i9.i116, %.lr.ph.i113 ], [ %spec.select.sink.i9.i116, %bb.ai ], [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i.i125, %bb.ak ], [ %spec.select.i.i125, %bb.al ] ; 2 uses
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i114, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %storemerge12.i119, i64 %indvars.iv.i114
  store float %i.ef, ptr %i.er, align 4, !tbaa !131
  %i.es = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.64) #33 ; 2 uses
  %.not.i122 = icmp eq ptr %i.es, null
  br i1 %.not.i122, label %._crit_edge.i123, label %.lr.ph.i113, !llvm.loop !133

._crit_edge.i123:                                 ; preds = %Vec_FltPush.exit.i118
  %i.et = trunc nsw i64 %indvars.iv.next.i121 to i32
  store i32 %i.et, ptr %i.ea, align 4, !tbaa !126
  store i32 %spec.select.sink.i8.i120, ptr %i.dz, align 8
  store ptr %storemerge12.i119, ptr %i.ec, align 8
  br label %Scl_LibertyReadFloatVec.exit

Scl_LibertyCompare.exit100.thread:                ; preds = %Scl_LibertyCompare.exit96.thread
  %i.eu = tail call i32 @strncmp(ptr noundef readonly %i.ac, ptr noundef nonnull @.str.101, i64 noundef %i.ad) #34
  %.not.i130 = icmp eq i32 %i.eu, 0
  %.not218 = icmp eq i64 %i.ad, 10                ; 2 uses
  %or.cond227 = and i1 %.not218, %.not.i130
  br i1 %or.cond227, label %bb.am, label %Scl_LibertyCompare.exit131.thread

bb.am:                                            ; preds = %Scl_LibertyCompare.exit100.thread
  %i.ev = getelementptr inbounds nuw i8, ptr %.066232, i64 32
  %i.ew = load i64, ptr %i.ev, align 8            ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.066232, i64 40
  %i.ey = load i64, ptr %i.ex, align 8            ; 2 uses
  %i.ez = sub nsw i64 %i.ey, %i.ew                ; 5 uses
  %i.fa = add nsw i64 %i.ez, 2
  %i.fb = load ptr, ptr %i.k, align 8, !tbaa !38  ; 5 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 4      ; 3 uses
  %.val.i132 = load i32, ptr %i.fc, align 4, !tbaa !39
  %i.fd = sext i32 %.val.i132 to i64
  %i.fe = icmp sgt i64 %i.fa, %i.fd
  br i1 %i.fe, label %bb.an, label %Vec_StrFill.exit.i133

bb.an:                                            ; preds = %bb.am
  %i.ff = trunc i64 %i.ez to i32
  %i.fg = add i32 %i.ff, 100                      ; 5 uses
  %i.fh = load i32, ptr %i.fb, align 8, !tbaa !41
  %.not.i.i.i136 = icmp slt i32 %i.fh, %i.fg
  br i1 %.not.i.i.i136, label %bb.ao, label %Vec_StrGrow.exit.i.i137

bb.ao:                                            ; preds = %bb.an
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i.i141 = icmp eq ptr %i.fj, null
  %i.fk = sext i32 %i.fg to i64                   ; 2 uses
  br i1 %.not9.i.i.i141, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fl = tail call ptr @realloc(ptr noundef nonnull %i.fj, i64 noundef %i.fk) #31
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fm = tail call noalias ptr @malloc(i64 noundef %i.fk) #32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fn = phi ptr [ %i.fl, %bb.ap ], [ %i.fm, %bb.aq ]
  store ptr %i.fn, ptr %i.fi, align 8, !tbaa !42
  store i32 %i.fg, ptr %i.fb, align 8, !tbaa !41
  br label %Vec_StrGrow.exit.i.i137

Vec_StrGrow.exit.i.i137:                          ; preds = %bb.ar, %bb.an
  store i32 %i.fg, ptr %i.fc, align 4, !tbaa !39
  %i.fo = icmp sgt i32 %i.fg, 0
  br i1 %i.fo, label %.lr.ph.i.i138, label %Vec_StrFill.exit.i133

.lr.ph.i.i138:                                    ; preds = %Vec_StrGrow.exit.i.i137
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i.i138
  %indvars.iv.i.i139 = phi i64 [ 0, %.lr.ph.i.i138 ], [ %indvars.iv.next.i.i140, %bb.as ] ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !42
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv.i.i139
  store i8 0, ptr %i.fr, align 1, !tbaa !20
  %indvars.iv.next.i.i140 = add nuw nsw i64 %indvars.iv.i.i139, 1 ; 2 uses
  %i.fs = load i32, ptr %i.fc, align 4, !tbaa !39
  %i.ft = sext i32 %i.fs to i64
  %i.fu = icmp slt i64 %indvars.iv.next.i.i140, %i.ft
  br i1 %i.fu, label %bb.as, label %Vec_StrFill.exit.i133, !llvm.loop !43

Vec_StrFill.exit.i133:                            ; preds = %bb.as, %Vec_StrGrow.exit.i.i137, %bb.am
  %i.fv = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %.val22.i134 = load ptr, ptr %i.fw, align 8, !tbaa !42 ; 6 uses
  %i.fx = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.ew
  %i.fz = tail call ptr @strncpy(ptr noundef %.val22.i134, ptr noundef %i.fy, i64 noundef %i.ez) #33 ; 0 uses
  %i.ga = icmp slt i64 %i.ew, %i.ey
  br i1 %i.ga, label %bb.at, label %bb.av

bb.at:                                            ; preds = %Vec_StrFill.exit.i133
  %i.gb = load i8, ptr %.val22.i134, align 1, !tbaa !20
  %i.gc = icmp eq i8 %i.gb, 34
  br i1 %i.gc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gd = getelementptr i8, ptr %.val22.i134, i64 %i.ez
  %i.ge = getelementptr i8, ptr %i.gd, i64 -1
  store i8 0, ptr %i.ge, align 1, !tbaa !20
  %i.gf = getelementptr inbounds nuw i8, ptr %.val22.i134, i64 1
  br label %Abc_UtilStrsav.exit

bb.av:                                            ; preds = %bb.at, %Vec_StrFill.exit.i133
  %i.gg = getelementptr inbounds i8, ptr %.val22.i134, i64 %i.ez
  store i8 0, ptr %i.gg, align 1, !tbaa !20
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.au, %bb.av
  %.0.i135 = phi ptr [ %i.gf, %bb.au ], [ %.val22.i134, %bb.av ] ; 2 uses
  %i.gh = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i135) #34
  %i.gi = add i64 %i.gh, 1
  %i.gj = tail call noalias ptr @malloc(i64 noundef %i.gi) #32 ; 2 uses
  %i.gk = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gj, ptr noundef nonnull readonly dereferenceable(1) %.0.i135) #33 ; 0 uses
  br label %Scl_LibertyReadFloatVec.exit

Scl_LibertyCompare.exit131.thread:                ; preds = %Scl_LibertyCompare.exit100.thread
  %i.gl = tail call i32 @strncmp(ptr noundef readonly %i.ac, ptr noundef nonnull @.str.102, i64 noundef %i.ad) #34
  %.not.i144 = icmp eq i32 %i.gl, 0
  %or.cond228 = and i1 %.not218, %.not.i144
  br i1 %or.cond228, label %bb.aw, label %Scl_LibertyReadFloatVec.exit

bb.aw:                                            ; preds = %Scl_LibertyCompare.exit131.thread
  %i.gm = getelementptr inbounds nuw i8, ptr %.066232, i64 32
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %.066232, i64 40
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = tail call ptr @Scl_LibertyReadString(ptr noundef nonnull %0, i64 %i.gn, i64 %i.gp) ; 3 uses
  %.not.i146 = icmp eq ptr %i.gq, null
  br i1 %.not.i146, label %Scl_LibertyReadFloatVec.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.gq) #34
  %i.gs = add i64 %i.gr, 1
  %i.gt = tail call noalias ptr @malloc(i64 noundef %i.gs) #32 ; 2 uses
  %i.gu = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull readonly dereferenceable(1) %i.gq) #33 ; 0 uses
  br label %Scl_LibertyReadFloatVec.exit

Scl_LibertyReadFloatVec.exit:                     ; preds = %Scl_LibertyCompare.exit131.thread, %bb.ax, %bb.aw, %._crit_edge.i123, %Scl_LibertyReadString.exit111, %._crit_edge.i, %Scl_LibertyReadString.exit, %Abc_UtilStrsav.exit
  %.1200 = phi ptr [ %.0199230, %Scl_LibertyCompare.exit131.thread ], [ %i.br, %._crit_edge.i ], [ %.0199230, %Abc_UtilStrsav.exit ], [ %.0199230, %bb.ax ], [ %i.br, %Scl_LibertyReadString.exit ], [ %.0199230, %Scl_LibertyReadString.exit111 ], [ %.0199230, %._crit_edge.i123 ], [ %.0199230, %bb.aw ] ; 9 uses
  %.1198 = phi ptr [ %.0197231, %Scl_LibertyCompare.exit131.thread ], [ %.0197231, %._crit_edge.i ], [ %.0197231, %Abc_UtilStrsav.exit ], [ %.0197231, %bb.ax ], [ %.0197231, %Scl_LibertyReadString.exit ], [ %i.dz, %Scl_LibertyReadString.exit111 ], [ %i.dz, %._crit_edge.i123 ], [ %.0197231, %bb.aw ] ; 9 uses
  %.165 = phi ptr [ %.064233, %Scl_LibertyCompare.exit131.thread ], [ %.064233, %._crit_edge.i ], [ %i.gj, %Abc_UtilStrsav.exit ], [ %.064233, %bb.ax ], [ %.064233, %Scl_LibertyReadString.exit ], [ %.064233, %Scl_LibertyReadString.exit111 ], [ %.064233, %._crit_edge.i123 ], [ %.064233, %bb.aw ] ; 8 uses
  %.1 = phi ptr [ %.0234, %Scl_LibertyCompare.exit131.thread ], [ %.0234, %._crit_edge.i ], [ %.0234, %Abc_UtilStrsav.exit ], [ %i.gt, %bb.ax ], [ %.0234, %Scl_LibertyReadString.exit ], [ %.0234, %Scl_LibertyReadString.exit111 ], [ %.0234, %._crit_edge.i123 ], [ null, %bb.aw ] ; 9 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.066232, i64 64
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !24 ; 2 uses
  %i.gx = icmp slt i64 %i.gw, 0
  br i1 %i.gx, label %._crit_edge, label %Scl_LibertyItem.exit148

Scl_LibertyItem.exit148:                          ; preds = %Scl_LibertyReadFloatVec.exit
  %i.gy = load ptr, ptr %i.e, align 8, !tbaa !23  ; 2 uses
  %i.gz = getelementptr inbounds nuw [80 x i8], ptr %i.gy, i64 %i.gw
  %.not70 = icmp eq ptr %i.gy, null
  br i1 %.not70, label %._crit_edge, label %.lr.ph, !llvm.loop !180

._crit_edge:                                      ; preds = %Scl_LibertyReadFloatVec.exit, %Scl_LibertyItem.exit148
  %i.ha = icmp eq ptr %.165, null
  br i1 %i.ha, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %._crit_edge
  %.not80 = icmp eq ptr %.1, null
  br i1 %.not80, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @free(ptr noundef nonnull %.1) #33
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.hb = icmp eq ptr %.1200, null
  br i1 %i.hb, label %Vec_FltFreeP.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hc = getelementptr inbounds nuw i8, ptr %.1200, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !130 ; 2 uses
  %.not.i149 = icmp eq ptr %i.hd, null
  br i1 %.not.i149, label %bb.bc, label %.thread.i

.thread.i:                                        ; preds = %bb.bb
  tail call void @free(ptr noundef nonnull %i.hd) #33
  br label %bb.bc

bb.bc:                                            ; preds = %.thread.i, %bb.bb
  tail call void @free(ptr noundef nonnull %.1200) #33
  br label %Vec_FltFreeP.exit

Vec_FltFreeP.exit:                                ; preds = %bb.ba, %bb.bc
end_hunk_0
