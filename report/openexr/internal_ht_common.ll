inline.NumInlined: 84
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z16make_channel_mapiP25exr_coding_channel_info_tRSt6vectorI21CodestreamChannelInfoSaIS2_EE:bb.a
  %.lcssa227 = phi i32 [ %i.ca, %bb.y ], [ %i.dn, %bb.ae ], [ %i.dn, %bb.ad ], [ %i.dn, %bb.ac ], [ %i.dn, %bb.ab ], [ %i.dn, %bb.aa ], [ %i.dn, %bb.z ], [ %i.dn, %.preheader155.1 ] ; 2 uses
  %.lcssa226 = phi i32 [ %i.cc, %bb.y ], [ %i.dp, %bb.ae ], [ %i.dp, %bb.ad ], [ %i.dp, %bb.ac ], [ %i.dp, %bb.ab ], [ %i.dp, %bb.aa ], [ %i.dp, %bb.z ], [ %i.dp, %.preheader155.1 ] ; 2 uses
  %.lcssa = phi i32 [ %i.ce, %bb.y ], [ %i.dr, %bb.ae ], [ %i.dr, %bb.ad ], [ %i.dr, %bb.ac ], [ %i.dr, %bb.ab ], [ %i.dr, %bb.aa ], [ %i.dr, %bb.z ], [ %i.dr, %.preheader155.1 ] ; 2 uses
  br i1 %.lcssa228, label %bb.af, label %.preheader

.preheader:                                       ; preds = %bb.s
  %.not179 = icmp eq i32 %0, 0
  br i1 %.not179, label %.loopexit, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader
  %i.bx = load ptr, ptr %2, align 8, !tbaa !12    ; 3 uses
  %i.by = icmp eq i32 %0, 1
  br i1 %i.by, label %.epil.preheader, label %.lr.ph174.new

.lr.ph174.new:                                    ; preds = %.lr.ph174
  %unroll_iter = and i64 %i.a, -2
  br label %bb.ak

.preheader155:                                    ; preds = %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit, %.loopexit156
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !21 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !22 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = load i32, ptr %i.cd, align 16, !tbaa !25 ; 3 uses
  %i.cf = icmp sgt i32 %i.ca, -1
  %i.cg = icmp sgt i32 %i.cc, -1
  %or.cond = select i1 %i.cf, i1 %i.cg, i1 false
  %i.ch = icmp sgt i32 %i.ce, -1
  %or.cond3 = select i1 %or.cond, i1 %i.ch, i1 false
  br i1 %or.cond3, label %bb.t, label %.preheader155.1

bb.t:                                             ; preds = %.preheader155
  %i.ci = zext nneg i32 %i.ca to i64
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 26
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !26 ; 2 uses
  %i.cm = zext nneg i32 %i.cc to i64
  %i.cn = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 26
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !26
  %i.cq = icmp eq i16 %i.cl, %i.cp
  br i1 %i.cq, label %bb.u, label %.preheader155.1

bb.u:                                             ; preds = %bb.t
  %i.cr = zext nneg i32 %i.ce to i64
  %i.cs = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.cr ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 26
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !26
  %i.cv = icmp eq i16 %i.cl, %i.cu
  br i1 %i.cv, label %bb.v, label %.preheader155.1

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !27 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !27
  %i.da = icmp eq i32 %i.cx, %i.cz
  br i1 %i.da, label %bb.w, label %.preheader155.1

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !27
  %i.dd = icmp eq i32 %i.cx, %i.dc
  br i1 %i.dd, label %bb.x, label %.preheader155.1

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !28
  %i.di = icmp eq i32 %i.df, %i.dh
  br i1 %i.di, label %bb.y, label %.preheader155.1

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !28
  %i.dl = icmp eq i32 %i.df, %i.dk
  br i1 %i.dl, label %bb.s, label %.preheader155.1

