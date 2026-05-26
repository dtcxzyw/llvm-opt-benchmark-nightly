inline.NumInlined: 245
inline.NumDeleted: 86
begin_hunk_0_@rand_range:bb.a

bb.q:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread
  %i.ar = and i64 %i.ap, 3
  %i.as = icmp eq i64 %i.ar, 2
  br i1 %i.as, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not.i.i = icmp eq i64 %i.ap, -9223372036854775806
  br i1 %.not.i.i, label %.thread95, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.neg.i.i = ashr i64 %i.ap, 63
  %i.at = add nsw i64 %.neg.i.i, 2
  %i.au = and i64 %i.ap, -4
  %i.av = or i64 %i.at, %i.au                     ; 2 uses
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.av, i64 range(i64 1, 0) %i.av, i64 61)
  %i.ax = bitcast i64 %i.aw to double
  br label %rb_float_value_inline.exit

bb.t:                                             ; preds = %bb.q
  %i.ay = inttoptr i64 %i.ap to ptr
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !98
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.s, %bb.t
  %.0.i54 = phi double [ %i.ba, %bb.t ], [ %i.ax, %bb.s ] ; 3 uses
  %i.bb = call double @llvm.fabs.f64(double %.0.i54) #29
  %i.bc = fcmp oeq double %i.bb, +inf             ; 2 uses
  br i1 %i.bc, label %bb.u, label %bb.ad

.thread95:                                        ; preds = %bb.r
  store i64 4, ptr %i.d, align 8, !tbaa !35
  br label %bb.ar

bb.u:                                             ; preds = %rb_float_value_inline.exit
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !35
  %i.be = call i64 @rb_to_float(i64 noundef %i.bd) #23 ; 5 uses
  %i.bf = and i64 %i.be, 3
  %i.bg = icmp eq i64 %i.bf, 2
  br i1 %i.bg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i = icmp eq i64 %i.be, -9223372036854775806
  br i1 %.not.i.i.i, label %rb_float_value_inline.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.neg.i.i.i = ashr i64 %i.be, 63
  %i.bh = add nsw i64 %.neg.i.i.i, 2
  %i.bi = and i64 %i.be, -4
  %i.bj = or i64 %i.bh, %i.bi                     ; 2 uses
  %i.bk = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.bj, i64 range(i64 1, 0) %i.bj, i64 61)
  %i.bl = bitcast i64 %i.bk to double
  br label %rb_float_value_inline.exit.i

bb.x:                                             ; preds = %bb.u
  %i.bm = inttoptr i64 %i.be to ptr
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !98
  br label %rb_float_value_inline.exit.i

rb_float_value_inline.exit.i:                     ; preds = %bb.x, %bb.w, %bb.v
  %.0.i.i = phi double [ %i.bo, %bb.x ], [ %i.bl, %bb.w ], [ 0.000000e+00, %bb.v ] ; 2 uses
  %i.bp = call double @llvm.fabs.f64(double %.0.i.i)
  %i.bq = fcmp ueq double %i.bp, +inf
  br i1 %i.bq, label %bb.y, label %float_value.exit

bb.y:                                             ; preds = %rb_float_value_inline.exit.i
  call fastcc void @domain_error() #27
  unreachable

float_value.exit:                                 ; preds = %rb_float_value_inline.exit.i
  %i.br = fmul nnan double %.0.i.i, 5.000000e-01  ; 2 uses
  %i.bs = call i64 @rb_to_float(i64 noundef %i.i) #23 ; 5 uses
  %i.bt = and i64 %i.bs, 3
  %i.bu = icmp eq i64 %i.bt, 2
  br i1 %i.bu, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %float_value.exit
  %.not.i.i.i57 = icmp eq i64 %i.bs, -9223372036854775806
  br i1 %.not.i.i.i57, label %rb_float_value_inline.exit.i55, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.neg.i.i.i58 = ashr i64 %i.bs, 63
  %i.bv = add nsw i64 %.neg.i.i.i58, 2
  %i.bw = and i64 %i.bs, -4
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.bx, i64 range(i64 1, 0) %i.bx, i64 61)
  %i.bz = bitcast i64 %i.by to double
  br label %rb_float_value_inline.exit.i55

