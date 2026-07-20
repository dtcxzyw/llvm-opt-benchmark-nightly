inline.NumInlined: 298
inline.NumDeleted: 162
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@fielddef_toproto:bb.a
  %i.bc = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bb) #14 ; 3 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.be = add i64 %i.bc, 7
  %i.bf = and i64 %i.be, -8                       ; 3 uses
  %.val.i.i.i78 = load ptr, ptr %i.bd, align 8, !tbaa !13 ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %.val11.i.i.i79 = load ptr, ptr %i.bg, align 8, !tbaa !16
  %i.bh = ptrtoint ptr %.val11.i.i.i79 to i64
  %i.bi = ptrtoint ptr %.val.i.i.i78 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bf
  br i1 %i.bk, label %upb_Arena_Malloc.exit.i.i84, label %upb_Arena_Malloc.exit.thread.i.i80, !prof !17

upb_Arena_Malloc.exit.thread.i.i80:               ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i78, i64 %i.bf
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i78) ]
  br label %strviewdup.exit86

upb_Arena_Malloc.exit.i.i84:                      ; preds = %bb.k
  %i.bm = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.bd, i64 noundef %i.bf) #11 ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i85, label %bb.l, label %strviewdup.exit86

bb.l:                                             ; preds = %upb_Arena_Malloc.exit.i.i84
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.bn, i32 noundef 1) #13
  unreachable

strviewdup.exit86:                                ; preds = %upb_Arena_Malloc.exit.thread.i.i80, %upb_Arena_Malloc.exit.i.i84
  %.0.i11.i.i81 = phi ptr [ %.val.i.i.i78, %upb_Arena_Malloc.exit.thread.i.i80 ], [ %i.bm, %upb_Arena_Malloc.exit.i.i84 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i.i81, ptr nonnull readonly align 1 %i.bb, i64 %i.bc, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 9 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !19
  %i.bq = or i8 %i.bp, 2
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 96
  store ptr %.0.i11.i.i81, ptr %i.br, align 1
  %.sroa.56.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 104
  store i64 %i.bc, ptr %.sroa.56.0..sroa_idx.i87, align 1
  br label %bb.m

bb.m:                                             ; preds = %strviewdup.exit86, %bb.j
  %i.bs = tail call zeroext i1 @upb_FieldDef_IsSubMessage(ptr noundef %1) #11
  br i1 %i.bs, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bt = tail call ptr @upb_FieldDef_MessageSubDef(ptr noundef %1) #11
  %i.bu = tail call ptr @upb_MessageDef_FullName(ptr noundef %i.bt) #11 ; 2 uses
  %i.bv = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bu) #14 ; 3 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.bx = and i64 %i.bv, -8
  %i.by = add i64 %i.bx, 8                        ; 3 uses
  %.val.i.i = load ptr, ptr %i.bw, align 8, !tbaa !13 ; 4 uses
  %i.bz = getelementptr i8, ptr %i.bw, i64 8
  %.val11.i.i = load ptr, ptr %i.bz, align 8, !tbaa !16
  %i.ca = ptrtoint ptr %.val11.i.i to i64
  %i.cb = ptrtoint ptr %.val.i.i to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp ult i64 %i.cc, %i.by
  br i1 %i.cd, label %upb_Arena_Malloc.exit.i, label %upb_Arena_Malloc.exit.thread.i, !prof !17

upb_Arena_Malloc.exit.thread.i:                   ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.by
  store ptr %i.ce, ptr %i.bw, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br label %qual_dup.exit

upb_Arena_Malloc.exit.i:                          ; preds = %bb.n
  %i.cf = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.bw, i64 noundef %i.by) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %bb.o, label %qual_dup.exit

bb.o:                                             ; preds = %upb_Arena_Malloc.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.cg, i32 noundef 1) #13
  unreachable

qual_dup.exit:                                    ; preds = %upb_Arena_Malloc.exit.thread.i, %upb_Arena_Malloc.exit.i
  %.0.i12.i = phi ptr [ %.val.i.i, %upb_Arena_Malloc.exit.thread.i ], [ %i.cf, %upb_Arena_Malloc.exit.i ] ; 3 uses
  store i8 46, ptr %.0.i12.i, align 1, !tbaa !19
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i12.i, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull readonly align 1 %i.bu, i64 %i.bv, i1 false)
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ci = tail call i32 @upb_FieldDef_CType(ptr noundef %1) #11
  %i.cj = icmp eq i32 %i.ci, 5
  br i1 %i.cj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ck = tail call ptr @upb_FieldDef_EnumSubDef(ptr noundef %1) #11
  %i.cl = tail call ptr @upb_EnumDef_FullName(ptr noundef %i.ck) #11 ; 2 uses
  %i.cm = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cl) #14 ; 3 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.co = and i64 %i.cm, -8
  %i.cp = add i64 %i.co, 8                        ; 3 uses
  %.val.i.i89 = load ptr, ptr %i.cn, align 8, !tbaa !13 ; 4 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 8
  %.val11.i.i90 = load ptr, ptr %i.cq, align 8, !tbaa !16
  %i.cr = ptrtoint ptr %.val11.i.i90 to i64
  %i.cs = ptrtoint ptr %.val.i.i89 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = icmp ult i64 %i.ct, %i.cp
  br i1 %i.cu, label %upb_Arena_Malloc.exit.i95, label %upb_Arena_Malloc.exit.thread.i91, !prof !17