.preheader155.1:                                  ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %.preheader155, %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.dn = load i32, ptr %i.dm, align 16, !tbaa !21 ; 9 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !22 ; 9 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !25 ; 9 uses
  %i.ds = icmp sgt i32 %i.dn, -1
  %i.dt = icmp sgt i32 %i.dp, -1
  %or.cond.1 = select i1 %i.ds, i1 %i.dt, i1 false
  %i.du = icmp sgt i32 %i.dr, -1
  %or.cond3.1 = select i1 %or.cond.1, i1 %i.du, i1 false
  br i1 %or.cond3.1, label %bb.z, label %bb.s

bb.z:                                             ; preds = %.preheader155.1
  %i.dv = zext nneg i32 %i.dn to i64
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.dv ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 26
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !26 ; 2 uses
  %i.dz = zext nneg i32 %i.dp to i64
  %i.ea = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.dz ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !26
  %i.ed = icmp eq i16 %i.dy, %i.ec
  br i1 %i.ed, label %bb.aa, label %bb.s

bb.aa:                                            ; preds = %bb.z
  %i.ee = zext nneg i32 %i.dr to i64
  %i.ef = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.ee ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 26
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !26
  %i.ei = icmp eq i16 %i.dy, %i.eh
  br i1 %i.ei, label %bb.ab, label %bb.s

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !27 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.em = load i32, ptr %i.el, align 8, !tbaa !27
  %i.en = icmp eq i32 %i.ek, %i.em
  br i1 %i.en, label %bb.ac, label %bb.s

bb.ac:                                            ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !27
  %i.eq = icmp eq i32 %i.ek, %i.ep
  br i1 %i.eq, label %bb.ad, label %bb.s

bb.ad:                                            ; preds = %bb.ac
  %i.er = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %i.es = load i32, ptr %i.er, align 4, !tbaa !28 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !28
  %i.ev = icmp eq i32 %i.es, %i.eu
  br i1 %i.ev, label %bb.ae, label %bb.s

bb.ae:                                            ; preds = %bb.ad
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !28
  %i.ey = icmp eq i32 %i.es, %i.ex
  br label %bb.s

bb.af:                                            ; preds = %bb.s
  %i.ez = load ptr, ptr %2, align 8, !tbaa !12    ; 4 uses
  store i32 %.lcssa227, ptr %i.ez, align 8, !tbaa !29
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i32 %.lcssa226, ptr %i.fa, align 8, !tbaa !29
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  store i32 %.lcssa, ptr %i.fb, align 8, !tbaa !29
  br i1 %i.m, label %.lr.ph178.preheader, label %.loopexit

.lr.ph178.preheader:                              ; preds = %bb.af
  %i.fc = zext i32 %.lcssa to i64
  %i.fd = zext i32 %.lcssa226 to i64
  %i.fe = zext i32 %.lcssa227 to i64
  %wide.trip.count193 = zext nneg i32 %0 to i64
  br label %.lr.ph178

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %bb.aj
  %indvars.iv190 = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next191, %bb.aj ] ; 6 uses
  %.0124176 = phi i32 [ 0, %.lr.ph178.preheader ], [ %i.fv, %bb.aj ] ; 2 uses
  %.0125175 = phi i32 [ 3, %.lr.ph178.preheader ], [ %.1, %bb.aj ] ; 5 uses
  %i.ff = icmp eq i64 %indvars.iv190, %i.fe
  br i1 %i.ff, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph178
  %i.fg = icmp eq i64 %indvars.iv190, %i.fd
  br i1 %i.fg, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fh = icmp eq i64 %indvars.iv190, %i.fc
  br i1 %i.fh, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = add nsw i32 %.0125175, 1
  %i.fj = sext i32 %.0125175 to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %.lr.ph178, %bb.ai
  %.1 = phi i32 [ %i.fi, %bb.ai ], [ %.0125175, %.lr.ph178 ], [ %.0125175, %bb.ag ], [ %.0125175, %bb.ah ]
  %.0122 = phi i64 [ %i.fj, %bb.ai ], [ 0, %.lr.ph178 ], [ 1, %bb.ag ], [ 2, %bb.ah ]
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %.0122 ; 2 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv190 to i32
  store i32 %i.fl, ptr %i.fk, align 8, !tbaa !29
  %i.fm = sext i32 %.0124176 to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !31
  %i.fo = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %indvars.iv190 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 25
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !33
  %i.ft = sext i8 %i.fs to i32
  %i.fu = mul nsw i32 %i.fq, %i.ft
  %i.fv = add nsw i32 %i.fu, %.0124176
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count193
  br i1 %exitcond194.not, label %.loopexit, label %.lr.ph178, !llvm.loop !34