bb.ab:                                            ; preds = %float_value.exit
  %i.ca = inttoptr i64 %i.bs to ptr
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !98
  br label %rb_float_value_inline.exit.i55

rb_float_value_inline.exit.i55:                   ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i.i56 = phi double [ %i.cc, %bb.ab ], [ %i.bz, %bb.aa ], [ 0.000000e+00, %bb.z ] ; 2 uses
  %i.cd = call double @llvm.fabs.f64(double %.0.i.i56)
  %i.ce = fcmp ueq double %i.cd, +inf
  br i1 %i.ce, label %bb.ac, label %float_value.exit59

bb.ac:                                            ; preds = %rb_float_value_inline.exit.i55
  call fastcc void @domain_error() #27
  unreachable

float_value.exit59:                               ; preds = %rb_float_value_inline.exit.i55
  %i.cf = fmul nnan double %.0.i.i56, 5.000000e-01 ; 2 uses
  %i.cg = fadd double %i.br, %i.cf
  %i.ch = fsub double %i.cf, %i.br
  br label %bb.af

bb.ad:                                            ; preds = %rb_float_value_inline.exit
  %i.ci = fcmp uno double %.0.i54, 0.000000e+00
  br i1 %i.ci, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @domain_error() #27
  unreachable

bb.af:                                            ; preds = %bb.ad, %float_value.exit59
  %.048 = phi double [ %i.ch, %float_value.exit59 ], [ %.0.i54, %bb.ad ] ; 4 uses
  %.047 = phi double [ %i.cg, %float_value.exit59 ], [ 5.000000e-01, %bb.ad ]
  store i64 4, ptr %i.d, align 8, !tbaa !35
  %i.cj = fcmp ogt double %.048, 0.000000e+00
  br i1 %i.cj, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.ck = load i32, ptr %i.e, align 4, !tbaa !7
  %i.cl = call fastcc double @random_real(i64 noundef %0, ptr noundef %1, i32 noundef %i.ck) ; 2 uses
  br i1 %i.bc, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.cm = fadd double %i.cl, -5.000000e-01
  %i.cn = fmul double %.048, %i.cm
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double 2.000000e+00, double %.047) ; 2 uses
  %i.cp = bitcast double %i.co to i64             ; 5 uses
  %cond.i = icmp eq i64 %i.cp, 3458764513820540928
  br i1 %cond.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cq = lshr i64 %i.cp, 60
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 7
  %i.ct = add nsw i32 %i.cs, -5
  %i.cu = icmp ult i32 %i.ct, -2
  br i1 %i.cu, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cv = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.cp, i64 range(i64 3458764513820540929, 3458764513820540928) %i.cp, i64 3)
  %i.cw = and i64 %i.cv, -4
  %i.cx = or disjoint i64 %i.cw, 2
  br label %rb_float_new_inline.exit

bb.ak:                                            ; preds = %bb.ai
  %i.cy = icmp eq i64 %i.cp, 0
  br i1 %i.cy, label %rb_float_new_inline.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.cz = call i64 @rb_float_new_in_heap(double noundef %i.co) #23
  br label %rb_float_new_inline.exit

bb.am:                                            ; preds = %bb.ag
  %i.da = fmul double %.048, %i.cl                ; 2 uses
  %i.db = bitcast double %i.da to i64             ; 5 uses
  %cond.i61 = icmp eq i64 %i.db, 3458764513820540928
  br i1 %cond.i61, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dc = lshr i64 %i.db, 60
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = and i32 %i.dd, 7
  %i.df = add nsw i32 %i.de, -5
  %i.dg = icmp ult i32 %i.df, -2
  br i1 %i.dg, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dh = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.db, i64 range(i64 3458764513820540929, 3458764513820540928) %i.db, i64 3)
  %i.di = and i64 %i.dh, -4
  %i.dj = or disjoint i64 %i.di, 2
  br label %rb_float_new_inline.exit.thread.sink.split

