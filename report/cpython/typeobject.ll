inline.NumInlined: 1348
inline.NumDeleted: 262
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@mro_implementation_unlocked:bb.a
  %i.ci = load i32, ptr %i.cc, align 8, !tbaa !112 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ci, -1
  br i1 %.not.i.i, label %bb.v, label %check_duplicates.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cj = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cj, ptr %i.cc, align 8, !tbaa !112
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.w, label %check_duplicates.exit.thread

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.cc) #21
  br label %check_duplicates.exit.thread

check_duplicates.exit:                            ; preds = %.critedge.loopexit.i, %PyType_Ready.exit.thread
  %i.cl = add i64 %.val78, 1                      ; 6 uses
  %i.cm = icmp ugt i64 %i.cl, 1152921504606846975
  br i1 %i.cm, label %.thread, label %bb.x

bb.x:                                             ; preds = %check_duplicates.exit
  %i.cn = shl nuw nsw i64 %i.cl, 3                ; 3 uses
  %i.co = tail call ptr @PyMem_Malloc(i64 noundef %i.cn) #21 ; 15 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.x
  br i1 %.not73104, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.cq = getelementptr i8, ptr %.val76, i64 32   ; 5 uses
  %xtraiter = and i64 %.val78, 3                  ; 3 uses
  %i.cr = icmp ult i64 %.val78, 4
  br i1 %i.cr, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.val78, 9223372036854775804
  br label %bb.z

.thread:                                          ; preds = %check_duplicates.exit, %bb.x
  %i.cs = tail call ptr @PyErr_NoMemory() #21     ; 0 uses
  br label %check_duplicates.exit.thread

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.059106.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.du, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod168 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod168)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %.059106.epil = phi i64 [ %.059106.epil.init, %.epil.preheader ], [ %i.cx, %bb.y ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.ct = getelementptr [8 x i8], ptr %i.cq, i64 %.059106.epil
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !115
  %i.cv = getelementptr i8, ptr %i.cu, i64 344
  %.val79.epil = load ptr, ptr %i.cv, align 8, !tbaa !165
  %i.cw = getelementptr [8 x i8], ptr %i.co, i64 %.059106.epil
  store ptr %.val79.epil, ptr %i.cw, align 8, !tbaa !115
  %i.cx = add nuw nsw i64 %.059106.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.y, !llvm.loop !424

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.y, %.preheader
  %i.cy = getelementptr [8 x i8], ptr %i.co, i64 %.val78
  store ptr %.val76, ptr %i.cy, align 8, !tbaa !115
  %i.cz = tail call ptr @PyList_New(i64 noundef 1) #21 ; 8 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.z, %.lr.ph.new
  %.059106 = phi i64 [ 0, %.lr.ph.new ], [ %i.du, %bb.z ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.z ]
  %i.db = getelementptr [8 x i8], ptr %i.cq, i64 %.059106
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !115
  %i.dd = getelementptr i8, ptr %i.dc, i64 344
  %.val79 = load ptr, ptr %i.dd, align 8, !tbaa !165
  %i.de = getelementptr [8 x i8], ptr %i.co, i64 %.059106
  store ptr %.val79, ptr %i.de, align 8, !tbaa !115
  %i.df = or disjoint i64 %.059106, 1             ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.cq, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !115
  %i.di = getelementptr i8, ptr %i.dh, i64 344
  %.val79.1 = load ptr, ptr %i.di, align 8, !tbaa !165
  %i.dj = getelementptr [8 x i8], ptr %i.co, i64 %i.df
  store ptr %.val79.1, ptr %i.dj, align 8, !tbaa !115
  %i.dk = or disjoint i64 %.059106, 2             ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %i.cq, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !115
  %i.dn = getelementptr i8, ptr %i.dm, i64 344
  %.val79.2 = load ptr, ptr %i.dn, align 8, !tbaa !165
  %i.do = getelementptr [8 x i8], ptr %i.co, i64 %i.dk
  store ptr %.val79.2, ptr %i.do, align 8, !tbaa !115
  %i.dp = or disjoint i64 %.059106, 3             ; 2 uses
  %i.dq = getelementptr [8 x i8], ptr %i.cq, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !115
  %i.ds = getelementptr i8, ptr %i.dr, i64 344
  %.val79.3 = load ptr, ptr %i.ds, align 8, !tbaa !165
  %i.dt = getelementptr [8 x i8], ptr %i.co, i64 %i.dp
  store ptr %.val79.3, ptr %i.dt, align 8, !tbaa !115
  %i.du = add nuw nsw i64 %.059106, 4             ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.z, !llvm.loop !425

bb.aa:                                            ; preds = %._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %i.co) #21
  br label %check_duplicates.exit.thread