upb_Arena_Malloc.exit.thread.i91:                 ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i89, i64 %i.cp
  store ptr %i.cv, ptr %i.cn, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i89) ]
  br label %qual_dup.exit97

upb_Arena_Malloc.exit.i95:                        ; preds = %bb.q
  %i.cw = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.cn, i64 noundef %i.cp) #11 ; 2 uses
  %.not.i96 = icmp eq ptr %i.cw, null
  br i1 %.not.i96, label %bb.r, label %qual_dup.exit97

bb.r:                                             ; preds = %upb_Arena_Malloc.exit.i95
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.cx, i32 noundef 1) #13
  unreachable

qual_dup.exit97:                                  ; preds = %upb_Arena_Malloc.exit.thread.i91, %upb_Arena_Malloc.exit.i95
  %.0.i12.i92 = phi ptr [ %.val.i.i89, %upb_Arena_Malloc.exit.thread.i91 ], [ %i.cw, %upb_Arena_Malloc.exit.i95 ] ; 3 uses
  store i8 46, ptr %.0.i12.i92, align 1, !tbaa !19
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i12.i92, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr nonnull readonly align 1 %i.cl, i64 %i.cm, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %qual_dup.exit, %qual_dup.exit97
  %.0.i12.i92.sink = phi ptr [ %.0.i12.i92, %qual_dup.exit97 ], [ %.0.i12.i, %qual_dup.exit ]
  %.sink171.in = phi i64 [ %i.cm, %qual_dup.exit97 ], [ %i.bv, %qual_dup.exit ]
  %.sink171 = add i64 %.sink171.in, 1
  %i.cz = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.da = or i8 %i.cz, 32
  store i8 %i.da, ptr %i.ab, align 1, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 64
  store ptr %.0.i12.i92.sink, ptr %i.db, align 1
  %.sroa.56.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 72
  store i64 %.sink171, ptr %.sroa.56.0..sroa_idx.i98, align 1
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.p
  %i.dc = tail call zeroext i1 @upb_FieldDef_IsExtension(ptr noundef %1) #11
  br i1 %i.dc, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dd = tail call ptr @upb_FieldDef_ContainingType(ptr noundef %1) #11
  %i.de = tail call ptr @upb_MessageDef_FullName(ptr noundef %i.dd) #11 ; 2 uses
  %i.df = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.de) #14 ; 3 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.dh = and i64 %i.df, -8
  %i.di = add i64 %i.dh, 8                        ; 3 uses
  %.val.i.i99 = load ptr, ptr %i.dg, align 8, !tbaa !13 ; 4 uses
  %i.dj = getelementptr i8, ptr %i.dg, i64 8
  %.val11.i.i100 = load ptr, ptr %i.dj, align 8, !tbaa !16
  %i.dk = ptrtoint ptr %.val11.i.i100 to i64
  %i.dl = ptrtoint ptr %.val.i.i99 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = icmp ult i64 %i.dm, %i.di
  br i1 %i.dn, label %upb_Arena_Malloc.exit.i105, label %upb_Arena_Malloc.exit.thread.i101, !prof !17

upb_Arena_Malloc.exit.thread.i101:                ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i.i99, i64 %i.di
  store ptr %i.do, ptr %i.dg, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i99) ]
  br label %qual_dup.exit107

upb_Arena_Malloc.exit.i105:                       ; preds = %bb.t
  %i.dp = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.dg, i64 noundef %i.di) #11 ; 2 uses
  %.not.i106 = icmp eq ptr %i.dp, null
  br i1 %.not.i106, label %bb.u, label %qual_dup.exit107

bb.u:                                             ; preds = %upb_Arena_Malloc.exit.i105
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.dq, i32 noundef 1) #13
  unreachable

qual_dup.exit107:                                 ; preds = %upb_Arena_Malloc.exit.thread.i101, %upb_Arena_Malloc.exit.i105
  %.0.i12.i102 = phi ptr [ %.val.i.i99, %upb_Arena_Malloc.exit.thread.i101 ], [ %i.dp, %upb_Arena_Malloc.exit.i105 ] ; 3 uses
  %i.dr = add i64 %i.df, 1
  store i8 46, ptr %.0.i12.i102, align 1, !tbaa !19
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i12.i102, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr nonnull readonly align 1 %i.de, i64 %i.df, i1 false)
  %i.dt = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.du = or i8 %i.dt, 2
  store i8 %i.du, ptr %i.ab, align 1, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 48
  store ptr %.0.i12.i102, ptr %i.dv, align 1
  %.sroa.56.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 56
  store i64 %i.dr, ptr %.sroa.56.0..sroa_idx.i108, align 1
  br label %bb.v

bb.v:                                             ; preds = %qual_dup.exit107, %bb.s
  %i.dw = tail call zeroext i1 @upb_FieldDef_HasDefault(ptr noundef %1) #11
  br i1 %i.dw, label %bb.w, label %bb.bd

