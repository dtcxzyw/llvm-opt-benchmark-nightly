Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/decNumber?download=true
inline.NumInlined: 166
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decNumberFromString:.peel.begin
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cr = sext i32 %.6195 to i64                  ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr @d2utable, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !24
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nsw i64 %i.cr, -46
  %i.cw = icmp ult i64 %i.cv, 4
  br i1 %i.cw, label %bb.al, label %.thread280.thread

bb.al:                                            ; preds = %.thread, %bb.ak
  %i.cx = phi i32 [ %i.cq, %.thread ], [ %i.cu, %bb.ak ]
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = tail call noalias ptr @malloc(i64 noundef %i.cz) #20 ; 3 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %.thread294, label %.thread280

.thread280:                                       ; preds = %bb.al, %bb.ai
  %.2202 = phi ptr [ %i.cn, %bb.ai ], [ %i.da, %bb.al ] ; 2 uses
  %.2198 = phi ptr [ null, %bb.ai ], [ %i.da, %bb.al ] ; 2 uses
  %i.dc = icmp slt i32 %.6195, 50
  br i1 %i.dc, label %.thread280.thread, label %bb.am

.thread280.thread:                                ; preds = %bb.ak, %.thread280
  %.2198376 = phi ptr [ %.2198, %.thread280 ], [ null, %bb.ak ]
  %.2202374 = phi ptr [ %.2202, %.thread280 ], [ %i.a, %bb.ak ]
  %i.dd = sext i32 %.6195 to i64
  %i.de = getelementptr inbounds i8, ptr @d2utable, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !24
  %i.dg = zext i8 %i.df to i32
  br label %bb.an

bb.am:                                            ; preds = %.thread280
  %i.dh = add nuw nsw i32 %.6195, 2
  %i.di = udiv i32 %i.dh, 3
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread280.thread
  %.2198375 = phi ptr [ %.2198376, %.thread280.thread ], [ %.2198, %bb.am ] ; 2 uses
  %.2202373 = phi ptr [ %.2202374, %.thread280.thread ], [ %.2202, %bb.am ] ; 2 uses
  %i.dj = phi i32 [ %i.dg, %.thread280.thread ], [ %i.di, %bb.am ]
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.2202373, i64 %i.dk
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -2
  %.idx = shl nuw nsw i64 %i.dk, 1
  %i.dn = add nsw i64 %.idx, -2                   ; 2 uses
  %i.do = lshr exact i64 %i.dn, 1
  %i.dp = add i64 %i.do, %i.dn
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = sub i32 %.6195, %i.dq
  br label %bb.ao

