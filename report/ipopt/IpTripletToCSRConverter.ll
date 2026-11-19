Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTripletToCSRConverter?download=true
inline.NumInlined: 206
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5Ipopt21TripletToCSRConverter19InitializeConverterEiiPKiS2_:bb.a

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0206 = phi ptr [ null, %bb.o ], [ %i.bp, %bb.p ] ; 12 uses
  %i.bq = load i32, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i32 %i.bq, -1
  %i.bu = shl nsw i64 %i.bs, 2
  %i.bv = select i1 %i.bt, i64 -1, i64 %i.bu
  %i.bw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bv) #15
          to label %bb.r unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !21
  %i.bx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #15
          to label %bb.s unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit ; 6 uses

bb.s:                                             ; preds = %bb.r
  %i.by = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #15
          to label %bb.t unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit ; 10 uses

bb.t:                                             ; preds = %bb.s
  %i.bz = ptrtoaddr ptr %i.by to i64              ; 2 uses
  %i.ca = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #15
          to label %bb.u unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit ; 10 uses

bb.u:                                             ; preds = %bb.t
  %i.cb = ptrtoaddr ptr %i.ca to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 11 uses
  store i32 0, ptr %i.cc, align 8, !tbaa !26
  %i.cd = load i32, ptr %i.bg, align 8, !tbaa !19 ; 2 uses
  %i.ce = icmp ne i32 %i.cd, 1                    ; 4 uses
  br i1 %i.ce, label %.loopexit281, label %.preheader280

.preheader280:                                    ; preds = %bb.u
  %i.cf = load i32, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %.not285 = icmp slt i32 %i.cf, 0
  br i1 %.not285, label %.loopexit281, label %.lr.ph287.preheader

.lr.ph287.preheader:                              ; preds = %.preheader280
  %i.cg = add nuw i32 %i.cf, 1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = shl nuw nsw i64 %i.ch, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.0206, i8 0, i64 %i.ci, i1 false), !tbaa !28
  br label %.loopexit281

.loopexit281:                                     ; preds = %.lr.ph287.preheader, %.preheader280, %bb.u
  %i.cj = load i32, ptr %i.y, align 4, !tbaa !32
  %i.ck = icmp sgt i32 %i.cj, 1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !21  ; 4 uses
  br i1 %i.ck, label %.lr.ph290, label %._crit_edge291

.lr.ph290:                                        ; preds = %.loopexit281, %.lr.ph290
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %.lr.ph290 ], [ 1, %.loopexit281 ] ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %.pre, i64 %indvars.iv374
  %i.cm = getelementptr i8, ptr %i.cl, i64 -4
  store i32 0, ptr %i.cm, align 4, !tbaa !28
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 3 uses
  %i.cn = load i32, ptr %i.y, align 4, !tbaa !32
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next375, %i.co
  br i1 %i.cp, label %.lr.ph290, label %._crit_edge291.loopexit, !llvm.loop !38

