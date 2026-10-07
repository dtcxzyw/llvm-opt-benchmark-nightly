Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@js_get_fast_array_element:bb.a
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !218
  %i.by = zext i32 %2 to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !191 ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, -1                  ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.ca to i64
  %i.cc = uitofp i32 %i.ca to double
  %i.cd = bitcast double %i.cc to i64
  %.sroa.0.0.insert.ext.i.pn.i = select i1 %i.cb, i64 %.sroa.0.0.insert.ext.i.i, i64 %i.cd
  %.sroa.3.0.i = select i1 %i.cb, i64 0, i64 8
  store i64 %.sroa.0.0.insert.ext.i.pn.i, ptr %3, align 8, !tbaa !218
  br label %.sink.split

bb.t:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !218
  %.not96 = icmp ult i32 %2, %i.cf
  br i1 %.not96, label %bb.u, label %bb.ax, !prof !325

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !218
  %i.ci = zext i32 %2 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !240 ; 3 uses
  %i.cl = add i64 %i.ck, 2147483648
  %or.cond.i = icmp ult i64 %i.cl, 4294967296
  br i1 %or.cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.insert.ext.i139 = and i64 %i.ck, 4294967295
  br label %JS_NewBigInt64.exit

bb.w:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !232 ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 48 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !196
  %i.cr = add i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !197
  %i.cu = add i64 %i.ct, -1
  %i.cv = icmp ugt i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.af, label %bb.x, !prof !192

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 584
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 592
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !222 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cw
  br i1 %i.cz, label %bb.y, label %bb.z, !prof !192

bb.y:                                             ; preds = %bb.x
  %i.da = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.cn, i32 noundef 1) ; 2 uses
  %.not.i = icmp eq ptr %i.da, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i163 = phi ptr [ %i.da, %bb.y ], [ %i.cy, %bb.x ] ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i163, i64 38 ; 2 uses
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !221 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i163, i64 40
  %i.de = zext i16 %i.dc to i64
  %i.df = mul nuw nsw i64 %i.de, 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df ; 9 uses
  %i.dh = load i16, ptr %i.dg, align 8, !tbaa !218
  store i16 %i.dh, ptr %i.db, align 2, !tbaa !221
  store i16 %i.dc, ptr %i.dg, align 8, !tbaa !218
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i163, i64 34 ; 2 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !221
  %i.dk = add i16 %i.dj, 1                        ; 2 uses
  store i16 %i.dk, ptr %i.di, align 2, !tbaa !221
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i163, i64 36
  %i.dm = load i16, ptr %i.dl, align 4, !tbaa !221
  %i.dn = icmp eq i16 %i.dk, %i.dm
  br i1 %i.dn, label %bb.aa, label %bb.ab, !prof !192

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %.0.i163, align 8, !tbaa !223 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i163, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !222 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !222
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i163, i8 0, i64 16, i1 false)
  br label %bb.ab

._crit_edge.i:                                    ; preds = %bb.y
  %.pre.i = load ptr, ptr %i.cm, align 8, !tbaa !232
  br label %bb.af

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.co, align 8, !tbaa !217
  %i.du = add i64 %i.dt, 1
  store i64 %i.du, ptr %i.co, align 8, !tbaa !217
  %i.dv = load i16, ptr %i.dg, align 8, !tbaa !218
  %i.dw = icmp eq i16 %i.dv, -1
  br i1 %i.dw, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cn, i64 1064
  %i.dy = icmp eq ptr %i.dg, %i.dx
  br i1 %i.dy, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !219
  %i.eb = tail call i64 %i.ea(ptr noundef nonnull %i.dg) #49, !inline_history !1145 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.eb, 0
  %i.ec = select i1 %.not15.i.i.i, i64 8, i64 %i.eb
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !218
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !221
  %i.ei = zext i16 %i.eh to i64
  br label %bb.ah

bb.af:                                            ; preds = %._crit_edge.i, %bb.w
  %i.ej = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.cn, %bb.w ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1256 ; 3 uses
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !233, !range !234, !noundef !235
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %JS_NewBigInt64.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %i.ek, align 8, !tbaa !233
  %i.en = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1146 ; 0 uses
  store i8 0, ptr %i.ek, align 8, !tbaa !233
  br label %JS_NewBigInt64.exit

bb.ah:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.011.i.i.i = phi i64 [ 8, %bb.ac ], [ %i.ec, %bb.ad ], [ %i.ei, %bb.ae ]
  %i.eo = load i64, ptr %i.cp, align 8, !tbaa !196
  %i.ep = add i64 %i.eo, %.011.i.i.i
  store i64 %i.ep, ptr %i.cp, align 8, !tbaa !196
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 1, ptr %i.eq, align 4, !tbaa !191
  store i32 2, ptr %i.ds, align 8, !tbaa !191
  %i.er = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i64 %i.ck, ptr %i.er, align 4
  %i.es = ptrtoint ptr %i.ds to i64
  br label %JS_NewBigInt64.exit

JS_NewBigInt64.exit:                              ; preds = %bb.ah, %bb.af, %bb.ag, %bb.v
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.insert.ext.i139, %bb.v ], [ %i.es, %bb.ah ], [ 0, %bb.af ], [ 0, %bb.ag ]
  %.sroa.5.1.i = phi i64 [ 7, %bb.v ], [ -9, %bb.ah ], [ 6, %bb.af ], [ 6, %bb.ag ]
  store i64 %.sroa.0.1.i, ptr %3, align 8, !tbaa !218
  br label %.sink.split

bb.ai:                                            ; preds = %bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !218
  %.not95 = icmp ult i32 %2, %i.eu
  br i1 %.not95, label %bb.aj, label %bb.ax, !prof !325

bb.aj:                                            ; preds = %bb.ai
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !218
  %i.ex = zext i32 %2 to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !240 ; 5 uses
  %i.fa = icmp ult i64 %i.ez, 2147483648
  br i1 %i.fa, label %JS_NewBigUint64.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fb = icmp sgt i64 %i.ez, -1
  br i1 %i.fb, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fc = tail call fastcc ptr @js_bigint_new(ptr noundef %0, i32 noundef 2), !inline_history !1147 ; 3 uses
  %.not.i.i147 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i147, label %js_bigint_new_ui64.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i64 %i.ez, ptr %i.fd, align 4
  br label %js_bigint_new_ui64.exit

bb.an:                                            ; preds = %bb.ak
  %i.fe = tail call ptr @js_malloc(ptr noundef %0, i64 noundef 16), !inline_history !1148 ; 6 uses
  %.not.i14.i142 = icmp eq ptr %i.fe, null
  br i1 %.not.i14.i142, label %js_bigint_new_ui64.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -4
  store i32 1, ptr %i.ff, align 4, !tbaa !191
  store i32 3, ptr %i.fe, align 4, !tbaa !191
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i64 %i.ez, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !191
  br label %js_bigint_new_ui64.exit

js_bigint_new_ui64.exit:                          ; preds = %bb.an, %bb.al, %bb.am, %bb.ao
  %.1.i146 = phi ptr [ %i.fc, %bb.am ], [ %i.fe, %bb.ao ], [ null, %bb.al ], [ null, %bb.an ] ; 2 uses
  %.not.i123 = icmp eq ptr %.1.i146, null
  %i.fi = ptrtoint ptr %.1.i146 to i64
  %.sroa.5.0.i124 = select i1 %.not.i123, i64 6, i64 -9
  br label %JS_NewBigUint64.exit

JS_NewBigUint64.exit:                             ; preds = %bb.aj, %js_bigint_new_ui64.exit
  %.sroa.0.1.i125 = phi i64 [ %i.fi, %js_bigint_new_ui64.exit ], [ %i.ez, %bb.aj ]
  %.sroa.5.1.i126 = phi i64 [ %.sroa.5.0.i124, %js_bigint_new_ui64.exit ], [ 7, %bb.aj ]
  store i64 %.sroa.0.1.i125, ptr %3, align 8, !tbaa !218
  br label %.sink.split

bb.ap:                                            ; preds = %bb.a
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !218
  %.not94 = icmp ult i32 %2, %i.fk
  br i1 %.not94, label %bb.aq, label %bb.ax, !prof !325

bb.aq:                                            ; preds = %bb.ap
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !218
  %i.fn = zext i32 %2 to i64
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !221 ; 2 uses
  %i.fq = zext i16 %i.fp to i32                   ; 2 uses
  %i.fr = and i32 %i.fq, 31744                    ; 3 uses
  %i.fs = icmp eq i32 %i.fr, 31744
  %i.ft = and i32 %i.fq, 1023                     ; 2 uses
  br i1 %i.fs, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.not.i129 = icmp eq i32 %i.ft, 0
  %i.fu = select i1 %.not.i129, double +inf, double +qnan
  br label %fromfp16.exit

bb.as:                                            ; preds = %bb.aq
  %i.fv = uitofp nneg i32 %i.ft to double
  %i.fw = fmul nnan double %i.fv, f0x3F50000000000000 ; 2 uses
  %i.fx = icmp eq i32 %i.fr, 0                    ; 2 uses
  %i.fy = lshr exact i32 %i.fr, 10
  %i.fz = fadd double %i.fw, 1.000000e+00
  %i.ga = add nsw i32 %i.fy, -15
  %.011.i = select i1 %i.fx, double %i.fw, double %i.fz
  %.0.i = select i1 %i.fx, i32 -14, i32 %i.ga
  %i.gb = tail call double @scalbn(double noundef %.011.i, i32 noundef %.0.i) #49
  br label %fromfp16.exit

fromfp16.exit:                                    ; preds = %bb.ar, %bb.as
  %.1.i = phi double [ %i.fu, %bb.ar ], [ %i.gb, %bb.as ] ; 2 uses
  %i.gc = fneg double %.1.i
  %.not1415.i = icmp slt i16 %i.fp, 0
  %i.gd = select i1 %.not1415.i, double %i.gc, double %.1.i
  store double %i.gd, ptr %3, align 8, !tbaa !218
  br label %.sink.split

bb.at:                                            ; preds = %bb.a
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !218
  %.not93 = icmp ult i32 %2, %i.gf
  br i1 %.not93, label %bb.au, label %bb.ax, !prof !325

bb.au:                                            ; preds = %bb.at
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !218
  %i.gi = zext i32 %2 to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !504
  %i.gl = fpext float %i.gk to double
  store double %i.gl, ptr %3, align 8, !tbaa !218
  br label %.sink.split

bb.av:                                            ; preds = %bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !218
  %.not = icmp ult i32 %2, %i.gn
  br i1 %.not, label %bb.aw, label %bb.ax, !prof !325

bb.aw:                                            ; preds = %bb.av
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !218
  %i.gq = zext i32 %2 to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !505
  store i64 %i.gs, ptr %3, align 8, !tbaa !218
  br label %.sink.split