bb.w:                                             ; preds = %bb.v
  %i.dx = tail call { ptr, i64 } @upb_FieldDef_Default(ptr noundef %1) #11 ; 2 uses
  %i.dy = extractvalue { ptr, i64 } %i.dx, 0      ; 7 uses
  %i.dz = extractvalue { ptr, i64 } %i.dx, 1      ; 9 uses
  %i.ea = tail call i32 @upb_FieldDef_CType(ptr noundef %1) #11 ; 2 uses
  %i.eb = ptrtoint ptr %i.dy to i64               ; 5 uses
  %i.ec = trunc i64 %i.eb to i32                  ; 4 uses
  %i.ed = bitcast i32 %i.ec to float              ; 2 uses
  %i.ee = bitcast i64 %i.eb to double             ; 2 uses
  switch i32 %i.ea, label %bb.af [
    i32 7, label %bb.x
    i32 2, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.ef = icmp eq i32 %i.ea, 2
  %i.eg = fpext float %i.ed to double
  %i.eh = select i1 %i.ef, double %i.eg, double %i.ee ; 3 uses
  %i.ei = fcmp oeq double %i.eh, +inf
  br i1 %i.ei, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ej = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.ej, align 8, !tbaa !13 ; 4 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.ek, align 8, !tbaa !16
  %i.el = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.em = ptrtoint ptr %.val.i.i.i.i to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = icmp ult i64 %i.en, 8
  br i1 %i.eo, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.y
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  store ptr %i.ep, ptr %i.ej, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %strviewdup.exit.i

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.y
  %i.eq = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ej, i64 noundef 8) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i, label %bb.z, label %strviewdup.exit.i

bb.z:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.er, i32 noundef 1) #13
  unreachable

strviewdup.exit.i:                                ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i11.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.eq, %upb_Arena_Malloc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0.i11.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.es = insertvalue { ptr, i64 } poison, ptr %.0.i11.i.i.i, 0
  %i.et = insertvalue { ptr, i64 } %i.es, i64 3, 1
  br label %default_string.exit

bb.aa:                                            ; preds = %bb.x
  %i.eu = fcmp oeq double %i.eh, -inf
  br i1 %i.eu, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ev = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %.val.i.i.i41.i = load ptr, ptr %i.ev, align 8, !tbaa !13 ; 4 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  %.val11.i.i.i42.i = load ptr, ptr %i.ew, align 8, !tbaa !16
  %i.ex = ptrtoint ptr %.val11.i.i.i42.i to i64
  %i.ey = ptrtoint ptr %.val.i.i.i41.i to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = icmp ult i64 %i.ez, 8
  br i1 %i.fa, label %upb_Arena_Malloc.exit.i.i47.i, label %upb_Arena_Malloc.exit.thread.i.i43.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i43.i:             ; preds = %bb.ab
  %i.fb = getelementptr inbounds nuw i8, ptr %.val.i.i.i41.i, i64 8
  store ptr %i.fb, ptr %i.ev, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i41.i) ]
  br label %strviewdup.exit49.i

upb_Arena_Malloc.exit.i.i47.i:                    ; preds = %bb.ab
  %i.fc = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ev, i64 noundef 8) #11 ; 2 uses
  %.not.i.i48.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i48.i, label %bb.ac, label %strviewdup.exit49.i

bb.ac:                                            ; preds = %upb_Arena_Malloc.exit.i.i47.i
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.fd, i32 noundef 1) #13
  unreachable

strviewdup.exit49.i:                              ; preds = %upb_Arena_Malloc.exit.i.i47.i, %upb_Arena_Malloc.exit.thread.i.i43.i
  %.0.i11.i.i44.i = phi ptr [ %.val.i.i.i41.i, %upb_Arena_Malloc.exit.thread.i.i43.i ], [ %i.fc, %upb_Arena_Malloc.exit.i.i47.i ] ; 2 uses
  store i32 1718511917, ptr %.0.i11.i.i44.i, align 1
  %i.fe = insertvalue { ptr, i64 } poison, ptr %.0.i11.i.i44.i, 0
  %i.ff = insertvalue { ptr, i64 } %i.fe, i64 4, 1
  br label %default_string.exit

bb.ad:                                            ; preds = %bb.aa
  %i.fg = fcmp uno double %i.eh, 0.000000e+00
  br i1 %i.fg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fh = tail call fastcc { ptr, i64 } @strviewdup(ptr noundef nonnull %0, ptr noundef nonnull @.str.2)
  br label %default_string.exit

