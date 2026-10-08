Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/shape?download=true
inline.NumInlined: 200
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@b2CreateChain:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false), !tbaa.struct !134
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.f
  store i32 %i.j, ptr %i.aj, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @b2DefaultShapeDef(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeDef) align 8 %2) #9
  %i.bd = load ptr, ptr %1, align 8, !tbaa !193
  store ptr %i.bd, ptr %2, align 8, !tbaa !135
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !tbaa.struct !136
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !194, !range !77, !noundef !78
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 74
  store i8 %i.bh, ptr %i.bi, align 2, !tbaa !137
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 75
  store i8 0, ptr %i.bj, align 1, !tbaa !138
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i8 0, ptr %i.bk, align 4, !tbaa !139
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !195 ; 9 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !196 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !197, !range !77, !noundef !78
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.h, label %bb.j

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.bs = load ptr, ptr %i.ax, align 8, !tbaa !192
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load ptr, ptr %i.av, align 8, !tbaa !133
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !tbaa.struct !134
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bw = load ptr, ptr %i.ax, align 8, !tbaa !192
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %indvars.iv.next
  %i.by = load ptr, ptr %i.av, align 8, !tbaa !133
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false), !tbaa.struct !134
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !183

bb.h:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 %i.bo, ptr %i.ca, align 4, !tbaa !140
  %i.cb = sext i32 %i.bo to i64                   ; 2 uses
  %i.cc = shl nsw i64 %i.cb, 2
  %i.cd = call ptr @b2Alloc(i64 noundef %i.cc) #9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 4 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.cf = add nsw i32 %i.bo, -1                   ; 3 uses
  %i.cg = add i32 %i.bo, -2                       ; 3 uses
  %i.ch = icmp sgt i32 %i.bo, 2
  br i1 %i.ch, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.j, ptr %i.ck, align 8, !tbaa !91
  %i.cl = icmp eq i32 %.fr186, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %wide.trip.count202 = zext nneg i32 %i.cg to i64
  %i.co = zext nneg i32 %i.cf to i64
  br label %bb.i