bb.ap:                                            ; preds = %bb.an
  %i.dk = icmp eq i64 %i.db, 0
  br i1 %i.dk, label %rb_float_new_inline.exit.thread.sink.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %i.dl = call i64 @rb_float_new_in_heap(double noundef %i.da) #23
  br label %rb_float_new_inline.exit.thread.sink.split

bb.ar:                                            ; preds = %.thread95, %bb.af
  %.04898 = phi double [ 0.000000e+00, %.thread95 ], [ %.048, %bb.af ]
  %i.dm = fcmp une double %.04898, 0.000000e+00
  %i.dn = load i32, ptr %i.e, align 4
  %i.do = icmp ne i32 %i.dn, 0
  %or.cond = select i1 %i.dm, i1 true, i1 %i.do
  br i1 %or.cond, label %rb_float_new_inline.exit.thread, label %rb_float_new_inline.exit.thread.sink.split

rb_float_new_inline.exit.thread.sink.split:       ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.j, %bb.i, %bb.p
  %.sink = phi i64 [ -9223372036854775806, %bb.ap ], [ %i.ah, %bb.j ], [ %i.ao, %bb.p ], [ %i.ag, %bb.i ], [ %i.dj, %bb.ao ], [ %i.dl, %bb.aq ], [ -9223372036854775806, %bb.ar ] ; 2 uses
  store i64 %.sink, ptr %i.d, align 8, !tbaa !35
  br label %rb_float_new_inline.exit.thread

rb_float_new_inline.exit.thread:                  ; preds = %rb_float_new_inline.exit.thread.sink.split, %bb.k, %.lr.ph.preheader, %bb.ar, %._crit_edge, %RB_FLOAT_TYPE_P.exit.thread
  %.fr110 = phi i64 [ 4, %RB_FLOAT_TYPE_P.exit.thread ], [ 4, %._crit_edge ], [ 4, %bb.ar ], [ 4, %bb.k ], [ 4, %.lr.ph.preheader ], [ %.sink, %rb_float_new_inline.exit.thread.sink.split ] ; 17 uses
  %i.dp = load i64, ptr %i.c, align 8, !tbaa !35  ; 9 uses
  %3 = trunc i64 %i.dp to i1
  %4 = trunc i64 %.fr110 to i1
  %or.cond129 = select i1 %3, i1 %4, i1 false
  br i1 %or.cond129, label %bb.as, label %bb.av

bb.as:                                            ; preds = %rb_float_new_inline.exit.thread
  %i.dq = ashr i64 %i.dp, 1
  %i.dr = ashr i64 %.fr110, 1
  %i.ds = add nsw i64 %i.dr, %i.dq                ; 3 uses
  %i.dt = add i64 %i.ds, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.dt, -1
  br i1 %or.cond.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.du = shl nsw i64 %i.ds, 1
  %i.dv = or disjoint i64 %i.du, 1
  br label %rb_float_new_inline.exit

bb.au:                                            ; preds = %bb.as
  %i.dw = call i64 @rb_int2big(i64 noundef %i.ds) #23
  br label %rb_float_new_inline.exit

bb.av:                                            ; preds = %rb_float_new_inline.exit.thread
  %i.dx = icmp eq i64 %.fr110, 0
  %i.dy = and i64 %.fr110, 7
  %i.dz = icmp ne i64 %i.dy, 0
  %i.ea = or i1 %i.dx, %i.dz
  br i1 %i.ea, label %bb.aw, label %rb_type.exit

