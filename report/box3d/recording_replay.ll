Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/recording_replay?download=true
inline.NumInlined: 900
inline.NumDeleted: 193
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@b3RecTagLookup_insert_raw:bb.a
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.cp
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !177
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.k, ptr %i.dc, align 8, !tbaa !503
  br label %bb.p

bb.h:                                             ; preds = %bb.a
  br i1 %4, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.n
  %i.de = phi i16 [ %.pre, %bb.n ], [ %i.o, %.preheader ] ; 2 uses
  %.0 = phi i64 [ %i.ea, %bb.n ], [ %i.k, %.preheader ] ; 2 uses
  %i.df = and i16 %i.de, -4096
  %i.dg = icmp eq i16 %i.df, %i.h
  br i1 %i.dg, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !104
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %.0 ; 3 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !168
  %i.dk = icmp eq i64 %i.dj, %2
  br i1 %i.dk, label %bb.k, label %bb.m, !prof !169

bb.k:                                             ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.0
  br i1 %5, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.dm = load i32, ptr %3, align 4, !tbaa !32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !170
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k
  store ptr %i.di, ptr %0, align 8, !tbaa !502
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !176
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.j
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !177
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.k, ptr %i.ds, align 8, !tbaa !503
  br label %bb.p

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.dt = and i16 %i.de, 2047                     ; 2 uses
  %i.du = icmp eq i16 %i.dt, 2047
  br i1 %i.du, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dv = zext nneg i16 %i.dt to i64              ; 2 uses
  %i.dw = add nuw nsw i64 %i.dv, 1
  %i.dx = mul nuw nsw i64 %i.dw, %i.dv
  %i.dy = lshr i64 %i.dx, 1
  %i.dz = add i64 %i.dy, %i.k
  %i.ea = and i64 %i.dz, %i.j                     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ea
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !84
  br label %bb.i

.thread:                                          ; preds = %bb.m, %bb.h
  %i.eb = load i64, ptr %1, align 8, !tbaa !179
  %i.ec = add i64 %i.eb, 1                        ; 2 uses
  %i.ed = uitofp i64 %i.ec to double
  %i.ee = icmp ne i64 %i.j, 0
  %i.ef = zext i1 %i.ee to i64
  %i.eg = add i64 %i.j, %i.ef
  %i.eh = uitofp i64 %i.eg to double
  %i.ei = fmul nnan double %i.eh, 9.000000e-01
  %i.ej = fcmp olt double %i.ei, %i.ed
  br i1 %i.ej, label %.critedge86, label %bb.o, !prof !178

bb.o:                                             ; preds = %.thread
  %i.ek = add i64 %i.k, 1
  %i.el = and i64 %i.ek, %i.j                     ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !84
  %i.eo = icmp eq i16 %i.en, 0
  br i1 %i.eo, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.o, %.lr.ph.i.1
  %indvars.iv.next159 = phi i64 [ %indvars.iv.next.1, %.lr.ph.i.1 ], [ 2, %bb.o ] ; 5 uses
  %.011.i158 = phi i64 [ %i.ev, %.lr.ph.i.1 ], [ 1, %bb.o ]
  %i.ep = add i64 %.011.i158, %indvars.iv.next159 ; 2 uses
  %i.eq = add i64 %i.ep, %i.k
  %i.er = and i64 %i.eq, %i.j                     ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !84
  %i.eu = icmp eq i16 %i.et, 0
  br i1 %i.eu, label %.loopexit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %.not.i = icmp eq i64 %indvars.iv.next159, 2046
  br i1 %.not.i, label %.critedge86, label %.lr.ph.i.preheader.1, !prof !499

.lr.ph.i.preheader.1:                             ; preds = %.lr.ph.i
  %indvars.iv.next = or disjoint i64 %indvars.iv.next159, 1 ; 2 uses
  %i.ev = add i64 %i.ep, %indvars.iv.next         ; 2 uses
  %i.ew = add i64 %i.ev, %i.k
  %i.ex = and i64 %i.ew, %i.j                     ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !84
  %i.fa = icmp eq i16 %i.ez, 0
  br i1 %i.fa, label %.loopexit.loopexit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next159, 2
  br label %.lr.ph.i.preheader

.critedge86:                                      ; preds = %.lr.ph.i, %.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !504
  br label %bb.p