._crit_edge291.loopexit:                          ; preds = %.lr.ph290
  %i.cq = trunc nuw nsw i64 %indvars.iv.next375 to i32
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %._crit_edge291.loopexit, %.loopexit281
  %.0199.lcssa = phi i32 [ 1, %.loopexit281 ], [ %i.cq, %._crit_edge291.loopexit ] ; 4 uses
  %i.cr = add nsw i32 %.0199.lcssa, -1
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.cs
  store i32 0, ptr %i.ct, align 4, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !33 ; 3 uses
  store i32 %i.cv, ptr %i.bf, align 4, !tbaa !28
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !54
  store i32 %i.cx, ptr %i.bx, align 4, !tbaa !28
  br i1 %i.ce, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge291
  %i.cy = getelementptr inbounds [4 x i8], ptr %.0206, i64 %i.cs ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !28
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !28
  %.not230 = icmp eq i32 %.0199.lcssa, %i.cv
  br i1 %.not230, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = sext i32 %i.cv to i64
  %i.dc = getelementptr [4 x i8], ptr %.0206, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 -4     ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !28
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !28
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %._crit_edge291
  %.0202 = phi i32 [ 2, %bb.w ], [ 1, %bb.v ], [ 0, %._crit_edge291 ] ; 2 uses
  %.not274293 = icmp eq i64 %.0.i.i.i.i.i.idx, 12
  br i1 %.not274293, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %bb.x
  %.sroa.0252.1292 = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph301, %bb.ag
  %.sroa.0252.1299 = phi ptr [ %.sroa.0252.1292, %.lr.ph301 ], [ %.sroa.0252.1, %bb.ag ] ; 3 uses
  %.0193298 = phi i32 [ 0, %.lr.ph301 ], [ %.1194, %bb.ag ] ; 3 uses
  %.0195297 = phi i32 [ 0, %.lr.ph301 ], [ %.1196, %bb.ag ] ; 4 uses
  %.1200296 = phi i32 [ %.0199.lcssa, %.lr.ph301 ], [ %.2201, %bb.ag ] ; 6 uses
  %.1203295 = phi i32 [ %.0202, %.lr.ph301 ], [ %.3205, %bb.ag ] ; 4 uses
  %.pn294 = phi ptr [ %i.y, %.lr.ph301 ], [ %.sroa.0252.1299, %bb.ag ] ; 3 uses
  %i.dg = load i32, ptr %.sroa.0252.1299, align 4, !tbaa !32 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn294, i64 16
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !33 ; 5 uses
  %i.dj = icmp eq i32 %.1200296, %i.dg            ; 2 uses
  br i1 %i.dj, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dk = load i32, ptr %i.cc, align 8, !tbaa !26 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !28
  %i.do = icmp eq i32 %i.dn, %i.di
  br i1 %i.do, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn294, i64 20
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !54
  %i.dr = sext i32 %.0195297 to i64               ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dr
  store i32 %i.dq, ptr %i.ds, align 4, !tbaa !28
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dr
  store i32 %i.dk, ptr %i.dt, align 4, !tbaa !28
  %i.du = add nsw i32 %.0195297, 1
  %.not246 = icmp eq i32 %.1200296, %i.di
  %or.cond = or i1 %i.ce, %.not246
  %spec.select.v = select i1 %or.cond, i32 1, i32 2
  %spec.select = add nsw i32 %spec.select.v, %.0193298
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z, %bb.y
  br i1 %i.ce, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = add nsw i32 %.1203295, 1
  %i.dw = sext i32 %i.di to i64
  %i.dx = getelementptr [4 x i8], ptr %.0206, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 -4     ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !28
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !28
  %.not244 = icmp eq i32 %i.dg, %i.di
  br i1 %.not244, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eb = add nsw i32 %.1203295, 2
  %i.ec = sext i32 %i.dg to i64
  %i.ed = getelementptr [4 x i8], ptr %.0206, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 -4     ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !28
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.2204 = phi i32 [ %i.eb, %bb.ad ], [ %i.dv, %bb.ac ], [ %.1203295, %bb.ab ] ; 2 uses
  %i.eh = load i32, ptr %i.cc, align 8, !tbaa !26
  %i.ei = add nsw i32 %i.eh, 1                    ; 3 uses
  store i32 %i.ei, ptr %i.cc, align 8, !tbaa !26
  %i.ej = sext i32 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.ej
  store i32 %i.di, ptr %i.ek, align 4, !tbaa !28
  %i.el = getelementptr inbounds nuw i8, ptr %.pn294, i64 20
  %i.em = load i32, ptr %i.el, align 4, !tbaa !54
  %i.en = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ej
  store i32 %i.em, ptr %i.en, align 4, !tbaa !28
  br i1 %i.dj, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eo = sext i32 %.1200296 to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.eo
  store i32 %i.ei, ptr %i.ep, align 4, !tbaa !28
  %i.eq = add nsw i32 %.1200296, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aa, %bb.ae, %bb.af
  %.3205 = phi i32 [ %.2204, %bb.af ], [ %.2204, %bb.ae ], [ %.1203295, %bb.aa ] ; 2 uses
  %.2201 = phi i32 [ %i.eq, %bb.af ], [ %.1200296, %bb.ae ], [ %.1200296, %bb.aa ] ; 2 uses
  %.1196 = phi i32 [ %.0195297, %bb.af ], [ %.0195297, %bb.ae ], [ %i.du, %bb.aa ] ; 2 uses
  %.1194 = phi i32 [ %.0193298, %bb.af ], [ %.0193298, %bb.ae ], [ %spec.select, %bb.aa ] ; 2 uses
  %.sroa.0252.1 = getelementptr inbounds nuw i8, ptr %.sroa.0252.1299, i64 12 ; 2 uses
  %.not274 = icmp eq ptr %.sroa.0252.1, %.0.i.i.i.i.i.ptr
  br i1 %.not274, label %._crit_edge302, label %bb.y, !llvm.loop !39

._crit_edge302:                                   ; preds = %bb.ag, %bb.x
  %.1203.lcssa = phi i32 [ %.0202, %bb.x ], [ %.3205, %bb.ag ] ; 4 uses
  %.1200.lcssa = phi i32 [ %.0199.lcssa, %bb.x ], [ %.2201, %bb.ag ] ; 2 uses
  %.0195.lcssa = phi i32 [ 0, %bb.x ], [ %.1196, %bb.ag ] ; 11 uses
  %.0193.lcssa = phi i32 [ 0, %bb.x ], [ %.1194, %bb.ag ] ; 3 uses
  %i.er = load i32, ptr %i.cc, align 8, !tbaa !26 ; 2 uses
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  store i32 %i.es, ptr %i.cc, align 8, !tbaa !26
  %i.et = load i32, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %.not231307 = icmp sgt i32 %.1200.lcssa, %i.et
  br i1 %.not231307, label %._crit_edge311, label %.lr.ph310.preheader

.lr.ph310.preheader:                              ; preds = %._crit_edge302
  %i.eu = sext i32 %.1200.lcssa to i64
  br label %.lr.ph310

._crit_edge311:                                   ; preds = %.lr.ph310, %._crit_edge302
  %.lcssa282 = phi i32 [ %i.et, %._crit_edge302 ], [ %i.ex, %.lr.ph310 ] ; 2 uses
  %i.ev = icmp eq i32 %i.cd, 0
  br i1 %i.ev, label %bb.ah, label %bb.an

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %.lr.ph310
  %indvars.iv377 = phi i64 [ %i.eu, %.lr.ph310.preheader ], [ %indvars.iv.next378, %.lr.ph310 ] ; 3 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %.pre, i64 %indvars.iv377
  store i32 %i.es, ptr %i.ew, align 4, !tbaa !28
  %indvars.iv.next378 = add nsw i64 %indvars.iv377, 1
  %i.ex = load i32, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %i.ey = sext i32 %i.ex to i64
  %.not231.not = icmp slt i64 %indvars.iv377, %i.ey
  br i1 %.not231.not, label %.lr.ph310, label %._crit_edge311, !llvm.loop !40

