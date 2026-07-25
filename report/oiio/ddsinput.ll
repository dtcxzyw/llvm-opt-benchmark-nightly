inline.NumInlined: 3419
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN11OpenImageIO4v3_18DDSInput16internal_readimgEPhiii:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZdaPv(ptr noundef nonnull %i.x) #35
  %i.bf = load i32, ptr %i.j, align 4, !tbaa !43
  switch i32 %i.bf, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114.thread133 [
    i32 2, label %bb.p
    i32 4, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit
  %i.bg = icmp sgt i32 %3, 0
  %i.bh = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.bg, %i.bh
  br i1 %or.cond, label %.preheader145.preheader, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114.thread133

.preheader145.preheader:                          ; preds = %bb.p
  %i.bi = zext nneg i32 %2 to i64                 ; 2 uses
  %wide.trip.count180 = zext nneg i32 %3 to i64
  br label %.preheader145

.preheader145:                                    ; preds = %.preheader145.preheader, %._crit_edge
  %indvars.iv177 = phi i64 [ 0, %.preheader145.preheader ], [ %indvars.iv.next178, %._crit_edge ] ; 2 uses
  %i.bj = mul nuw nsw i64 %indvars.iv177, %i.bi
  br label %bb.q

._crit_edge:                                      ; preds = %bb.s
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count180
  br i1 %exitcond181.not, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114.thread133, label %.preheader145, !llvm.loop !168

bb.q:                                             ; preds = %.preheader145, %bb.s
  %indvars.iv = phi i64 [ 0, %.preheader145 ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.bk = add nuw nsw i64 %indvars.iv, %i.bj
  %i.bl = shl i64 %i.bk, 2
  %i.bm = and i64 %i.bl, 4294967292
  %i.bn = getelementptr i8, ptr %1, i64 %i.bm     ; 5 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !9   ; 2 uses
  %.not108 = icmp eq i8 %i.bp, 0
  br i1 %.not108, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i16
  %i.bs = mul nuw i16 %i.br, 255
  %i.bt = zext i8 %i.bp to i16                    ; 3 uses
  %i.bu = udiv i16 %i.bs, %i.bt
  %i.bv = trunc i16 %i.bu to i8
  store i8 %i.bv, ptr %i.bn, align 1, !tbaa !9
  %i.bw = getelementptr i8, ptr %i.bn, i64 1      ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9
  %i.by = zext i8 %i.bx to i16
  %i.bz = mul nuw i16 %i.by, 255
  %i.ca = udiv i16 %i.bz, %i.bt
  %i.cb = trunc i16 %i.ca to i8
  store i8 %i.cb, ptr %i.bw, align 1, !tbaa !9
  %i.cc = getelementptr i8, ptr %i.bn, i64 2      ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = zext i8 %i.cd to i16
  %i.cf = mul nuw i16 %i.ce, 255
  %i.cg = udiv i16 %i.cf, %i.bt
  %i.ch = trunc i16 %i.cg to i8
  store i8 %i.ch, ptr %i.cc, align 1, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bi
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !169

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114.thread: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #35
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114.thread133

bb.t:                                             ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !170 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !107 ; 2 uses
  %i.cm = icmp eq i32 %i.cj, %i.cl
  br i1 %i.cm, label %.preheader144, label %.critedge

.preheader144:                                    ; preds = %bb.t
  %.not143149 = icmp sgt i32 %i.cj, 0
  br i1 %.not143149, label %.lr.ph, label %.thread139

.lr.ph:                                           ; preds = %.preheader144
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 260
  %wide.trip.count185 = zext nneg i32 %i.cj to i64
  br label %bb.v

bb.u:                                             ; preds = %bb.x
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %.thread139, label %bb.v, !llvm.loop !171

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv182 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next183, %bb.u ] ; 5 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv182
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = shl nuw nsw i64 %indvars.iv182, 3       ; 2 uses
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl i32 255, %i.ct
  %.not103 = icmp eq i32 %i.cr, %i.cu
  br i1 %.not103, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv182
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  %.not104 = icmp eq i64 %i.cs, %i.cx
  br i1 %.not104, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv182
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %.not105 = icmp eq i32 %i.cz, 8
  br i1 %.not105, label %bb.u, label %.critedge

.thread139:                                       ; preds = %bb.u, %.preheader144
  %i.da = mul nsw i32 %i.cj, %2
  %i.db = sext i32 %i.da to i64
  %i.dc = sext i32 %3 to i64
  %i.dd = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i64 noundef %i.db, i64 noundef %i.dc)
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114.thread133

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.x, %bb.t
  %i.de = mul nsw i32 %i.cl, %2
  %i.df = sext i32 %i.de to i64
  %i.dg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.df) #38 ; 6 uses
  %i.dh = icmp sgt i32 %4, 0
  br i1 %i.dh, label %.preheader.lr.ph, label %.thread142

