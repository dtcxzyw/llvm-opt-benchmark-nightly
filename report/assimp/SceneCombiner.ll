inline.NumInlined: 1372
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN10aiMetadataC2ERKS_:bb.a
  %.pre = load i32, ptr %0, align 8
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %.lr.ph.split, %bb.b
  %i.af = phi i32 [ %i.u, %.lr.ph.split ], [ %.pre, %bb.b ] ; 3 uses
  %i.ag = add nuw nsw i64 %.078, 1                ; 2 uses
  %i.ah = zext i32 %i.af to i64                   ; 3 uses
  %i.ai = icmp samesign ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.split, label %._crit_edge, !llvm.loop !114

bb.c:                                             ; preds = %._crit_edge.thread96, %._crit_edge
  %i.aj = phi ptr [ %i.q, %._crit_edge.thread96 ], [ %i.t, %._crit_edge ] ; 4 uses
  %.lcssa7698 = phi i64 [ %i.d, %._crit_edge.thread96 ], [ %i.ah, %._crit_edge ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %.lcssa7698
  %i.al = add nuw nsw i64 %.lcssa7698, 1152921504606846975
  %i.am = and i64 %i.al, 1152921504606846975
  %xtraiter = and i64 %.lcssa7698, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %i.an = phi ptr [ %i.ap, %.prol.preheader ], [ %i.aj, %bb.c ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  store i32 10, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !115

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.unr = phi ptr [ %i.aj, %bb.c ], [ %i.ap, %.prol.preheader ]
  %i.aq = icmp samesign ult i64 %i.am, 7
  br i1 %i.aq, label %.lr.ph84, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ar = phi ptr [ %i.bh, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 10, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i32 10, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i32 10, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr null, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i32 10, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i32 10, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store ptr null, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  store i32 10, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  store ptr null, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  store i32 10, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  store i32 10, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  store ptr null, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 128 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ak
  br i1 %i.bi, label %.lr.ph84, label %.new

.loopexit.thread:                                 ; preds = %._crit_edge.thread, %._crit_edge
  %.ph = phi ptr [ %i.t, %._crit_edge ], [ %i.h, %._crit_edge.thread ]
  store ptr %.ph, ptr %i.c, align 8
  br label %._crit_edge85

.lr.ph84:                                         ; preds = %.new, %.prol.loopexit
  store ptr %i.aj, ptr %i.c, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  br label %bb.d

._crit_edge85:                                    ; preds = %bb.y, %.loopexit.thread
  ret void

bb.d:                                             ; preds = %.lr.ph84, %bb.y
  %.05981 = phi i64 [ 0, %.lr.ph84 ], [ %i.fh, %bb.y ] ; 19 uses
  %i.bn = load ptr, ptr %i.bj, align 8
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %.05981
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.c, align 8
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.05981
  store i32 %i.bp, ptr %i.br, align 8
  %i.bs = load ptr, ptr %i.bj, align 8
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %.05981 ; 11 uses
  %i.bu = load i32, ptr %i.bt, align 8
  switch i32 %i.bu, label %bb.y [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.l
    i32 7, label %bb.n
    i32 8, label %bb.w
    i32 9, label %bb.x
  ]

bb.e:                                             ; preds = %bb.d
  %i.bv = call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #22
  %i.bw = load ptr, ptr %i.c, align 8
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.05981
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bv, ptr %i.by, align 8
  %i.bz = load ptr, ptr %i.c, align 8
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %.05981
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.bj, align 8
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.05981
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load i8, ptr %i.cg, align 1
  store i8 %i.ch, ptr %i.cc, align 1
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %.0.copyload8 = load i32, ptr %i.cj, align 1
  %i.ck = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22 ; 2 uses
  store i32 %.0.copyload8, ptr %i.ck, align 4
  %i.cl = load ptr, ptr %i.c, align 8
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.05981
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.ck, ptr %i.cn, align 8
  br label %bb.y

bb.g:                                             ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %.0.copyload6 = load i64, ptr %i.cp, align 1
  %i.cq = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 2 uses
  store i64 %.0.copyload6, ptr %i.cq, align 8
  %i.cr = load ptr, ptr %i.c, align 8
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.05981
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cq, ptr %i.ct, align 8
  br label %bb.y

bb.h:                                             ; preds = %bb.d
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  %.0.copyload5 = load float, ptr %i.cv, align 1
  %i.cw = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22 ; 2 uses
  store float %.0.copyload5, ptr %i.cw, align 4
  %i.cx = load ptr, ptr %i.c, align 8
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.05981
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cw, ptr %i.cz, align 8
  br label %bb.y

bb.i:                                             ; preds = %bb.d
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  %.0.copyload3 = load double, ptr %i.db, align 1
  %i.dc = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 2 uses
  store double %.0.copyload3, ptr %i.dc, align 8
  %i.dd = load ptr, ptr %i.c, align 8
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %.05981
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dc, ptr %i.df, align 8
  br label %bb.y

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.dg = trunc nuw i64 %.05981 to i32
  %i.dh = load i32, ptr %1, align 8
  %.not.i = icmp ugt i32 %i.dh, %i.dg
  br i1 %.not.i, label %bb.k, label %_ZNK10aiMetadata3GetI8aiStringEEbjRT_.exit

bb.k:                                             ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %i.dk, i32 1023) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dm = zext nneg i32 %spec.select.i.i to i64   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr nonnull align 4 %i.dl, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dm
  store i8 0, ptr %i.dn, align 1
  br label %_ZNK10aiMetadata3GetI8aiStringEEbjRT_.exit

_ZNK10aiMetadata3GetI8aiStringEEbjRT_.exit:       ; preds = %bb.j, %bb.k
  %i.do = phi i32 [ 0, %bb.j ], [ %spec.select.i.i, %bb.k ] ; 2 uses
  %i.dp = call noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #22 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.dq, i8 0, i64 1024, i1 false)
  store i32 %i.do, ptr %i.dp, align 4
  %i.dr = zext nneg i32 %i.do to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dq, ptr nonnull align 4 %i.bm, i64 %i.dr, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  store i8 0, ptr %i.ds, align 1
  %i.dt = load ptr, ptr %i.c, align 8
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %.05981
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dp, ptr %i.dv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.y

bb.l:                                             ; preds = %bb.d
  %i.dw = trunc nuw i64 %.05981 to i32
  %i.dx = load i32, ptr %1, align 8
  %.not.i64 = icmp ugt i32 %i.dx, %i.dw
  br i1 %.not.i64, label %bb.m, label %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbjRT_.exit

bb.m:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8            ; 2 uses
  %i.ea = load <2 x float>, ptr %i.dz, align 4
  %.sroa.6.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.6.0.copyload74 = load float, ptr %.sroa.6.0..sroa_idx73, align 4
  br label %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbjRT_.exit

_ZNK10aiMetadata3GetI10aiVector3tIfEEEbjRT_.exit: ; preds = %bb.l, %bb.m
  %.sroa.6.0 = phi float [ %.sroa.6.0.copyload74, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.eb = phi <2 x float> [ %i.ea, %bb.m ], [ zeroinitializer, %bb.l ]
  %i.ec = call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #22 ; 3 uses
  store <2 x float> %i.eb, ptr %i.ec, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store float %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ed = load ptr, ptr %i.c, align 8
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %.05981
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ec, ptr %i.ef, align 8
  br label %bb.y

bb.n:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 0, ptr %4, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.eg = trunc nuw i64 %.05981 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.eh = load i32, ptr %1, align 8
  %.not.i67 = icmp ugt i32 %i.eh, %i.eg
  br i1 %.not.i67, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ei = load i32, ptr %i.bt, align 8
  %.not7.i69 = icmp eq i32 %i.ei, 7
  br i1 %.not7.i69, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  invoke void @_ZN10aiMetadataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ek)
          to label %.noexc unwind label %bb.t, !inline_history !116

.noexc:                                           ; preds = %bb.p
  %i.el = load i32, ptr %4, align 8
  %i.em = load i32, ptr %2, align 8
  store i32 %i.em, ptr %4, align 8
  store i32 %i.el, ptr %2, align 8
  %i.en = load <2 x ptr>, ptr %i.bl, align 8
  %i.eo = load <2 x ptr>, ptr %i.bk, align 8
  store <2 x ptr> %i.en, ptr %i.bk, align 8
  store <2 x ptr> %i.eo, ptr %i.bl, align 8
  call void @_ZN10aiMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23, !inline_history !116
  br label %bb.q

bb.q:                                             ; preds = %.noexc, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ep = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.r unwind label %bb.t       ; 3 uses

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN10aiMetadataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.eq = load ptr, ptr %i.c, align 8
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %.05981
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.ep, ptr %i.es, align 8
  call void @_ZN10aiMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.y

bb.t:                                             ; preds = %bb.p, %bb.q
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 24) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.u ], [ %i.et, %bb.t ]
  call void @_ZN10aiMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.d
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  %.0.copyload1 = load i64, ptr %i.ew, align 1
  %i.ex = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 2 uses
  store i64 %.0.copyload1, ptr %i.ex, align 8
  %i.ey = load ptr, ptr %i.c, align 8
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %.05981
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.ex, ptr %i.fa, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.d
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  %.0.copyload = load i32, ptr %i.fc, align 1
  %i.fd = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22 ; 2 uses
  store i32 %.0.copyload, ptr %i.fd, align 4
  %i.fe = load ptr, ptr %i.c, align 8
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %.05981
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.fd, ptr %i.fg, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %_ZNK10aiMetadata3GetI8aiStringEEbjRT_.exit, %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbjRT_.exit, %bb.s, %bb.w, %bb.x, %bb.d
  %i.fh = add nuw nsw i64 %.05981, 1              ; 2 uses
  %i.fi = load i32, ptr %0, align 8
  %i.fj = zext i32 %i.fi to i64
  %i.fk = icmp samesign ult i64 %i.fh, %i.fj
  br i1 %i.fk, label %bb.d, label %._crit_edge85, !llvm.loop !117
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP8aiStringPKS1_(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN8aiStringaSERKS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #22 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %i.c, i8 0, i64 1028, i1 false)
  store ptr %i.c, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %_ZN8aiStringaSERKS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = zext nneg i32 %spec.select.i to i64      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull align 4 %i.g, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  store i8 0, ptr %i.i, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP10aiAnimMeshPKS1_(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1200) ptr @_Znwm(i64 noundef 1200) #22 ; 26 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1200) %i.c, i8 0, i64 1028, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1032 ; 4 uses
  store ptr %i.c, ptr %0, align 8
  %i.e = icmp eq ptr %i.c, %1
  br i1 %i.e, label %_ZN10aiAnimMeshaSERKS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 4
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.f, i32 1023) ; 2 uses
  store i32 %spec.select.i.i, ptr %i.c, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = zext nneg i32 %spec.select.i.i to i64    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr nonnull align 4 %i.h, i64 %i.i, i1 false)
end_hunk_0