bb.aw:                                            ; preds = %bb.av
  %i.eb = call i64 @llvm.fshl.i64(i64 %.fr110, i64 %.fr110, i64 62)
  switch i64 %i.eb, label %bb.ax [
    i64 0, label %rb_float_new_inline.exit77
    i64 1, label %rb_float_new_inline.exit
    i64 5, label %rb_float_new_inline.exit77
    i64 9, label %rb_float_new_inline.exit77
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ec = trunc i64 %.fr110 to i1
  %i.ed = and i64 %.fr110, 254
  %i.ee = icmp eq i64 %i.ed, 12
  %or.cond112 = or i1 %i.ee, %i.ec
  br i1 %or.cond112, label %rb_float_new_inline.exit77, label %rb_type.exit.thread104

rb_type.exit:                                     ; preds = %bb.av
  %i.ef = inttoptr i64 %.fr110 to ptr
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !53
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 31
  switch i32 %i.ei, label %rb_float_new_inline.exit77 [
    i32 17, label %rb_float_new_inline.exit
    i32 10, label %bb.ay
    i32 4, label %rb_type.exit.thread104
  ]

bb.ay:                                            ; preds = %rb_type.exit
  %i.ej = call i64 @rb_big_plus(i64 noundef %.fr110, i64 noundef %i.dp) #23
  br label %rb_float_new_inline.exit

rb_type.exit.thread104:                           ; preds = %bb.ax, %rb_type.exit
  %i.ek = call i64 @rb_check_to_float(i64 noundef %i.dp) #23 ; 6 uses
  %i.el = icmp eq i64 %i.ek, 4
  br i1 %i.el, label %rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge, label %bb.az

rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge: ; preds = %rb_type.exit.thread104
  %.pre117 = load i64, ptr %i.c, align 8, !tbaa !35
  br label %rb_float_new_inline.exit77

bb.az:                                            ; preds = %rb_type.exit.thread104
  %i.em = and i64 %.fr110, 3
  %i.en = icmp eq i64 %i.em, 2
  br i1 %i.en, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %.not.i.i68 = icmp eq i64 %.fr110, -9223372036854775806
  br i1 %.not.i.i68, label %rb_float_value_inline.exit70, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.neg.i.i69 = ashr i64 %.fr110, 63
  %i.eo = add nsw i64 %.neg.i.i69, 2
  %i.ep = and i64 %.fr110, -4
  %i.eq = or i64 %i.eo, %i.ep                     ; 2 uses
  %i.er = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.eq, i64 range(i64 1, 0) %i.eq, i64 61)
  %i.es = bitcast i64 %i.er to double
  br label %rb_float_value_inline.exit70

bb.bc:                                            ; preds = %bb.az
  %i.et = inttoptr i64 %.fr110 to ptr
  %i.eu = getelementptr i8, ptr %i.et, i64 16
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !98
  br label %rb_float_value_inline.exit70

rb_float_value_inline.exit70:                     ; preds = %bb.ba, %bb.bb, %bb.bc
  %.0.i67 = phi double [ %i.ev, %bb.bc ], [ %i.es, %bb.bb ], [ 0.000000e+00, %bb.ba ]
  %i.ew = and i64 %i.ek, 3
  %i.ex = icmp eq i64 %i.ew, 2
  br i1 %i.ex, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %rb_float_value_inline.exit70
  %.not.i.i72 = icmp eq i64 %i.ek, -9223372036854775806
  br i1 %.not.i.i72, label %rb_float_value_inline.exit74, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.neg.i.i73 = ashr i64 %i.ek, 63
  %i.ey = add nsw i64 %.neg.i.i73, 2
  %i.ez = and i64 %i.ek, -4
  %i.fa = or i64 %i.ey, %i.ez                     ; 2 uses
  %i.fb = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.fa, i64 range(i64 1, 0) %i.fa, i64 61)
  %i.fc = bitcast i64 %i.fb to double
  br label %rb_float_value_inline.exit74

bb.bf:                                            ; preds = %rb_float_value_inline.exit70
  %i.fd = inttoptr i64 %i.ek to ptr
  %i.fe = getelementptr i8, ptr %i.fd, i64 16
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !98
  br label %rb_float_value_inline.exit74