.preheader.lr.ph:                                 ; preds = %.critedge
  %.not106160 = icmp sgt i32 %3, 0
  %i.di = sext i32 %2 to i64                      ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 260
  br i1 %.not106160, label %.preheader.lr.ph.split, label %.thread142

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.dm = icmp sgt i32 %2, 0
  br i1 %i.dm, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph.split, %._crit_edge163.split.us.us
  %.085168.us = phi i32 [ %i.fa, %._crit_edge163.split.us.us ], [ 0, %.preheader.lr.ph.split ] ; 2 uses
  %i.dn = mul nuw nsw i32 %.085168.us, %3
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge159.us.us, %.preheader.us
  %.084161.us.us = phi i32 [ 0, %.preheader.us ], [ %i.ez, %._crit_edge159.us.us ] ; 2 uses
  %i.do = load i32, ptr %i.ck, align 8, !tbaa !107
  %i.dp = sext i32 %i.do to i64
  %i.dq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.dg, i64 noundef %i.di, i64 noundef %i.dp)
          to label %bb.z unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117.split.us.split.us

bb.z:                                             ; preds = %bb.y
  br i1 %i.dq, label %.lr.ph158.us.us, label %.split.us

.lr.ph158.us.us:                                  ; preds = %bb.z
  %i.dr = load i32, ptr %i.ci, align 4, !tbaa !170 ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph158.split.us167.us.preheader, label %._crit_edge159.us.us

.lr.ph158.split.us167.us.preheader:               ; preds = %.lr.ph158.us.us
  %i.dt = add nuw i32 %.084161.us.us, %i.dn
  %i.du = mul i32 %i.dt, %2
  %i.dv = mul nsw i32 %i.du, %i.dr
  %i.dw = sext i32 %i.dv to i64
  br label %.lr.ph158.split.us167.us

.lr.ph158.split.us167.us:                         ; preds = %.lr.ph158.split.us167.us.preheader, %._crit_edge154.us.us
  %i.dx = phi i32 [ %7, %._crit_edge154.us.us ], [ %i.dr, %.lr.ph158.split.us167.us.preheader ] ; 3 uses
  %.082156.us164.us = phi i32 [ %8, %._crit_edge154.us.us ], [ 0, %.lr.ph158.split.us167.us.preheader ] ; 2 uses
  %.083155.us165.us = phi i64 [ %9, %._crit_edge154.us.us ], [ %i.dw, %.lr.ph158.split.us167.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 0, ptr %i.i, align 4, !tbaa !3
  %i.dy = load i32, ptr %i.ck, align 8, !tbaa !107 ; 2 uses
  %i.dz = mul nsw i32 %i.dy, %.082156.us164.us
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %i.dg, i64 %i.ea
  %i.ec = sext i32 %i.dy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 1 %i.eb, i64 %i.ec, i1 false)
  %i.ed = icmp sgt i32 %i.dx, 0
  br i1 %i.ed, label %.lr.ph153.us.us, label %.lr.ph158.split.us167.us.._crit_edge154.us.us_crit_edge

.lr.ph158.split.us167.us.._crit_edge154.us.us_crit_edge: ; preds = %.lr.ph158.split.us167.us
  %.pre = sext i32 %i.dx to i64
  br label %._crit_edge154.us.us