bb.ab:                                            ; preds = %._crit_edge
  %i.dv = load i32, ptr %0, align 8, !tbaa !112   ; 2 uses
  %i.dw = icmp ugt i32 %i.dv, -1073741825
  br i1 %i.dw, label %_Py_NewRef.exit85, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = add nuw i32 %i.dv, 1
  store i32 %i.dx, ptr %0, align 8, !tbaa !112
  br label %_Py_NewRef.exit85

_Py_NewRef.exit85:                                ; preds = %bb.ab, %bb.ac
  %i.dy = getelementptr i8, ptr %i.cz, i64 24
  %.val = load ptr, ptr %i.dy, align 8, !tbaa !113
  store ptr %0, ptr %.val, align 8, !tbaa !115
  %i.dz = tail call ptr @PyMem_Malloc(i64 noundef %i.cn) #21 ; 11 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %pmerge.exit.thread, label %.preheader86.i

.preheader86.i:                                   ; preds = %_Py_NewRef.exit85
  %.not115.i = icmp eq i64 %i.cl, 0
  br i1 %.not115.i, label %pmerge.exit.thread96, label %.lr.ph99.lr.ph.i

pmerge.exit.thread96:                             ; preds = %.preheader86.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.dz) #21
  br label %Py_DECREF.exit

pmerge.exit.thread:                               ; preds = %_Py_NewRef.exit85
  %i.eb = tail call ptr @PyErr_NoMemory() #21     ; 0 uses
  br label %bb.bg

.lr.ph99.lr.ph.i:                                 ; preds = %.preheader86.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dz, i8 0, i64 %i.cn, i1 false), !tbaa !122
  %i.ec = icmp eq i64 %.val78, 0
  %unroll_iter173 = and i64 %i.cl, 1152921504606846974
  %i.ed = and i64 %.val78, 1
  %lcmp.mod171.not.not = icmp eq i64 %i.ed, 0
  %lcmp.mod172 = trunc i64 %i.cl to i1
  br label %.lr.ph99.i

.lr.ph99.i.loopexit.unr-lcssa:                    ; preds = %bb.am
  br i1 %lcmp.mod171.not.not, label %.lr.ph112.i.epil.preheader, label %.lr.ph99.i.backedge