bb.ak:                                            ; preds = %bb.ak, %.lr.ph174.new
  %.0173 = phi i64 [ 0, %.lr.ph174.new ], [ %i.gt, %bb.ak ] ; 5 uses
  %.0121172 = phi i32 [ 0, %.lr.ph174.new ], [ %i.gs, %bb.ak ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph174.new ], [ %niter.next.1, %bb.ak ]
  %i.fw = trunc i64 %.0173 to i32
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %.0173 ; 2 uses
  store i32 %i.fw, ptr %i.fx, align 8, !tbaa !29
  %i.fy = sext i32 %.0121172 to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !31
  %i.ga = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %.0173 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 25
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !33
  %i.gf = sext i8 %i.ge to i32
  %i.gg = mul nsw i32 %i.gc, %i.gf
  %i.gh = add nsw i32 %i.gg, %.0121172            ; 2 uses
  %4 = or disjoint i64 %.0173, 1                  ; 3 uses
  %5 = trunc i64 %4 to i32
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %4 ; 2 uses
  store i32 %5, ptr %i.gi, align 8, !tbaa !29
  %i.gj = sext i32 %i.gh to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !31
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %4 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !32
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 25
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !33
  %i.gq = sext i8 %i.gp to i32
  %i.gr = mul nsw i32 %i.gn, %i.gq
  %i.gs = add nsw i32 %i.gr, %i.gh                ; 2 uses
  %i.gt = add nuw i64 %.0173, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit225.unr-lcssa, label %bb.ak, !llvm.loop !35