rb_float_value_inline.exit74:                     ; preds = %bb.bd, %bb.be, %bb.bf
  %.0.i71 = phi double [ %i.ff, %bb.bf ], [ %i.fc, %bb.be ], [ 0.000000e+00, %bb.bd ]
  %i.fg = fadd double %.0.i67, %.0.i71            ; 2 uses
  %i.fh = bitcast double %i.fg to i64             ; 5 uses
  %cond.i75 = icmp eq i64 %i.fh, 3458764513820540928
  br i1 %cond.i75, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %rb_float_value_inline.exit74
  %i.fi = lshr i64 %i.fh, 60
  %i.fj = trunc nuw nsw i64 %i.fi to i32
  %i.fk = and i32 %i.fj, 7
  %i.fl = add nsw i32 %i.fk, -5
  %i.fm = icmp ult i32 %i.fl, -2
  br i1 %i.fm, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fn = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.fh, i64 range(i64 3458764513820540929, 3458764513820540928) %i.fh, i64 3)
  %i.fo = and i64 %i.fn, -4
  %i.fp = or disjoint i64 %i.fo, 2
  br label %rb_float_new_inline.exit

bb.bi:                                            ; preds = %bb.bg
  %i.fq = icmp eq i64 %i.fh, 0
  br i1 %i.fq, label %rb_float_new_inline.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %rb_float_value_inline.exit74
  %i.fr = call i64 @rb_float_new_in_heap(double noundef %i.fg) #23
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit77:                       ; preds = %rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge, %bb.aw, %bb.aw, %bb.ax, %bb.aw, %rb_type.exit
  %i.fs = phi i64 [ %.pre117, %rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge ], [ %i.dp, %bb.aw ], [ %i.dp, %bb.aw ], [ %i.dp, %bb.ax ], [ %i.dp, %bb.aw ], [ %i.dp, %rb_type.exit ]
  %i.ft = call i64 @rb_funcallv(i64 noundef %i.fs, i64 noundef 43, i32 noundef 1, ptr noundef nonnull %i.d) #23
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %range_values.exit, %bb.bh, %bb.bi, %bb.bj, %bb.aw, %bb.au, %bb.at, %bb.aj, %bb.ak, %bb.al, %range_values.exit.thread83, %rb_type.exit, %rb_float_new_inline.exit77, %bb.ay
  %.3 = phi i64 [ 0, %range_values.exit.thread83 ], [ -9223372036854775806, %bb.ak ], [ %i.ft, %rb_float_new_inline.exit77 ], [ %i.k, %range_values.exit ], [ %i.ej, %bb.ay ], [ %.fr110, %bb.aw ], [ %.fr110, %rb_type.exit ], [ %i.cx, %bb.aj ], [ %i.cz, %bb.al ], [ %i.dv, %bb.at ], [ %i.dw, %bb.au ], [ -9223372036854775806, %bb.bi ], [ %i.fr, %bb.bj ], [ %i.fp, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret i64 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rand_int(i64 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = trunc i64 %2 to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %2, 1                           ; 4 uses
  %.not22 = icmp eq i64 %i.d, 0
  br i1 %.not22, label %rb_ulong2num_inline.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not23 = icmp eq i32 %3, 0
  br i1 %.not23, label %bb.e, label %rb_ulong2num_inline.exit

bb.e:                                             ; preds = %bb.d
  %i.f = sub nsw i64 0, %i.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.018 = phi i64 [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = add nsw i64 %.018, -1
  %i.h = tail call fastcc i64 @random_ulong_limited(i64 noundef %0, ptr noundef %1, i64 noundef %i.g) ; 3 uses
  %i.i = icmp ult i64 %i.h, 4611686018427387904
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = or disjoint i64 %i.j, 1
  br label %rb_ulong2num_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.l = tail call i64 @rb_uint2big(i64 noundef %i.h) #23
  br label %rb_ulong2num_inline.exit

bb.i:                                             ; preds = %bb.a
  %i.m = tail call i32 @rb_bigzero_p(i64 noundef %2) #23
  %.not = icmp eq i32 %i.m, 0
end_hunk_0