bb.ah:                                            ; preds = %._crit_edge311
  %i.ez = sext i32 %i.es to i64
  %i.fa = icmp slt i32 %i.er, -1
  %i.fb = shl nsw i64 %i.ez, 2
  %i.fc = select i1 %i.fa, i64 -1, i64 %i.fb
  %i.fd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fc) #15
          to label %bb.ai unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit ; 4 uses

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.fd, ptr %i.d, align 8, !tbaa !22
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !18
  %i.fg = icmp eq i32 %i.ff, 0
  %i.fh = load i32, ptr %i.cc, align 8, !tbaa !26 ; 4 uses
  %i.fi = icmp sgt i32 %i.fh, 0                   ; 2 uses
  br i1 %i.fg, label %.preheader, label %.preheader278

.preheader278:                                    ; preds = %bb.ai
  br i1 %i.fi, label %.lr.ph350.preheader, label %.preheader276

.lr.ph350.preheader:                              ; preds = %.preheader278
  %i.fj = zext nneg i32 %i.fh to i64
  %i.fk = shl nuw nsw i64 %i.fj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr nonnull align 4 %i.bf, i64 %i.fk, i1 false), !tbaa !28
  br label %.preheader276

.preheader:                                       ; preds = %bb.ai
  br i1 %i.fi, label %.lr.ph355.preheader, label %.loopexit

.lr.ph355.preheader:                              ; preds = %.preheader
  %wide.trip.count419.a = zext nneg i32 %i.fh to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.fh, 8
  br i1 %min.iters.check, label %.lr.ph355.preheader498, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph355.preheader
  %n.vec = and i64 %wide.trip.count419.a, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load = load <4 x i32>, ptr %i.fl, align 4, !tbaa !28
  %wide.load469 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !28
  %i.fn = add nsw <4 x i32> %wide.load, splat (i32 -1)
  %i.fo = add nsw <4 x i32> %wide.load469, splat (i32 -1)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <4 x i32> %i.fn, ptr %i.fp, align 4, !tbaa !28
  store <4 x i32> %i.fo, ptr %i.fq, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count419.a
  br i1 %cmp.n, label %.loopexit, label %.lr.ph355.preheader498

.lr.ph355.preheader498:                           ; preds = %.lr.ph355.preheader, %middle.block
  %indvars.iv416.ph.a = phi i64 [ 0, %.lr.ph355.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph355

.lr.ph355:                                        ; preds = %.lr.ph355.preheader498, %.lr.ph355
  %indvars.iv416.a = phi i64 [ %indvars.iv.next417.a, %.lr.ph355 ], [ %indvars.iv416.ph.a, %.lr.ph355.preheader498 ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv416.a
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !28
  %i.fu = add nsw i32 %i.ft, -1
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv416.a
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !28
  %indvars.iv.next417.a = add nuw nsw i64 %indvars.iv416.a, 1 ; 2 uses
  %exitcond420.not = icmp eq i64 %indvars.iv.next417.a, %wide.trip.count419.a
  br i1 %exitcond420.not, label %.loopexit, label %.lr.ph355, !llvm.loop !42

.preheader276:                                    ; preds = %.lr.ph350.preheader, %.preheader278
  %i.fw = load i32, ptr %i.p, align 8, !tbaa !52
  %.not235351 = icmp slt i32 %i.fw, 0
  br i1 %.not235351, label %.loopexit, label %.lr.ph353

.lr.ph353:                                        ; preds = %.preheader276
  %i.fx = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph353, %bb.aj
  %indvars.iv413 = phi i64 [ 0, %.lr.ph353 ], [ %indvars.iv.next414, %bb.aj ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv413 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !28
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !28
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1
  %i.gb = load i32, ptr %i.p, align 8, !tbaa !52
  %i.gc = sext i32 %i.gb to i64
  %.not235.not = icmp slt i64 %indvars.iv413, %i.gc
  br i1 %.not235.not, label %bb.aj, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %bb.aj, %.lr.ph355, %middle.block, %.preheader276, %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.bf) #12
  %i.gd = load i32, ptr %i.cc, align 8, !tbaa !26 ; 2 uses
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp slt i32 %i.gd, 0
  %i.gg = shl nsw i64 %i.ge, 2
  %i.gh = select i1 %i.gf, i64 -1, i64 %i.gg
  %i.gi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gh) #15
          to label %bb.ak unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit ; 2 uses

bb.ak:                                            ; preds = %.loopexit
  store ptr %i.gi, ptr %i.g, align 8, !tbaa !23
  %i.gj = load i32, ptr %i.cc, align 8, !tbaa !26 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %.lr.ph358.preheader, label %._crit_edge359

.lr.ph358.preheader:                              ; preds = %bb.ak
  %i.gl = zext nneg i32 %i.gj to i64
  %i.gm = shl nuw nsw i64 %i.gl, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gi, ptr nonnull align 4 %i.bx, i64 %i.gm, i1 false), !tbaa !28
  br label %._crit_edge359

._crit_edge359:                                   ; preds = %.lr.ph358.preheader, %bb.ak
  tail call void @_ZdaPv(ptr noundef nonnull %i.bx) #12
  %i.gn = sext i32 %.0195.lcssa to i64
  %i.go = icmp slt i32 %.0195.lcssa, 0
  %i.gp = shl nsw i64 %i.gn, 2
  %i.gq = select i1 %i.go, i64 -1, i64 %i.gp      ; 2 uses
  %i.gr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gq) #15
          to label %bb.al unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit

bb.al:                                            ; preds = %._crit_edge359
  store ptr %i.gr, ptr %i.j, align 8, !tbaa !24
  %i.gs = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gq) #15
          to label %bb.am unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit ; 6 uses

bb.am:                                            ; preds = %bb.al
  %i.gt = ptrtoaddr ptr %i.gs to i64              ; 3 uses
  store ptr %i.gs, ptr %i.m, align 8, !tbaa !25
  %i.gu = icmp sgt i32 %.0195.lcssa, 0
  br i1 %i.gu, label %.lr.ph362, label %._crit_edge363

.lr.ph362:                                        ; preds = %bb.am
  %i.gv = load ptr, ptr %i.j, align 8, !tbaa !24  ; 5 uses
  %wide.trip.count427 = zext nneg i32 %.0195.lcssa to i64 ; 5 uses
  %min.iters.check478 = icmp ult i32 %.0195.lcssa, 32
  br i1 %min.iters.check478, label %scalar.ph477.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph362
  %i.gw = ptrtoaddr ptr %i.gv to i64              ; 3 uses
  %i.gx = sub i64 %i.gw, %i.gt
  %diff.check = icmp ugt i64 %i.gx, -32
  %i.gy = sub i64 %i.bz, %i.gw
  %diff.check479 = icmp ugt i64 %i.gy, -32
  %conflict.rdx = or i1 %diff.check, %diff.check479
  %i.gz = sub i64 %i.gw, %i.cb
  %diff.check480 = icmp ugt i64 %i.gz, -32
  %conflict.rdx481 = or i1 %conflict.rdx, %diff.check480
  %i.ha = sub i64 %i.bz, %i.gt
  %diff.check482 = icmp ugt i64 %i.ha, -32
  %conflict.rdx483 = or i1 %conflict.rdx481, %diff.check482
  %i.hb = sub i64 %i.cb, %i.gt
  %diff.check484 = icmp ugt i64 %i.hb, -32
  %conflict.rdx485 = or i1 %conflict.rdx483, %diff.check484
  br i1 %conflict.rdx485, label %scalar.ph477.preheader, label %vector.ph486

vector.ph486:                                     ; preds = %vector.memcheck
  %n.vec487 = and i64 %wide.trip.count427, 2147483640 ; 3 uses
  br label %vector.body488

vector.body488:                                   ; preds = %vector.body488, %vector.ph486
  %index489 = phi i64 [ 0, %vector.ph486 ], [ %index.next494, %vector.body488 ] ; 5 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index489 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load490 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !28
  %wide.load491 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !28
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index489 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store <4 x i32> %wide.load490, ptr %i.he, align 4, !tbaa !28
end_hunk_0
begin_hunk_1_@_ZN5Ipopt21TripletToCSRConverter19InitializeConverterEiiPKiS2_:bb.a
  %cmp.n496 = icmp eq i64 %n.vec487, %wide.trip.count427
  br i1 %cmp.n496, label %._crit_edge363, label %scalar.ph477.preheader

scalar.ph477.preheader:                           ; preds = %vector.memcheck, %.lr.ph362, %middle.block495
  %indvars.iv424.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph362 ], [ %n.vec487, %middle.block495 ] ; 7 uses
  %xtraiter512 = and i64 %wide.trip.count427, 1
  %lcmp.mod513.not = icmp eq i64 %xtraiter512, 0
  br i1 %lcmp.mod513.not, label %scalar.ph477.prol.loopexit, label %scalar.ph477.prol

scalar.ph477.prol:                                ; preds = %scalar.ph477.preheader
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv424.ph
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !28
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv424.ph
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !28
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv424.ph
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !28
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv424.ph
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !28
  %indvars.iv.next425.prol = or disjoint i64 %indvars.iv424.ph, 1
  br label %scalar.ph477.prol.loopexit

scalar.ph477.prol.loopexit:                       ; preds = %scalar.ph477.prol, %scalar.ph477.preheader
  %indvars.iv424.unr = phi i64 [ %indvars.iv424.ph, %scalar.ph477.preheader ], [ %indvars.iv.next425.prol, %scalar.ph477.prol ]
  %i.hr = add nsw i64 %wide.trip.count427, -1
  %i.hs = icmp eq i64 %indvars.iv424.ph, %i.hr
  br i1 %i.hs, label %._crit_edge363, label %scalar.ph477

scalar.ph477:                                     ; preds = %scalar.ph477.prol.loopexit, %scalar.ph477
  %indvars.iv424 = phi i64 [ %indvars.iv.next425.1, %scalar.ph477 ], [ %indvars.iv424.unr, %scalar.ph477.prol.loopexit ] ; 6 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv424
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !28
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv424
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !28
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv424
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !28
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv424
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !28
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 4 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next425
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !28
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.next425
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !28
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next425
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !28
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv.next425
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !28
  %indvars.iv.next425.1 = add nuw nsw i64 %indvars.iv424, 2 ; 2 uses
  %exitcond428.not.1 = icmp eq i64 %indvars.iv.next425.1, %wide.trip.count427
  br i1 %exitcond428.not.1, label %._crit_edge363, label %scalar.ph477, !llvm.loop !45

._crit_edge363:                                   ; preds = %scalar.ph477.prol.loopexit, %scalar.ph477, %middle.block495, %bb.am
  tail call void @_ZdaPv(ptr noundef nonnull %i.by) #12
  tail call void @_ZdaPv(ptr noundef nonnull %i.ca) #12
  %i.if = load i32, ptr %i.q, align 4, !tbaa !53
  %i.ig = load i32, ptr %i.cc, align 8, !tbaa !26 ; 2 uses
  %i.ih = sub nsw i32 %i.if, %i.ig
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