bb.ao:                                            ; preds = %bb.as, %bb.an
  %.7 = phi ptr [ %.5186, %bb.an ], [ %i.ed, %bb.as ] ; 3 uses
  %.0173 = phi ptr [ %i.dm, %bb.an ], [ %.1174, %bb.as ] ; 5 uses
  %.0171 = phi i32 [ %i.dr, %bb.an ], [ %.1172, %bb.as ] ; 3 uses
  %.0169 = phi i32 [ 0, %bb.an ], [ %.1170, %bb.as ] ; 2 uses
  %i.ds = load i8, ptr %.7, align 1, !tbaa !24    ; 2 uses
  %i.dt = icmp eq i8 %i.ds, 46
  br i1 %i.dt, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.du = sext i8 %i.ds to i32
  %i.dv = mul i32 %.0169, 10
  %i.dw = add i32 %i.dv, -48
  %i.dx = add i32 %i.dw, %i.du                    ; 3 uses
  %i.dy = icmp eq ptr %.7, %.3180
  br i1 %i.dy, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dz = add nsw i32 %.0171, -1
  %i.ea = icmp sgt i32 %.0171, 1
  br i1 %i.ea, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eb = trunc i32 %i.dx to i16
  store i16 %i.eb, ptr %.0173, align 2, !tbaa !21
  %i.ec = getelementptr inbounds i8, ptr %.0173, i64 -2
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ao, %bb.ar
  %.1174 = phi ptr [ %.0173, %bb.ao ], [ %.0173, %bb.aq ], [ %i.ec, %bb.ar ]
  %.1172 = phi i32 [ %.0171, %bb.ao ], [ %i.dz, %bb.aq ], [ 3, %bb.ar ]
  %.1170 = phi i32 [ %.0169, %bb.ao ], [ %i.dx, %bb.aq ], [ 0, %bb.ar ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br label %bb.ao

bb.at:                                            ; preds = %bb.ap
  %i.ee = trunc i32 %i.dx to i16
  store i16 %i.ee, ptr %.0173, align 2, !tbaa !21
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.2205, ptr %i.ef, align 4, !tbaa !17
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.3209, ptr %i.eg, align 4, !tbaa !18
  store i32 %.6195, ptr %0, align 4, !tbaa !19
  br i1 %.not252, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.b, align 4, !tbaa !23
  call fastcc void @decSetCoeff(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %.2202373, i32 noundef %.6195, ptr noundef %i.b, ptr noundef %i.c)
  br label %.sink.split389

bb.av:                                            ; preds = %bb.at
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !29
  %i.ej = sub nsw i32 %i.ei, %.6195
  %.not253 = icmp sgt i32 %.3209, %i.ej
  br i1 %.not253, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ek = add nsw i32 %.3209, -1
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !30
  %i.en = sub nsw i32 %i.em, %i.cm
  %i.eo = icmp sgt i32 %i.ek, %i.en
  br i1 %i.eo, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 0, ptr %i.b, align 4, !tbaa !23
  br label %.sink.split389

.sink.split389:                                   ; preds = %bb.au, %bb.ax
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split389, %bb.aw
  %.not254 = icmp eq ptr %.2198375, null
  br i1 %.not254, label %.thread285, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @free(ptr noundef nonnull %.2198375) #19
  br label %.thread285

.thread285:                                       ; preds = %._crit_edge, %bb.ac, %bb.z, %._crit_edge319, %bb.u, %bb.t, %bb.s, %bb.az, %bb.ay
  %.pr288 = load i32, ptr %i.c, align 4, !tbaa !23 ; 6 uses
  %.not255 = icmp eq i32 %.pr288, 0
  br i1 %.not255, label %.thread285.thread291, label %.thread285.thread

.thread285.thread:                                ; preds = %.thread285
  %i.ep = and i32 %.pr288, 221
  %.not.i270 = icmp eq i32 %i.ep, 0
  br i1 %.not.i270, label %decStatus.exit, label %bb.ba

bb.ba:                                            ; preds = %.thread285.thread
  %i.eq = and i32 %.pr288, 1073741824
  %.not6.i = icmp eq i32 %i.eq, 0
  br i1 %.not6.i, label %.thread294, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.er = and i32 %.pr288, -1073741825
  br label %decStatus.exit

.thread294:                                       ; preds = %bb.al, %.loopexit343.thread, %bb.ab, %bb.ba
  %i.es = phi i32 [ %.pr288, %bb.ba ], [ 1, %bb.ab ], [ 1, %.loopexit343.thread ], [ 16, %bb.al ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.eu, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.ev, align 2, !tbaa !21
  store i8 32, ptr %i.et, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %.thread285.thread, %bb.bb, %.thread294
  %.0.i271 = phi i32 [ %i.er, %bb.bb ], [ %i.es, %.thread294 ], [ %.pr288, %.thread285.thread ]
  %i.ew = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %.0.i271) #19 ; 0 uses
  br label %.thread285.thread291

.thread285.thread291:                             ; preds = %bb.w, %decBiStr.exit, %decStatus.exit, %.thread285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @decSetCoeff(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !27     ; 5 uses
  %i.d = sub nsw i32 %3, %i.c                     ; 5 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %.not146 = icmp eq ptr %i.f, %2
  br i1 %.not146, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %iter.check261, label %._crit_edge172

iter.check261:                                    ; preds = %.preheader
  %i.h = add nsw i32 %3, -1
  %i.i = udiv i32 %i.h, 3
  %narrow280.a = add nuw nsw i32 %i.i, 1
  %i.j = zext nneg i32 %narrow280.a to i64        ; 5 uses
  %min.iters.check243 = icmp ult i32 %3, 10
  br i1 %min.iters.check243, label %.lr.ph171.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %iter.check261
  %i.k = sub i64 %i.b, %i.a
  %i.l = add i64 %i.k, 9
  %diff.check241 = icmp ult i64 %i.l, 31
  br i1 %diff.check241, label %.lr.ph171.preheader, label %vector.main.loop.iter.check244

vector.main.loop.iter.check244:                   ; preds = %vector.memcheck240
  %min.iters.check245 = icmp ult i32 %3, 46
  br i1 %min.iters.check245, label %vec.epilog.ph265, label %vector.ph246

vector.ph246:                                     ; preds = %vector.main.loop.iter.check244
  %i.m = and i64 %i.j, 12
  %n.vec247 = and i64 %i.j, 2147483632            ; 5 uses
  %i.n = trunc nuw nsw i64 %n.vec247 to i32
  %i.o = mul i32 %i.n, -3
  %i.p = add i32 %3, %i.o
  %i.q = shl nuw nsw i64 %n.vec247, 1             ; 2 uses
  %i.r = getelementptr i8, ptr %i.f, i64 %i.q
  %i.s = getelementptr i8, ptr %2, i64 %i.q
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph246
  %index249 = phi i64 [ 0, %vector.ph246 ], [ %index.next254, %vector.body248 ] ; 2 uses
  %i.t = shl i64 %index249, 1                     ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.f, i64 %i.t ; 2 uses
  %next.gep251 = getelementptr i8, ptr %2, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep251, i64 16
  %wide.load252 = load <8 x i16>, ptr %next.gep251, align 2, !tbaa !21
  %wide.load253 = load <8 x i16>, ptr %i.u, align 2, !tbaa !21
  %i.v = getelementptr i8, ptr %next.gep250, i64 16
  store <8 x i16> %wide.load252, ptr %next.gep250, align 2, !tbaa !21
  store <8 x i16> %wide.load253, ptr %i.v, align 2, !tbaa !21
  %index.next254 = add nuw i64 %index249, 16      ; 2 uses
  %i.w = icmp eq i64 %index.next254, %n.vec247
  br i1 %i.w, label %middle.block255, label %vector.body248, !llvm.loop !47

middle.block255:                                  ; preds = %vector.body248
  %cmp.n256 = icmp eq i64 %n.vec247, %i.j
  br i1 %cmp.n256, label %._crit_edge172, label %vec.epilog.iter.check263

vec.epilog.iter.check263:                         ; preds = %middle.block255
  %min.epilog.iters.check264 = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check264, label %.lr.ph171.preheader, label %vec.epilog.ph265, !prof !33

vec.epilog.ph265:                                 ; preds = %vector.main.loop.iter.check244, %vec.epilog.iter.check263
  %vec.epilog.resume.val257 = phi i64 [ %n.vec247, %vec.epilog.iter.check263 ], [ 0, %vector.main.loop.iter.check244 ]
  %n.vec266 = and i64 %i.j, 2147483644            ; 4 uses
  %i.x = trunc nuw nsw i64 %n.vec266 to i32
  %i.y = mul i32 %i.x, -3
  %i.z = add i32 %3, %i.y
  %i.aa = shl nuw nsw i64 %n.vec266, 1            ; 2 uses
  %i.ab = getelementptr i8, ptr %i.f, i64 %i.aa
  %i.ac = getelementptr i8, ptr %2, i64 %i.aa
  br label %vec.epilog.vector.body267

vec.epilog.vector.body267:                        ; preds = %vec.epilog.vector.body267, %vec.epilog.ph265
  %index268 = phi i64 [ %vec.epilog.resume.val257, %vec.epilog.ph265 ], [ %index.next272, %vec.epilog.vector.body267 ] ; 2 uses
  %i.ad = shl i64 %index268, 1                    ; 2 uses
  %next.gep269 = getelementptr i8, ptr %i.f, i64 %i.ad
  %next.gep270 = getelementptr i8, ptr %2, i64 %i.ad
  %wide.load271 = load <4 x i16>, ptr %next.gep270, align 2, !tbaa !21
  store <4 x i16> %wide.load271, ptr %next.gep269, align 2, !tbaa !21
  %index.next272 = add nuw i64 %index268, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next272, %n.vec266
  br i1 %i.ae, label %vec.epilog.middle.block273, label %vec.epilog.vector.body267, !llvm.loop !48

vec.epilog.middle.block273:                       ; preds = %vec.epilog.vector.body267
  %cmp.n274 = icmp eq i64 %n.vec266, %i.j
  br i1 %cmp.n274, label %._crit_edge172, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %vector.memcheck240, %iter.check261, %vec.epilog.iter.check263, %vec.epilog.middle.block273
  %.0116170.ph = phi i32 [ %3, %iter.check261 ], [ %3, %vector.memcheck240 ], [ %i.p, %vec.epilog.iter.check263 ], [ %i.z, %vec.epilog.middle.block273 ]
  %.0118169.ph = phi ptr [ %i.f, %iter.check261 ], [ %i.f, %vector.memcheck240 ], [ %i.r, %vec.epilog.iter.check263 ], [ %i.ab, %vec.epilog.middle.block273 ]
  %.0121168.ph = phi ptr [ %2, %iter.check261 ], [ %2, %vector.memcheck240 ], [ %i.s, %vec.epilog.iter.check263 ], [ %i.ac, %vec.epilog.middle.block273 ]
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %.lr.ph171
  %.0116170 = phi i32 [ %i.ai, %.lr.ph171 ], [ %.0116170.ph, %.lr.ph171.preheader ] ; 2 uses
  %.0118169 = phi ptr [ %i.ag, %.lr.ph171 ], [ %.0118169.ph, %.lr.ph171.preheader ] ; 2 uses
  %.0121168 = phi ptr [ %i.ah, %.lr.ph171 ], [ %.0121168.ph, %.lr.ph171.preheader ] ; 2 uses
  %i.af = load i16, ptr %.0121168, align 2, !tbaa !21
  store i16 %i.af, ptr %.0118169, align 2, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %.0118169, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.0121168, i64 2
  %i.ai = add nsw i32 %.0116170, -3
  %i.aj = icmp samesign ugt i32 %.0116170, 3
  br i1 %i.aj, label %.lr.ph171, label %._crit_edge172, !llvm.loop !49

._crit_edge172:                                   ; preds = %.lr.ph171, %middle.block255, %vec.epilog.middle.block273, %.preheader
  store i32 %3, ptr %0, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge172, %bb.b
  %i.ak = load i32, ptr %4, align 4, !tbaa !23
  %.not147 = icmp eq i32 %i.ak, 0
  br i1 %.not147, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load i32, ptr %5, align 4, !tbaa !23
  %i.am = or i32 %i.al, 2080
  store i32 %i.am, ptr %5, align 4, !tbaa !23
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  %i.ap = add nsw i32 %i.ao, %i.d
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !18
  %i.aq = load i32, ptr %5, align 4, !tbaa !23
  %i.ar = or i32 %i.aq, 2048
  store i32 %i.ar, ptr %5, align 4, !tbaa !23
  %i.as = load i32, ptr %4, align 4, !tbaa !23    ; 4 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %.thread188, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = icmp slt i32 %i.c, 0
  br i1 %i.au, label %bb.i, label %.preheader151

.thread188:                                       ; preds = %bb.e
  store i32 1, ptr %4, align 4, !tbaa !23
  %i.av = icmp slt i32 %i.c, 0
  br i1 %i.av, label %.thread, label %.preheader151

.preheader151:                                    ; preds = %.thread188, %bb.f
  %.pr190 = phi i32 [ 1, %.thread188 ], [ %i.as, %bb.f ] ; 5 uses
  %.not152 = icmp samesign ugt i32 %i.d, 3
  br i1 %.not152, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader151
  %i.aw = add i32 %3, -4
  %i.ax = sub i32 %i.aw, %i.c                     ; 2 uses
  %i.ay = udiv i32 %i.ax, 3
  %narrow = add nuw nsw i32 %i.ay, 1
  %i.az = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %i.ax, 153
  br i1 %min.iters.check, label %.lr.ph.preheader283, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %4, i64 4
  %i.ba = add i32 %3, -4
  %i.bb = sub i32 %i.ba, %i.c
  %i.bc = udiv i32 %i.bb, 3
  %i.bd = shl nuw i32 %i.bc, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %2, i64 %i.be
  %scevgep203 = getelementptr i8, ptr %i.bf, i64 2
  %bound0 = icmp ult ptr %4, %scevgep203
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader283, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.az, 2147483644              ; 4 uses
  %i.bg = trunc nuw nsw i64 %n.vec to i32
  %i.bh = mul i32 %i.bg, 3                        ; 2 uses
  %i.bi = or disjoint i32 %i.bh, 3
  %i.bj = shl nuw nsw i64 %n.vec, 1
  %i.bk = getelementptr i8, ptr %2, i64 %i.bj     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pr190, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %bb.h, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.h ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.br, %bb.h ]
  %i.bl = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bq, %bb.h ]
  %i.bm = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %2, i64 %i.bm
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !21, !alias.scope !59
  %wide.load.fr = freeze <4 x i16> %wide.load
  %i.bn = icmp ne <4 x i16> %wide.load.fr, zeroinitializer ; 3 uses
  %i.bo = bitcast <4 x i1> %i.bn to i4
  %.not281 = icmp eq i4 %i.bo, 0
  br i1 %.not281, label %bb.h, label %bb.g

