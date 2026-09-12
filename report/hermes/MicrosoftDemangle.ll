Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/MicrosoftDemangle?download=true
inline.NumInlined: 804
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL17outputEscapedCharR12OutputStreamj:bb.a
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !43 ; 2 uses
  %i.cq = add i64 %i.cp, 2                        ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i59 = icmp ult i64 %i.cq, %i.cs
  %.pre.i.i60 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i59, label %_ZN12OutputStream4growEm.exit.i.i64, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = shl i64 %i.cs, 1
  %spec.store.select.i.i.i61 = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cq) ; 2 uses
  store i64 %spec.store.select.i.i.i61, ptr %i.cr, align 8
  %i.cu = tail call ptr @realloc(ptr noundef %.pre.i.i60, i64 noundef %spec.store.select.i.i.i61) #24 ; 3 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !44
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.y, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i62

._ZN12OutputStream4growEm.exit_crit_edge.i.i62:   ; preds = %bb.x
  %.pre6.i.i63 = load i64, ptr %i.co, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i64

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i64:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i62, %bb.w
  %i.cw = phi i64 [ %i.cp, %bb.w ], [ %.pre6.i.i63, %._ZN12OutputStream4growEm.exit_crit_edge.i.i62 ]
  %i.cx = phi ptr [ %.pre.i.i60, %bb.w ], [ %i.cu, %._ZN12OutputStream4growEm.exit_crit_edge.i.i62 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i16 29276, ptr %i.cy, align 1
  %i.cz = load i64, ptr %i.co, align 8, !tbaa !43
  %i.da = add i64 %i.cz, 2
  store i64 %i.da, ptr %i.co, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.z:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !43 ; 2 uses
  %i.dd = add i64 %i.dc, 2                        ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i66 = icmp ult i64 %i.dd, %i.df
  %.pre.i.i67 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i66, label %_ZN12OutputStream4growEm.exit.i.i71, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = shl i64 %i.df, 1
  %spec.store.select.i.i.i68 = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 %i.dd) ; 2 uses
  store i64 %spec.store.select.i.i.i68, ptr %i.de, align 8
  %i.dh = tail call ptr @realloc(ptr noundef %.pre.i.i67, i64 noundef %spec.store.select.i.i.i68) #24 ; 3 uses
  store ptr %i.dh, ptr %0, align 8, !tbaa !44
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ab, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i69

._ZN12OutputStream4growEm.exit_crit_edge.i.i69:   ; preds = %bb.aa
  %.pre6.i.i70 = load i64, ptr %i.db, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i71

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i71:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i69, %bb.z
  %i.dj = phi i64 [ %i.dc, %bb.z ], [ %.pre6.i.i70, %._ZN12OutputStream4growEm.exit_crit_edge.i.i69 ]
  %i.dk = phi ptr [ %.pre.i.i67, %bb.z ], [ %i.dh, %._ZN12OutputStream4growEm.exit_crit_edge.i.i69 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  store i16 29788, ptr %i.dl, align 1
  %i.dm = load i64, ptr %i.db, align 8, !tbaa !43
  %i.dn = add i64 %i.dm, 2
  store i64 %i.dn, ptr %i.db, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.ac:                                            ; preds = %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !43 ; 2 uses
  %i.dq = add i64 %i.dp, 2                        ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i73 = icmp ult i64 %i.dq, %i.ds
  %.pre.i.i74 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i73, label %_ZN12OutputStream4growEm.exit.i.i78, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = shl i64 %i.ds, 1
  %spec.store.select.i.i.i75 = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 %i.dq) ; 2 uses
  store i64 %spec.store.select.i.i.i75, ptr %i.dr, align 8
  %i.du = tail call ptr @realloc(ptr noundef %.pre.i.i74, i64 noundef %spec.store.select.i.i.i75) #24 ; 3 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !44
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ae, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i76

