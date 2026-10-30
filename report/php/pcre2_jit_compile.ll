Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_jit_compile?download=true
inline.NumInlined: 5888
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@compile_dnref_search:bb.a
  %i.dt = load i32, ptr %i.a, align 8, !tbaa !129
  %.not34.i40 = icmp eq i32 %i.dt, 0
  br i1 %.not34.i40, label %.thread85, label %add_jump.exit48, !prof !172

bb.y:                                             ; preds = %bb.x
  store i8 57, ptr %i.ds, align 1, !tbaa !97
  %.pr84 = load i32, ptr %i.a, align 8, !tbaa !129
  %.not.i55 = icmp eq i32 %.pr84, 0
  br i1 %.not.i55, label %.thread85, label %add_jump.exit48, !prof !152

.thread85:                                        ; preds = %sljit_emit_op2u.exit71, %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 6 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !125 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !134 ; 2 uses
  %i.dy = add i64 %i.dx, 32                       ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 4081
  br i1 %i.dz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread85
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dx
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !134
  br label %bb.ad

bb.aa:                                            ; preds = %.thread85
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !123 ; 2 uses
  %.val.i.i57 = load ptr, ptr %i.ed, align 8, !tbaa !100
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  %.val18.i.i58 = load ptr, ptr %i.ee, align 8, !tbaa !101
  %i.ef = tail call ptr %.val.i.i57(i64 noundef 4096, ptr noundef %.val18.i.i58) #20, !inline_history !7 ; 5 uses
  %.not.i.i59 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i59, label %bb.ac, label %bb.ab, !prof !61

bb.ab:                                            ; preds = %bb.aa
  %i.eg = load ptr, ptr %i.du, align 8, !tbaa !125
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !135
  store ptr %i.ef, ptr %i.du, align 8, !tbaa !125
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 32, ptr %i.eh, align 8, !tbaa !134
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store i32 2, ptr %i.a, align 8, !tbaa !129
  br label %add_jump.exit48

bb.ad:                                            ; preds = %bb.ab, %bb.z
  %.0.i.ph.i60 = phi ptr [ %i.ei, %bb.ab ], [ %i.eb, %bb.z ] ; 7 uses
  store ptr null, ptr %.0.i.ph.i60, align 8, !tbaa !141
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.ph.i60, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false)
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !143 ; 2 uses
  %.not.i20.i61 = icmp eq ptr %i.el, null
  br i1 %.not.i20.i61, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %.0.i.ph.i60, ptr %i.el, align 8, !tbaa !141
  br label %set_jump.exit.i62

bb.af:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.0.i.ph.i60, ptr %i.em, align 8, !tbaa !144
  br label %set_jump.exit.i62

set_jump.exit.i62:                                ; preds = %bb.af, %bb.ae
  store ptr %.0.i.ph.i60, ptr %i.ek, align 8, !tbaa !143
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !136 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.ph.i60, i64 8
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !145
  %i.eq = add i64 %i.eo, 15
  store i64 %i.eq, ptr %i.en, align 8, !tbaa !136
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !124 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !134 ; 2 uses
  %i.ev = add i64 %i.eu, 1                        ; 2 uses
  %i.ew = icmp ult i64 %i.ev, 4081
  br i1 %i.ew, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %set_jump.exit.i62
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.eu
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !134
  br label %sljit_emit_cmp.exit41

bb.ah:                                            ; preds = %set_jump.exit.i62
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !123 ; 2 uses
  %.val.i21.i63 = load ptr, ptr %i.fa, align 8, !tbaa !100
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  %.val18.i22.i64 = load ptr, ptr %i.fb, align 8, !tbaa !101
  %i.fc = tail call ptr %.val.i21.i63(i64 noundef 4096, ptr noundef %.val18.i22.i64) #20, !inline_history !8 ; 5 uses
  %.not.i23.i65 = icmp eq ptr %i.fc, null
  br i1 %.not.i23.i65, label %bb.aj, label %bb.ai, !prof !61

bb.ai:                                            ; preds = %bb.ah
  %i.fd = load ptr, ptr %i.er, align 8, !tbaa !124
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !135
  store ptr %i.fc, ptr %i.er, align 8, !tbaa !124
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 1, ptr %i.fe, align 8, !tbaa !134
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  br label %sljit_emit_cmp.exit41

bb.aj:                                            ; preds = %bb.ah
  store i32 2, ptr %i.a, align 8, !tbaa !129
  br label %add_jump.exit48

sljit_emit_cmp.exit41:                            ; preds = %bb.ag, %bb.ai
  %.0.i24.ph.i66 = phi ptr [ %i.ff, %bb.ai ], [ %i.ey, %bb.ag ]
  store i8 -2, ptr %.0.i24.ph.i66, align 1, !tbaa !97
  %.pr87 = load i32, ptr %i.a, align 8, !tbaa !129
  %.not.i.i42 = icmp eq i32 %.pr87, 0
  br i1 %.not.i.i42, label %bb.ak, label %add_jump.exit48, !prof !139

bb.ak:                                            ; preds = %sljit_emit_cmp.exit41
  %i.fg = load ptr, ptr %i.du, align 8, !tbaa !125 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !134 ; 2 uses
  %i.fj = add i64 %i.fi, 16                       ; 2 uses
  %i.fk = icmp ult i64 %i.fj, 4081
  br i1 %i.fk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fi
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !134
  br label %sljit_alloc_memory.exit.i46

bb.am:                                            ; preds = %bb.ak
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !123 ; 2 uses
  %.val.i.i.i43 = load ptr, ptr %i.fo, align 8, !tbaa !100
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  %.val18.i.i.i44 = load ptr, ptr %i.fp, align 8, !tbaa !101
  %i.fq = tail call ptr %.val.i.i.i43(i64 noundef 4096, ptr noundef %.val18.i.i.i44) #20, !inline_history !17 ; 5 uses
  %.not.i.i.i45 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i45, label %bb.an, label %bb.ao, !prof !61

bb.an:                                            ; preds = %bb.am
  store i32 2, ptr %i.a, align 8, !tbaa !129
  br label %add_jump.exit48

bb.ao:                                            ; preds = %bb.am
  %i.fr = load ptr, ptr %i.du, align 8, !tbaa !125
  store ptr %i.fr, ptr %i.fq, align 8, !tbaa !135
  store ptr %i.fq, ptr %i.du, align 8, !tbaa !125
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 16, ptr %i.fs, align 8, !tbaa !134
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  br label %sljit_alloc_memory.exit.i46

sljit_alloc_memory.exit.i46:                      ; preds = %bb.ao, %bb.al
  %.0.i.i47 = phi ptr [ %i.ft, %bb.ao ], [ %i.fm, %bb.al ] ; 3 uses
  %i.fu = load ptr, ptr %2, align 8, !tbaa !151
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 8
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !157
  store ptr %.0.i.ph.i60, ptr %.0.i.i47, align 8, !tbaa !156
  store ptr %.0.i.i47, ptr %2, align 8, !tbaa !151
  br label %add_jump.exit48

add_jump.exit48:                                  ; preds = %sljit_emit_op2u.exit71, %bb.w, %bb.y, %bb.ac, %bb.aj, %sljit_alloc_memory.exit.i46, %bb.an, %sljit_emit_cmp.exit41, %bb.v, %._crit_edge
  %i.fw = tail call fastcc ptr @sljit_emit_label(ptr noundef nonnull %i.a) ; 2 uses
  %.not4.i = icmp eq ptr %.073.lcssa, null
  %.not6.i.i = icmp eq ptr %i.fw, null
  %or.cond.i = or i1 %.not4.i, %.not6.i.i
  br i1 %or.cond.i, label %set_jumps.exit, label %.lr.ph.split.i, !prof !154

.lr.ph.split.i:                                   ; preds = %add_jump.exit48, %sljit_set_label.exit.i
  %.05.i = phi ptr [ %i.gd, %sljit_set_label.exit.i ], [ %.073.lcssa, %add_jump.exit48 ] ; 2 uses
  %i.fx = load ptr, ptr %.05.i, align 8, !tbaa !156 ; 3 uses
  %.not.i.i49 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i49, label %sljit_set_label.exit.i, label %bb.ap, !prof !153

bb.ap:                                            ; preds = %.lr.ph.split.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !142
  %i.ga = and i64 %i.fz, -2
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !142
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store ptr %i.fw, ptr %i.gb, align 8, !tbaa !97
  br label %sljit_set_label.exit.i

sljit_set_label.exit.i:                           ; preds = %bb.ap, %.lr.ph.split.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !157 ; 2 uses
  %.not.i50 = icmp eq ptr %i.gd, null
  br i1 %.not.i50, label %set_jumps.exit, label %.lr.ph.split.i, !llvm.loop !5

