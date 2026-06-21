inline.NumInlined: 306
inline.NumDeleted: 92
begin_hunk_0_@_upb_FieldDef_Resolve:bb.a
bb.ak:                                            ; preds = %bb.x
  %i.cp = call i64 @strtoull(ptr noundef %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #14
  %i.cq = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.cr = icmp eq i32 %i.cq, 34
  br i1 %i.cr, label %.thread.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !32
  %.not78.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not78.i.i, label %bb.am, label %.thread.i.i

bb.am:                                            ; preds = %bb.al
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.cp, ptr %i.cu, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.an:                                            ; preds = %bb.x
  %i.cv = call double @strtod(ptr noundef %.0.i.i, ptr noundef nonnull %i.b) #14
  %i.cw = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.cx = icmp eq i32 %i.cw, 34
  br i1 %i.cx, label %.thread.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !32
  %.not77.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not77.i.i, label %bb.ap, label %.thread.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.cv, ptr %i.da, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.aq:                                            ; preds = %bb.x
  %i.db = call float @strtof(ptr noundef %.0.i.i, ptr noundef nonnull %i.b) #14
  %i.dc = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.dd = icmp eq i32 %i.dc, 34
  br i1 %i.dd, label %.thread.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.df = load i8, ptr %i.de, align 1, !tbaa !32
  %.not.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i, label %bb.as, label %.thread.i.i

bb.as:                                            ; preds = %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float %i.db, ptr %i.dg, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.at:                                            ; preds = %bb.x
  switch i64 %.sroa.9.0.copyload16.i41.i, label %.thread.i.i [
    i64 5, label %streql2.exit.i.i
    i64 4, label %streql2.exit90.i.i
  ]

streql2.exit.i.i:                                 ; preds = %bb.at
  %i.dh = load i32, ptr %.0.i.i, align 1
  %i.di = xor i32 %i.dh, 1936482662
  %i.dj = getelementptr i8, ptr %.0.i.i, i64 4
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i32
  %i.dm = xor i32 %i.dl, 101
  %i.dn = or i32 %i.di, %i.dm
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.au, label %.thread.i.i

bb.au:                                            ; preds = %streql2.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %i.dr, align 8, !tbaa !32
  br label %parse_default.exit.i

streql2.exit90.i.i:                               ; preds = %bb.at
  %i.ds = load i32, ptr %.0.i.i, align 1
  %i.dt = icmp ne i32 %i.ds, 1702195828
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.av, label %.thread.i.i

bb.av:                                            ; preds = %streql2.exit90.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 1, ptr %i.dw, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.aw:                                            ; preds = %bb.x
  %i.dx = icmp eq i64 %.sroa.9.0.copyload16.i41.i, -16
  br i1 %i.dx, label %_upb_DefBuilder_Alloc.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !45 ; 4 uses
  %i.ea = add i64 %.sroa.9.0.copyload16.i41.i, 23
  %i.eb = and i64 %i.ea, -8                       ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.dz, align 8, !tbaa !53 ; 4 uses
  %i.ec = getelementptr i8, ptr %i.dz, i64 8
  %.val11.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !55
  %i.ed = ptrtoint ptr %.val11.i.i.i.i.i to i64
  %i.ee = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = icmp ult i64 %i.ef, %i.eb
  br i1 %i.eg, label %upb_Arena_Malloc.exit.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i, !prof !56

upb_Arena_Malloc.exit.thread.i.i.i.i:             ; preds = %bb.ax
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.eb
  store ptr %i.eh, ptr %i.dz, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  br label %bb.az

upb_Arena_Malloc.exit.i.i.i.i:                    ; preds = %bb.ax
  %i.ei = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.dz, i64 noundef %i.eb) #14 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i.i
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

_upb_DefBuilder_Alloc.exit.i.i.i:                 ; preds = %bb.aw
  call void @_upb_DefBuilder_OomErr(ptr noundef %0) #16
  unreachable

bb.az:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i
  %.0.i.ph.i.i.i = phi ptr [ %.val.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i ], [ %i.ei, %upb_Arena_Malloc.exit.i.i.i.i ] ; 4 uses
  store i64 %.sroa.9.0.copyload16.i41.i, ptr %.0.i.ph.i.i.i, align 8, !tbaa !36
  %.not13.i.i.i = icmp eq i64 %.sroa.9.0.copyload16.i41.i, 0
  br i1 %.not13.i.i.i, label %newstr.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr readonly align 1 %.0.i.i, i64 %.sroa.9.0.copyload16.i41.i, i1 false)
  br label %newstr.exit.i.i