._ZN12OutputStream4growEm.exit_crit_edge.i.i76:   ; preds = %bb.ad
  %.pre6.i.i77 = load i64, ptr %i.do, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i78

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i78:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i76, %bb.ac
  %i.dw = phi i64 [ %i.dp, %bb.ac ], [ %.pre6.i.i77, %._ZN12OutputStream4growEm.exit_crit_edge.i.i76 ]
  %i.dx = phi ptr [ %.pre.i.i74, %bb.ac ], [ %i.du, %._ZN12OutputStream4growEm.exit_crit_edge.i.i76 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store i16 30300, ptr %i.dy, align 1
  %i.dz = load i64, ptr %i.do, align 8, !tbaa !43
  %i.ea = add i64 %i.dz, 2
  store i64 %i.ea, ptr %i.do, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.af:                                            ; preds = %bb.a
  %i.eb = add i32 %1, -32
  %or.cond = icmp ult i32 %i.eb, 95
  br i1 %or.cond, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ec = trunc nuw nsw i32 %1 to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !43 ; 2 uses
  %i.ef = add i64 %i.ee, 1                        ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i80 = icmp ult i64 %i.ef, %i.eh
  %.pre.i.i81 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i80, label %_ZN12OutputStreamlsEc.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = shl i64 %i.eh, 1
  %spec.store.select.i.i.i82 = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 %i.ef) ; 2 uses
  store i64 %spec.store.select.i.i.i82, ptr %i.eg, align 8
  %i.ej = tail call ptr @realloc(ptr noundef %.pre.i.i81, i64 noundef %spec.store.select.i.i.i82) #24 ; 3 uses
  store ptr %i.ej, ptr %0, align 8, !tbaa !44
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ai, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i83

._ZN12OutputStream4growEm.exit_crit_edge.i.i83:   ; preds = %bb.ah
  %.pre1.i.i = load i64, ptr %i.ed, align 8, !tbaa !43 ; 2 uses
  %.pre2.i.i = add i64 %.pre1.i.i, 1
  br label %_ZN12OutputStreamlsEc.exit

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreamlsEc.exit:                       ; preds = %bb.ag, %._ZN12OutputStream4growEm.exit_crit_edge.i.i83
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i83 ], [ %i.ef, %bb.ag ]
  %i.el = phi i64 [ %.pre1.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i83 ], [ %i.ee, %bb.ag ]
  %i.em = phi ptr [ %i.ej, %._ZN12OutputStream4growEm.exit_crit_edge.i.i83 ], [ %.pre.i.i81, %bb.ag ]
  store i64 %.pre-phi.i.i, ptr %i.ed, align 8, !tbaa !43
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.el
  store i8 %i.ec, ptr %i.en, align 1, !tbaa !15
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.aj:                                            ; preds = %bb.af
  %i.eo = icmp eq i32 %1, 0
  br i1 %i.eo, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !43 ; 2 uses
  %i.er = add i64 %i.eq, 4                        ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.er, %i.et
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN12OutputStream4growEm.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eu = shl i64 %i.et, 1
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.er) ; 2 uses
  store i64 %spec.store.select.i.i.i.i, ptr %i.es, align 8
  %i.ev = tail call ptr @realloc(ptr noundef %.pre.i.i.i, i64 noundef %spec.store.select.i.i.i.i) #24 ; 3 uses
  store ptr %i.ev, ptr %0, align 8, !tbaa !44
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.am, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i.i:   ; preds = %bb.al
  %.pre6.i.i.i = load i64, ptr %i.ep, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i.i:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i, %bb.ak
  %i.ex = phi i64 [ %i.eq, %bb.ak ], [ %.pre6.i.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i ]
  %i.ey = phi ptr [ %.pre.i.i.i, %bb.ak ], [ %i.ev, %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i32 808482908, ptr %i.ez, align 1
  %i.fa = load i64, ptr %i.ep, align 8, !tbaa !43
  %i.fb = add i64 %i.fa, 4
  store i64 %i.fb, ptr %i.ep, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.a, i8 0, i64 17, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.an
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.i ], [ 14, %bb.an ] ; 3 uses
  %.01226.i = phi i32 [ %i.fp, %.preheader.i ], [ %1, %bb.an ] ; 3 uses
  %i.fc = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.fd = trunc i32 %.01226.i to i8
  %i.fe = and i8 %i.fd, 15                        ; 3 uses
  %i.ff = icmp samesign ult i8 %i.fe, 10
  %i.fg = or disjoint i8 %i.fe, 48
  %i.fh = add nuw nsw i8 %i.fe, 55
  %i.fi = select i1 %i.ff, i8 %i.fg, i8 %i.fh
  store i8 %i.fi, ptr %i.fc, align 2, !tbaa !15
  %2 = lshr i32 %.01226.i, 4
  %i.fj = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.fk = getelementptr i8, ptr %i.fj, i64 -1
  %3 = trunc i32 %2 to i8
  %4 = and i8 %3, 15                              ; 3 uses
  %i.fl = icmp samesign ult i8 %4, 10
  %i.fm = or disjoint i8 %4, 48
  %i.fn = add nuw nsw i8 %4, 55
  %i.fo = select i1 %i.fl, i8 %i.fm, i8 %i.fn
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !15
  %i.fp = lshr i32 %.01226.i, 8                   ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fc, i64 -2
  store i8 120, ptr %i.fq, align 2, !tbaa !15
  %indvars.iv.next = add nsw i64 %indvars.iv, -4  ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fc, i64 -3
  store i8 92, ptr %i.fr, align 1, !tbaa !15
  %.not.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i, label %bb.ao, label %.preheader.i, !llvm.loop !173