.sink.split:                                      ; preds = %js_dup.exit, %js_dup.exit107, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %JS_NewBigInt64.exit, %JS_NewBigUint64.exit, %fromfp16.exit, %bb.au, %bb.aw
  %.sink = phi i64 [ 8, %bb.aw ], [ 8, %bb.au ], [ 8, %fromfp16.exit ], [ %.sroa.5.1.i126, %JS_NewBigUint64.exit ], [ %.sroa.5.1.i, %JS_NewBigInt64.exit ], [ %.sroa.3.0.i, %bb.s ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.i ], [ %i.ac, %js_dup.exit107 ], [ %i.k, %js_dup.exit ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sink, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %bb.a, %bb.av, %bb.at, %bb.ap, %bb.ai, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.e, %bb.b
  %.0 = phi i1 [ false, %bb.av ], [ false, %bb.ai ], [ false, %bb.p ], [ false, %bb.b ], [ false, %bb.at ], [ false, %bb.e ], [ false, %bb.r ], [ false, %bb.h ], [ false, %bb.ap ], [ false, %bb.j ], [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.a ], [ false, %bb.n ], [ true, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #52, !inline_history !385
  %i.b = tail call i32 @JS_NewAtomLen(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %i.a), !inline_history !385 ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef %i.b, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  tail call void @JS_FreeAtom(ptr noundef %0, i32 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.410.0 = phi i64 [ %i.f, %bb.b ], [ 6, %bb.a ]
  %.sroa.09.0.insert.insert = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.09.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.410.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define i32 @JS_SetProperty(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, i64 %4, i64 %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.JSValue, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = tail call fastcc i32 @JS_SetPropertyInternal2(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef nonnull byval(%struct.JSValue) align 8 %6, i32 noundef 16384), !inline_history !68
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @JS_SetPropertyUint32(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, i64 %4, i64 %5) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %3, -1                      ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %3 to i64
  %i.b = uitofp i32 %3 to double
  %i.c = bitcast double %i.b to i64
  %.sroa.0.0.insert.ext.i.pn.i = select i1 %i.a, i64 %.sroa.0.0.insert.ext.i.i, i64 %i.c
  %.sroa.3.0.i = select i1 %i.a, i64 0, i64 8
  %i.d = tail call fastcc i32 @JS_SetPropertyValue(ptr noundef %0, i64 %1, i64 %2, i64 %.sroa.0.0.insert.ext.i.pn.i, i64 %.sroa.3.0.i, i64 %4, i64 %5, i32 noundef 16384)
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @JS_SetPropertyValue(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %.0.val, i64 %.8.val, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.JSValue, align 8            ; 5 uses
  %i.a = alloca double, align 8                   ; 15 uses
  %.sroa.092.0.extract.trunc = trunc i64 %3 to i32 ; 12 uses
  %i.b = and i64 %2, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295
  %i.d = and i64 %4, 4294967295
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.c, i1 %i.e, i1 false, !prof !325
  br i1 %i.f, label %bb.b, label %bb.co, !prof !325

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.g = inttoptr i64 %1 to ptr                   ; 34 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 18 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !276
  switch i16 %i.i, label %.critedge [
    i16 2, label %bb.c
    i16 8, label %bb.l
    i16 9, label %bb.p
    i16 22, label %.preheader
    i16 23, label %.preheader195
    i16 24, label %.preheader195
    i16 25, label %.preheader199
    i16 26, label %.preheader199
    i16 27, label %.preheader203
    i16 28, label %.preheader203
    i16 29, label %bb.bf
    i16 30, label %bb.bf
    i16 31, label %bb.bo
    i16 32, label %bb.bu
    i16 33, label %bb.ca
  ]

.preheader203:                                    ; preds = %bb.b, %bb.b
  br label %bb.av

.preheader199:                                    ; preds = %bb.b, %bb.b
  br label %bb.al

.preheader195:                                    ; preds = %bb.b, %bb.b
  br label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !218  ; 2 uses
  %.not137 = icmp ugt i32 %i.k, %.sroa.092.0.extract.trunc
  br i1 %.not137, label %bb.i, label %bb.d, !prof !325

bb.d:                                             ; preds = %bb.c
  %.not138 = icmp eq i32 %i.k, %.sroa.092.0.extract.trunc
  br i1 %.not138, label %bb.e, label %.critedge, !prof !325

end_hunk_0
begin_hunk_1_@JS_ToStringInternal:bb.a
  %i.oj = phi ptr [ %.pre.i171, %._crit_edge.i170 ], [ %i.mn, %bb.bp ]
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 1256 ; 3 uses
  %i.ol = load i8, ptr %i.ok, align 8, !tbaa !233, !range !234, !noundef !235
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %js_new_string8_len.exit172, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i8 1, ptr %i.ok, align 8, !tbaa !233
  %i.on = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1180 ; 0 uses
  store i8 0, ptr %i.ok, align 8, !tbaa !233
  br label %js_new_string8_len.exit172

str8.exit10.i163:                                 ; preds = %bb.bx, %bb.bw, %bb.bv
  %.011.i.i.i.i164 = phi i64 [ 8, %bb.bv ], [ %i.oc, %bb.bw ], [ %i.oi, %bb.bx ]
  %i.oo = load i64, ptr %i.mp, align 8, !tbaa !196
  %i.op = add i64 %i.oo, %.011.i.i.i.i164
  store i64 %i.op, ptr %i.mp, align 8, !tbaa !196
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  store i32 1, ptr %i.oq, align 4, !tbaa !191
  store i64 18, ptr %i.ns, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store i32 0, ptr %i.or, align 8, !tbaa !249
  %i.os = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.os, ptr noundef nonnull align 1 dereferenceable(18) @.str.149, i64 18, i1 false)
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ng, i64 50
  store i8 0, ptr %i.ot, align 2, !tbaa !218
  %i.ou = ptrtoint ptr %i.ns to i64
  br label %js_new_string8_len.exit172

js_new_string8_len.exit172:                       ; preds = %bb.by, %bb.bz, %str8.exit10.i163
  %.sroa.0.0.i165 = phi i64 [ %i.ou, %str8.exit10.i163 ], [ 0, %bb.by ], [ 0, %bb.bz ] ; 2 uses
  %.sroa.4.0.i166 = phi i64 [ -7, %str8.exit10.i163 ], [ 6, %bb.by ], [ 6, %bb.bz ]
  %.sroa.18.0.extract.shift81 = and i64 %.sroa.0.0.i165, -4294967296
  br label %bb.ca

bb.ca:                                            ; preds = %bb.a, %js_new_string8_len.exit172, %js_new_string8_len.exit161, %bb.bd, %js_dtoa2.exit, %bb.ar, %js_dup.exit91, %js_new_string8_len.exit150, %JS_FreeValueRT.exit, %js_new_string8_len.exit139, %__JS_AtomToValue.exit109, %__JS_AtomToValue.exit, %bb.l, %js_new_string8_len.exit, %bb.b, %js_dup.exit
  %.sroa.041.1 = phi i64 [ %.sroa.0.0.i165, %js_new_string8_len.exit172 ], [ %1, %js_dup.exit ], [ %i.i, %bb.b ], [ %.sroa.0.0.i, %js_new_string8_len.exit ], [ %i.bg, %bb.l ], [ %i.bt, %__JS_AtomToValue.exit ], [ %i.ci, %__JS_AtomToValue.exit109 ], [ %.sroa.0.0.i154, %js_new_string8_len.exit161 ], [ %.sroa.0.0.i136, %js_new_string8_len.exit139 ], [ %.sroa.041.0.in, %JS_FreeValueRT.exit ], [ %.sroa.0.0.i143, %js_new_string8_len.exit150 ], [ %1, %js_dup.exit91 ], [ 0, %bb.ar ], [ %.sroa.020.0.insert.insert.i, %js_dtoa2.exit ], [ %i.kb, %bb.bd ], [ 0, %bb.a ]
  %.sroa.18.1 = phi i64 [ %.sroa.18.0.extract.shift81, %js_new_string8_len.exit172 ], [ %.sroa.18.0.extract.shift, %js_dup.exit ], [ %.sroa.18.0.extract.shift57, %bb.b ], [ %.sroa.18.0.extract.shift59, %js_new_string8_len.exit ], [ %.sroa.18.0.extract.shift61, %bb.l ], [ %.sroa.18.0.extract.shift63, %__JS_AtomToValue.exit ], [ %.sroa.18.0.extract.shift65, %__JS_AtomToValue.exit109 ], [ %.sroa.18.0.extract.shift79, %js_new_string8_len.exit161 ], [ %.sroa.18.0.extract.shift67, %js_new_string8_len.exit139 ], [ %.sroa.18.0.in, %JS_FreeValueRT.exit ], [ %.sroa.18.0.extract.shift69, %js_new_string8_len.exit150 ], [ %.sroa.18.0.extract.shift71, %js_dup.exit91 ], [ 0, %bb.ar ], [ %.sroa.18.0.extract.shift75, %js_dtoa2.exit ], [ %.sroa.18.0.extract.shift77, %bb.bd ], [ 0, %bb.a ]
  %.sroa.19.1 = phi i64 [ %.sroa.4.0.i166, %js_new_string8_len.exit172 ], [ %2, %js_dup.exit ], [ %i.j, %bb.b ], [ %.sroa.4.0.i, %js_new_string8_len.exit ], [ %i.bh, %bb.l ], [ -7, %__JS_AtomToValue.exit ], [ -7, %__JS_AtomToValue.exit109 ], [ %.sroa.4.0.i155, %js_new_string8_len.exit161 ], [ %.sroa.4.0.i137, %js_new_string8_len.exit139 ], [ %.sroa.19.0, %JS_FreeValueRT.exit ], [ %.sroa.4.0.i144, %js_new_string8_len.exit150 ], [ %2, %js_dup.exit91 ], [ 6, %bb.ar ], [ %.sroa.421.0.i, %js_dtoa2.exit ], [ %i.kc, %bb.bd ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  %.sroa.041.0.insert.ext = and i64 %.sroa.041.1, 4294967295
  %.sroa.041.0.insert.insert = or disjoint i64 %.sroa.18.1, %.sroa.041.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.041.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.19.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_ToPropertyKey(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 1), !inline_history !66
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @JS_IsArray(i64 %0, i64 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = and i64 %1, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %0 to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !276
  %i.f = icmp eq i16 %i.e, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewBigInt64(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %1, 2147483648
  %or.cond = icmp ult i64 %i.a, 4294967296
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext.i = and i64 %1, 4294967295
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !196
  %i.g = add i64 %i.f, 12
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !197
  %i.j = add i64 %i.i, -1
  %i.k = icmp ugt i64 %i.g, %i.j
  br i1 %i.k, label %bb.l, label %bb.d, !prof !192

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !222  ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f, !prof !192

bb.e:                                             ; preds = %bb.d
  %i.p = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !1186 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.p, null
  br i1 %.not.i27.i, label %._crit_edge.i21.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i25.i = phi ptr [ %i.p, %bb.e ], [ %i.n, %bb.d ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 38 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !221  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 40
  %i.t = zext i16 %i.r to i64
  %i.u = mul nuw nsw i64 %i.t, 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u ; 9 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !218
  store i16 %i.w, ptr %i.q, align 2, !tbaa !221
  store i16 %i.r, ptr %i.v, align 8, !tbaa !218
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 34 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !221
  %i.z = add i16 %i.y, 1                          ; 2 uses
  store i16 %i.z, ptr %i.x, align 2, !tbaa !221
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 36
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !221
  %i.ac = icmp eq i16 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !192

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %.0.i25.i, align 8, !tbaa !223 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !222 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !222
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i25.i, i8 0, i64 16, i1 false)
  br label %bb.h

._crit_edge.i21.i:                                ; preds = %bb.e
  %.pre.i22.i = load ptr, ptr %i.b, align 8, !tbaa !232
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !217
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !217
  %i.ak = load i16, ptr %i.v, align 8, !tbaa !218
  %i.al = icmp eq i16 %i.ak, -1
  br i1 %i.al, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 1064
  %i.an = icmp eq ptr %i.v, %i.am
  br i1 %i.an, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !219
  %i.aq = tail call i64 %i.ap(ptr noundef nonnull %i.v) #49, !inline_history !1187 ; 2 uses
  %.not15.i.i.i20.i = icmp eq i64 %i.aq, 0
  %i.ar = select i1 %.not15.i.i.i20.i, i64 8, i64 %i.aq
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.at = load i8, ptr %i.as, align 2, !tbaa !218
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !221
  %i.ax = zext i16 %i.aw to i64
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i21.i, %bb.c
  %i.ay = phi ptr [ %.pre.i22.i, %._crit_edge.i21.i ], [ %i.c, %bb.c ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1256 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !233, !range !234, !noundef !235
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %js_bigint_new_si64.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.az, align 8, !tbaa !233
  %i.bc = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !1188 ; 0 uses
  store i8 0, ptr %i.az, align 8, !tbaa !233
  br label %js_bigint_new_si64.exit

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.011.i.i.i18.i = phi i64 [ 8, %bb.i ], [ %i.ar, %bb.j ], [ %i.ax, %bb.k ]
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !196
  %i.be = add i64 %i.bd, %.011.i.i.i18.i
  store i64 %i.be, ptr %i.e, align 8, !tbaa !196
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 1, ptr %i.bf, align 4, !tbaa !191
  store i32 2, ptr %i.ah, align 8, !tbaa !191
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i64 %1, ptr %i.bg, align 4
  br label %js_bigint_new_si64.exit

js_bigint_new_si64.exit:                          ; preds = %bb.l, %bb.m, %bb.n
  %.1.i = phi ptr [ null, %bb.l ], [ %i.ah, %bb.n ], [ null, %bb.m ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  %i.bh = ptrtoint ptr %.1.i to i64
  %.sroa.5.0 = select i1 %.not, i64 6, i64 -9
  br label %bb.o

bb.o:                                             ; preds = %js_bigint_new_si64.exit, %bb.b
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.insert.ext.i, %bb.b ], [ %i.bh, %js_bigint_new_si64.exit ]
  %.sroa.5.1 = phi i64 [ 7, %bb.b ], [ %.sroa.5.0, %js_bigint_new_si64.exit ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewBigUint64(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %1, 2147483648
  br i1 %i.a, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %1, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !232  ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !196  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !197
  %i.j = add i64 %i.i, -1                         ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %i.g, 12
  %i.l = icmp ugt i64 %i.k, %i.j
  br i1 %i.l, label %bb.l, label %bb.d, !prof !192

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 584
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !222  ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %bb.e, label %bb.f, !prof !192

bb.e:                                             ; preds = %bb.d
  %i.q = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !1189 ; 2 uses
  %.not.i24.i = icmp eq ptr %i.q, null
  br i1 %.not.i24.i, label %._crit_edge.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i22.i = phi ptr [ %i.q, %bb.e ], [ %i.o, %bb.d ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 38 ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !221  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 40
  %i.u = zext i16 %i.s to i64
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v ; 9 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !218
  store i16 %i.x, ptr %i.r, align 2, !tbaa !221
  store i16 %i.s, ptr %i.w, align 8, !tbaa !218
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 34 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !221
  %i.aa = add i16 %i.z, 1                         ; 2 uses
  store i16 %i.aa, ptr %i.y, align 2, !tbaa !221
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 36
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !221
  %i.ad = icmp eq i16 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h, !prof !192

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %.0.i22.i, align 8, !tbaa !223 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !222 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !222
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i22.i, i8 0, i64 16, i1 false)
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !217
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.e, align 8, !tbaa !217
  %i.al = load i16, ptr %i.w, align 8, !tbaa !218
  %i.am = icmp eq i16 %i.al, -1
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 1064
  %i.ao = icmp eq ptr %i.w, %i.an
  br i1 %i.ao, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !219
  %i.ar = tail call i64 %i.aq(ptr noundef nonnull %i.w) #49, !inline_history !1190 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ar, 0
  %i.as = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ar
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.au = load i8, ptr %i.at, align 2, !tbaa !218
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !221
  %i.ay = zext i16 %i.ax to i64
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i, %bb.c
  %i.az = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.d, %bb.c ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1256 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !233, !range !234, !noundef !235
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %js_bigint_new_ui64.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.ba, align 8, !tbaa !233
  %i.bd = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !1191 ; 0 uses
  store i8 0, ptr %i.ba, align 8, !tbaa !233
  br label %js_bigint_new_ui64.exit

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.011.i.i.i.i = phi i64 [ 8, %bb.i ], [ %i.as, %bb.j ], [ %i.ay, %bb.k ]
  %i.be = load i64, ptr %i.f, align 8, !tbaa !196
  %i.bf = add i64 %i.be, %.011.i.i.i.i
  store i64 %i.bf, ptr %i.f, align 8, !tbaa !196
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 1, ptr %i.bg, align 4, !tbaa !191
  store i32 2, ptr %i.ai, align 8, !tbaa !191
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i64 %1, ptr %i.bh, align 4
  br label %js_bigint_new_ui64.exit

bb.o:                                             ; preds = %bb.b
  %i.bi = add i64 %i.g, 16
  %i.bj = icmp ugt i64 %i.bi, %i.j
  br i1 %i.bj, label %bb.x, label %bb.p, !prof !192

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 584
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !222 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.bk
  br i1 %i.bn, label %bb.q, label %bb.r, !prof !192

bb.q:                                             ; preds = %bb.p
  %i.bo = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !1189 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.bo, null
  br i1 %.not.i27.i, label %._crit_edge.i20.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i25.i = phi ptr [ %i.bo, %bb.q ], [ %i.bm, %bb.p ] ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 38 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !221 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 40
  %i.bs = zext i16 %i.bq to i64
  %i.bt = mul nuw nsw i64 %i.bs, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt ; 10 uses
  %i.bv = load i16, ptr %i.bu, align 8, !tbaa !218
  store i16 %i.bv, ptr %i.bp, align 2, !tbaa !221
  store i16 %i.bq, ptr %i.bu, align 8, !tbaa !218
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 34 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !221
  %i.by = add i16 %i.bx, 1                        ; 2 uses
  store i16 %i.by, ptr %i.bw, align 2, !tbaa !221
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 36
  %i.ca = load i16, ptr %i.bz, align 4, !tbaa !221
  %i.cb = icmp eq i16 %i.by, %i.ca
  br i1 %i.cb, label %bb.s, label %bb.t, !prof !192

bb.s:                                             ; preds = %bb.r
  %i.cc = load ptr, ptr %.0.i25.i, align 8, !tbaa !223 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !222 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !222
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i25.i, i8 0, i64 16, i1 false)
  br label %bb.t

._crit_edge.i20.i:                                ; preds = %bb.q
  %.pre.i21.i = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %bb.x

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.e, align 8, !tbaa !217
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.e, align 8, !tbaa !217
  %i.cj = load i16, ptr %i.bu, align 8, !tbaa !218
  %i.ck = icmp eq i16 %i.cj, -1
  br i1 %i.ck, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 1064
  %i.cm = icmp eq ptr %i.bu, %i.cl
  br i1 %i.cm, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !219
  %i.cp = tail call i64 %i.co(ptr noundef nonnull %i.bu) #49, !inline_history !1192 ; 2 uses
  %.not15.i.i.i19.i = icmp eq i64 %i.cp, 0
  %i.cq = select i1 %.not15.i.i.i19.i, i64 8, i64 %i.cp
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !218
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !221
  %i.cw = zext i16 %i.cv to i64
  br label %bb.z

bb.x:                                             ; preds = %._crit_edge.i20.i, %bb.o
  %i.cx = phi ptr [ %.pre.i21.i, %._crit_edge.i20.i ], [ %i.d, %bb.o ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1256 ; 3 uses
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !233, !range !234, !noundef !235
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %js_bigint_new_ui64.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.cy, align 8, !tbaa !233
  %i.db = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !1193 ; 0 uses
  store i8 0, ptr %i.cy, align 8, !tbaa !233
  br label %js_bigint_new_ui64.exit

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.011.i.i.i17.i = phi i64 [ 8, %bb.u ], [ %i.cq, %bb.v ], [ %i.cw, %bb.w ]
  %i.dc = load i64, ptr %i.f, align 8, !tbaa !196
  %i.dd = add i64 %i.dc, %.011.i.i.i17.i
  store i64 %i.dd, ptr %i.f, align 8, !tbaa !196
  %i.de = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 1, ptr %i.de, align 4, !tbaa !191
  store i32 3, ptr %i.cg, align 8, !tbaa !191
  %i.df = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i64 %1, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store i32 0, ptr %i.dg, align 4, !tbaa !191
  br label %js_bigint_new_ui64.exit

js_bigint_new_ui64.exit:                          ; preds = %bb.l, %bb.m, %bb.n, %bb.x, %bb.y, %bb.z
  %.1.i = phi ptr [ null, %bb.l ], [ %i.cg, %bb.z ], [ %i.ai, %bb.n ], [ null, %bb.m ], [ null, %bb.y ], [ null, %bb.x ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  %i.dh = ptrtoint ptr %.1.i to i64
  %.sroa.5.0 = select i1 %.not, i64 6, i64 -9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %js_bigint_new_ui64.exit
  %.sroa.0.1 = phi i64 [ %i.dh, %js_bigint_new_ui64.exit ], [ %1, %bb.a ]
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %js_bigint_new_ui64.exit ], [ 7, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @JS_ToBigInt64Free(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @JS_ToBigIntFree(ptr noundef %0, i64 %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %trunc = trunc i64 %i.c to i32                  ; 2 uses
  switch i32 %trunc, label %bb.c [
    i32 6, label %JS_FreeValueRT.exit
    i32 7, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %sext = shl i64 %i.b, 32
  %i.d = ashr exact i64 %sext, 32
  br label %JS_FreeValueRT.exit

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !191
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = load i32, ptr %i.e, align 4, !tbaa !191
  %i.j = icmp ugt i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !191
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw i64 %i.m, 32
  %i.o = or disjoint i64 %i.n, %i.h
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.016 = phi i64 [ %i.o, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !232
  %i.r = icmp ugt i32 %trunc, -10
  br i1 %i.r, label %bb.f, label %JS_FreeValueRT.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !191  ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !191
  %i.v = icmp slt i32 %i.t, 2
  br i1 %i.v, label %bb.g, label %JS_FreeValueRT.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @js_free_value_rt(ptr noundef %i.q, i64 %i.b, i64 %i.c), !inline_history !370
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.b
  %storemerge = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ], [ %.016, %bb.e ], [ %.016, %bb.f ], [ %.016, %bb.g ]
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !240
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @JS_ToBigUint64(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i64 %2, i64 %3) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %3 to i32
  %i.b = icmp ugt i32 %i.a, -10
  br i1 %i.b, label %bb.b, label %js_dup.exit

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %2 to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !191
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.a, %bb.b
  %i.g = tail call fastcc { i64, i64 } @JS_ToBigIntFree(ptr noundef %0, i64 %2, i64 %3) #51, !inline_history !511 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 3 uses
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 2 uses
  %trunc.i = trunc i64 %i.i to i32                ; 2 uses
  switch i32 %trunc.i, label %bb.d [
    i32 6, label %JS_ToBigInt64Free.exit
    i32 7, label %bb.c
  ]

bb.c:                                             ; preds = %js_dup.exit
  %sext.i = shl i64 %i.h, 32
  %i.j = ashr exact i64 %sext.i, 32
  br label %JS_ToBigInt64Free.exit

bb.d:                                             ; preds = %js_dup.exit
  %i.k = inttoptr i64 %i.h to ptr                 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !191
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = load i32, ptr %i.k, align 4, !tbaa !191
  %i.p = icmp ugt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !191
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = or disjoint i64 %i.t, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.016.i = phi i64 [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !232
  %i.x = icmp ugt i32 %trunc.i, -10
  br i1 %i.x, label %bb.g, label %JS_ToBigInt64Free.exit

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !191  ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !191
  %i.ab = icmp slt i32 %i.z, 2
  br i1 %i.ab, label %bb.h, label %JS_ToBigInt64Free.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_value_rt(ptr noundef %i.w, i64 %i.h, i64 %i.i) #51, !inline_history !532
  br label %JS_ToBigInt64Free.exit

JS_ToBigInt64Free.exit:                           ; preds = %js_dup.exit, %bb.c, %bb.f, %bb.g, %bb.h
  %storemerge.i = phi i64 [ 0, %js_dup.exit ], [ %i.j, %bb.c ], [ %.016.i, %bb.f ], [ %.016.i, %bb.g ], [ %.016.i, %bb.h ]
  %.0.i = phi i32 [ -1, %js_dup.exit ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ]
  store i64 %storemerge.i, ptr %1, align 8, !tbaa !240
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_Call(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 0, i64 3, i32 noundef %5, ptr noundef %6, i32 noundef 2)
  ret { i64, i64 } %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %.0.val1, i64 %.8.val, i32 noundef %5, ptr noundef %6, i32 noundef range(i32 0, 5) %7) unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.JSValue, align 8            ; 6 uses
  %9 = alloca %struct.JSValue, align 8            ; 6 uses
  %10 = alloca %struct.JSValue, align 8           ; 6 uses
  %11 = alloca %struct.JSValue, align 8           ; 6 uses
  %12 = alloca %struct.JSValue, align 8           ; 6 uses
  %13 = alloca %struct.JSValue, align 8           ; 6 uses
  %14 = alloca %struct.JSValue, align 8           ; 6 uses
  %15 = alloca %struct.JSValue, align 8           ; 6 uses
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %16 = alloca %struct.JSValue, align 8           ; 6 uses
  %17 = alloca %struct.JSValue, align 8           ; 6 uses
  %18 = alloca %struct.JSValue, align 8           ; 6 uses
  %19 = alloca %struct.JSValue, align 8           ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %20 = alloca %struct.JSValue, align 8           ; 6 uses
  %21 = alloca %struct.JSValue, align 8           ; 6 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %i.d = alloca [64 x i8], align 16               ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 4 uses
  %22 = alloca %struct.JSValue, align 8           ; 6 uses
  %23 = alloca %struct.JSValue, align 8           ; 6 uses
  %24 = alloca %struct.JSValue, align 8           ; 5 uses
  %i.f = alloca ptr, align 8                      ; 13 uses
  %i.g = alloca i32, align 4                      ; 12 uses
  %i.h = alloca [64 x i8], align 16               ; 4 uses
  %i.i = alloca [64 x i8], align 16               ; 4 uses
  %i.j = alloca [64 x i8], align 16               ; 4 uses
  %25 = alloca %struct.JSValue, align 8           ; 5 uses
  %i.k = alloca [64 x i8], align 16               ; 6 uses
  %26 = alloca %struct.JSValue, align 8           ; 5 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %27 = alloca %struct.JSValue, align 8           ; 6 uses
  %28 = alloca %struct.JSValue, align 8           ; 6 uses
  %29 = alloca [1 x %struct.JSValue], align 16    ; 5 uses
  %i.n = alloca i32, align 4                      ; 8 uses
  %30 = alloca %struct.JSValue, align 8           ; 6 uses
  %31 = alloca %struct.JSValue, align 8           ; 6 uses
  %32 = alloca [2 x %struct.JSValue], align 16    ; 9 uses
  %33 = alloca %struct.JSValue, align 16          ; 7 uses
  %34 = alloca [5 x %struct.JSValue], align 16    ; 12 uses
  %i.o = alloca ptr, align 8                      ; 8 uses
  %i.p = alloca i32, align 4                      ; 7 uses
  %i.q = alloca i64, align 8                      ; 5 uses
end_hunk_1
begin_hunk_2_@js_dataview_constructor:bb.a
  br label %bb.w

bb.v:                                             ; preds = %bb.n, %bb.m
  %i.bz = getelementptr i8, ptr %i.p, i64 4
  %.val = load i32, ptr %i.bz, align 4, !tbaa !642
  %i.ca = icmp sgt i32 %.val, -1
  %i.cb = zext i1 %i.ca to i8
  br label %bb.w

bb.w:                                             ; preds = %JS_ToIndex.exit112.thread128, %bb.v
  %.1 = phi i32 [ %i.av, %bb.v ], [ %i.by, %JS_ToIndex.exit112.thread128 ] ; 2 uses
  %.080 = phi i8 [ %i.cb, %bb.v ], [ 0, %JS_ToIndex.exit112.thread128 ]
  %.0 = phi i1 [ true, %bb.v ], [ false, %JS_ToIndex.exit112.thread128 ]
  %i.cc = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef %0, i64 %1, i64 %2, i32 noundef 34) ; 2 uses
  %i.cd = extractvalue { i64, i64 } %i.cc, 0      ; 4 uses
  %i.ce = extractvalue { i64, i64 } %i.cc, 1      ; 4 uses
  %i.cf = and i64 %i.ce, 4294967295
  %i.cg = icmp eq i64 %i.cf, 6
  br i1 %i.cg, label %JS_FreeValue.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = load i8, ptr %i.an, align 8, !tbaa !512
  %.not93 = icmp eq i8 %i.ch, 0
  br i1 %.not93, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.965), !inline_history !125 ; 0 uses
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  %i.cj = load i32, ptr %i.p, align 8, !tbaa !448 ; 2 uses
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = icmp ugt i64 %.0118, %i.ck
  br i1 %i.cl, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.0, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cm = sub i32 %i.cj, %i.au
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.cn = zext i32 %.1 to i64
  %i.co = add nuw nsw i64 %.0118, %i.cn
  %i.cp = icmp ugt i64 %i.co, %i.ck
  br i1 %i.cp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %i.cq = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.1005) ; 0 uses
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab, %bb.ac
  %.2 = phi i32 [ %i.cm, %bb.ab ], [ %.1, %bb.ac ]
  %i.cr = tail call ptr @js_malloc(ptr noundef %0, i64 noundef 48) ; 11 uses
  %.not94 = icmp eq ptr %i.cr, null
  br i1 %.not94, label %bb.af, label %js_dup.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !232
  %i.cu = trunc i64 %i.ce to i32
  %i.cv = icmp ugt i32 %i.cu, -10
  br i1 %i.cv, label %bb.ag, label %JS_FreeValue.exit

bb.ag:                                            ; preds = %bb.af
  %i.cw = inttoptr i64 %i.cd to ptr
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !191 ; 2 uses
  %i.cz = add nsw i32 %i.cy, -1
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !191
  %i.da = icmp slt i32 %i.cy, 2
  br i1 %i.da, label %bb.ah, label %JS_FreeValue.exit

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ct, i64 %i.cd, i64 %i.ce), !inline_history !291
  br label %JS_FreeValue.exit

js_dup.exit:                                      ; preds = %bb.ae
  %i.db = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !744
  %i.dd = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !191
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !191
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store ptr %i.c, ptr %i.dg, align 8, !tbaa !509
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store i32 %i.au, ptr %i.dh, align 8, !tbaa !513
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 36
  store i32 %.2, ptr %i.di, align 4, !tbaa !515
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store i8 %.080, ptr %i.dj, align 8, !tbaa !514
  %i.dk = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !223 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.cr, ptr %i.dm, align 8, !tbaa !222
  store ptr %i.dl, ptr %i.cr, align 8, !tbaa !223
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !222
  store ptr %i.cr, ptr %i.dk, align 8, !tbaa !223
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store ptr %i.cr, ptr %i.do, align 8, !tbaa !218
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.i, %js_dup.exit.i.i, %bb.t, %js_dup.exit.i.i98, %.thread.i103, %.thread.i, %bb.u, %bb.ah, %bb.ag, %bb.af, %js_get_array_buffer.exit.thread, %bb.w, %js_get_array_buffer.exit, %js_dup.exit, %bb.l, %bb.j
  %i.dp = phi i64 [ 0, %js_get_array_buffer.exit ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.u ], [ 0, %js_get_array_buffer.exit.thread ], [ %i.cd, %js_dup.exit ], [ 0, %bb.ah ], [ 0, %bb.w ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %.thread.i ], [ 0, %.thread.i103 ], [ 0, %bb.t ], [ 0, %js_dup.exit.i.i98 ], [ 0, %js_dup.exit.i.i ], [ 0, %bb.i ]
  %.sroa.15.1 = phi i64 [ 6, %js_get_array_buffer.exit ], [ 6, %bb.j ], [ 6, %bb.l ], [ 6, %bb.u ], [ 6, %js_get_array_buffer.exit.thread ], [ %i.ce, %js_dup.exit ], [ 6, %bb.ah ], [ 6, %bb.w ], [ 6, %bb.af ], [ 6, %bb.ag ], [ 6, %.thread.i ], [ 6, %.thread.i103 ], [ 6, %bb.t ], [ 6, %js_dup.exit.i.i98 ], [ 6, %js_dup.exit.i.i ], [ 6, %bb.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.dp, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.15.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @JS_AddIntrinsicAtomics(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_once(ptr noundef nonnull @js_atomics_once, ptr noundef nonnull @js__atomics_init) #49
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %js_once.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #50
  unreachable

js_once.exit:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call i32 @JS_SetPropertyFunctionList(ptr noundef %0, i64 %i.c, i64 %i.e, ptr noundef nonnull @js_atomics_obj, i32 noundef 1)
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define i32 @JS_IsEqual(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca [2 x %struct.JSValue], align 16     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.a = trunc i64 %2 to i32
  %i.b = icmp ugt i32 %i.a, -10
  br i1 %i.b, label %bb.b, label %js_dup.exit

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !191
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.a, %bb.b
  store i64 %1, ptr %5, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.g, align 8
  %i.h = trunc i64 %4 to i32
  %i.i = icmp ugt i32 %i.h, -10
  br i1 %i.i, label %bb.c, label %js_dup.exit5

bb.c:                                             ; preds = %js_dup.exit
  %i.j = inttoptr i64 %3 to ptr
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !191
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !191
  br label %js_dup.exit5

js_dup.exit5:                                     ; preds = %js_dup.exit, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %3, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %4, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.q = call fastcc i32 @js_eq_slow(ptr noundef %0, ptr noundef nonnull %i.p, i1 noundef zeroext false)
  %.not = icmp eq i32 %i.q, 0
  %i.r = load i32, ptr %5, align 16
  %.0 = select i1 %.not, i32 %i.r, i32 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_eq_slow(ptr noundef %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -32 ; 3 uses
  %.sroa.0136.0.copyload = load double, ptr %i.a, align 8, !tbaa !218
  %.sroa.26155.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 -24 ; 3 uses
  %.sroa.26155.0.copyload = load i64, ptr %.sroa.26155.0..sroa_idx, align 8, !tbaa !240
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %.sroa.096.0.copyload = load double, ptr %i.b, align 8, !tbaa !218
  %.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !240
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.a
  %.sroa.26.0.ph = phi i64 [ %.sroa.26.0.copyload, %bb.a ], [ %.sroa.26.0.ph.be, %.outer.backedge ]
  %.sroa.096.0.ph = phi double [ %.sroa.096.0.copyload, %bb.a ], [ %.sroa.096.0.ph.be, %.outer.backedge ] ; 15 uses
  %.sroa.26155.0.ph = phi i64 [ %.sroa.26155.0.copyload, %bb.a ], [ %.sroa.26155.0.ph.be, %.outer.backedge ] ; 17 uses
  %.sroa.0136.0.ph = phi double [ %.sroa.0136.0.copyload, %bb.a ], [ %.sroa.0136.0.ph.be, %.outer.backedge ] ; 18 uses
  %.sroa.26.0.ph.fr = freeze i64 %.sroa.26.0.ph   ; 13 uses
  %i.c = trunc i64 %.sroa.26.0.ph.fr to i32       ; 23 uses
  %i.d = add i32 %i.c, 7
  %i.e = icmp ult i32 %i.d, 2
  %i.f = trunc i64 %.sroa.26155.0.ph to i32       ; 23 uses
  br i1 %i.e, label %.outer.split.us.split.us.split.us.preheader, label %.outer.split

.outer.split.us.split.us.split.us.preheader:      ; preds = %.outer
  %i.g = icmp eq i32 %i.f, %i.c
  br i1 %i.g, label %.split293.us, label %tag_is_number.exit216.us.us.us.peel

tag_is_number.exit216.us.us.us.peel:              ; preds = %.outer.split.us.split.us.split.us.preheader
  switch i32 %i.f, label %.split308.us.thread [
    i32 -9, label %tag_is_number.exit216.thread.loopexit.split.loop.exit
    i32 8, label %tag_is_number.exit216.thread.loopexit.split.loop.exit
    i32 0, label %tag_is_number.exit216.thread.loopexit.split.loop.exit
    i32 7, label %tag_is_number.exit216.thread.loopexit.split.loop.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %tag_is_number.exit216.us.us.us.peel
  %i.h = bitcast double %.sroa.0136.0.ph to i64
  %.sroa.0.0.insert.ext.i.us.us.us.peel = and i64 %i.h, 4294967295
  %i.i = bitcast i64 %.sroa.0.0.insert.ext.i.us.us.us.peel to double
  br label %tag_is_number.exit216.thread

.outer.split:                                     ; preds = %.outer
  switch i32 %i.c, label %.outer.split.split.us.split.us.preheader [
    i32 3, label %.outer.split.split.split.us.preheader
    i32 2, label %.outer.split.split.us.split.preheader
  ]

.outer.split.split.us.split.us.preheader:         ; preds = %.outer.split
  switch i32 %i.f, label %tag_is_number.exit.us365.us.peel [
    i32 -9, label %bb.c
    i32 8, label %bb.c
    i32 0, label %bb.c
    i32 7, label %bb.c
  ]

bb.c:                                             ; preds = %.outer.split.split.us.split.us.preheader, %.outer.split.split.us.split.us.preheader, %.outer.split.split.us.split.us.preheader, %.outer.split.split.us.split.us.preheader
  switch i32 %i.c, label %tag_is_number.exit.us365.us.peel [
    i32 -9, label %.split.us
    i32 8, label %.split.us
    i32 0, label %.split.us
    i32 7, label %.split.us
  ]

tag_is_number.exit.us365.us.peel:                 ; preds = %bb.c, %.outer.split.split.us.split.us.preheader
  %i.j = icmp eq i32 %i.f, %i.c
  br i1 %i.j, label %.split293.us, label %bb.d

bb.d:                                             ; preds = %tag_is_number.exit.us365.us.peel
  %i.k = add i32 %i.f, 7
  %i.l = icmp ult i32 %i.k, 2
  br i1 %i.l, label %bb.e, label %tag_is_number.exit216.us368.us.peel

bb.e:                                             ; preds = %bb.d
  switch i32 %i.c, label %.split308.us [
    i32 -9, label %tag_is_number.exit216.thread
    i32 8, label %tag_is_number.exit216.thread
    i32 0, label %tag_is_number.exit216.thread
    i32 7, label %tag_is_number.exit216.thread
  ]

tag_is_number.exit216.us368.us.peel:              ; preds = %bb.d
  %i.m = icmp eq i32 %i.f, 1
  br i1 %i.m, label %bb.f, label %.split308.us

.outer.split.split.us.split.preheader:            ; preds = %.outer.split
  switch i32 %i.f, label %.split308.us.thread [
    i32 2, label %.split293.us
    i32 3, label %JS_FreeValueRT.exit229
    i32 1, label %.thread1060
  ]

bb.f:                                             ; preds = %tag_is_number.exit216.us368.us.peel
  %i.n = bitcast double %.sroa.0136.0.ph to i64
  %.sroa.0.0.insert.ext.i.us369.us.peel = and i64 %i.n, 4294967295
  %i.o = bitcast i64 %.sroa.0.0.insert.ext.i.us369.us.peel to double ; 5 uses
  switch i32 %i.c, label %.split308.us [
    i32 -9, label %.split.us
    i32 8, label %.split.us
    i32 0, label %.split.us
    i32 7, label %.split.us
  ]

.outer.split.split.split.us.preheader:            ; preds = %.outer.split
  switch i32 %i.f, label %.split308.us.thread [
    i32 3, label %.split293.us
    i32 2, label %JS_FreeValueRT.exit229
    i32 1, label %.thread1060
  ]

.split.us:                                        ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.c, %bb.c, %bb.c, %bb.c
  %.us-phi288 = phi i64 [ 0, %bb.f ], [ %.sroa.26155.0.ph, %bb.c ], [ %.sroa.26155.0.ph, %bb.c ], [ %.sroa.26155.0.ph, %bb.c ], [ %.sroa.26155.0.ph, %bb.c ], [ 0, %bb.f ], [ 0, %bb.f ], [ 0, %bb.f ]
  %.us-phi289 = phi double [ %i.o, %bb.f ], [ %.sroa.0136.0.ph, %bb.c ], [ %.sroa.0136.0.ph, %bb.c ], [ %.sroa.0136.0.ph, %bb.c ], [ %.sroa.0136.0.ph, %bb.c ], [ %i.o, %bb.f ], [ %i.o, %bb.f ], [ %i.o, %bb.f ] ; 4 uses
  %.us-phi290 = phi i32 [ 0, %bb.f ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ 0, %bb.f ], [ 0, %bb.f ], [ 0, %bb.f ] ; 3 uses
  %i.p = or i32 %.us-phi290, %i.c
  %or.cond = icmp eq i32 %i.p, 0
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.us
  %i.q = bitcast double %.us-phi289 to i64
  %.sroa.0136.0.extract.trunc = trunc i64 %i.q to i32
  %i.r = bitcast double %.sroa.096.0.ph to i64
  %.sroa.096.0.extract.trunc = trunc i64 %i.r to i32
  %i.s = icmp eq i32 %.sroa.0136.0.extract.trunc, %.sroa.096.0.extract.trunc
  %i.t = zext i1 %i.s to i32
  br label %JS_FreeValueRT.exit229

bb.h:                                             ; preds = %.split.us
  %i.u = icmp eq i32 %.us-phi290, 8               ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  switch i32 %i.c, label %bb.l [
    i32 8, label %bb.k
    i32 0, label %bb.k
  ]

bb.j:                                             ; preds = %bb.h
  %i.v = icmp eq i32 %i.c, 8
  %cond = icmp eq i32 %.us-phi290, 0
  %or.cond243 = and i1 %i.v, %cond
  br i1 %or.cond243, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.i
  %i.w = bitcast double %.us-phi289 to i64
  %.sroa.0136.0.extract.trunc174 = trunc i64 %i.w to i32
  %i.x = sitofp i32 %.sroa.0136.0.extract.trunc174 to double
  %.0208 = select i1 %i.u, double %.us-phi289, double %i.x
  %i.y = icmp eq i32 %i.c, 8
  %i.z = bitcast double %.sroa.096.0.ph to i64
  %.sroa.096.0.extract.trunc133 = trunc i64 %i.z to i32
  %i.aa = sitofp i32 %.sroa.096.0.extract.trunc133 to double
  %.0209 = select i1 %i.y, double %.sroa.096.0.ph, double %i.aa
  %i.ab = fcmp oeq double %.0208, %.0209
  %i.ac = zext i1 %i.ab to i32
  br label %JS_FreeValueRT.exit229

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.ad = bitcast double %.us-phi289 to i64
  %i.ae = bitcast double %.sroa.096.0.ph to i64
  %i.af = tail call fastcc i32 @js_compare_bigint(ptr noundef %0, i32 noundef 171, i64 %i.ad, i64 %.us-phi288, i64 %i.ae, i64 %.sroa.26.0.ph.fr)
  br label %JS_FreeValueRT.exit229

.split293.us:                                     ; preds = %.outer.split.split.split.us.preheader, %.outer.split.split.us.split.preheader, %tag_is_number.exit.us365.us.peel, %.outer.split.us.split.us.split.us.preheader
  %i.ag = bitcast double %.sroa.0136.0.ph to i64  ; 3 uses
  %i.ah = bitcast double %.sroa.096.0.ph to i64   ; 3 uses
  %i.ai = tail call fastcc zeroext i1 @js_strict_eq2(i64 %i.ag, i64 %.sroa.26155.0.ph, i64 %i.ah, i64 %.sroa.26.0.ph.fr, i32 noundef 0)
  %i.aj = zext i1 %i.ai to i32                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !232 ; 2 uses
  %i.am = icmp ugt i32 %i.c, -10
  br i1 %i.am, label %bb.m, label %JS_FreeValueRT.exit229

bb.m:                                             ; preds = %.split293.us
  %i.an = inttoptr i64 %i.ag to ptr
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !191 ; 2 uses
  %i.aq = add nsw i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !191
  %i.ar = icmp slt i32 %i.ap, 2
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @js_free_value_rt(ptr noundef %i.al, i64 %i.ag, i64 %.sroa.26155.0.ph), !inline_history !370
  %.pre1028 = load ptr, ptr %i.ak, align 8, !tbaa !232
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.ph = phi ptr [ %.pre1028, %bb.n ], [ %i.al, %bb.m ]
  %i.as = inttoptr i64 %i.ah to ptr
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !191 ; 2 uses
  %i.av = add nsw i32 %i.au, -1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !191
  %i.aw = icmp slt i32 %i.au, 2
  br i1 %i.aw, label %bb.p, label %JS_FreeValueRT.exit229

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @js_free_value_rt(ptr noundef %.ph, i64 %i.ah, i64 %.sroa.26.0.ph.fr), !inline_history !370
  br label %JS_FreeValueRT.exit229

tag_is_number.exit216.thread.loopexit.split.loop.exit: ; preds = %tag_is_number.exit216.us.us.us.peel, %tag_is_number.exit216.us.us.us.peel, %tag_is_number.exit216.us.us.us.peel, %tag_is_number.exit216.us.us.us.peel
  %i.ax = add i32 %i.f, 7
  %i.ay = icmp ult i32 %i.ax, 2
  br label %tag_is_number.exit216.thread

tag_is_number.exit216.thread:                     ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %tag_is_number.exit216.thread.loopexit.split.loop.exit, %bb.b
  %.us-phi302 = phi i1 [ false, %bb.b ], [ %i.ay, %tag_is_number.exit216.thread.loopexit.split.loop.exit ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ]
  %.us-phi303 = phi i64 [ 0, %bb.b ], [ %.sroa.26155.0.ph, %tag_is_number.exit216.thread.loopexit.split.loop.exit ], [ %.sroa.26155.0.ph, %bb.e ], [ %.sroa.26155.0.ph, %bb.e ], [ %.sroa.26155.0.ph, %bb.e ], [ %.sroa.26155.0.ph, %bb.e ] ; 3 uses
  %.us-phi304 = phi double [ %i.i, %bb.b ], [ %.sroa.0136.0.ph, %tag_is_number.exit216.thread.loopexit.split.loop.exit ], [ %.sroa.0136.0.ph, %bb.e ], [ %.sroa.0136.0.ph, %bb.e ], [ %.sroa.0136.0.ph, %bb.e ], [ %.sroa.0136.0.ph, %bb.e ] ; 3 uses
  %.us-phi305 = phi i32 [ 0, %bb.b ], [ %i.f, %tag_is_number.exit216.thread.loopexit.split.loop.exit ], [ %i.f, %bb.e ], [ %i.f, %bb.e ], [ %i.f, %bb.e ], [ %i.f, %bb.e ] ; 2 uses
  %i.az = icmp eq i32 %.us-phi305, -9
  %i.ba = icmp eq i32 %.us-phi305, 7
  %or.cond11 = or i1 %i.az, %i.ba
  %i.bb = icmp eq i32 %i.c, -9
  %i.bc = icmp eq i32 %i.c, 7
  %i.bd = or i1 %i.bb, %i.bc
  %or.cond15 = or i1 %or.cond11, %i.bd
  br i1 %or.cond15, label %bb.q, label %bb.z

bb.q:                                             ; preds = %tag_is_number.exit216.thread
  br i1 %.us-phi302, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.be = bitcast double %.us-phi304 to i64
  %i.bf = tail call fastcc { i64, i64 } @JS_StringToBigInt(ptr noundef %0, i64 %i.be, i64 %.us-phi303) ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bh = extractvalue { i64, i64 } %i.bf, 1      ; 4 uses
  %i.bi = bitcast i64 %i.bg to double             ; 2 uses
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  switch i32 %i.bj, label %bb.u [
    i32 -9, label %bb.s
    i32 7, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.q
  %.sroa.26155.1 = phi i64 [ %i.bh, %bb.r ], [ %.us-phi303, %bb.q ], [ %i.bh, %bb.r ] ; 5 uses
  %.sroa.0136.1 = phi double [ %i.bi, %bb.r ], [ %.us-phi304, %bb.q ], [ %i.bi, %bb.r ] ; 4 uses
  %i.bk = add nsw i32 %i.c, 7
  %i.bl = icmp ult i32 %i.bk, 2
  br i1 %i.bl, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %bb.s
  %i.bm = bitcast double %.sroa.096.0.ph to i64
  %i.bn = tail call fastcc { i64, i64 } @JS_StringToBigInt(ptr noundef %0, i64 %i.bm, i64 %.sroa.26.0.ph.fr) ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 0
  %i.bp = extractvalue { i64, i64 } %i.bn, 1      ; 4 uses
  %i.bq = bitcast i64 %i.bo to double             ; 3 uses
  %i.br = trunc i64 %i.bp to i32
  switch i32 %i.br, label %._crit_edge [
    i32 -9, label %bb.ah
    i32 7, label %bb.ah
  ]

._crit_edge:                                      ; preds = %bb.t
  %.pre1029 = trunc i64 %.sroa.26155.1 to i32
  %i.bs = bitcast double %.sroa.0136.1 to i64
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.r
  %.pre-phi = phi i32 [ %.pre1029, %._crit_edge ], [ %i.bj, %bb.r ]
  %.sroa.26.1 = phi i64 [ %i.bp, %._crit_edge ], [ %.sroa.26.0.ph.fr, %bb.r ] ; 2 uses
  %.sroa.096.1 = phi double [ %i.bq, %._crit_edge ], [ %.sroa.096.0.ph, %bb.r ]
  %.sroa.26155.2 = phi i64 [ %.sroa.26155.1, %._crit_edge ], [ %i.bh, %bb.r ]
  %.sroa.0136.2 = phi i64 [ %i.bs, %._crit_edge ], [ %i.bg, %bb.r ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !232 ; 3 uses
  %i.bv = icmp ugt i32 %.pre-phi, -10
  br i1 %i.bv, label %bb.v, label %JS_FreeValueRT.exit230

bb.v:                                             ; preds = %bb.u
  %i.bw = inttoptr i64 %.sroa.0136.2 to ptr
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !191 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !191
  %i.ca = icmp slt i32 %i.by, 2
  br i1 %i.ca, label %bb.w, label %JS_FreeValueRT.exit230

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bu, i64 %.sroa.0136.2, i64 %.sroa.26155.2), !inline_history !370
  %.pre1026 = load ptr, ptr %i.bt, align 8, !tbaa !232
  br label %JS_FreeValueRT.exit230

JS_FreeValueRT.exit230:                           ; preds = %bb.u, %bb.v, %bb.w
  %i.cb = phi ptr [ %i.bu, %bb.u ], [ %i.bu, %bb.v ], [ %.pre1026, %bb.w ]
  %i.cc = bitcast double %.sroa.096.1 to i64      ; 2 uses
  %i.cd = trunc i64 %.sroa.26.1 to i32
  %i.ce = icmp ugt i32 %i.cd, -10
  br i1 %i.ce, label %bb.x, label %JS_FreeValueRT.exit229

bb.x:                                             ; preds = %JS_FreeValueRT.exit230
  %i.cf = inttoptr i64 %i.cc to ptr
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !191 ; 2 uses
  %i.ci = add nsw i32 %i.ch, -1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !191
  %i.cj = icmp slt i32 %i.ch, 2
  br i1 %i.cj, label %bb.y, label %JS_FreeValueRT.exit229

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cb, i64 %i.cc, i64 %.sroa.26.1), !inline_history !370
  br label %JS_FreeValueRT.exit229

bb.z:                                             ; preds = %tag_is_number.exit216.thread
  %i.ck = bitcast double %.us-phi304 to i64
  %i.cl = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %i.ck, i64 %.us-phi303, i32 noundef 1), !inline_history !122 ; 2 uses
  %i.cm = extractvalue { i64, i64 } %i.cl, 0      ; 3 uses
  %i.cn = extractvalue { i64, i64 } %i.cl, 1      ; 4 uses
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = icmp eq i64 %i.co, 6
  br i1 %i.cp, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cq = bitcast double %.sroa.096.0.ph to i64   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !232
  %i.ct = icmp ugt i32 %i.c, -10
  br i1 %i.ct, label %bb.ab, label %JS_FreeValueRT.exit232

bb.ab:                                            ; preds = %bb.aa
  %i.cu = inttoptr i64 %i.cq to ptr
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !191 ; 2 uses
  %i.cx = add nsw i32 %i.cw, -1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !191
  %i.cy = icmp slt i32 %i.cw, 2
  br i1 %i.cy, label %bb.ac, label %JS_FreeValueRT.exit232

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cs, i64 %i.cq, i64 %.sroa.26.0.ph.fr), !inline_history !370
  br label %JS_FreeValueRT.exit232

bb.ad:                                            ; preds = %bb.z
  %i.cz = bitcast i64 %i.cm to double
  %i.da = bitcast double %.sroa.096.0.ph to i64
  %i.db = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %i.da, i64 %.sroa.26.0.ph.fr, i32 noundef 1), !inline_history !122 ; 2 uses
  %i.dc = extractvalue { i64, i64 } %i.db, 0
  %i.dd = extractvalue { i64, i64 } %i.db, 1      ; 2 uses
  %i.de = bitcast i64 %i.dc to double
  %i.df = and i64 %i.dd, 4294967295
  %i.dg = icmp eq i64 %i.df, 6
  br i1 %i.dg, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !232
  %i.dj = trunc i64 %i.cn to i32
  %i.dk = icmp ugt i32 %i.dj, -10
  br i1 %i.dk, label %bb.af, label %JS_FreeValueRT.exit232

bb.af:                                            ; preds = %bb.ae
  %i.dl = inttoptr i64 %i.cm to ptr
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !191 ; 2 uses
  %i.do = add nsw i32 %i.dn, -1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !191
  %i.dp = icmp slt i32 %i.dn, 2
  br i1 %i.dp, label %bb.ag, label %JS_FreeValueRT.exit232

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @js_free_value_rt(ptr noundef %i.di, i64 %i.cm, i64 %i.cn), !inline_history !370
  br label %JS_FreeValueRT.exit232

bb.ah:                                            ; preds = %bb.t, %bb.t, %bb.ad, %bb.s
  %.sroa.26.2 = phi i64 [ %i.bp, %bb.t ], [ %.sroa.26.0.ph.fr, %bb.s ], [ %i.dd, %bb.ad ], [ %i.bp, %bb.t ] ; 3 uses
  %.sroa.096.2 = phi double [ %i.bq, %bb.t ], [ %.sroa.096.0.ph, %bb.s ], [ %i.de, %bb.ad ], [ %i.bq, %bb.t ]
  %.sroa.26155.3 = phi i64 [ %.sroa.26155.1, %bb.t ], [ %.sroa.26155.1, %bb.s ], [ %i.cn, %bb.ad ], [ %.sroa.26155.1, %bb.t ] ; 3 uses
  %.sroa.0136.3 = phi double [ %.sroa.0136.1, %bb.t ], [ %.sroa.0136.1, %bb.s ], [ %i.cz, %bb.ad ], [ %.sroa.0136.1, %bb.t ]
  %i.dq = bitcast double %.sroa.0136.3 to i64     ; 3 uses
  %i.dr = bitcast double %.sroa.096.2 to i64      ; 3 uses
end_hunk_2
begin_hunk_3_@js_binary_arith_slow:bb.a
  %i.kq = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %spec.select.i)
  %i.kr = icmp samesign ult i32 %i.kq, 2
  br i1 %i.kr, label %bb.cn, label %js_bigint_new_si.exit98.i

bb.cn:                                            ; preds = %bb.cm
  %i.ks = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i, i1 true)
  %i.kt = xor i32 %i.ks, 31
  %i.ku = icmp ugt i32 %i.de, 1
  br i1 %i.ku, label %js_bigint_new_si.exit98.thread179.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kv = load i32, ptr %i.dd, align 4, !tbaa !191 ; 3 uses
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %js_bigint_new_si.exit98.thread179.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kx = zext nneg i32 %i.kv to i64
  %i.ky = zext nneg i32 %i.kt to i64
  %i.kz = mul nuw nsw i64 %i.kx, %i.ky            ; 3 uses
  %i.la = icmp samesign ugt i64 %i.kz, 1048576
  br i1 %i.la, label %js_bigint_new_si.exit98.thread179.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lb = trunc nuw nsw i64 %i.kz to i32          ; 2 uses
  %i.lc = trunc i32 %i.kv to i1
  %spec.select95.i = and i1 %i.kp, %i.lc          ; 2 uses
  %i.ld = add nuw nsw i32 %i.lb, 33
  %.neg.i = sext i1 %spec.select95.i to i32
  %i.le = add nsw i32 %i.ld, %.neg.i
  %i.lf = lshr i32 %i.le, 5
  %i.lg = tail call fastcc ptr @js_bigint_new(ptr noundef %0, i32 noundef %i.lf), !inline_history !1704 ; 4 uses
  %.not89.i = icmp eq ptr %i.lg, null
  br i1 %.not89.i, label %js_bigint_pow.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4 ; 2 uses
  %i.li = load i32, ptr %i.lg, align 4, !tbaa !191
  %i.lj = zext i32 %i.li to i64
  %i.lk = shl nuw nsw i64 %i.lj, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lh, i8 0, i64 %i.lk, i1 false)
  %i.ll = select i1 %spec.select95.i, i32 -1, i32 1
  %i.lm = and i32 %i.lb, 31
  %i.ln = shl i32 %i.ll, %i.lm
  %i.lo = lshr i64 %i.kz, 5
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lo
  store i32 %i.ln, ptr %i.lp, align 4, !tbaa !191
  br label %js_bigint_pow.exit

js_bigint_new_si.exit98.i:                        ; preds = %bb.cm, %bb.bn
  %i.lq = icmp ugt i32 %i.de, 1
  br i1 %i.lq, label %js_bigint_new_si.exit98.thread179.i, label %bb.cs

bb.cs:                                            ; preds = %js_bigint_new_si.exit98.i
  %i.lr = load i32, ptr %i.dd, align 4, !tbaa !191 ; 3 uses
  %i.ls = icmp slt i32 %i.lr, 0
  br i1 %i.ls, label %js_bigint_new_si.exit98.thread179.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lt = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.lr, i1 true) ; 2 uses
  %i.lu = icmp sgt i32 %i.ft, 32768
  br i1 %i.lu, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.lv = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143), !inline_history !1707 ; 0 uses
  br label %js_bigint_pow.exit

bb.cv:                                            ; preds = %bb.ct
  %i.lw = sext i32 %i.ft to i64
  %i.lx = shl nsw i64 %i.lw, 2
  %i.ly = add nsw i64 %i.lx, 4                    ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !232 ; 8 uses
  %i.mb = icmp eq i64 %i.ly, 0
  br i1 %i.mb, label %bb.dc, label %bb.cw, !prof !192

bb.cw:                                            ; preds = %bb.cv
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 40 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 48 ; 3 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !196
  %i.mf = add i64 %i.me, %i.ly
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 56
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !197
  %i.mi = add i64 %i.mh, -1
  %i.mj = icmp ugt i64 %i.mf, %i.mi
  br i1 %i.mj, label %bb.dc, label %bb.cx, !prof !192

bb.cx:                                            ; preds = %bb.cw
  %i.mk = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.ma, i64 noundef %i.ly), !inline_history !1708 ; 8 uses
  %.not.i.i119.i = icmp eq ptr %i.mk, null
  br i1 %.not.i.i119.i, label %._crit_edge.i, label %bb.cy

._crit_edge.i:                                    ; preds = %bb.cx
  %.pre.i = load ptr, ptr %i.lz, align 8, !tbaa !232
  br label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %i.ml = load i64, ptr %i.mc, align 8, !tbaa !217
  %i.mm = add i64 %i.ml, 1
  store i64 %i.mm, ptr %i.mc, align 8, !tbaa !217
  %i.mn = getelementptr inbounds i8, ptr %i.mk, i64 -8 ; 3 uses
  %i.mo = load i16, ptr %i.mn, align 8, !tbaa !218
  %i.mp = icmp eq i16 %i.mo, -1
  br i1 %i.mp, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ma, i64 1064
  %i.mr = icmp eq ptr %i.mn, %i.mq
  br i1 %i.mr, label %bb.de, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !219
  %i.mu = tail call i64 %i.mt(ptr noundef nonnull %i.mn) #49, !inline_history !1709 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.mu, 0
  %i.mv = select i1 %.not15.i.i.i.i, i64 8, i64 %i.mu
  br label %bb.de

bb.db:                                            ; preds = %bb.cy
  %i.mw = getelementptr inbounds i8, ptr %i.mk, i64 -6
  %i.mx = load i8, ptr %i.mw, align 2, !tbaa !218
  %i.my = zext i8 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.my
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !221
  %i.nb = zext i16 %i.na to i64
  br label %bb.de

bb.dc:                                            ; preds = %._crit_edge.i, %bb.cw, %bb.cv
  %i.nc = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ma, %bb.cw ], [ %i.ma, %bb.cv ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 1256 ; 3 uses
  %i.ne = load i8, ptr %i.nd, align 8, !tbaa !233, !range !234, !noundef !235
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %js_bigint_pow.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i8 1, ptr %i.nd, align 8, !tbaa !233
  %i.ng = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1710 ; 0 uses
  store i8 0, ptr %i.nd, align 8, !tbaa !233
  br label %js_bigint_pow.exit

bb.de:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %.011.i.i.i.i = phi i64 [ 8, %bb.cz ], [ %i.mv, %bb.da ], [ %i.nb, %bb.db ]
  %i.nh = load i64, ptr %i.md, align 8, !tbaa !196
  %i.ni = add i64 %i.nh, %.011.i.i.i.i
  store i64 %i.ni, ptr %i.md, align 8, !tbaa !196
  %i.nj = getelementptr inbounds i8, ptr %i.mk, i64 -4
  store i32 1, ptr %i.nj, align 4, !tbaa !191
  store i32 %i.ft, ptr %i.mk, align 8, !tbaa !191
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  %i.nl = getelementptr inbounds nuw i8, ptr %.0194, i64 4
  %i.nm = load i32, ptr %.0194, align 4, !tbaa !191
  %i.nn = zext i32 %i.nm to i64
  %i.no = shl nuw nsw i64 %i.nn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nk, ptr nonnull readonly align 4 %i.nl, i64 %i.no, i1 false)
  %.not194.i = icmp eq i32 %i.lt, 31
  br i1 %.not194.i, label %js_bigint_pow.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.de
  %i.np = sub nuw nsw i32 30, %i.lt
  br label %bb.df

bb.df:                                            ; preds = %bb.dj, %.lr.ph.i
  %.077189.i = phi i32 [ %i.np, %.lr.ph.i ], [ %i.nw, %bb.dj ] ; 3 uses
  %.078188.i = phi ptr [ %i.mk, %.lr.ph.i ], [ %.179.i, %bb.dj ] ; 3 uses
  %i.nq = tail call fastcc ptr @js_bigint_mul(ptr noundef nonnull %0, ptr noundef nonnull %.078188.i, ptr noundef nonnull %.078188.i), !inline_history !1704 ; 4 uses
  %.not92.i = icmp eq ptr %i.nq, null
  br i1 %.not92.i, label %js_bigint_pow.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.nr = load ptr, ptr %i.lz, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.nr, ptr noundef nonnull %.078188.i), !inline_history !1704
  %i.ns = shl nuw i32 1, %.077189.i
  %i.nt = and i32 %i.ns, %i.lr
  %.not93.i = icmp eq i32 %i.nt, 0
  br i1 %.not93.i, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nu = call fastcc ptr @js_bigint_mul(ptr noundef nonnull %0, ptr noundef nonnull %i.nq, ptr noundef nonnull readonly %.0194), !inline_history !1704 ; 2 uses
  %.not94.i = icmp eq ptr %i.nu, null
  br i1 %.not94.i, label %js_bigint_pow.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nv = load ptr, ptr %i.lz, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.nv, ptr noundef nonnull %i.nq), !inline_history !1704
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dg
  %.179.i = phi ptr [ %i.nu, %bb.di ], [ %i.nq, %bb.dg ] ; 2 uses
  %i.nw = add nsw i32 %.077189.i, -1
  %i.nx = icmp sgt i32 %.077189.i, 0
  br i1 %i.nx, label %bb.df, label %js_bigint_pow.exit, !llvm.loop !1711

js_bigint_new_si.exit98.thread179.i:              ; preds = %bb.cs, %js_bigint_new_si.exit98.i, %bb.cp, %bb.co, %bb.cn
  %i.ny = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.198), !inline_history !1704 ; 0 uses
  br label %js_bigint_pow.exit

bb.dk:                                            ; preds = %bb.as
  tail call void @abort() #50
  unreachable

js_bigint_pow.exit:                               ; preds = %bb.dj, %bb.dh, %bb.df, %js_bigint_new_si.exit98.thread179.i, %bb.de, %bb.dd, %bb.dc, %bb.cu, %bb.cr, %bb.cq, %bb.cl, %bb.ck, %js_arena_malloc.exit151.thread.i, %bb.bz, %bb.by, %js_arena_malloc.exit146.thread.i, %bb.bm, %bb.bl, %js_arena_malloc.exit.thread.i, %bb.az, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %.0192 = phi ptr [ %i.cy, %bb.at ], [ %i.cz, %bb.au ], [ %i.da, %bb.av ], [ %i.db, %bb.aw ], [ %i.dc, %bb.ax ], [ null, %bb.az ], [ null, %bb.cu ], [ null, %js_arena_malloc.exit.thread.i ], [ null, %js_bigint_new_si.exit98.thread179.i ], [ null, %bb.dd ], [ null, %js_arena_malloc.exit151.thread.i ], [ null, %bb.dc ], [ %i.et, %bb.bm ], [ null, %bb.bl ], [ null, %js_arena_malloc.exit146.thread.i ], [ %i.jp, %bb.cl ], [ %i.he, %bb.bz ], [ %i.lg, %bb.cr ], [ null, %bb.cq ], [ null, %bb.by ], [ null, %bb.ck ], [ %i.mk, %bb.de ], [ %.179.i, %bb.dj ], [ null, %bb.dh ], [ null, %bb.df ] ; 5 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !232 ; 3 uses
  %i.ob = trunc i64 %.sroa.14.0 to i32
  %i.oc = icmp ugt i32 %i.ob, -10
  br i1 %i.oc, label %bb.dl, label %JS_FreeValueRT.exit229

bb.dl:                                            ; preds = %js_bigint_pow.exit
  %i.od = inttoptr i64 %.sroa.0129.sroa.0.0 to ptr
  %i.oe = getelementptr inbounds i8, ptr %i.od, i64 -4 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !191 ; 2 uses
  %i.og = add nsw i32 %i.of, -1
  store i32 %i.og, ptr %i.oe, align 4, !tbaa !191
  %i.oh = icmp slt i32 %i.of, 2
  br i1 %i.oh, label %bb.dm, label %JS_FreeValueRT.exit229

bb.dm:                                            ; preds = %bb.dl
  tail call fastcc void @js_free_value_rt(ptr noundef %i.oa, i64 %.sroa.0129.sroa.0.0, i64 %.sroa.14.0), !inline_history !370
  %.pre = load ptr, ptr %i.nz, align 8, !tbaa !232
  br label %JS_FreeValueRT.exit229

JS_FreeValueRT.exit229:                           ; preds = %js_bigint_pow.exit, %bb.dl, %bb.dm
  %i.oi = phi ptr [ %i.oa, %js_bigint_pow.exit ], [ %i.oa, %bb.dl ], [ %.pre, %bb.dm ]
  %i.oj = trunc i64 %.sroa.15.0 to i32
  %i.ok = icmp ugt i32 %i.oj, -10
  br i1 %i.ok, label %bb.dn, label %JS_FreeValueRT.exit230

bb.dn:                                            ; preds = %JS_FreeValueRT.exit229
  %i.ol = inttoptr i64 %.sroa.0109.sroa.0.0 to ptr
  %i.om = getelementptr inbounds i8, ptr %i.ol, i64 -4 ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !191 ; 2 uses
  %i.oo = add nsw i32 %i.on, -1
  store i32 %i.oo, ptr %i.om, align 4, !tbaa !191
  %i.op = icmp slt i32 %i.on, 2
  br i1 %i.op, label %bb.do, label %JS_FreeValueRT.exit230

bb.do:                                            ; preds = %bb.dn
  tail call fastcc void @js_free_value_rt(ptr noundef %i.oi, i64 %.sroa.0109.sroa.0.0, i64 %.sroa.15.0), !inline_history !370
  br label %JS_FreeValueRT.exit230

JS_FreeValueRT.exit230:                           ; preds = %JS_FreeValueRT.exit229, %bb.dn, %bb.do
  %.not210 = icmp eq ptr %.0192, null
  br i1 %.not210, label %JS_FreeValueRT.exit, label %bb.dp

bb.dp:                                            ; preds = %JS_FreeValueRT.exit230
  %i.oq = load i32, ptr %.0192, align 4, !tbaa !191
  %i.or = icmp eq i32 %i.oq, 1
  br i1 %i.or, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.os = getelementptr inbounds nuw i8, ptr %.0192, i64 4
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !191
  %.sroa.0.0.insert.ext.i.i222 = zext i32 %i.ot to i64
  %i.ou = load ptr, ptr %i.nz, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.ou, ptr noundef nonnull %.0192)
  br label %JS_CompactBigInt.exit

bb.dr:                                            ; preds = %bb.dp
  %i.ov = ptrtoint ptr %.0192 to i64
  br label %JS_CompactBigInt.exit

JS_CompactBigInt.exit:                            ; preds = %bb.dq, %bb.dr
  %.sroa.08.0.i = phi i64 [ %.sroa.0.0.insert.ext.i.i222, %bb.dq ], [ %i.ov, %bb.dr ]
  %.sroa.3.0.i219 = phi i64 [ 7, %bb.dq ], [ -9, %bb.dr ]
  store i64 %.sroa.08.0.i, ptr %i.c, align 8, !tbaa !218
  store i64 %.sroa.3.0.i219, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !240
  br label %.thread251

bb.ds:                                            ; preds = %bb.am, %bb.al
  %i.ow = icmp ult i32 %i.be, 3
  br i1 %i.ow, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %.sroa.0.0.extract.trunc.i223 = trunc i64 %i.ae to i32
  %i.ox = sitofp i32 %.sroa.0.0.extract.trunc.i223 to double
  store double %i.ox, ptr %i.a, align 8, !tbaa !505
  br label %JS_ToFloat64Free.exit.thread

bb.du:                                            ; preds = %bb.ds
  %i.oy = icmp eq i32 %i.be, 8
  br i1 %i.oy, label %bb.dv, label %JS_ToFloat64Free.exit

bb.dv:                                            ; preds = %bb.du
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !505
  br label %JS_ToFloat64Free.exit.thread

JS_ToFloat64Free.exit:                            ; preds = %bb.du
  %i.oz = call fastcc i32 @__JS_ToFloat64Free(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.ae, i64 %i.af), !inline_history !71
  %.not = icmp eq i32 %i.oz, 0
  br i1 %.not, label %JS_ToFloat64Free.exit.thread, label %bb.dw

bb.dw:                                            ; preds = %JS_ToFloat64Free.exit
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !232
  %i.pc = icmp ugt i32 %i.bf, -10
  br i1 %i.pc, label %bb.dx, label %JS_FreeValueRT.exit

bb.dx:                                            ; preds = %bb.dw
  %i.pd = inttoptr i64 %i.ar to ptr
  %i.pe = getelementptr inbounds i8, ptr %i.pd, i64 -4 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !191 ; 2 uses
  %i.pg = add nsw i32 %i.pf, -1
  store i32 %i.pg, ptr %i.pe, align 4, !tbaa !191
  %i.ph = icmp slt i32 %i.pf, 2
  br i1 %i.ph, label %bb.dy, label %JS_FreeValueRT.exit

bb.dy:                                            ; preds = %bb.dx
  tail call fastcc void @js_free_value_rt(ptr noundef %i.pb, i64 %i.ar, i64 %i.as), !inline_history !370
  br label %JS_FreeValueRT.exit

JS_ToFloat64Free.exit.thread:                     ; preds = %bb.dv, %bb.dt, %JS_ToFloat64Free.exit
  %i.pi = icmp ult i32 %i.bf, 3
  br i1 %i.pi, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %JS_ToFloat64Free.exit.thread
  %.sroa.0.0.extract.trunc.i225 = trunc i64 %i.ar to i32
  %i.pj = sitofp i32 %.sroa.0.0.extract.trunc.i225 to double
  store double %i.pj, ptr %i.b, align 8, !tbaa !505
  br label %JS_ToFloat64Free.exit226.thread

bb.ea:                                            ; preds = %JS_ToFloat64Free.exit.thread
  %i.pk = icmp eq i32 %i.bf, 8
  br i1 %i.pk, label %bb.eb, label %JS_ToFloat64Free.exit226

bb.eb:                                            ; preds = %bb.ea
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !505
  br label %JS_ToFloat64Free.exit226.thread

JS_ToFloat64Free.exit226:                         ; preds = %bb.ea
  %i.pl = call fastcc i32 @__JS_ToFloat64Free(ptr noundef %0, ptr noundef nonnull %i.b, i64 %i.ar, i64 %i.as), !inline_history !71
  %.not201 = icmp eq i32 %i.pl, 0
  br i1 %.not201, label %JS_ToFloat64Free.exit226.thread, label %JS_FreeValueRT.exit

JS_ToFloat64Free.exit226.thread:                  ; preds = %bb.eb, %bb.dz, %JS_ToFloat64Free.exit226, %bb.b
  switch i32 %2, label %bb.ej [
    i32 157, label %bb.ec
    i32 153, label %bb.ed
    i32 154, label %bb.ee
    i32 155, label %bb.ef
    i32 164, label %bb.eg
  ]

bb.ec:                                            ; preds = %JS_ToFloat64Free.exit226.thread
  %i.pm = load double, ptr %i.a, align 8, !tbaa !505
  %i.pn = load double, ptr %i.b, align 8, !tbaa !505
  %i.po = fsub double %i.pm, %i.pn
  br label %js_math_pow.exit

bb.ed:                                            ; preds = %JS_ToFloat64Free.exit226.thread
  %i.pp = load double, ptr %i.a, align 8, !tbaa !505
  %i.pq = load double, ptr %i.b, align 8, !tbaa !505
  %i.pr = fmul double %i.pp, %i.pq
  br label %js_math_pow.exit

bb.ee:                                            ; preds = %JS_ToFloat64Free.exit226.thread
  %i.ps = load double, ptr %i.a, align 8, !tbaa !505
  %i.pt = load double, ptr %i.b, align 8, !tbaa !505
  %i.pu = fdiv double %i.ps, %i.pt
  br label %js_math_pow.exit

bb.ef:                                            ; preds = %JS_ToFloat64Free.exit226.thread
  %i.pv = load double, ptr %i.a, align 8, !tbaa !505
  %i.pw = load double, ptr %i.b, align 8, !tbaa !505
  %i.px = tail call double @fmod(double noundef %i.pv, double noundef %i.pw) #49
  br label %js_math_pow.exit

bb.eg:                                            ; preds = %JS_ToFloat64Free.exit226.thread
  %i.py = load double, ptr %i.a, align 8, !tbaa !505 ; 2 uses
  %i.pz = load double, ptr %i.b, align 8, !tbaa !505 ; 2 uses
  %i.qa = tail call double @llvm.fabs.f64(double %i.pz)
  %i.qb = fcmp ueq double %i.qa, +inf
  br i1 %i.qb, label %bb.eh, label %bb.ei, !prof !192

bb.eh:                                            ; preds = %bb.eg
  %i.qc = tail call double @llvm.fabs.f64(double %i.py)
  %i.qd = fcmp oeq double %i.qc, 1.000000e+00
  br i1 %i.qd, label %js_math_pow.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.qe = tail call double @pow(double noundef %i.py, double noundef %i.pz) #49
  br label %js_math_pow.exit

bb.ej:                                            ; preds = %JS_ToFloat64Free.exit226.thread
  tail call void @abort() #50
  unreachable

js_math_pow.exit:                                 ; preds = %bb.ei, %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ec
  %.0188 = phi double [ %i.po, %bb.ec ], [ %i.pr, %bb.ed ], [ %i.pu, %bb.ee ], [ %i.px, %bb.ef ], [ %i.qe, %bb.ei ], [ +qnan, %bb.eh ]
  store double %.0188, ptr %i.c, align 8, !tbaa !218
  store i64 8, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !240
  br label %.thread251

JS_FreeValueRT.exit:                              ; preds = %bb.dy, %bb.dx, %bb.dw, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.p, %JS_ToFloat64Free.exit226, %JS_FreeValueRT.exit230
  store i32 0, ptr %i.c, align 8
  %.sroa.218.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 -28
  store i32 0, ptr %.sroa.218.0..sroa_idx, align 4, !tbaa !218
  store i64 3, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !240
  store i32 0, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 -12
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  store i64 3, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !240
end_hunk_3
begin_hunk_4_@js_unary_arith_slow:bb.a
  %.sroa.0.0.insert.ext.i.i109 = zext i32 %i.be to i64
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.bf, ptr noundef nonnull %.092)
  br label %JS_CompactBigInt.exit

