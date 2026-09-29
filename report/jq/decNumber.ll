Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/decNumber?download=true
inline.NumInlined: 166
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decNumberFromString:.peel.begin
  %i.cm = load i32, ptr %2, align 4, !tbaa !27    ; 2 uses
  %.not252 = icmp sgt i32 %.6195, %i.cm           ; 2 uses
  br i1 %.not252, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 10
  br label %.thread280

bb.aj:                                            ; preds = %.loopexit
  %i.co = icmp slt i32 %.6195, 50
  br i1 %i.co, label %bb.ak, label %.thread

.thread:                                          ; preds = %bb.aj
  %i.cp = add nuw nsw i32 %.6195, 2
  %i.cq = udiv i32 %i.cp, 3
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
  %narrow280 = add nuw nsw i32 %i.i, 1
  %i.j = zext nneg i32 %narrow280 to i64          ; 5 uses
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

vector.body248:                                   ; preds = %vector.ph246, %vector.body248
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

.lr.ph171.preheader:                              ; preds = %iter.check261, %vector.memcheck240, %vec.epilog.iter.check263, %vec.epilog.middle.block273
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
  %6 = zext nneg i32 %narrow to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.ax, 153
  br i1 %min.iters.check, label %.lr.ph.preheader283, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %4, i64 4
  %7 = add i32 %3, -4
  %8 = sub i32 %7, %i.c
  %9 = udiv i32 %8, 3
  %10 = shl nuw i32 %9, 1
  %11 = zext i32 %10 to i64
  %i.az = getelementptr i8, ptr %2, i64 %11
  %scevgep203 = getelementptr i8, ptr %i.az, i64 2
  %bound0 = icmp ult ptr %4, %scevgep203
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader283, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %6, 2147483644                 ; 4 uses
  %i.ba = trunc nuw nsw i64 %n.vec to i32
  %i.bb = mul i32 %i.ba, 3                        ; 2 uses
  %i.bc = or disjoint i32 %i.bb, 3
  %i.bd = shl nuw nsw i64 %n.vec, 1
  %i.be = getelementptr i8, ptr %2, i64 %i.bd     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pr190, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %bb.h, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.h ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bl, %bb.h ]
  %i.bf = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bk, %bb.h ]
  %i.bg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %2, i64 %i.bg
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !21, !alias.scope !59
  %wide.load.fr = freeze <4 x i16> %wide.load
  %i.bh = icmp ne <4 x i16> %wide.load.fr, zeroinitializer ; 3 uses
  %i.bi = bitcast <4 x i1> %i.bh to i4
  %.not281 = icmp eq i4 %i.bi, 0
  br i1 %.not281, label %bb.h, label %bb.g

bb.g:                                             ; preds = %vector.body
  store i32 1, ptr %4, align 4, !tbaa !23, !alias.scope !60, !noalias !59
  br label %bb.h

bb.h:                                             ; preds = %vector.body, %bb.g
  %i.bj = bitcast <4 x i1> %i.bh to i4
  %.not278 = icmp eq i4 %i.bj, 0                  ; 2 uses
  %i.bk = select i1 %.not278, <4 x i1> %i.bf, <4 x i1> %i.bh ; 2 uses
  %i.bl = select i1 %.not278, <4 x i32> %vec.phi, <4 x i32> splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %bb.h
  %i.bn = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.bl, <4 x i1> %i.bk, i32 %.pr190) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %6
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader283

.lr.ph.preheader283:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %.pr190, %vector.memcheck ], [ %.pr190, %.lr.ph.preheader ], [ %i.bn, %middle.block ]
  %.ph284 = phi i32 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader ], [ %i.bc, %middle.block ]
  %.2123153.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  %.not199 = icmp eq i32 %i.as, 1
  br i1 %.not199, label %.thread, label %.preheader149

.preheader149:                                    ; preds = %bb.i
  %i.bo = icmp sgt i32 %3, 0
  br i1 %i.bo, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %.preheader149, %bb.k
  %.1117165 = phi i32 [ %i.br, %bb.k ], [ %3, %.preheader149 ] ; 2 uses
  %.1122164 = phi ptr [ %i.bq, %bb.k ], [ %2, %.preheader149 ] ; 2 uses
  %i.bp = load i16, ptr %.1122164, align 2, !tbaa !21
  %.not144 = icmp eq i16 %i.bp, 0
  br i1 %.not144, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph166
  store i32 1, ptr %4, align 4, !tbaa !23
  br label %.thread