set_jumps.exit:                                   ; preds = %sljit_set_label.exit.i, %add_jump.exit48
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @compile_assert_matchingpath(ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %4 = alloca %struct.backtrack_common, align 8   ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !128    ; 252 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.c = icmp ne i32 %3, 0                        ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.f = select i1 %i.c, ptr %i.d, ptr %i.e       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !176  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !252  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !181  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !168  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !164  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !169  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 8 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !612  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !165  ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !181
  %i.w = load i8, ptr %1, align 1, !tbaa !97      ; 2 uses
  %.off = add i8 %i.w, 105
  %switch = icmp ult i8 %.off, 2                  ; 2 uses
  %.0430.idx = zext i1 %switch to i64
  %.0430 = getelementptr inbounds nuw i8, ptr %1, i64 %.0430.idx ; 10 uses
  %narrow = select i1 %switch, i8 %i.w, i8 -121   ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !117
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !77
  %i.ab = ptrtoint ptr %.0430 to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !46 ; 4 uses
  %i.ag = call fastcc i32 @get_framesize(ptr noundef %0, ptr noundef nonnull %.0430, ptr noundef null, i32 noundef 0, ptr noundef %i.a) ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !260
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !261
  %i.aj = load i8, ptr %.0430, align 1, !tbaa !97 ; 12 uses
  %i.ak = icmp eq i8 %i.aj, 127
  %i.al = icmp eq i8 %i.aj, -127
  %or.cond = or i1 %i.ak, %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.0430, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !97
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0430, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !97
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.0430, i64 %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  %i.av = icmp eq i8 %narrow, -104                ; 5 uses
  br i1 %i.av, label %bb.b, label %sljit_emit_cmp.exit

bb.b:                                             ; preds = %bb.a
  %i.aw = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %bb.c, label %sljit_emit_op1.exit, !prof !130

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i32 0, ptr %i.ax, align 8, !tbaa !132
  %i.ay = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 2, i64 noundef 0, i32 noundef 140, i64 noundef 0) ; 2 uses
  %.not66.i = icmp eq ptr %i.ay, null
  br i1 %.not66.i, label %sljit_emit_op1.exit, label %emit_mov.exit.thread, !prof !61

emit_mov.exit.thread:                             ; preds = %bb.c
  store i8 -117, ptr %i.ay, align 1, !tbaa !97
  br label %sljit_emit_op1.exit

sljit_emit_op1.exit:                              ; preds = %bb.c, %emit_mov.exit.thread, %bb.b
  %.val481 = load ptr, ptr %0, align 8, !tbaa !128 ; 6 uses
  %i.az = load i32, ptr %.val481, align 8, !tbaa !129
  %.not.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i, label %bb.d, label %free_stack.exit, !prof !130

bb.d:                                             ; preds = %sljit_emit_op1.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.val481, i64 144
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.bb = getelementptr inbounds nuw i8, ptr %.val481, i64 72 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !124 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !134 ; 2 uses
  %i.bf = add i64 %i.be, 5                        ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 4081
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.be
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !134
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.val481, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !123 ; 2 uses
  %.val.i.i1268 = load ptr, ptr %i.bk, align 8, !tbaa !100
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %.val18.i.i1269 = load ptr, ptr %i.bl, align 8, !tbaa !101
  %i.bm = tail call ptr %.val.i.i1268(i64 noundef 4096, ptr noundef %.val18.i.i1269) #20, !inline_history !4 ; 5 uses
  %.not.i.i1270 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i1270, label %bb.h, label %bb.g, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.bn = load ptr, ptr %i.bb, align 8, !tbaa !124
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !135
  store ptr %i.bm, ptr %i.bb, align 8, !tbaa !124
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 5, ptr %i.bo, align 8, !tbaa !134
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 2, ptr %.val481, align 8, !tbaa !129
  br label %free_stack.exit

bb.i:                                             ; preds = %bb.g, %bb.e
  %.0.i269.ph.i = phi ptr [ %i.bp, %bb.g ], [ %i.bi, %bb.e ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i, i64 1
  store i8 4, ptr %.0.i269.ph.i, align 1, !tbaa !97
  %i.br = getelementptr inbounds nuw i8, ptr %.val481, i64 120 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !136
  %i.bt = add i64 %i.bs, 4
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !136
  store <4 x i8> <i8 73, i8 -125, i8 -57, i8 8>, ptr %i.bq, align 1, !tbaa !97
  br label %free_stack.exit

free_stack.exit:                                  ; preds = %bb.i, %bb.h, %sljit_emit_op1.exit
  %i.bu = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i482 = icmp eq i32 %i.bu, 0
  br i1 %.not.i482, label %bb.j, label %sljit_emit_cmp.exit, !prof !130

bb.j:                                             ; preds = %free_stack.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i32 0, ptr %i.bv, align 8, !tbaa !132
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 6 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !124 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !134 ; 2 uses
  %i.ca = add i64 %i.bz, 5                        ; 2 uses
  %i.cb = icmp ult i64 %i.ca, 4081
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bz
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !134
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !123 ; 2 uses
  %.val.i.i1275 = load ptr, ptr %i.cf, align 8, !tbaa !100
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  %.val18.i.i1276 = load ptr, ptr %i.cg, align 8, !tbaa !101
  %i.ch = tail call ptr %.val.i.i1275(i64 noundef 4096, ptr noundef %.val18.i.i1276) #20, !inline_history !4 ; 5 uses
  %.not.i.i1277 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i1277, label %sljit_emit_op2u.exit, label %bb.m, !prof !61

bb.m:                                             ; preds = %bb.l
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !124
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !135
  store ptr %i.ch, ptr %i.bw, align 8, !tbaa !124
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 5, ptr %i.cj, align 8, !tbaa !134
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  br label %bb.n

sljit_emit_op2u.exit:                             ; preds = %bb.l
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %sljit_emit_cmp.exit

bb.n:                                             ; preds = %bb.k, %bb.m
  %.0.i269.ph.i1278 = phi ptr [ %i.ck, %bb.m ], [ %i.cd, %bb.k ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i1278, i64 1
  store i8 4, ptr %.0.i269.ph.i1278, align 1, !tbaa !97
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !136
  %i.co = add i64 %i.cn, 4
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !136
  store <4 x i8> <i8 72, i8 -125, i8 -2, i8 0>, ptr %i.cl, align 1, !tbaa !97
  %.pr = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i1043 = icmp eq i32 %.pr, 0
  br i1 %.not.i1043, label %.thread, label %sljit_emit_cmp.exit, !prof !149

.thread:                                          ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !125 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !134 ; 2 uses
  %i.ct = add i64 %i.cs, 32                       ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 4081
  br i1 %i.cu, label %bb.o, label %bb.p
end_hunk_0
begin_hunk_1_@compile_assert_matchingpath:bb.a
  %i.ok = load ptr, ptr %i.u, align 8, !tbaa !165 ; 2 uses
  %.not445 = icmp eq ptr %i.ok, null
  %.not6.i.i = icmp eq ptr %i.oj, null
  %or.cond1685 = select i1 %.not445, i1 true, i1 %.not6.i.i, !prof !166
  br i1 %or.cond1685, label %set_jumps.exit, label %.lr.ph.split.i, !prof !166

.lr.ph.split.i:                                   ; preds = %add_jump.exit, %sljit_set_label.exit.i
  %.05.i574 = phi ptr [ %i.or, %sljit_set_label.exit.i ], [ %i.ok, %add_jump.exit ] ; 2 uses
  %i.ol = load ptr, ptr %.05.i574, align 8, !tbaa !156 ; 3 uses
  %.not.i.i575 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i575, label %sljit_set_label.exit.i, label %bb.cn, !prof !153

bb.cn:                                            ; preds = %.lr.ph.split.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16 ; 2 uses
  %i.on = load i64, ptr %i.om, align 8, !tbaa !142
  %i.oo = and i64 %i.on, -2
  store i64 %i.oo, ptr %i.om, align 8, !tbaa !142
  %i.op = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  store ptr %i.oj, ptr %i.op, align 8, !tbaa !97
  br label %sljit_set_label.exit.i

sljit_set_label.exit.i:                           ; preds = %bb.cn, %.lr.ph.split.i
  %i.oq = getelementptr inbounds nuw i8, ptr %.05.i574, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !157 ; 2 uses
  %.not.i576 = icmp eq ptr %i.or, null
  br i1 %.not.i576, label %set_jumps.exit, label %.lr.ph.split.i, !llvm.loop !5

set_jumps.exit:                                   ; preds = %sljit_set_label.exit.i, %add_jump.exit
  br i1 %i.eo, label %bb.co, label %bb.cz

bb.co:                                            ; preds = %set_jumps.exit
  br i1 %i.la, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.os = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i577 = icmp eq i32 %i.os, 0
  br i1 %.not.i577, label %bb.cq, label %sljit_emit_op1.exit581, !prof !130

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.ot = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 12, i64 noundef 0, i32 noundef 142, i64 noundef %i.kh) ; 2 uses
  %.not66.i1125 = icmp eq ptr %i.ot, null
  br i1 %.not66.i1125, label %sljit_emit_op1.exit581, label %emit_mov.exit1127.thread, !prof !61

emit_mov.exit1127.thread:                         ; preds = %bb.cq
  store i8 -117, ptr %i.ot, align 1, !tbaa !97
  br label %sljit_emit_op1.exit581

bb.cr:                                            ; preds = %bb.co
  br i1 %i.jx, label %bb.cs, label %sljit_emit_op1.exit581

bb.cs:                                            ; preds = %bb.cr
  %.val480 = load ptr, ptr %0, align 8, !tbaa !128 ; 3 uses
  %i.ou = load i32, ptr %.val480, align 8, !tbaa !129
  %.not.i.i582 = icmp eq i32 %i.ou, 0
  br i1 %.not.i.i582, label %bb.ct, label %sljit_emit_op1.exit581, !prof !130

bb.ct:                                            ; preds = %bb.cs
  %i.ov = getelementptr inbounds nuw i8, ptr %.val480, i64 144
  store i32 0, ptr %i.ov, align 8, !tbaa !132
  %i.ow = call fastcc i32 @emit_cum_binary(ptr noundef nonnull %.val480, i32 noundef 84082944, i32 noundef 12, i64 noundef 0, i32 noundef 12, i64 noundef 0, i32 noundef 127, i64 noundef %i.lb) ; 0 uses
  br label %sljit_emit_op1.exit581

sljit_emit_op1.exit581:                           ; preds = %bb.cq, %bb.ct, %bb.cs, %bb.cp, %emit_mov.exit1127.thread, %bb.cr
  br i1 %i.en, label %bb.cu, label %sljit_emit_op1.exit588

bb.cu:                                            ; preds = %sljit_emit_op1.exit581
  %i.ox = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i584 = icmp eq i32 %i.ox, 0
  br i1 %.not.i584, label %bb.cv, label %sljit_emit_op1.exit588, !prof !130

bb.cv:                                            ; preds = %bb.cu
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.oy = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 13, i64 noundef 0, i32 noundef 140, i64 noundef %i.ld) ; 2 uses
  %.not66.i1128 = icmp eq ptr %i.oy, null
  br i1 %.not66.i1128, label %sljit_emit_op1.exit588, label %emit_mov.exit1130.thread, !prof !61