bb.ag:                                            ; preds = %bb.ae
  %i.bg = ptrtoint ptr %.092 to i64
  br label %JS_CompactBigInt.exit

JS_CompactBigInt.exit:                            ; preds = %bb.af, %bb.ag
  %.sroa.08.0.i = phi i64 [ %.sroa.0.0.insert.ext.i.i109, %bb.af ], [ %i.bg, %bb.ag ]
  %.sroa.3.0.i106 = phi i64 [ 7, %bb.af ], [ -9, %bb.ag ]
  store i64 %.sroa.08.0.i, ptr %i.a, align 8, !tbaa !218
  br label %.thread

bb.ah:                                            ; preds = %bb.c, %bb.a
  %.sroa.041.sroa.0.0 = phi i64 [ %.sroa.041.0.copyload119, %bb.a ], [ %i.e, %bb.c ]
  %i.bh = bitcast i64 %.sroa.041.sroa.0.0 to double ; 3 uses
  switch i32 %2, label %bb.ak [
    i32 142, label %bb.ai
    i32 141, label %bb.ai
    i32 140, label %bb.al
    i32 139, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.bi = shl nuw nsw i32 %2, 1
  %i.bj = add nsw i32 %i.bi, -283
  %i.bk = sitofp i32 %i.bj to double
  %i.bl = fadd double %i.bk, %i.bh
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.bm = fneg double %i.bh
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  tail call void @abort() #50
  unreachable

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.088 = phi double [ %i.bl, %bb.ai ], [ %i.bh, %bb.ah ], [ %i.bm, %bb.aj ]
  store double %.088, ptr %i.a, align 8, !tbaa !218
  br label %.thread

JS_FreeValueRT.exit:                              ; preds = %bb.w, %bb.v, %bb.u, %bb.r, %JS_FreeValueRT.exit110, %bb.b
  store i32 0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 -12
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.n, %bb.p, %JS_CompactBigInt.exit, %bb.al, %bb.i, %.critedge, %JS_FreeValueRT.exit
  %.sink = phi i64 [ 7, %bb.l ], [ 7, %bb.n ], [ 7, %bb.p ], [ %.sroa.3.0.i106, %JS_CompactBigInt.exit ], [ 8, %bb.al ], [ %.sroa.3.0.i, %bb.i ], [ 8, %.critedge ], [ 3, %JS_FreeValueRT.exit ]
  %.1 = phi i32 [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %JS_CompactBigInt.exit ], [ 0, %bb.al ], [ 0, %bb.i ], [ 0, %.critedge ], [ -1, %JS_FreeValueRT.exit ]
  store i64 %.sink, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !240
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  ret i32 %.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @js_not_slow(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16 ; 5 uses
  %.sroa.010.0.copyload70 = load i64, ptr %i.a, align 8, !tbaa !218
  %.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !240
  %i.b = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.010.0.copyload70, i64 %.sroa.10.0.copyload, i32 noundef 1), !inline_history !122 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 4 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 4 uses
  %i.e = and i64 %i.d, 4294967295
  %i.f = icmp eq i64 %i.e, 6
  br i1 %i.f, label %JS_ToInt32Free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.d to i32
  switch i32 %i.g, label %.preheader [
    i32 7, label %bb.c
    i32 -9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.c, 4294967295
  %.sroa.0.0.insert.ext.i = xor i64 %i.h, 4294967295
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.a, align 8, !tbaa !218
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.i = inttoptr i64 %i.c to ptr                 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !191  ; 3 uses
  %i.k = icmp sgt i32 %i.j, 32768
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143), !inline_history !1713 ; 0 uses
  br label %js_bigint_not.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.m = sext i32 %i.j to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = add nsw i64 %i.n, 4                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !232  ; 8 uses
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %bb.m, label %bb.g, !prof !192

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !196
  %i.v = add i64 %i.u, %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !197
  %i.y = add i64 %i.x, -1
  %i.z = icmp ugt i64 %i.v, %i.y
  br i1 %i.z, label %bb.m, label %bb.h, !prof !192

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.q, i64 noundef %i.o) ; 8 uses
  %.not.i48 = icmp eq ptr %i.aa, null
  br i1 %.not.i48, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !232
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !217
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.s, align 8, !tbaa !217
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !218
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 1064
  %i.ah = icmp eq ptr %i.ad, %i.ag
  br i1 %i.ah, label %js_bigint_new.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !219
  %i.ak = tail call i64 %i.aj(ptr noundef nonnull %i.ad) #49, !inline_history !1712 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.ak, 0
  %i.al = select i1 %.not15.i.i, i64 8, i64 %i.ak
  br label %js_bigint_new.exit