bb.ao:                                            ; preds = %.preheader.i
  %sext = shl i64 %indvars.iv.next, 32
  %i.fs = ashr exact i64 %sext, 32
  %i.ft = getelementptr i8, ptr %i.a, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 1      ; 2 uses
  %i.fv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fu) #21 ; 4 uses
  %i.fw = icmp samesign eq i64 %i.fv, 0
  br i1 %i.fw, label %_ZN12OutputStreamlsE10StringView.exit21.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !43 ; 2 uses
  %i.fz = add i64 %i.fy, %i.fv                    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i15.i = icmp ult i64 %i.fz, %i.gb
  %.pre.i.i16.i = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i15.i, label %_ZN12OutputStream4growEm.exit.i.i20.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gc = shl i64 %i.gb, 1
  %spec.store.select.i.i.i17.i = tail call i64 @llvm.umax.i64(i64 %i.gc, i64 %i.fz) ; 2 uses
  store i64 %spec.store.select.i.i.i17.i, ptr %i.ga, align 8
  %i.gd = tail call ptr @realloc(ptr noundef %.pre.i.i16.i, i64 noundef %spec.store.select.i.i.i17.i) #24 ; 3 uses
  store ptr %i.gd, ptr %0, align 8, !tbaa !44
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.ar, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i: ; preds = %bb.aq
  %.pre6.i.i19.i = load i64, ptr %i.fx, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i20.i

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i20.i:            ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i, %bb.ap
  %i.gf = phi i64 [ %i.fy, %bb.ap ], [ %.pre6.i.i19.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i ]
  %i.gg = phi ptr [ %.pre.i.i16.i, %bb.ap ], [ %i.gd, %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr nonnull align 1 %i.fu, i64 %i.fv, i1 false)
  %i.gi = load i64, ptr %i.fx, align 8, !tbaa !43
  %i.gj = add i64 %i.gi, %i.fv
  store i64 %i.gj, ptr %i.fx, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit21.i

_ZN12OutputStreamlsE10StringView.exit21.i:        ; preds = %_ZN12OutputStream4growEm.exit.i.i20.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN12OutputStreamlsE10StringView.exit

_ZN12OutputStreamlsE10StringView.exit:            ; preds = %_ZN12OutputStreamlsE10StringView.exit21.i, %_ZN12OutputStream4growEm.exit.i.i.i, %_ZN12OutputStream4growEm.exit.i.i78, %_ZN12OutputStream4growEm.exit.i.i71, %_ZN12OutputStream4growEm.exit.i.i64, %_ZN12OutputStream4growEm.exit.i.i57, %_ZN12OutputStream4growEm.exit.i.i50, %_ZN12OutputStream4growEm.exit.i.i43, %_ZN12OutputStream4growEm.exit.i.i36, %_ZN12OutputStream4growEm.exit.i.i29, %_ZN12OutputStream4growEm.exit.i.i22, %_ZN12OutputStream4growEm.exit.i.i, %_ZN12OutputStreamlsEc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN12OutputStreamlsEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %.not.i.i = icmp ult i64 %i.c, %i.e
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !44  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStreampLEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %i.e, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.c) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.d, align 8
  %i.g = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #24 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !44
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.b
  %.pre1.i = load i64, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %.pre2.i = add i64 %.pre1.i, 1
  br label %_ZN12OutputStreampLEc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreampLEc.exit:                       ; preds = %bb.a, %._ZN12OutputStream4growEm.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre2.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %i.c, %bb.a ]
  %i.i = phi i64 [ %.pre1.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %i.b, %bb.a ]
  %i.j = phi ptr [ %i.g, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %.pre.i, %bb.a ]
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 %1, ptr %i.k, align 1, !tbaa !15
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr %1, ptr %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = add i64 %i.i, %i.e                       ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !33
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 4096) ; 2 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.speculated.i, ptr %i.s, align 8, !tbaa !33
  store ptr %i.o, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.e, ptr %i.t, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit

_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ %i.j, %bb.a ] ; 3 uses
  %i.u = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) %1) #19 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.d
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.0.i, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.v, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %class.OutputStream, align 8        ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 19 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 16                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !33
  store ptr %i.o, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 16, ptr %i.t, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

end_hunk_0
