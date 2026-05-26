inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0_@raxRemove:bb.a
  %i.ck = and i32 %i.cj, 1
  %.not120 = icmp eq i32 %i.ck, 0
  br i1 %.not120, label %bb.s, label %raxStackPop.exit179.thread

bb.s:                                             ; preds = %.lr.ph300
  %i.cl = and i32 %i.cj, 4
  %.not121 = icmp ne i32 %i.cl, 0
  %.mask123 = and i32 %i.cj, -8
  %.not122 = icmp eq i32 %.mask123, 8
  %or.cond163 = or i1 %.not121, %.not122
  br i1 %or.cond163, label %bb.r, label %raxStackPop.exit179.thread

raxStackPop.exit179.thread:                       ; preds = %bb.r, %bb.s, %raxStackPop.exit179, %.lr.ph300, %raxStackPop.exit179.lr.ph, %.preheader
  %.lcssa = phi ptr [ %.promoted223, %.preheader ], [ %.promoted223, %raxStackPop.exit179.lr.ph ], [ %i.ci, %.lr.ph300 ], [ %i.cg, %bb.r ], [ %i.ci, %bb.s ], [ %i.cg, %raxStackPop.exit179 ] ; 8 uses
  %.not119196 = phi i1 [ true, %.preheader ], [ true, %raxStackPop.exit179.lr.ph ], [ false, %.lr.ph300 ], [ true, %bb.r ], [ false, %bb.s ], [ true, %raxStackPop.exit179 ]
  %.0.i178195 = phi ptr [ null, %.preheader ], [ null, %raxStackPop.exit179.lr.ph ], [ %i.cg, %.lr.ph300 ], [ null, %bb.r ], [ %i.cg, %bb.s ], [ null, %raxStackPop.exit179 ] ; 2 uses
  store ptr %.lcssa, ptr %i.c, align 8
  %i.cm = load i32, ptr %.lcssa, align 4          ; 2 uses
  %i.cn = lshr i32 %i.cm, 3                       ; 3 uses
  %.not124238 = icmp eq i32 %i.cn, 0
  br i1 %.not124238, label %.critedge, label %.lr.ph241.preheader

.lr.ph241.preheader:                              ; preds = %raxStackPop.exit179.thread
  %i.co = zext nneg i32 %i.cn to i64
  br label %.lr.ph241

.lr.ph241:                                        ; preds = %.lr.ph241.preheader, %bb.v
  %i.cp = phi i32 [ %i.do, %bb.v ], [ %i.cn, %.lr.ph241.preheader ] ; 2 uses
  %i.cq = phi i32 [ %i.dl, %bb.v ], [ %i.cm, %.lr.ph241.preheader ] ; 4 uses
  %i.cr = phi ptr [ %.cast, %bb.v ], [ %.lcssa, %.lr.ph241.preheader ]
  %.091240 = phi i64 [ %i.dq, %bb.v ], [ %i.co, %.lr.ph241.preheader ] ; 2 uses
  %.095239 = phi i32 [ %i.ds, %bb.v ], [ 1, %.lr.ph241.preheader ] ; 2 uses
  %i.cs = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.ct = xor i32 %i.cp, 3
  %.neg = add nuw nsw i32 %i.ct, 1
  %i.cu = and i32 %.neg, 7
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = and i32 %i.cq, 4
  %.not125 = icmp eq i32 %i.cw, 0
  %i.cx = shl nuw nsw i64 %i.cs, 3
  %spec.select = select i1 %.not125, i64 %i.cx, i64 8
  %i.cy = and i32 %i.cq, 1
  %.not126 = icmp eq i32 %i.cy, 0
  %i.cz = shl i32 %i.cq, 2
  %i.da = and i32 %i.cz, 8
  %i.db = xor i32 %i.da, 8
  %narrow = select i1 %.not126, i32 0, i32 %i.db
  %i.dc = zext nneg i32 %narrow to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %spec.select
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dc
  %i.dh = and i32 %i.cq, 3
  %.not206 = icmp eq i32 %i.dh, 1
  %i.di = select i1 %.not206, i64 -12, i64 -4
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8            ; 2 uses
  store i64 %i.dk, ptr %i.c, align 8
  %.cast = inttoptr i64 %i.dk to ptr              ; 2 uses
  %i.dl = load i32, ptr %.cast, align 4           ; 5 uses
  %i.dm = and i32 %i.dl, 1
  %.not132 = icmp eq i32 %i.dm, 0
  br i1 %.not132, label %bb.t, label %.thread198

