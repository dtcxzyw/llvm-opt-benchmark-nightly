Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/integrator?download=true
inline.NumInlined: 5918
inline.NumDeleted: 1143
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZNK6casadi19FixedStepIntegrator8set_workEPvRPPKdRPPdRPxRS6_:bb.a
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.h ; 2 uses
  store ptr %i.am, ptr %5, align 8, !tbaa !152
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.am, ptr %i.an, align 8, !tbaa !245
  %i.ao = load ptr, ptr %5, align 8, !tbaa !152
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.m ; 2 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !152
  %i.aq = load ptr, ptr %4, align 8, !tbaa !246   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 344
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !208
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ab
  store ptr %i.as, ptr %4, align 8, !tbaa !246
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.av = load i64, ptr %i.au, align 8, !tbaa !214 ; 2 uses
  %i.aw = load ptr, ptr %5, align 8, !tbaa !152
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  store ptr %i.ax, ptr %5, align 8, !tbaa !152
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !248
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !215
  %i.bb = load ptr, ptr %5, align 8, !tbaa !152
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ba ; 2 uses
  store ptr %i.bc, ptr %5, align 8, !tbaa !152
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !249
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !218 ; 2 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !152
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bf ; 2 uses
  store ptr %i.bh, ptr %5, align 8, !tbaa !152
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !250
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !216
  %i.bl = load ptr, ptr %5, align 8, !tbaa !152
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bk ; 2 uses
  store ptr %i.bm, ptr %5, align 8, !tbaa !152
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !235
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !244 ; 2 uses
  %i.bq = load ptr, ptr %5, align 8, !tbaa !152
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bp ; 2 uses
  store ptr %i.br, ptr %5, align 8, !tbaa !152
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !236
  %i.bt = load ptr, ptr %5, align 8, !tbaa !152
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bp ; 2 uses
  store ptr %i.bu, ptr %5, align 8, !tbaa !152
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 384
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !296
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !293 ; 3 uses
  %i.by = load ptr, ptr %5, align 8, !tbaa !152
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  store ptr %i.bz, ptr %5, align 8, !tbaa !152
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 392
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !297
  %i.cb = load ptr, ptr %5, align 8, !tbaa !152
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.bx ; 2 uses
  store ptr %i.cc, ptr %5, align 8, !tbaa !152
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 400
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !298
  %i.ce = load ptr, ptr %5, align 8, !tbaa !152
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.d ; 2 uses
  store ptr %i.cf, ptr %5, align 8, !tbaa !152
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !299
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !294
  %i.cj = load ptr, ptr %5, align 8, !tbaa !152
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ci ; 2 uses
  store ptr %i.ck, ptr %5, align 8, !tbaa !152
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 416
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !300
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !217 ; 2 uses
  %i.co = load ptr, ptr %5, align 8, !tbaa !152
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cn ; 2 uses
  store ptr %i.cp, ptr %5, align 8, !tbaa !152
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 424
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !301
  %i.cr = load ptr, ptr %5, align 8, !tbaa !152
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.bf ; 2 uses
  store ptr %i.cs, ptr %5, align 8, !tbaa !152
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 432
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !302
  %i.cu = load ptr, ptr %5, align 8, !tbaa !152
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cn ; 2 uses
  store ptr %i.cv, ptr %5, align 8, !tbaa !152
  %i.cw = icmp sgt i64 %i.av, 0
  br i1 %i.cw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 440
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !303
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !246
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !209 ; 2 uses
  %i.dc = add nsw i64 %i.db, 1
  %i.dd = mul nsw i64 %i.dc, %i.h
  %i.de = load ptr, ptr %5, align 8, !tbaa !152
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.dd ; 2 uses
  store ptr %i.df, ptr %5, align 8, !tbaa !152
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 448
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !304
  %i.dh = mul nsw i64 %i.db, %i.bx
  %i.di = load ptr, ptr %5, align 8, !tbaa !152
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dh
  store ptr %i.dj, ptr %5, align 8, !tbaa !152
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZNK6casadi19FixedStepIntegrator8init_memEPv(ptr noundef nonnull align 8 dereferenceable(2048) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6casadi14OracleFunction8init_memEPv(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef %1)
  %.not.i.not = icmp ne i32 %i.a, 0
  %. = zext i1 %.not.i.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi19FixedStepIntegrator15advance_noeventEPNS_16IntegratorMemoryE(ptr noundef nonnull align 8 dereferenceable(2048) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 7 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !199
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !282
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !209
  %i.k = load i64, ptr %i.h, align 8, !tbaa !209
  %i.l = sub nsw i64 %i.j, %i.k                   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.n = load double, ptr %i.m, align 8, !tbaa !202
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !198
  %i.q = fsub double %i.n, %i.p
  %i.r = sitofp i64 %i.l to double
  %i.s = fdiv double %i.q, %i.r                   ; 2 uses
  %i.t = icmp sgt i64 %i.l, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %.not.i39 = icmp eq ptr %i.b, null
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 448
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit95, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !296 ; 3 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !293 ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.am = load i64, ptr %i.al, align 8, !tbaa !194 ; 10 uses
  %i.an = sub i64 0, %i.am
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !195 ; 7 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not15.i = icmp eq ptr %i.ag, null
  %i.as = icmp sgt i64 %i.am, 0                   ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.b
  br i1 %i.as, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check220 = icmp ult i64 %i.am, 18
  br i1 %min.iters.check220, label %.lr.ph.i.preheader237, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph.i.preheader
  %i.at = shl i64 %i.aj, 3
  %2 = add i64 %i.at, %i.ah
  %3 = shl i64 %i.am, 3
  %.neg = sub i64 %3, %2
  %i.au = add i64 %.neg, %i.ar
  %i.av = add i64 %i.au, -1
  %diff.check218 = icmp ult i64 %i.av, 31
  br i1 %diff.check218, label %.lr.ph.i.preheader237, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck217
  %n.vec222 = and i64 %i.am, 9223372036854775804  ; 4 uses
  %i.aw = shl i64 %n.vec222, 3                    ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aq, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.aw
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next229, %vector.body223 ] ; 2 uses
  %i.az = shl i64 %index224, 3                    ; 2 uses
  %next.gep225 = getelementptr i8, ptr %i.aq, i64 %i.az ; 2 uses
  %next.gep226 = getelementptr i8, ptr %i.ao, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep226, i64 16
  %wide.load227 = load <2 x double>, ptr %next.gep226, align 8, !tbaa !58
  %wide.load228 = load <2 x double>, ptr %i.ba, align 8, !tbaa !58
  %i.bb = getelementptr i8, ptr %next.gep225, i64 16
  store <2 x double> %wide.load227, ptr %next.gep225, align 8, !tbaa !58
  store <2 x double> %wide.load228, ptr %i.bb, align 8, !tbaa !58
  %index.next229 = add nuw i64 %index224, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next229, %n.vec222
  br i1 %i.bc, label %middle.block230, label %vector.body223, !llvm.loop !1186

middle.block230:                                  ; preds = %vector.body223
  %cmp.n231 = icmp eq i64 %i.am, %n.vec222
  br i1 %cmp.n231, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader237

.lr.ph.i.preheader237:                            ; preds = %vector.memcheck217, %.lr.ph.i.preheader, %middle.block230
  %.020.i.ph = phi i64 [ 0, %vector.memcheck217 ], [ 0, %.lr.ph.i.preheader ], [ %n.vec222, %middle.block230 ] ; 4 uses
  %.01019.i.ph = phi ptr [ %i.aq, %vector.memcheck217 ], [ %i.aq, %.lr.ph.i.preheader ], [ %i.ax, %middle.block230 ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.ao, %vector.memcheck217 ], [ %i.ao, %.lr.ph.i.preheader ], [ %i.ay, %middle.block230 ] ; 2 uses
  %i.bd = sub nsw i64 %i.am, %.020.i.ph
  %xtraiter259 = and i64 %i.bd, 7                 ; 2 uses
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader237, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.bh, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader237 ]
  %.01019.i.prol = phi ptr [ %i.bg, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader237 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.be, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader237 ] ; 2 uses
  %prol.iter261 = phi i64 [ %prol.iter261.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader237 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.bf = load double, ptr %.01218.i.prol, align 8, !tbaa !58
  %i.bg = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.bf, ptr %.01019.i.prol, align 8, !tbaa !58
  %i.bh = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter261.next = add i64 %prol.iter261, 1   ; 2 uses
  %prol.iter261.cmp.not = icmp eq i64 %prol.iter261.next, %xtraiter259
  br i1 %prol.iter261.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1187

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader237
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader237 ], [ %i.bh, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader237 ], [ %i.bg, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader237 ], [ %i.be, %.lr.ph.i.prol ]
  %i.bi = sub nsw i64 %.020.i.ph, %i.am
  %i.bj = icmp ugt i64 %i.bi, -8
  br i1 %i.bj, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %i.as, label %.lr.ph23.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.bk = shl nuw i64 %i.am, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aq, i8 0, i64 %i.bk, i1 false), !tbaa !58
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.cj, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.ci, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.bm = load double, ptr %.01218.i, align 8, !tbaa !58
  %i.bn = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.bm, ptr %.01019.i, align 8, !tbaa !58
  %i.bo = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.bp = load double, ptr %i.bl, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.bp, ptr %i.bn, align 8, !tbaa !58
  %i.br = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.bs = load double, ptr %i.bo, align 8, !tbaa !58
  %i.bt = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.bs, ptr %i.bq, align 8, !tbaa !58
  %i.bu = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.bv = load double, ptr %i.br, align 8, !tbaa !58
  %i.bw = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.bv, ptr %i.bt, align 8, !tbaa !58
  %i.bx = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.by = load double, ptr %i.bu, align 8, !tbaa !58
  %i.bz = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.by, ptr %i.bw, align 8, !tbaa !58
  %i.ca = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.cb = load double, ptr %i.bx, align 8, !tbaa !58
  %i.cc = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.cb, ptr %i.bz, align 8, !tbaa !58
  %i.cd = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.ce = load double, ptr %i.ca, align 8, !tbaa !58
  %i.cf = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.ce, ptr %i.cc, align 8, !tbaa !58
  %i.cg = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.ch = load double, ptr %i.cd, align 8, !tbaa !58
  %i.ci = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.ch, ptr %i.cf, align 8, !tbaa !58
  %i.cj = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.cj, %i.am
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !1188

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block230, %._crit_edge, %.preheader16.i, %.preheader.i, %.lr.ph23.preheader.i
  ret i32 0

