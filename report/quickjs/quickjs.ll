inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 174
begin_hunk_0_@js_typed_array_constructor:bb.a

bb.c:                                             ; preds = %bb.b
  %i.o = inttoptr i64 %i.l to ptr
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !8
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.c, %bb.b
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.h
  %.sroa.012.0.in.i.i.i = phi i64 [ %i.z, %bb.h ], [ %i.l, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.aa, %bb.h ], [ %i.j, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.s = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.s, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 6, label %JS_FreeValue.exit
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %sext.i.i.i = shl i64 %.sroa.012.0.in.i.i.i, 32
  %i.t = ashr exact i64 %sext.i.i.i, 32
  br label %bb.i

bb.e:                                             ; preds = %js_dup.exit.i.i
  %.sroa.012.0.le.i.i.i = bitcast i64 %.sroa.012.0.in.i.i.i to double ; 4 uses
  %i.u = fcmp uno double %.sroa.012.0.le.i.i.i, 0.000000e+00
  br i1 %i.u, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = fcmp uge double %.sroa.012.0.le.i.i.i, f0xC3E0000000000000
  %i.w = fcmp ult double %.sroa.012.0.le.i.i.i, f0x43E0000000000000
  %or.cond17.i = and i1 %i.v, %i.w
  br i1 %or.cond17.i, label %bb.g, label %JS_ToIndex.exit

bb.g:                                             ; preds = %bb.f
  %i.x = fptosi double %.sroa.012.0.le.i.i.i to i64
  br label %bb.i

bb.h:                                             ; preds = %js_dup.exit.i.i
  %i.y = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !1235 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = icmp eq i64 %i.ab, 6
  br i1 %i.ac, label %JS_FreeValue.exit, label %js_dup.exit.i.i

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink.i.i.ph.i = phi i64 [ %i.t, %bb.d ], [ %i.x, %bb.g ] ; 2 uses
  %or.cond.i = icmp ugt i64 %.sink.i.i.ph.i, 9007199254740991
  br i1 %or.cond.i, label %JS_ToIndex.exit, label %bb.j

JS_ToIndex.exit:                                  ; preds = %bb.f, %bb.i
  %i.ad = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.54), !inline_history !1236 ; 0 uses
  br label %JS_FreeValue.exit

bb.j:                                             ; preds = %bb.i, %bb.e
  %.sink.i.i.ph16.sink.i.ph = phi i64 [ 0, %bb.e ], [ %.sink.i.i.ph.i, %bb.i ] ; 2 uses
  %i.ae = zext nneg i8 %i.g to i64
  %i.af = shl i64 %.sink.i.i.ph16.sink.i.ph, %i.ae
  %i.ag = tail call fastcc { i64, i64 } @js_array_buffer_constructor3(ptr noundef %0, i64 0, i64 3, i64 noundef %i.af, ptr noundef null, i32 noundef 20, ptr noundef null, ptr noundef nonnull @js_array_buffer_realloc, ptr noundef null, i1 noundef zeroext true), !inline_history !1237 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  %i.ai = extractvalue { i64, i64 } %i.ag, 1      ; 2 uses
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = icmp eq i64 %i.aj, 6
  br i1 %i.ak, label %JS_FreeValue.exit, label %bb.bs

bb.k:                                             ; preds = %bb.a
  %i.al = load ptr, ptr %4, align 8               ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 18
  %i.an = load i16, ptr %i.am, align 2, !tbaa !117 ; 2 uses
  %i.ao = and i16 %i.an, -2
  %switch = icmp eq i16 %i.ao, 20
  %i.ap = ptrtoint ptr %i.al to i64               ; 6 uses
  br i1 %switch, label %bb.l, label %bb.ah

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = icmp ugt i32 %i.aw, -10
  br i1 %i.ax, label %bb.m, label %js_dup.exit.i.i136.preheader

bb.m:                                             ; preds = %bb.l
  %i.ay = inttoptr i64 %i.at to ptr
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !8
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !8
  br label %js_dup.exit.i.i136.preheader

js_dup.exit.i.i136.preheader:                     ; preds = %bb.m, %bb.l
  br label %js_dup.exit.i.i136

js_dup.exit.i.i136:                               ; preds = %js_dup.exit.i.i136.preheader, %bb.r
  %.sroa.012.0.in.i.i.i137 = phi i64 [ %i.bj, %bb.r ], [ %i.at, %js_dup.exit.i.i136.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i138 = phi i64 [ %i.bk, %bb.r ], [ %i.av, %js_dup.exit.i.i136.preheader ] ; 2 uses
  %i.bc = trunc i64 %.sroa.6.0.i.i.i138 to i32
  switch i32 %i.bc, label %bb.r [
    i32 0, label %bb.n
    i32 1, label %bb.n
    i32 2, label %bb.n
    i32 3, label %bb.n
    i32 6, label %JS_FreeValue.exit
    i32 8, label %bb.o
  ]

bb.n:                                             ; preds = %js_dup.exit.i.i136, %js_dup.exit.i.i136, %js_dup.exit.i.i136, %js_dup.exit.i.i136
  %sext.i.i.i148 = shl i64 %.sroa.012.0.in.i.i.i137, 32
  %i.bd = ashr exact i64 %sext.i.i.i148, 32
  br label %bb.s

bb.o:                                             ; preds = %js_dup.exit.i.i136
  %.sroa.012.0.le.i.i.i139 = bitcast i64 %.sroa.012.0.in.i.i.i137 to double ; 4 uses
  %i.be = fcmp uno double %.sroa.012.0.le.i.i.i139, 0.000000e+00
  br i1 %i.be, label %JS_ToIndex.exit149, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = fcmp uge double %.sroa.012.0.le.i.i.i139, f0xC3E0000000000000
  %i.bg = fcmp ult double %.sroa.012.0.le.i.i.i139, f0x43E0000000000000
  %or.cond17.i140 = and i1 %i.bf, %i.bg
  br i1 %or.cond17.i140, label %bb.q, label %.thread.i141

bb.q:                                             ; preds = %bb.p
  %i.bh = fptosi double %.sroa.012.0.le.i.i.i139 to i64
  br label %bb.s

bb.r:                                             ; preds = %js_dup.exit.i.i136
  %i.bi = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i.i137, i64 %.sroa.6.0.i.i.i138, i32 noundef 0), !inline_history !1235 ; 2 uses
  %i.bj = extractvalue { i64, i64 } %i.bi, 0
  %i.bk = extractvalue { i64, i64 } %i.bi, 1      ; 2 uses
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = icmp eq i64 %i.bl, 6
  br i1 %i.bm, label %JS_FreeValue.exit, label %js_dup.exit.i.i136

bb.s:                                             ; preds = %bb.q, %bb.n
  %.sink.i.i.ph.i146 = phi i64 [ %i.bd, %bb.n ], [ %i.bh, %bb.q ] ; 2 uses
  %or.cond.i147 = icmp ugt i64 %.sink.i.i.ph.i146, 9007199254740991
  br i1 %or.cond.i147, label %.thread.i141, label %JS_ToIndex.exit149

.thread.i141:                                     ; preds = %bb.s, %bb.p
  %i.bn = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.54), !inline_history !1236 ; 0 uses
  br label %JS_FreeValue.exit

JS_ToIndex.exit149:                               ; preds = %bb.s, %bb.o
  %.2163 = phi i64 [ 0, %bb.o ], [ %.sink.i.i.ph.i146, %bb.s ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !578
  %.not128 = icmp eq i8 %i.bp, 0
  br i1 %.not128, label %bb.u, label %bb.t

bb.t:                                             ; preds = %JS_ToIndex.exit149
  %i.bq = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.965), !inline_history !1233 ; 0 uses
  br label %JS_FreeValue.exit

bb.u:                                             ; preds = %JS_ToIndex.exit149
  %notmask = shl nsw i32 -1, %i.h
  %i.br = xor i32 %notmask, -1                    ; 2 uses
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = and i64 %.2163, %i.bs
  %.not129 = icmp eq i64 %i.bt, 0
  br i1 %.not129, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bu = load i32, ptr %i.ar, align 8, !tbaa !416 ; 2 uses
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = icmp ugt i64 %.2163, %i.bv
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bx = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.968) ; 0 uses
  br label %JS_FreeValue.exit

bb.x:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = icmp eq i64 %i.ca, 3
  br i1 %i.cb, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cc = getelementptr i8, ptr %i.ar, i64 4
  %.val = load i32, ptr %i.cc, align 4, !tbaa !1063
  %i.cd = icmp sgt i32 %.val, -1                  ; 2 uses
  %i.ce = and i32 %i.bu, %i.br
  %.not132 = icmp eq i32 %i.ce, 0
  %or.cond = or i1 %.not132, %i.cd
  br i1 %or.cond, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cf = sub nsw i64 %i.bv, %.2163
  %i.cg = zext nneg i8 %i.g to i64
  %i.ch = lshr i64 %i.cf, %i.cg
  br label %bb.af

bb.aa:                                            ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = call i32 @JS_ToIndex(ptr noundef %0, ptr noundef nonnull %i.c, i64 %i.cj, i64 %i.bz)
  %.not130 = icmp eq i32 %i.ck, 0
  br i1 %.not130, label %bb.ab, label %JS_FreeValue.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load i8, ptr %i.bo, align 8, !tbaa !578
  %.not131 = icmp eq i8 %i.cl, 0
  br i1 %.not131, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.965), !inline_history !1233 ; 0 uses
  br label %JS_FreeValue.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cn = load i64, ptr %i.c, align 8, !tbaa !72  ; 2 uses
  %i.co = zext nneg i8 %i.g to i64
  %i.cp = shl i64 %i.cn, %i.co
  %i.cq = add i64 %i.cp, %.2163
  %i.cr = load i32, ptr %i.ar, align 8, !tbaa !416
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp ugt i64 %i.cq, %i.cs
  br i1 %i.ct, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.y, %bb.ad
  %i.cu = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.969) ; 0 uses
  br label %JS_FreeValue.exit

bb.af:                                            ; preds = %bb.ad, %bb.z
  %i.cv = phi i64 [ %i.ch, %bb.z ], [ %i.cn, %bb.ad ] ; 2 uses
  %.1 = phi i1 [ %i.cd, %bb.z ], [ false, %bb.ad ] ; 2 uses
  %i.cw = load i64, ptr %4, align 8               ; 3 uses
  %i.cx = load i64, ptr %i.i, align 8             ; 3 uses
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = icmp ugt i32 %i.cy, -10
  br i1 %i.cz, label %bb.ag, label %bb.bs

bb.ag:                                            ; preds = %bb.af
  %i.da = inttoptr i64 %i.cw to ptr
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !8
  br label %bb.bs

bb.ah:                                            ; preds = %bb.k
  %i.de = add i16 %i.an, -22
  %i.df = icmp ult i16 %i.de, 12
  br i1 %i.df, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !35
  %i.di = tail call fastcc { i64, i64 } @js_typed_array_constructor_ta(ptr noundef %0, i64 %1, i64 %2, i64 %i.ap, i64 %i.j, i32 noundef %5, i32 noundef %i.dh) ; 2 uses
  %i.dj = extractvalue { i64, i64 } %i.di, 0      ; 2 uses
  %.sroa.17.0.extract.shift111 = and i64 %i.dj, -4294967296
  %i.dk = extractvalue { i64, i64 } %i.di, 1
  br label %JS_FreeValue.exit

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.dl = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef %0, i64 %1, i64 %2, i32 noundef %5), !inline_history !1238 ; 2 uses
  %i.dm = extractvalue { i64, i64 } %i.dl, 0      ; 7 uses
  %i.dn = extractvalue { i64, i64 } %i.dl, 1      ; 7 uses
  %i.do = and i64 %i.dn, 4294967295
  %i.dp = icmp eq i64 %i.do, 6
  br i1 %i.dp, label %js_typed_array_constructor_obj.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %i.ap, i64 %i.j, i32 noundef 228, i64 %i.ap, i64 %i.j, i1 noundef zeroext false), !inline_history !1239 ; 2 uses
  %i.dr = extractvalue { i64, i64 } %i.dq, 0      ; 3 uses
  %i.ds = extractvalue { i64, i64 } %i.dq, 1      ; 3 uses
  %trunc.i = trunc i64 %i.ds to i32               ; 2 uses
  switch i32 %trunc.i, label %bb.al [
    i32 6, label %.thread80.i
    i32 3, label %bb.bi
    i32 2, label %bb.bi
  ]

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !232 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !8
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !8
  %i.dy = tail call fastcc { i64, i64 } @JS_NewObjectFromShape(ptr noundef %0, ptr noundef %i.du, i32 noundef 2, ptr noundef null), !inline_history !1240 ; 2 uses
  %i.dz = extractvalue { i64, i64 } %i.dy, 0      ; 7 uses
  %i.ea = extractvalue { i64, i64 } %i.dy, 1      ; 6 uses
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = icmp eq i64 %i.eb, 6
  br i1 %i.ec, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.sroa.454.0.extract.shift.i.i = and i64 %i.dz, -4294967296
  br label %js_array_from_iterator.exit.i

bb.an:                                            ; preds = %bb.al
  %i.ed = tail call fastcc { i64, i64 } @JS_CallInternal(ptr noundef nonnull %0, i64 %i.dr, i64 %i.ds, i64 %i.ap, i64 %i.j, i64 0, i64 3, i32 noundef 0, ptr noundef null, i32 noundef 2), !inline_history !1241 ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0      ; 12 uses
  %i.ef = extractvalue { i64, i64 } %i.ed, 1      ; 12 uses
  %trunc.i.i.i = trunc i64 %i.ef to i32           ; 6 uses
  switch i32 %trunc.i.i.i, label %bb.ao [
    i32 6, label %JS_GetIterator2.exit.i.i
    i32 -1, label %JS_GetIterator2.exit.i.i
  ]

bb.ao:                                            ; preds = %bb.an
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !50
  %i.ei = icmp ugt i32 %trunc.i.i.i, -10
  br i1 %i.ei, label %bb.ap, label %JS_GetIterator2.exit.thread.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.ej = inttoptr i64 %i.ee to ptr
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !8  ; 2 uses
  %i.em = add nsw i32 %i.el, -1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !8
  %i.en = icmp slt i32 %i.el, 2
  br i1 %i.en, label %bb.aq, label %JS_GetIterator2.exit.thread.i.i

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @js_free_value_rt(ptr noundef %i.eh, i64 %i.ee, i64 %i.ef), !inline_history !1242
  br label %JS_GetIterator2.exit.thread.i.i

JS_GetIterator2.exit.thread.i.i:                  ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.eo = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.118), !inline_history !1243 ; 0 uses
  br label %.thread.i.i

JS_GetIterator2.exit.i.i:                         ; preds = %bb.an, %bb.an
  %i.ep = and i64 %i.ef, 4294967295
  %i.eq = icmp eq i64 %i.ep, 6
  br i1 %i.eq, label %.thread.i.i, label %bb.ar