bb.t:                                             ; preds = %.lr.ph241
  %i.dn = and i32 %i.dl, 4
  %.not133 = icmp ne i32 %i.dn, 0
  %.mask135 = and i32 %i.dl, -8
  %.not134 = icmp eq i32 %.mask135, 8
  %or.cond164 = or i1 %.not133, %.not134
  br i1 %or.cond164, label %bb.u, label %.thread198

bb.u:                                             ; preds = %bb.t
  %i.do = lshr i32 %i.dl, 3                       ; 3 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = add nuw nsw i64 %.091240, %i.dp         ; 3 uses
  %i.dr = icmp samesign ugt i64 %i.dq, 536870911
  br i1 %i.dr, label %.thread198, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = add nuw nsw i32 %.095239, 1
  %.not124 = icmp eq i32 %i.do, 0
  br i1 %.not124, label %.thread198.thread281, label %.lr.ph241

.thread198:                                       ; preds = %.lr.ph241, %bb.t, %bb.u
  %i.dt = icmp samesign ugt i32 %.095239, 1
  br i1 %i.dt, label %.thread198.thread281, label %.critedge

.thread198.thread281:                             ; preds = %bb.v, %.thread198
  %.091.lcssa.ph284 = phi i64 [ %.091240, %.thread198 ], [ %i.dq, %bb.v ] ; 3 uses
  %i.du = sub nsw i64 4, %.091.lcssa.ph284
  %i.dv = and i64 %i.du, 7
  %i.dw = add nuw nsw i64 %.091.lcssa.ph284, 12
  %i.dx = add nuw nsw i64 %i.dw, %i.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.dy = call ptr @zmalloc_usable(i64 noundef %i.dx, ptr noundef nonnull %i.e) #24 ; 6 uses
  %.not158 = icmp eq ptr %i.dy, null
  br i1 %.not158, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.thread198.thread281
  %i.dz = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %.not.i180 = icmp eq ptr %i.dz, %i.f
  br i1 %.not.i180, label %raxStackFree.exit181.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @zfree(ptr noundef %i.dz) #24
  br label %raxStackFree.exit181.thread

bb.y:                                             ; preds = %.thread198.thread281
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !13 ; 3 uses
  %.not136 = icmp eq ptr %i.eb, null
  br i1 %.not136, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = load i64, ptr %i.e, align 8, !tbaa !16
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !16
  %i.ee = add i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %i.eb, align 8, !tbaa !16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ef = trunc nuw nsw i64 %.091.lcssa.ph284 to i32
  %i.eg = shl nuw i32 %i.ef, 3
  %i.eh = or disjoint i32 %i.eg, 4
  store i32 %i.eh, ptr %i.dy, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !16
  %i.ek = add i64 %i.ej, 1
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !16
  store ptr %.lcssa, ptr %i.c, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %.pre257 = load i32, ptr %.lcssa, align 4
  %i.em = lshr i32 %.pre257, 3                    ; 2 uses
  %.not137314 = icmp eq i32 %i.em, 0
  br i1 %.not137314, label %.thread203, label %.lr.ph317

.lr.ph317:                                        ; preds = %bb.aa, %bb.ac
  %i.en = phi i32 [ %i.fy, %bb.ac ], [ %i.em, %bb.aa ]
  %.394315 = phi i64 [ %i.ev, %bb.ac ], [ 0, %bb.aa ] ; 2 uses
  %i.eo = phi ptr [ %i.fu, %bb.ac ], [ %.lcssa, %bb.aa ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %.394315
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.er = zext nneg i32 %i.en to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ep, ptr nonnull align 4 %i.eq, i64 %i.er, i1 false)
  %i.es = load i32, ptr %i.eo, align 4            ; 5 uses
  %i.et = lshr i32 %i.es, 3                       ; 2 uses
  %i.eu = zext nneg i32 %i.et to i64              ; 3 uses
  %i.ev = add i64 %.394315, %i.eu
  %i.ew = xor i32 %i.et, 3
  %.neg138 = add nuw nsw i32 %i.ew, 1
  %i.ex = and i32 %.neg138, 7
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = and i32 %i.es, 4
  %.not139 = icmp eq i32 %i.ez, 0
  %i.fa = shl nuw nsw i64 %i.eu, 3
  %spec.select165 = select i1 %.not139, i64 %i.fa, i64 8
  %i.fb = and i32 %i.es, 1
  %.not140 = icmp eq i32 %i.fb, 0
  %i.fc = shl i32 %i.es, 2
  %i.fd = and i32 %i.fc, 8
  %i.fe = xor i32 %i.fd, 8
  %narrow207 = select i1 %.not140, i32 0, i32 %i.fe
  %i.ff = zext nneg i32 %narrow207 to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eu
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ey
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %spec.select165
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.ff
  %i.fk = and i32 %i.es, 3
  %.not208 = icmp eq i32 %i.fk, 1
  %i.fl = select i1 %.not208, i64 -12, i64 -4
  %i.fm = getelementptr inbounds i8, ptr %i.fj, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8
  store i64 %i.fn, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @zfree_usable(ptr noundef nonnull %i.eo, ptr noundef nonnull %i.a) #24
  %i.fo = load ptr, ptr %i.ea, align 8, !tbaa !13 ; 3 uses
  %.not.i182 = icmp eq ptr %i.fo, null
  br i1 %.not.i182, label %raxFreeNode.exit183, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph317
  %i.fp = load i64, ptr %i.a, align 8, !tbaa !16
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !16
  %i.fr = sub i64 %i.fq, %i.fp
  store i64 %i.fr, ptr %i.fo, align 8, !tbaa !16
  br label %raxFreeNode.exit183