.lr.ph112.i.epil.preheader:                       ; preds = %.lr.ph99.i.loopexit.unr-lcssa, %.lr.ph112.i.preheader
  %.159111.i.epil.init = phi i64 [ 0, %.lr.ph112.i.preheader ], [ %i.gh, %.lr.ph99.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.ee = getelementptr [8 x i8], ptr %i.co, i64 %.159111.i.epil.init
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !115 ; 2 uses
  %i.eg = getelementptr [8 x i8], ptr %i.dz, i64 %.159111.i.epil.init ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !122 ; 3 uses
  %i.ei = getelementptr i8, ptr %i.ef, i64 16
  %.val.i90.epil = load i64, ptr %i.ei, align 8, !tbaa !140
  %i.ej = icmp slt i64 %i.eh, %.val.i90.epil
  br i1 %i.ej, label %bb.ad, label %.lr.ph99.i.backedge

bb.ad:                                            ; preds = %.lr.ph112.i.epil.preheader
  %i.ek = getelementptr i8, ptr %i.ef, i64 32
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %i.eh
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !115
  %i.en = icmp eq ptr %i.em, %i.ex
  br i1 %i.en, label %bb.ae, label %.lr.ph99.i.backedge

bb.ae:                                            ; preds = %bb.ad
  %i.eo = add nsw i64 %i.eh, 1
  store i64 %i.eo, ptr %i.eg, align 8, !tbaa !122
  br label %.lr.ph99.i.backedge

.lr.ph99.i:                                       ; preds = %.lr.ph99.i.backedge, %.lr.ph99.lr.ph.i
  %.15798.us.i = phi i64 [ 0, %.lr.ph99.lr.ph.i ], [ %.15798.us.i.be, %.lr.ph99.i.backedge ] ; 4 uses
  %.06297.us.i = phi i64 [ 0, %.lr.ph99.lr.ph.i ], [ %.06297.us.i.be, %.lr.ph99.i.backedge ] ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %i.co, i64 %.15798.us.i
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !115 ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %i.dz, i64 %.15798.us.i
  %i.es = load i64, ptr %i.er, align 8, !tbaa !122 ; 2 uses
  %i.et = getelementptr i8, ptr %i.eq, i64 16
  %.val71.us.i = load i64, ptr %i.et, align 8, !tbaa !140
  %.not69.us.i = icmp slt i64 %i.es, %.val71.us.i
  br i1 %.not69.us.i, label %.lr.ph94.us.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph99.i
  %i.eu = add i64 %.06297.us.i, 1
  br label %.loopexit.us.i

.lr.ph94.us.i:                                    ; preds = %.lr.ph99.i
  %i.ev = getelementptr i8, ptr %i.eq, i64 32
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %i.es
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !115 ; 5 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph161, %.lr.ph94.us.i
  %.05893.us.i = phi i64 [ 0, %.lr.ph94.us.i ], [ %3, %.lr.ph161 ] ; 4 uses
  %i.ey = getelementptr [8 x i8], ptr %i.co, i64 %.05893.us.i
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !115 ; 2 uses
  %i.fa = getelementptr [8 x i8], ptr %i.dz, i64 %.05893.us.i
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !122
  %i.fc = getelementptr i8, ptr %i.ez, i64 16
  %.val.i.us.i = load i64, ptr %i.fc, align 8, !tbaa !140 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ez, i64 32
  %.08.i.us.i158 = add i64 %i.fb, 1               ; 2 uses
  %i.fe = icmp slt i64 %.08.i.us.i158, %.val.i.us.i
  br i1 %i.fe, label %._crit_edge162.a, label %.lr.ph161

bb.ah:                                            ; preds = %._crit_edge162.a
  %.08.i.us.i = add i64 %.08.i.us.i159, 1         ; 2 uses
  %i.ff = icmp slt i64 %.08.i.us.i, %.val.i.us.i
  br i1 %i.ff, label %._crit_edge162.a, label %.lr.ph161, !llvm.loop !426

._crit_edge162.a:                                 ; preds = %bb.ag, %bb.ah
  %.08.i.us.i159 = phi i64 [ %.08.i.us.i, %bb.ah ], [ %.08.i.us.i158, %bb.ag ] ; 2 uses
  %1 = getelementptr [8 x i8], ptr %i.fd, i64 %.08.i.us.i159
  %2 = load ptr, ptr %1, align 8, !tbaa !115
  %exitcond.not.i89.a = icmp eq ptr %2, %i.ex
  br i1 %exitcond.not.i89.a, label %.loopexit.us.i, label %bb.ah, !llvm.loop !426

.lr.ph161:                                        ; preds = %bb.ah, %bb.ag
  %3 = add nuw nsw i64 %.05893.us.i, 1
  %i.fg = icmp eq i64 %.05893.us.i, %.val78
  br i1 %i.fg, label %._crit_edge95.split.us.i, label %bb.ag, !llvm.loop !427

.loopexit.us.i:                                   ; preds = %._crit_edge162.a, %bb.af
  %.163.ph.us.i = phi i64 [ %i.eu, %bb.af ], [ %.06297.us.i, %._crit_edge162.a ] ; 2 uses
  %i.fh = add nuw nsw i64 %.15798.us.i, 1
  %exitcond124.not.i = icmp eq i64 %.15798.us.i, %.val78
  br i1 %exitcond124.not.i, label %tail_contains.exit._crit_edge.i, label %.lr.ph99.i.backedge

.lr.ph99.i.backedge:                              ; preds = %.lr.ph99.i.loopexit.unr-lcssa, %bb.ae, %bb.ad, %.lr.ph112.i.epil.preheader, %.loopexit.us.i
  %.15798.us.i.be = phi i64 [ %i.fh, %.loopexit.us.i ], [ 0, %.lr.ph112.i.epil.preheader ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %.lr.ph99.i.loopexit.unr-lcssa ]
  %.06297.us.i.be = phi i64 [ %.163.ph.us.i, %.loopexit.us.i ], [ 0, %.lr.ph112.i.epil.preheader ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %.lr.ph99.i.loopexit.unr-lcssa ]
  br label %.lr.ph99.i, !llvm.loop !428

._crit_edge95.split.us.i:                         ; preds = %.lr.ph161
  %i.fi = tail call i32 @PyList_Append(ptr noundef nonnull %i.cz, ptr noundef %i.ex) #21
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %pmerge.exit.thread94, label %.lr.ph112.i.preheader

.lr.ph112.i.preheader:                            ; preds = %._crit_edge95.split.us.i
  br i1 %i.ec, label %.lr.ph112.i.epil.preheader, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.lr.ph112.i.preheader, %bb.am
  %.159111.i = phi i64 [ %i.gh, %bb.am ], [ 0, %.lr.ph112.i.preheader ] ; 4 uses
  %niter174 = phi i64 [ %niter174.next.1, %bb.am ], [ 0, %.lr.ph112.i.preheader ]
  %i.fk = getelementptr [8 x i8], ptr %i.co, i64 %.159111.i
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !115 ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.dz, i64 %.159111.i ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !122 ; 3 uses
  %i.fo = getelementptr i8, ptr %i.fl, i64 16
  %.val.i90 = load i64, ptr %i.fo, align 8, !tbaa !140
  %i.fp = icmp slt i64 %i.fn, %.val.i90
  br i1 %i.fp, label %bb.ai, label %.lr.ph112.i.1

bb.ai:                                            ; preds = %.lr.ph112.i
  %i.fq = getelementptr i8, ptr %i.fl, i64 32
  %i.fr = getelementptr [8 x i8], ptr %i.fq, i64 %i.fn
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !115
  %i.ft = icmp eq ptr %i.fs, %i.ex
  br i1 %i.ft, label %bb.aj, label %.lr.ph112.i.1

bb.aj:                                            ; preds = %bb.ai
  %i.fu = add nsw i64 %i.fn, 1
  store i64 %i.fu, ptr %i.fm, align 8, !tbaa !122
  br label %.lr.ph112.i.1

.lr.ph112.i.1:                                    ; preds = %bb.aj, %bb.ai, %.lr.ph112.i
  %i.fv = or disjoint i64 %.159111.i, 1           ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.co, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !115 ; 2 uses
  %i.fy = getelementptr [8 x i8], ptr %i.dz, i64 %i.fv ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !122 ; 3 uses
  %i.ga = getelementptr i8, ptr %i.fx, i64 16
  %.val.i90.1 = load i64, ptr %i.ga, align 8, !tbaa !140
  %i.gb = icmp slt i64 %i.fz, %.val.i90.1
  br i1 %i.gb, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.lr.ph112.i.1
  %i.gc = getelementptr i8, ptr %i.fx, i64 32
  %i.gd = getelementptr [8 x i8], ptr %i.gc, i64 %i.fz
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !115
  %i.gf = icmp eq ptr %i.ge, %i.ex
  br i1 %i.gf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gg = add nsw i64 %i.fz, 1
  store i64 %i.gg, ptr %i.fy, align 8, !tbaa !122
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.lr.ph112.i.1
  %i.gh = add nuw nsw i64 %.159111.i, 2           ; 2 uses
  %niter174.next.1 = add i64 %niter174, 2         ; 2 uses
  %niter174.ncmp.1 = icmp eq i64 %niter174.next.1, %unroll_iter173
  br i1 %niter174.ncmp.1, label %.lr.ph99.i.loopexit.unr-lcssa, label %.lr.ph112.i, !llvm.loop !428

tail_contains.exit._crit_edge.i:                  ; preds = %.loopexit.us.i
  %i.gi = icmp eq i64 %.163.ph.us.i, %i.cl
  br i1 %i.gi, label %pmerge.exit, label %bb.an

bb.an:                                            ; preds = %tail_contains.exit._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.gj = tail call ptr @PyDict_New() #21         ; 14 uses
  %.not.i.i86 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i86, label %set_mro_error.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.an, %.critedge48.i.i
  %storemerge78.i.i = phi i64 [ %i.gy, %.critedge48.i.i ], [ 0, %bb.an ] ; 4 uses
  %i.gk = getelementptr [8 x i8], ptr %i.co, i64 %storemerge78.i.i
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !115 ; 2 uses
  %i.gm = getelementptr [8 x i8], ptr %i.dz, i64 %storemerge78.i.i
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !122 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gl, i64 16
  %.val56.i.i = load i64, ptr %i.go, align 8, !tbaa !140
  %i.gp = icmp slt i64 %i.gn, %.val56.i.i
  br i1 %i.gp, label %bb.ao, label %.critedge48.i.i

bb.ao:                                            ; preds = %.lr.ph.i.i
  %i.gq = getelementptr i8, ptr %i.gl, i64 32
  %i.gr = getelementptr [8 x i8], ptr %i.gq, i64 %i.gn
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !115
  %i.gt = tail call i32 @PyDict_SetItem(ptr noundef nonnull %i.gj, ptr noundef %i.gs, ptr noundef nonnull @_Py_NoneStruct) #21
  %i.gu = icmp sgt i32 %i.gt, -1
  br i1 %i.gu, label %.critedge48.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gv = load i32, ptr %i.gj, align 8, !tbaa !112 ; 2 uses
  %.not.i51.i.i = icmp sgt i32 %i.gv, -1
  br i1 %.not.i51.i.i, label %bb.aq, label %set_mro_error.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.gw = add nsw i32 %i.gv, -1                   ; 2 uses
  store i32 %i.gw, ptr %i.gj, align 8, !tbaa !112
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.ar, label %set_mro_error.exit.i

bb.ar:                                            ; preds = %bb.aq
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.gj) #21
  br label %set_mro_error.exit.i