bb.ar:                                            ; preds = %JS_GetIterator2.exit.i.i
  %i.er = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %i.ee, i64 %i.ef, i32 noundef 114, i64 %i.ee, i64 %i.ef, i1 noundef zeroext false), !inline_history !1244 ; 2 uses
  %i.es = extractvalue { i64, i64 } %i.er, 0      ; 6 uses
  %i.et = extractvalue { i64, i64 } %i.er, 1      ; 7 uses
  %i.eu = and i64 %i.et, 4294967295
  %i.ev = icmp eq i64 %i.eu, 6
  br i1 %i.ev, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ar
  %i.ew = call fastcc { i64, i64 } @JS_IteratorNext(ptr noundef nonnull %0, i64 %i.ee, i64 %i.ef, i64 %i.es, i64 %i.et, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !1245 ; 2 uses
  %i.ex = extractvalue { i64, i64 } %i.ew, 1      ; 2 uses
  %i.ey = and i64 %i.ex, 4294967295
  %i.ez = icmp eq i64 %i.ey, 6
  br i1 %i.ez, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %.lr.ph.i.i
  %i.fb = phi i64 [ %i.ex, %.lr.ph.i.i ], [ %i.fl, %bb.au ]
  %.pn.i.i = phi { i64, i64 } [ %i.ew, %.lr.ph.i.i ], [ %i.fk, %bb.au ]
  %.075.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.fj, %bb.au ] ; 5 uses
  %i.fc = load i32, ptr %i.a, align 4, !tbaa !8
  %.not.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fd = extractvalue { i64, i64 } %.pn.i.i, 0
  %i.fe = zext i32 %.075.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %i.fd, ptr %6, align 8
  store i64 %i.fb, ptr %i.fa, align 8
  %or.cond.i.i.i.i = icmp sgt i32 %.075.i.i, -1   ; 2 uses
  %i.ff = uitofp i32 %.075.i.i to double
  %i.fg = bitcast double %i.ff to i64
  %.sroa.0.0.insert.ext.i.pn.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 %i.fe, i64 %i.fg
  %.sroa.3.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 0, i64 8
  %i.fh = tail call i32 @JS_DefinePropertyValueValue(ptr noundef nonnull %0, i64 %i.dz, i64 %i.ea, i64 %.sroa.0.0.insert.ext.i.pn.i.i.i.i, i64 %.sroa.3.0.i.i.i.i, ptr noundef nonnull byval(%struct.JSValue) align 8 %6, i32 noundef 16391), !inline_history !1246
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %.loopexit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fj = add i32 %.075.i.i, 1
  %i.fk = call fastcc { i64, i64 } @JS_IteratorNext(ptr noundef nonnull %0, i64 %i.ee, i64 %i.ef, i64 %i.es, i64 %i.et, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !1245 ; 2 uses
  %i.fl = extractvalue { i64, i64 } %i.fk, 1      ; 2 uses
  %i.fm = and i64 %i.fl, 4294967295
  %i.fn = icmp eq i64 %i.fm, 6
  br i1 %i.fn, label %.loopexit.i.i, label %bb.as

bb.av:                                            ; preds = %bb.as
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !50 ; 3 uses
  %i.fq = trunc i64 %i.et to i32
  %i.fr = icmp ugt i32 %i.fq, -10
  br i1 %i.fr, label %bb.aw, label %JS_FreeValue.exit.i.i

end_hunk_0
begin_hunk_1_@js_typed_array_constructor:bb.a
  %i.iy = add nsw i32 %i.ix, -1
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !8
  %i.iz = icmp slt i32 %i.ix, 2
  br i1 %i.iz, label %bb.bn, label %js_typed_array_constructor_obj.exit

bb.bn:                                            ; preds = %bb.bm
  tail call fastcc void @js_free_value_rt(ptr noundef %i.is, i64 %.sroa.024.0.i, i64 %.sroa.9.0.i), !inline_history !1248
  br label %js_typed_array_constructor_obj.exit

.thread80.i:                                      ; preds = %bb.bi, %bb.ak
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %JS_FreeValue.exit76.i

.loopexit.i:                                      ; preds = %bb.bl, %.lr.ph.i, %bb.bj, %js_dup.exit.i, %JS_FreeValue.exit.i
  %.sroa.024.1.i = phi i64 [ %.sroa.024.0.i, %bb.bj ], [ %.sroa.052.0.insert.insert.i.i, %JS_FreeValue.exit.i ], [ %.sroa.024.0.i, %js_dup.exit.i ], [ %.sroa.024.0.i, %.lr.ph.i ], [ %.sroa.024.0.i, %bb.bl ] ; 2 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.0.i, %bb.bj ], [ %.sroa.557.0.i.i, %JS_FreeValue.exit.i ], [ %.sroa.9.0.i, %js_dup.exit.i ], [ %.sroa.9.0.i, %.lr.ph.i ], [ %.sroa.9.0.i, %bb.bl ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !50
  %i.jd = trunc i64 %.sroa.9.1.i to i32
  %i.je = icmp ugt i32 %i.jd, -10
  br i1 %i.je, label %bb.bo, label %JS_FreeValue.exit76.i

bb.bo:                                            ; preds = %.loopexit.i
  %i.jf = inttoptr i64 %.sroa.024.1.i to ptr
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -4 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !8  ; 2 uses
  %i.ji = add nsw i32 %i.jh, -1
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !8
  %i.jj = icmp slt i32 %i.jh, 2
  br i1 %i.jj, label %bb.bp, label %JS_FreeValue.exit76.i

bb.bp:                                            ; preds = %bb.bo
  tail call fastcc void @js_free_value_rt(ptr noundef %i.jc, i64 %.sroa.024.1.i, i64 %.sroa.9.1.i), !inline_history !1248
  br label %JS_FreeValue.exit76.i

JS_FreeValue.exit76.i:                            ; preds = %bb.bp, %bb.bo, %.loopexit.i, %.thread80.i
  %i.jk = phi ptr [ %i.ja, %.thread80.i ], [ %i.jb, %.loopexit.i ], [ %i.jb, %bb.bo ], [ %i.jb, %bb.bp ]
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !50
  %i.jm = trunc i64 %i.dn to i32
  %i.jn = icmp ugt i32 %i.jm, -10
  br i1 %i.jn, label %bb.bq, label %js_typed_array_constructor_obj.exit

bb.bq:                                            ; preds = %JS_FreeValue.exit76.i
  %i.jo = inttoptr i64 %i.dm to ptr
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -4 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !8  ; 2 uses
  %i.jr = add nsw i32 %i.jq, -1
  store i32 %i.jr, ptr %i.jp, align 4, !tbaa !8
  %i.js = icmp slt i32 %i.jq, 2
  br i1 %i.js, label %bb.br, label %js_typed_array_constructor_obj.exit

bb.br:                                            ; preds = %bb.bq
  tail call fastcc void @js_free_value_rt(ptr noundef %i.jl, i64 %i.dm, i64 %i.dn), !inline_history !1248
  br label %js_typed_array_constructor_obj.exit

js_typed_array_constructor_obj.exit:              ; preds = %bb.aj, %._crit_edge.i, %bb.bm, %bb.bn, %JS_FreeValue.exit76.i, %bb.bq, %bb.br
  %.sroa.472.0.i = phi i64 [ 0, %bb.aj ], [ %i.dm, %bb.bn ], [ %i.dm, %._crit_edge.i ], [ %i.dm, %bb.bm ], [ 0, %JS_FreeValue.exit76.i ], [ 0, %bb.bq ], [ 0, %bb.br ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ 6, %bb.aj ], [ %i.dn, %bb.bn ], [ %i.dn, %._crit_edge.i ], [ %i.dn, %bb.bm ], [ 6, %JS_FreeValue.exit76.i ], [ 6, %bb.bq ], [ 6, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  %.sroa.17.0.extract.shift113 = and i64 %.sroa.472.0.i, -4294967296
  br label %JS_FreeValue.exit

bb.bs:                                            ; preds = %bb.af, %bb.ag, %bb.j
  %i.jt = phi i64 [ %.sink.i.i.ph16.sink.i.ph, %bb.j ], [ %i.cv, %bb.ag ], [ %i.cv, %bb.af ] ; 2 uses
  %.1162 = phi i64 [ 0, %bb.j ], [ %.2163, %bb.ag ], [ %.2163, %bb.af ] ; 4 uses
  %.sroa.039.1 = phi i64 [ %i.ah, %bb.j ], [ %i.cw, %bb.ag ], [ %i.cw, %bb.af ] ; 7 uses
  %.sroa.11.1 = phi i64 [ %i.ai, %bb.j ], [ %i.cx, %bb.ag ], [ %i.cx, %bb.af ] ; 9 uses
  %.3 = phi i1 [ false, %bb.j ], [ %.1, %bb.ag ], [ %.1, %bb.af ] ; 2 uses
  %i.ju = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef %0, i64 %1, i64 %2, i32 noundef %5) ; 2 uses
  %i.jv = extractvalue { i64, i64 } %i.ju, 0      ; 11 uses
  %i.jw = extractvalue { i64, i64 } %i.ju, 1      ; 10 uses
  %i.jx = and i64 %i.jw, 4294967295
  %i.jy = icmp eq i64 %i.jx, 6
  br i1 %i.jy, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !50
  %i.kb = trunc i64 %.sroa.11.1 to i32
  %i.kc = icmp ugt i32 %i.kb, -10
  br i1 %i.kc, label %bb.bu, label %JS_FreeValue.exit

bb.bu:                                            ; preds = %bb.bt
  %i.kd = inttoptr i64 %.sroa.039.1 to ptr
  %i.ke = getelementptr inbounds i8, ptr %i.kd, i64 -4 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !8  ; 2 uses
  %i.kg = add nsw i32 %i.kf, -1
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !8
  %i.kh = icmp slt i32 %i.kf, 2
  br i1 %i.kh, label %bb.bv, label %JS_FreeValue.exit

bb.bv:                                            ; preds = %bb.bu
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ka, i64 %.sroa.039.1, i64 %.sroa.11.1), !inline_history !143
  br label %JS_FreeValue.exit

bb.bw:                                            ; preds = %bb.bs
  %i.ki = inttoptr i64 %.sroa.039.1 to ptr        ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !35 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i8, ptr %i.kl, align 8, !tbaa !578
  %.not134 = icmp eq i8 %i.km, 0
  br i1 %.not134, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !50 ; 3 uses
  %i.kp = trunc i64 %.sroa.11.1 to i32
  %i.kq = icmp ugt i32 %i.kp, -10
  br i1 %i.kq, label %bb.by, label %JS_FreeValue.exit150

bb.by:                                            ; preds = %bb.bx
  %i.kr = getelementptr inbounds i8, ptr %i.ki, i64 -4 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !8  ; 2 uses
  %i.kt = add nsw i32 %i.ks, -1
  store i32 %i.kt, ptr %i.kr, align 4, !tbaa !8
  %i.ku = icmp slt i32 %i.ks, 2
  br i1 %i.ku, label %bb.bz, label %JS_FreeValue.exit150

bb.bz:                                            ; preds = %bb.by
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ko, i64 %.sroa.039.1, i64 %.sroa.11.1), !inline_history !143
  %.pre = load ptr, ptr %i.kn, align 8, !tbaa !50
  br label %JS_FreeValue.exit150

JS_FreeValue.exit150:                             ; preds = %bb.bx, %bb.by, %bb.bz
  %i.kv = phi ptr [ %i.ko, %bb.bx ], [ %i.ko, %bb.by ], [ %.pre, %bb.bz ]
  %i.kw = trunc i64 %i.jw to i32
  %i.kx = icmp ugt i32 %i.kw, -10
  br i1 %i.kx, label %bb.ca, label %JS_FreeValue.exit151

bb.ca:                                            ; preds = %JS_FreeValue.exit150
  %i.ky = inttoptr i64 %i.jv to ptr
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 -4 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !8  ; 2 uses
  %i.lb = add nsw i32 %i.la, -1
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !8
  %i.lc = icmp slt i32 %i.la, 2
  br i1 %i.lc, label %bb.cb, label %JS_FreeValue.exit151

bb.cb:                                            ; preds = %bb.ca
  tail call fastcc void @js_free_value_rt(ptr noundef %i.kv, i64 %i.jv, i64 %i.jw), !inline_history !143
  br label %JS_FreeValue.exit151

JS_FreeValue.exit151:                             ; preds = %JS_FreeValue.exit150, %bb.ca, %bb.cb
  %i.ld = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.965), !inline_history !1233 ; 0 uses
  br label %JS_FreeValue.exit

bb.cc:                                            ; preds = %bb.bw
  %i.le = load i32, ptr %i.kk, align 8, !tbaa !416
  %i.lf = sext i32 %i.le to i64                   ; 3 uses
  %i.lg = icmp ugt i64 %.1162, %i.lf
  br i1 %i.lg, label %bb.cd, label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !50 ; 3 uses
  %i.lj = trunc i64 %.sroa.11.1 to i32
  %i.lk = icmp ugt i32 %i.lj, -10
  br i1 %i.lk, label %bb.ce, label %JS_FreeValue.exit152

bb.ce:                                            ; preds = %bb.cd
  %i.ll = getelementptr inbounds i8, ptr %i.ki, i64 -4 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !8  ; 2 uses
  %i.ln = add nsw i32 %i.lm, -1
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !8
  %i.lo = icmp slt i32 %i.lm, 2
  br i1 %i.lo, label %bb.cf, label %JS_FreeValue.exit152

bb.cf:                                            ; preds = %bb.ce
  tail call fastcc void @js_free_value_rt(ptr noundef %i.li, i64 %.sroa.039.1, i64 %.sroa.11.1), !inline_history !143
  %.pre195 = load ptr, ptr %i.lh, align 8, !tbaa !50
  br label %JS_FreeValue.exit152

JS_FreeValue.exit152:                             ; preds = %bb.cd, %bb.ce, %bb.cf
  %i.lp = phi ptr [ %i.li, %bb.cd ], [ %i.li, %bb.ce ], [ %.pre195, %bb.cf ]
  %i.lq = trunc i64 %i.jw to i32
  %i.lr = icmp ugt i32 %i.lq, -10
  br i1 %i.lr, label %bb.cg, label %JS_FreeValue.exit153

bb.cg:                                            ; preds = %JS_FreeValue.exit152
  %i.ls = inttoptr i64 %i.jv to ptr
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -4 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !8  ; 2 uses
  %i.lv = add nsw i32 %i.lu, -1
  store i32 %i.lv, ptr %i.lt, align 4, !tbaa !8
  %i.lw = icmp slt i32 %i.lu, 2
  br i1 %i.lw, label %bb.ch, label %JS_FreeValue.exit153

bb.ch:                                            ; preds = %bb.cg
  tail call fastcc void @js_free_value_rt(ptr noundef %i.lp, i64 %i.jv, i64 %i.jw), !inline_history !143
  br label %JS_FreeValue.exit153

JS_FreeValue.exit153:                             ; preds = %JS_FreeValue.exit152, %bb.cg, %bb.ch
  %i.lx = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.968) ; 0 uses
  br label %JS_FreeValue.exit

bb.ci:                                            ; preds = %bb.cc
  br i1 %.3, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ly = sub nsw i64 %i.lf, %.1162
  %i.lz = zext nneg i8 %i.g to i64
  %i.ma = lshr i64 %i.ly, %i.lz
  br label %bb.cq

bb.ck:                                            ; preds = %bb.ci
  %i.mb = zext nneg i8 %i.g to i64
  %i.mc = shl i64 %i.jt, %i.mb
  %i.md = add i64 %i.mc, %.1162
  %i.me = icmp ugt i64 %i.md, %i.lf
  br i1 %i.me, label %bb.cl, label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !50 ; 3 uses
  %i.mh = trunc i64 %.sroa.11.1 to i32
  %i.mi = icmp ugt i32 %i.mh, -10
  br i1 %i.mi, label %bb.cm, label %JS_FreeValue.exit154

bb.cm:                                            ; preds = %bb.cl
  %i.mj = getelementptr inbounds i8, ptr %i.ki, i64 -4 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !8  ; 2 uses
  %i.ml = add nsw i32 %i.mk, -1
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !8
  %i.mm = icmp slt i32 %i.mk, 2
  br i1 %i.mm, label %bb.cn, label %JS_FreeValue.exit154

bb.cn:                                            ; preds = %bb.cm
  tail call fastcc void @js_free_value_rt(ptr noundef %i.mg, i64 %.sroa.039.1, i64 %.sroa.11.1), !inline_history !143
  %.pre194 = load ptr, ptr %i.mf, align 8, !tbaa !50
  br label %JS_FreeValue.exit154