bb.c:                                             ; preds = %.lr.ph, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit95
  %.096 = phi i64 [ 0, %.lr.ph ], [ %i.nx, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit95 ] ; 3 uses
  %i.ck = load double, ptr %i.o, align 8, !tbaa !198
  %i.cl = uitofp nneg i64 %.096 to double
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.s, double %i.ck)
  %i.cn = load ptr, ptr %i.u, align 8, !tbaa !190 ; 6 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = load i64, ptr %i.v, align 8, !tbaa !189 ; 8 uses
  br i1 %.not.i39, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not15.i40 = icmp eq ptr %i.cn, null
  %i.cq = icmp sgt i64 %i.cp, 0                   ; 2 uses
  br i1 %.not15.i40, label %.preheader.i47, label %.preheader16.i41

.preheader16.i41:                                 ; preds = %bb.d
  br i1 %i.cq, label %.lr.ph.i42.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49

.lr.ph.i42.preheader:                             ; preds = %.preheader16.i41
  %min.iters.check202 = icmp ult i64 %i.cp, 4
  %i.cr = sub i64 %i.co, %i.c
  %diff.check200 = icmp ugt i64 %i.cr, -32
  %or.cond = select i1 %min.iters.check202, i1 true, i1 %diff.check200
  br i1 %or.cond, label %.lr.ph.i42.preheader243, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph.i42.preheader
  %n.vec204 = and i64 %i.cp, 9223372036854775804  ; 4 uses
  %i.cs = shl i64 %n.vec204, 3                    ; 2 uses
  %i.ct = getelementptr i8, ptr %i.b, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.cn, i64 %i.cs
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next211, %vector.body205 ] ; 2 uses
  %i.cv = shl i64 %index206, 3                    ; 2 uses
  %next.gep207 = getelementptr i8, ptr %i.b, i64 %i.cv ; 2 uses
  %next.gep208 = getelementptr i8, ptr %i.cn, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep208, i64 16
  %wide.load209 = load <2 x double>, ptr %next.gep208, align 8, !tbaa !58
  %wide.load210 = load <2 x double>, ptr %i.cw, align 8, !tbaa !58
  %i.cx = getelementptr i8, ptr %next.gep207, i64 16
  store <2 x double> %wide.load209, ptr %next.gep207, align 8, !tbaa !58
  store <2 x double> %wide.load210, ptr %i.cx, align 8, !tbaa !58
  %index.next211 = add nuw i64 %index206, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next211, %n.vec204
  br i1 %i.cy, label %middle.block212, label %vector.body205, !llvm.loop !1189