raxFreeNode.exit183:                              ; preds = %.lr.ph317, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.fs = load i64, ptr %i.ei, align 8, !tbaa !16
  %i.ft = add i64 %i.fs, -1
  store i64 %i.ft, ptr %i.ei, align 8, !tbaa !16
  %i.fu = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.fv = load i32, ptr %i.fu, align 4            ; 4 uses
  %i.fw = and i32 %i.fv, 1
  %.not146 = icmp eq i32 %i.fw, 0
  br i1 %.not146, label %bb.ac, label %.thread203

bb.ac:                                            ; preds = %raxFreeNode.exit183
  %i.fx = and i32 %i.fv, 4
  %.not147 = icmp eq i32 %i.fx, 0
  %.mask149 = and i32 %i.fv, -8
  %.not148 = icmp ne i32 %.mask149, 8
  %or.cond166.not323 = and i1 %.not147, %.not148
  %i.fy = lshr i32 %i.fv, 3                       ; 2 uses
  %.not137 = icmp eq i32 %i.fy, 0
  %or.cond322 = or i1 %or.cond166.not323, %.not137
  br i1 %or.cond322, label %.thread203, label %.lr.ph317

.thread203:                                       ; preds = %raxFreeNode.exit183, %bb.ac, %bb.aa
  %.in = phi ptr [ %.lcssa, %bb.aa ], [ %i.fu, %bb.ac ], [ %i.fu, %raxFreeNode.exit183 ]
  %i.fz = ptrtoint ptr %.in to i64
  %i.ga = load i32, ptr %i.dy, align 4            ; 5 uses
  %i.gb = lshr i32 %i.ga, 3                       ; 2 uses
  %i.gc = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gd = xor i32 %i.gb, 3
  %.neg150 = add nuw nsw i32 %i.gd, 1
  %i.ge = and i32 %.neg150, 7
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = and i32 %i.ga, 4
  %.not151 = icmp eq i32 %i.gg, 0
  %i.gh = shl nuw nsw i64 %i.gc, 3
  %spec.select168 = select i1 %.not151, i64 %i.gh, i64 8
  %i.gi = and i32 %i.ga, 1
  %.not152 = icmp eq i32 %i.gi, 0
  %i.gj = shl i32 %i.ga, 2
  %i.gk = and i32 %i.gj, 8
  %i.gl = xor i32 %i.gk, 8
  %narrow209 = select i1 %.not152, i32 0, i32 %i.gl
  %i.gm = zext nneg i32 %narrow209 to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.gc
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gf
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %spec.select168
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gm
  %i.gr = and i32 %i.ga, 3
  %.not210 = icmp eq i32 %i.gr, 1
  %i.gs = select i1 %.not210, i64 -12, i64 -4
  %i.gt = getelementptr inbounds i8, ptr %i.gq, i64 %i.gs
  store i64 %i.fz, ptr %i.gt, align 8
  br i1 %.not119196, label %raxStackFree.exit181, label %bb.ad