bb.af:                                            ; preds = %bb.ad, %bb.w
  %i.fi = tail call i32 @upb_FieldDef_CType(ptr noundef %1) #11
  switch i32 %i.fi, label %bb.bc [
    i32 1, label %bb.ag
    i32 5, label %bb.ai
    i32 8, label %bb.ak
    i32 9, label %bb.al
    i32 3, label %bb.am
    i32 4, label %bb.an
    i32 2, label %bb.ao
    i32 7, label %bb.ap
    i32 10, label %bb.aq
    i32 11, label %bb.as
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fj = trunc i64 %i.eb to i1                   ; 2 uses
  %i.fk = select i1 %i.fj, ptr @.str.3, ptr @.str.4
  %i.fl = select i1 %i.fj, i64 4, i64 5           ; 2 uses
  %i.fm = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %.val.i.i.i50.i = load ptr, ptr %i.fm, align 8, !tbaa !13 ; 4 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 8
  %.val11.i.i.i51.i = load ptr, ptr %i.fn, align 8, !tbaa !16
  %i.fo = ptrtoint ptr %.val11.i.i.i51.i to i64
  %i.fp = ptrtoint ptr %.val.i.i.i50.i to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = icmp ult i64 %i.fq, 8
  br i1 %i.fr, label %upb_Arena_Malloc.exit.i.i56.i, label %upb_Arena_Malloc.exit.thread.i.i52.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i52.i:             ; preds = %bb.ag
  %i.fs = getelementptr inbounds nuw i8, ptr %.val.i.i.i50.i, i64 8
  store ptr %i.fs, ptr %i.fm, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i50.i) ]
  br label %strviewdup.exit58.i

upb_Arena_Malloc.exit.i.i56.i:                    ; preds = %bb.ag
  %i.ft = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.fm, i64 noundef 8) #11 ; 2 uses
  %.not.i.i57.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i57.i, label %bb.ah, label %strviewdup.exit58.i

bb.ah:                                            ; preds = %upb_Arena_Malloc.exit.i.i56.i
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.fu, i32 noundef 1) #13
  unreachable

strviewdup.exit58.i:                              ; preds = %upb_Arena_Malloc.exit.i.i56.i, %upb_Arena_Malloc.exit.thread.i.i52.i
  %.0.i11.i.i53.i = phi ptr [ %.val.i.i.i50.i, %upb_Arena_Malloc.exit.thread.i.i52.i ], [ %i.ft, %upb_Arena_Malloc.exit.i.i56.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %.0.i11.i.i53.i, ptr noundef nonnull readonly align 1 dereferenceable(4) %i.fk, i64 %i.fl, i1 false)
  %i.fv = insertvalue { ptr, i64 } poison, ptr %.0.i11.i.i53.i, 0
  %i.fw = insertvalue { ptr, i64 } %i.fv, i64 %i.fl, 1
  br label %default_string.exit

bb.ai:                                            ; preds = %bb.af
  %i.fx = tail call ptr @upb_FieldDef_EnumSubDef(ptr noundef %1) #11
  %i.fy = tail call ptr @upb_EnumDef_FindValueByNumber(ptr noundef %i.fx, i32 noundef %i.ec) #11
  %i.fz = tail call ptr @upb_EnumValueDef_Name(ptr noundef %i.fy) #11 ; 2 uses
  %i.ga = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fz) #14 ; 3 uses
  %i.gb = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.gc = add i64 %i.ga, 7
  %i.gd = and i64 %i.gc, -8                       ; 3 uses
  %.val.i.i.i59.i = load ptr, ptr %i.gb, align 8, !tbaa !13 ; 4 uses
  %i.ge = getelementptr i8, ptr %i.gb, i64 8
  %.val11.i.i.i60.i = load ptr, ptr %i.ge, align 8, !tbaa !16
  %i.gf = ptrtoint ptr %.val11.i.i.i60.i to i64
  %i.gg = ptrtoint ptr %.val.i.i.i59.i to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = icmp ult i64 %i.gh, %i.gd
  br i1 %i.gi, label %upb_Arena_Malloc.exit.i.i65.i, label %upb_Arena_Malloc.exit.thread.i.i61.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i61.i:             ; preds = %bb.ai
  %i.gj = getelementptr inbounds nuw i8, ptr %.val.i.i.i59.i, i64 %i.gd
  store ptr %i.gj, ptr %i.gb, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i59.i) ]
  br label %strviewdup.exit67.i

upb_Arena_Malloc.exit.i.i65.i:                    ; preds = %bb.ai
  %i.gk = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.gb, i64 noundef %i.gd) #11 ; 2 uses
  %.not.i.i66.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i66.i, label %bb.aj, label %strviewdup.exit67.i

bb.aj:                                            ; preds = %upb_Arena_Malloc.exit.i.i65.i
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.gl, i32 noundef 1) #13
  unreachable

strviewdup.exit67.i:                              ; preds = %upb_Arena_Malloc.exit.i.i65.i, %upb_Arena_Malloc.exit.thread.i.i61.i
  %.0.i11.i.i62.i = phi ptr [ %.val.i.i.i59.i, %upb_Arena_Malloc.exit.thread.i.i61.i ], [ %i.gk, %upb_Arena_Malloc.exit.i.i65.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i.i62.i, ptr nonnull readonly align 1 %i.fz, i64 %i.ga, i1 false)
  %i.gm = insertvalue { ptr, i64 } poison, ptr %.0.i11.i.i62.i, 0
  %i.gn = insertvalue { ptr, i64 } %i.gm, i64 %i.ga, 1
  br label %default_string.exit