.critedge48.i.i:                                  ; preds = %bb.ao, %.lr.ph.i.i
  %i.gy = add nuw nsw i64 %storemerge78.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %storemerge78.i.i, %.val78
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i87, label %.lr.ph.i.i, !llvm.loop !429

._crit_edge.i.i87:                                ; preds = %.critedge48.i.i
  %i.gz = getelementptr i8, ptr %i.gj, i64 16
  %.val57.i.i = load i64, ptr %i.gz, align 8, !tbaa !249
  %i.ha = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %i.c, i64 noundef 1000, ptr noundef nonnull @.str.90) #21 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !122
  %i.hb = call i32 @PyDict_Next(ptr noundef nonnull %i.gj, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #21
  %i.hc = icmp ne i32 %i.hb, 0
  %i.hd = icmp ult i32 %i.ha, 1000
  %i.he = select i1 %i.hc, i1 %i.hd, i1 false
  br i1 %i.he, label %.lr.ph82.preheader.i.i, label %._crit_edge83.i.i

.lr.ph82.preheader.i.i:                           ; preds = %._crit_edge.i.i87
  %i.hf = zext nneg i32 %i.ha to i64
  br label %.lr.ph82.i.i

.lr.ph82.i.i:                                     ; preds = %Py_DECREF.exit50.i.i, %.lr.ph82.preheader.i.i
  %.03380.i.i = phi i64 [ %i.id, %Py_DECREF.exit50.i.i ], [ %.val57.i.i, %.lr.ph82.preheader.i.i ]
  %.03479.i.i = phi i64 [ %.2.i.i, %Py_DECREF.exit50.i.i ], [ %i.hf, %.lr.ph82.preheader.i.i ] ; 3 uses
  %i.hg = load ptr, ptr %i.d, align 8, !tbaa !115 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.hh = call i32 @PyObject_GetOptionalAttr(ptr noundef %i.hg, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67864), ptr noundef nonnull %i.a) #21
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.as, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph82.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !115
  br label %class_name.exit.i.i

