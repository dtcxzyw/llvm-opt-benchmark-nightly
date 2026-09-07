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
  %6 = sub i32 %i.ba, %i.c
  %i.bb = udiv i32 %6, 3
  %i.bc = shl nuw i32 %i.bb, 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %2, i64 %i.bd
  %scevgep203 = getelementptr i8, ptr %i.be, i64 2
  %bound0 = icmp ult ptr %4, %scevgep203
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader283, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.az, 2147483644              ; 4 uses
  %i.bf = trunc nuw nsw i64 %n.vec to i32
  %i.bg = mul i32 %i.bf, 3                        ; 2 uses
  %i.bh = or disjoint i32 %i.bg, 3
  %i.bi = shl nuw nsw i64 %n.vec, 1
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pr190, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %bb.h, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.h ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bq, %bb.h ]
  %i.bk = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bp, %bb.h ]
  %i.bl = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %2, i64 %i.bl
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !21, !alias.scope !59
  %wide.load.fr = freeze <4 x i16> %wide.load
  %i.bm = icmp ne <4 x i16> %wide.load.fr, zeroinitializer ; 3 uses
  %i.bn = bitcast <4 x i1> %i.bm to i4
  %.not281 = icmp eq i4 %i.bn, 0
  br i1 %.not281, label %bb.h, label %bb.g

bb.g:                                             ; preds = %vector.body
  store i32 1, ptr %4, align 4, !tbaa !23, !alias.scope !60, !noalias !59
  br label %bb.h

bb.h:                                             ; preds = %vector.body, %bb.g
  %i.bo = bitcast <4 x i1> %i.bm to i4
  %.not278 = icmp eq i4 %i.bo, 0                  ; 2 uses
  %i.bp = select i1 %.not278, <4 x i1> %i.bk, <4 x i1> %i.bm ; 2 uses
  %i.bq = select i1 %.not278, <4 x i32> %vec.phi, <4 x i32> splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %bb.h
  %i.bs = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.bq, <4 x i1> %i.bp, i32 %.pr190) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.az
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader283

.lr.ph.preheader283:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %.pr190, %vector.memcheck ], [ %.pr190, %.lr.ph.preheader ], [ %i.bs, %middle.block ]
  %.ph284 = phi i32 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader ], [ %i.bh, %middle.block ]
  %.2123153.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  %.not199 = icmp eq i32 %i.as, 1
  br i1 %.not199, label %.thread, label %.preheader149

.preheader149:                                    ; preds = %bb.i
  %i.bt = icmp sgt i32 %3, 0
  br i1 %i.bt, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %.preheader149, %bb.k
  %.1117165 = phi i32 [ %i.bw, %bb.k ], [ %3, %.preheader149 ] ; 2 uses
  %.1122164 = phi ptr [ %i.bv, %bb.k ], [ %2, %.preheader149 ] ; 2 uses
  %i.bu = load i16, ptr %.1122164, align 2, !tbaa !21
  %.not144 = icmp eq i16 %i.bu, 0
  br i1 %.not144, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph166
  store i32 1, ptr %4, align 4, !tbaa !23
  br label %.thread

bb.k:                                             ; preds = %.lr.ph166
  %i.bv = getelementptr inbounds nuw i8, ptr %.1122164, i64 2
  %i.bw = add nsw i32 %.1117165, -3
  %i.bx = icmp sgt i32 %.1117165, 3
  br i1 %i.bx, label %.lr.ph166, label %._crit_edge167, !llvm.loop !54

._crit_edge167:                                   ; preds = %bb.k, %.preheader149
  %.not145 = icmp eq i32 %i.as, 0
  br i1 %.not145, label %bb.l, label %.thread

.thread:                                          ; preds = %.thread188, %bb.i, %bb.j, %._crit_edge167
  %i.by = load i32, ptr %5, align 4, !tbaa !23
  %i.bz = or i32 %i.by, 32
  store i32 %i.bz, ptr %5, align 4, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %.thread, %._crit_edge167
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.ca, align 2, !tbaa !21
  store i32 1, ptr %0, align 4, !tbaa !19
  br label %bb.z