bb.ak:                                            ; preds = %bb.af
  %i.go = tail call { ptr, i64 } (ptr, ptr, ...) @printf_dup(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef %i.eb)
  br label %default_string.exit

bb.al:                                            ; preds = %bb.af
  %i.gp = tail call { ptr, i64 } (ptr, ptr, ...) @printf_dup(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef %i.eb)
  br label %default_string.exit

bb.am:                                            ; preds = %bb.af
  %i.gq = tail call { ptr, i64 } (ptr, ptr, ...) @printf_dup(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i32 noundef %i.ec)
  br label %default_string.exit

bb.an:                                            ; preds = %bb.af
  %i.gr = tail call { ptr, i64 } (ptr, ptr, ...) @printf_dup(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i32 noundef %i.ec)
  br label %default_string.exit

bb.ao:                                            ; preds = %bb.af
  %i.gs = fpext float %i.ed to double
  %i.gt = tail call { ptr, i64 } (ptr, ptr, ...) @printf_dup(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, double noundef %i.gs)
  br label %default_string.exit

bb.ap:                                            ; preds = %bb.af
  %i.gu = tail call { ptr, i64 } (ptr, ptr, ...) @printf_dup(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, double noundef %i.ee)
  br label %default_string.exit

bb.aq:                                            ; preds = %bb.af
  %i.gv = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.gw = add i64 %i.dz, 7
  %i.gx = and i64 %i.gw, -8                       ; 3 uses
  %.val.i.i.i109 = load ptr, ptr %i.gv, align 8, !tbaa !13 ; 4 uses
  %i.gy = getelementptr i8, ptr %i.gv, i64 8
  %.val11.i.i.i110 = load ptr, ptr %i.gy, align 8, !tbaa !16
  %i.gz = ptrtoint ptr %.val11.i.i.i110 to i64
  %i.ha = ptrtoint ptr %.val.i.i.i109 to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = icmp ult i64 %i.hb, %i.gx
  br i1 %i.hc, label %upb_Arena_Malloc.exit.i.i113, label %upb_Arena_Malloc.exit.thread.i.i111, !prof !17

upb_Arena_Malloc.exit.thread.i.i111:              ; preds = %bb.aq
  %i.hd = getelementptr inbounds nuw i8, ptr %.val.i.i.i109, i64 %i.gx
  store ptr %i.hd, ptr %i.gv, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i109) ]
  br label %strviewdup2.exit.i

upb_Arena_Malloc.exit.i.i113:                     ; preds = %bb.aq
  %i.he = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.gv, i64 noundef %i.gx) #11 ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.he, null
  br i1 %.not.i.i114, label %bb.ar, label %strviewdup2.exit.i

bb.ar:                                            ; preds = %upb_Arena_Malloc.exit.i.i113
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.hf, i32 noundef 1) #13
  unreachable

strviewdup2.exit.i:                               ; preds = %upb_Arena_Malloc.exit.i.i113, %upb_Arena_Malloc.exit.thread.i.i111
  %.0.i11.i.i112 = phi ptr [ %.val.i.i.i109, %upb_Arena_Malloc.exit.thread.i.i111 ], [ %i.he, %upb_Arena_Malloc.exit.i.i113 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i.i112, ptr readonly align 1 %i.dy, i64 %i.dz, i1 false)
  %i.hg = insertvalue { ptr, i64 } poison, ptr %.0.i11.i.i112, 0
  %i.hh = insertvalue { ptr, i64 } %i.hg, i64 %i.dz, 1
  br label %default_string.exit

bb.as:                                            ; preds = %bb.af
  %.not62.i.i = icmp eq i64 %i.dz, 0              ; 2 uses
  br i1 %.not62.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.as
  %xtraiter = and i64 %i.dz, 1
  %i.hi = icmp eq i64 %i.dz, 1
  br i1 %i.hi, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.dz, -2
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.at
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.056.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.if, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.03555.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ig, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod176 = trunc i64 %i.dz to i1
  tail call void @llvm.assume(i1 %lcmp.mod176)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.03555.i.i.epil.init
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.hk, label %special_escape.exit.i.i.epil [
    i8 10, label %._crit_edge.i.i.loopexit.epilog-lcssa
    i8 13, label %._crit_edge.i.i.loopexit.epilog-lcssa
    i8 9, label %._crit_edge.i.i.loopexit.epilog-lcssa
    i8 92, label %._crit_edge.i.i.loopexit.epilog-lcssa
    i8 39, label %._crit_edge.i.i.loopexit.epilog-lcssa
    i8 34, label %._crit_edge.i.i.loopexit.epilog-lcssa
  ]

special_escape.exit.i.i.epil:                     ; preds = %.lr.ph.i.i.epil.preheader
  %i.hl = icmp sgt i8 %i.hk, 31
  %..i.i.epil = select i1 %i.hl, i64 1, i64 4
  br label %._crit_edge.i.i.loopexit.epilog-lcssa