emit_mov.exit1130.thread:                         ; preds = %bb.cv
  store i8 -117, ptr %i.oy, align 1, !tbaa !97
  br label %sljit_emit_op1.exit588

sljit_emit_op1.exit588:                           ; preds = %bb.cv, %bb.cu, %emit_mov.exit1130.thread, %sljit_emit_op1.exit581
  %i.oz = load i32, ptr %i.a, align 4, !tbaa !46
  %.not448 = icmp eq i32 %i.oz, 0
  br i1 %.not448, label %sljit_emit_op1.exit593, label %bb.cw

bb.cw:                                            ; preds = %sljit_emit_op1.exit588
  %i.pa = load i32, ptr %i.km, align 4, !tbaa !108
  %i.pb = sext i32 %i.pa to i64
  %i.pc = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i589 = icmp eq i32 %i.pc, 0
  br i1 %.not.i589, label %bb.cx, label %sljit_emit_op1.exit593, !prof !130

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.pd = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 140, i64 noundef -8) ; 2 uses
  %.not.i1131 = icmp eq ptr %i.pd, null
  br i1 %.not.i1131, label %sljit_emit_op1.exit593, label %bb.cy, !prof !61

bb.cy:                                            ; preds = %bb.cx
  store i8 -117, ptr %i.pd, align 1, !tbaa !97
  %i.pe = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.pb) ; 2 uses
  %.not65.i = icmp eq ptr %i.pe, null
  br i1 %.not65.i, label %sljit_emit_op1.exit593, label %emit_mov.exit1133.thread, !prof !61

emit_mov.exit1133.thread:                         ; preds = %bb.cy
  store i8 -119, ptr %i.pe, align 1, !tbaa !97
  br label %sljit_emit_op1.exit593

bb.cz:                                            ; preds = %set_jumps.exit
  %i.pf = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i594 = icmp eq i32 %i.pf, 0               ; 2 uses
  br i1 %or.cond20, label %bb.da, label %bb.dh

bb.da:                                            ; preds = %bb.cz
  br i1 %.not.i594, label %bb.db, label %sljit_emit_op2.exit, !prof !130

bb.db:                                            ; preds = %bb.da
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.pg = call fastcc i32 @emit_non_cum_binary(ptr noundef nonnull %i.b, i32 noundef 757803304, i32 noundef 12, i64 noundef 0, i32 noundef 142, i64 noundef %i.kh, i32 noundef 127, i64 noundef %i.kw) ; 0 uses
  br label %sljit_emit_op2.exit

sljit_emit_op2.exit:                              ; preds = %bb.da, %bb.db
  br i1 %i.en, label %bb.dc, label %sljit_emit_op1.exit600

bb.dc:                                            ; preds = %sljit_emit_op2.exit
  %i.ph = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i596 = icmp eq i32 %i.ph, 0
  br i1 %.not.i596, label %bb.dd, label %sljit_emit_op1.exit600, !prof !130

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.pi = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 13, i64 noundef 0, i32 noundef 140, i64 noundef %i.kz) ; 2 uses
  %.not66.i1134 = icmp eq ptr %i.pi, null
  br i1 %.not66.i1134, label %sljit_emit_op1.exit600, label %emit_mov.exit1136.thread, !prof !61

emit_mov.exit1136.thread:                         ; preds = %bb.dd
  store i8 -117, ptr %i.pi, align 1, !tbaa !97
  br label %sljit_emit_op1.exit600

sljit_emit_op1.exit600:                           ; preds = %bb.dd, %bb.dc, %emit_mov.exit1136.thread, %sljit_emit_op2.exit
  %i.pj = load i32, ptr %i.a, align 4, !tbaa !46
  %.not447 = icmp eq i32 %i.pj, 0
  br i1 %.not447, label %sljit_emit_op1.exit593, label %bb.de

bb.de:                                            ; preds = %sljit_emit_op1.exit600
  %i.pk = load i32, ptr %i.km, align 4, !tbaa !108
  %i.pl = sext i32 %i.pk to i64
  %i.pm = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i601 = icmp eq i32 %i.pm, 0
  br i1 %.not.i601, label %bb.df, label %sljit_emit_op1.exit593, !prof !130

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.pn = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 140, i64 noundef -8) ; 2 uses
  %.not.i1137 = icmp eq ptr %i.pn, null
  br i1 %.not.i1137, label %sljit_emit_op1.exit593, label %bb.dg, !prof !61

bb.dg:                                            ; preds = %bb.df
  store i8 -117, ptr %i.pn, align 1, !tbaa !97
  %i.po = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.pl) ; 2 uses
  %.not65.i1138 = icmp eq ptr %i.po, null
  br i1 %.not65.i1138, label %sljit_emit_op1.exit593, label %emit_mov.exit1140.thread, !prof !61

emit_mov.exit1140.thread:                         ; preds = %bb.dg
  store i8 -119, ptr %i.po, align 1, !tbaa !97
  br label %sljit_emit_op1.exit593

bb.dh:                                            ; preds = %bb.cz
  br i1 %.not.i594, label %bb.di, label %sljit_emit_op1.exit610, !prof !130

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.pp = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 12, i64 noundef 0, i32 noundef 142, i64 noundef %i.kh) ; 2 uses
  %.not66.i1141 = icmp eq ptr %i.pp, null
  br i1 %.not66.i1141, label %sljit_emit_op1.exit610, label %emit_mov.exit1143.thread, !prof !61

emit_mov.exit1143.thread:                         ; preds = %bb.di
  store i8 -117, ptr %i.pp, align 1, !tbaa !97
  br label %sljit_emit_op1.exit610

sljit_emit_op1.exit610:                           ; preds = %bb.di, %emit_mov.exit1143.thread, %bb.dh
  br i1 %i.en, label %bb.dj, label %sljit_emit_op1.exit615

bb.dj:                                            ; preds = %sljit_emit_op1.exit610
  %i.pq = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i611 = icmp eq i32 %i.pq, 0
  br i1 %.not.i611, label %bb.dk, label %sljit_emit_op1.exit615, !prof !130

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.pr = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 13, i64 noundef 0, i32 noundef 140, i64 noundef %i.kl) ; 2 uses
  %.not66.i1144 = icmp eq ptr %i.pr, null
  br i1 %.not66.i1144, label %sljit_emit_op1.exit615, label %emit_mov.exit1146.thread, !prof !61

emit_mov.exit1146.thread:                         ; preds = %bb.dk
  store i8 -117, ptr %i.pr, align 1, !tbaa !97
  br label %sljit_emit_op1.exit615

sljit_emit_op1.exit615:                           ; preds = %bb.dk, %bb.dj, %emit_mov.exit1146.thread, %sljit_emit_op1.exit610
  %i.ps = load i32, ptr %i.a, align 4, !tbaa !46  ; 8 uses
  %.not446 = icmp eq i32 %i.ps, 0
  br i1 %.not446, label %sljit_emit_op1.exit620, label %bb.dl

bb.dl:                                            ; preds = %sljit_emit_op1.exit615
  %i.pt = load i32, ptr %i.km, align 4, !tbaa !108
  %i.pu = sext i32 %i.pt to i64
  %i.pv = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i616 = icmp eq i32 %i.pv, 0
  br i1 %.not.i616, label %bb.dm, label %sljit_emit_op1.exit593, !prof !130

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.pw = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 140, i64 noundef %i.kp) ; 2 uses
  %.not.i1147 = icmp eq ptr %i.pw, null
  br i1 %.not.i1147, label %sljit_emit_op1.exit620, label %bb.dn, !prof !61

bb.dn:                                            ; preds = %bb.dm
  store i8 -117, ptr %i.pw, align 1, !tbaa !97
  %i.px = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.pu) ; 2 uses
  %.not65.i1148 = icmp eq ptr %i.px, null
  br i1 %.not65.i1148, label %sljit_emit_op1.exit620, label %emit_mov.exit1150.thread, !prof !61

emit_mov.exit1150.thread:                         ; preds = %bb.dn
  store i8 -119, ptr %i.px, align 1, !tbaa !97
  br label %sljit_emit_op1.exit620