.lr.ph:                                           ; preds = %.lr.ph.preheader283, %bb.n
  %i.cb = phi i32 [ %i.ce, %bb.n ], [ %.ph, %.lr.ph.preheader283 ]
  %i.cc = phi i32 [ %i.cg, %bb.n ], [ %.ph284, %.lr.ph.preheader283 ] ; 2 uses
  %.2123153 = phi ptr [ %i.cf, %bb.n ], [ %.2123153.ph, %.lr.ph.preheader283 ] ; 2 uses
  %i.cd = load i16, ptr %.2123153, align 2, !tbaa !21
  %.not139 = icmp eq i16 %i.cd, 0
  br i1 %.not139, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store i32 1, ptr %4, align 4, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %i.ce = phi i32 [ %i.cb, %.lr.ph ], [ 1, %bb.m ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.2123153, i64 2 ; 2 uses
  %i.cg = add nuw nsw i32 %i.cc, 3                ; 2 uses
  %.not = icmp slt i32 %i.cg, %i.d
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.n, %middle.block, %.preheader151
  %i.ch = phi i32 [ %.pr190, %.preheader151 ], [ %i.bs, %middle.block ], [ %i.ce, %bb.n ] ; 3 uses
  %.2123.lcssa = phi ptr [ %2, %.preheader151 ], [ %i.bj, %middle.block ], [ %i.cf, %bb.n ] ; 11 uses
  %.2.lcssa = phi i32 [ 0, %.preheader151 ], [ %i.bg, %middle.block ], [ %i.cc, %bb.n ]
  %.2123.lcssa212 = ptrtoaddr ptr %.2123.lcssa to i64
  %i.ci = sub nsw i32 %i.d, %.2.lcssa             ; 5 uses
  %i.cj = add nsw i32 %i.ci, -1                   ; 3 uses
  switch i32 %i.cj, label %bb.t [
    i32 2, label %bb.o
    i32 0, label %bb.s
  ]

bb.o:                                             ; preds = %._crit_edge
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 12), align 4, !tbaa !23
  %i.cl = lshr i32 %i.ck, 1
  %i.cm = load i16, ptr %.2123.lcssa, align 2, !tbaa !21 ; 2 uses
  %i.cn = zext i16 %i.cm to i32                   ; 2 uses
  %i.co = and i32 %i.cl, 32767                    ; 2 uses
  %.not141 = icmp samesign ugt i32 %i.co, %i.cn
  br i1 %.not141, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = icmp samesign ult i32 %i.co, %i.cn
  %i.cq = add nsw i32 %i.ch, 5
  %spec.select198 = select i1 %i.cp, i32 7, i32 %i.cq
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %.not142 = icmp eq i16 %i.cm, 0
  br i1 %.not142, label %bb.r, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.q
  %.sink = phi i32 [ %spec.select198, %bb.p ], [ 3, %bb.q ]
  store i32 %.sink, ptr %4, align 4, !tbaa !23
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q
  %i.cr = load i32, ptr %1, align 4, !tbaa !27    ; 9 uses
  %i.cs = icmp slt i32 %i.cr, 1
  br i1 %i.cs, label %.loopexit.sink.split, label %iter.check