bb.an:                                            ; preds = %._crit_edge311
  %i.ii = add nsw i32 %.lcssa282, 1
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp slt i32 %.lcssa282, -1
  %i.il = shl nsw i64 %i.ij, 2
  %i.im = select i1 %i.ik, i64 -1, i64 %i.il
  %i.in = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.im) #15
          to label %bb.ao unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit ; 12 uses

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.in, align 4, !tbaa !28
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store i32 0, ptr %i.io, align 4, !tbaa !28
  %i.ip = load i32, ptr %i.p, align 8, !tbaa !52  ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %.lr.ph315.preheader, label %._crit_edge316

.lr.ph315.preheader:                              ; preds = %bb.ao
  %wide.trip.count383 = zext nneg i32 %i.ip to i64
  %i.ir = add nsw i64 %wide.trip.count383, -1     ; 2 uses
  %xtraiter507 = and i64 %i.ir, 3                 ; 3 uses
  %i.is = add nsw i32 %i.ip, -2
  %i.it = icmp ult i32 %i.is, 3
  br i1 %i.it, label %.lr.ph315.epil.preheader, label %.lr.ph315.preheader.new

.lr.ph315.preheader.new:                          ; preds = %.lr.ph315.preheader
  %unroll_iter510 = and i64 %i.ir, -4
  br label %.lr.ph315

._crit_edge316:                                   ; preds = %bb.ao
  %i.iu = icmp eq ptr %.0206, null
  br i1 %i.iu, label %bb.ap, label %._crit_edge316.thread

_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit: ; preds = %.noexc248, %._crit_edge, %bb.t, %bb.p, %bb.q, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.r, %bb.s, %bb.ah, %.loopexit, %._crit_edge359, %bb.al, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.an
  %i.iv = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.x) #12
  resume { ptr, i32 } %i.iv

.lr.ph315:                                        ; preds = %.lr.ph315, %.lr.ph315.preheader.new
  %i.iw = phi i32 [ 0, %.lr.ph315.preheader.new ], [ %i.jp, %.lr.ph315 ]
  %indvars.iv380 = phi i64 [ 1, %.lr.ph315.preheader.new ], [ %indvars.iv.next381.3, %.lr.ph315 ] ; 5 uses
  %niter511 = phi i64 [ 0, %.lr.ph315.preheader.new ], [ %niter511.next.3, %.lr.ph315 ]
  %i.ix = getelementptr [4 x i8], ptr %.0206, i64 %indvars.iv380
  %i.iy = getelementptr i8, ptr %i.ix, i64 -4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !28
  %i.ja = add nsw i32 %i.iz, %i.iw                ; 2 uses
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next381
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !28
  %i.jc = getelementptr [4 x i8], ptr %.0206, i64 %indvars.iv.next381
  %i.jd = getelementptr i8, ptr %i.jc, i64 -4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !28
  %i.jf = add nsw i32 %i.je, %i.ja                ; 2 uses
  %indvars.iv.next381.1 = add nuw nsw i64 %indvars.iv380, 2 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next381.1
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !28
  %i.jh = getelementptr [4 x i8], ptr %.0206, i64 %indvars.iv.next381.1
  %i.ji = getelementptr i8, ptr %i.jh, i64 -4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !28
  %i.jk = add nsw i32 %i.jj, %i.jf                ; 2 uses
  %indvars.iv.next381.2 = add nuw nsw i64 %indvars.iv380, 3 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next381.2
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !28
  %i.jm = getelementptr [4 x i8], ptr %.0206, i64 %indvars.iv.next381.2
  %i.jn = getelementptr i8, ptr %i.jm, i64 -4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !28
  %i.jp = add nsw i32 %i.jo, %i.jk                ; 3 uses
  %indvars.iv.next381.3 = add nuw nsw i64 %indvars.iv380, 4 ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next381.3
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !28
  %niter511.next.3 = add nuw i64 %niter511, 4     ; 2 uses
  %niter511.ncmp.3 = icmp eq i64 %niter511.next.3, %unroll_iter510
  br i1 %niter511.ncmp.3, label %._crit_edge316.thread.loopexit.unr-lcssa, label %.lr.ph315, !llvm.loop !46

._crit_edge316.thread.loopexit.unr-lcssa:         ; preds = %.lr.ph315
  %lcmp.mod508.not = icmp eq i64 %xtraiter507, 0
  br i1 %lcmp.mod508.not, label %._crit_edge316.thread, label %.lr.ph315.epil.preheader

.lr.ph315.epil.preheader:                         ; preds = %._crit_edge316.thread.loopexit.unr-lcssa, %.lr.ph315.preheader
  %.epil.init = phi i32 [ 0, %.lr.ph315.preheader ], [ %i.jp, %._crit_edge316.thread.loopexit.unr-lcssa ]
  %indvars.iv380.epil.init = phi i64 [ 1, %.lr.ph315.preheader ], [ %indvars.iv.next381.3, %._crit_edge316.thread.loopexit.unr-lcssa ]
  %lcmp.mod509 = icmp ne i64 %xtraiter507, 0
  tail call void @llvm.assume(i1 %lcmp.mod509)
  br label %.lr.ph315.epil