.loopexit.loopexit:                               ; preds = %.lr.ph.i.preheader.1, %.lr.ph.i.preheader
  %indvars.iv.next159.lcssa = phi i64 [ %indvars.iv.next159, %.lr.ph.i.preheader ], [ %indvars.iv.next, %.lr.ph.i.preheader.1 ]
  %.lcssa168 = phi i64 [ %i.er, %.lr.ph.i.preheader ], [ %i.ex, %.lr.ph.i.preheader.1 ]
  %i.fb = trunc nuw nsw i64 %indvars.iv.next159.lcssa to i16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.o
  %.197.ph = phi i64 [ %i.el, %bb.o ], [ %.lcssa168, %.loopexit.loopexit ] ; 2 uses
  %.095.ph = phi i16 [ 1, %bb.o ], [ %i.fb, %.loopexit.loopexit ] ; 3 uses
  %i.fc = and i16 %i.o, 2047                      ; 3 uses
  %.not16.i = icmp ugt i16 %i.fc, %.095.ph
  br i1 %.not16.i, label %b3RecTagLookup_find_insert_location_in_chain.exit, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.loopexit, %.lr.ph.i88
  %i.fd = phi i16 [ %i.fm, %.lr.ph.i88 ], [ %i.fc, %.loopexit ]
  %i.fe = zext nneg i16 %i.fd to i64              ; 2 uses
  %i.ff = add nuw nsw i64 %i.fe, 1
  %i.fg = mul nuw nsw i64 %i.ff, %i.fe
  %i.fh = lshr i64 %i.fg, 1
  %i.fi = add i64 %i.fh, %i.k
  %i.fj = and i64 %i.fi, %i.j                     ; 2 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !84
  %i.fm = and i16 %i.fl, 2047                     ; 3 uses
  %.not.i89 = icmp ugt i16 %i.fm, %.095.ph
  br i1 %.not.i89, label %b3RecTagLookup_find_insert_location_in_chain.exit, label %.lr.ph.i88