iter.check:                                       ; preds = %bb.r
  store i32 %i.cr, ptr %0, align 4, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.cu = add nsw i32 %i.cr, -1
  %i.cv = udiv i32 %i.cu, 3
  %narrow279 = add nuw nsw i32 %i.cv, 1
  %i.cw = zext nneg i32 %narrow279 to i64         ; 5 uses
  %min.iters.check214 = icmp ult i32 %i.cr, 10
  br i1 %min.iters.check214, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %iter.check
  %i.cx = sub i64 %i.b, %.2123.lcssa212
  %i.cy = add i64 %i.cx, 7
  %diff.check = icmp ult i64 %i.cy, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck211
  %min.iters.check215 = icmp ult i32 %i.cr, 46
  br i1 %min.iters.check215, label %vec.epilog.ph, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %i.cw, 12
  %n.vec217 = and i64 %i.cw, 2147483632           ; 5 uses
  %i.da = trunc nuw nsw i64 %n.vec217 to i32
  %i.db = mul i32 %i.da, -3
  %i.dc = add i32 %i.cr, %i.db
  %i.dd = shl nuw nsw i64 %n.vec217, 1            ; 2 uses
  %i.de = getelementptr i8, ptr %i.ct, i64 %i.dd
  %i.df = getelementptr i8, ptr %.2123.lcssa, i64 %i.dd
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next224, %vector.body218 ] ; 2 uses
  %i.dg = shl i64 %index219, 1                    ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.ct, i64 %i.dg ; 2 uses
  %next.gep221 = getelementptr i8, ptr %.2123.lcssa, i64 %i.dg ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %next.gep221, i64 2
  %i.di = getelementptr inbounds nuw i8, ptr %next.gep221, i64 18
  %wide.load222 = load <8 x i16>, ptr %i.dh, align 2, !tbaa !21
  %wide.load223 = load <8 x i16>, ptr %i.di, align 2, !tbaa !21
  %i.dj = getelementptr i8, ptr %next.gep220, i64 16
  store <8 x i16> %wide.load222, ptr %next.gep220, align 2, !tbaa !21
end_hunk_0
begin_hunk_1_@decDivideOp:bb.a
  br i1 %.not582, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !18
  %i.bx = sub nsw i32 %i.bu, %i.bw
  %i.by = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.l, ptr %i.bz, align 4, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bx, ptr %i.ca, align 4, !tbaa !18
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.c, ptr noundef %5)
  br label %.thread644.thread

bb.y:                                             ; preds = %bb.w
  %i.cb = and i8 %4, 32
  %.not583 = icmp eq i8 %i.cb, 0
  br i1 %.not583, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cd, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.ce, align 2, !tbaa !21
  store i8 %i.l, ptr %i.cc, align 4, !tbaa !17
  br label %.thread644.thread

bb.aa:                                            ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !18 ; 2 uses
  %i.ch = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.ck = icmp slt i32 %i.cg, %i.cj
  br i1 %i.ck, label %bb.ab, label %.thread644.thread

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !18
  br label %.thread644.thread

thread-pre-split:                                 ; preds = %bb.u, %bb.v
  %i.cl = phi i32 [ %i.bp, %bb.u ], [ 1, %bb.v ]  ; 10 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !18 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !18 ; 7 uses
  %i.cq = load i32, ptr %2, align 4, !tbaa !19    ; 7 uses
  %.neg663 = add i32 %i.cn, %i.cl
  %i.cr = add i32 %i.cp, %i.cq
  %i.cs = sub i32 %.neg663, %i.cr                 ; 4 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  %i.cu = zext i8 %4 to i32                       ; 4 uses
  %i.cv = icmp eq i8 %4, -128
  %or.cond = or i1 %i.cv, %i.ct
  br i1 %or.cond, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split
  %i.cw = and i32 %i.cu, 32
  %.not550 = icmp eq i32 %i.cw, 0
  br i1 %.not550, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cy, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.cz, align 2, !tbaa !21
  store i8 %i.l, ptr %i.cx, align 4, !tbaa !17
  br label %.thread644.thread

bb.ae:                                            ; preds = %bb.ac
  %.not551 = icmp sgt i32 %i.cn, %i.cp
  br i1 %.not551, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = and i32 %i.cu, 64
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = icmp ne i32 %i.cs, -1
  %or.cond5 = or i1 %i.db, %i.dc
  br i1 %or.cond5, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.dd, align 4, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cn, ptr %i.de, align 4, !tbaa !18
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %.ptr556, i32 noundef %i.cl, ptr noundef nonnull %i.c, ptr noundef nonnull %5)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.c, ptr noundef %5)
  br label %.thread644.thread