bb.l:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds i8, ptr %i.aa, i64 -6
  %i.an = load i8, ptr %i.am, align 2, !tbaa !218
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !221
  %i.ar = zext i16 %i.aq to i64
  br label %js_bigint_new.exit

bb.m:                                             ; preds = %._crit_edge, %bb.g, %bb.f
  %i.as = phi ptr [ %.pre, %._crit_edge ], [ %i.q, %bb.g ], [ %i.q, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1256 ; 3 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !233, !range !234, !noundef !235
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %js_bigint_not.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.at, align 8, !tbaa !233
  %i.aw = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1714 ; 0 uses
  store i8 0, ptr %i.at, align 8, !tbaa !233
  br label %js_bigint_not.exit.thread

js_bigint_new.exit:                               ; preds = %bb.l, %bb.k, %bb.j
  %.011.i.i = phi i64 [ 8, %bb.j ], [ %i.al, %bb.k ], [ %i.ar, %bb.l ]
  %i.ax = load i64, ptr %i.t, align 8, !tbaa !196
  %i.ay = add i64 %i.ax, %.011.i.i
  store i64 %i.ay, ptr %i.t, align 8, !tbaa !196
  %i.az = getelementptr inbounds i8, ptr %i.aa, i64 -4
  store i32 1, ptr %i.az, align 4, !tbaa !191
  store i32 %i.j, ptr %i.aa, align 8, !tbaa !191
  %i.ba = load i32, ptr %i.i, align 4, !tbaa !191
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %js_bigint_not.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %js_bigint_new.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !191
  %i.bf = xor i32 %i.be, -1
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !191
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.i, align 4, !tbaa !191
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %bb.o, label %js_bigint_not.exit.thread, !llvm.loop !149

js_bigint_not.exit.thread:                        ; preds = %bb.o, %js_bigint_new.exit, %bb.e, %bb.m, %bb.n
  %.011.i59 = phi ptr [ null, %bb.e ], [ null, %bb.n ], [ null, %bb.m ], [ %i.aa, %js_bigint_new.exit ], [ %i.aa, %bb.o ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !232
  %i.bm = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !191 ; 2 uses
  %i.bo = add nsw i32 %i.bn, -1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !191
  %i.bp = icmp slt i32 %i.bn, 2
  br i1 %i.bp, label %bb.p, label %JS_FreeValueRT.exit

bb.p:                                             ; preds = %js_bigint_not.exit.thread
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bl, i64 %i.c, i64 %i.d), !inline_history !370
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %js_bigint_not.exit.thread, %bb.p
  %.not38 = icmp eq ptr %.011.i59, null
  br i1 %.not38, label %JS_ToInt32Free.exit, label %JS_FreeValueRT.exit.thread

JS_FreeValueRT.exit.thread:                       ; preds = %JS_FreeValueRT.exit
  %i.bq = load i32, ptr %.011.i59, align 4, !tbaa !191
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %JS_FreeValueRT.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i59, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !191
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bt to i64
  %i.bu = load ptr, ptr %i.bk, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.bu, ptr noundef nonnull %.011.i59)
  br label %.thread

bb.r:                                             ; preds = %JS_FreeValueRT.exit.thread
  %i.bv = ptrtoint ptr %.011.i59 to i64
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.q
  %.sroa.08.0.i = phi i64 [ %.sroa.0.0.insert.ext.i.i, %bb.q ], [ %i.bv, %bb.r ]
  %.sroa.3.0.i = phi i64 [ 7, %bb.q ], [ -9, %bb.r ]
  store i64 %.sroa.08.0.i, ptr %i.a, align 8, !tbaa !218
  br label %bb.y

.preheader:                                       ; preds = %bb.b, %bb.x
  %.sroa.017.0.in.i = phi i64 [ %i.co, %bb.x ], [ %i.c, %bb.b ] ; 6 uses
  %.sroa.6.0.i = phi i64 [ %i.cp, %bb.x ], [ %i.d, %bb.b ] ; 2 uses
  %i.bw = trunc i64 %.sroa.6.0.i to i32
  switch i32 %i.bw, label %bb.x [
    i32 0, label %bb.s
    i32 1, label %bb.s
    i32 2, label %bb.s
    i32 3, label %bb.s
    i32 8, label %bb.t
  ]

bb.s:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader
  %.sroa.017.0.extract.trunc.i = trunc i64 %.sroa.017.0.in.i to i32
  br label %JS_ToInt32Free.exit.thread68

bb.t:                                             ; preds = %.preheader
  %i.bx = lshr i64 %.sroa.017.0.in.i, 52
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = and i32 %i.by, 2047                     ; 3 uses
  %i.ca = icmp samesign ult i32 %i.bz, 1054
  br i1 %i.ca, label %bb.u, label %bb.v, !prof !325

bb.u:                                             ; preds = %bb.t
  %.sroa.017.0.i.le = bitcast i64 %.sroa.017.0.in.i to double
  %i.cb = fptosi double %.sroa.017.0.i.le to i32
  br label %JS_ToInt32Free.exit.thread68

bb.v:                                             ; preds = %bb.t
  %i.cc = icmp samesign ult i32 %i.bz, 1107
  br i1 %i.cc, label %bb.w, label %JS_ToInt32Free.exit.thread68

bb.w:                                             ; preds = %bb.v
  %i.cd = and i64 %.sroa.017.0.in.i, 4503599627370495
  %i.ce = or disjoint i64 %i.cd, 4503599627370496
  %i.cf = add nsw i32 %i.bz, -1043
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl i64 %i.ce, %i.cg
  %i.ci = lshr i64 %i.ch, 32                      ; 2 uses
  %i.cj = trunc nuw i64 %i.ci to i32              ; 2 uses
  %i.ck = icmp slt i64 %.sroa.017.0.in.i, 0
  %i.cl = icmp ne i64 %i.ci, 2147483648
  %or.cond.i = select i1 %i.ck, i1 %i.cl, i1 false
  %i.cm = sub nsw i32 0, %i.cj
  %spec.select.i = select i1 %or.cond.i, i32 %i.cm, i32 %i.cj
  br label %JS_ToInt32Free.exit.thread68

bb.x:                                             ; preds = %.preheader
  %i.cn = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.017.0.in.i, i64 %.sroa.6.0.i, i32 noundef 0), !inline_history !70 ; 2 uses
  %i.co = extractvalue { i64, i64 } %i.cn, 0
  %i.cp = extractvalue { i64, i64 } %i.cn, 1      ; 2 uses
  %i.cq = and i64 %i.cp, 4294967295
  %i.cr = icmp eq i64 %i.cq, 6
  br i1 %i.cr, label %JS_ToInt32Free.exit, label %.preheader

JS_ToInt32Free.exit.thread68:                     ; preds = %bb.s, %bb.v, %bb.w, %bb.u
  %storemerge.i.ph = phi i32 [ 0, %bb.v ], [ %spec.select.i, %bb.w ], [ %i.cb, %bb.u ], [ %.sroa.017.0.extract.trunc.i, %bb.s ]
  %i.cs = xor i32 %storemerge.i.ph, -1
  %.sroa.0.0.insert.ext.i43 = zext i32 %i.cs to i64
  store i64 %.sroa.0.0.insert.ext.i43, ptr %i.a, align 8, !tbaa !218
  br label %bb.y

JS_ToInt32Free.exit:                              ; preds = %bb.x, %JS_FreeValueRT.exit, %bb.a
  store i32 0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 -12
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  br label %bb.y

bb.y:                                             ; preds = %JS_ToInt32Free.exit.thread68, %.thread, %bb.c, %JS_ToInt32Free.exit
  %.sink = phi i64 [ 0, %JS_ToInt32Free.exit.thread68 ], [ %.sroa.3.0.i, %.thread ], [ 7, %bb.c ], [ 3, %JS_ToInt32Free.exit ]
  %.0 = phi i32 [ 0, %JS_ToInt32Free.exit.thread68 ], [ 0, %.thread ], [ 0, %bb.c ], [ -1, %JS_ToInt32Free.exit ]
  store i64 %.sink, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !240
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_binary_logic_slow(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #16 {
bb.a:
  %3 = alloca %struct.JSBigIntBuf, align 4        ; 3 uses
  %4 = alloca %struct.JSBigIntBuf, align 4        ; 4 uses
  %i.a = getelementptr inbounds i8, ptr %1, i64 -32 ; 5 uses
  %.sroa.082.0.copyload251 = load i64, ptr %i.a, align 8, !tbaa !218 ; 7 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 -24 ; 5 uses
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !240 ; 6 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %.sroa.064.0.copyload252 = load i64, ptr %i.b, align 8, !tbaa !218 ; 10 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !240 ; 8 uses
  %i.c = and i64 %.sroa.12.0.copyload, 4294967295
  %i.d = icmp eq i64 %i.c, 7
  %i.e = and i64 %.sroa.13.0.copyload, 4294967295
  %i.f = icmp eq i64 %i.e, 7
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %.sroa.082.sroa.0.0.extract.trunc = trunc i64 %.sroa.082.0.copyload251 to i32 ; 4 uses
  %.sroa.064.sroa.0.0.extract.trunc = trunc i64 %.sroa.064.0.copyload252 to i32 ; 11 uses
  switch i32 %2, label %bb.s [
    i32 161, label %bb.c
    i32 163, label %bb.d
    i32 162, label %bb.e
    i32 159, label %bb.f
    i32 158, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %.sroa.064.sroa.0.0.extract.trunc, %.sroa.082.sroa.0.0.extract.trunc
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.h = or i32 %.sroa.064.sroa.0.0.extract.trunc, %.sroa.082.sroa.0.0.extract.trunc
  br label %bb.t

bb.e:                                             ; preds = %bb.b
  %i.i = xor i32 %.sroa.064.sroa.0.0.extract.trunc, %.sroa.082.sroa.0.0.extract.trunc
  br label %bb.t

bb.f:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %.sroa.064.sroa.0.0.extract.trunc, 31
  br i1 %i.j, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp slt i32 %.sroa.064.sroa.0.0.extract.trunc, 0
  br i1 %i.k, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.l = icmp samesign ult i32 %.sroa.064.sroa.0.0.extract.trunc, -31
  br i1 %i.l, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = sub nsw i64 0, %.sroa.064.0.copyload252
  br label %bb.o

bb.j:                                             ; preds = %bb.g, %bb.n
  %.0128 = phi i32 [ %.sroa.064.sroa.0.0.extract.trunc, %bb.g ], [ %i.r, %bb.n ]
  %i.n = ashr i32 %.sroa.082.sroa.0.0.extract.trunc, %.0128
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.o = icmp sgt i32 %.sroa.064.sroa.0.0.extract.trunc, 31
  br i1 %i.o, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = icmp slt i32 %.sroa.064.sroa.0.0.extract.trunc, 0
  br i1 %i.p, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.q = icmp samesign ult i32 %.sroa.064.sroa.0.0.extract.trunc, -31
  br i1 %i.q, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = sub nsw i32 0, %.sroa.064.sroa.0.0.extract.trunc
  br label %bb.j

bb.o:                                             ; preds = %bb.l, %bb.i
  %.1129 = phi i64 [ %i.m, %bb.i ], [ %.sroa.064.0.copyload252, %bb.l ]
  %sext = shl i64 %.sroa.082.0.copyload251, 32
  %i.s = ashr exact i64 %sext, 32
  %i.t = and i64 %.1129, 4294967295
  %i.u = shl nsw i64 %i.s, %i.t                   ; 3 uses
  %i.v = add nsw i64 %i.u, 2147483648
  %i.w = icmp ult i64 %i.v, 4294967296
  br i1 %i.w, label %bb.p, label %bb.q, !prof !325

bb.p:                                             ; preds = %bb.o
  %i.x = trunc nsw i64 %i.u to i32
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.y = tail call fastcc ptr @js_bigint_new_di(ptr noundef %0, i64 noundef %i.u) ; 2 uses
  %.not149 = icmp eq ptr %i.y, null
  br i1 %.not149, label %JS_FreeValueRT.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.y, ptr %i.a, align 8, !tbaa !218
  store i64 -9, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !240
  br label %.thread235

bb.s:                                             ; preds = %bb.b
  tail call void @abort() #50
  unreachable

bb.t:                                             ; preds = %bb.p, %bb.j, %bb.e, %bb.d, %bb.c
  %.0130 = phi i32 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.x, %bb.p ], [ %i.n, %bb.j ]
  %.sroa.0.0.insert.ext.i = zext i32 %.0130 to i64
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.a, align 8, !tbaa !218
  store i64 7, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !240
  br label %.thread235

bb.u:                                             ; preds = %bb.a
  %i.z = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.082.0.copyload251, i64 %.sroa.12.0.copyload, i32 noundef 1), !inline_history !122 ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0       ; 5 uses
  %i.ab = extractvalue { i64, i64 } %i.z, 1       ; 7 uses
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = icmp eq i64 %i.ac, 6
  br i1 %i.ad, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !232
  %i.ag = trunc i64 %.sroa.13.0.copyload to i32
  %i.ah = icmp ugt i32 %i.ag, -10
  br i1 %i.ah, label %bb.w, label %JS_FreeValueRT.exit

bb.w:                                             ; preds = %bb.v
  %i.ai = inttoptr i64 %.sroa.064.0.copyload252 to ptr
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !191 ; 2 uses
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !191
  %i.am = icmp slt i32 %i.ak, 2
  br i1 %i.am, label %bb.x, label %JS_FreeValueRT.exit

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @js_free_value_rt(ptr noundef %i.af, i64 %.sroa.064.0.copyload252, i64 %.sroa.13.0.copyload), !inline_history !370
  br label %JS_FreeValueRT.exit

bb.y:                                             ; preds = %bb.u
  %i.an = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.064.0.copyload252, i64 %.sroa.13.0.copyload, i32 noundef 1), !inline_history !122 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0      ; 5 uses
  %i.ap = extractvalue { i64, i64 } %i.an, 1      ; 7 uses
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = icmp eq i64 %i.aq, 6
  br i1 %i.ar, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !232
  %i.au = trunc i64 %i.ab to i32
  %i.av = icmp ugt i32 %i.au, -10
  br i1 %i.av, label %bb.aa, label %JS_FreeValueRT.exit

bb.aa:                                            ; preds = %bb.z
  %i.aw = inttoptr i64 %i.aa to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !191 ; 2 uses
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !191
  %i.ba = icmp slt i32 %i.ay, 2
  br i1 %i.ba, label %bb.ab, label %JS_FreeValueRT.exit

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @js_free_value_rt(ptr noundef %i.at, i64 %i.aa, i64 %i.ab), !inline_history !370
  br label %JS_FreeValueRT.exit

bb.ac:                                            ; preds = %bb.y
  %i.bb = trunc i64 %i.ab to i32
  switch i32 %i.bb, label %.preheader475 [
    i32 -9, label %bb.ad
    i32 7, label %bb.ad
  ]

.preheader475:                                    ; preds = %bb.ad, %bb.ac
  br label %bb.bs

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %i.bc = trunc i64 %i.ap to i32
  switch i32 %i.bc, label %.preheader475 [
    i32 -9, label %.thread
    i32 7, label %.thread
  ]

end_hunk_4
begin_hunk_5_@js_bigint_divrem:bb.a

.lr.ph.i176.epil.preheader:                       ; preds = %js_mp_neg.exit181.loopexit.unr-lcssa, %.lr.ph.preheader.i174
  %indvars.iv.i177.epil.init = phi i64 [ 0, %.lr.ph.preheader.i174 ], [ %indvars.iv.next.i179.1, %js_mp_neg.exit181.loopexit.unr-lcssa ]
  %.013.i178.epil.init = phi i32 [ 1, %.lr.ph.preheader.i174 ], [ %i.ya, %js_mp_neg.exit181.loopexit.unr-lcssa ]
  %lcmp.mod454 = trunc i32 %i.xk to i1
  tail call void @llvm.assume(i1 %lcmp.mod454)
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.i177.epil.init ; 2 uses
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !191
  %i.yd = xor i32 %i.yc, -1
  %i.ye = add i32 %.013.i178.epil.init, %i.yd
  store i32 %i.ye, ptr %i.yb, align 4, !tbaa !191
  br label %js_mp_neg.exit181

js_mp_neg.exit181:                                ; preds = %.lr.ph.i176.epil.preheader, %js_mp_neg.exit181.loopexit.unr-lcssa, %js_mp_shr.exit
  br i1 %i.wn, label %.lr.ph312.preheader, label %._crit_edge313

.lr.ph312.preheader:                              ; preds = %js_mp_neg.exit181
  %smin = tail call i32 @llvm.smin.i32(i32 %i.xk, i32 2)
  %i.yf = add i32 %smin, -1
  br label %.lr.ph312

.lr.ph312:                                        ; preds = %.lr.ph312.preheader, %bb.cl
  %.0.i182311 = phi i32 [ %i.yp, %bb.cl ], [ %i.xk, %.lr.ph312.preheader ] ; 5 uses
  %i.yg = zext nneg i32 %.0.i182311 to i64
  %i.yh = getelementptr [4 x i8], ptr %i.mr, i64 %i.yg ; 2 uses
  %i.yi = getelementptr i8, ptr %i.yh, i64 -4
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !191 ; 2 uses
  %i.yk = add i32 %i.yj, -1
  %or.cond.i = icmp ult i32 %i.yk, -2
  br i1 %or.cond.i, label %._crit_edge313, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph312
  %i.yl = and i32 %i.yj, 1
  %i.ym = getelementptr i8, ptr %i.yh, i64 -8
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !191
  %i.yo = lshr i32 %i.yn, 31
  %.not.i184 = icmp eq i32 %i.yl, %i.yo
  br i1 %.not.i184, label %bb.cl, label %._crit_edge313

bb.cl:                                            ; preds = %bb.ck
  %i.yp = add nsw i32 %.0.i182311, -1
  %i.yq = icmp sgt i32 %.0.i182311, 2
  br i1 %i.yq, label %.lr.ph312, label %._crit_edge313, !llvm.loop !140

._crit_edge313:                                   ; preds = %bb.cl, %.lr.ph312, %bb.ck, %js_mp_neg.exit181
  %.0.i182.lcssa = phi i32 [ %i.xk, %js_mp_neg.exit181 ], [ %.0.i182311, %bb.ck ], [ %.0.i182311, %.lr.ph312 ], [ %i.yf, %bb.cl ] ; 3 uses
  %i.yr = load i32, ptr %i.ai, align 8, !tbaa !191
  %.not21.i = icmp eq i32 %.0.i182.lcssa, %i.yr
  br i1 %.not21.i, label %js_bigint_new_si.exit, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge313
  store i32 %.0.i182.lcssa, ptr %i.ai, align 8, !tbaa !191
  %i.ys = sext i32 %.0.i182.lcssa to i64
  %i.yt = shl nsw i64 %i.ys, 2
  %i.yu = add nsw i64 %i.yt, 4                    ; 2 uses
  %i.yv = load ptr, ptr %i.x, align 8, !tbaa !232
  %i.yw = tail call ptr @js_realloc_rt(ptr noundef %i.yv, ptr noundef nonnull %i.ai, i64 noundef %i.yu), !inline_history !141 ; 2 uses
  %.not.i225 = icmp eq ptr %i.yw, null            ; 2 uses
  %i.yx = icmp ne i64 %i.yu, 0
  %i.yy = and i1 %i.yx, %.not.i225
  br i1 %i.yy, label %bb.cn, label %js_realloc.exit, !prof !192

bb.cn:                                            ; preds = %bb.cm
  %i.yz = load ptr, ptr %i.x, align 8, !tbaa !232
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 1256 ; 3 uses
  %i.zb = load i8, ptr %i.za, align 8, !tbaa !233, !range !234, !noundef !235
  %i.zc = trunc nuw i8 %i.zb to i1
  br i1 %i.zc, label %js_realloc.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i8 1, ptr %i.za, align 8, !tbaa !233
  %i.zd = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !142 ; 0 uses
  store i8 0, ptr %i.za, align 8, !tbaa !233
  br label %js_realloc.exit

js_realloc.exit:                                  ; preds = %bb.cn, %bb.co, %bb.cm
  %spec.select.i = select i1 %.not.i225, ptr %i.ai, ptr %i.yw
  br label %js_bigint_new_si.exit

bb.cp:                                            ; preds = %js_mp_divnorm.exit
  tail call void @js_free_rt(ptr noundef %i.wm, ptr noundef nonnull %i.ai)
  %i.ze = sext i32 %i.kx to i64
  %i.zf = getelementptr [4 x i8], ptr %i.mq, i64 %i.ze
  %i.zg = getelementptr i8, ptr %i.zf, i64 4
  store i32 0, ptr %i.zg, align 4, !tbaa !191
  %.not130.unshifted = xor i32 %i.q, %i.l
  %.not130 = icmp sgt i32 %.not130.unshifted, -1
  %.pre = load i32, ptr %i.lo, align 8, !tbaa !191 ; 7 uses
  br i1 %.not130, label %js_mp_neg.exit193, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.zh = icmp sgt i32 %.pre, 0
  br i1 %i.zh, label %.lr.ph.preheader.i186, label %js_bigint_new_si.exit

.lr.ph.preheader.i186:                            ; preds = %bb.cq
  %wide.trip.count.i187 = zext nneg i32 %.pre to i64 ; 2 uses
  %xtraiter447 = and i64 %wide.trip.count.i187, 1
  %i.zi = icmp eq i32 %.pre, 1
  br i1 %i.zi, label %.lr.ph.i188.epil.preheader, label %.lr.ph.preheader.i186.new

.lr.ph.preheader.i186.new:                        ; preds = %.lr.ph.preheader.i186
  %unroll_iter450 = and i64 %wide.trip.count.i187, 2147483646
  br label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %.lr.ph.i188, %.lr.ph.preheader.i186.new
  %indvars.iv.i189 = phi i64 [ 0, %.lr.ph.preheader.i186.new ], [ %indvars.iv.next.i191.1, %.lr.ph.i188 ] ; 3 uses
  %.013.i190 = phi i32 [ 1, %.lr.ph.preheader.i186.new ], [ %i.zv, %.lr.ph.i188 ] ; 2 uses
  %niter451 = phi i64 [ 0, %.lr.ph.preheader.i186.new ], [ %niter451.next.1, %.lr.ph.i188 ]
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv.i189 ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !191
  %i.zl = xor i32 %i.zk, -1
  %i.zm = add i32 %.013.i190, %i.zl               ; 2 uses
  %i.zn = icmp ult i32 %i.zm, %.013.i190
  %i.zo = zext i1 %i.zn to i32                    ; 2 uses
  store i32 %i.zm, ptr %i.zj, align 4, !tbaa !191
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv.i189
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 4 ; 2 uses
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !191
  %i.zs = xor i32 %i.zr, -1
  %i.zt = add i32 %i.zo, %i.zs                    ; 2 uses
  %i.zu = icmp ult i32 %i.zt, %i.zo
  %i.zv = zext i1 %i.zu to i32                    ; 2 uses
  store i32 %i.zt, ptr %i.zq, align 4, !tbaa !191
  %indvars.iv.next.i191.1 = add nuw nsw i64 %indvars.iv.i189, 2 ; 2 uses
  %niter451.next.1 = add i64 %niter451, 2         ; 2 uses
  %niter451.ncmp.1 = icmp eq i64 %niter451.next.1, %unroll_iter450
  br i1 %niter451.ncmp.1, label %js_mp_neg.exit193.loopexit.unr-lcssa, label %.lr.ph.i188, !llvm.loop !1780

js_mp_neg.exit193.loopexit.unr-lcssa:             ; preds = %.lr.ph.i188
  %lcmp.mod448.not = icmp eq i64 %xtraiter447, 0
  br i1 %lcmp.mod448.not, label %js_mp_neg.exit193, label %.lr.ph.i188.epil.preheader

.lr.ph.i188.epil.preheader:                       ; preds = %js_mp_neg.exit193.loopexit.unr-lcssa, %.lr.ph.preheader.i186
  %indvars.iv.i189.epil.init = phi i64 [ 0, %.lr.ph.preheader.i186 ], [ %indvars.iv.next.i191.1, %js_mp_neg.exit193.loopexit.unr-lcssa ]
  %.013.i190.epil.init = phi i32 [ 1, %.lr.ph.preheader.i186 ], [ %i.zv, %js_mp_neg.exit193.loopexit.unr-lcssa ]
  %lcmp.mod449 = trunc i32 %.pre to i1
  tail call void @llvm.assume(i1 %lcmp.mod449)
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv.i189.epil.init ; 2 uses
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !191
  %i.zy = xor i32 %i.zx, -1
  %i.zz = add i32 %.013.i190.epil.init, %i.zy
  store i32 %i.zz, ptr %i.zw, align 4, !tbaa !191
  br label %js_mp_neg.exit193

js_mp_neg.exit193:                                ; preds = %.lr.ph.i188.epil.preheader, %js_mp_neg.exit193.loopexit.unr-lcssa, %bb.cp
  %i.aaa = icmp sgt i32 %.pre, 1
  br i1 %i.aaa, label %.lr.ph305, label %js_bigint_new_si.exit

.lr.ph305:                                        ; preds = %js_mp_neg.exit193, %bb.cs
  %.0.i228304 = phi i32 [ %i.aak, %bb.cs ], [ %.pre, %js_mp_neg.exit193 ] ; 5 uses
  %i.aab = zext nneg i32 %.0.i228304 to i64
  %i.aac = getelementptr [4 x i8], ptr %i.mq, i64 %i.aab ; 2 uses
  %i.aad = getelementptr i8, ptr %i.aac, i64 -4
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !191 ; 2 uses
  %i.aaf = add i32 %i.aae, -1
  %or.cond.i235 = icmp ult i32 %i.aaf, -2
  br i1 %or.cond.i235, label %._crit_edge, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph305
  %i.aag = and i32 %i.aae, 1
  %i.aah = getelementptr i8, ptr %i.aac, i64 -8
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !191
  %i.aaj = lshr i32 %i.aai, 31
  %.not.i236 = icmp eq i32 %i.aag, %i.aaj
  br i1 %.not.i236, label %bb.cs, label %._crit_edge