sljit_emit_op1.exit620:                           ; preds = %bb.dm, %bb.dn, %emit_mov.exit1150.thread, %sljit_emit_op1.exit615
  %i.py = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i621 = icmp eq i32 %i.py, 0
  br i1 %.not.i621, label %bb.do, label %sljit_emit_op1.exit593, !prof !613

bb.do:                                            ; preds = %sljit_emit_op1.exit620
  %i.pz = load ptr, ptr %i.kd, align 8, !tbaa !125 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !134 ; 2 uses
  %i.qc = add i64 %i.qb, 32                       ; 2 uses
  %i.qd = icmp ult i64 %i.qc, 4081
  br i1 %i.qd, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qb
  store i64 %i.qc, ptr %i.qa, align 8, !tbaa !134
  br label %bb.dt

bb.dq:                                            ; preds = %bb.do
  %i.qg = load ptr, ptr %i.kb, align 8, !tbaa !123 ; 2 uses
  %.val.i.i = load ptr, ptr %i.qg, align 8, !tbaa !100
  %i.qh = getelementptr i8, ptr %i.qg, i64 16
  %.val18.i.i = load ptr, ptr %i.qh, align 8, !tbaa !101
  %i.qi = call ptr %.val.i.i(i64 noundef 4096, ptr noundef %.val18.i.i) #20, !inline_history !7 ; 5 uses
  %.not.i.i623 = icmp eq ptr %i.qi, null
  br i1 %.not.i.i623, label %bb.ds, label %bb.dr, !prof !61

bb.dr:                                            ; preds = %bb.dq
  %i.qj = load ptr, ptr %i.kd, align 8, !tbaa !125
  store ptr %i.qj, ptr %i.qi, align 8, !tbaa !135
  store ptr %i.qi, ptr %i.kd, align 8, !tbaa !125
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store i64 32, ptr %i.qk, align 8, !tbaa !134
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %sljit_emit_op1.exit593

bb.dt:                                            ; preds = %bb.dr, %bb.dp
  %.0.i.ph.i = phi ptr [ %i.ql, %bb.dr ], [ %i.qf, %bb.dp ] ; 9 uses
  store ptr null, ptr %.0.i.ph.i, align 8, !tbaa !141
  %i.qm = getelementptr inbounds nuw i8, ptr %.0.i.ph.i, i64 16
  store i64 303104, ptr %i.qm, align 8, !tbaa !142
  %i.qn = getelementptr inbounds nuw i8, ptr %.0.i.ph.i, i64 24
  store ptr null, ptr %i.qn, align 8, !tbaa !97
  %i.qo = load ptr, ptr %i.ke, align 8, !tbaa !143 ; 2 uses
  %.not.i20.i = icmp eq ptr %i.qo, null
  br i1 %.not.i20.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store ptr %.0.i.ph.i, ptr %i.qo, align 8, !tbaa !141
  br label %set_jump.exit.i

bb.dv:                                            ; preds = %bb.dt
  store ptr %.0.i.ph.i, ptr %i.kf, align 8, !tbaa !144
  br label %set_jump.exit.i

set_jump.exit.i:                                  ; preds = %bb.dv, %bb.du
  store ptr %.0.i.ph.i, ptr %i.ke, align 8, !tbaa !143
  %i.qp = load i64, ptr %i.kc, align 8, !tbaa !136 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.0.i.ph.i, i64 8
  store i64 %i.qp, ptr %i.qq, align 8, !tbaa !145
  %i.qr = add i64 %i.qp, 13
  store i64 %i.qr, ptr %i.kc, align 8, !tbaa !136
  %i.qs = load ptr, ptr %i.ka, align 8, !tbaa !124 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8 ; 2 uses
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !134 ; 2 uses
  %i.qv = add i64 %i.qu, 1                        ; 2 uses
  %i.qw = icmp ult i64 %i.qv, 4081
  br i1 %i.qw, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %set_jump.exit.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qu
  store i64 %i.qv, ptr %i.qt, align 8, !tbaa !134
  br label %sljit_emit_jump.exit

bb.dx:                                            ; preds = %set_jump.exit.i
  %i.qz = load ptr, ptr %i.kb, align 8, !tbaa !123 ; 2 uses
  %.val.i21.i = load ptr, ptr %i.qz, align 8, !tbaa !100
  %i.ra = getelementptr i8, ptr %i.qz, i64 16
  %.val18.i22.i = load ptr, ptr %i.ra, align 8, !tbaa !101
  %i.rb = call ptr %.val.i21.i(i64 noundef 4096, ptr noundef %.val18.i22.i) #20, !inline_history !8 ; 5 uses
  %.not.i23.i = icmp eq ptr %i.rb, null
  br i1 %.not.i23.i, label %bb.dz, label %bb.dy, !prof !61

bb.dy:                                            ; preds = %bb.dx
  %i.rc = load ptr, ptr %i.ka, align 8, !tbaa !124
  store ptr %i.rc, ptr %i.rb, align 8, !tbaa !135
  store ptr %i.rb, ptr %i.ka, align 8, !tbaa !124
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  store i64 1, ptr %i.rd, align 8, !tbaa !134
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  br label %sljit_emit_jump.exit

bb.dz:                                            ; preds = %bb.dx
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %sljit_emit_op1.exit593

sljit_emit_jump.exit:                             ; preds = %bb.dw, %bb.dy
  %.0.i24.ph.i = phi ptr [ %i.re, %bb.dy ], [ %i.qy, %bb.dw ]
  store i8 -2, ptr %.0.i24.ph.i, align 1, !tbaa !97
  %.pr1470.pre = load i32, ptr %i.b, align 8, !tbaa !129
  %i.rf = icmp eq i32 %.pr1470.pre, 0
  br i1 %i.rf, label %bb.ea, label %sljit_emit_op1.exit593, !prof !139

bb.ea:                                            ; preds = %sljit_emit_jump.exit
  %i.rg = load ptr, ptr %i.kd, align 8, !tbaa !125 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8 ; 2 uses
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !134 ; 2 uses
  %i.rj = add i64 %i.ri, 16                       ; 2 uses
  %i.rk = icmp ult i64 %i.rj, 4081
  br i1 %i.rk, label %add_jump.exit630.thread, label %bb.eb

add_jump.exit630.thread:                          ; preds = %bb.ea
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.ri ; 3 uses
  store i64 %i.rj, ptr %i.rh, align 8, !tbaa !134
  %i.rn = load ptr, ptr %i.kq, align 8, !tbaa !151
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  store ptr %i.rn, ptr %i.ro, align 8, !tbaa !157
  store ptr %.0.i.ph.i, ptr %i.rm, align 8, !tbaa !156
  store ptr %i.rm, ptr %i.kq, align 8, !tbaa !151
  br label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.rp = load ptr, ptr %i.kb, align 8, !tbaa !123 ; 2 uses
  %.val.i.i.i625 = load ptr, ptr %i.rp, align 8, !tbaa !100
  %i.rq = getelementptr i8, ptr %i.rp, i64 16
  %.val18.i.i.i626 = load ptr, ptr %i.rq, align 8, !tbaa !101
  %i.rr = call ptr %.val.i.i.i625(i64 noundef 4096, ptr noundef %.val18.i.i.i626) #20, !inline_history !17 ; 6 uses
  %.not.i.i.i627 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i.i627, label %bb.ec, label %add_jump.exit630, !prof !61

bb.ec:                                            ; preds = %bb.eb
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %sljit_emit_op1.exit593

add_jump.exit630:                                 ; preds = %bb.eb
  %i.rs = load ptr, ptr %i.kd, align 8, !tbaa !125
  store ptr %i.rs, ptr %i.rr, align 8, !tbaa !135
  store ptr %i.rr, ptr %i.kd, align 8, !tbaa !125
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  store i64 16, ptr %i.rt, align 8, !tbaa !134
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rr, i64 16 ; 2 uses
  %.pr1475.pr.pre = load i32, ptr %i.b, align 8, !tbaa !129
  %i.rv = icmp eq i32 %.pr1475.pr.pre, 0
  %i.rw = load ptr, ptr %i.kq, align 8, !tbaa !151
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rr, i64 24
  store ptr %i.rw, ptr %i.rx, align 8, !tbaa !157
  store ptr %.0.i.ph.i, ptr %i.ru, align 8, !tbaa !156
  store ptr %i.ru, ptr %i.kq, align 8, !tbaa !151
  br i1 %i.rv, label %bb.ed, label %sljit_emit_op1.exit593, !prof !139

bb.ed:                                            ; preds = %add_jump.exit630.thread, %add_jump.exit630
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.ry = call fastcc i32 @emit_cum_binary(ptr noundef nonnull %i.b, i32 noundef 84082944, i32 noundef 12, i64 noundef 0, i32 noundef 12, i64 noundef 0, i32 noundef 127, i64 noundef %i.kt) ; 0 uses
  br label %sljit_emit_op1.exit593