bb.ah:                                            ; preds = %bb.ae, %bb.af, %thread-pre-split
  %i.df = icmp slt i32 %i.d, 47
  br i1 %i.df, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dg = sext i32 %i.d to i64
  %i.dh = getelementptr i8, ptr @d2utable, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !24
  %i.dk = zext i8 %i.dj to i32
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dl = add nuw nsw i32 %i.d, 5
  %i.dm = udiv i32 %i.dl, 3
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dn = phi i32 [ %i.dk, %bb.ai ], [ %i.dm, %bb.aj ] ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.dp = icmp samesign ugt i32 %i.dn, 17
  br i1 %i.dp, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dq = shl nuw nsw i64 %i.do, 1
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dq) #20 ; 3 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dt = load i32, ptr %5, align 4, !tbaa !23
  %i.du = or i32 %i.dt, 16
  store i32 %i.du, ptr %5, align 4, !tbaa !23
  br label %.thread644.thread

bb.an:                                            ; preds = %bb.al, %bb.ak
  %.0507 = phi ptr [ %i.a, %bb.ak ], [ %i.dr, %bb.al ]
  %.0505 = phi ptr [ null, %bb.ak ], [ %i.dr, %bb.al ] ; 2 uses
  %i.dv = add nsw i32 %i.cq, %i.d                 ; 2 uses
  %i.dw = add nsw i32 %i.dv, -1
  %.not552 = icmp slt i32 %i.cl, %i.dv
  %spec.select = select i1 %.not552, i32 %i.dw, i32 %i.cl ; 3 uses
  %i.dx = icmp slt i32 %spec.select, 50
  br i1 %i.dx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dy = sext i32 %spec.select to i64
  %i.dz = getelementptr inbounds i8, ptr @d2utable, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !24
  %i.eb = zext i8 %i.ea to i32
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ec = add nuw nsw i32 %spec.select, 2
  %i.ed = udiv i32 %i.ec, 3
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ee = phi i32 [ %i.eb, %bb.ao ], [ %i.ed, %bb.ap ] ; 3 uses
  %i.ef = add nuw nsw i32 %i.ee, 2                ; 2 uses
  %.not553 = icmp sgt i8 %4, -1                   ; 6 uses
  %i.eg = add nuw nsw i32 %i.ee, 3                ; 5 uses
  %spec.select598 = select i1 %.not553, i32 %i.eg, i32 %i.ef ; 4 uses
  %i.eh = icmp samesign ugt i32 %spec.select598, 24
  br i1 %i.eh, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ei = shl nuw nsw i32 %spec.select598, 1
  %i.ej = add nuw nsw i32 %i.ei, 2
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.en = load i32, ptr %5, align 4, !tbaa !23
  %i.eo = or i32 %i.en, 16
  store i32 %i.eo, ptr %5, align 4, !tbaa !23
  br label %.thread644

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.0485 = phi ptr [ %i.b, %bb.aq ], [ %i.el, %bb.ar ] ; 29 uses
  %.0483 = phi ptr [ null, %bb.aq ], [ %i.el, %bb.ar ] ; 2 uses
  %i.ep = zext nneg i32 %spec.select598 to i64    ; 3 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %.0485, i64 %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -2 ; 3 uses
  %i.es = icmp slt i32 %i.cl, 50                  ; 2 uses
  br i1 %i.es, label %bb.au, label %.thread779

.thread779:                                       ; preds = %bb.at
  %i.et = add nuw nsw i32 %i.cl, 2
  %i.eu = udiv i32 %i.et, 3
  br label %.lr.ph.preheader

bb.au:                                            ; preds = %bb.at
  %i.ev = sext i32 %i.cl to i64
  %i.ew = getelementptr inbounds i8, ptr @d2utable, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !24
  %i.ey = zext i8 %i.ex to i32
  %.not554680 = icmp eq i32 %i.cl, 0
  br i1 %.not554680, label %.preheader671, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread779, %bb.au
  %i.ez = phi i32 [ %i.eu, %.thread779 ], [ %i.ey, %bb.au ]
  %i.fa = shl nuw nsw i64 %i.ep, 1                ; 2 uses
  %i.fb = shl nuw nsw i32 %i.ez, 1
  %i.fc = zext nneg i32 %i.fb to i64              ; 3 uses
  %i.fd = sub nsw i64 %i.fa, %i.fc
  %scevgep = getelementptr i8, ptr %.0485, i64 %i.fd
  %scevgep743 = getelementptr i8, ptr %1, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 2 dereferenceable(1) %scevgep743, i64 %i.fc, i1 false), !tbaa !21
  %6 = sub nsw i64 %i.fa, %i.fc
  %7 = getelementptr i8, ptr %.0485, i64 %6
  %scevgep745 = getelementptr i8, ptr %7, i64 -2
  br label %.preheader671