JS_FreeValue.exit154:                             ; preds = %bb.cl, %bb.cm, %bb.cn
  %i.mn = phi ptr [ %i.mg, %bb.cl ], [ %i.mg, %bb.cm ], [ %.pre194, %bb.cn ]
  %i.mo = trunc i64 %i.jw to i32
  %i.mp = icmp ugt i32 %i.mo, -10
  br i1 %i.mp, label %bb.co, label %JS_FreeValue.exit155

bb.co:                                            ; preds = %JS_FreeValue.exit154
  %i.mq = inttoptr i64 %i.jv to ptr
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 -4 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !8  ; 2 uses
  %i.mt = add nsw i32 %i.ms, -1
  store i32 %i.mt, ptr %i.mr, align 4, !tbaa !8
  %i.mu = icmp slt i32 %i.ms, 2
  br i1 %i.mu, label %bb.cp, label %JS_FreeValue.exit155

bb.cp:                                            ; preds = %bb.co
  tail call fastcc void @js_free_value_rt(ptr noundef %i.mn, i64 %i.jv, i64 %i.jw), !inline_history !143
  br label %JS_FreeValue.exit155

JS_FreeValue.exit155:                             ; preds = %JS_FreeValue.exit154, %bb.co, %bb.cp
  %i.mv = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.969) ; 0 uses
  br label %JS_FreeValue.exit

bb.cq:                                            ; preds = %bb.ck, %bb.cj
  %i.mw = phi i64 [ %i.jt, %bb.ck ], [ %i.ma, %bb.cj ]
  %i.mx = tail call fastcc i32 @typed_array_init(ptr noundef %0, i64 %i.jv, i64 %.sroa.039.1, i64 %.sroa.11.1, i64 noundef %.1162, i64 noundef %i.mw, i1 noundef zeroext %.3)
  %.not135 = icmp eq i32 %i.mx, 0
  br i1 %.not135, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !50
  %i.na = trunc i64 %i.jw to i32
  %i.nb = icmp ugt i32 %i.na, -10
  br i1 %i.nb, label %bb.cs, label %JS_FreeValue.exit

bb.cs:                                            ; preds = %bb.cr
  %i.nc = inttoptr i64 %i.jv to ptr
  %i.nd = getelementptr inbounds i8, ptr %i.nc, i64 -4 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !8  ; 2 uses
  %i.nf = add nsw i32 %i.ne, -1
  store i32 %i.nf, ptr %i.nd, align 4, !tbaa !8
  %i.ng = icmp slt i32 %i.ne, 2
  br i1 %i.ng, label %bb.ct, label %JS_FreeValue.exit

bb.ct:                                            ; preds = %bb.cs
  tail call fastcc void @js_free_value_rt(ptr noundef %i.mz, i64 %i.jv, i64 %i.jw), !inline_history !143
  br label %JS_FreeValue.exit

bb.cu:                                            ; preds = %bb.cq
  %.sroa.17.0.extract.shift121 = and i64 %i.jv, -4294967296
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.h, %js_dup.exit.i.i, %bb.r, %js_dup.exit.i.i136, %.thread.i141, %bb.aa, %bb.ai, %bb.ac, %bb.ae, %bb.w, %bb.t, %js_typed_array_constructor_obj.exit, %bb.ct, %bb.cs, %bb.cr, %bb.bv, %bb.bu, %bb.bt, %JS_ToIndex.exit, %bb.j, %bb.cu, %JS_FreeValue.exit155, %JS_FreeValue.exit153, %JS_FreeValue.exit151
  %.sroa.095.1 = phi i64 [ 0, %.thread.i141 ], [ 0, %JS_ToIndex.exit ], [ 0, %bb.ct ], [ 0, %JS_FreeValue.exit151 ], [ 0, %JS_FreeValue.exit153 ], [ 0, %bb.bv ], [ %i.jv, %bb.cu ], [ 0, %JS_FreeValue.exit155 ], [ 0, %bb.j ], [ 0, %bb.bt ], [ 0, %bb.bu ], [ 0, %bb.cr ], [ 0, %bb.cs ], [ 0, %bb.r ], [ 0, %bb.aa ], [ %i.dj, %bb.ai ], [ 0, %bb.ac ], [ %.sroa.472.0.i, %js_typed_array_constructor_obj.exit ], [ 0, %bb.ae ], [ 0, %bb.w ], [ 0, %bb.t ], [ 0, %js_dup.exit.i.i136 ], [ 0, %js_dup.exit.i.i ], [ 0, %bb.h ]
  %.sroa.17.1 = phi i64 [ 0, %.thread.i141 ], [ 0, %JS_ToIndex.exit ], [ 0, %bb.ct ], [ 0, %JS_FreeValue.exit151 ], [ 0, %JS_FreeValue.exit153 ], [ 0, %bb.bv ], [ %.sroa.17.0.extract.shift121, %bb.cu ], [ 0, %JS_FreeValue.exit155 ], [ 0, %bb.j ], [ 0, %bb.bt ], [ 0, %bb.bu ], [ 0, %bb.cr ], [ 0, %bb.cs ], [ 0, %bb.r ], [ 0, %bb.aa ], [ %.sroa.17.0.extract.shift111, %bb.ai ], [ 0, %bb.ac ], [ %.sroa.17.0.extract.shift113, %js_typed_array_constructor_obj.exit ], [ 0, %bb.ae ], [ 0, %bb.w ], [ 0, %bb.t ], [ 0, %js_dup.exit.i.i136 ], [ 0, %js_dup.exit.i.i ], [ 0, %bb.h ]
  %.sroa.23.1 = phi i64 [ 6, %.thread.i141 ], [ 6, %JS_ToIndex.exit ], [ 6, %bb.ct ], [ 6, %JS_FreeValue.exit151 ], [ 6, %JS_FreeValue.exit153 ], [ 6, %bb.bv ], [ %i.jw, %bb.cu ], [ 6, %JS_FreeValue.exit155 ], [ 6, %bb.j ], [ 6, %bb.bt ], [ 6, %bb.bu ], [ 6, %bb.cr ], [ 6, %bb.cs ], [ 6, %bb.r ], [ 6, %bb.aa ], [ %i.dk, %bb.ai ], [ 6, %bb.ac ], [ %.sroa.6.0.i, %js_typed_array_constructor_obj.exit ], [ 6, %bb.ae ], [ 6, %bb.w ], [ 6, %bb.t ], [ 6, %js_dup.exit.i.i136 ], [ 6, %js_dup.exit.i.i ], [ 6, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  %.sroa.095.0.insert.ext = and i64 %.sroa.095.1, 4294967295
  %.sroa.095.0.insert.insert = or disjoint i64 %.sroa.17.1, %.sroa.095.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.095.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.23.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_GetTypedArrayBuffer(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %.not.i = icmp eq i64 %i.a, 4294967295
  br i1 %.not.i, label %bb.b, label %get_typed_array.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.d = load i16, ptr %i.c, align 2, !tbaa !117  ; 3 uses
  %i.e = add i16 %i.d, -22
  %i.f = icmp ult i16 %i.e, 12
  br i1 %i.f, label %get_typed_array.exit, label %get_typed_array.exit.thread

get_typed_array.exit.thread:                      ; preds = %bb.a, %bb.b
  %i.g = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.966) ; 0 uses
  br label %bb.l

get_typed_array.exit:                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !571  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !578
  %.not.i27 = icmp eq i8 %i.o, 0
  br i1 %.not.i27, label %bb.c, label %typed_array_is_oob.exit.thread

bb.c:                                             ; preds = %get_typed_array.exit
  %i.p = load i32, ptr %i.m, align 8, !tbaa !416  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !579  ; 3 uses
  %i.s = icmp ugt i32 %i.r, %i.p
  br i1 %i.s, label %typed_array_is_oob.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.u = load i8, ptr %i.t, align 8, !tbaa !580, !range !58, !noundef !59
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %typed_array_is_oob.exit.thread32, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = sext i32 %i.p to i64                     ; 2 uses
  %i.x = zext i32 %i.r to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !581
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, %i.x
  %i.ac = icmp sgt i64 %i.ab, %i.w
  br i1 %i.ac, label %typed_array_is_oob.exit.thread, label %typed_array_is_oob.exit

typed_array_is_oob.exit:                          ; preds = %bb.e
  %i.ad = zext nneg i16 %i.d to i64
  %i.ae = getelementptr i8, ptr @typed_array_size_log2, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -22
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !35
  %i.al = zext i32 %i.ak to i64
  %i.am = sext i32 %i.ai to i64
  %i.an = mul nsw i64 %i.am, %i.al
  %i.ao = add nsw i64 %i.an, %i.x
  %i.ap = icmp sgt i64 %i.ao, %i.w
  br i1 %i.ap, label %typed_array_is_oob.exit.thread, label %typed_array_is_oob.exit.thread32

typed_array_is_oob.exit.thread:                   ; preds = %bb.e, %bb.c, %get_typed_array.exit, %typed_array_is_oob.exit
  %i.aq = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.967), !inline_history !1253 ; 0 uses
  br label %bb.l

typed_array_is_oob.exit.thread32:                 ; preds = %bb.d, %typed_array_is_oob.exit
  %.not24 = icmp eq ptr %3, null
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %typed_array_is_oob.exit.thread32
  %i.ar = zext i32 %i.r to i64
  store i64 %i.ar, ptr %3, align 8, !tbaa !72
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %typed_array_is_oob.exit.thread32
  %.not25 = icmp eq ptr %4, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !581
  %i.au = zext i32 %i.at to i64
  store i64 %i.au, ptr %4, align 8, !tbaa !72
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not26 = icmp eq ptr %5, null
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = zext nneg i16 %i.d to i64
  %i.aw = getelementptr i8, ptr @typed_array_size_log2, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -22
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35
  %i.az = zext nneg i8 %i.ay to i32
end_hunk_1
begin_hunk_2_@js_atof:bb.a
  br i1 %or.cond.i251.2, label %js_to_digit.exit256.thread353.2, label %.thread356

js_to_digit.exit256.thread353.2:                  ; preds = %js_to_digit.exit256.thread353.1
  %i.jf = getelementptr inbounds nuw i8, ptr %.2.i555, i64 3 ; 2 uses
  %i.jg = mul nuw nsw i32 %i.jb, 10
  %i.jh = add nuw nsw i32 %i.je, %i.jg            ; 2 uses
  %i.ji = load i8, ptr %i.jf, align 1, !tbaa !35
  %i.jj = zext i8 %i.ji to i32
  %i.jk = add nsw i32 %i.jj, -48                  ; 2 uses
  %or.cond.i251.3 = icmp ult i32 %i.jk, 10
  br i1 %or.cond.i251.3, label %js_to_digit.exit256.thread353.3, label %.thread356

js_to_digit.exit256.thread353.3:                  ; preds = %js_to_digit.exit256.thread353.2
  %i.jl = getelementptr inbounds nuw i8, ptr %.2.i555, i64 4 ; 2 uses
  %i.jm = mul nuw nsw i32 %i.jh, 10
  %i.jn = add nuw nsw i32 %i.jk, %i.jm            ; 2 uses
  %i.jo = load i8, ptr %i.jl, align 1, !tbaa !35
  %i.jp = zext i8 %i.jo to i32
  %i.jq = add nsw i32 %i.jp, -48                  ; 2 uses
  %or.cond.i251.4 = icmp ult i32 %i.jq, 10
  br i1 %or.cond.i251.4, label %js_to_digit.exit256.thread353.4, label %.thread356

js_to_digit.exit256.thread353.4:                  ; preds = %js_to_digit.exit256.thread353.3
  %i.jr = getelementptr inbounds nuw i8, ptr %.2.i555, i64 5 ; 2 uses
  %i.js = mul nuw nsw i32 %i.jn, 10
  %i.jt = add nuw nsw i32 %i.jq, %i.js            ; 2 uses
  %i.ju = load i8, ptr %i.jr, align 1, !tbaa !35
  %i.jv = zext i8 %i.ju to i32
  %i.jw = add nsw i32 %i.jv, -48                  ; 2 uses
  %or.cond.i251.5 = icmp ult i32 %i.jw, 10
  br i1 %or.cond.i251.5, label %js_to_digit.exit256.thread353.5, label %.thread356

js_to_digit.exit256.thread353.5:                  ; preds = %js_to_digit.exit256.thread353.4
  %i.jx = getelementptr inbounds nuw i8, ptr %.2.i555, i64 6 ; 2 uses
  %i.jy = mul nuw nsw i32 %i.jt, 10
  %i.jz = add nuw nsw i32 %i.jw, %i.jy            ; 2 uses
  %i.ka = load i8, ptr %i.jx, align 1, !tbaa !35
  %i.kb = zext i8 %i.ka to i32
  %i.kc = add nsw i32 %i.kb, -48                  ; 2 uses
  %or.cond.i251.6 = icmp ult i32 %i.kc, 10
  br i1 %or.cond.i251.6, label %js_to_digit.exit256.thread353.6, label %.thread356

js_to_digit.exit256.thread353.6:                  ; preds = %js_to_digit.exit256.thread353.5
  %i.kd = getelementptr inbounds nuw i8, ptr %.2.i555, i64 7 ; 2 uses
  %i.ke = mul nuw nsw i32 %i.jz, 10
  %i.kf = add nuw nsw i32 %i.kc, %i.ke            ; 2 uses
  %i.kg = load i8, ptr %i.kd, align 1, !tbaa !35
  %i.kh = zext i8 %i.kg to i32
  %i.ki = add nsw i32 %i.kh, -48                  ; 2 uses
  %or.cond.i251.7 = icmp ult i32 %i.ki, 10
  br i1 %or.cond.i251.7, label %js_to_digit.exit256.thread353.7, label %.thread356

js_to_digit.exit256.thread353.7:                  ; preds = %js_to_digit.exit256.thread353.6
  %i.kj = getelementptr inbounds nuw i8, ptr %.2.i555, i64 8 ; 2 uses
  %i.kk = mul nuw nsw i32 %i.kf, 10
  %i.kl = add nuw nsw i32 %i.ki, %i.kk            ; 2 uses
  %i.km = load i8, ptr %i.kj, align 1, !tbaa !35
  %i.kn = zext i8 %i.km to i32
  %i.ko = add nsw i32 %i.kn, -48                  ; 2 uses
  %or.cond.i251.8 = icmp ult i32 %i.ko, 10
  br i1 %or.cond.i251.8, label %js_to_digit.exit256.thread353.8, label %.thread356

js_to_digit.exit256.thread353.8:                  ; preds = %js_to_digit.exit256.thread353.7
  %i.kp = mul nuw nsw i32 %i.kl, 10
  %i.kq = add nuw nsw i32 %i.ko, %i.kp
  br label %.thread356