bb.g:                                             ; preds = %vector.body
  store i32 1, ptr %4, align 4, !tbaa !23, !alias.scope !60, !noalias !59
  br label %bb.h

bb.h:                                             ; preds = %vector.body, %bb.g
  %i.bp = bitcast <4 x i1> %i.bn to i4
  %.not278 = icmp eq i4 %i.bp, 0                  ; 2 uses
  %i.bq = select i1 %.not278, <4 x i1> %i.bl, <4 x i1> %i.bn ; 2 uses
  %i.br = select i1 %.not278, <4 x i32> %vec.phi, <4 x i32> splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %bb.h
  %i.bt = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.br, <4 x i1> %i.bq, i32 %.pr190) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.az
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader283

.lr.ph.preheader283:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %.pr190, %vector.memcheck ], [ %.pr190, %.lr.ph.preheader ], [ %i.bt, %middle.block ]
  %.ph284 = phi i32 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader ], [ %i.bi, %middle.block ]
  %.2123153.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  %.not199 = icmp eq i32 %i.as, 1
  br i1 %.not199, label %.thread, label %.preheader149

.preheader149:                                    ; preds = %bb.i
  %i.bu = icmp sgt i32 %3, 0
  br i1 %i.bu, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %.preheader149, %bb.k
  %.1117165 = phi i32 [ %i.bx, %bb.k ], [ %3, %.preheader149 ] ; 2 uses
  %.1122164 = phi ptr [ %i.bw, %bb.k ], [ %2, %.preheader149 ] ; 2 uses
  %i.bv = load i16, ptr %.1122164, align 2, !tbaa !21
  %.not144 = icmp eq i16 %i.bv, 0
  br i1 %.not144, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph166
  store i32 1, ptr %4, align 4, !tbaa !23
  br label %.thread

bb.k:                                             ; preds = %.lr.ph166
  %i.bw = getelementptr inbounds nuw i8, ptr %.1122164, i64 2
  %i.bx = add nsw i32 %.1117165, -3
  %i.by = icmp sgt i32 %.1117165, 3
  br i1 %i.by, label %.lr.ph166, label %._crit_edge167, !llvm.loop !54

._crit_edge167:                                   ; preds = %bb.k, %.preheader149
  %.not145 = icmp eq i32 %i.as, 0
  br i1 %.not145, label %bb.l, label %.thread

.thread:                                          ; preds = %.thread188, %bb.i, %bb.j, %._crit_edge167
  %i.bz = load i32, ptr %5, align 4, !tbaa !23
  %i.ca = or i32 %i.bz, 32
  store i32 %i.ca, ptr %5, align 4, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %.thread, %._crit_edge167
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.cb, align 2, !tbaa !21
  store i32 1, ptr %0, align 4, !tbaa !19
  br label %bb.z

.lr.ph:                                           ; preds = %.lr.ph.preheader283, %bb.n
  %i.cc = phi i32 [ %i.cf, %bb.n ], [ %.ph, %.lr.ph.preheader283 ]
  %i.cd = phi i32 [ %i.ch, %bb.n ], [ %.ph284, %.lr.ph.preheader283 ] ; 2 uses
  %.2123153 = phi ptr [ %i.cg, %bb.n ], [ %.2123153.ph, %.lr.ph.preheader283 ] ; 2 uses
  %i.ce = load i16, ptr %.2123153, align 2, !tbaa !21
  %.not139 = icmp eq i16 %i.ce, 0
  br i1 %.not139, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store i32 1, ptr %4, align 4, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %i.cf = phi i32 [ %i.cc, %.lr.ph ], [ 1, %bb.m ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.2123153, i64 2 ; 2 uses
  %i.ch = add nuw nsw i32 %i.cd, 3                ; 2 uses
  %.not = icmp slt i32 %i.ch, %i.d
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.n, %middle.block, %.preheader151
  %i.ci = phi i32 [ %.pr190, %.preheader151 ], [ %i.bt, %middle.block ], [ %i.cf, %bb.n ] ; 3 uses
  %.2123.lcssa = phi ptr [ %2, %.preheader151 ], [ %i.bk, %middle.block ], [ %i.cg, %bb.n ] ; 11 uses
  %.2.lcssa = phi i32 [ 0, %.preheader151 ], [ %i.bh, %middle.block ], [ %i.cd, %bb.n ]
  %.2123.lcssa212 = ptrtoaddr ptr %.2123.lcssa to i64
  %i.cj = sub nsw i32 %i.d, %.2.lcssa             ; 5 uses
  %i.ck = add nsw i32 %i.cj, -1                   ; 3 uses
  switch i32 %i.ck, label %bb.t [
    i32 2, label %bb.o
    i32 0, label %bb.s
  ]

bb.o:                                             ; preds = %._crit_edge
  %i.cl = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 12), align 4, !tbaa !23
  %i.cm = lshr i32 %i.cl, 1
  %i.cn = load i16, ptr %.2123.lcssa, align 2, !tbaa !21 ; 2 uses
  %i.co = zext i16 %i.cn to i32                   ; 2 uses
  %i.cp = and i32 %i.cm, 32767                    ; 2 uses
  %.not141 = icmp samesign ugt i32 %i.cp, %i.co
  br i1 %.not141, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = icmp samesign ult i32 %i.cp, %i.co
  %i.cr = add nsw i32 %i.ci, 5
  %spec.select198 = select i1 %i.cq, i32 7, i32 %i.cr
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %.not142 = icmp eq i16 %i.cn, 0
  br i1 %.not142, label %bb.r, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.q
  %.sink = phi i32 [ %spec.select198, %bb.p ], [ 3, %bb.q ]
  store i32 %.sink, ptr %4, align 4, !tbaa !23
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q
  %i.cs = load i32, ptr %1, align 4, !tbaa !27    ; 9 uses
  %i.ct = icmp slt i32 %i.cs, 1
  br i1 %i.ct, label %.loopexit.sink.split, label %iter.check