.preheader671:                                    ; preds = %.lr.ph.preheader, %bb.au
  %.0445.lcssa = phi ptr [ %i.er, %bb.au ], [ %scevgep745, %.lr.ph.preheader ] ; 2 uses
  %.not559683 = icmp ult ptr %.0445.lcssa, %.0485
  br i1 %.not559683, label %._crit_edge, label %.lr.ph685

.lr.ph685:                                        ; preds = %.preheader671, %.lr.ph685
  %.1446684 = phi ptr [ %i.fe, %.lr.ph685 ], [ %.0445.lcssa, %.preheader671 ] ; 2 uses
  store i16 0, ptr %.1446684, align 2, !tbaa !21
  %i.fe = getelementptr inbounds i8, ptr %.1446684, i64 -2 ; 2 uses
  %.not559 = icmp ult ptr %i.fe, %.0485
  br i1 %.not559, label %._crit_edge, label %.lr.ph685, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph685, %.preheader671
  %i.ff = icmp slt i32 %i.cq, 50                  ; 2 uses
  br i1 %i.ff, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge
  %i.fg = sext i32 %i.cq to i64
  %i.fh = getelementptr inbounds i8, ptr @d2utable, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !24
  %i.fj = zext i8 %i.fi to i32
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge
  %i.fk = add nuw nsw i32 %i.cq, 2
  %i.fl = udiv i32 %i.fk, 3
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fm = phi i32 [ %i.fj, %bb.av ], [ %i.fl, %bb.aw ] ; 5 uses
  %i.fn = shl nuw nsw i32 %i.fm, 1
  %.idx564 = zext nneg i32 %i.fn to i64           ; 2 uses
  %.add565 = add nuw nsw i64 %.idx564, 8          ; 2 uses
  %.ptr568 = getelementptr inbounds nuw i8, ptr %2, i64 %.add565
  %i.fo = load i16, ptr %.ptr568, align 2, !tbaa !21 ; 2 uses
  %i.fp = zext i16 %i.fo to i32                   ; 4 uses
  %i.fq = icmp samesign ugt i32 %i.fm, 1          ; 2 uses
  %i.fr = zext i1 %i.fq to i32
  %spec.select599 = add nuw nsw i32 %i.fp, %i.fr
  %i.fs = mul nuw nsw i32 %i.fp, 1000             ; 2 uses
  br i1 %i.fq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %.idx564
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 6
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !21
  %i.fw = zext i16 %i.fv to i32
  %.not560 = icmp ne i32 %i.fm, 2
  %i.fx = zext i1 %.not560 to i32
  %i.fy = or disjoint i32 %i.fs, %i.fx
  %spec.select600 = add nuw nsw i32 %i.fy, %i.fw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0478 = phi i32 [ %i.fs, %bb.ax ], [ %spec.select600, %bb.ay ]
  %i.fz = load i16, ptr %i.er, align 2, !tbaa !21 ; 2 uses
  %i.ga = zext i16 %i.fz to i32                   ; 2 uses
  %i.gb = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 4), align 4, !tbaa !23 ; 2 uses
  %.not561686 = icmp ugt i32 %i.gb, %i.ga
  br i1 %.not561686, label %.preheader670, label %.lr.ph690

.preheader670:                                    ; preds = %.lr.ph690, %bb.az
  %.0452.lcssa = phi i32 [ %i.cs, %bb.az ], [ %i.gc, %.lr.ph690 ] ; 2 uses
  %.not562693 = icmp ugt i32 %i.gb, %i.fp
  br i1 %.not562693, label %._crit_edge697, label %.lr.ph696