bb.aa:                                            ; preds = %.lr.ph153.us.us, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us
  %indvars.iv194 = phi i64 [ 0, %.lr.ph153.us.us ], [ %indvars.iv.next195, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us ] ; 5 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv194
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eg = and i32 %i.ef, %.0..0..0..0..us.us
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv194
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ej = lshr i32 %i.eg, %i.ei                   ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv194
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3  ; 3 uses
  %.not.i118.us.us = icmp eq i32 %i.el, 0
  br i1 %.not.i118.us.us, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %bb.aa
  %.015.i.us.us = sub i32 8, %i.el                ; 3 uses
  %i.em = icmp sgt i32 %.015.i.us.us, 0
  br i1 %i.em, label %.lr.ph.i.us.us, label %._crit_edge.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.preheader.i.us.us, %.lr.ph.i.us.us
  %.017.i.us.us = phi i32 [ %.0.i.us.us, %.lr.ph.i.us.us ], [ %.015.i.us.us, %.preheader.i.us.us ] ; 2 uses
  %.01316.i.us.us = phi i32 [ %i.eo, %.lr.ph.i.us.us ], [ 0, %.preheader.i.us.us ]
  %i.en = shl i32 %i.ej, %.017.i.us.us
  %i.eo = or i32 %i.en, %.01316.i.us.us           ; 2 uses
  %.0.i.us.us = sub i32 %.017.i.us.us, %i.el      ; 3 uses
  %i.ep = icmp sgt i32 %.0.i.us.us, 0
  br i1 %i.ep, label %.lr.ph.i.us.us, label %._crit_edge.i.us.us, !llvm.loop !172

._crit_edge.i.us.us:                              ; preds = %.lr.ph.i.us.us, %.preheader.i.us.us
  %.013.lcssa.i.us.us = phi i32 [ 0, %.preheader.i.us.us ], [ %i.eo, %.lr.ph.i.us.us ]
  %.0.lcssa.i.us.us = phi i32 [ %.015.i.us.us, %.preheader.i.us.us ], [ %.0.i.us.us, %.lr.ph.i.us.us ]
  %i.eq = sub nsw i32 0, %.0.lcssa.i.us.us
  %i.er = lshr i32 %i.ej, %i.eq
  %i.es = or i32 %i.er, %.013.lcssa.i.us.us
  %i.et = trunc i32 %i.es to i8
  br label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us: ; preds = %._crit_edge.i.us.us, %bb.aa
  %.1.i.us.us = phi i8 [ %i.et, %._crit_edge.i.us.us ], [ 0, %bb.aa ]
  %i.eu = getelementptr i8, ptr %i.ey, i64 %indvars.iv194
  store i8 %.1.i.us.us, ptr %i.eu, align 1, !tbaa !9
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.ev = load i32, ptr %i.ci, align 4, !tbaa !170 ; 2 uses
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %i.ex = icmp slt i64 %indvars.iv.next195, %i.ew
  br i1 %i.ex, label %bb.aa, label %._crit_edge154.us.us, !llvm.loop !173

._crit_edge154.us.us:                             ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us, %.lr.ph158.split.us167.us.._crit_edge154.us.us_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.lr.ph158.split.us167.us.._crit_edge154.us.us_crit_edge ], [ %i.ew, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us ]
  %7 = phi i32 [ %i.dx, %.lr.ph158.split.us167.us.._crit_edge154.us.us_crit_edge ], [ %i.ev, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.us.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = add nuw nsw i32 %.082156.us164.us, 1       ; 2 uses
  %9 = add i64 %.083155.us165.us, %.pre-phi
  %exitcond197.not = icmp eq i32 %8, %2
  br i1 %exitcond197.not, label %._crit_edge159.us.us, label %.lr.ph158.split.us167.us, !llvm.loop !174

.lr.ph153.us.us:                                  ; preds = %.lr.ph158.split.us167.us
  %.0..0..0..0..us.us = load i32, ptr %i.i, align 4, !tbaa !3
  %i.ey = getelementptr i8, ptr %1, i64 %.083155.us165.us
  br label %bb.aa

._crit_edge159.us.us:                             ; preds = %._crit_edge154.us.us, %.lr.ph158.us.us
  %i.ez = add nuw nsw i32 %.084161.us.us, 1       ; 2 uses
  %exitcond198.not = icmp eq i32 %i.ez, %3
  br i1 %exitcond198.not, label %._crit_edge163.split.us.us, label %bb.y, !llvm.loop !176

._crit_edge163.split.us.us:                       ; preds = %._crit_edge159.us.us
  %i.fa = add nuw nsw i32 %.085168.us, 1          ; 2 uses
  %exitcond199.not = icmp eq i32 %i.fa, %4
  br i1 %exitcond199.not, label %.thread142, label %.preheader.us, !llvm.loop !177

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117.split.us.split.us: ; preds = %bb.y
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge163.split
  %.085168 = phi i32 [ %i.fh, %._crit_edge163.split ], [ 0, %.preheader.lr.ph.split ]
  br label %bb.ab

.thread142:                                       ; preds = %._crit_edge163.split, %._crit_edge163.split.us.us, %.preheader.lr.ph, %.critedge
  tail call void @_ZdaPv(ptr noundef nonnull %i.dg) #35
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114.thread133

bb.ab:                                            ; preds = %.preheader, %bb.ad
  %.084161 = phi i32 [ 0, %.preheader ], [ %i.fg, %bb.ad ]
  %i.fc = load i32, ptr %i.ck, align 8, !tbaa !107
  %i.fd = sext i32 %i.fc to i64
  %i.fe = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.dg, i64 noundef %i.di, i64 noundef %i.fd)
          to label %bb.ac unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117.split

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.fe, label %bb.ad, label %.split.us

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117.split: ; preds = %bb.ab
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117.split.us.split.us, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117.split
  %.us-phi = phi { ptr, i32 } [ %i.ff, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117.split ], [ %i.fb, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117.split.us.split.us ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.dg) #35
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fg = add nuw nsw i32 %.084161, 1             ; 2 uses
  %exitcond187.not = icmp eq i32 %i.fg, %3
  br i1 %exitcond187.not, label %._crit_edge163.split, label %bb.ab, !llvm.loop !176