sljit_emit_op1.exit593:                           ; preds = %sljit_emit_op1.exit620, %bb.df, %bb.dg, %bb.cx, %bb.cy, %bb.ds, %bb.dz, %bb.dl, %bb.ec, %sljit_emit_jump.exit, %bb.ed, %add_jump.exit630, %bb.de, %emit_mov.exit1140.thread, %bb.cw, %emit_mov.exit1133.thread, %sljit_emit_op1.exit600, %sljit_emit_op1.exit588
  %5 = phi i32 [ 1, %bb.df ], [ 1, %bb.dg ], [ 1, %bb.cx ], [ 1, %bb.cy ], [ %i.ps, %bb.ds ], [ %i.ps, %bb.dz ], [ 1, %bb.dl ], [ %i.ps, %bb.ec ], [ %i.ps, %sljit_emit_jump.exit ], [ %i.ps, %bb.ed ], [ %i.ps, %add_jump.exit630 ], [ 1, %bb.de ], [ 1, %emit_mov.exit1140.thread ], [ 1, %bb.cw ], [ 1, %emit_mov.exit1133.thread ], [ 0, %sljit_emit_op1.exit600 ], [ 0, %sljit_emit_op1.exit588 ], [ %i.ps, %sljit_emit_op1.exit620 ] ; 2 uses
  switch i8 %i.aj, label %sljit_emit_op1.exit638 [
    i8 -126, label %bb.ee
    i8 -128, label %bb.ee
  ]

bb.ee:                                            ; preds = %sljit_emit_op1.exit593, %sljit_emit_op1.exit593
  br i1 %i.c, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.jx, label %bb.eg, label %sljit_emit_op1.exit638

bb.eg:                                            ; preds = %bb.ef
  %i.rz = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i634 = icmp eq i32 %i.rz, 0
  br i1 %.not.i634, label %bb.eh, label %add_jump.exit692, !prof !130

bb.eh:                                            ; preds = %bb.eg
  %.not450 = icmp eq i32 %5, 0
  %.neg451 = select i1 %.not450, i32 -1, i32 -2
  %i.sa = sub nuw nsw i32 %.neg451, %.0425
  %i.sb = shl nsw i32 %i.sa, 3
  %i.sc = sext i32 %i.sb to i64
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.sd = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 2, i64 noundef 0, i32 noundef 140, i64 noundef %i.sc) ; 2 uses
  %.not66.i1151 = icmp eq ptr %i.sd, null
  br i1 %.not66.i1151, label %emit_mov.exit1153, label %emit_mov.exit1153.thread, !prof !61

emit_mov.exit1153.thread:                         ; preds = %bb.eh
  store i8 -117, ptr %i.sd, align 1, !tbaa !97
  br label %sljit_emit_op1.exit638

emit_mov.exit1153:                                ; preds = %bb.eh
  %i.se = load i32, ptr %i.b, align 8, !tbaa !129
  %.not110.i636 = icmp eq i32 %i.se, 0
  br i1 %.not110.i636, label %sljit_emit_op1.exit638.thread, label %add_jump.exit692, !prof !137

bb.ei:                                            ; preds = %bb.ee
  br i1 %i.le, label %bb.ej, label %bb.es

bb.ej:                                            ; preds = %bb.ei
  %i.sf = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i639 = icmp eq i32 %i.sf, 0               ; 2 uses
  br i1 %i.eo, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  br i1 %.not.i639, label %bb.el, label %add_jump.exit692, !prof !130

bb.el:                                            ; preds = %bb.ek
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.sg = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 2, i64 noundef 0, i32 noundef 140, i64 noundef %i.lk) ; 2 uses
  %.not66.i1154 = icmp eq ptr %i.sg, null
  br i1 %.not66.i1154, label %emit_mov.exit1156, label %emit_mov.exit1156.thread, !prof !61

emit_mov.exit1156.thread:                         ; preds = %bb.el
  store i8 -117, ptr %i.sg, align 1, !tbaa !97
  br label %sljit_emit_op1.exit643

emit_mov.exit1156:                                ; preds = %bb.el
  %i.sh = load i32, ptr %i.b, align 8, !tbaa !129
  %.not110.i641 = icmp eq i32 %i.sh, 0
  br i1 %.not110.i641, label %sljit_emit_op1.exit643.thread, label %add_jump.exit692, !prof !137

bb.em:                                            ; preds = %bb.ej
  br i1 %.not.i639, label %bb.en, label %add_jump.exit692, !prof !130

bb.en:                                            ; preds = %bb.em
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.si = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 140, i64 noundef %i.li) ; 2 uses
  %.not66.i1157 = icmp eq ptr %i.si, null
  br i1 %.not66.i1157, label %emit_mov.exit1159, label %sljit_emit_op1.exit648, !prof !61

emit_mov.exit1159:                                ; preds = %bb.en
  %i.sj = load i32, ptr %i.b, align 8, !tbaa !129
  %.not110.i646 = icmp eq i32 %i.sj, 0
  br i1 %.not110.i646, label %sljit_emit_op1.exit648.thread, label %add_jump.exit692, !prof !137

sljit_emit_op1.exit648:                           ; preds = %bb.en
  store i8 -117, ptr %i.si, align 1, !tbaa !97
  %.pre1710 = load i32, ptr %i.b, align 8, !tbaa !129
  %i.sk = icmp eq i32 %.pre1710, 0
  br i1 %i.sk, label %sljit_emit_op1.exit648.thread, label %add_jump.exit692, !prof !139

sljit_emit_op1.exit648.thread:                    ; preds = %emit_mov.exit1159, %sljit_emit_op1.exit648
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.sl = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 2, i64 noundef 0, i32 noundef 140, i64 noundef %i.lj) ; 2 uses
  %.not66.i1160 = icmp eq ptr %i.sl, null
  br i1 %.not66.i1160, label %emit_mov.exit1162, label %sljit_emit_op1.exit653, !prof !61

emit_mov.exit1162:                                ; preds = %sljit_emit_op1.exit648.thread
  %i.sm = load i32, ptr %i.b, align 8, !tbaa !129
  %.not110.i651 = icmp eq i32 %i.sm, 0
  br i1 %.not110.i651, label %sljit_emit_op1.exit653.thread, label %add_jump.exit692, !prof !137

sljit_emit_op1.exit653:                           ; preds = %sljit_emit_op1.exit648.thread
  store i8 -117, ptr %i.sl, align 1, !tbaa !97
  %.pre1711 = load i32, ptr %i.b, align 8, !tbaa !129
  %i.sn = icmp eq i32 %.pre1711, 0
  br i1 %i.sn, label %sljit_emit_op1.exit653.thread, label %add_jump.exit692, !prof !139

sljit_emit_op1.exit653.thread:                    ; preds = %emit_mov.exit1162, %sljit_emit_op1.exit653
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.so = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.kh) ; 2 uses
  %.not73.i1163 = icmp eq ptr %i.so, null
  br i1 %.not73.i1163, label %emit_mov.exit1165, label %emit_mov.exit1165.thread, !prof !61

emit_mov.exit1165.thread:                         ; preds = %sljit_emit_op1.exit653.thread
  store i8 -119, ptr %i.so, align 1, !tbaa !97
  br label %sljit_emit_op1.exit643

emit_mov.exit1165:                                ; preds = %sljit_emit_op1.exit653.thread
  %i.sp = load i32, ptr %i.b, align 8, !tbaa !129
  %.not110.i656 = icmp eq i32 %i.sp, 0
  br i1 %.not110.i656, label %sljit_emit_op1.exit643.thread, label %add_jump.exit692, !prof !137

sljit_emit_op1.exit643:                           ; preds = %emit_mov.exit1165.thread, %emit_mov.exit1156.thread
  %.pr1943.pr = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i659 = icmp eq i32 %.pr1943.pr, 0
  br i1 %.not.i659, label %sljit_emit_op1.exit643.thread, label %add_jump.exit692, !prof !139

sljit_emit_op1.exit643.thread:                    ; preds = %emit_mov.exit1156, %emit_mov.exit1165, %sljit_emit_op1.exit643
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.sq = load ptr, ptr %i.ka, align 8, !tbaa !124 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8 ; 2 uses
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !134 ; 2 uses
  %i.st = add i64 %i.ss, 5                        ; 2 uses
  %i.su = icmp ult i64 %i.st, 4081
  br i1 %i.su, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %sljit_emit_op1.exit643.thread
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.ss
  store i64 %i.st, ptr %i.sr, align 8, !tbaa !134
  br label %sljit_emit_op2.exit662thread-pre-split

bb.ep:                                            ; preds = %sljit_emit_op1.exit643.thread
  %i.sx = load ptr, ptr %i.kb, align 8, !tbaa !123 ; 2 uses
  %.val.i.i1326 = load ptr, ptr %i.sx, align 8, !tbaa !100
  %i.sy = getelementptr i8, ptr %i.sx, i64 16
  %.val18.i.i1327 = load ptr, ptr %i.sy, align 8, !tbaa !101
  %i.sz = call ptr %.val.i.i1326(i64 noundef 4096, ptr noundef %.val18.i.i1327) #20, !inline_history !4 ; 5 uses
  %.not.i.i1328 = icmp eq ptr %i.sz, null
  br i1 %.not.i.i1328, label %sljit_emit_op1.exit638thread-pre-split.critedge, label %bb.eq, !prof !61

bb.eq:                                            ; preds = %bb.ep
  %i.ta = load ptr, ptr %i.ka, align 8, !tbaa !124
  store ptr %i.ta, ptr %i.sz, align 8, !tbaa !135
  store ptr %i.sz, ptr %i.ka, align 8, !tbaa !124
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  store i64 5, ptr %i.tb, align 8, !tbaa !134
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  br label %sljit_emit_op2.exit662thread-pre-split

sljit_emit_op1.exit638thread-pre-split.critedge:  ; preds = %bb.ep
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %add_jump.exit692