._crit_edge185:                                   ; preds = %bb.i, %bb.h
  %i.cp = getelementptr [8 x i8], ptr %i.bm, i64 %i.cb
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 4, !tbaa !68
  store i64 %i.cr, ptr %3, align 8, !tbaa !68
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ct = sext i32 %i.cg to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ct ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 4, !tbaa !68
  store i64 %i.cv, ptr %i.cs, align 8, !tbaa !68
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cx = sext i32 %i.cf to i64                   ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cx ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 4, !tbaa !68
  store i64 %i.cz, ptr %i.cw, align 8, !tbaa !68
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.db = load i64, ptr %i.bm, align 4, !tbaa !68
  store i64 %i.db, ptr %i.da, align 8, !tbaa !68
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 %i.j, ptr %i.dc, align 8, !tbaa !91
  %i.dd = icmp eq i32 %.fr186, 1                  ; 2 uses
  %i.de = select i1 %i.dd, i32 0, i32 %i.cg
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !192
  %i.di = sext i32 %i.de to i64
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.dh, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i64 32, i1 false), !tbaa.struct !134
  %i.dk = call fastcc ptr @b2CreateShapeInternal(ptr noundef %i.c, ptr noundef nonnull %i.e, <2 x float> %i.g, <2 x float> %i.h, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 4)
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !82
  %i.dm = load ptr, ptr %i.ce, align 8, !tbaa !141
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.ct
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !70
  %i.do = load i64, ptr %i.cu, align 4, !tbaa !68
  store i64 %i.do, ptr %3, align 8, !tbaa !68
  %i.dp = load i64, ptr %i.cy, align 4, !tbaa !68
  store i64 %i.dp, ptr %i.cs, align 8, !tbaa !68
  %i.dq = load <2 x i64>, ptr %i.bm, align 4, !tbaa !68
  store <2 x i64> %i.dq, ptr %i.cw, align 8, !tbaa !68
  store i32 %i.j, ptr %i.dc, align 8, !tbaa !91
  %i.dr = select i1 %i.dd, i32 0, i32 %i.cf
  %i.ds = load ptr, ptr %i.dg, align 8, !tbaa !192
  %i.dt = sext i32 %i.dr to i64
  %i.du = getelementptr inbounds [32 x i8], ptr %i.ds, i64 %i.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %i.du, i64 32, i1 false), !tbaa.struct !134
  %i.dv = call fastcc ptr @b2CreateShapeInternal(ptr noundef %i.c, ptr noundef nonnull %i.e, <2 x float> %i.g, <2 x float> %i.h, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 4)
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !82
  %i.dx = load ptr, ptr %i.ce, align 8, !tbaa !141
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.cx
  store i32 %i.dw, ptr %i.dy, align 4, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph184, %bb.i
  %indvars.iv199 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next200, %bb.i ] ; 5 uses
  %.0168181 = phi i64 [ %i.co, %.lr.ph184 ], [ %indvars.iv199, %bb.i ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.0168181
  %i.ea = load i64, ptr %i.dz, align 4, !tbaa !68
  store i64 %i.ea, ptr %3, align 8, !tbaa !68
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv199 ; 2 uses
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %i.ec = load <2 x i64>, ptr %i.eb, align 4, !tbaa !68
  store <2 x i64> %i.ec, ptr %i.ci, align 8, !tbaa !68
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ee = load i64, ptr %i.ed, align 4, !tbaa !68
  store i64 %i.ee, ptr %i.cj, align 8, !tbaa !68
  %i.ef = load ptr, ptr %i.cn, align 8, !tbaa !192
  %i.eg = and i64 %indvars.iv199, 4294967295
  %i.eh = select i1 %i.cl, i64 0, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i64 32, i1 false), !tbaa.struct !134
  %i.ej = call fastcc ptr @b2CreateShapeInternal(ptr noundef %i.c, ptr noundef nonnull %i.e, <2 x float> %i.g, <2 x float> %i.h, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 4)
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !82
  %i.el = load ptr, ptr %i.ce, align 8, !tbaa !141
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv199
  store i32 %i.ek, ptr %i.em, align 4, !tbaa !70
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %._crit_edge185, label %bb.i, !llvm.loop !184

bb.j:                                             ; preds = %._crit_edge
  %i.en = add nsw i32 %i.bo, -3                   ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !140
  %i.ep = sext i32 %i.en to i64
  %i.eq = shl nsw i64 %i.ep, 2
  %i.er = call ptr @b2Alloc(i64 noundef %i.eq) #9
  %i.es = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  store ptr %i.er, ptr %i.es, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.et = icmp sgt i32 %i.bo, 3
  br i1 %i.et, label %.lr.ph179, label %._crit_edge180

.lr.ph179:                                        ; preds = %bb.j
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.j, ptr %i.ev, align 16, !tbaa !91
  %i.ew = icmp eq i32 %.fr186, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %wide.trip.count197 = zext nneg i32 %i.en to i64 ; 2 uses
  br i1 %i.ew, label %.lr.ph179.split.us, label %.lr.ph179.split

.lr.ph179.split.us:                               ; preds = %.lr.ph179, %.lr.ph179.split.us
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %.lr.ph179.split.us ], [ 0, %.lr.ph179 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv194 ; 2 uses
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.fa = load <2 x i64>, ptr %i.ez, align 4, !tbaa !68
  store <2 x i64> %i.fa, ptr %4, align 16, !tbaa !68
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fc = load <2 x i64>, ptr %i.fb, align 4, !tbaa !68
  store <2 x i64> %i.fc, ptr %i.eu, align 16, !tbaa !68
  %i.fd = load ptr, ptr %i.ey, align 8, !tbaa !192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef nonnull align 8 dereferenceable(32) %i.fd, i64 32, i1 false), !tbaa.struct !134
  %i.fe = call fastcc ptr @b2CreateShapeInternal(ptr noundef %i.c, ptr noundef nonnull %i.e, <2 x float> %i.g, <2 x float> %i.h, ptr noundef nonnull %2, ptr noundef nonnull %4, i32 noundef 4)
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !82
  %i.fg = load ptr, ptr %i.es, align 8, !tbaa !141
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv194
  store i32 %i.ff, ptr %i.fh, align 4, !tbaa !70
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %._crit_edge180, label %.lr.ph179.split.us, !llvm.loop !185