bb.as:                                            ; preds = %.lr.ph82.i.i
  %i.hj = call ptr @PyObject_Repr(ptr noundef %i.hg) #21
  br label %class_name.exit.i.i

class_name.exit.i.i:                              ; preds = %bb.as, %._crit_edge.i.i.i
  %i.hk = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hj, %bb.as ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not43.i.i = icmp eq ptr %i.hk, null
  br i1 %.not43.i.i, label %Py_XDECREF.exit.i.i, label %bb.at

bb.at:                                            ; preds = %class_name.exit.i.i
  %i.hl = getelementptr i8, ptr %i.hk, i64 8
  %.val.i72.i = load ptr, ptr %i.hl, align 8, !tbaa !126
  %i.hm = getelementptr i8, ptr %.val.i72.i, i64 168
  %.val55.i.i = load i64, ptr %i.hm, align 8, !tbaa !118
  %i.hn = and i64 %.val55.i.i, 268435456
  %.not44.i.i = icmp eq i64 %i.hn, 0
  br i1 %.not44.i.i, label %.thread66.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ho = call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %i.hk) #21 ; 2 uses
  %.not46.i.i = icmp eq ptr %i.ho, null
  br i1 %.not46.i.i, label %bb.av, label %.thread66.i.i

bb.av:                                            ; preds = %bb.au
  %i.hp = load i32, ptr %i.hk, align 8, !tbaa !112 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.hp, -1
  br i1 %.not.i.i.i.i, label %bb.aw, label %Py_XDECREF.exit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.hq = add nsw i32 %i.hp, -1                   ; 2 uses
  store i32 %i.hq, ptr %i.hk, align 8, !tbaa !112
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.ax, label %Py_XDECREF.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  call void @_Py_Dealloc(ptr noundef nonnull %i.hk) #21
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %class_name.exit.i.i, %bb.ax, %bb.aw, %bb.av
  %i.hs = load i32, ptr %i.gj, align 8, !tbaa !112 ; 2 uses
  %.not.i49.i.i = icmp sgt i32 %i.hs, -1
  br i1 %.not.i49.i.i, label %bb.ay, label %set_mro_error.exit.i

bb.ay:                                            ; preds = %Py_XDECREF.exit.i.i
  %i.ht = add nsw i32 %i.hs, -1                   ; 2 uses
  store i32 %i.ht, ptr %i.gj, align 8, !tbaa !112
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.az, label %set_mro_error.exit.i

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %i.gj) #21
  br label %set_mro_error.exit.i

.thread66.i.i:                                    ; preds = %bb.au, %bb.at
  %.069.i.i = phi ptr [ %i.ho, %bb.au ], [ @.str.91, %bb.at ]
  %i.hv = getelementptr i8, ptr %i.c, i64 %.03479.i.i
  %i.hw = sub nuw nsw i64 1000, %.03479.i.i
  %i.hx = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef %i.hv, i64 noundef %i.hw, ptr noundef nonnull @.str.92, ptr noundef nonnull %.069.i.i) #21
  %i.hy = sext i32 %i.hx to i64
end_hunk_0