newstr.exit.i.i:                                  ; preds = %bb.ba, %bb.az
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i.i, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.9.0.copyload16.i41.i
  store i8 0, ptr %i.el, align 1, !tbaa !32
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %.0.i.ph.i.i.i, ptr %i.em, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.bb:                                            ; preds = %bb.x
  %i.en = icmp eq i64 %.sroa.9.0.copyload16.i41.i, -16
  br i1 %i.en, label %_upb_DefBuilder_Alloc.exit.thread.i.i.i, label %bb.bc

_upb_DefBuilder_Alloc.exit.thread.i.i.i:          ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !17
  br label %.lr.ph.preheader.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !45 ; 4 uses
  %i.eq = add i64 %.sroa.9.0.copyload16.i41.i, 23
  %i.er = and i64 %i.eq, -8                       ; 3 uses
  %.val.i.i.i91.i.i = load ptr, ptr %i.ep, align 8, !tbaa !53 ; 4 uses
  %i.es = getelementptr i8, ptr %i.ep, i64 8
  %.val11.i.i.i92.i.i = load ptr, ptr %i.es, align 8, !tbaa !55
  %i.et = ptrtoint ptr %.val11.i.i.i92.i.i to i64
  %i.eu = ptrtoint ptr %.val.i.i.i91.i.i to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = icmp ult i64 %i.ev, %i.er
  br i1 %i.ew, label %upb_Arena_Malloc.exit.i.i95.i.i, label %upb_Arena_Malloc.exit.thread.i.i93.i.i, !prof !56

upb_Arena_Malloc.exit.thread.i.i93.i.i:           ; preds = %bb.bc
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.i.i.i91.i.i, i64 %i.er
  store ptr %i.ex, ptr %i.ep, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i91.i.i) ]
  br label %_upb_DefBuilder_Alloc.exit.i94.i.i

upb_Arena_Malloc.exit.i.i95.i.i:                  ; preds = %bb.bc
  %i.ey = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ep, i64 noundef %i.er) #14 ; 2 uses
  %.not.i.i96.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i96.i.i, label %bb.bd, label %_upb_DefBuilder_Alloc.exit.i94.i.i

bb.bd:                                            ; preds = %upb_Arena_Malloc.exit.i.i95.i.i
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