.lr.ph315.epil:                                   ; preds = %.lr.ph315.epil, %.lr.ph315.epil.preheader
  %i.jr = phi i32 [ %.epil.init, %.lr.ph315.epil.preheader ], [ %i.jv, %.lr.ph315.epil ]
  %indvars.iv380.epil = phi i64 [ %indvars.iv380.epil.init, %.lr.ph315.epil.preheader ], [ %indvars.iv.next381.epil, %.lr.ph315.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph315.epil.preheader ], [ %epil.iter.next, %.lr.ph315.epil ]
  %i.js = getelementptr [4 x i8], ptr %.0206, i64 %indvars.iv380.epil
  %i.jt = getelementptr i8, ptr %i.js, i64 -4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !28
  %i.jv = add nsw i32 %i.ju, %i.jr                ; 2 uses
  %indvars.iv.next381.epil = add nuw nsw i64 %indvars.iv380.epil, 1 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next381.epil
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !28
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter507
  br i1 %epil.iter.cmp.not, label %._crit_edge316.thread, label %.lr.ph315.epil, !llvm.loop !47

._crit_edge316.thread:                            ; preds = %._crit_edge316.thread.loopexit.unr-lcssa, %.lr.ph315.epil, %._crit_edge316
  tail call void @_ZdaPv(ptr noundef nonnull %.0206) #12
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge316.thread, %._crit_edge316
  %i.jx = sext i32 %.1203.lcssa to i64
  %i.jy = icmp slt i32 %.1203.lcssa, 0
  %i.jz = shl nsw i64 %i.jx, 2
  %i.ka = select i1 %i.jy, i64 -1, i64 %i.jz      ; 2 uses
  %i.kb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ka) #15
          to label %bb.aq unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.kb, ptr %i.d, align 8, !tbaa !22
  %i.kc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ka) #15
          to label %bb.ar unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.kc, ptr %i.g, align 8, !tbaa !23
  %i.kd = sext i32 %.0193.lcssa to i64
  %i.ke = icmp slt i32 %.0193.lcssa, 0
  %i.kf = shl nsw i64 %i.kd, 2
  %i.kg = select i1 %i.ke, i64 -1, i64 %i.kf      ; 2 uses
  %i.kh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kg) #15
          to label %bb.as unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit

bb.as:                                            ; preds = %bb.ar
  store ptr %i.kh, ptr %i.j, align 8, !tbaa !24
  %i.ki = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kg) #15
          to label %bb.at unwind label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit ; 4 uses

bb.at:                                            ; preds = %bb.as
  store ptr %i.ki, ptr %i.m, align 8, !tbaa !25
  %i.kj = load i32, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %.lr.ph342, label %._crit_edge343

.lr.ph342:                                        ; preds = %bb.at
  %i.kl = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.kn = sext i32 %.0195.lcssa to i64            ; 2 uses
  %5 = shl i32 %.0195.lcssa, 1
  %.pre430 = load i32, ptr %i.kl, align 4, !tbaa !28
  br label %bb.au

.loopexit279.loopexit:                            ; preds = %bb.az
  %.pre431 = load i32, ptr %i.p, align 8, !tbaa !52
  br label %.loopexit279

.loopexit279:                                     ; preds = %.loopexit279.loopexit, %bb.au
  %i.ko = phi i32 [ %i.ks, %bb.au ], [ %.pre431, %.loopexit279.loopexit ] ; 2 uses
  %i.kp = phi i32 [ %i.kv, %bb.au ], [ %i.my, %.loopexit279.loopexit ]
  %.1184.lcssa = phi i32 [ %.0183338, %bb.au ], [ %.2185.lcssa, %.loopexit279.loopexit ]
  %.1.lcssa = phi i32 [ %.0182339, %bb.au ], [ %.2.lcssa, %.loopexit279.loopexit ]
  %i.kq = sext i32 %i.ko to i64
  %i.kr = icmp slt i64 %indvars.iv.next405, %i.kq
  br i1 %i.kr, label %bb.au, label %._crit_edge343, !llvm.loop !48

bb.au:                                            ; preds = %.lr.ph342, %.loopexit279
  %i.ks = phi i32 [ %i.kj, %.lr.ph342 ], [ %i.ko, %.loopexit279 ]
  %i.kt = phi i32 [ %.pre430, %.lr.ph342 ], [ %i.kp, %.loopexit279 ] ; 2 uses
  %indvars.iv404 = phi i64 [ 0, %.lr.ph342 ], [ %indvars.iv.next405, %.loopexit279 ] ; 4 uses
  %.0182339 = phi i32 [ 0, %.lr.ph342 ], [ %.1.lcssa, %.loopexit279 ] ; 2 uses
  %.0183338 = phi i32 [ 0, %.lr.ph342 ], [ %.1184.lcssa, %.loopexit279 ] ; 2 uses
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 4 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.next405 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !28 ; 2 uses
  %i.kw = icmp slt i32 %i.kt, %i.kv
  br i1 %i.kw, label %.lr.ph334, label %.loopexit279