sljit_emit_op2.exit662thread-pre-split:           ; preds = %bb.eo, %bb.eq
  %.0.i269.ph.i1329 = phi ptr [ %i.tc, %bb.eq ], [ %i.sw, %bb.eo ] ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i1329, i64 1
  store i8 4, ptr %.0.i269.ph.i1329, align 1, !tbaa !97
  %i.te = load i64, ptr %i.kc, align 8, !tbaa !136
  %i.tf = add i64 %i.te, 4
  store i64 %i.tf, ptr %i.kc, align 8, !tbaa !136
  store <4 x i8> <i8 73, i8 -125, i8 -17, i8 8>, ptr %i.td, align 1, !tbaa !97
  %.pr1507.pre = load i32, ptr %i.b, align 8, !tbaa !129
  %i.tg = icmp eq i32 %.pr1507.pre, 0
  br i1 %i.tg, label %bb.er, label %add_jump.exit692, !prof !139

bb.er:                                            ; preds = %sljit_emit_op2.exit662thread-pre-split
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.th = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 127, i64 noundef 0, i32 noundef 140, i64 noundef 0) ; 2 uses
  %.not71.i1169 = icmp eq ptr %i.th, null
  br i1 %.not71.i1169, label %emit_mov.exit1171, label %emit_mov.exit1171.thread, !prof !61

emit_mov.exit1171.thread:                         ; preds = %bb.er
  store i8 -57, ptr %i.th, align 1, !tbaa !97
  br label %sljit_emit_op1.exit638

emit_mov.exit1171:                                ; preds = %bb.er
  %i.ti = load i32, ptr %i.b, align 8, !tbaa !129
  %.not110.i665 = icmp eq i32 %i.ti, 0
  br i1 %.not110.i665, label %sljit_emit_op1.exit638.thread, label %add_jump.exit692, !prof !137

bb.es:                                            ; preds = %bb.ei
  br i1 %i.lf, label %bb.et, label %sljit_emit_op1.exit638

bb.et:                                            ; preds = %bb.es
  %i.tj = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i668 = icmp eq i32 %i.tj, 0
  br i1 %.not.i668, label %bb.eu, label %add_jump.exit692, !prof !130

bb.eu:                                            ; preds = %bb.et
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.tk = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 140, i64 noundef %i.li) ; 2 uses
  %.not.i1172 = icmp eq ptr %i.tk, null
  br i1 %.not.i1172, label %sljit_emit_op1.exit638, label %bb.ev, !prof !61

bb.ev:                                            ; preds = %bb.eu
  store i8 -117, ptr %i.tk, align 1, !tbaa !97
  %i.tl = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.kh) ; 2 uses
  %.not65.i1173 = icmp eq ptr %i.tl, null
  br i1 %.not65.i1173, label %sljit_emit_op1.exit638, label %emit_mov.exit1175.thread, !prof !61

emit_mov.exit1175.thread:                         ; preds = %bb.ev
  store i8 -119, ptr %i.tl, align 1, !tbaa !97
  br label %sljit_emit_op1.exit638

sljit_emit_op1.exit638:                           ; preds = %bb.eu, %bb.ev, %emit_mov.exit1175.thread, %emit_mov.exit1171.thread, %emit_mov.exit1153.thread, %sljit_emit_op1.exit593, %bb.ef, %bb.es
  %.pr1947.pr.pr = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i673 = icmp eq i32 %.pr1947.pr.pr, 0
  br i1 %.not.i673, label %sljit_emit_op1.exit638.thread, label %add_jump.exit692, !prof !139

sljit_emit_op1.exit638.thread:                    ; preds = %emit_mov.exit1153, %emit_mov.exit1171, %sljit_emit_op1.exit638
  %i.tm = load ptr, ptr %i.kd, align 8, !tbaa !125 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8 ; 2 uses
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !134 ; 2 uses
  %i.tp = add i64 %i.to, 32                       ; 2 uses
end_hunk_1
begin_hunk_2_@compile_assert_matchingpath:bb.a
  store i8 -117, ptr %i.xy, align 1, !tbaa !97
  %.pre1714 = load i32, ptr %i.b, align 8, !tbaa !129
  %i.ya = icmp eq i32 %.pre1714, 0
  br i1 %i.ya, label %sljit_emit_op1.exit733.thread, label %sljit_emit_op2.exit728, !prof !139

sljit_emit_op1.exit733.thread:                    ; preds = %emit_mov.exit1178, %sljit_emit_op1.exit733
  %i.yb = load ptr, ptr %i.kd, align 8, !tbaa !125 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 8 ; 2 uses
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !134 ; 2 uses
  %i.ye = add i64 %i.yd, 32                       ; 2 uses
  %i.yf = icmp ult i64 %i.ye, 4081
  br i1 %i.yf, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %sljit_emit_op1.exit733.thread
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.yd
  store i64 %i.ye, ptr %i.yc, align 8, !tbaa !134
  br label %bb.gs

bb.gp:                                            ; preds = %sljit_emit_op1.exit733.thread
  %i.yi = load ptr, ptr %i.kb, align 8, !tbaa !123 ; 2 uses
  %.val.i.i736 = load ptr, ptr %i.yi, align 8, !tbaa !100
  %i.yj = getelementptr i8, ptr %i.yi, i64 16
  %.val18.i.i737 = load ptr, ptr %i.yj, align 8, !tbaa !101
  %i.yk = call ptr %.val.i.i736(i64 noundef 4096, ptr noundef %.val18.i.i737) #20, !inline_history !7 ; 5 uses
  %.not.i.i738 = icmp eq ptr %i.yk, null
  br i1 %.not.i.i738, label %bb.gr, label %bb.gq, !prof !61

bb.gq:                                            ; preds = %bb.gp
  %i.yl = load ptr, ptr %i.kd, align 8, !tbaa !125
  store ptr %i.yl, ptr %i.yk, align 8, !tbaa !135
  store ptr %i.yk, ptr %i.kd, align 8, !tbaa !125
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  store i64 32, ptr %i.ym, align 8, !tbaa !134
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %sljit_emit_op2.exit728

bb.gs:                                            ; preds = %bb.gq, %bb.go
  %.0.i.ph.i739 = phi ptr [ %i.yn, %bb.gq ], [ %i.yh, %bb.go ] ; 9 uses
  store ptr null, ptr %.0.i.ph.i739, align 8, !tbaa !141
  %i.yo = getelementptr inbounds nuw i8, ptr %.0.i.ph.i739, i64 16
  store i64 303104, ptr %i.yo, align 8, !tbaa !142
  %i.yp = getelementptr inbounds nuw i8, ptr %.0.i.ph.i739, i64 24
  store ptr null, ptr %i.yp, align 8, !tbaa !97
  %i.yq = load ptr, ptr %i.ke, align 8, !tbaa !143 ; 2 uses
  %.not.i20.i740 = icmp eq ptr %i.yq, null
  br i1 %.not.i20.i740, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  store ptr %.0.i.ph.i739, ptr %i.yq, align 8, !tbaa !141
  br label %set_jump.exit.i741

bb.gu:                                            ; preds = %bb.gs
  store ptr %.0.i.ph.i739, ptr %i.kf, align 8, !tbaa !144
  br label %set_jump.exit.i741

set_jump.exit.i741:                               ; preds = %bb.gu, %bb.gt
  store ptr %.0.i.ph.i739, ptr %i.ke, align 8, !tbaa !143
  %i.yr = load i64, ptr %i.kc, align 8, !tbaa !136 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.0.i.ph.i739, i64 8
  store i64 %i.yr, ptr %i.ys, align 8, !tbaa !145
  %i.yt = add i64 %i.yr, 13
  store i64 %i.yt, ptr %i.kc, align 8, !tbaa !136
  %i.yu = load ptr, ptr %i.ka, align 8, !tbaa !124 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 8 ; 2 uses
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !134 ; 2 uses
  %i.yx = add i64 %i.yw, 1                        ; 2 uses
  %i.yy = icmp ult i64 %i.yx, 4081
  br i1 %i.yy, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %set_jump.exit.i741
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.yw
  store i64 %i.yx, ptr %i.yv, align 8, !tbaa !134
  br label %sljit_emit_jump.exit746

bb.gw:                                            ; preds = %set_jump.exit.i741
  %i.zb = load ptr, ptr %i.kb, align 8, !tbaa !123 ; 2 uses
  %.val.i21.i742 = load ptr, ptr %i.zb, align 8, !tbaa !100
  %i.zc = getelementptr i8, ptr %i.zb, i64 16
  %.val18.i22.i743 = load ptr, ptr %i.zc, align 8, !tbaa !101
  %i.zd = call ptr %.val.i21.i742(i64 noundef 4096, ptr noundef %.val18.i22.i743) #20, !inline_history !8 ; 5 uses
  %.not.i23.i744 = icmp eq ptr %i.zd, null
  br i1 %.not.i23.i744, label %bb.gy, label %bb.gx, !prof !61

bb.gx:                                            ; preds = %bb.gw
  %i.ze = load ptr, ptr %i.ka, align 8, !tbaa !124
  store ptr %i.ze, ptr %i.zd, align 8, !tbaa !135
  store ptr %i.zd, ptr %i.ka, align 8, !tbaa !124
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  store i64 1, ptr %i.zf, align 8, !tbaa !134
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  br label %sljit_emit_jump.exit746