.thread356:                                       ; preds = %js_to_digit.exit256.thread353, %js_to_digit.exit256.thread353.1, %js_to_digit.exit256.thread353.2, %js_to_digit.exit256.thread353.3, %js_to_digit.exit256.thread353.4, %js_to_digit.exit256.thread353.5, %js_to_digit.exit256.thread353.6, %js_to_digit.exit256.thread353.7, %js_to_digit.exit256.thread353.8
  %.085.i411 = phi i64 [ 9, %js_to_digit.exit256.thread353.8 ], [ 8, %js_to_digit.exit256.thread353.7 ], [ 7, %js_to_digit.exit256.thread353.6 ], [ 6, %js_to_digit.exit256.thread353.5 ], [ 5, %js_to_digit.exit256.thread353.4 ], [ 4, %js_to_digit.exit256.thread353.3 ], [ 3, %js_to_digit.exit256.thread353.2 ], [ 2, %js_to_digit.exit256.thread353.1 ], [ 1, %js_to_digit.exit256.thread353 ] ; 2 uses
  %.083.i409 = phi i32 [ %i.kq, %js_to_digit.exit256.thread353.8 ], [ %i.kl, %js_to_digit.exit256.thread353.7 ], [ %i.kf, %js_to_digit.exit256.thread353.6 ], [ %i.jz, %js_to_digit.exit256.thread353.5 ], [ %i.jt, %js_to_digit.exit256.thread353.4 ], [ %i.jn, %js_to_digit.exit256.thread353.3 ], [ %i.jh, %js_to_digit.exit256.thread353.2 ], [ %i.jb, %js_to_digit.exit256.thread353.1 ], [ %i.iu, %js_to_digit.exit256.thread353 ] ; 4 uses
  %.3.i407 = phi ptr [ %scevgep556, %js_to_digit.exit256.thread353.8 ], [ %i.kj, %js_to_digit.exit256.thread353.7 ], [ %i.kd, %js_to_digit.exit256.thread353.6 ], [ %i.jx, %js_to_digit.exit256.thread353.5 ], [ %i.jr, %js_to_digit.exit256.thread353.4 ], [ %i.jl, %js_to_digit.exit256.thread353.3 ], [ %i.jf, %js_to_digit.exit256.thread353.2 ], [ %i.iz, %js_to_digit.exit256.thread353.1 ], [ %i.iv, %js_to_digit.exit256.thread353 ] ; 2 uses
  switch i32 %.088.i554, label %.lr.ph.i [
    i32 1, label %bb.cs
    i32 0, label %js_mp_mul1.exit250
  ]

.lr.ph.i:                                         ; preds = %.thread356
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr @js_pow_dec, i64 %.085.i411
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !8
  %i.kt = zext i32 %i.ks to i64                   ; 3 uses
  %i.ku = zext nneg i32 %.083.i409 to i64
  %wide.trip.count.i = zext i32 %.088.i554 to i64 ; 2 uses
  %xtraiter562 = and i64 %wide.trip.count.i, 1
  %unroll_iter566 = and i64 %wide.trip.count.i, 4294967294
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %.lr.ph.i
  %indvars.iv.i246 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i248.1, %bb.cr ] ; 3 uses
  %.01112.i247 = phi i64 [ %i.ku, %.lr.ph.i ], [ %i.lj, %bb.cr ]
  %niter567 = phi i64 [ 0, %.lr.ph.i ], [ %niter567.next.1, %bb.cr ]
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.i246 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8
  %i.kx = zext i32 %i.kw to i64
  %i.ky = mul nuw i64 %i.kx, %i.kt
  %i.kz = add nuw i64 %i.ky, %.01112.i247         ; 2 uses
  %i.la = trunc i64 %i.kz to i32
  store i32 %i.la, ptr %i.kv, align 4, !tbaa !8
  %i.lb = lshr i64 %i.kz, 32
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.i246
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !8
  %i.lf = zext i32 %i.le to i64
  %i.lg = mul nuw i64 %i.lf, %i.kt
  %i.lh = add nuw i64 %i.lg, %i.lb                ; 2 uses
  %i.li = trunc i64 %i.lh to i32
  store i32 %i.li, ptr %i.ld, align 4, !tbaa !8
  %i.lj = lshr i64 %i.lh, 32                      ; 3 uses
  %indvars.iv.next.i248.1 = add nuw nsw i64 %indvars.iv.i246, 2 ; 2 uses
  %niter567.next.1 = add i64 %niter567, 2         ; 2 uses
  %niter567.ncmp.1 = icmp eq i64 %niter567.next.1, %unroll_iter566
  br i1 %niter567.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.cr, !llvm.loop !1446

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.cr
  %lcmp.mod563.not = icmp eq i64 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa
  %lcmp.mod565 = trunc i32 %.088.i554 to i1
  tail call void @llvm.assume(i1 %lcmp.mod565)
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next.i248.1 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !8
  %i.lm = zext i32 %i.ll to i64
  %i.ln = mul nuw i64 %i.lm, %i.kt
  %i.lo = add nuw i64 %i.ln, %i.lj                ; 2 uses
  %i.lp = trunc i64 %i.lo to i32
  store i32 %i.lp, ptr %i.lk, align 4, !tbaa !8
  %i.lq = lshr i64 %i.lo, 32
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.lj, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.lq, %.epil.preheader ]
  %i.lr = trunc nuw i64 %.lcssa to i32
  br label %js_mp_mul1.exit250

bb.cs:                                            ; preds = %.thread356
  %i.ls = load i32, ptr %i.iq, align 4, !tbaa !8  ; 2 uses
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.ct, label %.split92.i

.split92.i:                                       ; preds = %bb.cs
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr @js_pow_dec, i64 %.085.i411
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !8
  %i.lw = zext i32 %i.lv to i64
  %i.lx = zext nneg i32 %.083.i409 to i64
  %i.ly = zext i32 %i.ls to i64
  %i.lz = mul nuw i64 %i.ly, %i.lw
  %i.ma = add nuw i64 %i.lz, %i.lx                ; 2 uses
  %i.mb = trunc i64 %i.ma to i32
  store i32 %i.mb, ptr %i.iq, align 4, !tbaa !8
  %i.mc = lshr i64 %i.ma, 32
  %i.md = trunc nuw i64 %i.mc to i32
  br label %js_mp_mul1.exit250

bb.ct:                                            ; preds = %bb.cs
  store i32 %.083.i409, ptr %i.iq, align 4, !tbaa !8
  br label %bb.cv

js_mp_mul1.exit250:                               ; preds = %.thread356, %._crit_edge.loopexit.i, %.split92.i
  %phi.call.i = phi i32 [ %i.md, %.split92.i ], [ %.083.i409, %.thread356 ], [ %i.lr, %._crit_edge.loopexit.i ] ; 2 uses
  %.not98.i = icmp eq i32 %phi.call.i, 0
  br i1 %.not98.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %js_mp_mul1.exit250
  %i.me = add nsw i32 %.088.i554, 1
  %i.mf = sext i32 %.088.i554 to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.mf
  store i32 %phi.call.i, ptr %i.mg, align 4, !tbaa !8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %js_mp_mul1.exit250, %bb.ct
  %.189.i = phi i32 [ 1, %bb.ct ], [ %i.me, %bb.cu ], [ %.088.i554, %js_mp_mul1.exit250 ] ; 2 uses
  %i.mh = load i8, ptr %.3.i407, align 1, !tbaa !35
  %i.mi = zext i8 %i.mh to i32
  %i.mj = add nsw i32 %i.mi, -48                  ; 2 uses
  %or.cond.i251 = icmp ugt i32 %i.mj, 9
  br i1 %or.cond.i251, label %js_to_digit.exit256.thread, label %js_to_digit.exit256.thread353

js_to_digit.exit256.thread:                       ; preds = %bb.cv, %bb.cq
  %.088.i.lcssa = phi i32 [ 1, %bb.cq ], [ %.189.i, %bb.cv ] ; 3 uses
  %i.mk = sext i32 %.088.i.lcssa to i64
  %i.ml = getelementptr [4 x i8], ptr %i.iq, i64 %i.mk ; 2 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 -4
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !8
  %.not99.i = icmp sgt i32 %i.mn, -1
  br i1 %.not99.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %js_to_digit.exit256.thread
  %i.mo = add nsw i32 %.088.i.lcssa, 1
  store i32 0, ptr %i.ml, align 4, !tbaa !8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %js_to_digit.exit256.thread
  %.290.i = phi i32 [ %i.mo, %bb.cw ], [ %.088.i.lcssa, %js_to_digit.exit256.thread ] ; 2 uses
  store i32 %.290.i, ptr %i.hq, align 8, !tbaa !8
  br label %.loopexit

bb.cy:                                            ; preds = %bb.cp
  %i.mp = zext nneg i32 %i.he to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.iq, i8 0, i64 %i.mp, i1 false)
  %.not433 = icmp eq i64 %i.gp, 0
  br i1 %.not433, label %.loopexit, label %.lr.ph420.preheader

.lr.ph420.preheader:                              ; preds = %bb.cy
  %7 = getelementptr i8, ptr %.1.i, i64 %i.gp
  br label %.lr.ph420

.lr.ph420:                                        ; preds = %.lr.ph420.preheader, %bb.dd
  %indvars.iv467 = phi i64 [ 0, %.lr.ph420.preheader ], [ %indvars.iv.next468, %bb.dd ] ; 3 uses
  %i.mq = xor i64 %indvars.iv467, -1
  %i.mr = getelementptr i8, ptr %7, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !35  ; 3 uses
  %i.mt = zext i8 %i.ms to i32                    ; 3 uses
  %i.mu = add nsw i32 %i.mt, -48                  ; 2 uses
  %or.cond.i239 = icmp ult i32 %i.mu, 10
  br i1 %or.cond.i239, label %js_to_digit.exit244, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph420
  %i.mv = add i8 %i.ms, -65
  %or.cond3.i240 = icmp ult i8 %i.mv, 26
  br i1 %or.cond3.i240, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.mw = add nsw i32 %i.mt, -55
  br label %js_to_digit.exit244

bb.db:                                            ; preds = %bb.cz
  %i.mx = add i8 %i.ms, -97
  %or.cond5.i241 = icmp ult i8 %i.mx, 26
  %i.my = add nsw i32 %i.mt, -87
  %spec.select.i242 = select i1 %or.cond5.i241, i32 %i.my, i32 36
  br label %js_to_digit.exit244

js_to_digit.exit244:                              ; preds = %.lr.ph420, %bb.da, %bb.db
  %.0.i243 = phi i32 [ %spec.select.i242, %bb.db ], [ %i.mw, %bb.da ], [ %i.mu, %.lr.ph420 ] ; 2 uses
  %i.mz = trunc nuw nsw i64 %indvars.iv467 to i32
  %i.na = mul nuw nsw i32 %i.gv, %i.mz            ; 2 uses
  %i.nb = and i32 %i.na, 31                       ; 3 uses
  %i.nc = lshr i32 %i.na, 5
  %i.nd = shl i32 %.0.i243, %i.nb
  %i.ne = zext nneg i32 %i.nc to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ne ; 3 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !8
  %i.nh = or i32 %i.ng, %i.nd
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !8
  %i.ni = icmp samesign ugt i32 %i.nb, %i.gu
  br i1 %i.ni, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %js_to_digit.exit244
  %i.nj = sub nuw nsw i32 32, %i.nb
  %i.nk = lshr i32 %.0.i243, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nf, i64 4 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !8
  %i.nn = or i32 %i.nm, %i.nk
  store i32 %i.nn, ptr %i.nl, align 4, !tbaa !8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %js_to_digit.exit244
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %exitcond471.not = icmp eq i64 %indvars.iv.next468, %i.gp
  br i1 %exitcond471.not, label %.loopexit, label %.lr.ph420, !llvm.loop !1447

.loopexit:                                        ; preds = %bb.dd, %bb.cy, %bb.cx
  %i.no = phi i32 [ %.290.i, %bb.cx ], [ %i.hb, %bb.cy ], [ %i.hb, %bb.dd ] ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.nq = icmp sgt i32 %i.no, 1
  br i1 %i.nq, label %.lr.ph426, label %js_bigint_normalize.exit

.lr.ph426:                                        ; preds = %.loopexit, %bb.df
  %.0.i.i424 = phi i32 [ %i.oa, %bb.df ], [ %i.no, %.loopexit ] ; 5 uses
  %i.nr = zext nneg i32 %.0.i.i424 to i64
  %i.ns = getelementptr [4 x i8], ptr %i.np, i64 %i.nr ; 2 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 -4
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !8  ; 2 uses
  %i.nv = add i32 %i.nu, -1
  %or.cond.i.i = icmp ult i32 %i.nv, -2
  br i1 %or.cond.i.i, label %._crit_edge427, label %bb.de

bb.de:                                            ; preds = %.lr.ph426
  %i.nw = and i32 %i.nu, 1
  %i.nx = getelementptr i8, ptr %i.ns, i64 -8
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !8
  %i.nz = lshr i32 %i.ny, 31
  %.not.i.i238 = icmp eq i32 %i.nw, %i.nz
  br i1 %.not.i.i238, label %bb.df, label %._crit_edge427

bb.df:                                            ; preds = %bb.de
  %i.oa = add nsw i32 %.0.i.i424, -1
  %i.ob = icmp sgt i32 %.0.i.i424, 2
  br i1 %i.ob, label %.lr.ph426, label %._crit_edge427, !llvm.loop !1448

._crit_edge427:                                   ; preds = %bb.df, %.lr.ph426, %bb.de
  %.0.i.i.lcssa = phi i32 [ %.0.i.i424, %bb.de ], [ 1, %bb.df ], [ %.0.i.i424, %.lr.ph426 ] ; 3 uses
  %.not21.i.i = icmp eq i32 %.0.i.i.lcssa, %i.no
  br i1 %.not21.i.i, label %js_bigint_normalize.exit, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge427
  store i32 %.0.i.i.lcssa, ptr %i.hq, align 8, !tbaa !8
  %i.oc = zext nneg i32 %.0.i.i.lcssa to i64
  %i.od = shl nuw nsw i64 %i.oc, 2
  %i.oe = add nuw nsw i64 %i.od, 4
  %i.of = tail call ptr @js_realloc(ptr noundef %0, ptr noundef nonnull %i.hq, i64 noundef %i.oe), !inline_history !1449 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.of, null
  %spec.select.i.i = select i1 %.not22.i.i, ptr %i.hq, ptr %i.of
  br label %js_bigint_normalize.exit

js_bigint_normalize.exit:                         ; preds = %.loopexit, %._crit_edge427, %bb.dg
  %.1.i.i = phi ptr [ %spec.select.i.i, %bb.dg ], [ %i.hq, %._crit_edge427 ], [ %i.hq, %.loopexit ] ; 3 uses
  br i1 %.not101.i, label %bb.dh, label %js_bigint_from_string.exit

bb.dh:                                            ; preds = %js_bigint_normalize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  store i32 1, ptr %5, align 4, !tbaa !8
  %i.og = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.og, align 4, !tbaa !8
  %i.oh = call fastcc ptr @js_bigint_add(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %.1.i.i, i32 noundef 1), !inline_history !1450
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.oi = load ptr, ptr %i.hg, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.oi, ptr noundef nonnull %.1.i.i)
  br label %js_bigint_from_string.exit

js_bigint_from_string.exit:                       ; preds = %js_bigint_normalize.exit, %bb.dh
  %.0.i233 = phi ptr [ %i.oh, %bb.dh ], [ %.1.i.i, %js_bigint_normalize.exit ] ; 5 uses
  %.not195 = icmp eq ptr %.0.i233, null
  br i1 %.not195, label %.split367, label %bb.di

bb.di:                                            ; preds = %js_bigint_from_string.exit
  %i.oj = load i32, ptr %.0.i233, align 4, !tbaa !8
  %i.ok = icmp eq i32 %i.oj, 1
  br i1 %i.ok, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.i233, i64 4
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !8
  %.sroa.0.0.insert.ext.i.i237 = zext i32 %i.om to i64
  %i.on = load ptr, ptr %i.hg, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.on, ptr noundef nonnull %.0.i233)
  br label %.split367

bb.dk:                                            ; preds = %bb.di
  %i.oo = ptrtoint ptr %.0.i233 to i64
  br label %.split367

.split367:                                        ; preds = %bb.dk, %bb.dj, %bb.co, %bb.cn, %bb.cg, %bb.ce, %js_bigint_from_string.exit, %bb.ca
  %spec.select201 = phi i64 [ 8, %bb.ca ], [ 6, %bb.co ], [ 6, %js_bigint_from_string.exit ], [ 6, %bb.ce ], [ 6, %bb.cg ], [ 6, %bb.cn ], [ 7, %bb.dj ], [ -9, %bb.dk ] ; 2 uses
  %spec.select = phi i64 [ 9221120237041090560, %bb.ca ], [ 0, %bb.co ], [ 0, %js_bigint_from_string.exit ], [ 0, %bb.ce ], [ 0, %bb.cg ], [ 0, %bb.cn ], [ %.sroa.0.0.insert.ext.i.i237, %bb.dj ], [ %i.oo, %bb.dk ] ; 2 uses
  br i1 %i.ex, label %bb.dn, label %.thread360