b3RecTagLookup_find_insert_location_in_chain.exit: ; preds = %.lr.ph.i88, %.loopexit
  %.pre-phi130 = phi i16 [ %i.fc, %.loopexit ], [ %i.fm, %.lr.ph.i88 ]
  %.010.lcssa.i = phi i64 [ %i.k, %.loopexit ], [ %i.fj, %.lr.ph.i88 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !104
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %.197.ph ; 3 uses
  store i64 %2, ptr %i.fp, align 8, !tbaa !168
  %i.fq = load i32, ptr %3, align 4, !tbaa !32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !170
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.010.lcssa.i ; 2 uses
  %i.ft = or disjoint i16 %.pre-phi130, %i.h
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.197.ph ; 2 uses
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !84
  %i.fv = load i16, ptr %i.fs, align 2, !tbaa !84
  %i.fw = and i16 %i.fv, -2048
  %i.fx = or i16 %i.fw, %.095.ph
  store i16 %i.fx, ptr %i.fs, align 2, !tbaa !84
  store i64 %i.ec, ptr %1, align 8, !tbaa !179
  store ptr %i.fp, ptr %0, align 8, !tbaa !502
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fu, ptr %i.fy, align 8, !tbaa !176
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.j
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  store ptr %i.gb, ptr %i.fz, align 8, !tbaa !177
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.k, ptr %i.gc, align 8, !tbaa !503
  br label %bb.p

bb.p:                                             ; preds = %.critedge86, %b3RecTagLookup_find_insert_location_in_chain.exit, %.critedge, %bb.g, %b3RecTagLookup_evict.exit
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noundef zeroext i1 @b3RecTagLookup_rehash(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #15 {
bb.a:
  %2 = alloca %struct.b3RecTagLookup, align 8     ; 12 uses
  %3 = alloca %struct.b3RecTagLookup_itr, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 0, ptr %2, align 8
  %i.b = add i64 %1, -1                           ; 3 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !103
  %i.c = mul i64 %i.b, 18
  %i.d = add i64 %i.c, 26
  %i.e = tail call ptr @b3Alloc(i64 noundef %i.d) #23 ; 2 uses
  %.not45.not = icmp eq ptr %i.e, null
  br i1 %.not45.not, label %.loopexit, label %.lr.ph49, !prof !506

.lr.ph49:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph49, %bb.h
  %i.m = phi ptr [ %i.e, %.lr.ph49 ], [ %i.au, %bb.h ] ; 2 uses
  %i.n = phi i64 [ %i.b, %.lr.ph49 ], [ %i.ar, %bb.h ]
  %.02446 = phi i64 [ %1, %.lr.ph49 ], [ %i.r, %bb.h ] ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !104
  %i.o = shl i64 %i.n, 4
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 16       ; 3 uses
  store ptr %i.q, ptr %i.g, align 8, !tbaa !105
  %i.r = shl i64 %.02446, 1                       ; 3 uses
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.q, i8 0, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.02446
  store i16 1, ptr %i.t, align 2, !tbaa !84
  %.val42 = load i64, ptr %i.h, align 8, !tbaa !103 ; 2 uses
  %i.u = add i64 %.val42, 1
  %.not50 = icmp ult i64 %i.u, 2
  br i1 %.not50, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.pre51 = load ptr, ptr %i.i, align 8, !tbaa !105
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.val52 = phi i64 [ %.val, %bb.d ], [ %.val42, %.lr.ph.preheader ]
  %4 = phi ptr [ %5, %bb.d ], [ %.pre51, %.lr.ph.preheader ] ; 2 uses
  %.043 = phi i64 [ %i.ac, %bb.d ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %.043
  %i.w = load i16, ptr %i.v, align 2, !tbaa !84
  %.not28 = icmp eq i16 %i.w, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.043 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call fastcc void @b3RecTagLookup_insert_raw(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %2, i64 noundef %i.z, ptr noundef nonnull %i.aa, i1 noundef zeroext true, i1 noundef zeroext false)
  %.val30 = load ptr, ptr %i.k, align 8, !tbaa !176
  %.val31 = load ptr, ptr %i.l, align 8, !tbaa !177
  %i.ab = icmp eq ptr %.val30, %.val31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.ab, label %._crit_edge.loopexit, label %._crit_edge51

._crit_edge51:                                    ; preds = %bb.c
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !105
  %.val.pre = load i64, ptr %i.h, align 8, !tbaa !103
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge51, %.lr.ph
  %.val = phi i64 [ %.val52, %.lr.ph ], [ %.val.pre, %._crit_edge51 ] ; 3 uses
  %5 = phi ptr [ %4, %.lr.ph ], [ %.pre, %._crit_edge51 ]
  %i.ac = add nuw i64 %.043, 1                    ; 2 uses
  %i.ad = icmp ne i64 %.val, 0
  %i.ae = zext i1 %i.ad to i64
  %i.af = add i64 %.val, %i.ae
  %i.ag = icmp ult i64 %i.ac, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !505

._crit_edge.loopexit:                             ; preds = %bb.d, %bb.c
  %.pre.a = load i64, ptr %2, align 8, !tbaa !179
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ah = phi i64 [ %.pre.a, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.ai = load i64, ptr %0, align 8, !tbaa !179
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.e, !prof !178

bb.e:                                             ; preds = %._crit_edge
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !103 ; 2 uses
  %.not29 = icmp eq i64 %i.ak, 0
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !104
  %i.am = mul i64 %i.ak, 18
  %i.an = add i64 %i.am, 26
  tail call void @b3Free(ptr noundef %i.al, i64 noundef %i.an) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !508
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !104
  %.val34 = load i64, ptr %i.a, align 8, !tbaa !103
  %i.ap = mul i64 %.val34, 18
  %i.aq = add i64 %i.ap, 26
  tail call void @b3Free(ptr noundef %i.ao, i64 noundef %i.aq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ar = add i64 %i.r, -1                        ; 3 uses
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !103
  %i.as = mul i64 %i.ar, 18
  %i.at = add i64 %i.as, 26
  %i.au = tail call ptr @b3Alloc(i64 noundef %i.at) #23 ; 2 uses
  %.not.not = icmp eq ptr %i.au, null
  br i1 %.not.not, label %.loopexit, label %bb.b, !prof !509

.loopexit:                                        ; preds = %bb.h, %bb.a, %bb.g
  %.not41 = phi i1 [ true, %bb.g ], [ false, %bb.a ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.not41
}

declare i64 @b3MakeBodyId(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @b3Hash64NonZero(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @b3AppendGeometry(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @b3SerializeWorld(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @b3GrowAlloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @b3RecDispatch_CreateBody(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = sext i32 %i.f to i64
  %i.h = icmp sgt i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  br i1 %i.h, label %b3RecRdrCheck.exit.thread.i.i, label %b3RecRdrCheck.exit.i.i

b3RecRdrCheck.exit.thread.i.i:                    ; preds = %bb.a
  store i8 0, ptr %i.i, align 4, !tbaa !25
  br label %b3RecR_BODYID.exit

b3RecRdrCheck.exit.i.i:                           ; preds = %bb.a
  %.pre.i.i = load i8, ptr %i.i, align 4, !tbaa !25, !range !26
  %i.j = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.j, label %bb.b, label %b3RecR_BODYID.exit

bb.b:                                             ; preds = %b3RecRdrCheck.exit.i.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !27
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c
  %i.m = load i64, ptr %i.l, align 1
  %i.n = add nsw i32 %i.b, 8
  store i32 %i.n, ptr %i.a, align 4, !tbaa !23
  br label %b3RecR_BODYID.exit

b3RecR_BODYID.exit:                               ; preds = %b3RecRdrCheck.exit.thread.i.i, %b3RecRdrCheck.exit.i.i, %bb.b
  %.0.i.i = phi i64 [ %i.m, %bb.b ], [ 0, %b3RecRdrCheck.exit.i.i ], [ 0, %b3RecRdrCheck.exit.thread.i.i ] ; 2 uses
  %i.o = lshr i64 %.0.i.i, 32
  %.sroa.3.0.insert.ext.i.i = and i64 %.0.i.i, 65535 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.p, align 8
  %i.s = tail call i64 @b3CreateBody(i32 %i.r, ptr noundef nonnull %i.q) #23 ; 3 uses
  %.sroa.02.0.extract.trunc.i = trunc i64 %i.s to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i = lshr i64 %i.s, 48 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc nuw i64 %i.o to i32 ; 2 uses
  %.not.i.i = icmp eq i32 %.sroa.02.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i
  %.not9.i.i = icmp eq i64 %.sroa.24.0.extract.shift.i, %.sroa.3.0.insert.ext.i.i
  %or.cond.i.i = and i1 %.not.i.i, %.not9.i.i
  br i1 %or.cond.i.i, label %b3RecCheckBodyId.exit, label %bb.c

bb.c:                                             ; preds = %b3RecR_BODYID.exit
  %.sroa.21.0.extract.trunc.i = trunc nuw nsw i64 %.sroa.3.0.insert.ext.i.i to i32
  %.sroa.24.0.extract.trunc.i = trunc nuw nsw i64 %.sroa.24.0.extract.shift.i to i32
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull @.str.17, i32 noundef %.sroa.0.0.extract.trunc.i, i32 noundef range(i32 0, 65536) %.sroa.21.0.extract.trunc.i, i32 noundef %.sroa.02.0.extract.trunc.i, i32 noundef range(i32 0, 65536) %.sroa.24.0.extract.trunc.i) ; 0 uses
  store i8 0, ptr %i.i, align 4, !tbaa !25
  br label %b3RecCheckBodyId.exit

b3RecCheckBodyId.exit:                            ; preds = %b3RecR_BODYID.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !136  ; 4 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %b3RecCheckBodyId.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 92 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 88 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !128  ; 5 uses
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !32  ; 3 uses
  %.not.i.not.i = icmp slt i32 %i.z, %i.aa
  br i1 %.not.i.not.i, label %.b3RecGrow.exit_crit_edge.i, label %bb.e

.b3RecGrow.exit_crit_edge.i:                      ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !116
  br label %b3RecTrackBodyCreate.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i32 %i.z, 1
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = shl nsw i32 %i.aa, 1
  %spec.select.i.i = select i1 %i.ac, i32 8, i32 %i.ad
  %.0.i.i8 = tail call i32 @llvm.smax.i32(i32 %spec.select.i.i, i32 %i.ab) ; 2 uses
  %i.ae = sext i32 %.0.i.i8 to i64
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = tail call ptr @b3Alloc(i64 noundef %i.af) #23 ; 3 uses
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !33  ; 3 uses
  %.not26.i.i = icmp eq ptr %i.ah, null
  br i1 %.not26.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp sgt i32 %i.z, 0
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = zext nneg i32 %i.z to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.ah, i64 %i.ak, i1 false)
  %.pre.i.i9 = load ptr, ptr %i.w, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = phi ptr [ %.pre.i.i9, %bb.g ], [ %i.ah, %bb.f ]
  %i.am = load i32, ptr %i.x, align 4, !tbaa !32
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 3
  tail call void @b3Free(ptr noundef %i.al, i64 noundef %i.ao) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !33
  store i32 %.0.i.i8, ptr %i.x, align 4, !tbaa !32
  %.pre7.i = load i32, ptr %i.y, align 8, !tbaa !128
  br label %b3RecTrackBodyCreate.exit

b3RecTrackBodyCreate.exit:                        ; preds = %.b3RecGrow.exit_crit_edge.i, %bb.i
  %i.ap = phi i32 [ %i.z, %.b3RecGrow.exit_crit_edge.i ], [ %.pre7.i, %bb.i ]
  %i.aq = phi ptr [ %.pre.i, %.b3RecGrow.exit_crit_edge.i ], [ %i.ag, %bb.i ]
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  store i64 %i.s, ptr %i.as, align 4
  %i.at = load i32, ptr %i.y, align 8, !tbaa !128
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.y, align 8, !tbaa !128
  br label %bb.j

bb.j:                                             ; preds = %b3RecTrackBodyCreate.exit, %b3RecCheckBodyId.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3RecDispatch_DestroyBody(i64 %.0.val, i16 %.16.val, ptr nofree readonly captures(address_is_null) %.24.val) unnamed_addr #3 {
bb.a:
  %i.a = add i16 %.16.val, -1                     ; 2 uses
  %.not = icmp eq ptr %.24.val, null
  br i1 %.not, label %b3RecTrackBodyDestroy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