.lr.ph690:                                        ; preds = %bb.az, %.lr.ph690
  %.0441688 = phi ptr [ %i.gd, %.lr.ph690 ], [ getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 4), %bb.az ]
  %.0452687 = phi i32 [ %i.gc, %.lr.ph690 ], [ %i.cs, %bb.az ]
  %i.gc = add nsw i32 %.0452687, -1               ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0441688, i64 4 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !23
  %.not561 = icmp ugt i32 %i.ge, %i.ga
  br i1 %.not561, label %.preheader670, label %.lr.ph690, !llvm.loop !66

.lr.ph696:                                        ; preds = %.preheader670, %.lr.ph696
  %.1442695 = phi ptr [ %i.gg, %.lr.ph696 ], [ getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 4), %.preheader670 ]
  %.1453694 = phi i32 [ %i.gf, %.lr.ph696 ], [ %.0452.lcssa, %.preheader670 ]
  %i.gf = add nsw i32 %.1453694, 1                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.1442695, i64 4 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !23
  %.not562 = icmp ugt i32 %i.gh, %i.fp
  br i1 %.not562, label %._crit_edge697, label %.lr.ph696, !llvm.loop !67

._crit_edge697:                                   ; preds = %.lr.ph696, %.preheader670
  %.1453.lcssa = phi i32 [ %.0452.lcssa, %.preheader670 ], [ %i.gf, %.lr.ph696 ] ; 6 uses
  br i1 %.not553, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %._crit_edge697
  br i1 %i.es, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gi = sext i32 %i.cl to i64
  %i.gj = getelementptr inbounds i8, ptr @d2utable, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !24
  %i.gl = zext i8 %i.gk to i32
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.gm = add nuw nsw i32 %i.cl, 2
  %i.gn = udiv i32 %i.gm, 3
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.go = phi i32 [ %i.gl, %bb.bb ], [ %i.gn, %bb.bc ]
  %i.gp = sub nsw i32 %i.eg, %i.go
  %i.gq = mul nsw i32 %i.gp, 3
  %i.gr = icmp slt i32 %.1453.lcssa, 0
  br i1 %i.gr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gs = sub nsw i32 0, %.1453.lcssa
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.gt = urem i32 %.1453.lcssa, 3
  %i.gu = xor i32 %i.gt, 3
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0439 = phi i32 [ %i.gs, %bb.be ], [ %i.gu, %bb.bf ] ; 5 uses
  %i.gv = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %.0485, i32 noundef %i.eg, i32 noundef %.0439) ; 0 uses
  %i.gw = add nsw i32 %.0439, %.1453.lcssa        ; 2 uses
  %i.gx = sub nsw i32 %i.gq, %.0439               ; 2 uses
  %i.gy = icmp samesign ugt i32 %.0439, 2
  br i1 %i.gy, label %.lr.ph702.preheader, label %.loopexit669

.lr.ph702.preheader:                              ; preds = %bb.bg
  %i.gz = shl nuw nsw i64 %i.ep, 1
  %i.ha = add nsw i64 %i.gz, -2
  %i.hb = call i32 @llvm.usub.sat.i32(i32 %.0439, i32 5)
  %i.hc = add nuw i32 %i.hb, 2
  %i.hd = udiv i32 %i.hc, 3
  %i.he = shl nuw nsw i32 %i.hd, 1
  %i.hf = zext nneg i32 %i.he to i64              ; 2 uses
  %i.hg = sub nsw i64 %i.ha, %i.hf
  %scevgep747 = getelementptr i8, ptr %.0485, i64 %i.hg
  %i.hh = add nuw nsw i64 %i.hf, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep747, i8 0, i64 %i.hh, i1 false), !tbaa !21
  br label %.loopexit669

bb.bh:                                            ; preds = %._crit_edge697
  %i.hi = sub nsw i32 %i.cn, %i.cp                ; 2 uses
  %i.hj = icmp ult i16 %i.fz, %i.fo
  br i1 %i.hj, label %bb.bi, label %.loopexit669

bb.bi:                                            ; preds = %bb.bh
  %i.hk = add nuw nsw i32 %i.ee, 1
  %i.hl = add nsw i32 %.1453.lcssa, -3
  br label %.loopexit669