bb.dl:                                            ; preds = %bb.bx
  tail call void @abort() #50
  unreachable

bb.dm:                                            ; preds = %bb.bz, %double_is_int32.exit.i, %.split.i
  %.sroa.0.0.insert.ext.i.pn.i = phi i64 [ %.sroa.0.0.insert.ext.i.i, %bb.bz ], [ %i.gc, %.split.i ], [ %i.gc, %double_is_int32.exit.i ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ 0, %bb.bz ], [ 8, %.split.i ], [ 8, %double_is_int32.exit.i ] ; 2 uses
  br i1 %i.ex, label %bb.dn, label %.thread360

bb.dn:                                            ; preds = %.split367, %bb.dm
  %.sroa.8.1370 = phi i64 [ %spec.select201, %.split367 ], [ %.sroa.3.0.i, %bb.dm ]
  %i.op = phi i64 [ %spec.select, %.split367 ], [ %.sroa.0.0.insert.ext.i.pn.i, %bb.dm ]
  %.10368 = phi ptr [ %.9344, %.split367 ], [ %.8, %bb.dm ]
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.or, ptr noundef nonnull %.0142)
  br label %.thread360

.thread360:                                       ; preds = %bb.dq, %bb.dp, %.critedge27, %js_to_digit.exit219.thread331, %js_to_digit.exit, %js__strstart.exit, %.split367, %bb.dn, %bb.dm
  %.sroa.8.1366 = phi i64 [ %spec.select201, %.split367 ], [ %.sroa.8.1370, %bb.dn ], [ %.sroa.3.0.i, %bb.dm ], [ 8, %js_to_digit.exit ], [ 8, %js_to_digit.exit219.thread331 ], [ 8, %.critedge27 ], [ 8, %js__strstart.exit ], [ 6, %bb.dp ], [ 6, %bb.dq ]
  %i.os = phi i64 [ %spec.select, %.split367 ], [ %i.op, %bb.dn ], [ %.sroa.0.0.insert.ext.i.pn.i, %bb.dm ], [ 9221120237041090560, %js_to_digit.exit ], [ 9221120237041090560, %js_to_digit.exit219.thread331 ], [ 9221120237041090560, %.critedge27 ], [ %i.ba, %js__strstart.exit ], [ 0, %bb.dp ], [ 0, %bb.dq ]
  %.10365 = phi ptr [ %.9344, %.split367 ], [ %.10368, %bb.dn ], [ %.8, %bb.dm ], [ %.2293, %js_to_digit.exit ], [ %i.dn, %js_to_digit.exit219.thread331 ], [ %.8, %.critedge27 ], [ %scevgep.i, %js__strstart.exit ], [ %.8, %bb.dp ], [ %.8, %bb.dq ]
  %.not197 = icmp eq ptr %2, null
  br i1 %.not197, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %.thread360
  store ptr %.10365, ptr %2, align 8, !tbaa !255
  br label %bb.dr

bb.dp:                                            ; preds = %bb.bo
  %i.ot = load ptr, ptr %i.ey, align 8, !tbaa !50
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1256 ; 3 uses
  %i.ov = load i8, ptr %i.ou, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %.thread360, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i8 1, ptr %i.ou, align 8, !tbaa !57
  %i.ox = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !60 ; 0 uses
  store i8 0, ptr %i.ou, align 8, !tbaa !57
  br label %.thread360

bb.dr:                                            ; preds = %.thread360, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.os, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.1366, 1
  ret { i64, i64 } %.fca.1.insert
}

declare i32 @lre_is_space_non_ascii(i32 noundef) local_unnamed_addr #14

declare double @js_atod(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_bigint_new(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 32768
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143) ; 0 uses
  br label %js_malloc.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 4                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 8 uses
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.j, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10
  %i.l = add i64 %i.k, %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14
  %i.o = add i64 %i.n, -1
  %i.p = icmp ugt i64 %i.l, %i.o
  br i1 %i.p, label %bb.j, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.q = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.g, i64 noundef %i.e) ; 6 uses
  %.not.i11 = icmp eq ptr %i.q, null
  br i1 %.not.i11, label %._crit_edge, label %bb.f

end_hunk_2
begin_hunk_3_@string_buffer_concat_value:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = load i32, ptr %i.a, align 4, !tbaa !1071
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.lr.ph, label %JS_FreeValueRT.exit

bb.c:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %0, align 8, !tbaa !1066
  %i.p = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %i.o, i64 %.tr2938, i64 %.tr3039, i32 noundef 0), !inline_history !335 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 3 uses
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 6
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %0, align 8, !tbaa !1066
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1073
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.y, ptr noundef %i.w)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.a, align 4, !tbaa !1071
  br label %JS_FreeValueRT.exit

bb.e:                                             ; preds = %bb.c
  %i.z = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 2147483647
  %i.ad = tail call fastcc i32 @string_buffer_concat(ptr noundef nonnull %0, ptr noundef nonnull %i.z, i32 noundef 0, i32 noundef %i.ac) ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !1066
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.ah = trunc i64 %i.r to i32
  %i.ai = icmp ugt i32 %i.ah, -10
  br i1 %i.ai, label %bb.f, label %JS_FreeValueRT.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds i8, ptr %i.z, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8  ; 2 uses
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !8
  %i.am = icmp slt i32 %i.ak, 2
  br i1 %i.am, label %bb.g, label %JS_FreeValueRT.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ag, i64 %i.q, i64 %i.r), !inline_history !265
  br label %JS_FreeValueRT.exit