bb.k:                                             ; preds = %.lr.ph166
  %i.bq = getelementptr inbounds nuw i8, ptr %.1122164, i64 2
  %i.br = add nsw i32 %.1117165, -3
  %i.bs = icmp sgt i32 %.1117165, 3
  br i1 %i.bs, label %.lr.ph166, label %._crit_edge167, !llvm.loop !54

._crit_edge167:                                   ; preds = %bb.k, %.preheader149
  %.not145 = icmp eq i32 %i.as, 0
  br i1 %.not145, label %bb.l, label %.thread

.thread:                                          ; preds = %.thread188, %bb.i, %bb.j, %._crit_edge167
  %i.bt = load i32, ptr %5, align 4, !tbaa !23
  %i.bu = or i32 %i.bt, 32
  store i32 %i.bu, ptr %5, align 4, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %.thread, %._crit_edge167
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.bv, align 2, !tbaa !21
  store i32 1, ptr %0, align 4, !tbaa !19
  br label %bb.z

.lr.ph:                                           ; preds = %.lr.ph.preheader283, %bb.n
  %i.bw = phi i32 [ %i.bz, %bb.n ], [ %.ph, %.lr.ph.preheader283 ]
  %i.bx = phi i32 [ %i.cb, %bb.n ], [ %.ph284, %.lr.ph.preheader283 ] ; 2 uses
  %.2123153 = phi ptr [ %i.ca, %bb.n ], [ %.2123153.ph, %.lr.ph.preheader283 ] ; 2 uses
  %i.by = load i16, ptr %.2123153, align 2, !tbaa !21
  %.not139 = icmp eq i16 %i.by, 0
  br i1 %.not139, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store i32 1, ptr %4, align 4, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %i.bz = phi i32 [ %i.bw, %.lr.ph ], [ 1, %bb.m ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.2123153, i64 2 ; 2 uses
  %i.cb = add nuw nsw i32 %i.bx, 3                ; 2 uses
  %.not = icmp slt i32 %i.cb, %i.d
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.n, %middle.block, %.preheader151
  %i.cc = phi i32 [ %.pr190, %.preheader151 ], [ %i.bn, %middle.block ], [ %i.bz, %bb.n ] ; 3 uses
  %.2123.lcssa = phi ptr [ %2, %.preheader151 ], [ %i.be, %middle.block ], [ %i.ca, %bb.n ] ; 11 uses
  %.2.lcssa = phi i32 [ 0, %.preheader151 ], [ %i.bb, %middle.block ], [ %i.bx, %bb.n ]
  %.2123.lcssa212 = ptrtoaddr ptr %.2123.lcssa to i64
  %i.cd = sub nsw i32 %i.d, %.2.lcssa             ; 5 uses
  %i.ce = add nsw i32 %i.cd, -1                   ; 3 uses
  switch i32 %i.ce, label %bb.t [
    i32 2, label %bb.o
    i32 0, label %bb.s
  ]

bb.o:                                             ; preds = %._crit_edge
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 12), align 4, !tbaa !23
  %i.cg = lshr i32 %i.cf, 1
  %i.ch = load i16, ptr %.2123.lcssa, align 2, !tbaa !21 ; 2 uses
  %i.ci = zext i16 %i.ch to i32                   ; 2 uses
  %i.cj = and i32 %i.cg, 32767                    ; 2 uses
  %.not141 = icmp samesign ugt i32 %i.cj, %i.ci
  br i1 %.not141, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp samesign ult i32 %i.cj, %i.ci
  %i.cl = add nsw i32 %i.cc, 5
  %spec.select198 = select i1 %i.ck, i32 7, i32 %i.cl
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %.not142 = icmp eq i16 %i.ch, 0
  br i1 %.not142, label %bb.r, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.q
  %.sink = phi i32 [ %spec.select198, %bb.p ], [ 3, %bb.q ]
  store i32 %.sink, ptr %4, align 4, !tbaa !23
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q
  %i.cm = load i32, ptr %1, align 4, !tbaa !27    ; 9 uses
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %.loopexit.sink.split, label %iter.check