middle.block212:                                  ; preds = %vector.body205
  %cmp.n213 = icmp eq i64 %i.cp, %n.vec204
  br i1 %cmp.n213, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49, label %.lr.ph.i42.preheader243

.lr.ph.i42.preheader243:                          ; preds = %.lr.ph.i42.preheader, %middle.block212
  %.020.i43.ph = phi i64 [ 0, %.lr.ph.i42.preheader ], [ %n.vec204, %middle.block212 ] ; 4 uses
  %.01019.i44.ph = phi ptr [ %i.b, %.lr.ph.i42.preheader ], [ %i.ct, %middle.block212 ] ; 2 uses
  %.01218.i45.ph = phi ptr [ %i.cn, %.lr.ph.i42.preheader ], [ %i.cu, %middle.block212 ] ; 2 uses
  %i.cz = sub nsw i64 %i.cp, %.020.i43.ph
  %xtraiter = and i64 %i.cz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.i42.preheader243, %.lr.ph.i42.prol
  %.020.i43.prol = phi i64 [ %i.dd, %.lr.ph.i42.prol ], [ %.020.i43.ph, %.lr.ph.i42.preheader243 ]
  %.01019.i44.prol = phi ptr [ %i.dc, %.lr.ph.i42.prol ], [ %.01019.i44.ph, %.lr.ph.i42.preheader243 ] ; 2 uses
  %.01218.i45.prol = phi ptr [ %i.da, %.lr.ph.i42.prol ], [ %.01218.i45.ph, %.lr.ph.i42.preheader243 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i42.prol ], [ 0, %.lr.ph.i42.preheader243 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.01218.i45.prol, i64 8 ; 2 uses
  %i.db = load double, ptr %.01218.i45.prol, align 8, !tbaa !58
  %i.dc = getelementptr inbounds nuw i8, ptr %.01019.i44.prol, i64 8 ; 2 uses
  store double %i.db, ptr %.01019.i44.prol, align 8, !tbaa !58
  %i.dd = add nuw nsw i64 %.020.i43.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol, !llvm.loop !1190

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.i42.preheader243
  %.020.i43.unr = phi i64 [ %.020.i43.ph, %.lr.ph.i42.preheader243 ], [ %i.dd, %.lr.ph.i42.prol ]
  %.01019.i44.unr = phi ptr [ %.01019.i44.ph, %.lr.ph.i42.preheader243 ], [ %i.dc, %.lr.ph.i42.prol ]
  %.01218.i45.unr = phi ptr [ %.01218.i45.ph, %.lr.ph.i42.preheader243 ], [ %i.da, %.lr.ph.i42.prol ]
  %i.de = sub nsw i64 %.020.i43.ph, %i.cp
  %i.df = icmp ugt i64 %i.de, -8
  br i1 %i.df, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49, label %.lr.ph.i42

.preheader.i47:                                   ; preds = %bb.d
  br i1 %i.cq, label %.lr.ph23.preheader.i48, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49

.lr.ph23.preheader.i48:                           ; preds = %.preheader.i47
  %i.dg = shl nuw i64 %i.cp, 3
end_hunk_0