._crit_edge.i.i.loopexit.epilog-lcssa:            ; preds = %special_escape.exit.i.i.epil, %.lr.ph.i.i.epil.preheader, %.lr.ph.i.i.epil.preheader, %.lr.ph.i.i.epil.preheader, %.lr.ph.i.i.epil.preheader, %.lr.ph.i.i.epil.preheader, %.lr.ph.i.i.epil.preheader
  %.sink.i.i.epil = phi i64 [ %..i.i.epil, %special_escape.exit.i.i.epil ], [ 2, %.lr.ph.i.i.epil.preheader ], [ 2, %.lr.ph.i.i.epil.preheader ], [ 2, %.lr.ph.i.i.epil.preheader ], [ 2, %.lr.ph.i.i.epil.preheader ], [ 2, %.lr.ph.i.i.epil.preheader ], [ 2, %.lr.ph.i.i.epil.preheader ]
  %i.hm = add i64 %.sink.i.i.epil, %.056.i.i.epil.init
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.epilog-lcssa, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.as
  %.0.lcssa.i.i = phi i64 [ 0, %bb.as ], [ %i.if, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.hm, %._crit_edge.i.i.loopexit.epilog-lcssa ] ; 2 uses
  %i.hn = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.ho = add i64 %.0.lcssa.i.i, 7
  %i.hp = and i64 %i.ho, -8                       ; 3 uses
  %.val.i.i68.i = load ptr, ptr %i.hn, align 8, !tbaa !13 ; 4 uses
  %i.hq = getelementptr i8, ptr %i.hn, i64 8
  %.val11.i.i69.i = load ptr, ptr %i.hq, align 8, !tbaa !16
  %i.hr = ptrtoint ptr %.val11.i.i69.i to i64
  %i.hs = ptrtoint ptr %.val.i.i68.i to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = icmp ult i64 %i.ht, %i.hp
  br i1 %i.hu, label %upb_Arena_Malloc.exit.i73.i, label %upb_Arena_Malloc.exit.thread.i70.i, !prof !17

upb_Arena_Malloc.exit.thread.i70.i:               ; preds = %._crit_edge.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.val.i.i68.i, i64 %i.hp
  store ptr %i.hv, ptr %i.hn, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i68.i) ]
  br label %bb.av

upb_Arena_Malloc.exit.i73.i:                      ; preds = %._crit_edge.i.i
  %i.hw = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.hn, i64 noundef %i.hp) #11 ; 2 uses
  %.not.i74.i = icmp eq ptr %i.hw, null
  br i1 %.not.i74.i, label %bb.au, label %bb.av

.lr.ph.i.i:                                       ; preds = %bb.at, %.lr.ph.i.i.preheader.new
  %.056.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.if, %bb.at ]
  %.03555.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ig, %bb.at ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %bb.at ]
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.03555.i.i
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.hy, label %special_escape.exit.i.i [
    i8 10, label %.lr.ph.i.i.1
    i8 13, label %.lr.ph.i.i.1
    i8 9, label %.lr.ph.i.i.1
    i8 92, label %.lr.ph.i.i.1
    i8 39, label %.lr.ph.i.i.1
    i8 34, label %.lr.ph.i.i.1
  ]

special_escape.exit.i.i:                          ; preds = %.lr.ph.i.i
  %i.hz = icmp sgt i8 %i.hy, 31
  %..i.i = select i1 %i.hz, i64 1, i64 4
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %special_escape.exit.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ %..i.i, %special_escape.exit.i.i ], [ 2, %.lr.ph.i.i ], [ 2, %.lr.ph.i.i ], [ 2, %.lr.ph.i.i ], [ 2, %.lr.ph.i.i ], [ 2, %.lr.ph.i.i ], [ 2, %.lr.ph.i.i ]
  %i.ia = add i64 %.sink.i.i, %.056.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.03555.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.id, label %special_escape.exit.i.i.1 [
    i8 10, label %bb.at
    i8 13, label %bb.at
    i8 9, label %bb.at
    i8 92, label %bb.at
    i8 39, label %bb.at
    i8 34, label %bb.at
  ]

special_escape.exit.i.i.1:                        ; preds = %.lr.ph.i.i.1
  %i.ie = icmp sgt i8 %i.id, 31
  %..i.i.1 = select i1 %i.ie, i64 1, i64 4
  br label %bb.at

bb.at:                                            ; preds = %special_escape.exit.i.i.1, %.lr.ph.i.i.1, %.lr.ph.i.i.1, %.lr.ph.i.i.1, %.lr.ph.i.i.1, %.lr.ph.i.i.1, %.lr.ph.i.i.1
  %.sink.i.i.1 = phi i64 [ %..i.i.1, %special_escape.exit.i.i.1 ], [ 2, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.1 ]
  %i.if = add i64 %.sink.i.i.1, %i.ia             ; 3 uses
  %i.ig = add nuw i64 %.03555.i.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !32

bb.au:                                            ; preds = %upb_Arena_Malloc.exit.i73.i
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.ih, i32 noundef 1) #13
  unreachable