iter.check:                                       ; preds = %bb.r
  store i32 %i.cm, ptr %0, align 4, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.cp = add nsw i32 %i.cm, -1
  %i.cq = udiv i32 %i.cp, 3
  %narrow279 = add nuw nsw i32 %i.cq, 1
  %i.cr = zext nneg i32 %narrow279 to i64         ; 5 uses
  %min.iters.check214 = icmp ult i32 %i.cm, 10
  br i1 %min.iters.check214, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %iter.check
  %i.cs = sub i64 %i.b, %.2123.lcssa212
  %i.ct = add i64 %i.cs, 7
  %diff.check = icmp ult i64 %i.ct, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck211
  %min.iters.check215 = icmp ult i32 %i.cm, 46
  br i1 %min.iters.check215, label %vec.epilog.ph, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %i.cr, 12
  %n.vec217 = and i64 %i.cr, 2147483632           ; 5 uses
  %i.cv = trunc nuw nsw i64 %n.vec217 to i32
  %i.cw = mul i32 %i.cv, -3
  %i.cx = add i32 %i.cm, %i.cw
  %i.cy = shl nuw nsw i64 %n.vec217, 1            ; 2 uses
  %i.cz = getelementptr i8, ptr %i.co, i64 %i.cy
  %i.da = getelementptr i8, ptr %.2123.lcssa, i64 %i.cy
  br label %vector.body218

vector.body218:                                   ; preds = %vector.ph216, %vector.body218
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next224, %vector.body218 ] ; 2 uses
  %i.db = shl i64 %index219, 1                    ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.co, i64 %i.db ; 2 uses
  %next.gep221 = getelementptr i8, ptr %.2123.lcssa, i64 %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %next.gep221, i64 2
  %i.dd = getelementptr inbounds nuw i8, ptr %next.gep221, i64 18
  %wide.load222 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !21
  %wide.load223 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !21
  %i.de = getelementptr i8, ptr %next.gep220, i64 16
  store <8 x i16> %wide.load222, ptr %next.gep220, align 2, !tbaa !21
  store <8 x i16> %wide.load223, ptr %i.de, align 2, !tbaa !21
  %index.next224 = add nuw i64 %index219, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next224, %n.vec217
  br i1 %i.df, label %middle.block225, label %vector.body218, !llvm.loop !56

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %n.vec217, %i.cr
  br i1 %cmp.n226, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block225
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec217, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec230 = and i64 %i.cr, 2147483644           ; 4 uses
  %i.dg = trunc nuw nsw i64 %n.vec230 to i32
  %i.dh = mul i32 %i.dg, -3
  %i.di = add i32 %i.cm, %i.dh
  %i.dj = shl nuw nsw i64 %n.vec230, 1            ; 2 uses
  %i.dk = getelementptr i8, ptr %i.co, i64 %i.dj
  %i.dl = getelementptr i8, ptr %.2123.lcssa, i64 %i.dj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index231 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next235, %vec.epilog.vector.body ] ; 2 uses
  %i.dm = shl i64 %index231, 1                    ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.co, i64 %i.dm
  %next.gep233 = getelementptr i8, ptr %.2123.lcssa, i64 %i.dm
  %i.dn = getelementptr inbounds nuw i8, ptr %next.gep233, i64 2
  %wide.load234 = load <4 x i16>, ptr %i.dn, align 2, !tbaa !21
  store <4 x i16> %wide.load234, ptr %next.gep232, align 2, !tbaa !21
  %index.next235 = add nuw i64 %index231, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next235, %n.vec230
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n236 = icmp eq i64 %n.vec230, %i.cr
  br i1 %cmp.n236, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck211, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3157.ph = phi i32 [ %i.cm, %iter.check ], [ %i.cm, %vector.memcheck211 ], [ %i.cx, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ]
  %.1119156.ph = phi ptr [ %i.co, %iter.check ], [ %i.co, %vector.memcheck211 ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.2123.pn155.ph = phi ptr [ %.2123.lcssa, %iter.check ], [ %.2123.lcssa, %vector.memcheck211 ], [ %i.da, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.3157 = phi i32 [ %i.dr, %vec.epilog.scalar.ph ], [ %.3157.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1119156 = phi ptr [ %i.dq, %vec.epilog.scalar.ph ], [ %.1119156.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
end_hunk_0