._crit_edge180:                                   ; preds = %.lr.ph179.split, %.lr.ph179.split.us, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.k

.lr.ph179.split:                                  ; preds = %.lr.ph179, %.lr.ph179.split
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %.lr.ph179.split ], [ 0, %.lr.ph179 ] ; 4 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv189 ; 2 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.fj = load <2 x i64>, ptr %i.fi, align 4, !tbaa !68
  store <2 x i64> %i.fj, ptr %4, align 16, !tbaa !68
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fl = load <2 x i64>, ptr %i.fk, align 4, !tbaa !68
  store <2 x i64> %i.fl, ptr %i.eu, align 16, !tbaa !68
  %i.fm = load ptr, ptr %i.ey, align 8, !tbaa !192
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %indvars.iv189
  %6 = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !134
  %i.fo = call fastcc ptr @b2CreateShapeInternal(ptr noundef %i.c, ptr noundef nonnull %i.e, <2 x float> %i.g, <2 x float> %i.h, ptr noundef nonnull %2, ptr noundef nonnull %4, i32 noundef 4)
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !82
  %i.fq = load ptr, ptr %i.es, align 8, !tbaa !141
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv189
  store i32 %i.fp, ptr %i.fr, align 4, !tbaa !70
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count197
  br i1 %exitcond193.not, label %._crit_edge180, label %.lr.ph179.split, !llvm.loop !185

bb.k:                                             ; preds = %._crit_edge180, %._crit_edge185
  %i.fs = add nsw i32 %i.j, 1                     ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 2736
  %i.fu = load i16, ptr %i.ft, align 8, !tbaa !119 ; 2 uses
  %i.fv = load i16, ptr %i.am, align 8, !tbaa !131 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !66 ; 2 uses
  %.not175 = icmp eq ptr %i.fx, null
  br i1 %.not175, label %._crit_edge205, label %bb.l

._crit_edge205:                                   ; preds = %bb.k
  %.pre206 = zext i16 %i.fv to i64
  %.pre207 = shl nuw i64 %.pre206, 48
  %.pre209 = zext i16 %i.fu to i64
  %.pre211 = shl nuw nsw i64 %.pre209, 32
  %.pre213 = zext i32 %i.fs to i64
  %.pre215 = or disjoint i64 %.pre211, %.pre213
  %.pre217 = or disjoint i64 %.pre215, %.pre207
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store i64 %0, ptr %5, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fy, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !200
  %.sroa.6.0.insert.ext = zext i16 %i.fv to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 48
  %.sroa.4156.0.insert.ext = zext i16 %i.fu to i64
  %.sroa.4156.0.insert.shift = shl nuw nsw i64 %.sroa.4156.0.insert.ext, 32
  %.sroa.0151.0.insert.ext = zext i32 %i.fs to i64
  %.sroa.4156.0.insert.insert = or disjoint i64 %.sroa.4156.0.insert.shift, %.sroa.0151.0.insert.ext
  %.sroa.0151.0.insert.insert = or disjoint i64 %.sroa.4156.0.insert.insert, %.sroa.6.0.insert.shift ; 2 uses
  call void @b2RecWriteRet_CreateChain(ptr noundef nonnull %i.fx, ptr noundef nonnull %5, i64 %.sroa.0151.0.insert.insert) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge205, %bb.l
  %.pre-phi218 = phi i64 [ %.pre217, %._crit_edge205 ], [ %.sroa.0151.0.insert.insert, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.sroa.0151.0.insert.insert155 = phi i64 [ %.pre-phi218, %bb.m ], [ 0, %bb.a ]
  ret i64 %.sroa.0151.0.insert.insert155
}

declare ptr @b2GetBodyFullId(ptr noundef, i64) local_unnamed_addr #3