bb.h:                                             ; preds = %.lr.ph
  %i.an = inttoptr i64 %.tr2938 to ptr            ; 9 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 2147483647               ; 3 uses
  %.not.i.not = icmp eq i32 %i.aq, 0
  br i1 %.not.i.not, label %JS_FreeValueRT.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = and i64 %i.ao, 2147483648
  %.not15.i = icmp eq i64 %i.ar, 0
  %i.as = lshr i64 %i.ao, 60
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = and i32 %i.at, 3                        ; 2 uses
  br i1 %.not15.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i32 %i.au, label %default.unreachable [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  br label %str16.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !292
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !294
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb
  br label %str16.exit

bb.m:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !71
  br label %str16.exit

default.unreachable:                              ; preds = %bb.o, %bb.j
  unreachable

bb.n:                                             ; preds = %bb.j
  tail call void @abort() #50
  unreachable

str16.exit:                                       ; preds = %bb.k, %bb.l, %bb.m
  %.0.i.i27 = phi ptr [ %i.av, %bb.k ], [ %i.bc, %bb.l ], [ %i.be, %bb.m ]
  %i.bf = tail call fastcc i32 @string_buffer_write16(ptr noundef nonnull %0, ptr noundef %.0.i.i27, i32 noundef %i.aq), !inline_history !1470
  br label %JS_FreeValueRT.exit

bb.o:                                             ; preds = %bb.i
  switch i32 %i.au, label %default.unreachable [
    i32 0, label %bb.p
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  br label %str8.exit

bb.q:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !292
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !294
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  br label %str8.exit

bb.r:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !71
  br label %str8.exit

bb.s:                                             ; preds = %bb.o
  tail call void @abort() #50
  unreachable

str8.exit:                                        ; preds = %bb.p, %bb.q, %bb.r
  %.0.i.i = phi ptr [ %i.bg, %bb.p ], [ %i.bn, %bb.q ], [ %i.bp, %bb.r ]
  %i.bq = tail call fastcc i32 @string_buffer_write8(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.aq), !inline_history !1470
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %tailrecurse, %bb.b, %bb.a, %str8.exit, %str16.exit, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.1 = phi i32 [ %i.ad, %bb.g ], [ %i.bq, %str8.exit ], [ -1, %bb.d ], [ %i.bf, %str16.exit ], [ 0, %bb.h ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %tailrecurse ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @string_buffer_concat(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %.not = icmp ugt i32 %3, %2
  br i1 %.not, label %bb.b, label %string_buffer_write8.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %i.a, 2147483648
  %.not15 = icmp eq i64 %i.b, 0
  %i.c = lshr i64 %i.a, 60
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 3                          ; 2 uses
  br i1 %.not15, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.e, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %str16.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !294
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  br label %str16.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  br label %str16.exit

default.unreachable:                              ; preds = %bb.o, %bb.s, %bb.h, %bb.c
  unreachable

bb.g:                                             ; preds = %bb.c
  tail call void @abort() #50
  unreachable

str16.exit:                                       ; preds = %bb.d, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.f, %bb.d ], [ %i.m, %bb.e ], [ %i.o, %bb.f ]
  %i.p = zext i32 %2 to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i, i64 %i.p
  %i.r = sub i32 %3, %2
  %i.s = tail call fastcc i32 @string_buffer_write16(ptr noundef %0, ptr noundef %i.q, i32 noundef %i.r)
  br label %string_buffer_write8.exit

bb.h:                                             ; preds = %bb.b
  switch i32 %i.e, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %str8.exit

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !292
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !294
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  br label %str8.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71
  br label %str8.exit

bb.l:                                             ; preds = %bb.h
  tail call void @abort() #50
  unreachable

str8.exit:                                        ; preds = %bb.i, %bb.j, %bb.k
  %.0.i.i16 = phi ptr [ %i.t, %bb.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ]
  %i.ad = zext i32 %2 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 %i.ad ; 2 uses
  %i.af = sub i32 %3, %2                          ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1069
  %i.ai = add nsw i32 %i.ah, %i.af                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !1068
  %i.al = icmp sgt i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %str8.exit
  %i.am = tail call fastcc i32 @string_buffer_realloc(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef 0), !inline_history !1471
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.n, label %string_buffer_write8.exit

bb.n:                                             ; preds = %bb.m, %str8.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1070
  %.not26.i = icmp eq i32 %i.ao, 0
  br i1 %.not26.i, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.ap = icmp sgt i32 %i.af, 0
  br i1 %i.ap, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1073 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %str16.exit23
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %str16.exit23 ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !35
  %i.aw = zext i8 %i.av to i16
  %i.ax = load i64, ptr %i.ar, align 8
  %i.ay = lshr i64 %i.ax, 60
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = and i32 %i.az, 3
  switch i32 %i.ba, label %default.unreachable [
    i32 0, label %str16.exit23
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !292
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i32, ptr %i.at, align 8, !tbaa !294
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  br label %str16.exit23

bb.q:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.as, align 8, !tbaa !71
  br label %str16.exit23

bb.r:                                             ; preds = %bb.o
  tail call void @abort() #50
  unreachable

str16.exit23:                                     ; preds = %bb.o, %bb.p, %bb.q
  %.0.i.i21 = phi ptr [ %i.bg, %bb.q ], [ %i.bf, %bb.p ], [ %i.as, %bb.o ]
  %i.bh = load i32, ptr %i.ag, align 8, !tbaa !1069
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  %i.bj = add nsw i32 %i.bh, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %.0.i.i21, i64 %i.bk
  store i16 %i.aw, ptr %i.bl, align 2, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.o, !llvm.loop !1472

bb.s:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1073 ; 5 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = lshr i64 %i.bo, 60
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = and i32 %i.bq, 3
  switch i32 %i.br, label %default.unreachable [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  br label %str8.exit20

bb.u:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !292
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !294
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.by
  br label %str8.exit20

bb.v:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !71
  br label %str8.exit20

bb.w:                                             ; preds = %bb.s
  tail call void @abort() #50
  unreachable

str8.exit20:                                      ; preds = %bb.t, %bb.u, %bb.v
  %.0.i.i18 = phi ptr [ %i.bs, %bb.t ], [ %i.bz, %bb.u ], [ %i.cb, %bb.v ]
  %i.cc = load i32, ptr %i.ag, align 8, !tbaa !1069
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %.0.i.i18, i64 %i.cd
  %i.cf = sext i32 %i.af to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.ae, i64 %i.cf, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %str16.exit23, %.preheader, %str8.exit20
  %.pn.i = load i32, ptr %i.ag, align 8, !tbaa !1069
  %storemerge.i = add nsw i32 %.pn.i, %i.af
  store i32 %storemerge.i, ptr %i.ag, align 8, !tbaa !1069
  br label %string_buffer_write8.exit

string_buffer_write8.exit:                        ; preds = %.loopexit, %bb.m, %bb.a, %str16.exit
  %.0 = phi i32 [ 0, %bb.a ], [ %i.s, %str16.exit ], [ 0, %.loopexit ], [ -1, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @string_buffer_write16(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader58, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi56 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %wide.load = load <4 x i16>, ptr %i.b, align 2, !tbaa !38
  %wide.load57 = load <4 x i16>, ptr %i.c, align 2, !tbaa !38
  %i.d = zext <4 x i16> %wide.load to <4 x i32>
  %i.e = zext <4 x i16> %wide.load57 to <4 x i32>
  %i.f = or <4 x i32> %vec.phi, %i.d              ; 2 uses
  %i.g = or <4 x i32> %vec.phi56, %i.e            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !1473

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.g, %i.f
  %i.i = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader58

.lr.ph.preheader58:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.03544.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader58, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader58 ] ; 2 uses
  %.03544 = phi i32 [ %i.m, %.lr.ph ], [ %.03544.ph, %.lr.ph.preheader58 ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !38
  %i.l = zext i16 %i.k to i32
  %i.m = or i32 %.03544, %i.l                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1474

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.035.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %middle.block ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1069
  %i.p = add nsw i32 %i.o, %2                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1068 ; 2 uses
  %i.s = icmp sgt i32 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.t = tail call fastcc i32 @string_buffer_realloc(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef %.035.lcssa)
  %.not40 = icmp eq i32 %i.t, 0
  br i1 %.not40, label %bb.e, label %bb.p

end_hunk_3
begin_hunk_4_@js_string_rope_compare:bb.a
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
  br i1 %.not.i, label %bb.g, label %bb.s, !prof !195

bb.g:                                             ; preds = %.lr.ph
  br i1 %.not24.i, label %bb.h, label %bb.q, !prof !195

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
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !292
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %.040109, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !294
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  br label %str8.exit.i

bb.k:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.040109, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !71
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
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !292
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.0110, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !294
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  br label %str8.exit27.i

bb.o:                                             ; preds = %str8.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.0110, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !71
  br label %str8.exit27.i

bb.p:                                             ; preds = %str8.exit.i
  tail call void @abort() #50
  unreachable

str8.exit27.i:                                    ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i25.i = phi ptr [ %i.bi, %bb.m ], [ %i.bp, %bb.n ], [ %i.br, %bb.o ]
  %i.bs = zext nneg i32 %.043107 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i25.i, i64 %i.bs
  %i.bu = zext i32 %..i74 to i64
  %i.bv = tail call i32 @memcmp(ptr noundef %i.be, ptr noundef %i.bt, i64 noundef %i.bu) #52
  br label %js_string_memcmp_pos.exit

bb.q:                                             ; preds = %bb.g
  %i.bw = tail call fastcc ptr @str16(ptr noundef nonnull readonly %.0110)
  %i.bx = zext nneg i32 %.043107 to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = tail call fastcc ptr @str8(ptr noundef nonnull readonly %.040109)
  %i.ca = zext nneg i32 %.045105 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  %i.cc = icmp sgt i32 %..i74, 0
  br i1 %i.cc, label %.lr.ph.preheader.i.i, label %memcmp16_8.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.q
  %wide.trip.count.i.i = zext nneg i32 %..i74 to i64
  br label %.lr.ph.i.i

bb.r:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %memcmp16_8.exit.i, label %.lr.ph.i.i, !llvm.loop !1339

.lr.ph.i.i:                                       ; preds = %bb.r, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.r ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.i.i
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !38
  %i.cf = zext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.i.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !35
  %i.ci = zext i8 %i.ch to i32
  %i.cj = sub nsw i32 %i.cf, %i.ci                ; 2 uses
  %.not.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i, label %bb.r, label %memcmp16_8.exit.i

memcmp16_8.exit.i:                                ; preds = %.lr.ph.i.i, %bb.r, %bb.q
  %.09.i.i = phi i32 [ 0, %bb.q ], [ 0, %bb.r ], [ %i.cj, %.lr.ph.i.i ]
  %i.ck = sub nsw i32 0, %.09.i.i
  br label %js_string_memcmp_pos.exit

bb.s:                                             ; preds = %.lr.ph
  %i.cl = tail call fastcc ptr @str16(ptr noundef nonnull readonly %.040109)
  %i.cm = zext nneg i32 %.045105 to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.cm ; 2 uses
  %i.co = zext nneg i32 %.043107 to i64           ; 2 uses
  %i.cp = icmp sgt i32 %..i74, 0                  ; 2 uses
  br i1 %.not24.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cq = tail call fastcc ptr @str8(ptr noundef nonnull readonly %.0110)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.co
  br i1 %i.cp, label %.lr.ph.preheader.i29.i, label %js_string_memcmp_pos.exit.thread

.lr.ph.preheader.i29.i:                           ; preds = %bb.t
  %wide.trip.count.i30.i = zext nneg i32 %..i74 to i64
  br label %.lr.ph.i31.i

bb.u:                                             ; preds = %.lr.ph.i31.i
  %indvars.iv.next.i34.i = add nuw nsw i64 %indvars.iv.i32.i, 1 ; 2 uses
  %exitcond.not.i35.i = icmp eq i64 %indvars.iv.next.i34.i, %wide.trip.count.i30.i
  br i1 %exitcond.not.i35.i, label %js_string_memcmp_pos.exit.thread, label %.lr.ph.i31.i, !llvm.loop !1339

.lr.ph.i31.i:                                     ; preds = %bb.u, %.lr.ph.preheader.i29.i
  %indvars.iv.i32.i = phi i64 [ 0, %.lr.ph.preheader.i29.i ], [ %indvars.iv.next.i34.i, %bb.u ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv.i32.i
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !38
  %i.cu = zext i16 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.i32.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !35
  %i.cx = zext i8 %i.cw to i32
  %i.cy = sub nsw i32 %i.cu, %i.cx                ; 2 uses
  %.not.i33.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i33.i, label %bb.u, label %js_string_memcmp_pos.exit

bb.v:                                             ; preds = %bb.s
  %i.cz = tail call fastcc ptr @str16(ptr noundef nonnull readonly %.0110)
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.co
  br i1 %i.cp, label %.lr.ph.preheader.i38.i, label %js_string_memcmp_pos.exit.thread

.lr.ph.preheader.i38.i:                           ; preds = %bb.v
  %wide.trip.count.i39.i = zext nneg i32 %..i74 to i64
  br label %.lr.ph.i40.i

bb.w:                                             ; preds = %.lr.ph.i40.i
  %indvars.iv.next.i43.i = add nuw nsw i64 %indvars.iv.i41.i, 1 ; 2 uses
  %exitcond.not.i44.i = icmp eq i64 %indvars.iv.next.i43.i, %wide.trip.count.i39.i
  br i1 %exitcond.not.i44.i, label %js_string_memcmp_pos.exit.thread, label %.lr.ph.i40.i, !llvm.loop !1340

.lr.ph.i40.i:                                     ; preds = %bb.w, %.lr.ph.preheader.i38.i
  %indvars.iv.i41.i = phi i64 [ 0, %.lr.ph.preheader.i38.i ], [ %indvars.iv.next.i43.i, %bb.w ] ; 3 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv.i41.i
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !38
  %i.dd = zext i16 %i.dc to i32
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv.i41.i
  %i.df = load i16, ptr %i.de, align 2, !tbaa !38
  %i.dg = zext i16 %i.df to i32
  %i.dh = sub nsw i32 %i.dd, %i.dg                ; 2 uses
  %.not.i42.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i42.i, label %bb.w, label %js_string_memcmp_pos.exit

js_string_memcmp_pos.exit:                        ; preds = %.lr.ph.i40.i, %.lr.ph.i31.i, %str8.exit27.i, %memcmp16_8.exit.i
  %.0.i75 = phi i32 [ %i.bv, %str8.exit27.i ], [ %i.ck, %memcmp16_8.exit.i ], [ %i.cy, %.lr.ph.i31.i ], [ %i.dh, %.lr.ph.i40.i ] ; 2 uses
  %.not55 = icmp eq i32 %.0.i75, 0
  br i1 %.not55, label %js_string_memcmp_pos.exit.thread, label %.loopexit

js_string_memcmp_pos.exit.thread:                 ; preds = %bb.w, %bb.u, %bb.t, %bb.v, %js_string_memcmp_pos.exit
  %i.di = sub i32 %.047104, %..i74                ; 2 uses
  %i.dj = add i32 %..i74, %.045105                ; 2 uses
  %i.dk = load i64, ptr %.040109, align 8
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = and i32 %i.dl, 2147483647
  %.not56 = icmp ult i32 %i.dj, %i.dm
  br i1 %.not56, label %string_rope_iter_next.exit85, label %bb.x

bb.x:                                             ; preds = %js_string_memcmp_pos.exit.thread
  %i.dn = load i32, ptr %i.o, align 8, !tbaa !1602 ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %string_rope_iter_next.exit85, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = add nsw i32 %i.dn, -1                   ; 2 uses
  store i32 %i.dp, ptr %i.o, align 8, !tbaa !1602
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [16 x i8], ptr %5, i64 %i.dq ; 2 uses
  %.sroa.0.013.i76 = load ptr, ptr %i.dr, align 8, !tbaa !35 ; 2 uses
  %.sroa.6.0.in14.i77 = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.6.015.i78 = load i64, ptr %.sroa.6.0.in14.i77, align 8, !tbaa !72
  %i.ds = and i64 %.sroa.6.015.i78, 4294967295
  %i.dt = icmp eq i64 %i.ds, 4294967289
  br i1 %i.dt, label %string_rope_iter_next.exit85, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.y, %.lr.ph.i79
  %.sroa.0.016.i80 = phi ptr [ %.sroa.0.0.i81, %.lr.ph.i79 ], [ %.sroa.0.013.i76, %bb.y ] ; 3 uses
  %i.du = load i32, ptr %i.o, align 8, !tbaa !1602 ; 2 uses
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.o, align 8, !tbaa !1602
  %i.dw = sext i32 %i.du to i64
  %i.dx = getelementptr inbounds [16 x i8], ptr %5, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i80, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i64 16, i1 false), !tbaa.struct !129
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i80, i64 8
  %.sroa.0.0.i81 = load ptr, ptr %i.dz, align 8, !tbaa !35 ; 2 uses
  %.sroa.6.0.in.i82 = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i80, i64 16
  %.sroa.6.0.i83 = load i64, ptr %.sroa.6.0.in.i82, align 8, !tbaa !72
  %i.ea = and i64 %.sroa.6.0.i83, 4294967295
  %i.eb = icmp eq i64 %i.ea, 4294967289
  br i1 %i.eb, label %string_rope_iter_next.exit85, label %.lr.ph.i79

string_rope_iter_next.exit85:                     ; preds = %.lr.ph.i79, %bb.y, %bb.x, %js_string_memcmp_pos.exit.thread
  %.146 = phi i32 [ %i.dj, %js_string_memcmp_pos.exit.thread ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %.lr.ph.i79 ]
  %.141 = phi ptr [ %.040109, %js_string_memcmp_pos.exit.thread ], [ null, %bb.x ], [ %.sroa.0.013.i76, %bb.y ], [ %.sroa.0.0.i81, %.lr.ph.i79 ]
  %i.ec = add i32 %..i74, %.043107                ; 2 uses
  %i.ed = load i64, ptr %.0110, align 8
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 2147483647
  %.not57 = icmp ult i32 %i.ec, %i.ef
  br i1 %.not57, label %string_rope_iter_next.exit95, label %bb.z

bb.z:                                             ; preds = %string_rope_iter_next.exit85
  %i.eg = load i32, ptr %i.p, align 8, !tbaa !1602 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %string_rope_iter_next.exit95, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.p, align 8, !tbaa !1602
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [16 x i8], ptr %6, i64 %i.ej ; 2 uses
  %.sroa.0.013.i86 = load ptr, ptr %i.ek, align 8, !tbaa !35 ; 2 uses
  %.sroa.6.0.in14.i87 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.6.015.i88 = load i64, ptr %.sroa.6.0.in14.i87, align 8, !tbaa !72
  %i.el = and i64 %.sroa.6.015.i88, 4294967295
  %i.em = icmp eq i64 %i.el, 4294967289
  br i1 %i.em, label %string_rope_iter_next.exit95, label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %bb.aa, %.lr.ph.i89
  %.sroa.0.016.i90 = phi ptr [ %.sroa.0.0.i91, %.lr.ph.i89 ], [ %.sroa.0.013.i86, %bb.aa ] ; 3 uses
  %i.en = load i32, ptr %i.p, align 8, !tbaa !1602 ; 2 uses
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.p, align 8, !tbaa !1602
  %i.ep = sext i32 %i.en to i64
  %i.eq = getelementptr inbounds [16 x i8], ptr %6, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i90, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %i.er, i64 16, i1 false), !tbaa.struct !129
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i90, i64 8
  %.sroa.0.0.i91 = load ptr, ptr %i.es, align 8, !tbaa !35 ; 2 uses
  %.sroa.6.0.in.i92 = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i90, i64 16
  %.sroa.6.0.i93 = load i64, ptr %.sroa.6.0.in.i92, align 8, !tbaa !72
  %i.et = and i64 %.sroa.6.0.i93, 4294967295
  %i.eu = icmp eq i64 %i.et, 4294967289
  br i1 %i.eu, label %string_rope_iter_next.exit95, label %.lr.ph.i89

string_rope_iter_next.exit95:                     ; preds = %.lr.ph.i89, %bb.aa, %bb.z, %string_rope_iter_next.exit85
  %.144 = phi i32 [ %i.ec, %string_rope_iter_next.exit85 ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %.lr.ph.i89 ]
  %.1 = phi ptr [ %.0110, %string_rope_iter_next.exit85 ], [ null, %bb.z ], [ %.sroa.0.013.i86, %bb.aa ], [ %.sroa.0.0.i91, %.lr.ph.i89 ]
  %.not54 = icmp eq i32 %i.di, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph, !llvm.loop !1604

._crit_edge:                                      ; preds = %string_rope_iter_next.exit95, %string_rope_iter_next.exit72
  %.042 = tail call i32 @llvm.ucmp.i32.i32(i32 %.0.i, i32 %.0.i59)
  br label %.loopexit

.loopexit:                                        ; preds = %js_string_memcmp_pos.exit, %string_rope_get_len.exit60, %._crit_edge
  %.048 = phi i32 [ %.042, %._crit_edge ], [ 1, %string_rope_get_len.exit60 ], [ %.0.i75, %js_string_memcmp_pos.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @js_compare_bigint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 %2, i64 %3, i64 %4, i64 %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.JSBigIntBuf, align 4        ; 14 uses
  %7 = alloca %struct.JSBigIntBuf, align 4        ; 14 uses
  %i.a = bitcast i64 %2 to double
  %i.b = bitcast i64 %4 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.c = trunc i64 %3 to i32                      ; 5 uses
  %i.d = trunc i64 %5 to i32                      ; 6 uses
  switch i32 %i.c, label %bb.i [
    i32 7, label %bb.b
    i32 0, label %bb.b
    i32 8, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  switch i32 %i.d, label %bb.t [
    i32 7, label %bb.c
    i32 0, label %bb.c
    i32 8, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.062 = trunc i64 %2 to i32
  %.0 = trunc i64 %4 to i32
  %i.e = tail call i32 @llvm.scmp.i32.i32(i32 %.062, i32 %.0)
  br label %JS_FreeValueRT.exit82

bb.d:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.h [
    i32 0, label %bb.e
    i32 7, label %bb.f
    i32 -9, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.extract.trunc.i = trunc i64 %4 to i32
  store i32 1, ptr %7, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.f, align 4, !tbaa !8
  br label %JS_ToBigIntBuf.exit

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %4 to i32
  store i32 1, ptr %7, align 4, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.g, align 4, !tbaa !8
  br label %JS_ToBigIntBuf.exit

bb.g:                                             ; preds = %bb.d
  %i.h = inttoptr i64 %4 to ptr
  br label %JS_ToBigIntBuf.exit

bb.h:                                             ; preds = %bb.d
  tail call void @abort() #50
  unreachable

JS_ToBigIntBuf.exit:                              ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ %7, %bb.e ], [ %7, %bb.f ], [ %i.h, %bb.g ]
  %i.i = call fastcc i32 @js_bigint_float64_cmp(ptr noundef %.0.i, double noundef %i.a) ; 2 uses
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %JS_FreeValueRT.exit, label %js_bigint_cmp.exit.thread

js_bigint_cmp.exit.thread:                        ; preds = %JS_ToBigIntBuf.exit
  %i.k = sub nsw i32 0, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %JS_FreeValueRT.exit81

bb.i:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.d, 8
  br i1 %i.m, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.b, %bb.i
  switch i32 %i.c, label %bb.n [
    i32 0, label %bb.k
    i32 7, label %bb.l
    i32 -9, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.extract.trunc.i70 = trunc i64 %2 to i32
  store i32 1, ptr %6, align 4, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.extract.trunc.i70, ptr %i.n, align 4, !tbaa !8
  br label %JS_ToBigIntBuf.exit71

bb.l:                                             ; preds = %bb.j
  %.sroa.0.0.extract.trunc.i.i69 = trunc i64 %2 to i32
  store i32 1, ptr %6, align 4, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.extract.trunc.i.i69, ptr %i.o, align 4, !tbaa !8
  br label %JS_ToBigIntBuf.exit71

bb.m:                                             ; preds = %bb.j
  %i.p = inttoptr i64 %2 to ptr
  br label %JS_ToBigIntBuf.exit71
end_hunk_4
begin_hunk_5_@JS_CopySubArray:bb.a
bb.a:
  %7 = alloca %struct.JSValue, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !117
  %.not = icmp eq i16 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 16
  %.not90 = icmp eq i16 %i.h, 0
  br i1 %.not90, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.078 = phi ptr [ null, %bb.d ], [ %i.c, %bb.c ], [ null, %bb.a ] ; 4 uses
  %i.i = icmp sgt i64 %5, 0
  br i1 %i.i, label %.lr.ph109, label %._crit_edge

.lr.ph109:                                        ; preds = %bb.e
  %i.j = icmp slt i32 %6, 0                       ; 3 uses
  %i.k = add nsw i64 %5, %4                       ; 2 uses
  %i.l = add nsw i64 %5, %3                       ; 2 uses
  %.not91 = icmp eq ptr %.078, null
  %i.m = getelementptr inbounds nuw i8, ptr %.078, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.078, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %.078, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br i1 %.not91, label %.lr.ph109.split.us, label %.lr.ph109.split

.lr.ph109.split.us:                               ; preds = %.lr.ph109
  br i1 %i.j, label %.lr.ph109.split.us.split.us, label %.lr.ph109.split.us.split

.lr.ph109.split.us.split.us:                      ; preds = %.lr.ph109.split.us, %bb.i
  %.079108.us.us = phi i64 [ %.1.us.us, %bb.i ], [ 0, %.lr.ph109.split.us ] ; 2 uses
  %i.r = xor i64 %.079108.us.us, -1               ; 2 uses
  %i.s = add i64 %i.k, %i.r
  %i.t = add i64 %i.l, %i.r                       ; 2 uses
  %i.u = call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %i.s, ptr noundef nonnull %7) ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph109.split.us.split.us
  %.not92.us.us = icmp eq i32 %i.u, 0
  br i1 %.not92.us.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %7, align 8
  %i.x = load i64, ptr %i.q, align 8
  %i.y = tail call i32 @JS_SetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %i.t, i64 %i.w, i64 %i.x)
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %._crit_edge, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = tail call i32 @JS_DeletePropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %i.t, i32 noundef 16384)
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.us.us = add nuw nsw i64 %.079108.us.us, 1   ; 2 uses
  %exitcond130.not = icmp eq i64 %.1.us.us, %5
  br i1 %exitcond130.not, label %._crit_edge, label %.lr.ph109.split.us.split.us, !llvm.loop !1771

.lr.ph109.split.us.split:                         ; preds = %.lr.ph109.split.us, %bb.m
  %.079108.us = phi i64 [ %.1.us, %bb.m ], [ 0, %.lr.ph109.split.us ] ; 3 uses
  %i.ac = add nsw i64 %.079108.us, %4
  %i.ad = add nsw i64 %.079108.us, %3             ; 2 uses
  %i.ae = call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %i.ac, ptr noundef nonnull %7) ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph109.split.us.split
  %.not92.us = icmp eq i32 %i.ae, 0
  br i1 %.not92.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load i64, ptr %7, align 8
  %i.ah = load i64, ptr %i.q, align 8
  %i.ai = tail call i32 @JS_SetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %i.ad, i64 %i.ag, i64 %i.ah)
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %._crit_edge, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ak = tail call i32 @JS_DeletePropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %i.ad, i32 noundef 16384)
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.us = add nuw nsw i64 %.079108.us, 1         ; 2 uses
  %exitcond129.not = icmp eq i64 %.1.us, %5
  br i1 %exitcond129.not, label %._crit_edge, label %.lr.ph109.split.us.split, !llvm.loop !1771

.lr.ph109.split:                                  ; preds = %.lr.ph109, %.loopexit
  %.079108 = phi i64 [ %.1, %.loopexit ], [ 0, %.lr.ph109 ] ; 5 uses
  br i1 %i.j, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph109.split
  %i.am = xor i64 %.079108, -1                    ; 2 uses
  %i.an = add i64 %i.k, %i.am
  %i.ao = add i64 %i.l, %i.am
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph109.split
  %i.ap = add nsw i64 %.079108, %4
  %i.aq = add nsw i64 %.079108, %3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.084 = phi i64 [ %i.ao, %bb.n ], [ %i.aq, %bb.o ] ; 7 uses
  %.080 = phi i64 [ %i.an, %bb.n ], [ %i.ap, %bb.o ] ; 7 uses
  %i.ar = load i16, ptr %i.m, align 8
  %i.as = and i16 %i.ar, 16
  %i.at = icmp ne i16 %i.as, 0
  %i.au = icmp sgt i64 %.080, -1
  %or.cond = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.av = load i32, ptr %i.n, align 8, !tbaa !35
  %i.aw = zext i32 %i.av to i64                   ; 4 uses
  %i.ax = icmp samesign ult i64 %.080, %i.aw
  %i.ay = icmp ult i64 %.084, %i.aw
  %or.cond93 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond93, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.az = sub nsw i64 %5, %.079108                ; 2 uses
  br i1 %i.j, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ba = add nuw nsw i64 %.080, 1
  %..i = tail call noundef i64 @llvm.smin.i64(i64 %i.az, i64 %i.ba)
  %i.bb = add nuw nsw i64 %.084, 1
  %..i94 = tail call noundef i64 @llvm.smin.i64(i64 %..i, i64 %i.bb) ; 4 uses
  %i.bc = icmp sgt i64 %..i94, 0
  br i1 %i.bc, label %.lr.ph107, label %.loopexit

.lr.ph107:                                        ; preds = %bb.s, %set_value.exit
  %.081106 = phi i64 [ %i.bz, %set_value.exit ], [ 0, %bb.s ] ; 3 uses
  %i.bd = load ptr, ptr %i.o, align 8, !tbaa !35  ; 2 uses
  %i.be = sub nsw i64 %.084, %.081106
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.be ; 3 uses
  %i.bg = sub nsw i64 %.080, %.081106
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.bg ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp ugt i32 %i.bl, -10
  br i1 %i.bm, label %bb.t, label %js_dup.exit

bb.t:                                             ; preds = %.lr.ph107
  %i.bn = inttoptr i64 %i.bi to ptr
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !8
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %.lr.ph107, %bb.t
  %.sroa.0.0.copyload.i = load i64, ptr %i.bf, align 8, !tbaa !35 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !72 ; 2 uses
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !35
  store i64 %i.bk, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !72
  %i.br = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.bs = trunc i64 %.sroa.4.0.copyload.i to i32
  %i.bt = icmp ugt i32 %i.bs, -10
  br i1 %i.bt, label %bb.u, label %set_value.exit

bb.u:                                             ; preds = %js_dup.exit
  %i.bu = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8  ; 2 uses
  %i.bx = add nsw i32 %i.bw, -1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !8
  %i.by = icmp slt i32 %i.bw, 2
  br i1 %i.by, label %bb.v, label %set_value.exit

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @js_free_value_rt(ptr noundef %i.br, i64 %.sroa.0.0.copyload.i, i64 %.sroa.4.0.copyload.i), !inline_history !287
  br label %set_value.exit

set_value.exit:                                   ; preds = %js_dup.exit, %bb.u, %bb.v
  %i.bz = add nuw nsw i64 %.081106, 1             ; 2 uses
  %exitcond128.not = icmp eq i64 %i.bz, %..i94
  br i1 %exitcond128.not, label %.loopexit, label %.lr.ph107, !llvm.loop !1772

bb.w:                                             ; preds = %bb.r
  %i.ca = sub nsw i64 %i.aw, %.080
  %..i95 = tail call noundef i64 @llvm.smin.i64(i64 %i.az, i64 %i.ca)
  %i.cb = sub nsw i64 %i.aw, %.084
  %..i96 = tail call noundef i64 @llvm.smin.i64(i64 %..i95, i64 %i.cb) ; 4 uses
  %i.cc = icmp sgt i64 %..i96, 0
  br i1 %i.cc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.w, %set_value.exit103
  %.182105 = phi i64 [ %i.cz, %set_value.exit103 ], [ 0, %bb.w ] ; 3 uses
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !35  ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.084
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %.182105 ; 3 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.080
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.182105 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = icmp ugt i32 %i.cl, -10
  br i1 %i.cm, label %bb.x, label %js_dup.exit99

bb.x:                                             ; preds = %.lr.ph
  %i.cn = inttoptr i64 %i.ci to ptr
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !8
  br label %js_dup.exit99

js_dup.exit99:                                    ; preds = %.lr.ph, %bb.x
  %.sroa.0.0.copyload.i100 = load i64, ptr %i.cf, align 8, !tbaa !35 ; 2 uses
  %.sroa.4.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i102 = load i64, ptr %.sroa.4.0..sroa_idx.i101, align 8, !tbaa !72 ; 2 uses
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !35
  store i64 %i.ck, ptr %.sroa.4.0..sroa_idx.i101, align 8, !tbaa !72
  %i.cr = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.cs = trunc i64 %.sroa.4.0.copyload.i102 to i32
  %i.ct = icmp ugt i32 %i.cs, -10
  br i1 %i.ct, label %bb.y, label %set_value.exit103

bb.y:                                             ; preds = %js_dup.exit99
  %i.cu = inttoptr i64 %.sroa.0.0.copyload.i100 to ptr
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !8  ; 2 uses
  %i.cx = add nsw i32 %i.cw, -1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !8
  %i.cy = icmp slt i32 %i.cw, 2
  br i1 %i.cy, label %bb.z, label %set_value.exit103

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cr, i64 %.sroa.0.0.copyload.i100, i64 %.sroa.4.0.copyload.i102), !inline_history !287
  br label %set_value.exit103

set_value.exit103:                                ; preds = %js_dup.exit99, %bb.y, %bb.z
  %i.cz = add nuw nsw i64 %.182105, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cz, %..i96
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1773

bb.aa:                                            ; preds = %bb.q, %bb.p
  %i.da = call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %.080, ptr noundef nonnull %7) ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not92 = icmp eq i32 %i.da, 0
  br i1 %.not92, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load i64, ptr %7, align 8
  %i.dd = load i64, ptr %i.q, align 8
  %i.de = tail call i32 @JS_SetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %.084, i64 %i.dc, i64 %i.dd)
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %._crit_edge, label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.dg = tail call i32 @JS_DeletePropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %.084, i32 noundef 16384)
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %._crit_edge, label %.loopexit