.loopexit.loopexit225.unr-lcssa:                  ; preds = %bb.ak
  %i.gu = and i32 %0, 1
  %lcmp.mod.not = icmp eq i32 %i.gu, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit225.unr-lcssa, %.lr.ph174
  %.0173.epil.init = phi i64 [ 0, %.lr.ph174 ], [ %i.gt, %.loopexit.loopexit225.unr-lcssa ] ; 2 uses
  %.0121172.epil.init = phi i32 [ 0, %.lr.ph174 ], [ %i.gs, %.loopexit.loopexit225.unr-lcssa ]
  %lcmp.mod229 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.gv = trunc i64 %.0173.epil.init to i32
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %.0173.epil.init ; 2 uses
  store i32 %i.gv, ptr %i.gw, align 8, !tbaa !29
  %i.gx = sext i32 %.0121172.epil.init to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit225.unr-lcssa, %bb.aj, %.preheader, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %.lcssa228
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_Z12write_headerPhmRKSt6vectorI21CodestreamChannelInfoSaIS1_EE(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %gepdiff = add i64 %1, -6
  %i.c = icmp slt i64 %gepdiff, 2
  br i1 %i.c, label %bb.b, label %_ZN12MemoryWriter11push_uint16Et.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #15
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.j, %bb.g, %bb.d
  %.sink = phi ptr [ %i.aq, %bb.l ], [ %i.z, %bb.j ], [ %i.v, %bb.g ], [ %i.d, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.aa, %bb.j ], [ %i.w, %bb.g ], [ %i.e, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #13
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryWriter11push_uint16Et.exit:            ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = load ptr, ptr %2, align 8, !tbaa !12
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.g, %i.i                       ; 2 uses
  %i.k = lshr exact i64 %i.j, 4
  %i.l = lshr i64 %i.j, 12
  %i.m = trunc i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.m, ptr %i.a, align 1, !tbaa !36
  %i.o = trunc i64 %i.k to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 %i.o, ptr %i.n, align 1, !tbaa !36
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.r = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %.not = icmp eq ptr %i.q, %i.r
  br i1 %.not, label %._crit_edge, label %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader

_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader: ; preds = %_ZN12MemoryWriter11push_uint16Et.exit
  %i.s = add i64 %1, -8
  %i.t = lshr i64 %i.s, 1                         ; 2 uses
  %exitcond32 = icmp eq i64 %i.t, 0
  br i1 %exitcond32, label %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit._crit_edge, label %_ZN12MemoryWriter11push_uint16Et.exit10

._crit_edge:                                      ; preds = %_ZN12MemoryWriter11push_uint16Et.exit10, %_ZN12MemoryWriter11push_uint16Et.exit
  %.sroa.5.0.lcssa = phi ptr [ %i.p, %_ZN12MemoryWriter11push_uint16Et.exit ], [ %i.az, %_ZN12MemoryWriter11push_uint16Et.exit10 ]
  %i.u = icmp slt i64 %1, 2
  br i1 %i.u, label %bb.e, label %_ZN12MemoryWriter11push_uint16Et.exit9

bb.e:                                             ; preds = %._crit_edge
  %i.v = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.8)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryWriter11push_uint16Et.exit9:           ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 72, ptr %0, align 1, !tbaa !36
  store i8 84, ptr %i.x, align 1, !tbaa !36
  %i.y = icmp samesign ult i64 %1, 6
  br i1 %i.y, label %bb.h, label %_ZN12MemoryWriter11push_uint32Ej.exit

bb.h:                                             ; preds = %_ZN12MemoryWriter11push_uint16Et.exit9
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @.str.8)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryWriter11push_uint32Ej.exit:            ; preds = %_ZN12MemoryWriter11push_uint16Et.exit9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ac = ptrtoint ptr %.sroa.5.0.lcssa to i64
  %i.ad = ptrtoint ptr %i.a to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = lshr i64 %i.ae, 24
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !36
  %i.ai = lshr i64 %i.ae, 16
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !36
  %i.al = lshr i64 %i.ae, 8
  %i.am = trunc i64 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !36
  %i.ao = trunc i64 %i.ae to i8
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !36
  %i.ap = add i64 %i.ae, 6
  ret i64 %i.ap

_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit: ; preds = %_ZN12MemoryWriter11push_uint16Et.exit10
  %exitcond = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond, label %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit._crit_edge, label %_ZN12MemoryWriter11push_uint16Et.exit10, !llvm.loop !37

_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit._crit_edge: ; preds = %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull @.str.8)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #15
  unreachable

bb.l:                                             ; preds = %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit._crit_edge
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryWriter11push_uint16Et.exit10:          ; preds = %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit
  %.sroa.5.02834 = phi ptr [ %i.az, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit ], [ %i.p, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader ] ; 3 uses
  %.02933 = phi i64 [ %i.ba, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit ], [ 0, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader ] ; 2 uses
  %i.as = phi ptr [ %i.bc, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit ], [ %i.r, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.02933
  %i.au = load i32, ptr %i.at, align 8, !tbaa !29 ; 2 uses
  %i.av = lshr i32 %i.au, 8
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.02834, i64 1
  store i8 %i.aw, ptr %.sroa.5.02834, align 1, !tbaa !36
  %i.ay = trunc i32 %i.au to i8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.5.02834, i64 2 ; 2 uses
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !36
  %i.ba = add nuw nsw i64 %.02933, 1              ; 3 uses
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.bc = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
end_hunk_0