declare { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @b2AllocId(ptr noundef) local_unnamed_addr #3

declare ptr @b2GrowAlloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @b2Alloc(i64 noundef) local_unnamed_addr #3

declare void @b2DefaultShapeDef(ptr dead_on_unwind writable sret(%struct.b2ShapeDef) align 8) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @b2CreateShapeInternal(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, <2 x float> %2, <2 x float> %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 0, 5) %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.b = tail call i32 @b2AllocId(ptr noundef nonnull %i.a) #9 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2144 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !201
  %i.f = icmp eq i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2156 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !202  ; 4 uses
  %.not = icmp slt i32 %i.b, %i.h
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !92  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = mul nsw i32 %i.h, 296
  %i.j = icmp eq i32 %i.h, 0
  %i.k = shl nsw i32 %i.h, 1
  %spec.select = select i1 %i.j, i32 8, i32 %i.k  ; 2 uses
  %i.l = mul nsw i32 %spec.select, 296
  %i.m = sext i32 %i.i to i64
  %i.n = sext i32 %i.l to i64
  %i.o = tail call ptr @b2GrowAlloc(ptr noundef %.pre, i64 noundef %i.m, i64 noundef %i.n) #9 ; 2 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !92
  store i32 %spec.select, ptr %i.g, align 4, !tbaa !202
  %.pre134 = load i32, ptr %i.d, align 8, !tbaa !201
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %.pre134, %bb.c ], [ %i.b, %bb.b ]
  %i.q = phi ptr [ %i.o, %bb.c ], [ %.pre, %bb.b ]
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [296 x i8], ptr %i.q, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.s, i8 0, i64 296, i1 false)
  %i.t = load i32, ptr %i.d, align 8, !tbaa !201
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.d, align 8, !tbaa !201
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.w = sext i32 %i.b to i64
  %i.x = getelementptr inbounds [296 x i8], ptr %i.v, i64 %i.w ; 41 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 144 ; 5 uses
  switch i32 %6, label %default.unreachable142 [
    i32 1, label %bb.f
    i32 0, label %bb.g
    i32 3, label %bb.h
    i32 2, label %bb.i
    i32 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !84
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !73
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.y, ptr noundef nonnull align 4 dereferenceable(144) %5, i64 144, i1 false), !tbaa.struct !86
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !87
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.y, ptr noundef nonnull align 4 dereferenceable(36) %5, i64 36, i1 false), !tbaa.struct !88
  br label %bb.k

default.unreachable142:                           ; preds = %bb.k, %bb.e
  unreachable

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  store i32 %i.b, ptr %i.x, align 8, !tbaa !82
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !128
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !98
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  store i32 %6, ptr %i.ac, align 4, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !203
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store float %i.ae, ptr %i.af, align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !134
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !tbaa.struct !136
  %i.ak = load ptr, ptr %4, align 8, !tbaa !135
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !143
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 295
  store i8 0, ptr %i.am, align 1, !tbaa !204
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !137, !range !77, !noundef !78
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 290
  store i8 %i.ao, ptr %i.ap, align 2, !tbaa !144
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 75
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !138, !range !77, !noundef !78
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 291
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !145
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.au = load i8, ptr %i.at, align 8, !tbaa !205, !range !77, !noundef !78
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 292
  store i8 %i.au, ptr %i.av, align 4, !tbaa !206
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !139, !range !77, !noundef !78
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 293
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !146
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 77
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !207, !range !77, !noundef !78
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 294
  store i8 %i.ba, ptr %i.bb, align 2, !tbaa !147
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  store i32 -1, ptr %i.bc, align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 5 uses
  switch i32 %6, label %default.unreachable142 [
    i32 1, label %b2GetShapeCentroid.exit.thread
    i32 0, label %b2GetShapeCentroid.exit.thread125
    i32 3, label %b2GetShapeCentroid.exit.thread127
    i32 2, label %b2GetShapeCentroid.exit.thread129
    i32 4, label %b2GetShapeCentroid.exit.thread131
  ]

b2GetShapeCentroid.exit.thread:                   ; preds = %bb.k
end_hunk_0