bb.cs:                                            ; preds = %bb.cr
  %i.aak = add nsw i32 %.0.i228304, -1
  %i.aal = icmp sgt i32 %.0.i228304, 2
  br i1 %i.aal, label %.lr.ph305, label %._crit_edge, !llvm.loop !140

._crit_edge:                                      ; preds = %bb.cs, %.lr.ph305, %bb.cr
  %.0.i228.lcssa = phi i32 [ %.0.i228304, %.lr.ph305 ], [ %.0.i228304, %bb.cr ], [ 1, %bb.cs ] ; 3 uses
  %.not21.i229 = icmp eq i32 %.0.i228.lcssa, %.pre
  br i1 %.not21.i229, label %js_bigint_new_si.exit, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge
  store i32 %.0.i228.lcssa, ptr %i.lo, align 8, !tbaa !191
  %i.aam = zext nneg i32 %.0.i228.lcssa to i64
  %i.aan = shl nuw nsw i64 %i.aam, 2
  %i.aao = add nuw nsw i64 %i.aan, 4
  %i.aap = load ptr, ptr %i.x, align 8, !tbaa !232
  %i.aaq = tail call ptr @js_realloc_rt(ptr noundef %i.aap, ptr noundef nonnull %i.lo, i64 noundef %i.aao), !inline_history !155 ; 2 uses
  %.not.i.i230 = icmp eq ptr %i.aaq, null
  br i1 %.not.i.i230, label %bb.cu, label %js_bigint_new_si.exit, !prof !192

bb.cu:                                            ; preds = %bb.ct
  %i.aar = load ptr, ptr %i.x, align 8, !tbaa !232
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 1256 ; 3 uses
  %i.aat = load i8, ptr %i.aas, align 8, !tbaa !233, !range !234, !noundef !235
  %i.aau = trunc nuw i8 %i.aat to i1
  br i1 %i.aau, label %js_bigint_new_si.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i8 1, ptr %i.aas, align 8, !tbaa !233
  %i.aav = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !156 ; 0 uses
  store i8 0, ptr %i.aas, align 8, !tbaa !233
  br label %js_bigint_new_si.exit

js_bigint_new_si.exit:                            ; preds = %bb.ct, %bb.cu, %bb.cv, %bb.cq, %js_mp_neg.exit193, %js_arena_malloc.exit.thread, %bb.bb, %bb.ap, %bb.aq, %bb.ah, %bb.m, %bb.n, %bb.e, %._crit_edge, %js_realloc.exit, %._crit_edge313, %bb.bc, %js_malloc.exit224.thread, %bb.ar, %bb.aa, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.fv, %bb.ar ], [ %i.lo, %._crit_edge ], [ null, %bb.m ], [ null, %bb.ap ], [ %i.ai, %._crit_edge313 ], [ null, %js_malloc.exit224.thread ], [ null, %bb.aa ], [ %i.ie, %bb.bc ], [ %spec.select.i, %js_realloc.exit ], [ %i.lo, %bb.cq ], [ null, %bb.e ], [ null, %bb.n ], [ null, %bb.ah ], [ null, %bb.aq ], [ null, %bb.bb ], [ null, %js_arena_malloc.exit.thread ], [ %i.lo, %js_mp_neg.exit193 ], [ %i.lo, %bb.cv ], [ %i.lo, %bb.cu ], [ %i.aaq, %bb.ct ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_bigint_not(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !191    ; 3 uses
  %i.b = icmp sgt i32 %i.a, 32768
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143), !inline_history !790 ; 0 uses
  br label %js_bigint_new.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %i.a to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = add nsw i64 %i.e, 4                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !232  ; 8 uses
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.j, label %bb.d, !prof !192

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !196
  %i.m = add i64 %i.l, %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !197
  %i.p = add i64 %i.o, -1
  %i.q = icmp ugt i64 %i.m, %i.p
  br i1 %i.q, label %bb.j, label %bb.e, !prof !192

bb.e:                                             ; preds = %bb.d
  %i.r = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.h, i64 noundef %i.f), !inline_history !791 ; 8 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !232
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.j, align 8, !tbaa !217
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.j, align 8, !tbaa !217
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 3 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !218
  %i.w = icmp eq i16 %i.v, -1
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 1064
  %i.y = icmp eq ptr %i.u, %i.x
  br i1 %i.y, label %js_bigint_new.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !219
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull %i.u) #49, !inline_history !143 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = select i1 %.not15.i.i.i, i64 8, i64 %i.ab
  br label %js_bigint_new.exit

bb.i:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 -6
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !218
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !221
  %i.ai = zext i16 %i.ah to i64
  br label %js_bigint_new.exit

bb.j:                                             ; preds = %._crit_edge, %bb.d, %bb.c
  %i.aj = phi ptr [ %.pre, %._crit_edge ], [ %i.h, %bb.d ], [ %i.h, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1256 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !233, !range !234, !noundef !235
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %js_bigint_new.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ak, align 8, !tbaa !233
  %i.an = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !792 ; 0 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !233
  br label %js_bigint_new.exit.thread

js_bigint_new.exit:                               ; preds = %bb.i, %bb.h, %bb.g
  %.011.i.i.i = phi i64 [ 8, %bb.g ], [ %i.ac, %bb.h ], [ %i.ai, %bb.i ]
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !196
  %i.ap = add i64 %i.ao, %.011.i.i.i
  store i64 %i.ap, ptr %i.k, align 8, !tbaa !196
  %i.aq = getelementptr inbounds i8, ptr %i.r, i64 -4
  store i32 1, ptr %i.aq, align 4, !tbaa !191
  store i32 %i.a, ptr %i.r, align 8, !tbaa !191
  %i.ar = load i32, ptr %1, align 4, !tbaa !191
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %js_bigint_new.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %js_bigint_new.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !191
  %i.aw = xor i32 %i.av, -1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !191
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr %1, align 4, !tbaa !191
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.l, label %js_bigint_new.exit.thread, !llvm.loop !149

js_bigint_new.exit.thread:                        ; preds = %bb.l, %js_bigint_new.exit, %bb.j, %bb.k, %bb.b
  %.011 = phi ptr [ null, %bb.j ], [ null, %bb.b ], [ null, %bb.k ], [ %i.r, %js_bigint_new.exit ], [ %i.r, %bb.l ]
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_bigint_shl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, -2147483648) %2) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !191    ; 2 uses
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !191
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !232  ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !196
  %i.k = add i64 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !197
  %i.n = add i64 %i.m, -1
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %js_arena_malloc.exit.thread, label %bb.d, !prof !192

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 568
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 576
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !222  ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %bb.e, label %bb.f, !prof !192

bb.e:                                             ; preds = %bb.d
  %i.t = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.g, i32 noundef 0) ; 2 uses
  %.not.i66 = icmp eq ptr %i.t, null
  br i1 %.not.i66, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.f

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.e
  %.pre102 = load ptr, ptr %i.f, align 8, !tbaa !232
  br label %js_arena_malloc.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i64 = phi ptr [ %i.t, %bb.e ], [ %i.r, %bb.d ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i64, i64 38 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !221  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i64, i64 40
  %i.x = zext i16 %i.v to i64
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y ; 9 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !218
  store i16 %i.aa, ptr %i.u, align 2, !tbaa !221
  store i16 %i.v, ptr %i.z, align 8, !tbaa !218
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i64, i64 34 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !221
  %i.ad = add i16 %i.ac, 1                        ; 2 uses
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !221
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i64, i64 36
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !221
  %i.ag = icmp eq i16 %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h, !prof !192

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %.0.i64, align 8, !tbaa !223 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i64, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !222 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !222
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i64, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.h, align 8, !tbaa !217
end_hunk_5
begin_hunk_6_@js_bigint_shl:bb.a
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph96, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next, %bb.y ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !191
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.dp, ptr %gep, align 4, !tbaa !191
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dq = load i32, ptr %1, align 4, !tbaa !191
  %i.dr = zext i32 %i.dq to i64
  %i.ds = icmp samesign ult i64 %indvars.iv.next, %i.dr
  br i1 %i.ds, label %bb.y, label %js_bigint_new_si.exit, !llvm.loop !1791

bb.z:                                             ; preds = %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %i.du = zext nneg i32 %i.bl to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.dx = load i32, ptr %1, align 4, !tbaa !191   ; 5 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.i, label %js_mp_shl.exit

.lr.ph.i:                                         ; preds = %bb.z
  %i.dz = sub nuw nsw i32 32, %i.bm               ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.dx to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ea = icmp eq i32 %i.dx, 1
  br i1 %i.ea, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.aa ] ; 4 uses
  %.014.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.em, %bb.aa ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.aa ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !191 ; 2 uses
  %i.ed = shl i32 %i.ec, %i.bm
  %i.ee = or i32 %i.ed, %.014.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !191
  %i.eg = lshr i32 %i.ec, %i.dz
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !191 ; 2 uses
  %i.ej = shl i32 %i.ei, %i.bm
  %i.ek = or disjoint i32 %i.ej, %i.eg
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !191
  %i.em = lshr i32 %i.ei, %i.dz                   ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %js_mp_shl.exit.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !158

js_mp_shl.exit.loopexit.unr-lcssa:                ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %js_mp_shl.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %js_mp_shl.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %js_mp_shl.exit.loopexit.unr-lcssa ] ; 2 uses
  %.014.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.em, %js_mp_shl.exit.loopexit.unr-lcssa ]
  %lcmp.mod117 = trunc i32 %i.dx to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i.epil.init
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !191 ; 2 uses
  %i.ep = shl i32 %i.eo, %i.bm
  %i.eq = or i32 %i.ep, %.014.i.epil.init
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i.epil.init
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !191
  %i.es = lshr i32 %i.eo, %i.dz
  br label %js_mp_shl.exit.loopexit

js_mp_shl.exit.loopexit:                          ; preds = %js_mp_shl.exit.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.em, %js_mp_shl.exit.loopexit.unr-lcssa ], [ %i.es, %.epil.preheader ]
  %.pre = load i32, ptr %1, align 4, !tbaa !191
  br label %js_mp_shl.exit

js_mp_shl.exit:                                   ; preds = %js_mp_shl.exit.loopexit, %bb.z
  %i.et = phi i32 [ %i.dx, %bb.z ], [ %.pre, %js_mp_shl.exit.loopexit ]
  %.0.lcssa.i = phi i32 [ 0, %bb.z ], [ %.lcssa, %js_mp_shl.exit.loopexit ] ; 2 uses
  %i.eu = add i32 %i.et, -1
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !191
  %i.ey = shl nsw i32 -1, %i.bm
  %.not4185 = icmp slt i32 %i.ex, 0
  %i.ez = select i1 %.not4185, i32 %i.ey, i32 0
  %.0 = or i32 %i.ez, %.0.lcssa.i                 ; 2 uses
  %i.fa = add i32 %.0, -1
  %or.cond.i = icmp ult i32 %i.fa, -2
  br i1 %or.cond.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %js_mp_shl.exit
  %i.fb = and i32 %.0.lcssa.i, 1
  %i.fc = getelementptr [4 x i8], ptr %i.ce, i64 %i.bq
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !191
  %i.fe = lshr i32 %i.fd, 31
  %.not.i44 = icmp eq i32 %i.fb, %i.fe
  br i1 %.not.i44, label %.preheader86, label %bb.ac

.preheader86:                                     ; preds = %bb.ab
  %i.ff = icmp sgt i32 %i.bn, 1
  br i1 %i.ff, label %.lr.ph89, label %js_bigint_new_si.exit

bb.ac:                                            ; preds = %bb.ab, %js_mp_shl.exit
  %i.fg = add nsw i32 %i.bn, 1                    ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = shl nsw i64 %i.fh, 2
  %i.fj = add nsw i64 %i.fi, 4                    ; 2 uses
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !232
  %i.fl = tail call ptr @js_realloc_rt(ptr noundef %i.fk, ptr noundef nonnull %i.ce, i64 noundef %i.fj), !inline_history !793 ; 4 uses
  %.not.i54 = icmp eq ptr %i.fl, null             ; 2 uses
  %i.fm = icmp ne i64 %i.fj, 0
  %i.fn = and i1 %i.fm, %.not.i54
  br i1 %i.fn, label %bb.ad, label %js_realloc.exit, !prof !192

bb.ad:                                            ; preds = %bb.ac
  %i.fo = load ptr, ptr %i.bt, align 8, !tbaa !232
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1256 ; 3 uses
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !233, !range !234, !noundef !235
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %js_realloc.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.fp, align 8, !tbaa !233
  %i.fs = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !794 ; 0 uses
  store i8 0, ptr %i.fp, align 8, !tbaa !233
  br label %js_realloc.exit.thread

js_realloc.exit:                                  ; preds = %bb.ac
  br i1 %.not.i54, label %js_realloc.exit.thread, label %bb.af

js_realloc.exit.thread:                           ; preds = %bb.ad, %bb.ae, %js_realloc.exit
  %i.ft = load ptr, ptr %i.bt, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.ft, ptr noundef nonnull %i.ce)
  br label %js_bigint_new_si.exit

bb.af:                                            ; preds = %js_realloc.exit
  store i32 %i.fg, ptr %i.fl, align 4, !tbaa !191
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.bq
  store i32 %.0, ptr %i.fv, align 4, !tbaa !191
  br label %js_bigint_new_si.exit

.lr.ph89:                                         ; preds = %.preheader86, %bb.ah
  %.0.i.i5288 = phi i32 [ %i.gf, %bb.ah ], [ %i.bn, %.preheader86 ] ; 5 uses
  %i.fw = zext nneg i32 %.0.i.i5288 to i64
  %i.fx = getelementptr [4 x i8], ptr %i.dt, i64 %i.fw ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 -4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !191 ; 2 uses
  %i.ga = add i32 %i.fz, -1
  %or.cond.i.i = icmp ult i32 %i.ga, -2
  br i1 %or.cond.i.i, label %._crit_edge90, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph89
  %i.gb = and i32 %i.fz, 1
  %i.gc = getelementptr i8, ptr %i.fx, i64 -8
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !191
  %i.ge = lshr i32 %i.gd, 31
  %.not.i.i53 = icmp eq i32 %i.gb, %i.ge
  br i1 %.not.i.i53, label %bb.ah, label %._crit_edge90

bb.ah:                                            ; preds = %bb.ag
  %i.gf = add nsw i32 %.0.i.i5288, -1
  %i.gg = icmp sgt i32 %.0.i.i5288, 2
  br i1 %i.gg, label %.lr.ph89, label %._crit_edge90, !llvm.loop !140

._crit_edge90:                                    ; preds = %bb.ah, %.lr.ph89, %bb.ag
  %.0.i.i52.lcssa = phi i32 [ %.0.i.i5288, %bb.ag ], [ 1, %bb.ah ], [ %.0.i.i5288, %.lr.ph89 ] ; 3 uses
  %.not21.i.i = icmp eq i32 %.0.i.i52.lcssa, %i.bn
  br i1 %.not21.i.i, label %js_bigint_new_si.exit, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge90
  store i32 %.0.i.i52.lcssa, ptr %i.ce, align 8, !tbaa !191
  %i.gh = zext nneg i32 %.0.i.i52.lcssa to i64
  %i.gi = shl nuw nsw i64 %i.gh, 2
  %i.gj = add nuw nsw i64 %i.gi, 4
  %i.gk = load ptr, ptr %i.bt, align 8, !tbaa !232
  %i.gl = tail call ptr @js_realloc_rt(ptr noundef %i.gk, ptr noundef nonnull %i.ce, i64 noundef %i.gj), !inline_history !144 ; 2 uses
  %.not.i59 = icmp eq ptr %i.gl, null
  br i1 %.not.i59, label %bb.aj, label %js_bigint_new_si.exit, !prof !192

bb.aj:                                            ; preds = %bb.ai
  %i.gm = load ptr, ptr %i.bt, align 8, !tbaa !232
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1256 ; 3 uses
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !233, !range !234, !noundef !235
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %js_bigint_new_si.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr %i.gn, align 8, !tbaa !233
  %i.gq = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !145 ; 0 uses
  store i8 0, ptr %i.gn, align 8, !tbaa !233
  br label %js_bigint_new_si.exit

js_bigint_new_si.exit:                            ; preds = %bb.y, %bb.ai, %bb.ak, %bb.aj, %.preheader86, %.preheader, %js_realloc.exit.thread, %bb.af, %bb.w, %bb.x, %bb.o, %js_arena_malloc.exit.thread, %bb.l, %._crit_edge90, %bb.m
  %.037 = phi ptr [ %i.ce, %._crit_edge90 ], [ null, %js_arena_malloc.exit.thread ], [ null, %js_realloc.exit.thread ], [ %i.al, %bb.m ], [ null, %bb.w ], [ %i.gl, %bb.ai ], [ null, %bb.l ], [ null, %bb.o ], [ null, %bb.x ], [ %i.fl, %bb.af ], [ %i.ce, %.preheader ], [ %i.ce, %.preheader86 ], [ %i.ce, %bb.aj ], [ %i.ce, %bb.ak ], [ %i.ce, %bb.y ]
  ret ptr %.037
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @js_string_rope_compare(i64 %0, i64 %1, i64 %2, i64 %3, i1 noundef zeroext %4) unnamed_addr #13 {
bb.a:
  %5 = alloca %struct.JSStringRopeIter, align 8   ; 8 uses
  %6 = alloca %struct.JSStringRopeIter, align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.a = and i64 %1, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967289             ; 2 uses
  %i.c = inttoptr i64 %0 to ptr                   ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = and i32 %i.e, 2147483647
  br label %string_rope_get_len.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.c, align 8, !tbaa !478
  br label %string_rope_get_len.exit

string_rope_get_len.exit:                         ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %i.h = and i64 %3, 4294967295
  %i.i = icmp eq i64 %i.h, 4294967289             ; 2 uses
  %i.j = inttoptr i64 %2 to ptr                   ; 4 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %string_rope_get_len.exit
  %i.k = load i64, ptr %i.j, align 8
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 2147483647
  br label %string_rope_get_len.exit60

bb.e:                                             ; preds = %string_rope_get_len.exit
  %i.n = load i32, ptr %i.j, align 8, !tbaa !478
  br label %string_rope_get_len.exit60

string_rope_get_len.exit60:                       ; preds = %bb.d, %bb.e
  %.0.i59 = phi i32 [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 3 uses
  %.not = icmp ne i32 %.0.i, %.0.i59
  %or.cond.not = select i1 %4, i1 %.not, i1 false
  br i1 %or.cond.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %string_rope_get_len.exit60
  %..i = tail call noundef i32 @llvm.umin.i32(i32 %.0.i, i32 %.0.i59) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 960 ; 7 uses
  store i64 %0, ptr %5, align 8, !tbaa !218
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !240
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 960 ; 7 uses
  store i64 %2, ptr %6, align 8, !tbaa !218
  %.sroa.2.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i61, align 8, !tbaa !240
  store i32 0, ptr %i.o, align 8, !tbaa !1794
  br i1 %i.b, label %string_rope_iter_next.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.016.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.c, %bb.f ] ; 3 uses
  %i.q = load i32, ptr %i.o, align 8, !tbaa !1794 ; 2 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 8, !tbaa !1794
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %5, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !282
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 8
  %.sroa.0.0.i = load ptr, ptr %i.v, align 8, !tbaa !218 ; 2 uses
  %.sroa.6.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 16
  %.sroa.6.0.i = load i64, ptr %.sroa.6.0.in.i, align 8, !tbaa !240
  %i.w = and i64 %.sroa.6.0.i, 4294967295
  %i.x = icmp eq i64 %i.w, 4294967289
  br i1 %i.x, label %string_rope_iter_next.exit, label %.lr.ph.i

string_rope_iter_next.exit:                       ; preds = %.lr.ph.i, %bb.f
  %.0.i62 = phi ptr [ %i.c, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i ]
  store i32 0, ptr %i.p, align 8, !tbaa !1794
  br i1 %i.i, label %string_rope_iter_next.exit72, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %string_rope_iter_next.exit, %.lr.ph.i66
  %.sroa.0.016.i67 = phi ptr [ %.sroa.0.0.i68, %.lr.ph.i66 ], [ %i.j, %string_rope_iter_next.exit ] ; 3 uses
  %i.y = load i32, ptr %i.p, align 8, !tbaa !1794 ; 2 uses
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.p, align 8, !tbaa !1794
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [16 x i8], ptr %6, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i67, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !282
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i67, i64 8
  %.sroa.0.0.i68 = load ptr, ptr %i.ad, align 8, !tbaa !218 ; 2 uses
  %.sroa.6.0.in.i69 = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i67, i64 16
  %.sroa.6.0.i70 = load i64, ptr %.sroa.6.0.in.i69, align 8, !tbaa !240
  %i.ae = and i64 %.sroa.6.0.i70, 4294967295
  %i.af = icmp eq i64 %i.ae, 4294967289
  br i1 %i.af, label %string_rope_iter_next.exit72, label %.lr.ph.i66

string_rope_iter_next.exit72:                     ; preds = %.lr.ph.i66, %string_rope_iter_next.exit
  %.0.i71 = phi ptr [ %i.j, %string_rope_iter_next.exit ], [ %.sroa.0.0.i68, %.lr.ph.i66 ]
  %.not54103 = icmp eq i32 %..i, 0
  br i1 %.not54103, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %string_rope_iter_next.exit72, %string_rope_iter_next.exit95
  %.0110 = phi ptr [ %.1, %string_rope_iter_next.exit95 ], [ %.0.i71, %string_rope_iter_next.exit72 ] ; 10 uses
  %.040109 = phi ptr [ %.141, %string_rope_iter_next.exit95 ], [ %.0.i62, %string_rope_iter_next.exit72 ] ; 9 uses
  %.043107 = phi i32 [ %.144, %string_rope_iter_next.exit95 ], [ 0, %string_rope_iter_next.exit72 ] ; 5 uses
  %.045105 = phi i32 [ %.146, %string_rope_iter_next.exit95 ], [ 0, %string_rope_iter_next.exit72 ] ; 5 uses
  %.047104 = phi i32 [ %i.di, %string_rope_iter_next.exit95 ], [ %..i, %string_rope_iter_next.exit72 ] ; 2 uses
  %i.ag = load i64, ptr %.040109, align 8         ; 3 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 2147483647
  %i.aj = sub nsw i32 %i.ai, %.045105
  %i.ak = load i64, ptr %.0110, align 8           ; 3 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 2147483647
  %i.an = sub nsw i32 %i.am, %.043107
  %..i73 = tail call noundef i32 @llvm.umin.i32(i32 %i.aj, i32 %i.an)
  %..i74 = tail call noundef i32 @llvm.umin.i32(i32 %..i73, i32 %.047104) ; 9 uses
  %i.ao = and i64 %i.ag, 2147483648
  %.not.i = icmp eq i64 %i.ao, 0
  %i.ap = and i64 %i.ak, 2147483648
  %.not24.i = icmp eq i64 %i.ap, 0                ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.s, !prof !325

bb.g:                                             ; preds = %.lr.ph
  br i1 %.not24.i, label %bb.h, label %bb.q, !prof !325

bb.h:                                             ; preds = %bb.g
  %i.aq = lshr i64 %i.ag, 60
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = and i32 %i.ar, 3
  switch i32 %i.as, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.040109, i64 24
  br label %str8.exit.i

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.040109, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !389
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %.040109, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !390
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  br label %str8.exit.i

bb.k:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.040109, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !239
  br label %str8.exit.i

default.unreachable:                              ; preds = %str8.exit.i, %bb.h
  unreachable

bb.l:                                             ; preds = %bb.h
  tail call void @abort() #50
  unreachable

str8.exit.i:                                      ; preds = %bb.k, %bb.j, %bb.i
  %.0.i.i.i = phi ptr [ %i.at, %bb.i ], [ %i.ba, %bb.j ], [ %i.bc, %bb.k ]
  %i.bd = zext nneg i32 %.045105 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.bd
  %i.bf = lshr i64 %i.ak, 60
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 3
  switch i32 %i.bh, label %default.unreachable [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
  ]

bb.m:                                             ; preds = %str8.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0110, i64 24
  br label %str8.exit27.i

bb.n:                                             ; preds = %str8.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0110, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !389
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.0110, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !390
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  br label %str8.exit27.i

bb.o:                                             ; preds = %str8.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.0110, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !239
  br label %str8.exit27.i

end_hunk_6
begin_hunk_7_@js_proxy_get_own_property_names:bb.a
  br label %js_get_length32.exit

bb.q:                                             ; preds = %bb.o
  %i.bg = icmp samesign ult i32 %i.bd, 1107
  br i1 %i.bg, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.bh = and i64 %.sroa.017.0.in.i.i, 4503599627370495
  %i.bi = or disjoint i64 %i.bh, 4503599627370496
  %i.bj = add nsw i32 %i.bd, -1043
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl i64 %i.bi, %i.bk
  %i.bm = lshr i64 %i.bl, 32                      ; 2 uses
  %i.bn = trunc nuw i64 %i.bm to i32              ; 2 uses
  %i.bo = icmp slt i64 %.sroa.017.0.in.i.i, 0
  %i.bp = icmp ne i64 %i.bm, 2147483648
  %or.cond.i.i = select i1 %i.bo, i1 %i.bp, i1 false
  %i.bq = sub nsw i32 0, %i.bn
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %i.bq, i32 %i.bn
  br label %js_get_length32.exit

bb.s:                                             ; preds = %.preheader.i
  %i.br = call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef nonnull %0, i64 %.sroa.017.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0) #51, !inline_history !153 ; 2 uses
  %i.bs = extractvalue { i64, i64 } %i.br, 1      ; 2 uses
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = icmp eq i64 %i.bt, 6
  br i1 %i.bu, label %js_get_length32.exit.thread, label %.preheader.i

js_get_length32.exit:                             ; preds = %bb.n, %bb.p, %bb.r
  %storemerge.i = phi i32 [ %spec.select.i.i, %bb.r ], [ %i.bf, %bb.p ], [ %.sroa.017.0.extract.trunc.i.i, %bb.n ]
  %i.bv = freeze i32 %storemerge.i                ; 7 uses
  %.not = icmp eq i32 %i.bv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %js_get_length32.exit
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  br label %bb.t

.preheader195:                                    ; preds = %bb.ah
  %.not342 = icmp eq i32 %i.bv, 1
  br i1 %.not342, label %._crit_edge, label %.lr.ph227.preheader

.lr.ph227.preheader:                              ; preds = %.preheader195
  %wide.trip.count276 = zext i32 %i.bv to i64
  br label %.lr.ph227

bb.t:                                             ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 7 uses
  %.0133223 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.ah ] ; 2 uses
  %.0138221 = phi ptr [ null, %.lr.ph ], [ %.2140, %bb.ah ] ; 5 uses
  %i.bx = call { i64, i64 } @JS_GetPropertyInt64(ptr noundef nonnull %0, i64 %i.as, i64 %i.at, i64 noundef %indvars.iv), !inline_history !481 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 0      ; 6 uses
  %i.bz = extractvalue { i64, i64 } %i.bx, 1      ; 6 uses
  %i.ca = and i64 %i.bz, 4294967295               ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 6
  br i1 %i.cb, label %js_get_length32.exit.thread.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = trunc i64 %i.bz to i32                  ; 3 uses
  %i.cd = add i32 %i.cc, 7
  %i.ce = icmp ult i32 %i.cd, 2
  br i1 %i.ce, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.u
  %i.cf = call fastcc i32 @JS_ValueToAtomInternal(ptr noundef nonnull %0, i64 %i.by, i64 %i.bz, i32 noundef 0), !inline_history !516
  br label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.cg = icmp eq i64 %i.ca, 4294967288
  br i1 %i.cg, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = trunc nuw i64 %indvars.iv to i32
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !232
  %i.cj = icmp ugt i32 %i.cc, -10
  br i1 %i.cj, label %bb.x, label %JS_FreeValue.exit

bb.x:                                             ; preds = %bb.w
  %i.ck = inttoptr i64 %i.by to ptr
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !191 ; 2 uses
  %i.cn = add nsw i32 %i.cm, -1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !191
  %i.co = icmp slt i32 %i.cm, 2
  br i1 %i.co, label %bb.y, label %JS_FreeValue.exit

bb.y:                                             ; preds = %bb.x
  call fastcc void @js_free_value_rt(ptr noundef %i.ci, i64 %i.by, i64 %i.bz), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.w, %bb.x, %bb.y
  %i.cp = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.326) ; 0 uses
  br label %js_get_length32.exit.thread

bb.z:                                             ; preds = %bb.v
  %i.cq = call fastcc i32 @JS_ValueToAtomInternal(ptr noundef nonnull %0, i64 %i.by, i64 %i.bz, i32 noundef 0), !inline_history !516 ; 2 uses
  %i.cr = icmp ugt i32 %i.cc, -10
  br i1 %i.cr, label %bb.aa, label %JS_FreeValue.exit161

bb.aa:                                            ; preds = %.thread, %bb.z
  %i.cs = phi i32 [ %i.cf, %.thread ], [ %i.cq, %bb.z ] ; 2 uses
  %i.ct = load ptr, ptr %i.j, align 8, !tbaa !232
  %i.cu = inttoptr i64 %i.by to ptr
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !191 ; 2 uses
  %i.cx = add nsw i32 %i.cw, -1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !191
  %i.cy = icmp slt i32 %i.cw, 2
  br i1 %i.cy, label %bb.ab, label %JS_FreeValue.exit161

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @js_free_value_rt(ptr noundef %i.ct, i64 %i.by, i64 %i.bz), !inline_history !291
  br label %JS_FreeValue.exit161