_upb_DefBuilder_Alloc.exit.i94.i.i:               ; preds = %upb_Arena_Malloc.exit.i.i95.i.i, %upb_Arena_Malloc.exit.thread.i.i93.i.i
  %.0.i.i.i.i = phi ptr [ %.val.i.i.i91.i.i, %upb_Arena_Malloc.exit.thread.i.i93.i.i ], [ %i.ey, %upb_Arena_Malloc.exit.i.i95.i.i ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !17
  %.not.i.i.i = icmp eq i64 %.sroa.9.0.copyload16.i41.i, 0
  br i1 %.not.i.i.i, label %unescape.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_upb_DefBuilder_Alloc.exit.i94.i.i, %_upb_DefBuilder_Alloc.exit.thread.i.i.i
  %i.fa = phi ptr [ inttoptr (i64 8 to ptr), %_upb_DefBuilder_Alloc.exit.thread.i.i.i ], [ %i.ez, %_upb_DefBuilder_Alloc.exit.i94.i.i ] ; 2 uses
  %.0.i24.i.i.i = phi ptr [ null, %_upb_DefBuilder_Alloc.exit.thread.i.i.i ], [ %.0.i.i.i.i, %_upb_DefBuilder_Alloc.exit.i94.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.sroa.9.0.copyload16.i41.i ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bg, %.lr.ph.preheader.i.i.i
  %i.fc = phi ptr [ %3, %bb.bg ], [ %.0.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.017.i.i.i = phi ptr [ %.1.i.i.i, %bb.bg ], [ %i.fa, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !32
  %i.fe = icmp eq i8 %i.fd, 92
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store ptr %i.ff, ptr %i.a, align 8, !tbaa !17
  br i1 %i.fe, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i.i.i
  %i.fg = call signext i8 @_upb_DefBuilder_ParseEscape(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.fb) #14
  br label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i.i.i
  %i.fh = load i8, ptr %i.fc, align 1, !tbaa !32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %storemerge.i.i.i = phi i8 [ %i.fh, %bb.bf ], [ %i.fg, %bb.be ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 1 ; 2 uses
  store i8 %storemerge.i.i.i, ptr %.017.i.i.i, align 1, !tbaa !32
  %3 = load ptr, ptr %i.a, align 8, !tbaa !17     ; 2 uses
  %i.fi = icmp ult ptr %3, %i.fb
  br i1 %i.fi, label %.lr.ph.i.i.i, label %unescape.exit.i.i, !llvm.loop !83

unescape.exit.i.i:                                ; preds = %bb.bg, %_upb_DefBuilder_Alloc.exit.i94.i.i
  %i.fj = phi ptr [ %i.ez, %_upb_DefBuilder_Alloc.exit.i94.i.i ], [ %i.fa, %bb.bg ]
  %.0.i25.i.i.i = phi ptr [ %.0.i.i.i.i, %_upb_DefBuilder_Alloc.exit.i94.i.i ], [ %.0.i24.i.i.i, %bb.bg ] ; 2 uses
  %.0.lcssa.i.i.i = phi ptr [ %i.ez, %_upb_DefBuilder_Alloc.exit.i94.i.i ], [ %.1.i.i.i, %bb.bg ]
  %i.fk = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  store i64 %i.fm, ptr %.0.i25.i.i.i, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %.0.i25.i.i.i, ptr %i.fn, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.bh:                                            ; preds = %bb.x
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !19
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %i.fp) #16
  unreachable

.thread.i.i:                                      ; preds = %streql2.exit90.i.i, %streql2.exit.i.i, %bb.at, %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y
  %i.fq = trunc i64 %.sroa.9.0.copyload16.i41.i to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !19
  %i.ft = load i32, ptr %i.h, align 8, !tbaa !20
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %i.fq, ptr noundef %.0.i.i, ptr noundef %i.fs, i32 noundef %i.ft) #16
  unreachable

parse_default.exit.i:                             ; preds = %unescape.exit.i.i, %newstr.exit.i.i, %bb.av, %bb.au, %bb.as, %bb.ap, %bb.am, %bb.aj, %bb.af, %.thread98.i.i, %bb.ab, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %resolve_default.exit

bb.bi:                                            ; preds = %.thread.i, %bb.n
  %i.fu = phi i1 [ false, %.thread.i ], [ %i.an, %bb.n ]
  %i.fv = load i32, ptr %i.h, align 8, !tbaa !20
  %i.fw = add i32 %i.fv, -1
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3
  switch i32 %i.fz, label %resolve_default.exit [
    i32 3, label %bb.bj
    i32 8, label %bb.bj
    i32 9, label %bb.bk
    i32 4, label %bb.bk
    i32 7, label %bb.bl
    i32 2, label %bb.bl
    i32 10, label %bb.bm
    i32 11, label %bb.bm
    i32 1, label %bb.bo
    i32 5, label %bb.bp
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.ga, align 8, !tbaa !32
  br label %resolve_default.exit

bb.bk:                                            ; preds = %bb.bi, %bb.bi
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.gb, align 8, !tbaa !32
  br label %resolve_default.exit

bb.bl:                                            ; preds = %bb.bi, %bb.bi
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double 0.000000e+00, ptr %i.gc, align 8, !tbaa !32
  br label %resolve_default.exit

bb.bm:                                            ; preds = %bb.bi, %bb.bi
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !45 ; 4 uses
  %.val.i.i.i.i20.i = load ptr, ptr %i.ge, align 8, !tbaa !53 ; 4 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %.val11.i.i.i.i21.i = load ptr, ptr %i.gf, align 8, !tbaa !55
  %i.gg = ptrtoint ptr %.val11.i.i.i.i21.i to i64
  %i.gh = ptrtoint ptr %.val.i.i.i.i20.i to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = icmp ult i64 %i.gi, 16
  br i1 %i.gj, label %upb_Arena_Malloc.exit.i.i.i25.i, label %upb_Arena_Malloc.exit.thread.i.i.i22.i, !prof !56

upb_Arena_Malloc.exit.thread.i.i.i22.i:           ; preds = %bb.bm
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i20.i, i64 16
  store ptr %i.gk, ptr %i.ge, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i20.i) ]
  br label %newstr.exit.i23.i

upb_Arena_Malloc.exit.i.i.i25.i:                  ; preds = %bb.bm
  %i.gl = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ge, i64 noundef 16) #14 ; 2 uses
  %.not.i.i.i26.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i26.i, label %bb.bn, label %newstr.exit.i23.i

bb.bn:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i25.i
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

newstr.exit.i23.i:                                ; preds = %upb_Arena_Malloc.exit.i.i.i25.i, %upb_Arena_Malloc.exit.thread.i.i.i22.i
  %.0.i.ph.i.i24.i = phi ptr [ %.val.i.i.i.i20.i, %upb_Arena_Malloc.exit.thread.i.i.i22.i ], [ %i.gl, %upb_Arena_Malloc.exit.i.i.i25.i ] ; 3 uses
  store i64 0, ptr %.0.i.ph.i.i24.i, align 8, !tbaa !36
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i24.i, i64 8
  store i8 0, ptr %i.gm, align 8, !tbaa !32
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %.0.i.ph.i.i24.i, ptr %i.gn, align 8, !tbaa !32
  br label %resolve_default.exit

bb.bo:                                            ; preds = %bb.bi
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %i.go, align 8, !tbaa !32
  br label %resolve_default.exit

bb.bp:                                            ; preds = %bb.bi
  %i.gp = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.gq = call i32 @upb_EnumDef_Default(ptr noundef %i.gp) #14 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !32
  %.not.i19.i = icmp ne i32 %i.gq, 0
  %or.cond.not.i.i = select i1 %i.fu, i1 %.not.i19.i, i1 false
  br i1 %or.cond.not.i.i, label %bb.bq, label %resolve_default.exit

bb.bq:                                            ; preds = %bb.bp
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !19
  %i.gv = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.gw = call ptr @upb_EnumDef_FullName(ptr noundef %i.gv) #14
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %i.gu, ptr noundef %i.gw) #16
  unreachable