iter.check:                                       ; preds = %bb.r
  store i32 %i.cs, ptr %0, align 4, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.cv = add nsw i32 %i.cs, -1
  %i.cw = udiv i32 %i.cv, 3
  %narrow279 = add nuw nsw i32 %i.cw, 1
  %i.cx = zext nneg i32 %narrow279 to i64         ; 5 uses
  %min.iters.check214 = icmp ult i32 %i.cs, 10
  br i1 %min.iters.check214, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %iter.check
  %i.cy = sub i64 %i.b, %.2123.lcssa212
  %i.cz = add i64 %i.cy, 7
  %diff.check = icmp ult i64 %i.cz, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck211
  %min.iters.check215 = icmp ult i32 %i.cs, 46
  br i1 %min.iters.check215, label %vec.epilog.ph, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check
  %i.da = and i64 %i.cx, 12
  %n.vec217 = and i64 %i.cx, 2147483632           ; 5 uses
  %i.db = trunc nuw nsw i64 %n.vec217 to i32
  %i.dc = mul i32 %i.db, -3
  %i.dd = add i32 %i.cs, %i.dc
  %i.de = shl nuw nsw i64 %n.vec217, 1            ; 2 uses
  %i.df = getelementptr i8, ptr %i.cu, i64 %i.de
  %i.dg = getelementptr i8, ptr %.2123.lcssa, i64 %i.de
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next224, %vector.body218 ] ; 2 uses
  %i.dh = shl i64 %index219, 1                    ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.cu, i64 %i.dh ; 2 uses
  %next.gep221 = getelementptr i8, ptr %.2123.lcssa, i64 %i.dh ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %next.gep221, i64 2
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep221, i64 18
  %wide.load222 = load <8 x i16>, ptr %i.di, align 2, !tbaa !21
  %wide.load223 = load <8 x i16>, ptr %i.dj, align 2, !tbaa !21
  %i.dk = getelementptr i8, ptr %next.gep220, i64 16
  store <8 x i16> %wide.load222, ptr %next.gep220, align 2, !tbaa !21
  store <8 x i16> %wide.load223, ptr %i.dk, align 2, !tbaa !21
  %index.next224 = add nuw i64 %index219, 16      ; 2 uses
  %i.dl = icmp eq i64 %index.next224, %n.vec217
  br i1 %i.dl, label %middle.block225, label %vector.body218, !llvm.loop !56

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %n.vec217, %i.cx
  br i1 %cmp.n226, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block225
  %min.epilog.iters.check = icmp eq i64 %i.da, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec217, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec230 = and i64 %i.cx, 2147483644           ; 4 uses
  %i.dm = trunc nuw nsw i64 %n.vec230 to i32
  %i.dn = mul i32 %i.dm, -3
  %i.do = add i32 %i.cs, %i.dn
  %i.dp = shl nuw nsw i64 %n.vec230, 1            ; 2 uses
  %i.dq = getelementptr i8, ptr %i.cu, i64 %i.dp
  %i.dr = getelementptr i8, ptr %.2123.lcssa, i64 %i.dp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index231 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next235, %vec.epilog.vector.body ] ; 2 uses
  %i.ds = shl i64 %index231, 1                    ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.cu, i64 %i.ds
  %next.gep233 = getelementptr i8, ptr %.2123.lcssa, i64 %i.ds
  %i.dt = getelementptr inbounds nuw i8, ptr %next.gep233, i64 2
  %wide.load234 = load <4 x i16>, ptr %i.dt, align 2, !tbaa !21
  store <4 x i16> %wide.load234, ptr %next.gep232, align 2, !tbaa !21
  %index.next235 = add nuw i64 %index231, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next235, %n.vec230
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n236 = icmp eq i64 %n.vec230, %i.cx
  br i1 %cmp.n236, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck211, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3157.ph = phi i32 [ %i.cs, %iter.check ], [ %i.cs, %vector.memcheck211 ], [ %i.dd, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ]
  %.1119156.ph = phi ptr [ %i.cu, %iter.check ], [ %i.cu, %vector.memcheck211 ], [ %i.df, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ]
  %.2123.pn155.ph = phi ptr [ %.2123.lcssa, %iter.check ], [ %.2123.lcssa, %vector.memcheck211 ], [ %i.dg, %vec.epilog.iter.check ], [ %i.dr, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.3157 = phi i32 [ %i.dx, %vec.epilog.scalar.ph ], [ %.3157.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1119156 = phi ptr [ %i.dw, %vec.epilog.scalar.ph ], [ %.1119156.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.2123.pn155 = phi ptr [ %.3124, %vec.epilog.scalar.ph ], [ %.2123.pn155.ph, %vec.epilog.scalar.ph.preheader ]
  %.3124 = getelementptr inbounds nuw i8, ptr %.2123.pn155, i64 2 ; 2 uses
  %i.dv = load i16, ptr %.3124, align 2, !tbaa !21
  store i16 %i.dv, ptr %.1119156, align 2, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %.1119156, i64 2
  %i.dx = add nsw i32 %.3157, -3
  %i.dy = icmp samesign ugt i32 %.3157, 3
  br i1 %i.dy, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !58

bb.s:                                             ; preds = %._crit_edge
  %i.dz = load i16, ptr %.2123.lcssa, align 2, !tbaa !21
  %i.ea = zext i16 %i.dz to i32
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.eb = load i16, ptr %.2123.lcssa, align 2, !tbaa !21
  %i.ec = zext i16 %i.eb to i32                   ; 2 uses
  %i.ed = lshr i32 %i.ec, %i.ck
  %i.ee = zext i32 %i.ck to i64                   ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr @multies, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !23
  %i.eh = mul i32 %i.ed, %i.eg
  %i.ei = lshr i32 %i.eh, 17                      ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.ee
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !23
  %i.el = mul i32 %i.ei, %i.ek
  %.not140 = icmp eq i32 %i.el, %i.ec
  %spec.select = select i1 %.not140, i32 %i.ci, i32 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.em = phi i32 [ %i.ci, %bb.s ], [ %spec.select, %bb.t ]
  %.0 = phi i32 [ %i.ea, %bb.s ], [ %i.ei, %bb.t ] ; 2 uses
  %i.en = mul nuw nsw i32 %.0, 6554
  %i.eo = lshr i32 %i.en, 16                      ; 3 uses
  %.neg = mul nsw i32 %i.eo, -10
  %i.ep = add nsw i32 %.neg, %.0
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr @resmap, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !24
  %i.et = zext i8 %i.es to i32
  %i.eu = add nsw i32 %i.em, %i.et
  store i32 %i.eu, ptr %4, align 4, !tbaa !23
  %i.ev = load i32, ptr %1, align 4, !tbaa !27    ; 3 uses
  %i.ew = icmp slt i32 %i.ev, 1
  br i1 %i.ew, label %.loopexit.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.ev, ptr %0, align 4, !tbaa !19
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ey = sub i32 3, %i.cj                        ; 3 uses
  %i.ez = trunc nuw nsw i32 %i.eo to i16
  store i16 %i.ez, ptr %i.ex, align 2, !tbaa !21
  %i.fa = sub i32 %i.ev, %i.ey                    ; 2 uses
  %i.fb = icmp slt i32 %i.fa, 1
  br i1 %i.fb, label %.loopexit, label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.v
  %i.fc = zext i32 %i.cj to i64                   ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @multies, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !23
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.fc
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !23
  %i.fh = zext i32 %i.ey to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !23
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.fk = getelementptr inbounds nuw i8, ptr %.2120159, i64 2 ; 2 uses
  %i.fl = trunc nuw nsw i32 %i.fu to i16
  store i16 %i.fl, ptr %i.fk, align 2, !tbaa !21
  %i.fm = sub i32 %i.ga, %i.ey                    ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 1
  br i1 %i.fn, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %.lr.ph162, %bb.w
  %i.fo = phi i32 [ %i.fa, %.lr.ph162 ], [ %i.fm, %bb.w ]
  %.1160 = phi i32 [ %i.eo, %.lr.ph162 ], [ %i.fu, %bb.w ]
  %.2120159 = phi ptr [ %i.ex, %.lr.ph162 ], [ %i.fk, %bb.w ] ; 2 uses
  %.4125158 = phi ptr [ %.2123.lcssa, %.lr.ph162 ], [ %i.fp, %bb.w ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.4125158, i64 2 ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !21
  %i.fr = zext i16 %i.fq to i32                   ; 2 uses
  %i.fs = lshr i32 %i.fr, %i.cj
  %i.ft = mul i32 %i.fs, %i.fe
  %i.fu = lshr i32 %i.ft, 17                      ; 3 uses
  %i.fv = mul i32 %i.fu, %i.fg
  %i.fw = sub i32 %i.fr, %i.fv
  %i.fx = mul i32 %i.fw, %i.fj
  %i.fy = add i32 %i.fx, %.1160
  %i.fz = trunc i32 %i.fy to i16
  store i16 %i.fz, ptr %.2120159, align 2, !tbaa !21
  %i.ga = sub i32 %i.fo, %i.cj                    ; 2 uses
  %i.gb = icmp slt i32 %i.ga, 1
  br i1 %i.gb, label %.loopexit, label %bb.w

.loopexit.sink.split:                             ; preds = %bb.u, %bb.r
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.gc, align 2, !tbaa !21
  store i32 1, ptr %0, align 4, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %bb.w, %bb.x, %middle.block225, %vec.epilog.middle.block, %.loopexit.sink.split, %bb.v
  %i.gd = load i32, ptr %4, align 4, !tbaa !23
  %.not143 = icmp eq i32 %i.gd, 0
  br i1 %.not143, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.ge = load i32, ptr %5, align 4, !tbaa !23
  %i.gf = or i32 %i.ge, 32
  store i32 %i.gf, ptr %5, align 4, !tbaa !23
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %bb.y, %bb.c, %bb.d, %bb.l
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @decFinalize(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.decNumber, align 4          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !19
  %i.d = sub nsw i32 %i.b, %i.c                   ; 2 uses
  %i.e = add nsw i32 %i.d, 1
end_hunk_0
begin_hunk_1_@decNumberMaxMag:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %decStatus.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.i, align 2, !tbaa !21
  store i8 32, ptr %i.g, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %decStatus.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberMin(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 3, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %decStatus.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.i, align 2, !tbaa !21
  store i8 32, ptr %i.g, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %decStatus.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberMinMag(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 8, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %decStatus.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.i, align 2, !tbaa !21
  store i8 32, ptr %i.g, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %decStatus.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberMinus(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.decNumber, align 4          ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %3, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 0, ptr %i.d, align 2, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18
  store i32 %i.f, ptr %i.c, align 4, !tbaa !18
  %i.g = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2, i8 noundef zeroext -128, ptr noundef %i.a) ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.h, 221
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 1073741824
  %.not6.i = icmp eq i32 %i.j, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.h, -1073741825
  br label %decStatus.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.n, align 2, !tbaa !21
  store i8 32, ptr %i.l, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.b ]
  %i.o = call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %decStatus.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberNextMinus(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.decNumber, align 4          ; 7 uses
  %4 = alloca %struct.decContext, align 4         ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 4, !tbaa !17
  %i.d = and i8 %i.c, -64
  %i.e = icmp eq i8 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %2, align 4, !tbaa !27     ; 8 uses
  store i32 %i.f, ptr %0, align 4, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.h = icmp sgt i32 %i.f, 3
  br i1 %i.h, label %iter.check, label %decSetMaxValue.exit

iter.check:                                       ; preds = %bb.b
  %i.i = add nsw i32 %i.f, -4                     ; 3 uses
  %i.j = udiv i32 %i.i, 3
  %narrow = add nuw nsw i32 %i.j, 1
  %i.k = zext nneg i32 %narrow to i64             ; 5 uses
  %min.iters.check = icmp ult i32 %i.i, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check16 = icmp ult i32 %i.i, 45
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.k, 12
  %n.vec = and i64 %i.k, 2147483632               ; 5 uses
  %i.m = trunc nuw nsw i64 %n.vec to i32
  %i.n = mul i32 %i.m, -3
  %i.o = add i32 %i.f, %i.n                       ; 2 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 999), ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> splat (i16 999), ptr %i.s, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.k
  br i1 %cmp.n, label %decSetMaxValue.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.k, 2147483644             ; 4 uses
  %i.u = trunc nuw nsw i64 %n.vec18 to i32
  %i.v = mul i32 %i.u, -3
  %i.w = add i32 %i.f, %i.v                       ; 2 uses
  %i.x = shl nuw nsw i64 %n.vec18, 1
  %i.y = getelementptr i8, ptr %i.g, i64 %i.x     ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 2 uses
  %i.z = shl i64 %index19, 1
  %next.gep20 = getelementptr i8, ptr %i.g, i64 %i.z
  store <4 x i16> splat (i16 999), ptr %next.gep20, align 2, !tbaa !21
  %index.next21 = add nuw i64 %index19, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next21, %n.vec18
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !101

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %n.vec18, %i.k
  br i1 %cmp.n22, label %decSetMaxValue.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.ph = phi i32 [ %i.f, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  %.01314.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01314.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.01314.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i16 999, ptr %.01314.i, align 2, !tbaa !21
  %i.ab = add nsw i32 %.015.i, -3                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01314.i, i64 2 ; 2 uses
  %i.ad = icmp samesign ugt i32 %.015.i, 6
  br i1 %i.ad, label %.lr.ph.i, label %decSetMaxValue.exit, !llvm.loop !102

decSetMaxValue.exit:                              ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.013.lcssa.i = phi ptr [ %i.g, %bb.b ], [ %i.y, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.ac, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.f, %bb.b ], [ %i.w, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.ab, %.lr.ph.i ]
  %i.ae = sext i32 %.0.lcssa.i to i64
  %i.af = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !23
  %i.ah = trunc i32 %i.ag to i16
  %i.ai = add i16 %i.ah, -1
  store i16 %i.ai, ptr %.013.lcssa.i, align 2, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.aj, align 4, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !30
  %reass.sub = sub i32 %i.al, %i.f
  %i.am = add i32 %reass.sub, 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.am, ptr %i.an, align 4, !tbaa !18
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.ao, align 4, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %3, align 4, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 1, ptr %i.aq, align 2, !tbaa !21
  store i32 -1000000000, ptr %i.ap, align 4, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 6, ptr %i.ar, align 4, !tbaa !34
  %i.as = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext -128, ptr noundef %i.a) ; 0 uses
  %i.at = load i32, ptr %i.a, align 4, !tbaa !23  ; 3 uses
  %i.au = and i32 %i.at, 1073741952               ; 3 uses
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = and i32 %i.at, 128
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = and i32 %i.at, 1073741824
  %.not6.i = icmp eq i32 %i.aw, 0
  br i1 %.not6.i, label %bb.f, label %decStatus.exit

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ay, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.az, align 2, !tbaa !21
  store i8 32, ptr %i.ax, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.e, %bb.d, %bb.f
  %.0.i = phi i32 [ %i.au, %bb.d ], [ %i.au, %bb.f ], [ 128, %bb.e ]
  %i.ba = call ptr @decContextSetStatus(ptr noundef nonnull %2, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %decStatus.exit, %decSetMaxValue.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @decSetMaxValue(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !27     ; 8 uses
  store i32 %i.a, ptr %0, align 4, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.c = icmp sgt i32 %i.a, 3
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.d = add nsw i32 %i.a, -4                     ; 3 uses
  %i.e = udiv i32 %i.d, 3
  %narrow = add nuw nsw i32 %i.e, 1
  %i.f = zext nneg i32 %narrow to i64             ; 5 uses
  %min.iters.check = icmp ult i32 %i.d, 9
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i32 %i.d, 45
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.f, 12
  %n.vec = and i64 %i.f, 2147483632               ; 5 uses
  %i.h = trunc nuw nsw i64 %n.vec to i32
  %i.i = mul i32 %i.h, -3
  %i.j = add i32 %i.a, %i.i                       ; 2 uses
  %i.k = shl nuw nsw i64 %n.vec, 1
  %i.l = getelementptr i8, ptr %i.b, i64 %i.k     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 999), ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> splat (i16 999), ptr %i.n, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.f, 2147483644             ; 4 uses
  %i.p = trunc nuw nsw i64 %n.vec22 to i32
  %i.q = mul i32 %i.p, -3
  %i.r = add i32 %i.a, %i.q                       ; 2 uses
  %i.s = shl nuw nsw i64 %n.vec22, 1
  %i.t = getelementptr i8, ptr %i.b, i64 %i.s     ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.u = shl i64 %index23, 1
  %next.gep24 = getelementptr i8, ptr %i.b, i64 %i.u
  store <4 x i16> splat (i16 999), ptr %next.gep24, align 2, !tbaa !21
  %index.next25 = add nuw i64 %index23, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %n.vec22, %i.f
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.ph = phi i32 [ %i.a, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  %.01314.ph = phi ptr [ %i.b, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015 = phi i32 [ %i.w, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader ] ; 2 uses
  %.01314 = phi ptr [ %i.x, %.lr.ph ], [ %.01314.ph, %.lr.ph.preheader ] ; 2 uses
  store i16 999, ptr %.01314, align 2, !tbaa !21
  %i.w = add nsw i32 %.015, -3                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01314, i64 2 ; 2 uses
  %i.y = icmp samesign ugt i32 %.015, 6
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.013.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.x, %.lr.ph ]
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %i.w, %.lr.ph ]
  %i.z = sext i32 %.0.lcssa to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !23
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = add i16 %i.ac, -1
  store i16 %i.ad, ptr %.013.lcssa, align 2, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ae, align 4, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !30
  %reass.sub = sub i32 %i.ag, %i.a
  %i.ah = add i32 %reass.sub, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberNextPlus(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.decNumber, align 4          ; 7 uses
  %4 = alloca %struct.decContext, align 4         ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 4, !tbaa !17
  %i.d = icmp ugt i8 %i.c, -65
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !27     ; 8 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.g = icmp sgt i32 %i.e, 3
  br i1 %i.g, label %iter.check, label %decSetMaxValue.exit

iter.check:                                       ; preds = %bb.b
  %i.h = add nsw i32 %i.e, -4                     ; 3 uses
  %i.i = udiv i32 %i.h, 3
  %narrow = add nuw nsw i32 %i.i, 1
  %i.j = zext nneg i32 %narrow to i64             ; 5 uses
  %min.iters.check = icmp ult i32 %i.h, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check17 = icmp ult i32 %i.h, 45
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 12
  %n.vec = and i64 %i.j, 2147483632               ; 5 uses
  %i.l = trunc nuw nsw i64 %n.vec to i32
  %i.m = mul i32 %i.l, -3
  %i.n = add i32 %i.e, %i.m                       ; 2 uses
  %i.o = shl nuw nsw i64 %n.vec, 1
  %i.p = getelementptr i8, ptr %i.f, i64 %i.o     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 999), ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> splat (i16 999), ptr %i.r, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %decSetMaxValue.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %i.j, 2147483644             ; 4 uses
  %i.t = trunc nuw nsw i64 %n.vec19 to i32
  %i.u = mul i32 %i.t, -3
  %i.v = add i32 %i.e, %i.u                       ; 2 uses
  %i.w = shl nuw nsw i64 %n.vec19, 1
  %i.x = getelementptr i8, ptr %i.f, i64 %i.w     ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 2 uses
  %i.y = shl i64 %index20, 1
  %next.gep21 = getelementptr i8, ptr %i.f, i64 %i.y
  store <4 x i16> splat (i16 999), ptr %next.gep21, align 2, !tbaa !21
  %index.next22 = add nuw i64 %index20, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next22, %n.vec19
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %n.vec19, %i.j
  br i1 %cmp.n23, label %decSetMaxValue.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.ph = phi i32 [ %i.e, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  %.01314.i.ph = phi ptr [ %i.f, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi i32 [ %i.aa, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01314.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.01314.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i16 999, ptr %.01314.i, align 2, !tbaa !21
  %i.aa = add nsw i32 %.015.i, -3                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01314.i, i64 2 ; 2 uses
  %i.ac = icmp samesign ugt i32 %.015.i, 6
  br i1 %i.ac, label %.lr.ph.i, label %decSetMaxValue.exit, !llvm.loop !108

decSetMaxValue.exit:                              ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.013.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.x, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %i.ab, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.e, %bb.b ], [ %i.v, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.aa, %.lr.ph.i ]
  %i.ad = sext i32 %.0.lcssa.i to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.ag = trunc i32 %i.af to i16
  %i.ah = add i16 %i.ag, -1
  store i16 %i.ah, ptr %.013.lcssa.i, align 2, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !30
  %reass.sub = sub i32 %i.ak, %i.e
  %i.al = add i32 %reass.sub, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.al, ptr %i.am, align 4, !tbaa !18
  store i8 -128, ptr %i.ai, align 4, !tbaa !17
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.an, align 4, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %3, align 4, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 1, ptr %i.ap, align 2, !tbaa !21
  store i32 -1000000000, ptr %i.ao, align 4, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !34
  %i.ar = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %i.a) ; 0 uses
  %i.as = load i32, ptr %i.a, align 4, !tbaa !23  ; 3 uses
  %i.at = and i32 %i.as, 1073741952               ; 3 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = and i32 %i.as, 128
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = and i32 %i.as, 1073741824
  %.not6.i = icmp eq i32 %i.av, 0
  br i1 %.not6.i, label %bb.f, label %decStatus.exit

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ax, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.ay, align 2, !tbaa !21
  store i8 32, ptr %i.aw, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.e, %bb.d, %bb.f
  %.0.i = phi i32 [ %i.at, %bb.d ], [ %i.at, %bb.f ], [ 128, %bb.e ]
  %i.az = call ptr @decContextSetStatus(ptr noundef nonnull %2, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %decStatus.exit, %decSetMaxValue.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberNextToward(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %4 = alloca %struct.decNumber, align 4          ; 7 uses
  %5 = alloca %struct.decContext, align 4         ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !17
  %i.f = and i8 %i.e, 48
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !17
  %i.i = and i8 %i.h, 48
  %.not37 = icmp eq i8 %i.i, 0
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %i.c) ; 0 uses
  br label %decNumberIsNormal.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.k = tail call fastcc i32 @decCompare(ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 0) ; 2 uses
  switch i32 %i.k, label %bb.i [
    i32 -2147483648, label %.thread50
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.g, align 4, !tbaa !17
  %i.m = icmp eq ptr %0, %1
  br i1 %i.m, label %.decNumberCopy.exit_crit_edge.i, label %bb.f

.decNumberCopy.exit_crit_edge.i:                  ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !tbaa !17
  br label %decNumberCopySign.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.d, align 4, !tbaa !17    ; 4 uses
  %i.o = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.p = load i32, ptr %1, align 4, !tbaa !19     ; 4 uses
  store <2 x i32> %i.o, ptr %0, align 4, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.r, ptr %i.s, align 2, !tbaa !21
  %i.t = icmp sgt i32 %i.p, 3
  br i1 %i.t, label %bb.g, label %decNumberCopySign.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.v = icmp samesign ult i32 %i.p, 50
  br i1 %i.v, label %bb.h, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
end_hunk_1
begin_hunk_2_@decApplyRound:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = shl i64 %index, 1
  %i.cd = sub i64 %.084.idx.lcssa, %i.cc
  %i.ce = getelementptr i8, ptr %0, i64 %i.cd     ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -16
  %i.cg = getelementptr i8, ptr %i.ce, i64 -32
  store <8 x i16> %broadcast.splat, ptr %i.cf, align 2, !tbaa !21
  store <8 x i16> %broadcast.splat, ptr %i.cg, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge169, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !155

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec193 = and i64 %i.by, -8                   ; 3 uses
  %broadcast.splatinsert194 = insertelement <8 x i16> poison, i16 %i.bv, i64 0
  %broadcast.splat195 = shufflevector <8 x i16> %broadcast.splatinsert194, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ci = shl i64 %n.vec193, 1
  %i.cj = sub i64 %.084.idx.lcssa, %i.ci
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index197 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next198, %vec.epilog.vector.body ] ; 2 uses
  %i.ck = shl i64 %index197, 1
  %i.cl = sub i64 %.084.idx.lcssa, %i.ck
  %i.cm = getelementptr i8, ptr %0, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -16
  store <8 x i16> %broadcast.splat195, ptr %i.cn, align 2, !tbaa !21
  %index.next198 = add nuw i64 %index197, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !153

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n199 = icmp eq i64 %i.by, %n.vec193
  br i1 %cmp.n199, label %._crit_edge169, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.idx.in166.ph = phi i64 [ %.084.idx.lcssa, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.1.idx.in166 = phi i64 [ %.1.idx, %vec.epilog.scalar.ph ], [ %.1.idx.in166.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1.idx = add nsw i64 %.1.idx.in166, -2         ; 2 uses
  %.1.ptr = getelementptr inbounds i8, ptr %0, i64 %.1.idx
  store i16 %i.bv, ptr %.1.ptr, align 2, !tbaa !21
  %.not99 = icmp samesign ult i64 %.1.idx.in166, 13
  br i1 %.not99, label %._crit_edge169, label %vec.epilog.scalar.ph, !llvm.loop !154

._crit_edge169:                                   ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !18 ; 3 uses
  %i.cr = add nsw i32 %i.cq, -1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !29
  %i.cu = load i32, ptr %1, align 4, !tbaa !27
  %i.cv = add i32 %i.ct, 1
  %i.cw = sub i32 %i.cv, %i.cu
  %i.cx = icmp eq i32 %i.cq, %i.cw
  br i1 %i.cx, label %bb.w, label %.critedge

bb.w:                                             ; preds = %._crit_edge169
  %i.cy = icmp eq i32 %.0.lcssa, 1
  %i.cz = icmp eq i32 %i.bg, 1
  %or.cond137 = and i1 %i.cy, %i.cz
  br i1 %or.cond137, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = add i16 %i.bi, -1
  %i.db = add nsw i32 %i.bg, -1
  store i32 %i.db, ptr %0, align 4, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sink = phi i16 [ %i.da, %bb.x ], [ 0, %bb.w ]
  store i16 %.sink, ptr %.084.ptr.lcssa, align 2, !tbaa !21
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !18
  %i.dc = load i32, ptr %3, align 4, !tbaa !23
  %i.dd = or i32 %i.dc, 14368
  store i32 %i.dd, ptr %3, align 4, !tbaa !23
  br label %.critedge

.lr.ph160:                                        ; preds = %select.unfold123, %bb.z
  %.084.ptr159 = phi ptr [ %.084.ptr, %bb.z ], [ %.084.ptr156, %select.unfold123 ]
  %.0158 = phi i32 [ %i.df, %bb.z ], [ %i.bg, %select.unfold123 ]
  %.084.idx157 = phi i64 [ %.084.add100, %bb.z ], [ 10, %select.unfold123 ]
  %i.de = load i16, ptr %.084.ptr159, align 2, !tbaa !21
  %.not97 = icmp eq i16 %i.de, 0
  br i1 %.not97, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.lr.ph160
  %i.df = add i32 %.0158, -3                      ; 3 uses
  %.084.add100 = add nuw nsw i64 %.084.idx157, 2  ; 3 uses
  %.084.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.084.add100 ; 2 uses
  %i.dg = icmp ult i32 %i.df, 4
  br i1 %i.dg, label %._crit_edge161, label %.lr.ph160

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph160, %._crit_edge161, %._crit_edge
  %i.dh = phi i32 [ %i.ad, %._crit_edge ], [ %i.bg, %._crit_edge161 ], [ %i.bg, %.lr.ph160 ], [ %i.ad, %.lr.ph ] ; 3 uses
  %.191135 = phi i32 [ 1, %._crit_edge ], [ -1, %._crit_edge161 ], [ -1, %.lr.ph160 ], [ 1, %.lr.ph ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.dj = icmp slt i32 %i.dh, 50
  br i1 %i.dj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit
  %i.dk = sext i32 %i.dh to i64
  %i.dl = getelementptr inbounds i8, ptr @d2utable, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !24
  %i.dn = zext i8 %i.dm to i32
  br label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  %i.do = add nuw nsw i32 %i.dh, 2
  %i.dp = udiv i32 %i.do, 3
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dq = phi i32 [ %i.dn, %bb.aa ], [ %i.dp, %bb.ab ]
  %i.dr = tail call fastcc i32 @decUnitAddSub(ptr noundef nonnull %i.di, i32 noundef %i.dq, ptr noundef nonnull @uarrone, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.di, i32 noundef %.191135) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.p, %bb.j, %bb.q, %bb.h, %bb.m, %bb.f, %bb.d, %bb.e, %bb.k, %bb.n, %bb.r, %._crit_edge169, %bb.y, %._crit_edge155, %bb.t, %bb.a, %bb.ac
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @decSetOverflow(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !17    ; 2 uses
  %i.c = and i8 %i.b, -128                        ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 8 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !21
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %0, align 4, !tbaa !19
  %i.h = icmp eq i32 %i.g, 1
  %i.i = and i8 %i.b, 112
  %i.j = icmp eq i8 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i8, ptr %i.m, align 4, !tbaa !28
  %.not27 = icmp eq i8 %i.n, 0
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %1, align 4, !tbaa !27
  %.neg33 = add i32 %i.l, 1
  %i.p = sub i32 %.neg33, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.p, %bb.d ], [ %i.l, %bb.c ]  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = icmp sgt i32 %i.r, %.0
  br i1 %i.s, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store i32 %.0, ptr %i.q, align 4, !tbaa !18
  br label %.sink.split

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  store i16 0, ptr %i.d, align 2, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34
  switch i32 %i.v, label %.critedge [
    i32 5, label %.critedge31
    i32 7, label %.critedge31
    i32 0, label %.split
    i32 6, label %bb.h
  ]

.split:                                           ; preds = %bb.g
  %.not25 = icmp eq i8 %i.c, 0
  br i1 %.not25, label %.critedge, label %.critedge31

bb.h:                                             ; preds = %bb.g
  %.not.not = icmp eq i8 %i.c, 0
  br i1 %.not.not, label %.critedge31, label %.critedge

.critedge31:                                      ; preds = %.split, %bb.g, %bb.g, %bb.h
  %i.w = load i32, ptr %1, align 4, !tbaa !27     ; 8 uses
  store i32 %i.w, ptr %0, align 4, !tbaa !19
  %i.x = icmp sgt i32 %i.w, 3
  br i1 %i.x, label %iter.check, label %decSetMaxValue.exit

iter.check:                                       ; preds = %.critedge31
  %i.y = add nsw i32 %i.w, -4                     ; 3 uses
  %i.z = udiv i32 %i.y, 3
  %narrow = add nuw nsw i32 %i.z, 1
  %i.aa = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %i.y, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i32 %i.y, 45
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 2147483632              ; 5 uses
  %i.ac = trunc nuw nsw i64 %n.vec to i32
  %i.ad = mul i32 %i.ac, -3
  %i.ae = add i32 %i.w, %i.ad                     ; 2 uses
  %i.af = shl nuw nsw i64 %n.vec, 1
  %i.ag = getelementptr i8, ptr %i.d, i64 %i.af   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 999), ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> splat (i16 999), ptr %i.ai, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %decSetMaxValue.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.aa, 2147483644            ; 4 uses
  %i.ak = trunc nuw nsw i64 %n.vec43 to i32
  %i.al = mul i32 %i.ak, -3
  %i.am = add i32 %i.w, %i.al                     ; 2 uses
  %i.an = shl nuw nsw i64 %n.vec43, 1
  %i.ao = getelementptr i8, ptr %i.d, i64 %i.an   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl i64 %index44, 1
  %next.gep45 = getelementptr i8, ptr %i.d, i64 %i.ap
  store <4 x i16> splat (i16 999), ptr %next.gep45, align 2, !tbaa !21
  %index.next46 = add nuw i64 %index44, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next46, %n.vec43
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %n.vec43, %i.aa
  br i1 %cmp.n47, label %decSetMaxValue.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.ph = phi i32 [ %i.w, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.01314.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi i32 [ %i.ar, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01314.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.01314.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i16 999, ptr %.01314.i, align 2, !tbaa !21
  %i.ar = add nsw i32 %.015.i, -3                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01314.i, i64 2 ; 2 uses
  %i.at = icmp samesign ugt i32 %.015.i, 6
  br i1 %i.at, label %.lr.ph.i, label %decSetMaxValue.exit, !llvm.loop !158

decSetMaxValue.exit:                              ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.critedge31
  %.013.lcssa.i = phi ptr [ %i.d, %.critedge31 ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.as, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.w, %.critedge31 ], [ %i.am, %vec.epilog.middle.block ], [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph.i ]
  %i.au = sext i32 %.0.lcssa.i to i64
  %i.av = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !23
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = add i16 %i.ax, -1
  store i16 %i.ay, ptr %.013.lcssa.i, align 2, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !30
  %reass.sub = sub i32 %i.ba, %i.w
  %i.bb = add i32 %reass.sub, 1
  store i32 %i.bb, ptr %i.t, align 4, !tbaa !18
  br label %bb.i

.critedge:                                        ; preds = %.split, %bb.g, %bb.h
  %i.bc = or disjoint i8 %i.c, 64
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %decSetMaxValue.exit
  %storemerge = phi i8 [ %i.bc, %.critedge ], [ %i.c, %decSetMaxValue.exit ]
  store i8 %storemerge, ptr %i.a, align 4, !tbaa !17
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.f
  %.sink39 = phi i32 [ 1024, %bb.f ], [ 2592, %bb.i ]
  %i.bd = load i32, ptr %2, align 4, !tbaa !23
  %i.be = or i32 %i.bd, %.sink39
  store i32 %i.be, ptr %2, align 4, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @decSetSubnormal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #15 {
bb.a:
  %4 = alloca %struct.decContext, align 4         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29
  %i.c = load i32, ptr %1, align 4, !tbaa !27
  %.neg41 = add i32 %i.b, 1
  %i.d = sub i32 %.neg41, %i.c                    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !21
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %0, align 4, !tbaa !19
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i8, ptr %i.j, align 4, !tbaa !17
  %i.l = and i8 %i.k, 112
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18
  %i.p = icmp slt i32 %i.o, %i.d
  br i1 %i.p, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  store i32 %i.d, ptr %i.n, align 4, !tbaa !18
  %i.q = load i32, ptr %3, align 4, !tbaa !23
  %i.r = or i32 %i.q, 1024
  br label %.sink.split

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.s = load i32, ptr %3, align 4, !tbaa !23     ; 3 uses
  %i.t = or i32 %i.s, 4096
  store i32 %i.t, ptr %3, align 4, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18
  %i.w = sub nsw i32 %i.d, %i.v                   ; 3 uses
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = and i32 %i.s, 32
  %.not40 = icmp eq i32 %i.y, 0
  br i1 %.not40, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = or i32 %i.s, 12288
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !35
  %i.aa = load i32, ptr %0, align 4, !tbaa !19    ; 2 uses
  %i.ab = sub nsw i32 %i.aa, %i.w
  store i32 %i.ab, ptr %4, align 4, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = sub nsw i32 %i.ad, %i.w
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !29
  call fastcc void @decSetCoeff(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %i.e, i32 noundef %i.aa, ptr noundef %2, ptr noundef %3)
  %i.af = load i32, ptr %2, align 4, !tbaa !23
  call fastcc void @decApplyRound(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %i.af, ptr noundef %3)
  %i.ag = load i32, ptr %3, align 4, !tbaa !23    ; 2 uses
  %i.ah = and i32 %i.ag, 32
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = or i32 %i.ag, 8192
  store i32 %i.ai, ptr %3, align 4, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = load i32, ptr %i.u, align 4, !tbaa !18
  %i.ak = icmp sgt i32 %i.aj, %i.d
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %0, align 4, !tbaa !19
  %i.am = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %i.e, i32 noundef %i.al, i32 noundef 1)
  store i32 %i.am, ptr %0, align 4, !tbaa !19
  %i.an = load i32, ptr %i.u, align 4, !tbaa !18
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.u, align 4, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = load i16, ptr %i.e, align 2, !tbaa !21
end_hunk_2