JS_FreeValue.exit161:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.cz = phi i32 [ %i.cq, %bb.z ], [ %i.cs, %bb.aa ], [ %i.cs, %bb.ab ] ; 3 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %js_get_length32.exit.thread.loopexit, label %bb.ac

bb.ac:                                            ; preds = %JS_FreeValue.exit161
  %i.db = zext i32 %.0133223 to i64               ; 3 uses
  %.not157 = icmp samesign ult i64 %indvars.iv, %i.db
  br i1 %.not157, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dc = lshr i64 %i.db, 1
  %i.dd = add nuw nsw i64 %i.dc, %i.db
  %i.de = call i64 @llvm.umax.i64(i64 %i.dd, i64 8)
  %i.df = call i64 @llvm.umin.i64(i64 %i.de, i64 %i.bw) ; 2 uses
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = load ptr, ptr %i.j, align 8, !tbaa !232
  %i.di = call ptr @js_realloc_rt(ptr noundef %i.dh, ptr noundef %.0138221, i64 noundef %i.dg), !inline_history !402 ; 2 uses
  %.not.i163 = icmp eq ptr %i.di, null
  br i1 %.not.i163, label %bb.ae, label %JS_ThrowOutOfMemory.exit, !prof !192

bb.ae:                                            ; preds = %bb.ad
  %i.dj = trunc nuw i64 %indvars.iv to i32
  %i.dk = load ptr, ptr %i.j, align 8, !tbaa !232
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1256 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !233, !range !234, !noundef !235
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr %i.dl, align 8, !tbaa !233
  %i.do = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !795 ; 0 uses
  store i8 0, ptr %i.dl, align 8, !tbaa !233
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @JS_FreeAtom(ptr noundef nonnull %0, i32 noundef %i.cz)
  br label %js_get_length32.exit.thread

JS_ThrowOutOfMemory.exit:                         ; preds = %bb.ad
  %i.dp = trunc nuw i64 %i.df to i32
  br label %bb.ah

bb.ah:                                            ; preds = %JS_ThrowOutOfMemory.exit, %bb.ac
  %.2140 = phi ptr [ %i.di, %JS_ThrowOutOfMemory.exit ], [ %.0138221, %bb.ac ] ; 7 uses
  %.2 = phi i32 [ %i.dp, %JS_ThrowOutOfMemory.exit ], [ %.0133223, %bb.ac ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.2140, i64 %indvars.iv ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 %i.cz, ptr %i.dr, align 4, !tbaa !490
  store i8 0, ptr %i.dq, align 4, !tbaa !491
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bw
  br i1 %exitcond.not, label %.preheader195, label %bb.t, !llvm.loop !1924

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %find_prop_key.exit.thread
  %indvars.iv273 = phi i64 [ 1, %.lr.ph227.preheader ], [ %indvars.iv.next274, %find_prop_key.exit.thread ] ; 4 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.2140, i64 %indvars.iv273
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !490
  %i.dv = trunc nuw i64 %indvars.iv273 to i32
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.i, label %find_prop_key.exit.thread

.lr.ph.i:                                         ; preds = %.lr.ph227, %bb.ai
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ai ], [ 0, %.lr.ph227 ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.2140, i64 %indvars.iv.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !490
  %i.ea = icmp eq i32 %i.dz, %i.du
  br i1 %i.ea, label %find_prop_key.exit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv273
  br i1 %exitcond.not.i, label %find_prop_key.exit.thread, label %.lr.ph.i, !llvm.loop !1925

find_prop_key.exit:                               ; preds = %.lr.ph.i
  %i.eb = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.327) ; 0 uses
  br label %js_get_length32.exit.thread

find_prop_key.exit.thread:                        ; preds = %bb.ai, %.lr.ph227
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge, label %.lr.ph227, !llvm.loop !1926

._crit_edge:                                      ; preds = %find_prop_key.exit.thread, %bb.q, %js_get_length32.exit, %.preheader195
  %.0132.lcssa310 = phi i32 [ 0, %bb.q ], [ %i.bv, %.preheader195 ], [ 0, %js_get_length32.exit ], [ %i.bv, %find_prop_key.exit.thread ] ; 11 uses
  %.0138.lcssa308 = phi ptr [ null, %bb.q ], [ %.2140, %.preheader195 ], [ null, %js_get_length32.exit ], [ %.2140, %find_prop_key.exit.thread ] ; 9 uses
  %i.ec = load i64, ptr %.0.i.i, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = call i32 @JS_IsExtensible(ptr noundef nonnull %0, i64 %i.ec, i64 %i.ee) ; 3 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %js_get_length32.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.eh = load i8, ptr %i.q, align 1, !tbaa !473
  %.not152 = icmp eq i8 %i.eh, 0
  br i1 %.not152, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.110), !inline_history !112 ; 0 uses
  br label %js_get_length32.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.ej = load ptr, ptr %.0.i.i, align 8, !tbaa !218
  %i.ek = call fastcc i32 @JS_GetOwnPropertyNamesInternal(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.ej, i32 noundef 3)
  %.not153 = icmp eq i32 %i.ek, 0
  br i1 %.not153, label %.preheader192, label %js_get_length32.exit.thread

.preheader192:                                    ; preds = %bb.al
  %i.el = load i32, ptr %i.a, align 4, !tbaa !191 ; 3 uses
  %.not243 = icmp eq i32 %i.el, 0
  br i1 %.not243, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %.preheader192
  %i.em = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.en = icmp ne i32 %i.ef, 0                    ; 3 uses
  %i.eo = icmp sgt i32 %.0132.lcssa310, 0
  %wide.trip.count.i166 = zext nneg i32 %.0132.lcssa310 to i64
  %wide.trip.count286 = zext i32 %i.el to i64     ; 2 uses
  br i1 %i.eo, label %.lr.ph229.split.us, label %.lr.ph229.split

.lr.ph229.split.us:                               ; preds = %.lr.ph229, %bb.aq
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %bb.aq ], [ 0, %.lr.ph229 ] ; 2 uses
  %i.ep = load i8, ptr %i.q, align 1, !tbaa !473
  %.not155.us = icmp eq i8 %i.ep, 0
  br i1 %.not155.us, label %bb.am, label %.split.us

bb.am:                                            ; preds = %.lr.ph229.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.eq = load ptr, ptr %.0.i.i, align 8, !tbaa !218
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv283
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !490
  %i.eu = call fastcc i32 @JS_GetOwnPropertyInternal2(ptr noundef nonnull %0, ptr noundef null, ptr noundef %i.eq, i32 noundef %i.et, ptr noundef nonnull %i.c), !inline_history !50 ; 2 uses
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %.loopexit193, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not156.us = icmp eq i32 %i.eu, 0
  %i.ew = load i32, ptr %i.c, align 4
  %i.ex = trunc i32 %i.ew to i1
  %or.cond.us = and i1 %i.en, %i.ex
  %or.cond239 = select i1 %.not156.us, i1 true, i1 %or.cond.us
  br i1 %or.cond239, label %bb.aq, label %.lr.ph.preheader.i165.us

.lr.ph.preheader.i165.us:                         ; preds = %bb.an
  %i.ey = load i32, ptr %i.es, align 4, !tbaa !490
  br label %.lr.ph.i167.us

.lr.ph.i167.us:                                   ; preds = %bb.ao, %.lr.ph.preheader.i165.us
  %indvars.iv.i168.us = phi i64 [ 0, %.lr.ph.preheader.i165.us ], [ %indvars.iv.next.i169.us, %bb.ao ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.0138.lcssa308, i64 %indvars.iv.i168.us ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !490
  %i.fc = icmp eq i32 %i.fb, %i.ey
  br i1 %i.fc, label %find_prop_key.exit172.us, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i167.us
  %indvars.iv.next.i169.us = add nuw nsw i64 %indvars.iv.i168.us, 1 ; 2 uses
  %exitcond.not.i170.us = icmp eq i64 %indvars.iv.next.i169.us, %wide.trip.count.i166
  br i1 %exitcond.not.i170.us, label %find_prop_key.exit172.thread, label %.lr.ph.i167.us, !llvm.loop !1925

find_prop_key.exit172.us:                         ; preds = %.lr.ph.i167.us
  br i1 %i.en, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %find_prop_key.exit172.us
  store i8 1, ptr %i.ez, align 4, !tbaa !491
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %find_prop_key.exit172.us, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge230, label %.lr.ph229.split.us, !llvm.loop !1927

.lr.ph229.split:                                  ; preds = %.lr.ph229, %bb.at
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %bb.at ], [ 0, %.lr.ph229 ] ; 2 uses
  %i.fd = load i8, ptr %i.q, align 1, !tbaa !473
  %.not155 = icmp eq i8 %i.fd, 0
  br i1 %.not155, label %bb.ar, label %.split.us

.split.us:                                        ; preds = %.lr.ph229.split, %.lr.ph229.split.us
  %i.fe = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.110), !inline_history !112 ; 0 uses
  br label %js_get_length32.exit.thread

bb.ar:                                            ; preds = %.lr.ph229.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.ff = load ptr, ptr %.0.i.i, align 8, !tbaa !218
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv278
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !490
  %i.fj = call fastcc i32 @JS_GetOwnPropertyInternal2(ptr noundef nonnull %0, ptr noundef null, ptr noundef %i.ff, i32 noundef %i.fi, ptr noundef nonnull %i.c), !inline_history !50 ; 2 uses
  %i.fk = icmp slt i32 %i.fj, 0
  br i1 %i.fk, label %.loopexit193, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not156 = icmp eq i32 %i.fj, 0
  %i.fl = load i32, ptr %i.c, align 4
  %i.fm = trunc i32 %i.fl to i1
  %or.cond = and i1 %i.en, %i.fm
  %or.cond241 = select i1 %.not156, i1 true, i1 %or.cond
  br i1 %or.cond241, label %bb.at, label %find_prop_key.exit172.thread

find_prop_key.exit172.thread:                     ; preds = %bb.as, %bb.ao
  %i.fn = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.328) ; 0 uses
  br label %.loopexit193

.loopexit193:                                     ; preds = %bb.ar, %bb.am, %find_prop_key.exit172.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  br label %js_get_length32.exit.thread

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count286
  br i1 %exitcond282.not, label %._crit_edge230, label %.lr.ph229.split, !llvm.loop !1927

._crit_edge230:                                   ; preds = %bb.at, %bb.aq, %.preheader192
  %.not154 = icmp eq i32 %i.ef, 0
  %i.fo = icmp ne i32 %.0132.lcssa310, 0
  %or.cond242 = and i1 %.not154, %i.fo
  br i1 %or.cond242, label %.lr.ph237.preheader, label %.loopexit

.lr.ph237.preheader:                              ; preds = %._crit_edge230
  %wide.trip.count291 = zext i32 %.0132.lcssa310 to i64
  br label %.lr.ph237

bb.au:                                            ; preds = %.lr.ph237
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %.loopexit, label %.lr.ph237, !llvm.loop !1928

.lr.ph237:                                        ; preds = %.lr.ph237.preheader, %bb.au
  %indvars.iv288 = phi i64 [ 0, %.lr.ph237.preheader ], [ %indvars.iv.next289, %bb.au ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.0138.lcssa308, i64 %indvars.iv288
  %i.fq = load i8, ptr %i.fp, align 4, !tbaa !491, !range !234, !noundef !235
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.au, label %bb.av

bb.av:                                            ; preds = %.lr.ph237
  %i.fs = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.329) ; 0 uses
  br label %js_get_length32.exit.thread

.loopexit:                                        ; preds = %bb.au, %._crit_edge230
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !487
  call fastcc void @js_free_prop_enum(ptr noundef nonnull %0, ptr noundef %i.ft, i32 noundef %i.el)
  %i.fu = load ptr, ptr %i.j, align 8, !tbaa !232
  %i.fv = trunc i64 %i.at to i32
  %i.fw = icmp ugt i32 %i.fv, -10
  br i1 %i.fw, label %bb.aw, label %JS_FreeValue.exit173

bb.aw:                                            ; preds = %.loopexit
  %i.fx = inttoptr i64 %i.as to ptr
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -4 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !191 ; 2 uses
  %i.ga = add nsw i32 %i.fz, -1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !191
  %i.gb = icmp slt i32 %i.fz, 2
  br i1 %i.gb, label %bb.ax, label %JS_FreeValue.exit173

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @js_free_value_rt(ptr noundef %i.fu, i64 %i.as, i64 %i.at), !inline_history !291
  br label %JS_FreeValue.exit173

JS_FreeValue.exit173:                             ; preds = %.loopexit, %bb.aw, %bb.ax
  store ptr %.0138.lcssa308, ptr %1, align 8, !tbaa !487
  store i32 %.0132.lcssa310, ptr %2, align 4, !tbaa !191
  br label %JS_FreeValue.exit174

js_get_length32.exit.thread.loopexit:             ; preds = %bb.t, %JS_FreeValue.exit161
  %i.gc = trunc nuw i64 %indvars.iv to i32
  br label %js_get_length32.exit.thread

js_get_length32.exit.thread:                      ; preds = %bb.s, %js_get_length32.exit.thread.loopexit, %bb.ag, %bb.m, %.loopexit193, %bb.al, %._crit_edge, %bb.av, %.split.us, %bb.ak, %find_prop_key.exit, %JS_FreeValue.exit
  %.3141 = phi ptr [ %.0138.lcssa308, %bb.av ], [ null, %bb.m ], [ %.0138221, %bb.ag ], [ %.0138221, %js_get_length32.exit.thread.loopexit ], [ %.0138221, %JS_FreeValue.exit ], [ %.2140, %find_prop_key.exit ], [ %.0138.lcssa308, %._crit_edge ], [ %.0138.lcssa308, %bb.ak ], [ %.0138.lcssa308, %bb.al ], [ %.0138.lcssa308, %.split.us ], [ %.0138.lcssa308, %.loopexit193 ], [ null, %bb.s ]
  %.1 = phi i32 [ %.0132.lcssa310, %bb.av ], [ 0, %bb.m ], [ %i.dj, %bb.ag ], [ %i.gc, %js_get_length32.exit.thread.loopexit ], [ %i.ch, %JS_FreeValue.exit ], [ %i.bv, %find_prop_key.exit ], [ %.0132.lcssa310, %._crit_edge ], [ %.0132.lcssa310, %bb.ak ], [ %.0132.lcssa310, %bb.al ], [ %.0132.lcssa310, %.split.us ], [ %.0132.lcssa310, %.loopexit193 ], [ 0, %bb.s ]
  %i.gd = load ptr, ptr %i.b, align 8, !tbaa !487
  %i.ge = load i32, ptr %i.a, align 4, !tbaa !191
  call fastcc void @js_free_prop_enum(ptr noundef nonnull %0, ptr noundef %i.gd, i32 noundef %i.ge)
  call fastcc void @js_free_prop_enum(ptr noundef nonnull %0, ptr noundef %.3141, i32 noundef %.1)
  %i.gf = load ptr, ptr %i.j, align 8, !tbaa !232
  %i.gg = trunc i64 %i.at to i32
  %i.gh = icmp ugt i32 %i.gg, -10
  br i1 %i.gh, label %bb.ay, label %JS_FreeValue.exit174

bb.ay:                                            ; preds = %js_get_length32.exit.thread
  %i.gi = inttoptr i64 %i.as to ptr
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -4 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !191 ; 2 uses
  %i.gl = add nsw i32 %i.gk, -1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !191
  %i.gm = icmp slt i32 %i.gk, 2
  br i1 %i.gm, label %bb.az, label %JS_FreeValue.exit174

bb.az:                                            ; preds = %bb.ay
  call fastcc void @js_free_value_rt(ptr noundef %i.gf, i64 %i.as, i64 %i.at), !inline_history !291
  br label %JS_FreeValue.exit174

JS_FreeValue.exit174:                             ; preds = %bb.g, %bb.f, %bb.d, %bb.az, %bb.ay, %js_get_length32.exit.thread, %JS_CallFree.exit, %JS_FreeValue.exit173, %bb.i
  %.0 = phi i32 [ %i.ag, %bb.i ], [ -1, %bb.az ], [ 0, %JS_FreeValue.exit173 ], [ -1, %JS_CallFree.exit ], [ -1, %js_get_length32.exit.thread ], [ -1, %bb.ay ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @js_proxy_delete_property(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3) #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %4 = alloca [2 x %struct.JSValue], align 16     ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.c = and i64 %2, 4294967295
  %.not.i.i = icmp eq i64 %i.c, 4294967295
  br i1 %.not.i.i, label %bb.b, label %JS_GetOpaque.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.f = load i16, ptr %i.e, align 2, !tbaa !276
  %.not3.i.i = icmp eq i16 %i.f, 51
  br i1 %.not3.i.i, label %bb.c, label %JS_GetOpaque.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218
  br label %JS_GetOpaque.exit.i

JS_GetOpaque.exit.i:                              ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.h, %bb.c ], [ null, %bb.a ], [ null, %bb.b ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.k = getelementptr i8, ptr %i.j, i64 1232
  %.val.i = load i64, ptr %i.k, align 8, !tbaa !263
  %i.l = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = icmp ugt i64 %.val.i, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %JS_GetOpaque.exit.i
  %i.o = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.92), !inline_history !44 ; 0 uses
  br label %JS_DeleteProperty.exit

bb.e:                                             ; preds = %JS_GetOpaque.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 33
  %i.q = load i8, ptr %i.p, align 1, !tbaa !473
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.110), !inline_history !45 ; 0 uses
  br label %JS_DeleteProperty.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %i.t, i64 %i.v, i32 noundef 108, i64 %i.t, i64 %i.v, i1 noundef zeroext false), !inline_history !46 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 1        ; 2 uses
  %i.y = and i64 %i.x, 4294967295                 ; 2 uses
  %i.z = icmp eq i64 %i.y, 6
  br i1 %i.z, label %JS_DeleteProperty.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = extractvalue { i64, i64 } %i.w, 0
  %i.ab = icmp eq i64 %i.y, 2                     ; 2 uses
  %.sroa.8.0.i = select i1 %i.ab, i64 3, i64 %i.x ; 6 uses
  %.sroa.05.sroa.0.0.insert.insert13.i = select i1 %i.ab, i64 0, i64 %i.aa ; 5 uses
  %i.ac = and i64 %.sroa.8.0.i, 4294967295
  %i.ad = icmp eq i64 %i.ac, 3
  br i1 %i.ad, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ae = load i64, ptr %.0.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = call { i64, i64 } @JS_ToObject(ptr noundef nonnull %0, i64 %i.ae, i64 %i.ag) #51, !inline_history !530 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ah, 1      ; 3 uses
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = icmp eq i64 %i.ak, 6
  br i1 %i.al, label %JS_DeleteProperty.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.an = call fastcc i32 @delete_property(ptr noundef nonnull %0, ptr noundef %i.am, i32 noundef %3) #51, !inline_history !530 ; 3 uses
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.ap = trunc i64 %i.aj to i32
  %i.aq = icmp ugt i32 %i.ap, -10
  br i1 %i.aq, label %bb.k, label %JS_DeleteProperty.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 -4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !191 ; 2 uses
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !191
  %i.au = icmp slt i32 %i.as, 2
  br i1 %i.au, label %bb.l, label %JS_DeleteProperty.exit

bb.l:                                             ; preds = %bb.k
  call fastcc void @js_free_value_rt(ptr noundef %i.ao, i64 %i.ai, i64 %i.aj) #51, !inline_history !531
  br label %JS_DeleteProperty.exit

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.av = icmp slt i32 %3, 0
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = and i32 %3, 2147483647
  %i.ax = call i64 @u32toa(ptr noundef nonnull %i.a, i32 noundef %i.aw) #49, !inline_history !787
  %i.ay = trunc i64 %i.ax to i32
  %i.az = call fastcc { i64, i64 } @js_new_string8_len(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %i.ay), !inline_history !787
  br label %JS_AtomToValue.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1104
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !297
  %i.bd = zext nneg i32 %3 to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !299 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %.mask.i.i = and i64 %i.bg, -4611686018427387904
  %i.bh = icmp eq i64 %.mask.i.i, 4611686018427387904
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !191
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !191
  %.fca.0.insert.i.i.i = insertvalue { i64, i64 } poison, i64 %i.bi, 0 ; 2 uses
  br i1 %i.bh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.fca.1.insert.i.i2.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.i, i64 -8, 1
  br label %JS_AtomToValue.exit

bb.q:                                             ; preds = %bb.o
  %.fca.1.insert.i.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.i, i64 -7, 1
  br label %JS_AtomToValue.exit

JS_AtomToValue.exit:                              ; preds = %bb.n, %bb.p, %bb.q
  %.pn17.i.i = phi { i64, i64 } [ %i.az, %bb.n ], [ %.fca.1.insert.i.i.i, %bb.q ], [ %.fca.1.insert.i.i2.i, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.bm = extractvalue { i64, i64 } %.pn17.i.i, 0 ; 3 uses
  %i.bn = extractvalue { i64, i64 } %.pn17.i.i, 1 ; 4 uses
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = icmp eq i64 %i.bo, 6
  br i1 %i.bp, label %bb.r, label %bb.u

bb.r:                                             ; preds = %JS_AtomToValue.exit
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.br = trunc i64 %.sroa.8.0.i to i32
  %i.bs = icmp ugt i32 %i.br, -10
  br i1 %i.bs, label %bb.s, label %JS_DeleteProperty.exit

bb.s:                                             ; preds = %bb.r
  %i.bt = inttoptr i64 %.sroa.05.sroa.0.0.insert.insert13.i to ptr
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !191 ; 2 uses
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !191
  %i.bx = icmp slt i32 %i.bv, 2
  br i1 %i.bx, label %bb.t, label %JS_DeleteProperty.exit

bb.t:                                             ; preds = %bb.s
  call fastcc void @js_free_value_rt(ptr noundef %i.bq, i64 %.sroa.05.sroa.0.0.insert.insert13.i, i64 %.sroa.8.0.i), !inline_history !291
  br label %JS_DeleteProperty.exit

bb.u:                                             ; preds = %JS_AtomToValue.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false), !tbaa.struct !282
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.bm, ptr %i.by, align 16, !tbaa !218
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.bn, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240
end_hunk_7
begin_hunk_8_@js_async_dispose_step:bb.a
bb.ag:                                            ; preds = %JS_FreeValue.exit92
  %i.eg = inttoptr i64 %i.dc to ptr
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !191 ; 2 uses
  %i.ej = add nsw i32 %i.ei, -1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !191
  %i.ek = icmp slt i32 %i.ei, 2
  br i1 %i.ek, label %bb.ah, label %JS_FreeValue.exit93

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @js_free_value_rt(ptr noundef %i.ed, i64 %i.dc, i64 %i.dd), !inline_history !291
  %.pre96 = load ptr, ptr %i.cn, align 8, !tbaa !232
  br label %JS_FreeValue.exit93

JS_FreeValue.exit93:                              ; preds = %JS_FreeValue.exit92, %bb.ag, %bb.ah
  %i.el = phi ptr [ %i.ed, %JS_FreeValue.exit92 ], [ %i.ed, %bb.ag ], [ %.pre96, %bb.ah ]
  %i.em = trunc i64 %i.ck to i32
  %i.en = icmp ugt i32 %i.em, -10
  br i1 %i.en, label %bb.ai, label %JS_FreeValue.exit94

bb.ai:                                            ; preds = %JS_FreeValue.exit93
  %i.eo = inttoptr i64 %i.cj to ptr
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -4 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !191 ; 2 uses
  %i.er = add nsw i32 %i.eq, -1
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !191
  %i.es = icmp slt i32 %i.eq, 2
  br i1 %i.es, label %bb.aj, label %JS_FreeValue.exit94

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @js_free_value_rt(ptr noundef %i.el, i64 %i.cj, i64 %i.ck), !inline_history !291
  br label %JS_FreeValue.exit94

JS_FreeValue.exit94:                              ; preds = %JS_FreeValue.exit93, %bb.ai, %bb.aj
  %.sroa.074.sroa.9.0.extract.shift85 = and i64 %i.dt, -4294967296
  br label %bb.ak