resolve_default.exit:                             ; preds = %parse_default.exit.i, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %newstr.exit.i23.i, %bb.bo, %bb.bp
  %.sink.i = phi i8 [ 1, %parse_default.exit.i ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ 0, %newstr.exit.i23.i ], [ 0, %bb.bo ], [ 0, %bb.bp ]
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i8 %.sink.i, ptr %i.gx, align 8, !tbaa !44
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 83
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !25, !range !26, !noundef !27
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.br, label %resolve_extension.exit

bb.br:                                            ; preds = %resolve_default.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !32
  %i.hd = and i8 %i.hc, 2
  %.not.i13 = icmp eq i8 %i.hd, 0
  br i1 %.not.i13, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !19
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %i.hf) #16
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.013.0.copyload14.i.i14 = load ptr, ptr %i.hg, align 1
  %.sroa.9.0..sroa_idx15.i.i15 = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.9.0.copyload16.i.i16 = load i64, ptr %.sroa.9.0..sroa_idx15.i.i15, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !19
  %i.hj = call ptr @_upb_DefBuilder_Resolve(ptr noundef %0, ptr noundef %i.hi, ptr noundef %1, ptr %.sroa.013.0.copyload14.i.i14, i64 %.sroa.9.0.copyload16.i.i16, i32 noundef 1) #14 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !31
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !24
  %i.hn = call zeroext i1 @_upb_MessageDef_IsValidExtensionNumber(ptr noundef %i.hj, i32 noundef %i.hm) #14
  br i1 %i.hn, label %resolve_extension.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ho = load i32, ptr %i.hl, align 8, !tbaa !24
  %i.hp = load ptr, ptr %i.hh, align 8, !tbaa !19
  %i.hq = call ptr @upb_MessageDef_FullName(ptr noundef %i.hj) #14
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %i.ho, ptr noundef %i.hp, ptr noundef %i.hq) #16
  unreachable

resolve_extension.exit:                           ; preds = %bb.bt, %resolve_default.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_upb_FieldDef_Create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef initializes((16, 40), (56, 64), (72, 76), (84, 85)) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %.val, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.013.0.copyload14.i = load ptr, ptr %i.e, align 1 ; 3 uses
  %.sroa.9.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.9.0.copyload16.i = load i64, ptr %.sroa.9.0..sroa_idx15.i, align 1 ; 5 uses
  %i.f = tail call ptr @_upb_DefBuilder_MakeFullName(ptr noundef %0, ptr noundef %1, ptr %.sroa.013.0.copyload14.i, i64 %.sroa.9.0.copyload16.i) #14
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.i = load i32, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 %i.i, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 84
end_hunk_0