bb.av:                                            ; preds = %upb_Arena_Malloc.exit.i73.i, %upb_Arena_Malloc.exit.thread.i70.i
  %.0.i48.i.i = phi ptr [ %.val.i.i68.i, %upb_Arena_Malloc.exit.thread.i70.i ], [ %i.hw, %upb_Arena_Malloc.exit.i73.i ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz
  br i1 %.not62.i.i, label %default_bytes.exit.i, label %.lr.ph60.i.i

.lr.ph60.i.i:                                     ; preds = %bb.av, %bb.bb
  %.03658.i.i = phi ptr [ %i.ij, %bb.bb ], [ %i.dy, %bb.av ] ; 2 uses
  %.03757.i.i = phi ptr [ %.138.i.i, %bb.bb ], [ %.0.i48.i.i, %bb.av ] ; 9 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.03658.i.i, i64 1 ; 2 uses
  %i.ik = load i8, ptr %.03658.i.i, align 1, !tbaa !19 ; 7 uses
  switch i8 %i.ik, label %special_escape.exit43.i.i [
    i8 10, label %special_escape.exit45.i.i
    i8 13, label %bb.aw
    i8 9, label %bb.ax
    i8 92, label %bb.ay
    i8 39, label %bb.ay
    i8 34, label %bb.ay
  ]

bb.aw:                                            ; preds = %.lr.ph60.i.i
  br label %special_escape.exit45.i.i

bb.ax:                                            ; preds = %.lr.ph60.i.i
  br label %special_escape.exit45.i.i

bb.ay:                                            ; preds = %.lr.ph60.i.i, %.lr.ph60.i.i, %.lr.ph60.i.i
  br label %special_escape.exit45.i.i

special_escape.exit45.i.i:                        ; preds = %bb.ay, %bb.ax, %bb.aw, %.lr.ph60.i.i
  %.0.i44.i.i = phi i8 [ 110, %.lr.ph60.i.i ], [ %i.ik, %bb.ay ], [ 114, %bb.aw ], [ 116, %bb.ax ]
  store i8 92, ptr %.03757.i.i, align 1, !tbaa !19
  %i.il = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 1
  %i.im = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 2
  store i8 %.0.i44.i.i, ptr %i.il, align 1, !tbaa !19
  br label %bb.bb

special_escape.exit43.i.i:                        ; preds = %.lr.ph60.i.i
  %i.in = icmp sgt i8 %i.ik, 31
  %i.io = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 1 ; 2 uses
  br i1 %i.in, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %special_escape.exit43.i.i
  store i8 %i.ik, ptr %.03757.i.i, align 1, !tbaa !19
  br label %bb.bb

bb.ba:                                            ; preds = %special_escape.exit43.i.i
  store i8 92, ptr %.03757.i.i, align 1, !tbaa !19
  %i.ip = lshr i8 %i.ik, 6
  %i.iq = or disjoint i8 %i.ip, 48
  %i.ir = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 2
  store i8 %i.iq, ptr %i.io, align 1, !tbaa !19
  %i.is = lshr i8 %i.ik, 3
  %i.it = and i8 %i.is, 7
  %i.iu = or disjoint i8 %i.it, 48
  %i.iv = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 3
  store i8 %i.iu, ptr %i.ir, align 1, !tbaa !19
  %i.iw = and i8 %i.ik, 7
  %i.ix = or disjoint i8 %i.iw, 48
  %i.iy = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 4
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !19
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %special_escape.exit45.i.i
  %.138.i.i = phi ptr [ %i.im, %special_escape.exit45.i.i ], [ %i.io, %bb.az ], [ %i.iy, %bb.ba ]
  %i.iz = icmp ult ptr %i.ij, %i.ii
  br i1 %i.iz, label %.lr.ph60.i.i, label %default_bytes.exit.i, !llvm.loop !33

default_bytes.exit.i:                             ; preds = %bb.bb, %bb.av
  %i.ja = insertvalue { ptr, i64 } poison, ptr %.0.i48.i.i, 0
  %i.jb = insertvalue { ptr, i64 } %i.ja, i64 %.0.lcssa.i.i, 1
  br label %default_string.exit

bb.bc:                                            ; preds = %bb.af
  unreachable

default_string.exit:                              ; preds = %strviewdup.exit.i, %strviewdup.exit49.i, %bb.ae, %strviewdup.exit58.i, %strviewdup.exit67.i, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %strviewdup2.exit.i, %default_bytes.exit.i
  %.fca.1.insert.merged.i = phi { ptr, i64 } [ %i.fw, %strviewdup.exit58.i ], [ %i.gn, %strviewdup.exit67.i ], [ %i.go, %bb.ak ], [ %i.gp, %bb.al ], [ %i.gq, %bb.am ], [ %i.gr, %bb.an ], [ %i.gt, %bb.ao ], [ %i.gu, %bb.ap ], [ %i.hh, %strviewdup2.exit.i ], [ %i.jb, %default_bytes.exit.i ], [ %i.fh, %bb.ae ], [ %i.ff, %strviewdup.exit49.i ], [ %i.et, %strviewdup.exit.i ] ; 2 uses
  %i.jc = extractvalue { ptr, i64 } %.fca.1.insert.merged.i, 0
  %i.jd = extractvalue { ptr, i64 } %.fca.1.insert.merged.i, 1
  %i.je = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.jf = or i8 %i.je, 64
  store i8 %i.jf, ptr %i.ab, align 1, !tbaa !19
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 80
  store ptr %i.jc, ptr %i.jg, align 1
  %.sroa.56.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 88
  store i64 %i.jd, ptr %.sroa.56.0..sroa_idx.i115, align 1
  br label %bb.bd

bb.bd:                                            ; preds = %default_string.exit, %bb.v
  %i.jh = tail call ptr @upb_FieldDef_ContainingOneof(ptr noundef %1) #11 ; 2 uses
  %.not70 = icmp eq ptr %i.jh, null
  br i1 %.not70, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ji = tail call i32 @upb_OneofDef_Index(ptr noundef nonnull %i.jh) #11
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 9 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !19
  %i.jl = or i8 %i.jk, 1
  store i8 %i.jl, ptr %i.jj, align 1, !tbaa !19
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 24
  store i32 %i.ji, ptr %i.jm, align 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.jn = tail call zeroext i1 @_upb_FieldDef_IsProto3Optional(ptr noundef %1) #11
  br i1 %i.jn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 9 ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !19
  %i.jq = or i8 %i.jp, 4
  store i8 %i.jq, ptr %i.jo, align 1, !tbaa !19
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 10
  store i8 1, ptr %i.jr, align 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.js = tail call zeroext i1 @upb_FieldDef_HasOptions(ptr noundef %1) #11
  br i1 %i.js, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.jt = tail call ptr @upb_FieldDef_Options(ptr noundef %1) #11
  %i.ju = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.jv = call i32 @upb_Encode(ptr noundef %i.jt, ptr noundef nonnull @google__protobuf__FieldOptions_msg_init, i32 noundef 0, ptr noundef %i.ju, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.jw = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not71 = icmp eq ptr %i.jw, null
  br i1 %.not71, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.jx, i32 noundef 1) #13
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.jy = load i64, ptr %i.b, align 8, !tbaa !29
  %i.jz = call ptr @upb_FieldDef_File(ptr noundef %1) #11
  %i.ka = call ptr @upb_FileDef_Pool(ptr noundef %i.jz) #11
  %i.kb = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.ka) #11
  %i.kc = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %google__protobuf__FieldOptions_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__FieldOptions_msg_init, i64 8), align 8, !tbaa !11
  %i.kd = zext i16 %google__protobuf__FieldOptions_msg_init.val.i.i to i64 ; 5 uses
  %i.ke = and i64 %i.kd, 7
  %i.kf = icmp eq i64 %i.ke, 0
  call void @llvm.assume(i1 %i.kf)
  %.val.i.i.i.i116 = load ptr, ptr %i.kc, align 8, !tbaa !13 ; 4 uses
  %i.kg = getelementptr i8, ptr %i.kc, i64 8
  %.val11.i.i.i.i117 = load ptr, ptr %i.kg, align 8, !tbaa !16
  %i.kh = ptrtoint ptr %.val11.i.i.i.i117 to i64
  %i.ki = ptrtoint ptr %.val.i.i.i.i116 to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = icmp ult i64 %i.kj, %i.kd
  br i1 %i.kk, label %upb_Arena_Malloc.exit.i.i.i119, label %upb_Arena_Malloc.exit.thread.i.i.i118, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i118:            ; preds = %bb.bk
  %i.kl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i116, i64 %i.kd
  store ptr %i.kl, ptr %i.kc, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i116) ]
  br label %bb.bl