bb.ak:                                            ; preds = %JS_FreeValue.exit91, %JS_FreeValue.exit94
  %.sroa.12.2 = phi i64 [ %i.du, %JS_FreeValue.exit94 ], [ 6, %JS_FreeValue.exit91 ]
  %.sroa.074.sroa.0.2 = phi i64 [ %i.dt, %JS_FreeValue.exit94 ], [ 0, %JS_FreeValue.exit91 ]
  %.sroa.074.sroa.9.2 = phi i64 [ %.sroa.074.sroa.9.0.extract.shift85, %JS_FreeValue.exit94 ], [ 0, %JS_FreeValue.exit91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  br label %bb.al

bb.al:                                            ; preds = %JS_Throw.exit90, %JS_FreeValue.exit, %JS_Throw.exit89, %bb.b, %bb.ak, %bb.w, %JS_Throw.exit
  %.sroa.12.3 = phi i64 [ 6, %JS_Throw.exit ], [ %i.aj, %bb.w ], [ 3, %bb.b ], [ %.sroa.12.2, %bb.ak ], [ 6, %JS_Throw.exit89 ], [ 6, %JS_FreeValue.exit ], [ 6, %JS_Throw.exit90 ]
  %.sroa.074.sroa.0.3 = phi i64 [ 0, %JS_Throw.exit ], [ %i.ai, %bb.w ], [ 0, %bb.b ], [ %.sroa.074.sroa.0.2, %bb.ak ], [ 0, %JS_Throw.exit89 ], [ 0, %JS_FreeValue.exit ], [ 0, %JS_Throw.exit90 ]
  %.sroa.074.sroa.9.3 = phi i64 [ 0, %JS_Throw.exit ], [ %.sroa.074.sroa.9.0.extract.shift87, %bb.w ], [ 0, %bb.b ], [ %.sroa.074.sroa.9.2, %bb.ak ], [ 0, %JS_Throw.exit89 ], [ 0, %JS_FreeValue.exit ], [ 0, %JS_Throw.exit90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  %.sroa.074.sroa.0.0.insert.ext = and i64 %.sroa.074.sroa.0.3, 4294967295
  %.sroa.074.sroa.0.0.insert.insert = or i64 %.sroa.074.sroa.9.3, %.sroa.074.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.074.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.12.3, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal noundef { i64, i64 } @js_async_dispose_rethrow(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #2 {
bb.a:
  %i.a = load i64, ptr %6, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp ugt i32 %i.d, -10                   ; 2 uses
  br i1 %i.e, label %bb.b, label %js_dup.exit

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !191
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.a, %bb.b
  %i.j = icmp eq i32 %5, 0
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %js_dup.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !232  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1240 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1248 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp ugt i32 %i.q, -10
  br i1 %i.r, label %bb.d, label %JS_Throw.exit

bb.d:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !191  ; 2 uses
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !191
  %i.w = icmp slt i32 %i.u, 2
  br i1 %i.w, label %bb.e, label %JS_Throw.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @js_free_value_rt(ptr noundef nonnull %i.l, i64 %i.n, i64 %i.p), !inline_history !694
  br label %JS_Throw.exit

JS_Throw.exit:                                    ; preds = %bb.c, %bb.d, %bb.e
  store i64 %i.a, ptr %i.m, align 8, !tbaa !218
  store i64 %i.c, ptr %i.o, align 8, !tbaa !240
  br label %bb.l

bb.f:                                             ; preds = %js_dup.exit
  %i.x = load i64, ptr %4, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = tail call fastcc { i64, i64 } @js_new_suppressed_error(ptr noundef %0, i64 %i.x, i64 %i.z, i64 %i.a, i64 %i.c) ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !232
  br i1 %i.e, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %bb.f
  %i.af = inttoptr i64 %i.a to ptr
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !191 ; 2 uses
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !191
  %i.aj = icmp slt i32 %i.ah, 2
  br i1 %i.aj, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ae, i64 %i.a, i64 %i.c), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  %i.ak = and i64 %i.ac, 4294967295
  %i.al = icmp eq i64 %i.ak, 6
  br i1 %i.al, label %bb.l, label %bb.i

bb.i:                                             ; preds = %JS_FreeValue.exit
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !232 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1240 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 1248 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = icmp ugt i32 %i.ar, -10
  br i1 %i.as, label %bb.j, label %JS_Throw.exit19

bb.j:                                             ; preds = %bb.i
  %i.at = inttoptr i64 %i.ao to ptr
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !191 ; 2 uses
  %i.aw = add nsw i32 %i.av, -1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !191
  %i.ax = icmp slt i32 %i.av, 2
  br i1 %i.ax, label %bb.k, label %JS_Throw.exit19

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @js_free_value_rt(ptr noundef nonnull %i.am, i64 %i.ao, i64 %i.aq), !inline_history !694
  br label %JS_Throw.exit19

JS_Throw.exit19:                                  ; preds = %bb.i, %bb.j, %bb.k
  store i64 %i.ab, ptr %i.an, align 8, !tbaa !218
  store i64 %i.ac, ptr %i.ap, align 8, !tbaa !240
  br label %bb.l

bb.l:                                             ; preds = %JS_Throw.exit19, %JS_FreeValue.exit, %JS_Throw.exit
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #18

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_Date_parse(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 20 uses
  %i.b = alloca [3 x i32], align 4                ; 14 uses
  %i.c = alloca i32, align 4                      ; 14 uses
  %i.d = alloca [9 x i32], align 16               ; 19 uses
  %i.e = alloca [9 x double], align 16            ; 8 uses
  %i.f = alloca [128 x i8], align 16              ; 102 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #49
  %i.g = load i64, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.g, i64 %i.i, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 3 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp eq i64 %i.m, 6
  br i1 %i.n, label %JS_FreeValue.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = inttoptr i64 %i.k to ptr                 ; 17 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 2147483647                 ; 8 uses
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %i.r, i32 127) ; 14 uses
  %.not135 = icmp eq i32 %i.r, 0
  br i1 %.not135, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.s = and i64 %i.p, 2147483648
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = lshr i64 %i.p, 60
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 3                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 24       ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  switch i32 %i.v, label %default.unreachable [
    i32 3, label %.split.us
    i32 0, label %._crit_edge.sink.split
    i32 1, label %.lr.ph.split.us.split.split.us111
    i32 2, label %.lr.ph.split.us.split.split
  ]

.lr.ph.split.us.split.split.us111:                ; preds = %.lr.ph.split.us
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !389
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !390
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  br label %._crit_edge.sink.split

default.unreachable:                              ; preds = %.lr.ph.split, %.lr.ph.split.us
  unreachable

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !239
  br label %._crit_edge.sink.split

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i32 %i.v, label %default.unreachable [
    i32 3, label %bb.c
    i32 0, label %iter.check409
    i32 1, label %iter.check383
    i32 2, label %iter.check
  ]

iter.check409:                                    ; preds = %.lr.ph.split
  %wide.trip.count208 = zext nneg i32 %invariant.umin to i64 ; 6 uses
  %min.iters.check396 = icmp samesign ult i32 %i.r, 4
  br i1 %min.iters.check396, label %str16.exit.i.us.preheader, label %vector.main.loop.iter.check397

vector.main.loop.iter.check397:                   ; preds = %iter.check409
  %min.iters.check398 = icmp samesign ult i32 %i.r, 16
  br i1 %min.iters.check398, label %vec.epilog.ph413, label %vector.ph399

vector.ph399:                                     ; preds = %vector.main.loop.iter.check397
  %i.ae = and i64 %wide.trip.count208, 12
  %n.vec400 = and i64 %wide.trip.count208, 112    ; 9 uses
  %i.af = getelementptr i8, ptr %i.o, i64 40
  %wide.load403 = load <8 x i16>, ptr %i.w, align 8, !tbaa !221 ; 3 uses
  %wide.load404 = load <8 x i16>, ptr %i.af, align 8, !tbaa !221 ; 3 uses
  %i.ag = trunc <8 x i16> %wide.load403 to <8 x i8>
  %i.ah = trunc <8 x i16> %wide.load404 to <8 x i8>
  %i.ai = icmp ugt <8 x i16> %wide.load403, splat (i16 255)
  %i.aj = icmp ugt <8 x i16> %wide.load404, splat (i16 255)
  %i.ak = icmp eq <8 x i16> %wide.load403, splat (i16 8722)
  %i.al = icmp eq <8 x i16> %wide.load404, splat (i16 8722)
  %i.am = select <8 x i1> %i.ak, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.an = select <8 x i1> %i.al, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.ao = select <8 x i1> %i.ai, <8 x i8> %i.am, <8 x i8> %i.ag
  %i.ap = select <8 x i1> %i.aj, <8 x i8> %i.an, <8 x i8> %i.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <8 x i8> %i.ao, ptr %i.f, align 16, !tbaa !218
  store <8 x i8> %i.ap, ptr %i.aq, align 8, !tbaa !218
  %i.ar = icmp eq i64 %n.vec400, 16
  br i1 %i.ar, label %middle.block406, label %vector.body401.1

vector.body401.1:                                 ; preds = %vector.ph399
  %i.as = getelementptr i8, ptr %i.o, i64 56
  %i.at = getelementptr i8, ptr %i.o, i64 72
  %wide.load403.1 = load <8 x i16>, ptr %i.as, align 8, !tbaa !221 ; 3 uses
  %wide.load404.1 = load <8 x i16>, ptr %i.at, align 8, !tbaa !221 ; 3 uses
  %i.au = trunc <8 x i16> %wide.load403.1 to <8 x i8>
  %i.av = trunc <8 x i16> %wide.load404.1 to <8 x i8>
  %i.aw = icmp ugt <8 x i16> %wide.load403.1, splat (i16 255)
  %i.ax = icmp ugt <8 x i16> %wide.load404.1, splat (i16 255)
  %i.ay = icmp eq <8 x i16> %wide.load403.1, splat (i16 8722)
  %i.az = icmp eq <8 x i16> %wide.load404.1, splat (i16 8722)
  %i.ba = select <8 x i1> %i.ay, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.bb = select <8 x i1> %i.az, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.bc = select <8 x i1> %i.aw, <8 x i8> %i.ba, <8 x i8> %i.au
  %i.bd = select <8 x i1> %i.ax, <8 x i8> %i.bb, <8 x i8> %i.av
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store <8 x i8> %i.bc, ptr %i.be, align 16, !tbaa !218
  store <8 x i8> %i.bd, ptr %i.bf, align 8, !tbaa !218
  %i.bg = icmp eq i64 %n.vec400, 32
  br i1 %i.bg, label %middle.block406, label %vector.body401.2

vector.body401.2:                                 ; preds = %vector.body401.1
  %i.bh = getelementptr i8, ptr %i.o, i64 88
  %i.bi = getelementptr i8, ptr %i.o, i64 104
  %wide.load403.2 = load <8 x i16>, ptr %i.bh, align 8, !tbaa !221 ; 3 uses
  %wide.load404.2 = load <8 x i16>, ptr %i.bi, align 8, !tbaa !221 ; 3 uses
  %i.bj = trunc <8 x i16> %wide.load403.2 to <8 x i8>
  %i.bk = trunc <8 x i16> %wide.load404.2 to <8 x i8>
  %i.bl = icmp ugt <8 x i16> %wide.load403.2, splat (i16 255)
  %i.bm = icmp ugt <8 x i16> %wide.load404.2, splat (i16 255)
  %i.bn = icmp eq <8 x i16> %wide.load403.2, splat (i16 8722)
  %i.bo = icmp eq <8 x i16> %wide.load404.2, splat (i16 8722)
  %i.bp = select <8 x i1> %i.bn, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.bq = select <8 x i1> %i.bo, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.br = select <8 x i1> %i.bl, <8 x i8> %i.bp, <8 x i8> %i.bj
  %i.bs = select <8 x i1> %i.bm, <8 x i8> %i.bq, <8 x i8> %i.bk
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store <8 x i8> %i.br, ptr %i.bt, align 16, !tbaa !218
  store <8 x i8> %i.bs, ptr %i.bu, align 8, !tbaa !218
  %i.bv = icmp eq i64 %n.vec400, 48
  br i1 %i.bv, label %middle.block406, label %vector.body401.3

vector.body401.3:                                 ; preds = %vector.body401.2
  %i.bw = getelementptr i8, ptr %i.o, i64 120
  %i.bx = getelementptr i8, ptr %i.o, i64 136
  %wide.load403.3 = load <8 x i16>, ptr %i.bw, align 8, !tbaa !221 ; 3 uses
  %wide.load404.3 = load <8 x i16>, ptr %i.bx, align 8, !tbaa !221 ; 3 uses
  %i.by = trunc <8 x i16> %wide.load403.3 to <8 x i8>
  %i.bz = trunc <8 x i16> %wide.load404.3 to <8 x i8>
  %i.ca = icmp ugt <8 x i16> %wide.load403.3, splat (i16 255)
  %i.cb = icmp ugt <8 x i16> %wide.load404.3, splat (i16 255)
  %i.cc = icmp eq <8 x i16> %wide.load403.3, splat (i16 8722)
  %i.cd = icmp eq <8 x i16> %wide.load404.3, splat (i16 8722)
  %i.ce = select <8 x i1> %i.cc, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.cf = select <8 x i1> %i.cd, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.cg = select <8 x i1> %i.ca, <8 x i8> %i.ce, <8 x i8> %i.by
  %i.ch = select <8 x i1> %i.cb, <8 x i8> %i.cf, <8 x i8> %i.bz
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store <8 x i8> %i.cg, ptr %i.ci, align 16, !tbaa !218
  store <8 x i8> %i.ch, ptr %i.cj, align 8, !tbaa !218
  %i.ck = icmp eq i64 %n.vec400, 64
  br i1 %i.ck, label %middle.block406, label %vector.body401.4

vector.body401.4:                                 ; preds = %vector.body401.3
  %i.cl = getelementptr i8, ptr %i.o, i64 152
  %i.cm = getelementptr i8, ptr %i.o, i64 168
  %wide.load403.4 = load <8 x i16>, ptr %i.cl, align 8, !tbaa !221 ; 3 uses
  %wide.load404.4 = load <8 x i16>, ptr %i.cm, align 8, !tbaa !221 ; 3 uses
  %i.cn = trunc <8 x i16> %wide.load403.4 to <8 x i8>
  %i.co = trunc <8 x i16> %wide.load404.4 to <8 x i8>
  %i.cp = icmp ugt <8 x i16> %wide.load403.4, splat (i16 255)
  %i.cq = icmp ugt <8 x i16> %wide.load404.4, splat (i16 255)
  %i.cr = icmp eq <8 x i16> %wide.load403.4, splat (i16 8722)
  %i.cs = icmp eq <8 x i16> %wide.load404.4, splat (i16 8722)
  %i.ct = select <8 x i1> %i.cr, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.cu = select <8 x i1> %i.cs, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.cv = select <8 x i1> %i.cp, <8 x i8> %i.ct, <8 x i8> %i.cn
  %i.cw = select <8 x i1> %i.cq, <8 x i8> %i.cu, <8 x i8> %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store <8 x i8> %i.cv, ptr %i.cx, align 16, !tbaa !218
  store <8 x i8> %i.cw, ptr %i.cy, align 8, !tbaa !218
  %i.cz = icmp eq i64 %n.vec400, 80
  br i1 %i.cz, label %middle.block406, label %vector.body401.5

vector.body401.5:                                 ; preds = %vector.body401.4
  %i.da = getelementptr i8, ptr %i.o, i64 184
  %i.db = getelementptr i8, ptr %i.o, i64 200
  %wide.load403.5 = load <8 x i16>, ptr %i.da, align 8, !tbaa !221 ; 3 uses
  %wide.load404.5 = load <8 x i16>, ptr %i.db, align 8, !tbaa !221 ; 3 uses
  %i.dc = trunc <8 x i16> %wide.load403.5 to <8 x i8>
  %i.dd = trunc <8 x i16> %wide.load404.5 to <8 x i8>
  %i.de = icmp ugt <8 x i16> %wide.load403.5, splat (i16 255)
  %i.df = icmp ugt <8 x i16> %wide.load404.5, splat (i16 255)
  %i.dg = icmp eq <8 x i16> %wide.load403.5, splat (i16 8722)
  %i.dh = icmp eq <8 x i16> %wide.load404.5, splat (i16 8722)
  %i.di = select <8 x i1> %i.dg, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.dj = select <8 x i1> %i.dh, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.dk = select <8 x i1> %i.de, <8 x i8> %i.di, <8 x i8> %i.dc
  %i.dl = select <8 x i1> %i.df, <8 x i8> %i.dj, <8 x i8> %i.dd
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store <8 x i8> %i.dk, ptr %i.dm, align 16, !tbaa !218
  store <8 x i8> %i.dl, ptr %i.dn, align 8, !tbaa !218
  %i.do = icmp eq i64 %n.vec400, 96
  br i1 %i.do, label %middle.block406, label %vector.body401.6

vector.body401.6:                                 ; preds = %vector.body401.5
  %i.dp = getelementptr i8, ptr %i.o, i64 216
  %i.dq = getelementptr i8, ptr %i.o, i64 232
  %wide.load403.6 = load <8 x i16>, ptr %i.dp, align 8, !tbaa !221 ; 3 uses
  %wide.load404.6 = load <8 x i16>, ptr %i.dq, align 8, !tbaa !221 ; 3 uses
  %i.dr = trunc <8 x i16> %wide.load403.6 to <8 x i8>
  %i.ds = trunc <8 x i16> %wide.load404.6 to <8 x i8>
  %i.dt = icmp ugt <8 x i16> %wide.load403.6, splat (i16 255)
  %i.du = icmp ugt <8 x i16> %wide.load404.6, splat (i16 255)
  %i.dv = icmp eq <8 x i16> %wide.load403.6, splat (i16 8722)
  %i.dw = icmp eq <8 x i16> %wide.load404.6, splat (i16 8722)
  %i.dx = select <8 x i1> %i.dv, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.dy = select <8 x i1> %i.dw, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.dz = select <8 x i1> %i.dt, <8 x i8> %i.dx, <8 x i8> %i.dr
  %i.ea = select <8 x i1> %i.du, <8 x i8> %i.dy, <8 x i8> %i.ds
end_hunk_8
begin_hunk_9_@js_Date_parse:bb.a
  %i.jz = icmp eq i64 %n.vec, 16
  br i1 %i.jz, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.ka, align 2, !tbaa !221 ; 3 uses
  %wide.load364.1 = load <8 x i16>, ptr %i.kb, align 2, !tbaa !221 ; 3 uses
  %i.kc = trunc <8 x i16> %wide.load.1 to <8 x i8>
  %i.kd = trunc <8 x i16> %wide.load364.1 to <8 x i8>
  %i.ke = icmp ugt <8 x i16> %wide.load.1, splat (i16 255)
  %i.kf = icmp ugt <8 x i16> %wide.load364.1, splat (i16 255)
  %i.kg = icmp eq <8 x i16> %wide.load.1, splat (i16 8722)
  %i.kh = icmp eq <8 x i16> %wide.load364.1, splat (i16 8722)
  %i.ki = select <8 x i1> %i.kg, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.kj = select <8 x i1> %i.kh, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.kk = select <8 x i1> %i.ke, <8 x i8> %i.ki, <8 x i8> %i.kc
  %i.kl = select <8 x i1> %i.kf, <8 x i8> %i.kj, <8 x i8> %i.kd
  %i.km = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store <8 x i8> %i.kk, ptr %i.km, align 16, !tbaa !218
  store <8 x i8> %i.kl, ptr %i.kn, align 8, !tbaa !218
  %i.ko = icmp eq i64 %n.vec, 32
  br i1 %i.ko, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jl, i64 64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jl, i64 80
  %wide.load.2 = load <8 x i16>, ptr %i.kp, align 2, !tbaa !221 ; 3 uses
  %wide.load364.2 = load <8 x i16>, ptr %i.kq, align 2, !tbaa !221 ; 3 uses
  %i.kr = trunc <8 x i16> %wide.load.2 to <8 x i8>
  %i.ks = trunc <8 x i16> %wide.load364.2 to <8 x i8>
  %i.kt = icmp ugt <8 x i16> %wide.load.2, splat (i16 255)
  %i.ku = icmp ugt <8 x i16> %wide.load364.2, splat (i16 255)
  %i.kv = icmp eq <8 x i16> %wide.load.2, splat (i16 8722)
  %i.kw = icmp eq <8 x i16> %wide.load364.2, splat (i16 8722)
  %i.kx = select <8 x i1> %i.kv, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.ky = select <8 x i1> %i.kw, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.kz = select <8 x i1> %i.kt, <8 x i8> %i.kx, <8 x i8> %i.kr
  %i.la = select <8 x i1> %i.ku, <8 x i8> %i.ky, <8 x i8> %i.ks
  %i.lb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store <8 x i8> %i.kz, ptr %i.lb, align 16, !tbaa !218
  store <8 x i8> %i.la, ptr %i.lc, align 8, !tbaa !218
  %i.ld = icmp eq i64 %n.vec, 48
  br i1 %i.ld, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.le = getelementptr inbounds nuw i8, ptr %i.jl, i64 96
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jl, i64 112
  %wide.load.3 = load <8 x i16>, ptr %i.le, align 2, !tbaa !221 ; 3 uses
  %wide.load364.3 = load <8 x i16>, ptr %i.lf, align 2, !tbaa !221 ; 3 uses
  %i.lg = trunc <8 x i16> %wide.load.3 to <8 x i8>
  %i.lh = trunc <8 x i16> %wide.load364.3 to <8 x i8>
  %i.li = icmp ugt <8 x i16> %wide.load.3, splat (i16 255)
  %i.lj = icmp ugt <8 x i16> %wide.load364.3, splat (i16 255)
  %i.lk = icmp eq <8 x i16> %wide.load.3, splat (i16 8722)
  %i.ll = icmp eq <8 x i16> %wide.load364.3, splat (i16 8722)
  %i.lm = select <8 x i1> %i.lk, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.ln = select <8 x i1> %i.ll, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.lo = select <8 x i1> %i.li, <8 x i8> %i.lm, <8 x i8> %i.lg
  %i.lp = select <8 x i1> %i.lj, <8 x i8> %i.ln, <8 x i8> %i.lh
  %i.lq = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.lr = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store <8 x i8> %i.lo, ptr %i.lq, align 16, !tbaa !218
  store <8 x i8> %i.lp, ptr %i.lr, align 8, !tbaa !218
  %i.ls = icmp eq i64 %n.vec, 64
  br i1 %i.ls, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.lt = getelementptr inbounds nuw i8, ptr %i.jl, i64 128
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jl, i64 144
  %wide.load.4 = load <8 x i16>, ptr %i.lt, align 2, !tbaa !221 ; 3 uses
  %wide.load364.4 = load <8 x i16>, ptr %i.lu, align 2, !tbaa !221 ; 3 uses
  %i.lv = trunc <8 x i16> %wide.load.4 to <8 x i8>
  %i.lw = trunc <8 x i16> %wide.load364.4 to <8 x i8>
  %i.lx = icmp ugt <8 x i16> %wide.load.4, splat (i16 255)
  %i.ly = icmp ugt <8 x i16> %wide.load364.4, splat (i16 255)
  %i.lz = icmp eq <8 x i16> %wide.load.4, splat (i16 8722)
  %i.ma = icmp eq <8 x i16> %wide.load364.4, splat (i16 8722)
  %i.mb = select <8 x i1> %i.lz, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.mc = select <8 x i1> %i.ma, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.md = select <8 x i1> %i.lx, <8 x i8> %i.mb, <8 x i8> %i.lv
  %i.me = select <8 x i1> %i.ly, <8 x i8> %i.mc, <8 x i8> %i.lw
  %i.mf = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store <8 x i8> %i.md, ptr %i.mf, align 16, !tbaa !218
  store <8 x i8> %i.me, ptr %i.mg, align 8, !tbaa !218
  %i.mh = icmp eq i64 %n.vec, 80
  br i1 %i.mh, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.jl, i64 160
  %i.mj = getelementptr inbounds nuw i8, ptr %i.jl, i64 176
  %wide.load.5 = load <8 x i16>, ptr %i.mi, align 2, !tbaa !221 ; 3 uses
  %wide.load364.5 = load <8 x i16>, ptr %i.mj, align 2, !tbaa !221 ; 3 uses
  %i.mk = trunc <8 x i16> %wide.load.5 to <8 x i8>
  %i.ml = trunc <8 x i16> %wide.load364.5 to <8 x i8>
  %i.mm = icmp ugt <8 x i16> %wide.load.5, splat (i16 255)
  %i.mn = icmp ugt <8 x i16> %wide.load364.5, splat (i16 255)
  %i.mo = icmp eq <8 x i16> %wide.load.5, splat (i16 8722)
  %i.mp = icmp eq <8 x i16> %wide.load364.5, splat (i16 8722)
  %i.mq = select <8 x i1> %i.mo, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.mr = select <8 x i1> %i.mp, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.ms = select <8 x i1> %i.mm, <8 x i8> %i.mq, <8 x i8> %i.mk
  %i.mt = select <8 x i1> %i.mn, <8 x i8> %i.mr, <8 x i8> %i.ml
  %i.mu = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.mv = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store <8 x i8> %i.ms, ptr %i.mu, align 16, !tbaa !218
  store <8 x i8> %i.mt, ptr %i.mv, align 8, !tbaa !218
  %i.mw = icmp eq i64 %n.vec, 96
  br i1 %i.mw, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.mx = getelementptr inbounds nuw i8, ptr %i.jl, i64 192
  %i.my = getelementptr inbounds nuw i8, ptr %i.jl, i64 208
  %wide.load.6 = load <8 x i16>, ptr %i.mx, align 2, !tbaa !221 ; 3 uses
  %wide.load364.6 = load <8 x i16>, ptr %i.my, align 2, !tbaa !221 ; 3 uses
  %i.mz = trunc <8 x i16> %wide.load.6 to <8 x i8>
  %i.na = trunc <8 x i16> %wide.load364.6 to <8 x i8>
  %i.nb = icmp ugt <8 x i16> %wide.load.6, splat (i16 255)
  %i.nc = icmp ugt <8 x i16> %wide.load364.6, splat (i16 255)
  %i.nd = icmp eq <8 x i16> %wide.load.6, splat (i16 8722)
  %i.ne = icmp eq <8 x i16> %wide.load364.6, splat (i16 8722)
  %i.nf = select <8 x i1> %i.nd, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.ng = select <8 x i1> %i.ne, <8 x i8> splat (i8 45), <8 x i8> splat (i8 120)
  %i.nh = select <8 x i1> %i.nb, <8 x i8> %i.nf, <8 x i8> %i.mz
  %i.ni = select <8 x i1> %i.nc, <8 x i8> %i.ng, <8 x i8> %i.na
  %i.nj = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.nk = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store <8 x i8> %i.nh, ptr %i.nj, align 16, !tbaa !218
  store <8 x i8> %i.ni, ptr %i.nk, align 8, !tbaa !218
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jm, 0
  br i1 %min.epilog.iters.check, label %str16.exit.i.preheader, label %vec.epilog.ph, !prof !784

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec365 = and i64 %wide.trip.count, 124       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index366 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next368, %vec.epilog.vector.body ] ; 3 uses
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %index366
  %wide.load367 = load <4 x i16>, ptr %i.nl, align 2, !tbaa !221 ; 3 uses
  %i.nm = trunc <4 x i16> %wide.load367 to <4 x i8>
  %i.nn = icmp ugt <4 x i16> %wide.load367, splat (i16 255)
  %i.no = icmp eq <4 x i16> %wide.load367, splat (i16 8722)
  %i.np = select <4 x i1> %i.no, <4 x i8> splat (i8 45), <4 x i8> splat (i8 120)
  %i.nq = select <4 x i1> %i.nn, <4 x i8> %i.np, <4 x i8> %i.nm
  %i.nr = getelementptr inbounds nuw i8, ptr %i.f, i64 %index366
  store <4 x i8> %i.nq, ptr %i.nr, align 4, !tbaa !218
  %index.next368 = add nuw i64 %index366, 4       ; 2 uses
  %i.ns = icmp eq i64 %index.next368, %n.vec365
  br i1 %i.ns, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1966

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n369 = icmp eq i64 %n.vec365, %wide.trip.count
  br i1 %cmp.n369, label %._crit_edge, label %str16.exit.i.preheader

str16.exit.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec365, %vec.epilog.middle.block ]
  br label %str16.exit.i

str16.exit.i:                                     ; preds = %str16.exit.i.preheader, %str16.exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %str16.exit.i ], [ %indvars.iv.ph, %str16.exit.i.preheader ] ; 3 uses
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !221 ; 3 uses
  %i.nv = trunc i16 %i.nu to i8
  %i.nw = icmp ugt i16 %i.nu, 255
  %i.nx = icmp eq i16 %i.nu, 8722
  %i.ny = select i1 %i.nx, i8 45, i8 120
  %.033 = select i1 %i.nw, i8 %i.ny, i8 %i.nv
  %i.nz = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 %.033, ptr %i.nz, align 1, !tbaa !218
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %str16.exit.i, !llvm.loop !1967

bb.c:                                             ; preds = %.lr.ph.split
  tail call void @abort() #50
  unreachable

.split.us:                                        ; preds = %.lr.ph.split.us
  tail call void @abort() #50
  unreachable

._crit_edge.sink.split:                           ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split.split.us111, %.lr.ph.split.us.split.split
  %.sink = phi ptr [ %i.ad, %.lr.ph.split.us.split.split ], [ %i.ac, %.lr.ph.split.us.split.split.us111 ], [ %i.w, %.lr.ph.split.us ]
  %i.oa = zext nneg i32 %invariant.umin to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 1 %.sink, i64 %i.oa, i1 false), !tbaa !218
  br label %._crit_edge

._crit_edge:                                      ; preds = %str16.exit.i, %str16.exit.i.us105, %str16.exit.i.us, %middle.block, %vec.epilog.middle.block, %middle.block380, %vec.epilog.middle.block393, %middle.block406, %vec.epilog.middle.block419, %._crit_edge.sink.split, %bb.b
  %.034.lcssa = phi i32 [ 0, %bb.b ], [ %invariant.umin, %middle.block406 ], [ %invariant.umin, %._crit_edge.sink.split ], [ %invariant.umin, %middle.block380 ], [ %invariant.umin, %middle.block ], [ %invariant.umin, %vec.epilog.middle.block419 ], [ %invariant.umin, %str16.exit.i.us105 ], [ %invariant.umin, %vec.epilog.middle.block393 ], [ %invariant.umin, %str16.exit.i.us ], [ %invariant.umin, %vec.epilog.middle.block ], [ %invariant.umin, %str16.exit.i ]
  %i.ob = zext nneg i32 %.034.lcssa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ob
  store i8 0, ptr %i.oc, align 1, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.od = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 7 uses
  store i32 0, ptr %i.od, align 4, !tbaa !191
  %i.oe = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 8 uses
  store i32 1, ptr %i.oe, align 8, !tbaa !191
  %i.of = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 12 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.of, i8 0, i64 24, i1 false)
  %i.ok = load i8, ptr %i.f, align 16, !tbaa !218 ; 4 uses
  %i.ol = icmp eq i8 %i.ok, 45
  switch i8 %i.ok, label %.preheader.preheader.i [
    i8 45, label %bb.d
    i8 43, label %bb.d
  ]

.preheader.preheader.i:                           ; preds = %._crit_edge
  %i.om = zext nneg i8 %i.ok to i32
  %i.on = add i8 %i.ok, -48
  %i.oo = icmp ult i8 %i.on, 10
  br i1 %i.oo, label %.preheader.1.i, label %js_date_parse_isostring.exit.thread

bb.d:                                             ; preds = %._crit_edge, %._crit_edge
  %i.op = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !218 ; 2 uses
  %i.or = zext nneg i8 %i.oq to i32
  %i.os = add i8 %i.oq, -48
  %i.ot = icmp ult i8 %i.os, 10
  br i1 %i.ot, label %bb.e, label %js_date_parse_isostring.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ou = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.ov = load i8, ptr %i.ou, align 2, !tbaa !218 ; 2 uses
  %i.ow = add i8 %i.ov, -48
  %i.ox = icmp ult i8 %i.ow, 10
  br i1 %i.ox, label %bb.f, label %js_date_parse_isostring.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.oy = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !218 ; 2 uses
  %i.pa = add i8 %i.oz, -48
  %i.pb = icmp ult i8 %i.pa, 10
  br i1 %i.pb, label %bb.g, label %js_date_parse_isostring.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.pc = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.pd = load i8, ptr %i.pc, align 4, !tbaa !218 ; 2 uses
  %i.pe = add i8 %i.pd, -48
  %i.pf = icmp ult i8 %i.pe, 10
  br i1 %i.pf, label %bb.h, label %js_date_parse_isostring.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.pg = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !218 ; 2 uses
  %i.pi = add i8 %i.ph, -48
  %i.pj = icmp ult i8 %i.pi, 10
  br i1 %i.pj, label %bb.i, label %js_date_parse_isostring.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.pk = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.pl = load i8, ptr %i.pk, align 2, !tbaa !218 ; 2 uses
  %i.pm = add i8 %i.pl, -48
  %i.pn = icmp ult i8 %i.pm, 10
  br i1 %i.pn, label %.split.loop.exit.i.thread.i, label %js_date_parse_isostring.exit.thread

.split.loop.exit.i.thread.i:                      ; preds = %bb.i
  %i.po = zext nneg i8 %i.pl to i32
  %i.pp = mul nuw nsw i32 %i.or, 10
  %i.pq = add nsw i32 %i.pp, -528
  %i.pr = zext nneg i8 %i.ov to i32
  %i.ps = add nsw i32 %i.pq, %i.pr
  %i.pt = mul nuw nsw i32 %i.ps, 10
  %i.pu = add nsw i32 %i.pt, -48
  %i.pv = zext nneg i8 %i.oz to i32
  %i.pw = add nsw i32 %i.pu, %i.pv
  %i.px = mul nuw nsw i32 %i.pw, 10
  %i.py = add nsw i32 %i.px, -48
  %i.pz = zext nneg i8 %i.pd to i32
  %i.qa = add nsw i32 %i.py, %i.pz
  %i.qb = mul nuw nsw i32 %i.qa, 10
  %i.qc = add nsw i32 %i.qb, -48
  %i.qd = zext nneg i8 %i.ph to i32
  %i.qe = add nsw i32 %i.qc, %i.qd
  %i.qf = mul nuw nsw i32 %i.qe, 10
  %i.qg = add nsw i32 %i.qf, -48
  %i.qh = add nsw i32 %i.qg, %i.po                ; 3 uses
  store i32 %i.qh, ptr %i.d, align 16, !tbaa !191
  store i32 7, ptr %i.c, align 4, !tbaa !191
  br i1 %i.ol, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.split.loop.exit.i.thread.i
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %js_date_parse_isostring.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.qj = sub nsw i32 0, %i.qh
  store i32 %i.qj, ptr %i.d, align 16, !tbaa !191
  br label %bb.l

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.qk = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !218 ; 2 uses
  %i.qm = add i8 %i.ql, -48
  %i.qn = icmp ult i8 %i.qm, 10
  br i1 %i.qn, label %.preheader.2.i, label %js_date_parse_isostring.exit.thread

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.qo = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.qp = load i8, ptr %i.qo, align 2, !tbaa !218 ; 2 uses
  %i.qq = add i8 %i.qp, -48
  %i.qr = icmp ult i8 %i.qq, 10
  br i1 %i.qr, label %.preheader.3.i, label %js_date_parse_isostring.exit.thread

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !218 ; 2 uses
  %i.qu = add i8 %i.qt, -48
  %i.qv = icmp ult i8 %i.qu, 10
  br i1 %i.qv, label %string_get_digits.exit56.i, label %js_date_parse_isostring.exit.thread