.lr.ph334:                                        ; preds = %bb.au
  %i.kx = load ptr, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next405 ; 2 uses
  %i.kz = load ptr, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %i.la = sext i32 %i.kt to i64
  %i.lb = trunc nuw nsw i64 %indvars.iv404 to i32
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph334, %bb.az
  %indvars.iv401 = phi i64 [ %i.la, %.lr.ph334 ], [ %indvars.iv.next402, %bb.az ] ; 5 uses
  %.1330 = phi i32 [ %.0182339, %.lr.ph334 ], [ %.2.lcssa, %bb.az ] ; 4 uses
  %.1184329 = phi i32 [ %.0183338, %.lr.ph334 ], [ %.2185.lcssa, %bb.az ] ; 5 uses
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv401
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !28 ; 3 uses
  %i.le = add nsw i32 %i.ld, -1                   ; 2 uses
  %i.lf = load i32, ptr %i.km, align 4, !tbaa !18
  %i.lg = add nsw i32 %i.le, %i.lf
  %i.lh = load i32, ptr %i.ky, align 4, !tbaa !28 ; 4 uses
  %i.li = sext i32 %i.lh to i64                   ; 2 uses
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.li
  store i32 %i.lg, ptr %i.lj, align 4, !tbaa !28
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv401 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !28
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.li
  store i32 %i.ll, ptr %i.lm, align 4, !tbaa !28
  %i.ln = icmp slt i32 %.1184329, %.0195.lcssa
  %i.lo = zext i32 %i.le to i64                   ; 2 uses
  br i1 %i.ln, label %.lr.ph320, label %.critedge

.lr.ph320:                                        ; preds = %bb.av
  %.not234 = icmp eq i64 %indvars.iv404, %i.lo
  %i.lp = sext i32 %i.ld to i64
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.lp
  %.not234.fr = freeze i1 %.not234
  %i.lr = sext i32 %.1330 to i64                  ; 2 uses
  %6 = sext i32 %.1184329 to i64                  ; 2 uses
  br i1 %.not234.fr, label %.lr.ph320.split.us.preheader, label %.lr.ph320.split.preheader

.lr.ph320.split.preheader:                        ; preds = %.lr.ph320
  %7 = add i32 %5, %.1330
  %8 = shl i32 %.1184329, 1
  %9 = sub i32 %7, %8
  %10 = trunc nsw i64 %indvars.iv401 to i32
  br label %.lr.ph320.split

.lr.ph320.split.us.preheader:                     ; preds = %.lr.ph320
  %11 = add i32 %.0195.lcssa, %.1330
  %12 = sub i32 %11, %.1184329
  %13 = trunc nsw i64 %indvars.iv401 to i32
  br label %.lr.ph320.split.us

.lr.ph320.split.us:                               ; preds = %.lr.ph320.split.us.preheader, %bb.aw
  %indvars.iv395 = phi i64 [ %6, %.lr.ph320.split.us.preheader ], [ %indvars.iv.next396, %bb.aw ] ; 4 uses
  %indvars.iv393 = phi i64 [ %i.lr, %.lr.ph320.split.us.preheader ], [ %indvars.iv.next394, %bb.aw ] ; 4 uses
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv395
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !28
  %i.lu = icmp eq i32 %i.lt, %13
  br i1 %i.lu, label %bb.aw, label %.critedge.loopexit.split.loop.exit459

bb.aw:                                            ; preds = %.lr.ph320.split.us
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.by, i64 %indvars.iv395
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !28
  %i.lx = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %indvars.iv393
  store i32 %i.lw, ptr %i.ly, align 4, !tbaa !28
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %indvars.iv393
  store i32 %i.lh, ptr %i.lz, align 4, !tbaa !28
  %indvars.iv.next394 = add nsw i64 %indvars.iv393, 1
  %indvars.iv.next396 = add nsw i64 %indvars.iv395, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next396, %i.kn
  br i1 %exitcond400.not, label %.critedge, label %.lr.ph320.split.us, !llvm.loop !49

.lr.ph320.split:                                  ; preds = %.lr.ph320.split.preheader, %bb.ax
  %indvars.iv387 = phi i64 [ %6, %.lr.ph320.split.preheader ], [ %indvars.iv.next388, %bb.ax ] ; 4 uses
  %indvars.iv385 = phi i64 [ %i.lr, %.lr.ph320.split.preheader ], [ %indvars.iv.next386, %bb.ax ] ; 5 uses
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv387
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !28
  %i.mc = icmp eq i32 %i.mb, %10
  br i1 %i.mc, label %bb.ax, label %.critedge.loopexit452.split.loop.exit456

bb.ax:                                            ; preds = %.lr.ph320.split
  %i.md = getelementptr inbounds [4 x i8], ptr %i.by, i64 %indvars.iv387
  %i.me = load i32, ptr %i.md, align 4, !tbaa !28 ; 2 uses
  %i.mf = load ptr, ptr %i.j, align 8, !tbaa !24  ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %indvars.iv385
  store i32 %i.me, ptr %i.mg, align 4, !tbaa !28
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %indvars.iv385
  store i32 %i.lh, ptr %i.mh, align 4, !tbaa !28
  %14 = add nsw i64 %indvars.iv385, 1             ; 2 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %14
  store i32 %i.me, ptr %i.mi, align 4, !tbaa !28
  %i.mj = load i32, ptr %i.lq, align 4, !tbaa !28
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %14
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !28
  %indvars.iv.next386 = add nsw i64 %indvars.iv385, 2
  %indvars.iv.next388 = add nsw i64 %indvars.iv387, 1 ; 2 uses
  %exitcond392.not = icmp eq i64 %indvars.iv.next388, %i.kn
  br i1 %exitcond392.not, label %.critedge, label %.lr.ph320.split, !llvm.loop !49

.critedge.loopexit.split.loop.exit459:            ; preds = %.lr.ph320.split.us
  %15 = trunc nsw i64 %indvars.iv393 to i32
  %i.ml = trunc nsw i64 %indvars.iv395 to i32
  br label %.critedge