bb.gy:                                            ; preds = %bb.gw
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %sljit_emit_op2.exit728

sljit_emit_jump.exit746:                          ; preds = %bb.gv, %bb.gx
  %.0.i24.ph.i745 = phi ptr [ %i.zg, %bb.gx ], [ %i.za, %bb.gv ]
  store i8 -2, ptr %.0.i24.ph.i745, align 1, !tbaa !97
  %.pr1531.pre = load i32, ptr %i.b, align 8, !tbaa !129
  %i.zh = icmp eq i32 %.pr1531.pre, 0
  br i1 %i.zh, label %bb.gz, label %sljit_emit_op2.exit728, !prof !139

bb.gz:                                            ; preds = %sljit_emit_jump.exit746
  %i.zi = load ptr, ptr %i.kd, align 8, !tbaa !125 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 8 ; 2 uses
  %i.zk = load i64, ptr %i.zj, align 8, !tbaa !134 ; 2 uses
  %i.zl = add i64 %i.zk, 16                       ; 2 uses
  %i.zm = icmp ult i64 %i.zl, 4081
  br i1 %i.zm, label %add_jump.exit753.thread, label %bb.ha

add_jump.exit753.thread:                          ; preds = %bb.gz
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 %i.zk ; 3 uses
  store i64 %i.zl, ptr %i.zj, align 8, !tbaa !134
  %i.zp = load ptr, ptr %i.kq, align 8, !tbaa !151
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  store ptr %i.zp, ptr %i.zq, align 8, !tbaa !157
  store ptr %.0.i.ph.i739, ptr %i.zo, align 8, !tbaa !156
  store ptr %i.zo, ptr %i.kq, align 8, !tbaa !151
  br label %bb.hc

bb.ha:                                            ; preds = %bb.gz
  %i.zr = load ptr, ptr %i.kb, align 8, !tbaa !123 ; 2 uses
  %.val.i.i.i748 = load ptr, ptr %i.zr, align 8, !tbaa !100
  %i.zs = getelementptr i8, ptr %i.zr, i64 16
  %.val18.i.i.i749 = load ptr, ptr %i.zs, align 8, !tbaa !101
  %i.zt = call ptr %.val.i.i.i748(i64 noundef 4096, ptr noundef %.val18.i.i.i749) #20, !inline_history !17 ; 6 uses
  %.not.i.i.i750 = icmp eq ptr %i.zt, null
  br i1 %.not.i.i.i750, label %bb.hb, label %add_jump.exit753, !prof !61

bb.hb:                                            ; preds = %bb.ha
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %sljit_emit_op2.exit728

add_jump.exit753:                                 ; preds = %bb.ha
  %i.zu = load ptr, ptr %i.kd, align 8, !tbaa !125
  store ptr %i.zu, ptr %i.zt, align 8, !tbaa !135
  store ptr %i.zt, ptr %i.kd, align 8, !tbaa !125
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store i64 16, ptr %i.zv, align 8, !tbaa !134
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 16 ; 2 uses
  %.pr1536.pr.pre = load i32, ptr %i.b, align 8, !tbaa !129
  %i.zx = icmp eq i32 %.pr1536.pr.pre, 0
  %i.zy = load ptr, ptr %i.kq, align 8, !tbaa !151
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store ptr %i.zy, ptr %i.zz, align 8, !tbaa !157
  store ptr %.0.i.ph.i739, ptr %i.zw, align 8, !tbaa !156
  store ptr %i.zw, ptr %i.kq, align 8, !tbaa !151
  br i1 %i.zx, label %bb.hc, label %sljit_emit_op2.exit728, !prof !139

bb.hc:                                            ; preds = %add_jump.exit753.thread, %add_jump.exit753
  %i.aaa = add nuw nsw i32 %.2, 1
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = shl nuw nsw i64 %i.aab, 3
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.aad = call fastcc i32 @emit_non_cum_binary(ptr noundef nonnull %i.b, i32 noundef 757803304, i32 noundef 12, i64 noundef 0, i32 noundef 12, i64 noundef 0, i32 noundef 127, i64 noundef %i.aac) ; 0 uses
  br label %sljit_emit_op2.exit728

sljit_emit_op2.exit728:                           ; preds = %emit_mov.exit1178, %sljit_emit_op1.exit733, %bb.gr, %bb.gy, %bb.gm, %bb.hb, %sljit_emit_jump.exit746, %bb.hc, %add_jump.exit753, %bb.gl, %bb.gk
  %i.aae = call fastcc ptr @sljit_emit_label(ptr noundef nonnull %i.b) ; 2 uses
  %.not.i758 = icmp eq ptr %.0.i703, null
  %.not6.i = icmp eq ptr %i.aae, null
  %or.cond.i759 = or i1 %.not.i758, %.not6.i
  br i1 %or.cond.i759, label %sljit_set_label.exit, label %bb.hd, !prof !153

bb.hd:                                            ; preds = %sljit_emit_op2.exit728
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0.i703, i64 16 ; 2 uses
  %i.aag = load i64, ptr %i.aaf, align 8, !tbaa !142
  %i.aah = and i64 %i.aag, -2
  store i64 %i.aah, ptr %i.aaf, align 8, !tbaa !142
  %i.aai = getelementptr inbounds nuw i8, ptr %.0.i703, i64 24
  store ptr %i.aae, ptr %i.aai, align 8, !tbaa !97
  br label %sljit_set_label.exit

sljit_set_label.exit:                             ; preds = %bb.hd, %sljit_emit_op2.exit728, %bb.fu
  br i1 %i.en, label %bb.he, label %sljit_emit_op1.exit764

bb.he:                                            ; preds = %sljit_set_label.exit
  %i.aaj = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i760 = icmp eq i32 %i.aaj, 0
  br i1 %.not.i760, label %bb.hf, label %sljit_emit_op1.exit764, !prof !130

bb.hf:                                            ; preds = %bb.he
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.aak = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 13, i64 noundef 0, i32 noundef 140, i64 noundef 8) ; 2 uses
  %.not66.i1179 = icmp eq ptr %i.aak, null
  br i1 %.not66.i1179, label %sljit_emit_op1.exit764, label %emit_mov.exit1181.thread, !prof !61

emit_mov.exit1181.thread:                         ; preds = %bb.hf
  store i8 -117, ptr %i.aak, align 1, !tbaa !97
  br label %sljit_emit_op1.exit764

sljit_emit_op1.exit764:                           ; preds = %bb.hf, %bb.he, %emit_mov.exit1181.thread, %sljit_set_label.exit
  %.not456 = icmp eq i32 %5, 0
  br i1 %.not456, label %sljit_emit_op1.exit769, label %bb.hg

bb.hg:                                            ; preds = %sljit_emit_op1.exit764
  %i.aal = load i32, ptr %i.km, align 4, !tbaa !108
  %i.aam = sext i32 %i.aal to i64
  %i.aan = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i765 = icmp eq i32 %i.aan, 0
  br i1 %.not.i765, label %bb.hh, label %sljit_emit_op1.exit769, !prof !130

bb.hh:                                            ; preds = %bb.hg
  %i.aao = shl nuw nsw i32 %.0425, 3
  %i.aap = add nuw nsw i32 %i.aao, 8
  %i.aaq = zext nneg i32 %i.aap to i64
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.aar = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 140, i64 noundef %i.aaq) ; 2 uses
  %.not.i1182 = icmp eq ptr %i.aar, null
  br i1 %.not.i1182, label %sljit_emit_op1.exit769, label %bb.hi, !prof !61

bb.hi:                                            ; preds = %bb.hh
  store i8 -117, ptr %i.aar, align 1, !tbaa !97
  %i.aas = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.aam) ; 2 uses
  %.not65.i1183 = icmp eq ptr %i.aas, null
  br i1 %.not65.i1183, label %sljit_emit_op1.exit769, label %emit_mov.exit1185.thread, !prof !61

emit_mov.exit1185.thread:                         ; preds = %bb.hi
  store i8 -119, ptr %i.aas, align 1, !tbaa !97
  br label %sljit_emit_op1.exit769

sljit_emit_op1.exit769:                           ; preds = %bb.hh, %bb.hi, %bb.hg, %emit_mov.exit1185.thread, %sljit_emit_op1.exit764
  switch i8 %i.aj, label %bb.lg [
    i8 -127, label %bb.hj
    i8 127, label %bb.hj
  ]

bb.hj:                                            ; preds = %sljit_emit_op1.exit769, %sljit_emit_op1.exit769
  %or.cond28 = select i1 %i.c, i1 %i.jx, i1 false
  %or.cond31 = or i1 %i.le, %or.cond28
  br i1 %or.cond31, label %bb.hk, label %sljit_emit_op1.exit774

bb.hk:                                            ; preds = %bb.hj
  %i.aat = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i770 = icmp eq i32 %i.aat, 0
  br i1 %.not.i770, label %bb.hl, label %sljit_emit_op1.exit774, !prof !130

bb.hl:                                            ; preds = %bb.hk
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.aau = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 2, i64 noundef 0, i32 noundef 140, i64 noundef 0) ; 2 uses
  %.not66.i1186 = icmp eq ptr %i.aau, null
  br i1 %.not66.i1186, label %sljit_emit_op1.exit774, label %emit_mov.exit1188.thread, !prof !61

emit_mov.exit1188.thread:                         ; preds = %bb.hl
  store i8 -117, ptr %i.aau, align 1, !tbaa !97
  br label %sljit_emit_op1.exit774