string_get_digits.exit56.i:                       ; preds = %.preheader.3.i
  %i.qw = zext nneg i8 %i.qt to i32
  %i.qx = mul nuw nsw i32 %i.om, 10
  %i.qy = add nsw i32 %i.qx, -528
  %i.qz = zext nneg i8 %i.ql to i32
  %i.ra = add nsw i32 %i.qy, %i.qz
  %i.rb = mul nuw nsw i32 %i.ra, 10
  %i.rc = add nsw i32 %i.rb, -48
  %i.rd = zext nneg i8 %i.qp to i32
  %i.re = add nsw i32 %i.rc, %i.rd
  %i.rf = mul nuw nsw i32 %i.re, 10
  %i.rg = add nsw i32 %i.rf, -48
  %i.rh = add nsw i32 %i.rg, %i.qw
  store i32 %i.rh, ptr %i.d, align 16, !tbaa !191
  store i32 4, ptr %i.c, align 4, !tbaa !191
  br label %bb.l

bb.l:                                             ; preds = %string_get_digits.exit56.i, %bb.k, %.split.loop.exit.i.thread.i
  %i.ri = phi i32 [ 4, %string_get_digits.exit56.i ], [ 7, %.split.loop.exit.i.thread.i ], [ 7, %bb.k ] ; 4 uses
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !218 ; 2 uses
  %i.rm = icmp eq i8 %i.rl, 45
  br i1 %i.rm, label %bb.m, label %string_skip_char.exit.i

bb.m:                                             ; preds = %bb.l
  %i.rn = add nuw nsw i32 %i.ri, 1                ; 2 uses
  %i.ro = zext nneg i32 %i.rn to i64              ; 3 uses
  %i.rp = add nuw nsw i32 %i.ri, 3
  %i.rq = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ro
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !218 ; 2 uses
  %i.rs = add i8 %i.rr, -48
  %i.rt = icmp ult i8 %i.rs, 10
  br i1 %i.rt, label %bb.n, label %.split.loop.exit24.i59.i

bb.n:                                             ; preds = %bb.m
  %i.ru = zext nneg i8 %i.rr to i32
  %i.rv = add nsw i32 %i.ru, -48                  ; 2 uses
  %indvars.iv.next.i64.i = add nuw nsw i64 %i.ro, 1 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next.i64.i
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !218 ; 2 uses
  %i.ry = add i8 %i.rx, -48
  %i.rz = icmp ult i8 %i.ry, 10
  br i1 %i.rz, label %.split.loop.exit.i60.loopexit.i, label %.split.loop.exit24.i59.i

.split.loop.exit.i60.loopexit.i:                  ; preds = %bb.n
  %i.sa = zext nneg i8 %i.rx to i32
  %i.sb = mul nuw nsw i32 %i.rv, 10
  %i.sc = add nsw i32 %i.sb, -48
  %i.sd = add nsw i32 %i.sc, %i.sa
  br label %.split.loop.exit.i60.i

.split.loop.exit24.i59.i:                         ; preds = %bb.n, %bb.m
  %indvars.iv.i57.lcssa.i = phi i64 [ %i.ro, %bb.m ], [ %indvars.iv.next.i64.i, %bb.n ]
  %.019.i58.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.rv, %bb.n ]
  %i.se = trunc nuw nsw i64 %indvars.iv.i57.lcssa.i to i32
  br label %.split.loop.exit.i60.i

.split.loop.exit.i60.i:                           ; preds = %.split.loop.exit24.i59.i, %.split.loop.exit.i60.loopexit.i
  %.120.i61.i = phi i32 [ %.019.i58.lcssa.i, %.split.loop.exit24.i59.i ], [ %i.sd, %.split.loop.exit.i60.loopexit.i ] ; 2 uses
  %i.sf = phi i32 [ %i.se, %.split.loop.exit24.i59.i ], [ %i.rp, %.split.loop.exit.i60.loopexit.i ] ; 6 uses
  %i.sg = sub nsw i32 %i.sf, %i.rn
  %i.sh = icmp slt i32 %i.sg, 2
  br i1 %i.sh, label %js_date_parse_isostring.exit.thread, label %bb.o

bb.o:                                             ; preds = %.split.loop.exit.i60.i
  store i32 %i.sf, ptr %i.c, align 4, !tbaa !191
  %i.si = icmp eq i32 %.120.i61.i, 0
  br i1 %i.si, label %js_date_parse_isostring.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.sj = add nsw i32 %.120.i61.i, -1
  store i32 %i.sj, ptr %i.od, align 4, !tbaa !191
  %i.sk = zext nneg i32 %i.sf to i64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.sk
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !218 ; 2 uses
end_hunk_9
begin_hunk_10_@js_array_at:bb.a
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %JS_ToInt64Sat.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %4, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp ugt i32 %i.i, -10
  br i1 %i.j, label %bb.c, label %js_dup.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %i.f to ptr
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !191
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.h
  %.sroa.012.0.in.i.i = phi i64 [ %i.v, %bb.h ], [ %i.f, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.w, %bb.h ], [ %i.h, %js_dup.exit.i.preheader ] ; 2 uses
  %i.o = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.o, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 6, label %JS_ToInt64Sat.exit
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %sext.i.i = shl i64 %.sroa.012.0.in.i.i, 32
  %i.p = ashr exact i64 %sext.i.i, 32
  br label %select.unfold

bb.e:                                             ; preds = %js_dup.exit.i
  %.sroa.012.0.le.i.i = bitcast i64 %.sroa.012.0.in.i.i to double ; 4 uses
  %i.q = fcmp uno double %.sroa.012.0.le.i.i, 0.000000e+00
  br i1 %i.q, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp olt double %.sroa.012.0.le.i.i, f0xC3E0000000000000
  br i1 %i.r, label %.thread31, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = fcmp ult double %.sroa.012.0.le.i.i, f0x43E0000000000000
  %i.t = fptosi double %.sroa.012.0.le.i.i to i64
  br i1 %i.s, label %select.unfold, label %JS_ToInt64Sat.exit

bb.h:                                             ; preds = %js_dup.exit.i
  %i.u = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !80 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 2 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 6
  br i1 %i.y, label %JS_ToInt64Sat.exit, label %js_dup.exit.i

select.unfold:                                    ; preds = %bb.g, %bb.d
  %.sink.i.i.ph = phi i64 [ %i.p, %bb.d ], [ %i.t, %bb.g ] ; 3 uses
  %i.z = icmp slt i64 %.sink.i.i.ph, 0
  br i1 %i.z, label %.thread31, label %.thread

.thread31:                                        ; preds = %bb.f, %select.unfold
  %.sink.i.i.ph33 = phi i64 [ %.sink.i.i.ph, %select.unfold ], [ -9223372036854775808, %bb.f ]
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !240
  %i.ab = add nsw i64 %i.aa, %.sink.i.i.ph33
  br label %.thread

.thread:                                          ; preds = %bb.e, %.thread31, %select.unfold
  %.0 = phi i64 [ %i.ab, %.thread31 ], [ %.sink.i.i.ph, %select.unfold ], [ 0, %bb.e ] ; 3 uses
  %i.ac = icmp sgt i64 %.0, -1
  %i.ad = load i64, ptr %i.a, align 8
  %.not24 = icmp slt i64 %.0, %i.ad
  %or.cond = select i1 %i.ac, i1 %.not24, i1 false
  br i1 %or.cond, label %bb.i, label %JS_ToInt64Sat.exit

bb.i:                                             ; preds = %.thread
  %i.ae = tail call { i64, i64 } @JS_GetPropertyInt64(ptr noundef %0, i64 %i.c, i64 %i.d, i64 noundef %.0) ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  br label %JS_ToInt64Sat.exit

JS_ToInt64Sat.exit:                               ; preds = %bb.h, %js_dup.exit.i, %bb.g, %.thread, %bb.i, %bb.a
  %.sroa.420.0 = phi i64 [ 0, %bb.a ], [ 0, %.thread ], [ %i.af, %bb.i ], [ 0, %bb.g ], [ 0, %js_dup.exit.i ], [ 0, %bb.h ]
  %.sroa.621.0 = phi i64 [ 6, %bb.a ], [ 3, %.thread ], [ %i.ag, %bb.i ], [ 3, %bb.g ], [ 6, %js_dup.exit.i ], [ 6, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !232
  %i.aj = trunc i64 %i.d to i32
  %i.ak = icmp ugt i32 %i.aj, -10
  br i1 %i.ak, label %bb.j, label %JS_FreeValue.exit

bb.j:                                             ; preds = %JS_ToInt64Sat.exit
  %i.al = inttoptr i64 %i.c to ptr
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !191 ; 2 uses
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !191
  %i.ap = icmp slt i32 %i.an, 2
  br i1 %i.ap, label %bb.k, label %JS_FreeValue.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ai, i64 %i.c, i64 %i.d), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_ToInt64Sat.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.420.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.621.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_array_with(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = tail call { i64, i64 } @JS_ToObject(ptr noundef %0, i64 %1, i64 %2) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 6 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 6 uses
  %i.e = call fastcc i32 @js_get_length64(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.c, i64 %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %JS_ToInt64Sat.exit.thread131

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %4, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp ugt i32 %i.i, -10
  br i1 %i.j, label %bb.c, label %js_dup.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %i.f to ptr
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !191
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.h
  %.sroa.012.0.in.i.i = phi i64 [ %i.v, %bb.h ], [ %i.f, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.w, %bb.h ], [ %i.h, %js_dup.exit.i.preheader ] ; 2 uses
  %i.o = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.o, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 6, label %JS_ToInt64Sat.exit.thread131
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %sext.i.i = shl i64 %.sroa.012.0.in.i.i, 32
  %i.p = ashr exact i64 %sext.i.i, 32
  br label %select.unfold

bb.e:                                             ; preds = %js_dup.exit.i
  %.sroa.012.0.le.i.i = bitcast i64 %.sroa.012.0.in.i.i to double ; 4 uses
  %i.q = fcmp uno double %.sroa.012.0.le.i.i, 0.000000e+00
  br i1 %i.q, label %.thread123, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp olt double %.sroa.012.0.le.i.i, f0xC3E0000000000000
  br i1 %i.r, label %.thread119, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = fcmp ult double %.sroa.012.0.le.i.i, f0x43E0000000000000
  %i.t = fptosi double %.sroa.012.0.le.i.i to i64
  br i1 %i.s, label %select.unfold, label %.thread123.thread

bb.h:                                             ; preds = %js_dup.exit.i
  %i.u = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !80 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 2 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 6
  br i1 %i.y, label %JS_ToInt64Sat.exit.thread131, label %js_dup.exit.i

select.unfold:                                    ; preds = %bb.g, %bb.d
  %.sink.i.i.ph = phi i64 [ %i.p, %bb.d ], [ %i.t, %bb.g ] ; 3 uses
  %i.z = icmp slt i64 %.sink.i.i.ph, 0
  br i1 %i.z, label %.thread119, label %.thread123

.thread119:                                       ; preds = %bb.f, %select.unfold
  %.sink.i.i.ph121 = phi i64 [ %.sink.i.i.ph, %select.unfold ], [ -9223372036854775808, %bb.f ]
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !240
  %i.ab = add nsw i64 %i.aa, %.sink.i.i.ph121     ; 3 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.thread123.thread, label %.thread123

.thread123:                                       ; preds = %bb.e, %select.unfold, %.thread119
  %.0112125 = phi i64 [ %i.ab, %.thread119 ], [ %.sink.i.i.ph, %select.unfold ], [ 0, %bb.e ] ; 13 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !240 ; 9 uses
  %.not85 = icmp slt i64 %.0112125, %i.ad
  br i1 %.not85, label %bb.i, label %.thread123.thread

.thread123.thread:                                ; preds = %bb.g, %.thread123, %.thread119
  %.0112126 = phi i64 [ %.0112125, %.thread123 ], [ %i.ab, %.thread119 ], [ 9223372036854775807, %bb.g ]
  %i.ae = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.773, i64 noundef %.0112126) ; 0 uses
  br label %JS_ToInt64Sat.exit.thread131

bb.i:                                             ; preds = %.thread123
  %i.af = tail call fastcc { i64, i64 } @js_allocate_fast_array(ptr noundef %0, i64 noundef %i.ad) ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0      ; 8 uses
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 8 uses
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 6
  br i1 %i.aj, label %JS_ToInt64Sat.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = inttoptr i64 %i.ag to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !218 ; 5 uses
  %i.an = and i64 %i.d, 4294967295
  %i.ao = icmp eq i64 %i.an, 4294967295
  br i1 %i.ao, label %bb.k, label %js_get_fast_array.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ap = inttoptr i64 %i.c to ptr                ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 18
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !276
  %i.as = icmp eq i16 %i.ar, 2
  br i1 %i.as, label %bb.l, label %js_get_fast_array.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load i16, ptr %i.at, align 8
  %i.av = and i16 %i.au, 16
  %.not.i = icmp eq i16 %i.av, 0
  br i1 %.not.i, label %js_get_fast_array.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !218
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !218 ; 6 uses
  %i.ba = zext i32 %i.ax to i64
  %i.bb = icmp eq i64 %i.ad, %i.ba
  br i1 %i.bb, label %.preheader, label %js_get_fast_array.exit.thread

.preheader:                                       ; preds = %bb.m
  %.not159 = icmp eq i64 %.0112125, 0
  br i1 %.not159, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %.0112125, 1
  %i.bc = icmp eq i64 %.0112125, 1
  br i1 %i.bc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0112125, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %js_dup.exit.1, %.lr.ph.preheader.new
  %.0147 = phi ptr [ %i.am, %.lr.ph.preheader.new ], [ %i.ca, %js_dup.exit.1 ] ; 5 uses
  %.077146 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bz, %js_dup.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %js_dup.exit.1 ]
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.077146 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = icmp ugt i32 %i.bh, -10
  br i1 %i.bi, label %bb.n, label %js_dup.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bj = inttoptr i64 %i.be to ptr
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !191
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %.lr.ph, %bb.n
  store i64 %i.be, ptr %.0147, align 8, !tbaa !218
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0147, i64 8
  store i64 %i.bg, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !240
  %i.bn = getelementptr inbounds nuw i8, ptr %.0147, i64 16
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.077146 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = icmp ugt i32 %i.bt, -10
  br i1 %i.bu, label %bb.o, label %js_dup.exit.1

bb.o:                                             ; preds = %js_dup.exit
  %i.bv = inttoptr i64 %i.bq to ptr
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !191
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !191
  br label %js_dup.exit.1

js_dup.exit.1:                                    ; preds = %bb.o, %js_dup.exit
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !218
  %.sroa.47.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.0147, i64 24
  store i64 %i.bs, ptr %.sroa.47.0..sroa_idx.1, align 8, !tbaa !240
  %i.bz = add nuw nsw i64 %.077146, 2             ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0147, i64 32 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2137

._crit_edge.loopexit.unr-lcssa:                   ; preds = %js_dup.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0147.epil.init = phi ptr [ %i.am, %.lr.ph.preheader ], [ %i.ca, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.077146.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bz, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod198 = trunc i64 %.0112125 to i1
  tail call void @llvm.assume(i1 %lcmp.mod198)
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.077146.epil.init ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = icmp ugt i32 %i.cf, -10
  br i1 %i.cg, label %bb.p, label %js_dup.exit.epil

bb.p:                                             ; preds = %.lr.ph.epil.preheader
  %i.ch = inttoptr i64 %i.cc to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !191
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !191
  br label %js_dup.exit.epil

js_dup.exit.epil:                                 ; preds = %bb.p, %.lr.ph.epil.preheader
  store i64 %i.cc, ptr %.0147.epil.init, align 8, !tbaa !218
  %.sroa.47.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.0147.epil.init, i64 8
  store i64 %i.ce, ptr %.sroa.47.0..sroa_idx.epil, align 8, !tbaa !240
  %i.cl = getelementptr inbounds nuw i8, ptr %.0147.epil.init, i64 16
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %js_dup.exit.epil
  %.lcssa193 = phi ptr [ %i.ca, %._crit_edge.loopexit.unr-lcssa ], [ %i.cl, %js_dup.exit.epil ]
  %5 = add nuw nsw i64 %.0112125, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.077.lcssa = phi i64 [ 1, %.preheader ], [ %5, %._crit_edge.loopexit ] ; 4 uses
  %.0.lcssa = phi ptr [ %i.am, %.preheader ], [ %.lcssa193, %._crit_edge.loopexit ] ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cp = load i64, ptr %i.co, align 8            ; 2 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = icmp ugt i32 %i.cq, -10
  br i1 %i.cr, label %bb.q, label %js_dup.exit90

bb.q:                                             ; preds = %._crit_edge
  %i.cs = inttoptr i64 %i.cn to ptr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !191
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !191
  br label %js_dup.exit90

js_dup.exit90:                                    ; preds = %._crit_edge, %bb.q
  store i64 %i.cn, ptr %.0.lcssa, align 8, !tbaa !218
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  store i64 %i.cp, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !240
  %i.cw = icmp slt i64 %.077.lcssa, %i.ad
  br i1 %i.cw, label %.lr.ph152.preheader, label %JS_ToInt64Sat.exit.thread131

.lr.ph152.preheader:                              ; preds = %js_dup.exit90
  %i.cx = add i64 %i.ad, -2
  %i.cy = sub i64 %.0112125, %i.ad
  %i.cz = and i64 %i.cy, 1
  %lcmp.mod200.not.not = icmp eq i64 %i.cz, 0
  br i1 %lcmp.mod200.not.not, label %.lr.ph152.prol, label %.lr.ph152.prol.loopexit

.lr.ph152.prol:                                   ; preds = %.lr.ph152.preheader
  %.1.prol = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.077.lcssa ; 2 uses
  %i.db = load i64, ptr %i.da, align 8            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.de = trunc i64 %i.dd to i32
  %i.df = icmp ugt i32 %i.de, -10
  br i1 %i.df, label %bb.r, label %js_dup.exit93.prol

bb.r:                                             ; preds = %.lr.ph152.prol
  %i.dg = inttoptr i64 %i.db to ptr
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !191
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !191
  br label %js_dup.exit93.prol

js_dup.exit93.prol:                               ; preds = %bb.r, %.lr.ph152.prol
  store i64 %i.db, ptr %.1.prol, align 8, !tbaa !218
  %.sroa.43.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24
  store i64 %i.dd, ptr %.sroa.43.0..sroa_idx.prol, align 8, !tbaa !240
  %.178.prol = add nuw nsw i64 %.077.lcssa, 1
  br label %.lr.ph152.prol.loopexit

.lr.ph152.prol.loopexit:                          ; preds = %js_dup.exit93.prol, %.lr.ph152.preheader
  %.178151.unr = phi i64 [ %.077.lcssa, %.lr.ph152.preheader ], [ %.178.prol, %js_dup.exit93.prol ]
  %.0.pn150.unr = phi ptr [ %.0.lcssa, %.lr.ph152.preheader ], [ %.1.prol, %js_dup.exit93.prol ]
  %i.dk = icmp eq i64 %i.cx, %.0112125
  br i1 %i.dk, label %JS_ToInt64Sat.exit.thread131, label %.lr.ph152

.lr.ph152:                                        ; preds = %.lr.ph152.prol.loopexit, %js_dup.exit93.1
  %.178151 = phi i64 [ %.178.1, %js_dup.exit93.1 ], [ %.178151.unr, %.lr.ph152.prol.loopexit ] ; 3 uses
  %.0.pn150 = phi ptr [ %.1.1, %js_dup.exit93.1 ], [ %.0.pn150.unr, %.lr.ph152.prol.loopexit ] ; 4 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.0.pn150, i64 16
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.178151 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load i64, ptr %i.dn, align 8            ; 2 uses
  %i.dp = trunc i64 %i.do to i32
  %i.dq = icmp ugt i32 %i.dp, -10
  br i1 %i.dq, label %bb.s, label %js_dup.exit93

bb.s:                                             ; preds = %.lr.ph152
  %i.dr = inttoptr i64 %i.dm to ptr
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !191
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !191
  br label %js_dup.exit93

js_dup.exit93:                                    ; preds = %.lr.ph152, %bb.s
  store i64 %i.dm, ptr %.1, align 8, !tbaa !218
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.pn150, i64 24
  store i64 %i.do, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !240
  %.1.1 = getelementptr inbounds nuw i8, ptr %.0.pn150, i64 32 ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.178151 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dz = load i64, ptr %i.dy, align 8            ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = icmp ugt i32 %i.ea, -10
  br i1 %i.eb, label %bb.t, label %js_dup.exit93.1

bb.t:                                             ; preds = %js_dup.exit93
  %i.ec = inttoptr i64 %i.dx to ptr
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -4 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !191
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !191
  br label %js_dup.exit93.1

js_dup.exit93.1:                                  ; preds = %bb.t, %js_dup.exit93
  store i64 %i.dx, ptr %.1.1, align 8, !tbaa !218
  %.sroa.43.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.0.pn150, i64 40
  store i64 %i.dz, ptr %.sroa.43.0..sroa_idx.1, align 8, !tbaa !240
  %.178.1 = add nuw nsw i64 %.178151, 2           ; 2 uses
  %exitcond169.not.1 = icmp eq i64 %.178.1, %i.ad
  br i1 %exitcond169.not.1, label %JS_ToInt64Sat.exit.thread131, label %.lr.ph152, !llvm.loop !2138

js_get_fast_array.exit.thread:                    ; preds = %bb.k, %bb.l, %bb.j, %bb.m
  %.not160 = icmp eq i64 %.0112125, 0
  br i1 %.not160, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %js_get_fast_array.exit.thread, %bb.u
  %.2154 = phi ptr [ %i.ej, %bb.u ], [ %i.am, %js_get_fast_array.exit.thread ] ; 2 uses
  %.279153 = phi i64 [ %i.ei, %bb.u ], [ 0, %js_get_fast_array.exit.thread ] ; 2 uses
  %i.eg = tail call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %i.c, i64 %i.d, i64 noundef %.279153, ptr noundef %.2154)
  %i.eh = icmp eq i32 %i.eg, -1
  br i1 %i.eh, label %JS_ToInt64Sat.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph155
  %i.ei = add nuw nsw i64 %.279153, 1             ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.2154, i64 16 ; 2 uses
  %exitcond170.not = icmp eq i64 %i.ei, %.0112125
  br i1 %exitcond170.not, label %._crit_edge156, label %.lr.ph155, !llvm.loop !2139

._crit_edge156:                                   ; preds = %bb.u, %js_get_fast_array.exit.thread
  %.2.lcssa = phi ptr [ %i.am, %js_get_fast_array.exit.thread ], [ %i.ej, %bb.u ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.el = load i64, ptr %i.ek, align 8            ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.en = load i64, ptr %i.em, align 8            ; 2 uses
  %i.eo = trunc i64 %i.en to i32
  %i.ep = icmp ugt i32 %i.eo, -10
  br i1 %i.ep, label %bb.v, label %js_dup.exit96

bb.v:                                             ; preds = %._crit_edge156
  %i.eq = inttoptr i64 %i.el to ptr
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -4 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !191
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !191
  br label %js_dup.exit96

js_dup.exit96:                                    ; preds = %._crit_edge156, %bb.v
  store i64 %i.el, ptr %.2.lcssa, align 8, !tbaa !218
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  store i64 %i.en, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  %.380187 = add nuw nsw i64 %.0112125, 1         ; 2 uses
  %i.eu = icmp slt i64 %.380187, %i.ad
  br i1 %i.eu, label %.lr.ph190, label %JS_ToInt64Sat.exit.thread131

bb.w:                                             ; preds = %.lr.ph190
  %.380 = add nuw nsw i64 %.380189, 1             ; 2 uses
  %i.ev = icmp slt i64 %.380, %i.ad
  br i1 %i.ev, label %.lr.ph190, label %JS_ToInt64Sat.exit.thread131, !llvm.loop !2140

.lr.ph190:                                        ; preds = %js_dup.exit96, %bb.w
  %.380189 = phi i64 [ %.380, %bb.w ], [ %.380187, %js_dup.exit96 ] ; 2 uses
  %.2.pn188 = phi ptr [ %.3, %bb.w ], [ %.2.lcssa, %js_dup.exit96 ]
  %.3 = getelementptr inbounds nuw i8, ptr %.2.pn188, i64 16 ; 2 uses
  %i.ew = tail call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %i.c, i64 %i.d, i64 noundef %.380189, ptr noundef nonnull %.3)
  %i.ex = icmp eq i32 %i.ew, -1
  br i1 %i.ex, label %JS_ToInt64Sat.exit, label %bb.w, !llvm.loop !2140

JS_ToInt64Sat.exit.thread131:                     ; preds = %js_dup.exit.i, %bb.h, %.lr.ph152.prol.loopexit, %js_dup.exit93.1, %bb.w, %js_dup.exit96, %js_dup.exit90, %bb.a, %.thread123.thread
  %.ph = phi i64 [ %i.ag, %js_dup.exit90 ], [ %i.ag, %js_dup.exit96 ], [ 0, %bb.a ], [ 0, %.thread123.thread ], [ %i.ag, %.lr.ph152.prol.loopexit ], [ %i.ag, %bb.w ], [ %i.ag, %js_dup.exit93.1 ], [ 0, %bb.h ], [ 0, %js_dup.exit.i ]
  %.sroa.476.0.ph = phi i64 [ %i.ah, %js_dup.exit90 ], [ %i.ah, %js_dup.exit96 ], [ 6, %bb.a ], [ 6, %.thread123.thread ], [ %i.ah, %.lr.ph152.prol.loopexit ], [ %i.ah, %bb.w ], [ %i.ah, %js_dup.exit93.1 ], [ 6, %bb.h ], [ 6, %js_dup.exit.i ]
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %JS_FreeValue.exit

JS_ToInt64Sat.exit:                               ; preds = %.lr.ph155, %.lr.ph190, %bb.i
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !232
  %i.fb = trunc i64 %i.ah to i32
  %i.fc = icmp ugt i32 %i.fb, -10
  br i1 %i.fc, label %bb.x, label %JS_FreeValue.exit

bb.x:                                             ; preds = %JS_ToInt64Sat.exit
  %i.fd = inttoptr i64 %i.ag to ptr
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -4 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !191 ; 2 uses
  %i.fg = add nsw i32 %i.ff, -1
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !191
  %i.fh = icmp slt i32 %i.ff, 2
  br i1 %i.fh, label %bb.y, label %JS_FreeValue.exit

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fa, i64 %i.ag, i64 %i.ah), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_ToInt64Sat.exit.thread131, %JS_ToInt64Sat.exit, %bb.x, %bb.y
  %i.fi = phi ptr [ %i.ey, %JS_ToInt64Sat.exit.thread131 ], [ %i.ez, %JS_ToInt64Sat.exit ], [ %i.ez, %bb.x ], [ %i.ez, %bb.y ]
  %.sroa.476.0135 = phi i64 [ %.sroa.476.0.ph, %JS_ToInt64Sat.exit.thread131 ], [ 6, %JS_ToInt64Sat.exit ], [ 6, %bb.x ], [ 6, %bb.y ]
  %i.fj = phi i64 [ %.ph, %JS_ToInt64Sat.exit.thread131 ], [ 0, %JS_ToInt64Sat.exit ], [ 0, %bb.x ], [ 0, %bb.y ]
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !232
  %i.fl = trunc i64 %i.d to i32
  %i.fm = icmp ugt i32 %i.fl, -10
  br i1 %i.fm, label %bb.z, label %JS_FreeValue.exit97

bb.z:                                             ; preds = %JS_FreeValue.exit
  %i.fn = inttoptr i64 %i.c to ptr
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -4 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !191 ; 2 uses
  %i.fq = add nsw i32 %i.fp, -1
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !191
  %i.fr = icmp slt i32 %i.fp, 2
  br i1 %i.fr, label %bb.aa, label %JS_FreeValue.exit97

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fk, i64 %i.c, i64 %i.d), !inline_history !291
  br label %JS_FreeValue.exit97

JS_FreeValue.exit97:                              ; preds = %JS_FreeValue.exit, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.fj, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.476.0135, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_array_concat(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.JSValue, align 8            ; 5 uses
  %6 = alloca %struct.JSValue, align 8            ; 6 uses
  %7 = alloca %struct.JSValue, align 8            ; 6 uses
  %8 = alloca %struct.JSValue, align 16           ; 4 uses
  %9 = alloca %struct.JSValue, align 16           ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = tail call { i64, i64 } @JS_ToObject(ptr noundef %0, i64 %1, i64 %2) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 5 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 6 uses
  %i.e = and i64 %i.d, 4294967295
  %i.f = icmp eq i64 %i.e, 6
  br i1 %i.f, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %JS_FreeValue.exit122

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc { i64, i64 } @JS_ArraySpeciesCreate(ptr noundef %0, i64 %i.c, i64 %i.d, i64 0, i64 0) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 9 uses
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 10 uses
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 6
  br i1 %i.l, label %JS_isConcatSpreadable.exit.thread126, label %.preheader137

.preheader137:                                    ; preds = %bb.b
  %i.m = icmp sgt i32 %3, -1
  br i1 %i.m, label %.lr.ph148, label %._crit_edge

.lr.ph148:                                        ; preds = %.preheader137
end_hunk_10