upb_Arena_Malloc.exit.i.i.i119:                   ; preds = %bb.bk
  %i.km = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.kc, i64 noundef %i.kd) #11 ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i120, label %bb.bm, label %bb.bl, !prof !18

bb.bl:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i119, %upb_Arena_Malloc.exit.thread.i.i.i118
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i116, %upb_Arena_Malloc.exit.thread.i.i.i118 ], [ %i.km, %upb_Arena_Malloc.exit.i.i.i119 ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.kd, i1 false)
  %i.kn = call i32 @upb_Decode(ptr noundef nonnull %i.jw, i64 noundef %i.jy, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef nonnull @google__protobuf__FieldOptions_msg_init, ptr noundef %i.kb, i32 noundef 0, ptr noundef nonnull %i.kc) #11
  %.not10.i = icmp eq i32 %i.kn, 0
  br i1 %.not10.i, label %google_protobuf_FieldOptions_parse_ex.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %upb_Arena_Malloc.exit.i.i.i119
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.ko, i32 noundef 1) #13
  unreachable

google_protobuf_FieldOptions_parse_ex.exit:       ; preds = %bb.bl
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FieldOptions_msg_init) #11, !srcloc !20
  %i.kp = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.kq = or i8 %i.kp, -128
  store i8 %i.kq, ptr %i.ab, align 1, !tbaa !19
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 112
  %i.ks = ptrtoint ptr %.0.i3.i.i.i to i64
  store i64 %i.ks, ptr %i.kr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.bn

bb.bn:                                            ; preds = %google_protobuf_FieldOptions_parse_ex.exit, %bb.bh
  ret ptr %.0.i3.i.i
}

end_hunk_0