bb.ad:                                            ; preds = %.thread203
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i178195, i64 4
  %i.gv = load i32, ptr %.0.i178195, align 4
  %i.gw = lshr i32 %i.gv, 3                       ; 2 uses
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gx
  %i.gz = xor i32 %i.gw, 3
  %.neg.i184 = add nuw nsw i32 %i.gz, 1
  %i.ha = and i32 %.neg.i184, 7
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hb
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %.0.i185 = phi ptr [ %i.hc, %bb.ad ], [ %i.he, %bb.ae ] ; 3 uses
  %.0.copyload.i186 = load ptr, ptr %.0.i185, align 8
  %i.hd = icmp eq ptr %.0.copyload.i186, %.lcssa
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i185, i64 8
  br i1 %i.hd, label %raxStackFree.exit181, label %bb.ae

raxStackFree.exit181.thread:                      ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %raxStackFree.exit

raxStackFree.exit181:                             ; preds = %bb.ae, %.thread203
  %.0.i185.lcssa.sink = phi ptr [ %0, %.thread203 ], [ %.0.i185, %bb.ae ]
  store ptr %i.dy, ptr %.0.i185.lcssa.sink, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.critedge

.critedge:                                        ; preds = %.preheader211, %raxStackPop.exit179.thread, %bb.p, %bb.h, %raxStackFree.exit181, %.thread198, %bb.q
  %i.hf = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %.not.i188 = icmp eq ptr %i.hf, %i.f
  br i1 %.not.i188, label %raxStackFree.exit, label %bb.af

bb.af:                                            ; preds = %.critedge
  call void @zfree(ptr noundef %i.hf) #24
  br label %raxStackFree.exit