.loopexit:                                        ; preds = %set_value.exit103, %set_value.exit, %bb.w, %bb.s, %bb.ac, %bb.ad
  %.083.pn = phi i64 [ %..i94, %bb.s ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ %..i96, %bb.w ], [ %..i94, %set_value.exit ], [ %..i96, %set_value.exit103 ]
  %.1 = add nsw i64 %.083.pn, %.079108            ; 2 uses
  %i.di = icmp slt i64 %.1, %5
  br i1 %i.di, label %.lr.ph109.split, label %._crit_edge, !llvm.loop !1771

._crit_edge:                                      ; preds = %.loopexit, %bb.ad, %bb.ac, %bb.aa, %bb.m, %bb.l, %bb.k, %.lr.ph109.split.us.split, %bb.i, %bb.h, %bb.g, %.lr.ph109.split.us.split.us, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %.lr.ph109.split.us.split ], [ -1, %.lr.ph109.split.us.split.us ], [ -1, %bb.g ], [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.k ], [ 0, %bb.m ], [ -1, %bb.l ], [ -1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.aa ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = and i64 %2, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295
  %i.d = icmp ult i64 %3, 2147483648              ; 2 uses
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !195

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %1 to ptr
  %i.g = trunc nuw nsw i64 %3 to i32              ; 2 uses
  %i.h = tail call fastcc zeroext i1 @js_get_fast_array_element(ptr noundef %0, ptr noundef %i.f, i32 noundef %i.g, ptr noundef %4)
  br i1 %i.h, label %bb.k, label %JS_NewAtomInt64.exit.thread

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %.JS_NewAtomInt64.exit.thread_crit_edge, label %bb.d

.JS_NewAtomInt64.exit.thread_crit_edge:           ; preds = %bb.c
  %.pre = trunc nuw nsw i64 %3 to i32
  br label %JS_NewAtomInt64.exit.thread

JS_NewAtomInt64.exit.thread:                      ; preds = %.JS_NewAtomInt64.exit.thread_crit_edge, %bb.b
  %.pre-phi = phi i32 [ %.pre, %.JS_NewAtomInt64.exit.thread_crit_edge ], [ %i.g, %bb.b ]
  %i.i = or disjoint i32 %.pre-phi, -2147483648
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.j = call i64 @i64toa(ptr noundef nonnull %i.a, i64 noundef %3) #49, !inline_history !558
  %i.k = trunc i64 %i.j to i32
  %i.l = call fastcc { i64, i64 } @js_new_string8_len(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.k), !inline_history !558 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 1
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp eq i64 %i.n, 6
  br i1 %i.o, label %JS_NewAtomInt64.exit.thread47, label %JS_NewAtomInt64.exit

JS_NewAtomInt64.exit.thread47:                    ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.j

JS_NewAtomInt64.exit:                             ; preds = %bb.d
  %i.p = extractvalue { i64, i64 } %i.l, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = inttoptr i64 %i.p to ptr
  %i.t = call fastcc i32 @__JS_NewAtom(ptr noundef %i.r, ptr noundef %i.s, i32 noundef 1), !inline_history !558 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.j, label %bb.e, !prof !970

bb.e:                                             ; preds = %JS_NewAtomInt64.exit.thread, %JS_NewAtomInt64.exit
  %.1.i46 = phi i32 [ %i.i, %JS_NewAtomInt64.exit.thread ], [ %i.t, %JS_NewAtomInt64.exit ] ; 3 uses
  %i.u = call i32 @JS_HasProperty(ptr noundef %0, i64 %1, i64 %2, i32 noundef %.1.i46) ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef %.1.i46, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !272 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 3 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 3 uses
  %.sroa.012.sroa.7.0.extract.shift = lshr i64 %i.x, 32 ; 2 uses
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 6
  br i1 %i.aa, label %bb.g, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.f
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = icmp eq i32 %i.u, 0
  %spec.select43 = select i1 %i.ab, i64 3, i64 6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g
  %.037 = phi i32 [ -1, %bb.g ], [ %i.u, %bb.f ], [ %i.u, %bb.h ]
  %.sroa.9.0 = phi i64 [ %i.y, %bb.g ], [ %i.y, %bb.f ], [ %spec.select43, %bb.h ]
  %.sroa.012.sroa.0.0 = phi i64 [ %i.x, %bb.g ], [ %i.x, %bb.f ], [ 0, %bb.h ]
  %.sroa.012.sroa.7.0 = phi i64 [ %.sroa.012.sroa.7.0.extract.shift, %bb.g ], [ %.sroa.012.sroa.7.0.extract.shift, %bb.f ], [ 0, %bb.h ]
  call void @JS_FreeAtom(ptr noundef %0, i32 noundef %.1.i46)
  %i.ac = shl nuw i64 %.sroa.012.sroa.7.0, 32
  %i.ad = and i64 %.sroa.012.sroa.0.0, 4294967295
  %i.ae = or disjoint i64 %i.ac, %i.ad
  br label %bb.j

bb.j:                                             ; preds = %JS_NewAtomInt64.exit.thread47, %bb.i, %JS_NewAtomInt64.exit
  %.138 = phi i32 [ %.037, %bb.i ], [ -1, %JS_NewAtomInt64.exit ], [ -1, %JS_NewAtomInt64.exit.thread47 ]
  %.sroa.9.1 = phi i64 [ %.sroa.9.0, %bb.i ], [ 6, %JS_NewAtomInt64.exit ], [ 6, %JS_NewAtomInt64.exit.thread47 ]
  %.sroa.012.sroa.0.0.insert.insert16 = phi i64 [ %i.ae, %bb.i ], [ 0, %JS_NewAtomInt64.exit ], [ 0, %JS_NewAtomInt64.exit.thread47 ]
  store i64 %.sroa.012.sroa.0.0.insert.insert16, ptr %4, align 8, !tbaa !35
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.9.1, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.j
  %.1 = phi i32 [ %.138, %bb.j ], [ 1, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @js_json_isRawJSON(ptr nofree readnone captures(none) %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #11 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !72
  %i.a = and i64 %.sroa.4.0.copyload, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 18
end_hunk_5
begin_hunk_6_@js_string_pad:bb.a
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 6, label %JS_ToInt32Sat.exit
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %.sroa.09.0.extract.trunc.i.i = trunc i64 %.sroa.09.0.in.i.i to i32
  br label %bb.i

bb.e:                                             ; preds = %js_dup.exit.i
  %.sroa.09.0.le.i.i = bitcast i64 %.sroa.09.0.in.i.i to double ; 4 uses
  %i.r = fcmp uno double %.sroa.09.0.le.i.i, 0.000000e+00
  %i.s = fcmp olt double %.sroa.09.0.le.i.i, f0xC1E0000000000000
  %or.cond = or i1 %i.r, %i.s
  br i1 %or.cond, label %JS_FreeValue.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = fcmp ogt double %.sroa.09.0.le.i.i, f0x41DFFFFFFFC00000
  br i1 %i.t, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = fptosi double %.sroa.09.0.le.i.i to i32
  br label %bb.i

bb.h:                                             ; preds = %js_dup.exit.i
  %i.v = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !591 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1        ; 2 uses
  %i.y = and i64 %i.x, 4294967295
  %i.z = icmp eq i64 %i.y, 6
  br i1 %i.z, label %JS_ToInt32Sat.exit, label %js_dup.exit.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.g
  %.1.sink.i.i.ph = phi i32 [ 2147483647, %bb.f ], [ %i.u, %bb.g ], [ %.sroa.09.0.extract.trunc.i.i, %bb.d ] ; 6 uses
  %i.aa = inttoptr i64 %i.d to ptr                ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 2147483647               ; 4 uses
  %.not68 = icmp slt i32 %i.ad, %.1.sink.i.i.ph
  br i1 %.not68, label %bb.j, label %JS_FreeValue.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp sgt i32 %3, 1
  br i1 %i.ae, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = icmp eq i64 %i.ah, 3
  br i1 %i.ai, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.ak, i64 %i.ag, i32 noundef 0), !inline_history !335 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0      ; 4 uses
  %i.an = extractvalue { i64, i64 } %i.al, 1      ; 5 uses
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = icmp eq i64 %i.ao, 6
  br i1 %i.ap, label %JS_ToInt32Sat.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = inttoptr i64 %i.am to ptr               ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 2147483647
  switch i32 %i.at, label %bb.r [
    i32 0, label %bb.n
    i32 1, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !50
  %i.aw = trunc i64 %i.an to i32
  %i.ax = icmp ugt i32 %i.aw, -10
  br i1 %i.ax, label %bb.o, label %JS_FreeValue.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds i8, ptr %i.aq, i64 -4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8  ; 2 uses
  %i.ba = add nsw i32 %i.az, -1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !8
  %i.bb = icmp slt i32 %i.az, 2
  br i1 %i.bb, label %bb.p, label %JS_FreeValue.exit

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @js_free_value_rt(ptr noundef %i.av, i64 %i.am, i64 %i.an), !inline_history !143
  br label %JS_FreeValue.exit

bb.q:                                             ; preds = %bb.m
  %i.bc = tail call fastcc i32 @string_get(ptr noundef nonnull %i.aq, i32 noundef 0)
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q, %bb.k, %bb.j
  %.sroa.026.sroa.0.0 = phi i64 [ 0, %bb.k ], [ %i.am, %bb.m ], [ %i.am, %bb.q ], [ 0, %bb.j ] ; 4 uses
  %.063 = phi ptr [ null, %bb.k ], [ %i.aq, %bb.m ], [ null, %bb.q ], [ null, %bb.j ] ; 3 uses
  %.062 = phi i32 [ 32, %bb.k ], [ 32, %bb.m ], [ %i.bc, %bb.q ], [ 32, %bb.j ]
  %.sroa.9.0 = phi i64 [ 3, %bb.k ], [ %i.an, %bb.m ], [ %i.an, %bb.q ], [ 3, %bb.j ] ; 4 uses
  %i.bd = icmp samesign ugt i32 %.1.sink.i.i.ph, 1073741823
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.3) ; 0 uses
  br label %string_buffer_init.exit

bb.t:                                             ; preds = %bb.r
  store ptr %0, ptr %6, align 8, !tbaa !1066
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %.1.sink.i.i.ph, ptr %i.bf, align 4, !tbaa !1068
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.bg, align 8, !tbaa !1069
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %i.bh, align 8, !tbaa !1070
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 0, ptr %i.bi, align 4, !tbaa !1071
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !50 ; 7 uses
  %narrow = add nuw nsw i32 %.1.sink.i.i.ph, 25
  %i.bl = zext nneg i32 %narrow to i64            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10
  %i.bp = add i64 %i.bo, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !14
  %i.bs = add i64 %i.br, -1
  %i.bt = icmp ugt i64 %i.bp, %i.bs
  br i1 %i.bt, label %bb.z, label %bb.u, !prof !9

bb.u:                                             ; preds = %bb.t
  %i.bu = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.bk, i64 noundef %i.bl), !inline_history !1741 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i, label %bb.v

._crit_edge.i.i:                                  ; preds = %bb.u
  %.pre.i.i = load ptr, ptr %i.bj, align 8, !tbaa !50
  br label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.bv = load i64, ptr %i.bm, align 8, !tbaa !34
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bm, align 8, !tbaa !34
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 -8 ; 3 uses
  %i.by = load i16, ptr %i.bx, align 8, !tbaa !35
  %i.bz = icmp eq i16 %i.by, -1
  br i1 %i.bz, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 1064
  %i.cb = icmp eq ptr %i.bx, %i.ca
  br i1 %i.cb, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !36
  %i.ce = tail call i64 %i.cd(ptr noundef nonnull %i.bx) #49, !inline_history !1096 ; 2 uses
  %.not15.i.i.i.i.i = icmp eq i64 %i.ce, 0
  %i.cf = select i1 %.not15.i.i.i.i.i, i64 8, i64 %i.ce
  br label %bb.ab

bb.y:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds i8, ptr %i.bu, i64 -6
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !35
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !38
  %i.cl = zext i16 %i.ck to i64
  br label %bb.ab

bb.z:                                             ; preds = %._crit_edge.i.i, %bb.t
  %i.cm = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.bk, %bb.t ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1256 ; 3 uses
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !57, !range !58, !noundef !59
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %string_buffer_init.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %i.cn, align 8, !tbaa !57
  %i.cq = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !1097 ; 0 uses
  store i8 0, ptr %i.cn, align 8, !tbaa !57
  br label %string_buffer_init.exit

bb.ab:                                            ; preds = %bb.w, %bb.x, %bb.y
  %.011.i.i.i.i.i = phi i64 [ 8, %bb.w ], [ %i.cf, %bb.x ], [ %i.cl, %bb.y ]
  %i.cr = load i64, ptr %i.bn, align 8, !tbaa !10
  %i.cs = add i64 %i.cr, %.011.i.i.i.i.i
  store i64 %i.cs, ptr %i.bn, align 8, !tbaa !10
  %i.ct = getelementptr inbounds i8, ptr %i.bu, i64 -4
  store i32 1, ptr %i.ct, align 4, !tbaa !8
  %i.cu = zext nneg i32 %.1.sink.i.i.ph to i64
  store i64 %i.cu, ptr %i.bu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 0, ptr %i.cv, align 8, !tbaa !80
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.cw, align 8, !tbaa !1073
  %i.cx = sub nsw i32 %.1.sink.i.i.ph, %i.ad      ; 3 uses
  %.not71 = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %.not71, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = call fastcc i32 @string_buffer_concat(ptr noundef nonnull %6, ptr noundef nonnull %i.aa, i32 noundef 0, i32 noundef %i.ad)
  %.not72 = icmp eq i32 %i.cy, 0
  br i1 %.not72, label %bb.ad, label %.thread116

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not73 = icmp eq ptr %.063, null
  br i1 %.not73, label %bb.af, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %7 = icmp sgt i32 %i.cx, 0
  br i1 %7, label %.lr.ph, label %.loopexit

bb.ae:                                            ; preds = %.lr.ph
  %i.cz = sub nsw i32 %.098121, %i.dd             ; 2 uses
  %8 = icmp sgt i32 %i.cz, 0
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.ae
  %.098121 = phi i32 [ %i.cz, %bb.ae ], [ %i.cx, %.preheader ] ; 2 uses
  %i.da = load i64, ptr %.063, align 8
  %i.db = trunc i64 %i.da to i32
  %i.dc = and i32 %i.db, 2147483647
  %i.dd = tail call i32 @llvm.umin.i32(i32 %.098121, i32 %i.dc) ; 2 uses
  %i.de = call fastcc i32 @string_buffer_concat(ptr noundef nonnull %6, ptr noundef nonnull %.063, i32 noundef 0, i32 noundef %i.dd)
  %.not78 = icmp eq i32 %i.de, 0
  br i1 %.not78, label %bb.ae, label %.thread116

bb.af:                                            ; preds = %bb.ad
  %i.df = call fastcc i32 @string_buffer_fill(ptr noundef %6, i32 noundef %.062, i32 noundef %i.cx)
  %.not74 = icmp eq i32 %i.df, 0
  br i1 %.not74, label %.loopexit, label %.thread116

.loopexit:                                        ; preds = %bb.ae, %.preheader, %bb.af
  br i1 %.not71, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.loopexit
  %i.dg = call fastcc i32 @string_buffer_concat(ptr noundef nonnull %6, ptr noundef nonnull %i.aa, i32 noundef 0, i32 noundef %i.ad)
  %.not75 = icmp eq i32 %i.dg, 0
  br i1 %.not75, label %bb.ah, label %.thread116

bb.ah:                                            ; preds = %bb.ag, %.loopexit
  %i.dh = load ptr, ptr %i.bj, align 8, !tbaa !50 ; 3 uses
  %i.di = trunc i64 %.sroa.9.0 to i32
  %i.dj = icmp ugt i32 %i.di, -10
  br i1 %i.dj, label %bb.ai, label %JS_FreeValue.exit84

bb.ai:                                            ; preds = %bb.ah
  %i.dk = inttoptr i64 %.sroa.026.sroa.0.0 to ptr
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -4 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !8  ; 2 uses
  %i.dn = add nsw i32 %i.dm, -1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !8
  %i.do = icmp slt i32 %i.dm, 2
  br i1 %i.do, label %bb.aj, label %JS_FreeValue.exit84

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @js_free_value_rt(ptr noundef %i.dh, i64 %.sroa.026.sroa.0.0, i64 %.sroa.9.0), !inline_history !143
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !50
  br label %JS_FreeValue.exit84

JS_FreeValue.exit84:                              ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.dp = phi ptr [ %i.dh, %bb.ah ], [ %i.dh, %bb.ai ], [ %.pre, %bb.aj ]
  %i.dq = trunc i64 %i.e to i32
  %i.dr = icmp ugt i32 %i.dq, -10
  br i1 %i.dr, label %bb.ak, label %JS_FreeValue.exit85

bb.ak:                                            ; preds = %JS_FreeValue.exit84
  %i.ds = getelementptr inbounds i8, ptr %i.aa, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8  ; 2 uses
  %i.du = add nsw i32 %i.dt, -1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !8
  %i.dv = icmp slt i32 %i.dt, 2
  br i1 %i.dv, label %bb.al, label %JS_FreeValue.exit85

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @js_free_value_rt(ptr noundef %i.dp, i64 %i.d, i64 %i.e), !inline_history !143
  br label %JS_FreeValue.exit85

JS_FreeValue.exit85:                              ; preds = %JS_FreeValue.exit84, %bb.ak, %bb.al
  %i.dw = call fastcc { i64, i64 } @string_buffer_end(ptr noundef nonnull %6) ; 2 uses
  %i.dx = extractvalue { i64, i64 } %i.dw, 0
  %i.dy = extractvalue { i64, i64 } %i.dw, 1
  br label %JS_FreeValue.exit

.thread116:                                       ; preds = %.lr.ph, %bb.ag, %bb.af, %bb.ac
  %i.dz = load ptr, ptr %6, align 8, !tbaa !1066
  %i.ea = load ptr, ptr %i.cw, align 8, !tbaa !1073
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.ec, ptr noundef %i.ea)
  br label %string_buffer_init.exit