._crit_edge163.split:                             ; preds = %bb.ad
  %i.fh = add nuw nsw i32 %.085168, 1             ; 2 uses
  %exitcond188.not = icmp eq i32 %i.fh, %4
  br i1 %exitcond188.not, label %.thread142, label %.preheader, !llvm.loop !177

.split.us:                                        ; preds = %bb.ac, %bb.z
  tail call void @_ZdaPv(ptr noundef nonnull %i.dg) #35
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114.thread133

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114.thread133: ; preds = %._crit_edge, %bb.p, %.thread142, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit, %.split.us, %.thread139, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114.thread
  %.5 = phi i1 [ false, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114.thread ], [ %i.dd, %.thread139 ], [ false, %.split.us ], [ true, %.thread142 ], [ true, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit ], [ true, %bb.p ], [ true, %._crit_edge ]
  ret i1 %.5

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ], [ %.us-phi, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit117 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

declare noundef i32 @_ZNK11OpenImageIO4v3_110ImageInput7threadsEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput17readimg_scanlinesEv(ptr noundef nonnull align 8 dereferenceable(448) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i1 noundef zeroext false) #34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !178
  %i.f = sext i32 %i.e to i64
  %i.g = mul i64 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !132
  %i.j = sext i32 %i.i to i64
  %i.k = mul i64 %i.g, %i.j
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.k)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !179
  %i.o = load i32, ptr %i.d, align 8, !tbaa !178
  %i.p = load i32, ptr %i.h, align 4, !tbaa !132
  %i.q = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput16internal_readimgEPhiii(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull %i.l, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p)
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !85     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !121
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #37
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #38 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !9
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #35
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !121
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !86
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