raxStackFree.exit:                                ; preds = %bb.af, %.critedge, %raxStackFree.exit181.thread, %bb.d, %bb.c
  %.4 = phi i32 [ 0, %bb.d ], [ 1, %raxStackFree.exit181.thread ], [ 0, %bb.c ], [ 1, %.critedge ], [ 1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxInsert(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @raxGenericInsert(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxTryInsert(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @raxGenericInsert(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @raxFind(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #9 {
bb.a:
  %.098.i = load ptr, ptr %0, align 8             ; 3 uses
  %i.a = load i32, ptr %.098.i, align 4           ; 3 uses
  %i.b = icmp ugt i32 %i.a, 7
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.c, %i.b
  br i1 %i.d, label %.lr.ph103.i, label %.thread.i

.lr.ph103.i:                                      ; preds = %bb.a, %bb.f
  %i.e = phi i32 [ %i.ah, %bb.f ], [ %i.a, %bb.a ] ; 5 uses
  %.0101.i = phi ptr [ %.0.i, %bb.f ], [ %.098.i, %bb.a ] ; 4 uses
  %.05899.i = phi i64 [ %.260.i, %bb.f ], [ 0, %bb.a ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0101.i, i64 4 ; 3 uses
  %i.g = and i32 %i.e, 4
  %.not.i = icmp eq i32 %i.g, 0
  %i.h = lshr i32 %i.e, 3                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64                ; 6 uses
  br i1 %.not.i, label %.lr.ph91.i, label %.preheader80.i

.preheader80.i:                                   ; preds = %.lr.ph103.i
  %i.j = icmp ult i64 %.05899.i, %2
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

.lr.ph91.i:                                       ; preds = %.lr.ph103.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.05899.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21
  br label %bb.c

.lr.ph.i:                                         ; preds = %.preheader80.i, %bb.b
  %.15683.i = phi i64 [ %i.q, %bb.b ], [ 0, %.preheader80.i ] ; 3 uses
  %.15982.i = phi i64 [ %i.r, %bb.b ], [ %.05899.i, %.preheader80.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %.15683.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.15982.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %.not68.i = icmp eq i8 %i.n, %i.p
  br i1 %.not68.i, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = add nuw nsw i64 %.15683.i, 1             ; 3 uses
  %i.r = add nuw i64 %.15982.i, 1                 ; 3 uses
  %i.s = icmp samesign ult i64 %i.q, %i.i
  %i.t = icmp ult i64 %i.r, %2
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !27

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i, %.preheader80.i
  %.159.lcssa.i = phi i64 [ %.05899.i, %.preheader80.i ], [ %i.r, %bb.b ], [ %.15982.i, %.lr.ph.i ] ; 2 uses
  %.156.lcssa.i = phi i64 [ 0, %.preheader80.i ], [ %i.q, %bb.b ], [ %.15683.i, %.lr.ph.i ] ; 2 uses
  %.not69.i = icmp eq i64 %.156.lcssa.i, %i.i
  br i1 %.not69.i, label %bb.f, label %.thread.loopexit.i.loopexit22

bb.c:                                             ; preds = %bb.d, %.lr.ph91.i
  %.25790.i = phi i64 [ 0, %.lr.ph91.i ], [ %i.y, %bb.d ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %.25790.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21
  %i.x = icmp eq i8 %i.w, %i.l
  br i1 %i.x, label %._crit_edge92.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = add nuw nsw i64 %.25790.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %i.i
  br i1 %exitcond.not.i, label %.thread.i, label %bb.c, !llvm.loop !28

._crit_edge92.i:                                  ; preds = %bb.c
  %i.z = icmp eq i64 %.25790.i, %i.i
  br i1 %i.z, label %.thread.loopexit.i.loopexit22, label %bb.e

bb.e:                                             ; preds = %._crit_edge92.i
  %i.aa = add i64 %.05899.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %spec.select.i = phi i64 [ 0, %._crit_edge.i ], [ %.25790.i, %bb.e ]
  %.260.i = phi i64 [ %.159.lcssa.i, %._crit_edge.i ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.ac = xor i32 %i.h, 3
  %.neg.i = add nuw nsw i32 %i.ac, 1
  %i.ad = and i32 %.neg.i, 7
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %spec.select.i
  %.0.i = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ah = load i32, ptr %.0.i, align 4            ; 3 uses
  %i.ai = icmp ugt i32 %i.ah, 7
  %i.aj = icmp ult i64 %.260.i, %2
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %.lr.ph103.i, label %.thread.loopexit.i.loopexit22

.thread.loopexit.i.loopexit22:                    ; preds = %._crit_edge.i, %._crit_edge92.i, %bb.f
  %i.al = phi i32 [ %i.e, %._crit_edge92.i ], [ %i.e, %._crit_edge.i ], [ %i.ah, %bb.f ]
  %.0.lcssa.ph.i.ph = phi ptr [ %.0101.i, %._crit_edge92.i ], [ %.0101.i, %._crit_edge.i ], [ %.0.i, %bb.f ]
  %.462.ph.i.ph = phi i64 [ %.05899.i, %._crit_edge92.i ], [ %.159.lcssa.i, %._crit_edge.i ], [ %.260.i, %bb.f ]
  %.6.ph.i.ph = phi i64 [ %i.i, %._crit_edge92.i ], [ %.156.lcssa.i, %._crit_edge.i ], [ 0, %bb.f ]
  %i.am = icmp ne i64 %.6.ph.i.ph, 0
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %.thread.loopexit.i.loopexit22, %bb.a
  %i.an = phi i32 [ %i.a, %bb.a ], [ %i.al, %.thread.loopexit.i.loopexit22 ], [ %i.e, %bb.d ] ; 4 uses
  %.0.lcssa.i = phi ptr [ %.098.i, %bb.a ], [ %.0.lcssa.ph.i.ph, %.thread.loopexit.i.loopexit22 ], [ %.0101.i, %bb.d ]
  %.462.i = phi i64 [ 0, %bb.a ], [ %.462.ph.i.ph, %.thread.loopexit.i.loopexit22 ], [ %.05899.i, %bb.d ]
  %.6.i = phi i1 [ false, %bb.a ], [ %i.am, %.thread.loopexit.i.loopexit22 ], [ true, %bb.d ]
  %i.ao = and i32 %i.an, 4                        ; 2 uses
  %.not74.i.not = icmp eq i32 %i.ao, 0
end_hunk_0
begin_hunk_1_@raxFind:bb.a
raxGetData.exit:                                  ; preds = %bb.i, %bb.j
  %.0.i13 = phi ptr [ %.0.copyload.i, %bb.j ], [ null, %bb.i ]
  store ptr %.0.i13, ptr %3, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %raxGetData.exit, %.thread.i, %bb.g
  %.0 = phi i32 [ 0, %.thread.i ], [ 0, %bb.g ], [ 1, %raxGetData.exit ], [ 1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @raxFindParentLink(ptr noundef readonly captures(ret: address, provenance) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %0, align 4
  %i.c = lshr i32 %i.b, 3                         ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = xor i32 %i.c, 3
  %.neg = add nuw nsw i32 %i.f, 1
  %i.g = and i32 %.neg, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.i, %bb.a ], [ %i.k, %bb.b ]  ; 3 uses
  %.0.copyload = load ptr, ptr %.0, align 8
  %i.j = icmp eq ptr %.0.copyload, %1
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 8
  br i1 %i.j, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @raxRemoveChild(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readnone captures(address) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load i32, ptr %1, align 4                ; 5 uses
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 1
  %.not69 = icmp eq i32 %i.e, 0
  br i1 %.not69, label %raxGetData.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.c, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %raxSetData.exit

raxGetData.exit:                                  ; preds = %bb.b
  store i32 0, ptr %1, align 4
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i32 %i.c, 3                         ; 2 uses
  %i.h = zext nneg i32 %i.g to i64
  %i.i = xor i32 %i.g, 3
  %.neg.i = add nuw nsw i32 %i.i, 1
  %i.j = and i32 %.neg.i, 7
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.0.copyload.i = load ptr, ptr %i.n, align 8    ; 2 uses
  %.not.i71 = icmp eq ptr %.0.copyload.i, null
  br i1 %.not.i71, label %raxSetData.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.copyload.i, ptr %i.o, align 8
  br label %raxSetData.exit

raxSetData.exit:                                  ; preds = %bb.c, %bb.d, %bb.e
  %.sink.i = phi i32 [ 1, %bb.e ], [ 3, %bb.d ], [ 3, %bb.c ]
  store i32 %.sink.i, ptr %1, align 4
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.q = lshr i32 %i.c, 3                         ; 3 uses
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = xor i32 %i.q, 3
  %.neg = add nuw nsw i32 %i.t, 1
  %i.u = and i32 %.neg, 7
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.056 = phi ptr [ %i.p, %bb.f ], [ %i.z, %bb.g ] ; 3 uses
  %.055 = phi ptr [ %i.w, %bb.f ], [ %i.y, %bb.g ] ; 3 uses
  %.0.copyload = load ptr, ptr %.055, align 8
  %i.x = icmp eq ptr %.0.copyload, %2
  %i.y = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.056, i64 1 ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %.056 to i64
  %i.ab = ptrtoint ptr %i.p to i64
  %.neg59 = sub i64 %i.ab, %i.aa
  %i.ac = trunc i64 %.neg59 to i32
  %i.ad = add i32 %i.q, %i.ac                     ; 2 uses
  %i.ae = add i32 %i.ad, -1
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.056, ptr nonnull align 1 %i.z, i64 %i.af, i1 false)
  %i.ag = load i32, ptr %1, align 4               ; 3 uses
  %i.ah = and i32 %i.ag, 56
  %i.ai = icmp eq i32 %i.ah, 40                   ; 2 uses
  %.neg63 = select i1 %i.ai, i64 -8, i64 0
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = lshr i32 %i.ag, 3
  %i.ak = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.al = sub i32 %i.aj, %i.ad
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 8 %i.w, i64 %i.an, i1 false)
  %.pre = load i32, ptr %1, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = phi i32 [ %.pre, %bb.i ], [ %i.ag, %bb.h ]
  %i.ap = and i32 %i.ao, 3
  %.not79 = icmp eq i32 %i.ap, 1
  %i.aq = select i1 %.not79, i64 8, i64 0
  %i.ar = getelementptr inbounds i8, ptr %.055, i64 %.neg63
  %i.as = shl nsw i64 %i.af, 3
  %i.at = add nsw i64 %i.aq, %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 8 %i.y, i64 %i.at, i1 false)
  %i.au = load i32, ptr %1, align 4               ; 4 uses
  %i.av = add i32 %i.au, -8                       ; 2 uses
  store i32 %i.av, ptr %1, align 4
  %i.aw = lshr i32 %i.av, 3                       ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 4
  %i.az = xor i32 %i.aw, 3
  %.neg64 = add nuw nsw i32 %i.az, 1
  %i.ba = and i32 %.neg64, 7
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = and i32 %i.au, 4
  %.not65 = icmp eq i32 %i.bc, 0
  %i.bd = shl nuw nsw i64 %i.ax, 3
  %i.be = select i1 %.not65, i64 %i.bd, i64 8
  %i.bf = and i32 %i.au, 1
  %.not66 = icmp eq i32 %i.bf, 0
  %i.bg = shl i32 %i.au, 2
  %i.bh = and i32 %i.bg, 8
  %i.bi = xor i32 %i.bh, 8
  %narrow = select i1 %.not66, i32 0, i32 %i.bi
  %i.bj = zext nneg i32 %narrow to i64
  %i.bk = add nuw nsw i64 %i.ay, %i.be
  %i.bl = add nuw nsw i64 %i.bk, %i.bj
  %i.bm = add nuw nsw i64 %i.bl, %i.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.bn = call ptr @zrealloc_usable(ptr noundef nonnull %1, i64 noundef %i.bm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #24 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %raxNodeRealloc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !13 ; 4 uses
  %.not.i74 = icmp eq ptr %i.bq, null
  br i1 %.not.i74, label %raxNodeRealloc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load i64, ptr %i.b, align 8, !tbaa !16
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !16
  %i.bt = sub i64 %i.bs, %i.br                    ; 2 uses
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !16
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !16
  %i.bv = add i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.bq, align 8, !tbaa !16
  br label %raxNodeRealloc.exit

raxNodeRealloc.exit:                              ; preds = %bb.j, %bb.k, %bb.l
  %i.bw = phi ptr [ %1, %bb.j ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.m

bb.m:                                             ; preds = %raxGetData.exit, %raxSetData.exit, %raxNodeRealloc.exit
  %.0 = phi ptr [ %i.bw, %raxNodeRealloc.exit ], [ %1, %raxSetData.exit ], [ %1, %raxGetData.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @raxRecursiveFree(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i32, ptr %1, align 4                ; 5 uses
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = lshr i32 %i.b, 3                         ; 3 uses
  %spec.select = select i1 %.not, i32 %i.d, i32 1 ; 2 uses
  %.not3339 = icmp eq i32 %spec.select, 0
  br i1 %.not3339, label %select.unfold._crit_edge, label %select.unfold.preheader

select.unfold.preheader:                          ; preds = %bb.a
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = xor i32 %i.d, 3
  %.neg = add nuw nsw i32 %i.g, 1
  %i.h = and i32 %.neg, 7
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = shl nuw nsw i64 %i.e, 3
  %i.l = select i1 %.not, i64 %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = and i32 %i.b, 1
  %.not27 = icmp eq i32 %i.n, 0
  %i.o = shl i32 %i.b, 2
  %i.p = and i32 %i.o, 8
  %i.q = xor i32 %i.p, 8
  %narrow = select i1 %.not27, i32 0, i32 %i.q
  %i.r = zext nneg i32 %narrow to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = and i32 %i.b, 3
  %.not38 = icmp eq i32 %i.t, 1
  %i.u = select i1 %.not38, i64 -12, i64 -4
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.preheader, %select.unfold
  %.041 = phi i32 [ %i.w, %select.unfold ], [ %spec.select, %select.unfold.preheader ]
  %.02440 = phi ptr [ %i.x, %select.unfold ], [ %i.v, %select.unfold.preheader ] ; 2 uses
  %i.w = add nsw i32 %.041, -1                    ; 2 uses
  %.0.copyload = load ptr, ptr %.02440, align 8
  tail call void @raxRecursiveFree(ptr noundef %0, ptr noundef %.0.copyload, ptr noundef %2)
  %i.x = getelementptr inbounds i8, ptr %.02440, i64 -8
  %.not33 = icmp eq i32 %i.w, 0
  br i1 %.not33, label %select.unfold._crit_edge, label %select.unfold, !llvm.loop !37

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.a
  %.not34 = icmp eq ptr %2, null
  br i1 %.not34, label %bb.c, label %bb.b

bb.b:                                             ; preds = %select.unfold._crit_edge
  %i.y = load i32, ptr %1, align 4                ; 3 uses
  %i.z = and i32 %i.y, 3
  %or.cond = icmp eq i32 %i.z, 1
  br i1 %or.cond, label %raxGetData.exit, label %bb.c

raxGetData.exit:                                  ; preds = %bb.b
  %i.aa = lshr i32 %i.y, 3                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = xor i32 %i.aa, 3
  %.neg.i = add nuw nsw i32 %i.ac, 1
  %i.ad = and i32 %.neg.i, 7
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = and i32 %i.y, 4
  %.not11.i = icmp eq i32 %i.af, 0
  %i.ag = shl nuw nsw i64 %i.ab, 3
  %spec.select.i = select i1 %.not11.i, i64 %i.ag, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %spec.select.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.0.copyload.i = load ptr, ptr %i.ak, align 8
  tail call void %2(ptr noundef %.0.copyload.i) #24
  br label %bb.c

bb.c:                                             ; preds = %raxGetData.exit, %bb.b, %select.unfold._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @zfree_usable(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !13 ; 3 uses
  %.not.i37 = icmp eq ptr %i.am, null
  br i1 %.not.i37, label %raxFreeNode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !16
  %i.ap = sub i64 %i.ao, %i.an
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !16
  br label %raxFreeNode.exit

raxFreeNode.exit:                                 ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @raxRecursiveFreeWithCtx(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i32, ptr %1, align 4                ; 5 uses
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = lshr i32 %i.b, 3                         ; 3 uses
  %spec.select = select i1 %.not, i32 %i.d, i32 1 ; 2 uses
  %.not3541 = icmp eq i32 %spec.select, 0
  br i1 %.not3541, label %select.unfold._crit_edge, label %select.unfold.preheader

select.unfold.preheader:                          ; preds = %bb.a
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = xor i32 %i.d, 3
  %.neg = add nuw nsw i32 %i.g, 1
  %i.h = and i32 %.neg, 7
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = shl nuw nsw i64 %i.e, 3
  %i.l = select i1 %.not, i64 %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = and i32 %i.b, 1
  %.not29 = icmp eq i32 %i.n, 0
  %i.o = shl i32 %i.b, 2
  %i.p = and i32 %i.o, 8
  %i.q = xor i32 %i.p, 8
  %narrow = select i1 %.not29, i32 0, i32 %i.q
  %i.r = zext nneg i32 %narrow to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = and i32 %i.b, 3
  %.not40 = icmp eq i32 %i.t, 1
  %i.u = select i1 %.not40, i64 -12, i64 -4
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.preheader, %select.unfold
  %.043 = phi i32 [ %i.w, %select.unfold ], [ %spec.select, %select.unfold.preheader ]
  %.02642 = phi ptr [ %i.x, %select.unfold ], [ %i.v, %select.unfold.preheader ] ; 2 uses
  %i.w = add nsw i32 %.043, -1                    ; 2 uses
  %.0.copyload = load ptr, ptr %.02642, align 8
  tail call void @raxRecursiveFreeWithCtx(ptr noundef %0, ptr noundef %.0.copyload, ptr noundef %2, ptr noundef %3)
  %i.x = getelementptr inbounds i8, ptr %.02642, i64 -8
  %.not35 = icmp eq i32 %i.w, 0
  br i1 %.not35, label %select.unfold._crit_edge, label %select.unfold, !llvm.loop !38

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.a
  %.not36 = icmp eq ptr %2, null
  br i1 %.not36, label %bb.c, label %bb.b

bb.b:                                             ; preds = %select.unfold._crit_edge
  %i.y = load i32, ptr %1, align 4                ; 3 uses
  %i.z = and i32 %i.y, 3
  %or.cond = icmp eq i32 %i.z, 1
  br i1 %or.cond, label %raxGetData.exit, label %bb.c

raxGetData.exit:                                  ; preds = %bb.b
  %i.aa = lshr i32 %i.y, 3                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = xor i32 %i.aa, 3
  %.neg.i = add nuw nsw i32 %i.ac, 1
  %i.ad = and i32 %.neg.i, 7
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = and i32 %i.y, 4
  %.not11.i = icmp eq i32 %i.af, 0
  %i.ag = shl nuw nsw i64 %i.ab, 3
  %spec.select.i = select i1 %.not11.i, i64 %i.ag, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %spec.select.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.0.copyload.i = load ptr, ptr %i.ak, align 8
  tail call void %2(ptr noundef %.0.copyload.i, ptr noundef %3) #24
  br label %bb.c

bb.c:                                             ; preds = %raxGetData.exit, %bb.b, %select.unfold._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @zfree_usable(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !13 ; 3 uses
  %.not.i39 = icmp eq ptr %i.am, null
  br i1 %.not.i39, label %raxFreeNode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !16
  %i.ap = sub i64 %i.ao, %i.an
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !16
  br label %raxFreeNode.exit

raxFreeNode.exit:                                 ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @raxFreeWithCallback(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @raxRecursiveFree(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1280) #24
  tail call void @abort() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @zfree_usable(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #24
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !tbaa !16
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = sub i64 %i.i, %i.h
  store i64 %i.j, ptr %i.g, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @raxFreeWithCbAndContext(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @raxRecursiveFreeWithCtx(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef %1, ptr noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1292) #24
  tail call void @abort() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @zfree_usable(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #24
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !tbaa !16
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = sub i64 %i.i, %i.h
  store i64 %i.j, ptr %i.g, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @raxFree(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @raxRecursiveFree(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef null)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1280) #24
  tail call void @abort() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @zfree_usable(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #24
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %raxFreeWithCallback.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !tbaa !16
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = sub i64 %i.i, %i.h
  store i64 %i.j, ptr %i.g, align 8, !tbaa !16
  br label %raxFreeWithCallback.exit

raxFreeWithCallback.exit:                         ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @raxStart(ptr noundef initializes((0, 4), (8, 16), (32, 40)) %0, ptr noundef %1) local_unnamed_addr #11 {
bb.a:
  store i32 2, ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 128, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.f, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr %i.h, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 32, ptr %i.k, align 8, !tbaa !33
end_hunk_1