.critedge.loopexit452.split.loop.exit456:         ; preds = %.lr.ph320.split
  %16 = trunc nsw i64 %indvars.iv385 to i32
  %i.mm = trunc nsw i64 %indvars.iv387 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.ax, %bb.aw, %.critedge.loopexit452.split.loop.exit456, %.critedge.loopexit.split.loop.exit459, %bb.av
  %.2185.lcssa = phi i32 [ %.0195.lcssa, %bb.aw ], [ %.1184329, %bb.av ], [ %i.ml, %.critedge.loopexit.split.loop.exit459 ], [ %i.mm, %.critedge.loopexit452.split.loop.exit456 ], [ %.0195.lcssa, %bb.ax ] ; 2 uses
  %.2.lcssa = phi i32 [ %12, %bb.aw ], [ %.1330, %bb.av ], [ %15, %.critedge.loopexit.split.loop.exit459 ], [ %16, %.critedge.loopexit452.split.loop.exit456 ], [ %9, %bb.ax ] ; 2 uses
  %i.mn = add nsw i32 %i.lh, 1
  store i32 %i.mn, ptr %i.ky, align 4, !tbaa !28
  %.not233 = icmp eq i64 %indvars.iv404, %i.lo
  br i1 %.not233, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.critedge
  %i.mo = load i32, ptr %i.km, align 4, !tbaa !18
  %i.mp = add nsw i32 %i.mo, %i.lb
  %i.mq = sext i32 %i.ld to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.mq ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !28 ; 2 uses
  %i.mt = sext i32 %i.ms to i64                   ; 2 uses
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.mt
  store i32 %i.mp, ptr %i.mu, align 4, !tbaa !28
  %i.mv = load i32, ptr %i.lk, align 4, !tbaa !28
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.mt
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !28
  %i.mx = add nsw i32 %i.ms, 1
  store i32 %i.mx, ptr %i.mr, align 4, !tbaa !28
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.critedge
  %indvars.iv.next402 = add nsw i64 %indvars.iv401, 1 ; 2 uses
  %i.my = load i32, ptr %i.ku, align 4, !tbaa !28 ; 2 uses
  %i.mz = sext i32 %i.my to i64
  %i.na = icmp slt i64 %indvars.iv.next402, %i.mz
  br i1 %i.na, label %bb.av, label %.loopexit279.loopexit, !llvm.loop !50

._crit_edge343:                                   ; preds = %.loopexit279, %bb.at
  tail call void @_ZdaPv(ptr noundef nonnull %i.bf) #12
  tail call void @_ZdaPv(ptr noundef nonnull %i.bx) #12
  tail call void @_ZdaPv(ptr noundef nonnull %i.by) #12
  tail call void @_ZdaPv(ptr noundef nonnull %i.ca) #12
  %i.nb = load i32, ptr %i.p, align 8, !tbaa !52
  %.not232344 = icmp slt i32 %i.nb, 0
  br i1 %.not232344, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %._crit_edge343
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.nd = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph347, %bb.ba
  %indvars.iv407 = phi i64 [ 0, %.lr.ph347 ], [ %indvars.iv.next408, %bb.ba ] ; 4 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv407
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !28
  %i.ng = load i32, ptr %i.nc, align 4, !tbaa !18
  %i.nh = add nsw i32 %i.ng, %i.nf
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv407
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !28
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1
  %i.nj = load i32, ptr %i.p, align 8, !tbaa !52
  %i.nk = sext i32 %i.nj to i64
  %.not232.not = icmp slt i64 %indvars.iv407, %i.nk
  br i1 %.not232.not, label %bb.ba, label %._crit_edge348, !llvm.loop !51

._crit_edge348:                                   ; preds = %bb.ba, %._crit_edge343
  tail call void @_ZdaPv(ptr noundef nonnull %i.in) #12
  store i32 %.1203.lcssa, ptr %i.cc, align 8, !tbaa !26
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251: ; preds = %._crit_edge348, %._crit_edge363
  %.0193.lcssa.sink = phi i32 [ %.0193.lcssa, %._crit_edge348 ], [ %i.ih, %._crit_edge363 ]
  %i.nl = phi i32 [ %.1203.lcssa, %._crit_edge348 ], [ %i.ig, %._crit_edge363 ]
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.0193.lcssa.sink, ptr %i.nm, align 4, !tbaa !27
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.nn, align 8, !tbaa !20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.x) #12
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251, %bb.l
  %.0197 = phi i32 [ 0, %bb.l ], [ %i.nl, %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251 ]
  ret i32 %.0197
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5Ipopt21TripletToCSRConverter13ConvertValuesEiPKdiPd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil
  store double %i.k, ptr %i.l, align 8, !tbaa !61
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.b, !llvm.loop !57

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27   ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph15, label %._crit_edge

.lr.ph15:                                         ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 3 uses
  %wide.trip.count20 = zext nneg i32 %i.n to i64  ; 2 uses
  %xtraiter25 = and i64 %wide.trip.count20, 1
  %i.t = icmp eq i32 %i.n, 1
  br i1 %i.t, label %.epil.preheader24, label %.lr.ph15.new

.lr.ph15.new:                                     ; preds = %.lr.ph15
  %unroll_iter29 = and i64 %wide.trip.count20, 2147483646
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.y, ptr %i.z, align 8, !tbaa !61
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  store double %i.ae, ptr %i.af, align 8, !tbaa !61
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.1
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !61
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.1
  store double %i.ak, ptr %i.al, align 8, !tbaa !61
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.2
  store double %i.aq, ptr %i.ar, align 8, !tbaa !61
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !58

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod27.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod27.not, label %._crit_edge, label %.epil.preheader24

.epil.preheader24:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph15
  %indvars.iv17.epil.init = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next18.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
end_hunk_1