end_hunk_0
begin_hunk_1_@llvm.smax.i64
attributes #18 = { cold nofree noreturn }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold noreturn }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #31 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { nounwind }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { noreturn }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { cold nounwind }
attributes #40 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !5, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"_ZTS16bcdec__bitstream", !11, i64 0, !11, i64 8}
!14 = !{!13, !11, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !5, i64 0}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !6, i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!38 = !{!"p1 omnipotent char", !39, i64 0}
!39 = !{!"any pointer", !5, i64 0}
!40 = !{!41, !42, i64 8}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !42, i64 8, !5, i64 16}
!42 = !{!"long", !5, i64 0}
!43 = !{!44, !78, i64 292}
!44 = !{!"_ZTSN11OpenImageIO4v3_18DDSInputE", !45, i64 0, !41, i64 184, !74, i64 216, !4, i64 240, !4, i64 244, !4, i64 248, !4, i64 252, !4, i64 256, !5, i64 260, !5, i64 276, !78, i64 292, !79, i64 296, !82, i64 424}
!45 = !{!"_ZTSN11OpenImageIO4v3_110ImageInputE", !46, i64 8, !65, i64 168}
!46 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !47, i64 64, !48, i64 72, !53, i64 96, !4, i64 120, !4, i64 124, !58, i64 128, !59, i64 136}
!47 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!48 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !49, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !39, i64 0}
!53 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !54, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0}
!58 = !{!"bool", !5, i64 0}
!59 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !60, i64 0}
!60 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !39, i64 0}
!65 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !66, i64 0}
!66 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_ELb1ELb1EE", !67, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !68, i64 0}
!68 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !69, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !70, i64 0, !72, i64 8}
!70 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_110ImageInput4ImplEEEE", !71, i64 0}
!71 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_110ImageInput4ImplEELb0EE", !39, i64 0}
!72 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110ImageInput4ImplELb0EE", !73, i64 0}
!73 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInput4ImplE", !39, i64 0}
!74 = !{!"_ZTSSt6vectorIhSaIhEE", !75, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!78 = !{!"_ZTSN11OpenImageIO4v3_17DDS_pvt11CompressionE", !5, i64 0}
!79 = !{!"_ZTSN11OpenImageIO4v3_17DDS_pvt10dds_headerE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !80, i64 76, !81, i64 108, !4, i64 124}
!80 = !{!"_ZTSN11OpenImageIO4v3_17DDS_pvt13dds_pixformatE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !5, i64 16}
!81 = !{!"_ZTSN11OpenImageIO4v3_17DDS_pvt8dds_capsE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!82 = !{!"_ZTSN11OpenImageIO4v3_17DDS_pvt15dds_header_dx10E", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16}
!83 = !{!44, !4, i64 240}
!84 = !{!44, !4, i64 244}
!85 = !{!77, !38, i64 0}
!86 = !{!77, !38, i64 16}
!87 = !{!41, !38, i64 0}
!88 = !{!89, !90, i64 48}
!89 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !41, i64 8, !42, i64 40, !90, i64 48, !41, i64 56}
!90 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxy4ModeE", !5, i64 0}
!91 = !{!92, !38, i64 0}
!92 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !38, i64 0, !42, i64 8}
!93 = !{!92, !42, i64 8}
!94 = !{!44, !4, i64 296}
!95 = !{!44, !4, i64 300}
!96 = !{!44, !4, i64 372}
!97 = !{!44, !4, i64 404}
!98 = !{!44, !4, i64 304}
!99 = !{!44, !4, i64 408}
!100 = !{!44, !4, i64 312}
!101 = !{!44, !4, i64 308}
!102 = !{!44, !4, i64 320}
!103 = !{!44, !4, i64 376}
!104 = !{!44, !4, i64 380}
!105 = !{!44, !4, i64 424}
!106 = !{!44, !4, i64 248}
!107 = !{!44, !4, i64 256}
!108 = distinct !{!108, !16}
!109 = !{!44, !4, i64 384}
!110 = !{!44, !4, i64 316}
!111 = !{!44, !4, i64 324}
!112 = !{!44, !4, i64 252}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!115 = distinct !{!115, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!118 = distinct !{!118, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!119 = distinct !{!119, !16}
!120 = distinct !{!120, !16}
!121 = !{!77, !38, i64 8}
!122 = !{!63, !64, i64 0}
!123 = !{!63, !64, i64 8}
!124 = distinct !{!124, !16}
!125 = !{!63, !64, i64 16}
!126 = !{!56, !57, i64 0}
!127 = !{!56, !57, i64 8}
!128 = distinct !{!128, !16}
!129 = !{!56, !57, i64 16}
!130 = !{!51, !52, i64 0}
!131 = !{!51, !52, i64 16}
!132 = !{!45, !4, i64 28}
!133 = !{!45, !4, i64 44}
!134 = !{!45, !4, i64 56}
!135 = !{!45, !4, i64 48}
!136 = !{!45, !4, i64 60}
!137 = !{!45, !4, i64 52}
!138 = !{!45, !4, i64 64}
!139 = distinct !{!139, !16}
!140 = distinct !{!140, !16}
!141 = distinct !{!141, !16}
!142 = !{!52, !52, i64 0}
!143 = !{!57, !57, i64 0}
!144 = !{!64, !64, i64 0}
!145 = !{!42, !42, i64 0}
!146 = !{!38, !38, i64 0}
!147 = !{!78, !78, i64 0}
!148 = !{!80, !4, i64 4}
!149 = !{!150, !150, i64 0}
!150 = !{!"p1 int", !39, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"p2 omnipotent char", !153, i64 0}
!153 = !{!"any p2 pointer", !39, i64 0}
!154 = !{!155, !155, i64 0}
!155 = !{!"p1 long", !39, i64 0}
!156 = !{!39, !39, i64 0}
!157 = !{!158, !39, i64 24}
!158 = !{!"_ZTSSt8functionIFvllEE", !159, i64 0, !39, i64 24}
!159 = !{!"_ZTSSt14_Function_base", !5, i64 0, !39, i64 16}
!160 = !{!159, !39, i64 16}
!161 = !{!162, !162, i64 0}
!162 = !{!"_ZTSN11OpenImageIO4v3_16paropt11ParStrategyE", !5, i64 0}
!163 = !{!164, !164, i64 0}
!164 = !{!"_ZTSN11OpenImageIO4v3_16paropt8SplitDirE", !5, i64 0}
!165 = !{!166, !166, i64 0}
!166 = !{!"p1 _ZTSN11OpenImageIO4v3_111thread_poolE", !39, i64 0}
!167 = !{!58, !58, i64 0}
!168 = distinct !{!168, !16}
!169 = distinct !{!169, !16}
!170 = !{!45, !4, i64 68}
!171 = distinct !{!171, !16}
!172 = distinct !{!172, !16}
!173 = distinct !{!173, !16}
!174 = distinct !{!174, !16, !175}
!175 = !{!"llvm.loop.unswitch.partial.disable"}
!176 = distinct !{!176, !16}
!177 = distinct !{!177, !16}
!178 = !{!45, !4, i64 24}
!179 = !{!45, !4, i64 20}
!180 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!181 = !{!182, !182, i64 0}
!182 = !{!"p1 _ZTS8_IO_FILE", !39, i64 0}
!183 = !{!51, !52, i64 8}
!184 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!185 = distinct !{!185, !16, !186, !187}
!186 = !{!"llvm.loop.isvectorized", i32 1}
!187 = !{!"llvm.loop.unroll.runtime.disable"}
!188 = distinct !{!188, !16, !186}
!189 = distinct !{!189, !16}
!190 = distinct !{!190, !16}
!191 = distinct !{!191, !16}
!192 = distinct !{!192, !16}
!193 = distinct !{!193, !16}
!194 = distinct !{!194, !16}
!195 = distinct !{!195, !16}
!196 = distinct !{!196, !16}
!197 = !{!198, !38, i64 0}
!198 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !38, i64 0}
!199 = !{!47, !4, i64 4}
!200 = !{!201, !4, i64 32}
!201 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !198, i64 0, !47, i64 8, !5, i64 16, !4, i64 32, !5, i64 36, !58, i64 37, !58, i64 38}
!202 = !{!201, !5, i64 36}
!203 = !{!201, !58, i64 38}
!204 = !{i8 0, i8 2}
!205 = !{}
!206 = distinct !{!206, !16}
!207 = distinct !{!207, !16}
!208 = !{!209, !150, i64 0}
!209 = !{!"_ZTSZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS0_7DDS_pvt11CompressionERKNS4_13dds_pixformatEiE3$_0", !150, i64 0, !152, i64 8, !150, i64 16, !155, i64 24, !150, i64 32, !39, i64 40, !39, i64 48, !152, i64 56, !150, i64 64}
!210 = !{i64 4}
!211 = !{!209, !150, i64 32}
!212 = !{!209, !152, i64 8}
!213 = !{i64 8}
!214 = !{!209, !150, i64 16}
!215 = !{!209, !155, i64 24}
!216 = !{!209, !39, i64 40}
!217 = !{!209, !39, i64 48}
!218 = !{!80, !4, i64 8}
!219 = distinct !{!219, !16}
!220 = distinct !{!220, !16}
!221 = !{!209, !152, i64 56}
!222 = !{!209, !150, i64 64}
!223 = distinct !{!223, !16}
!224 = distinct !{!224, !16, !175}
!225 = !{!226, !226, i64 0}
!226 = !{!"p1 _ZTSSt9type_info", !39, i64 0}
!227 = !{i64 0, i64 8, !149, i64 8, i64 8, !151, i64 16, i64 8, !149, i64 24, i64 8, !154, i64 32, i64 8, !149, i64 40, i64 8, !156, i64 48, i64 8, !156, i64 56, i64 8, !151, i64 64, i64 8, !149}
!228 = !{!229, !39, i64 24}
!229 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !38, i64 0, !42, i64 8, !42, i64 16, !39, i64 24}
!230 = !{!229, !38, i64 0}
!231 = !{!229, !42, i64 16}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!234 = distinct !{!234, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!235 = !{!229, !42, i64 8}
!236 = !{!237, !237, i64 0}
!237 = !{!"_ZTSN3fmt3v126detail4typeE", !5, i64 0}
!238 = !{!239, !239, i64 0}
!239 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !39, i64 0}
!240 = distinct !{null, null}
!241 = !{!242, !4, i64 16}
!242 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !243, i64 0, !4, i64 16}
!243 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !38, i64 0, !42, i64 8}
!244 = !{!245, !11, i64 0}
!245 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !11, i64 0, !5, i64 8}
!246 = !{!247, !249}
!247 = distinct !{!247, !248, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!248 = distinct !{!248, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!249 = distinct !{!249, !250, !"_ZNK3fmt3v127context3argEi: argument 0"}
!250 = distinct !{!250, !"_ZNK3fmt3v127context3argEi"}
!251 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!252 = distinct !{!252, !16}
!253 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!254 = distinct !{!254, !16}
!255 = !{!256, !4, i64 0}
!256 = !{!"_ZTSN3fmt3v1211basic_specsE", !4, i64 0, !5, i64 4}
!257 = !{!258, !4, i64 12}
!258 = !{!"_ZTSN3fmt3v1212format_specsE", !256, i64 0, !4, i64 8, !4, i64 12}
!259 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!260 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null, null}
!261 = distinct !{!261, !16}
!262 = !{!263, !42, i64 0}
!263 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !42, i64 0, !4, i64 8}
!264 = !{!263, !4, i64 8}
!265 = !{!266, !266, i64 0}
!266 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !39, i64 0}
!267 = !{!268, !4, i64 8}
!268 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !266, i64 0, !4, i64 8}
!269 = !{!270, !272}
!270 = distinct !{!270, !271, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!271 = distinct !{!271, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!272 = distinct !{!272, !273, !"_ZNK3fmt3v127context3argEi: argument 0"}
!273 = distinct !{!273, !"_ZNK3fmt3v127context3argEi"}
!274 = distinct !{null, null, null}
!275 = distinct !{null, null, null}
!276 = distinct !{null, null, null}
!277 = distinct !{null, null, null, null}
!278 = distinct !{null, null}
!279 = distinct !{null, null, null}
!280 = distinct !{null, null}
!281 = distinct !{!281, !16, !186, !187}
!282 = !{!"branch_weights", i32 4, i32 28}
!283 = distinct !{!283, !16, !186, !187}
!284 = distinct !{!284, !18}
!285 = distinct !{!285, !16}
!286 = distinct !{!286, !16, !186}
!287 = distinct !{!287, !16}
!288 = distinct !{!288, !16}
!289 = !{!290, !291, i64 0}
!290 = !{!"_ZTSSt6locale", !291, i64 0}
!291 = !{!"p1 _ZTSNSt6locale5_ImplE", !39, i64 0}
!292 = !{!293, !42, i64 16}
!293 = !{!"_ZTSNSt6locale5_ImplE", !4, i64 0, !294, i64 8, !42, i64 16, !294, i64 24, !152, i64 32}
!294 = !{!"p2 _ZTSNSt6locale5facetE", !153, i64 0}
!295 = !{!293, !294, i64 8}
!296 = !{!297, !297, i64 0}
!297 = !{!"p1 _ZTSNSt6locale5facetE", !39, i64 0}
!298 = !{ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev}
!299 = distinct !{!299, !16}
!300 = !{!301, !58, i64 0}
!301 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !58, i64 0, !5, i64 1}
!302 = !{!301, !5, i64 1}
!303 = !{!258, !4, i64 8}
!304 = distinct !{null, null}
!305 = distinct !{null, null}
!306 = distinct !{!306, !16}
!307 = distinct !{null, null, null, null}
!308 = distinct !{null, null, null, null, null}
!309 = distinct !{!309, !16}
!310 = distinct !{null, null, null}
!311 = distinct !{null, null, null, null}
!312 = distinct !{!312, !16}
!313 = !{!314, !4, i64 8}
!314 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!317 = distinct !{!317, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!318 = distinct !{null}
!319 = distinct !{null}
!320 = !{!321, !321, i64 0}
!321 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !39, i64 0}
!322 = !{!323, !237, i64 16}
!323 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !324, i64 0, !237, i64 16}
!324 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !5, i64 0}
!325 = !{!326, !321, i64 8}
!326 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !327, i64 0, !321, i64 8, !41, i64 16, !41, i64 48, !41, i64 80}
!327 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !239, i64 0}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!330 = distinct !{!330, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!331 = !{!332}
!332 = distinct !{!332, !333, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!333 = distinct !{!333, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!334 = distinct !{!334, !16}
!335 = distinct !{!335, !16}
!336 = distinct !{!336, !16}
!337 = !{!338, !338, i64 0}
!338 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !39, i64 0}
!339 = !{!340, !340, i64 0}
!340 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !39, i64 0}
!341 = !{!342, !150, i64 0}
!342 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !150, i64 0, !338, i64 8, !340, i64 16}
!343 = distinct !{null, null, null, null}
!344 = distinct !{!344, !16}
!345 = !{!342, !338, i64 8}
!346 = !{!342, !340, i64 16}
!347 = distinct !{null, null, null, null}
!348 = distinct !{null, null, null, null}
!349 = distinct !{!349, !16}
!350 = distinct !{!350, !16, !186, !187}
!351 = distinct !{!351, !16, !186, !187}
!352 = distinct !{!352, !18}
!353 = distinct !{!353, !16, !186}
!354 = distinct !{!354, !16}
!355 = !{!356, !38, i64 0}
!356 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !38, i64 0, !38, i64 8, !4, i64 16}
!357 = !{!356, !38, i64 8}
!358 = !{!356, !4, i64 16}
!359 = distinct !{!359, !16}
!360 = distinct !{!360, !16}
!361 = distinct !{!361, !16}
!362 = !{!363, !39, i64 24}
!363 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !150, i64 0, !42, i64 8, !42, i64 16, !39, i64 24}
!364 = !{!363, !150, i64 0}
!365 = !{!363, !42, i64 16}
!366 = !{!363, !42, i64 8}
!367 = distinct !{null}
!368 = distinct !{null}
!369 = distinct !{!369, !16, !186, !187}
!370 = distinct !{!370, !16, !186, !187}
!371 = distinct !{!371, !18}
!372 = distinct !{!372, !16, !186}
!373 = distinct !{null}
!374 = distinct !{!374, !16}
!375 = distinct !{!375, !16}
!376 = distinct !{!376, !16}
!377 = distinct !{!377, !16}
!378 = distinct !{!378, !16}
!379 = !{!380, !150, i64 0}
!380 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !150, i64 0, !338, i64 8, !340, i64 16}
!381 = distinct !{null, null, null, null}
!382 = distinct !{!382, !16}
!383 = !{!380, !338, i64 8}
!384 = !{!380, !340, i64 16}
!385 = !{!243, !38, i64 0}
!386 = !{!243, !42, i64 8}
!387 = distinct !{null, null, null}
!388 = distinct !{!388, !16, !186, !187}
!389 = distinct !{!389, !16, !186, !187}
!390 = distinct !{!390, !18}
!391 = distinct !{!391, !16, !186}
!392 = !{!393, !394, i64 0}
!393 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEEUlS4_E_", !394, i64 0, !38, i64 8}
!394 = !{!"_ZTSN3fmt3v124signE", !5, i64 0}
!395 = !{!393, !38, i64 8}
!396 = distinct !{!396, !16}
!397 = !{!394, !394, i64 0}
!398 = !{!399, !4, i64 4}
!399 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !4, i64 0, !4, i64 4}
!400 = !{!401, !401, i64 0}
!401 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !39, i64 0}
!402 = !{!403, !403, i64 0}
!403 = !{!"p1 _ZTSN3fmt3v126detail23fallback_digit_groupingIcEE", !39, i64 0}
!404 = distinct !{null, null, null, null}
!405 = !{!406, !406, i64 0}
!406 = !{!"p1 bool", !39, i64 0}
!407 = distinct !{null, null, null, null}
!408 = distinct !{null, null, null, null}
!409 = distinct !{null, null, null}
!410 = distinct !{!410, !16, !186, !187}
!411 = distinct !{!411, !16, !186, !187}
!412 = distinct !{!412, !18}
!413 = distinct !{!413, !16, !186}
!414 = !{!415, !39, i64 0}
!415 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E_", !39, i64 0, !401, i64 8, !150, i64 16, !403, i64 24, !321, i64 32, !38, i64 40, !150, i64 48}
!416 = !{!415, !401, i64 8}
!417 = !{!399, !4, i64 0}
!418 = !{!415, !150, i64 16}
!419 = distinct !{null, null, null, null, null}
!420 = distinct !{!420, !16}
!421 = !{!415, !321, i64 32}
!422 = !{!415, !38, i64 40}
!423 = !{!415, !150, i64 48}
!424 = distinct !{null, null, null, null}
end_hunk_1