.loopexit669:                                     ; preds = %.lr.ph702.preheader, %bb.bg, %bb.bh, %bb.bi
  %.0469 = phi i32 [ %i.hk, %bb.bi ], [ %i.ef, %bb.bh ], [ %i.eg, %bb.bg ], [ %i.eg, %.lr.ph702.preheader ]
  %.0468 = phi i32 [ 0, %bb.bi ], [ 0, %bb.bh ], [ %i.gx, %bb.bg ], [ %i.gx, %.lr.ph702.preheader ] ; 2 uses
  %.2454 = phi i32 [ %i.hl, %bb.bi ], [ %.1453.lcssa, %bb.bh ], [ %i.gw, %bb.bg ], [ %i.gw, %.lr.ph702.preheader ] ; 2 uses
  %.0451 = phi i32 [ %i.hi, %bb.bi ], [ %i.hi, %bb.bh ], [ 0, %bb.bg ], [ 0, %.lr.ph702.preheader ] ; 4 uses
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %.0507, i64 %i.do
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -2
  %i.ho = and i32 %i.cu, 80
  %.not571 = icmp eq i32 %i.ho, 0                 ; 2 uses
  %i.hp = zext nneg i32 %.0469 to i64
  %i.hq = zext nneg i32 %i.fm to i64
  %i.hr = sub i32 %.0451, %.2454
  br label %bb.bj

bb.bj:                                            ; preds = %bb.by, %.loopexit669
  %indvars.iv751 = phi i32 [ %indvars.iv.next752, %bb.by ], [ %i.hr, %.loopexit669 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.by ], [ %i.hp, %.loopexit669 ] ; 4 uses
  %.0499 = phi ptr [ %.1500, %bb.by ], [ %i.hn, %.loopexit669 ] ; 3 uses
  %.0495 = phi i32 [ %.1496, %bb.by ], [ 0, %.loopexit669 ] ; 3 uses
  %.0486 = phi i32 [ %.3489, %bb.by ], [ 0, %.loopexit669 ] ; 3 uses
  %.0480 = phi ptr [ %.2482.lcssa, %bb.by ], [ %i.er, %.loopexit669 ]
  %.1472 = phi i32 [ %.6477, %bb.by ], [ %spec.select598, %.loopexit669 ]
  %.3455 = phi i32 [ %i.js, %bb.by ], [ %.2454, %.loopexit669 ] ; 6 uses
  %i.hs = sub nsw i64 %indvars.iv, %i.hq          ; 2 uses
  %i.ht = getelementptr inbounds [2 x i8], ptr %.0485, i64 %i.hs ; 2 uses
  %i.hu = trunc nsw i64 %indvars.iv to i32
  %i.hv = trunc nsw i64 %i.hs to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bs, %bb.bj
  %.1481 = phi ptr [ %.0480, %bb.bj ], [ %.2482.lcssa, %bb.bs ] ; 4 uses
  %.2473 = phi i32 [ %.1472, %bb.bj ], [ %.3474.lcssa, %bb.bs ] ; 2 uses
  %.0458 = phi i16 [ 0, %bb.bj ], [ %i.ja, %bb.bs ] ; 4 uses
  %i.hw = load i16, ptr %.1481, align 2, !tbaa !21 ; 2 uses
  %i.hx = icmp eq i16 %i.hw, 0
  %i.hy = icmp ugt ptr %.1481, %.0485
  %i.hz = and i1 %i.hy, %i.hx
  br i1 %i.hz, label %.lr.ph707, label %._crit_edge708

.lr.ph707:                                        ; preds = %bb.bk, %.lr.ph707
  %.3474705 = phi i32 [ %i.ia, %.lr.ph707 ], [ %.2473, %bb.bk ]
  %.2482704 = phi ptr [ %i.ib, %.lr.ph707 ], [ %.1481, %bb.bk ]
  %i.ia = add nsw i32 %.3474705, -1               ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %.2482704, i64 -2 ; 4 uses
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !21 ; 2 uses
  %i.id = icmp eq i16 %i.ic, 0
  %i.ie = icmp ugt ptr %i.ib, %.0485
end_hunk_1