sljit_emit_op1.exit774:                           ; preds = %bb.hl, %bb.hk, %emit_mov.exit1188.thread, %bb.hj
  br i1 %i.eo, label %bb.hm, label %bb.hu

bb.hm:                                            ; preds = %sljit_emit_op1.exit774
  br i1 %i.le, label %bb.hn, label %bb.hr

bb.hn:                                            ; preds = %bb.hm
  %i.aav = icmp sgt i32 %.2, 1
  br i1 %i.aav, label %bb.ho, label %free_stack.exit776

bb.ho:                                            ; preds = %bb.hn
  %.val479 = load ptr, ptr %0, align 8, !tbaa !128 ; 3 uses
  %i.aaw = load i32, ptr %.val479, align 8, !tbaa !129
  %.not.i.i775 = icmp eq i32 %i.aaw, 0
  br i1 %.not.i.i775, label %bb.hp, label %free_stack.exit776, !prof !130

bb.hp:                                            ; preds = %bb.ho
  %i.aax = add nsw i32 %i.kx, -8
  %i.aay = zext nneg i32 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw i8, ptr %.val479, i64 144
  store i32 0, ptr %i.aaz, align 8, !tbaa !132
  %i.aba = call fastcc i32 @emit_cum_binary(ptr noundef nonnull %.val479, i32 noundef 84082944, i32 noundef 12, i64 noundef 0, i32 noundef 12, i64 noundef 0, i32 noundef 127, i64 noundef %i.aay) ; 0 uses
  br label %free_stack.exit776

free_stack.exit776:                               ; preds = %bb.hp, %bb.ho, %bb.hn
  %i.abb = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i777 = icmp eq i32 %i.abb, 0
  br i1 %.not.i777, label %bb.hq, label %add_jump.exit822, !prof !130

bb.hq:                                            ; preds = %free_stack.exit776
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.abc = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 127, i64 noundef 0, i32 noundef 140, i64 noundef 0) ; 2 uses
  %.not71.i1191 = icmp eq ptr %i.abc, null
  br i1 %.not71.i1191, label %emit_mov.exit1193, label %emit_mov.exit1193.thread, !prof !61

emit_mov.exit1193.thread:                         ; preds = %bb.hq
  store i8 -57, ptr %i.abc, align 1, !tbaa !97
  br label %sljit_emit_op1.exit781

emit_mov.exit1193:                                ; preds = %bb.hq
  %i.abd = load i32, ptr %i.b, align 8, !tbaa !129
  %.not110.i779 = icmp eq i32 %i.abd, 0
  br i1 %.not110.i779, label %sljit_emit_op1.exit781.thread, label %add_jump.exit822, !prof !137

bb.hr:                                            ; preds = %bb.hm
  br i1 %i.jx, label %bb.hs, label %sljit_emit_op1.exit781

bb.hs:                                            ; preds = %bb.hr
  %.val478 = load ptr, ptr %0, align 8, !tbaa !128 ; 3 uses
  %i.abe = load i32, ptr %.val478, align 8, !tbaa !129
  %.not.i.i782 = icmp eq i32 %i.abe, 0
  br i1 %.not.i.i782, label %bb.ht, label %sljit_emit_op1.exit781, !prof !130

bb.ht:                                            ; preds = %bb.hs
  %i.abf = getelementptr inbounds nuw i8, ptr %.val478, i64 144
  store i32 0, ptr %i.abf, align 8, !tbaa !132
  %i.abg = call fastcc i32 @emit_cum_binary(ptr noundef nonnull %.val478, i32 noundef 84082944, i32 noundef 12, i64 noundef 0, i32 noundef 12, i64 noundef 0, i32 noundef 127, i64 noundef %i.lb) ; 0 uses
  br label %sljit_emit_op1.exit781

bb.hu:                                            ; preds = %sljit_emit_op1.exit774
  %i.abh = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i784 = icmp eq i32 %i.abh, 0
  br i1 %.not.i784, label %bb.hv, label %sljit_emit_op1.exit788, !prof !130

bb.hv:                                            ; preds = %bb.hu
  %i.abi = add nsw i32 %i.kx, -8
  %i.abj = sext i32 %i.abi to i64
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.abk = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 140, i64 noundef %i.abj) ; 2 uses
  %.not66.i1194 = icmp eq ptr %i.abk, null
  br i1 %.not66.i1194, label %sljit_emit_op1.exit788, label %emit_mov.exit1196.thread, !prof !61

emit_mov.exit1196.thread:                         ; preds = %bb.hv
  store i8 -117, ptr %i.abk, align 1, !tbaa !97
  br label %sljit_emit_op1.exit788

sljit_emit_op1.exit788:                           ; preds = %bb.hv, %emit_mov.exit1196.thread, %bb.hu
  %.val477 = load ptr, ptr %0, align 8, !tbaa !128 ; 5 uses
  %i.abl = load i32, ptr %.val477, align 8, !tbaa !129
  %.not.i.i789 = icmp eq i32 %i.abl, 0            ; 2 uses
  br i1 %i.le, label %bb.hw, label %bb.hz

bb.hw:                                            ; preds = %sljit_emit_op1.exit788
  br i1 %.not.i.i789, label %bb.hx, label %free_stack.exit790, !prof !130

bb.hx:                                            ; preds = %bb.hw
  %i.abm = add i32 %i.kj, -8
  %i.abn = sext i32 %i.abm to i64
  %i.abo = getelementptr inbounds nuw i8, ptr %.val477, i64 144
  store i32 0, ptr %i.abo, align 8, !tbaa !132
  %i.abp = call fastcc i32 @emit_cum_binary(ptr noundef nonnull %.val477, i32 noundef 84082944, i32 noundef 12, i64 noundef 0, i32 noundef 12, i64 noundef 0, i32 noundef 127, i64 noundef %i.abn) ; 0 uses
  br label %free_stack.exit790

free_stack.exit790:                               ; preds = %bb.hw, %bb.hx
  %i.abq = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i791 = icmp eq i32 %i.abq, 0
  br i1 %.not.i791, label %bb.hy, label %add_jump.exit822, !prof !130

bb.hy:                                            ; preds = %free_stack.exit790
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.abr = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 127, i64 noundef 0, i32 noundef 140, i64 noundef 0) ; 2 uses
  %.not71.i1199 = icmp eq ptr %i.abr, null
  br i1 %.not71.i1199, label %emit_mov.exit1201, label %emit_mov.exit1201.thread, !prof !61

emit_mov.exit1201.thread:                         ; preds = %bb.hy
  store i8 -57, ptr %i.abr, align 1, !tbaa !97
  br label %sljit_emit_op1.exit795

emit_mov.exit1201:                                ; preds = %bb.hy
  %i.abs = load i32, ptr %i.b, align 8, !tbaa !129
  %.not110.i793 = icmp eq i32 %i.abs, 0
  br i1 %.not110.i793, label %sljit_emit_op1.exit795.thread, label %add_jump.exit822, !prof !137

bb.hz:                                            ; preds = %sljit_emit_op1.exit788
  br i1 %.not.i.i789, label %bb.ia, label %sljit_emit_op1.exit795, !prof !130

bb.ia:                                            ; preds = %bb.hz
  %i.abt = sext i32 %i.kj to i64
  %i.abu = getelementptr inbounds nuw i8, ptr %.val477, i64 144
  store i32 0, ptr %i.abu, align 8, !tbaa !132
  %i.abv = call fastcc i32 @emit_cum_binary(ptr noundef nonnull %.val477, i32 noundef 84082944, i32 noundef 12, i64 noundef 0, i32 noundef 12, i64 noundef 0, i32 noundef 127, i64 noundef %i.abt) ; 0 uses
  br label %sljit_emit_op1.exit795

sljit_emit_op1.exit795:                           ; preds = %bb.ia, %bb.hz, %emit_mov.exit1201.thread
  %.pr1958.a = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i798 = icmp eq i32 %.pr1958.a, 0
  br i1 %.not.i798, label %sljit_emit_op1.exit795.thread, label %sljit_emit_jump.exit815, !prof !243

sljit_emit_op1.exit795.thread:                    ; preds = %emit_mov.exit1201, %sljit_emit_op1.exit795
  store i32 0, ptr %i.jy, align 8, !tbaa !132
  %i.abw = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.kh) ; 2 uses
  %.not73.i1202 = icmp eq ptr %i.abw, null
  br i1 %.not73.i1202, label %emit_mov.exit1204, label %emit_mov.exit1204.thread, !prof !61

emit_mov.exit1204.thread:                         ; preds = %sljit_emit_op1.exit795.thread
  store i8 -119, ptr %i.abw, align 1, !tbaa !97
  br label %sljit_emit_op1.exit781

emit_mov.exit1204:                                ; preds = %sljit_emit_op1.exit795.thread
  %i.abx = load i32, ptr %i.b, align 8, !tbaa !129
  %.not110.i800 = icmp eq i32 %i.abx, 0
  br i1 %.not110.i800, label %sljit_emit_op1.exit781.thread, label %sljit_emit_jump.exit815, !prof !137

sljit_emit_op1.exit781:                           ; preds = %emit_mov.exit1204.thread, %bb.ht, %bb.hs, %emit_mov.exit1193.thread, %bb.hr
  %.pr1961 = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i803 = icmp eq i32 %.pr1961, 0
end_hunk_2