string_buffer_init.exit:                          ; preds = %bb.aa, %bb.z, %.thread116, %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !50
  %i.ef = trunc i64 %.sroa.9.0 to i32
  %i.eg = icmp ugt i32 %i.ef, -10
  br i1 %i.eg, label %bb.am, label %JS_ToInt32Sat.exit

bb.am:                                            ; preds = %string_buffer_init.exit
  %i.eh = inttoptr i64 %.sroa.026.sroa.0.0 to ptr
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -4 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !8  ; 2 uses
  %i.ek = add nsw i32 %i.ej, -1
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !8
  %i.el = icmp slt i32 %i.ej, 2
  br i1 %i.el, label %bb.an, label %JS_ToInt32Sat.exit

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ee, i64 %.sroa.026.sroa.0.0, i64 %.sroa.9.0), !inline_history !143
  br label %JS_ToInt32Sat.exit

JS_ToInt32Sat.exit:                               ; preds = %bb.h, %js_dup.exit.i, %bb.an, %bb.am, %string_buffer_init.exit, %bb.l
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !50
  %i.eo = trunc i64 %i.e to i32
  %i.ep = icmp ugt i32 %i.eo, -10
  br i1 %i.ep, label %bb.ao, label %JS_FreeValue.exit

bb.ao:                                            ; preds = %JS_ToInt32Sat.exit
  %i.eq = inttoptr i64 %i.d to ptr
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -4 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !8  ; 2 uses
  %i.et = add nsw i32 %i.es, -1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !8
  %i.eu = icmp slt i32 %i.es, 2
  br i1 %i.eu, label %bb.ap, label %JS_FreeValue.exit

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @js_free_value_rt(ptr noundef %i.en, i64 %i.d, i64 %i.e), !inline_history !143
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.e, %bb.ap, %bb.ao, %JS_ToInt32Sat.exit, %bb.p, %bb.o, %bb.n, %bb.i, %JS_ToStringCheckObject.exit.thread, %JS_ToStringCheckObject.exit, %JS_FreeValue.exit85
  %i.ev = phi i64 [ %i.dx, %JS_FreeValue.exit85 ], [ 0, %JS_ToStringCheckObject.exit.thread ], [ %i.d, %bb.i ], [ 0, %JS_ToStringCheckObject.exit ], [ %i.d, %bb.p ], [ 0, %bb.ap ], [ %i.d, %bb.n ], [ %i.d, %bb.o ], [ 0, %JS_ToInt32Sat.exit ], [ 0, %bb.ao ], [ %i.d, %bb.e ]
  %.sroa.6.0 = phi i64 [ %i.dy, %JS_FreeValue.exit85 ], [ 6, %JS_ToStringCheckObject.exit.thread ], [ %i.e, %bb.i ], [ 6, %JS_ToStringCheckObject.exit ], [ %i.e, %bb.p ], [ 6, %bb.ap ], [ %i.e, %bb.n ], [ %i.e, %bb.o ], [ 6, %JS_ToInt32Sat.exit ], [ 6, %bb.ao ], [ %i.e, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.ev, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_string_trim(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = and i64 %2, 4294967294
  %or.cond.i = icmp eq i64 %i.a, 2
  br i1 %or.cond.i, label %JS_ToStringCheckObject.exit.thread, label %JS_ToStringCheckObject.exit

JS_ToStringCheckObject.exit.thread:               ; preds = %bb.a
  %i.b = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.194), !inline_history !1548 ; 0 uses
  br label %JS_FreeValue.exit

JS_ToStringCheckObject.exit:                      ; preds = %bb.a
  %i.c = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 0), !inline_history !1549 ; 3 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 3 uses
  %i.f = and i64 %i.e, 4294967295
  %i.g = icmp eq i64 %i.f, 6
  br i1 %i.g, label %JS_FreeValue.exit, label %bb.b

bb.b:                                             ; preds = %JS_ToStringCheckObject.exit
  %i.h = inttoptr i64 %i.d to ptr                 ; 9 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.j, 2147483647                 ; 4 uses
  %.not = trunc i32 %5 to i1
  %i.l = icmp ne i32 %i.k, 0
  %or.cond = select i1 %.not, i1 %i.l, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %wide.trip.count = and i64 %i.i, 2147483647
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.o = load i64, ptr %i.h, align 8              ; 2 uses
  %i.p = and i64 %i.o, 2147483648
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = lshr i64 %i.o, 60
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 3                          ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %i.s, label %.unreachabledefault [
    i32 0, label %string_get.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !292
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.n, align 8, !tbaa !294
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  br label %string_get.exit

bb.f:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !71
  br label %string_get.exit

.unreachabledefault:                              ; preds = %bb.d
  unreachable

default.unreachable:                              ; preds = %bb.h, %bb.t, %bb.p
  unreachable

bb.g:                                             ; preds = %bb.d
  tail call void @abort() #50
  unreachable

end_hunk_6
