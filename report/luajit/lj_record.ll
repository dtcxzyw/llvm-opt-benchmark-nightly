Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_record?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@rec_mm_arith:bb.a
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bu
  store ptr %i.bv, ptr %i.u, align 8, !tbaa !42
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !35
  %i.by = add i32 %i.bx, %i.bs                    ; 2 uses
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !35
  %i.bz = load i32, ptr %i.ae, align 4, !tbaa !36
  %i.ca = add i32 %i.bz, %i.by
  %i.cb = icmp ugt i32 %i.ca, 249
  br i1 %i.cb, label %bb.i, label %lj_record_call.exit

bb.i:                                             ; preds = %bb.h
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 3) #9, !inline_history !77
  unreachable

lj_record_call.exit:                              ; preds = %bb.h
  ret void
}

declare hidden i32 @lj_opt_narrow_arith(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_opt_narrow_mod(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @recff_bit64_bitop(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_opt_narrow_tobit(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @recff_bit64_shift(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @rec_upvalue(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = inttoptr i64 %i.f to ptr                 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.b, label %getcurrf.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35
  %i.n = trunc i32 %i.m to i16
  %i.o = add i16 %i.n, -2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 18184, ptr %i.q, align 4, !tbaa !9
  store i16 %i.o, ptr %i.p, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 16, ptr %i.r, align 2, !tbaa !9
  %i.s = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8 ; 2 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store i32 %i.s, ptr %i.u, align 4, !tbaa !37
  br label %getcurrf.exit

getcurrf.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i134 = phi i32 [ %i.s, %bb.b ], [ %i.k, %bb.a ] ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  %i.w = load i8, ptr %i.v, align 1, !tbaa !137
  %.not.i135 = icmp eq i8 %i.w, 0
  br i1 %.not.i135, label %rec_upvalue_constify.exit.thread143, label %bb.c

bb.c:                                             ; preds = %getcurrf.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9   ; 3 uses
  %i.ab = ashr i64 %i.aa, 47                      ; 2 uses
  switch i64 %i.ab, label %rec_upvalue_constify.exit.thread140 [
    i64 -11, label %bb.d
    i64 -12, label %rec_upvalue_constify.exit.thread143
    i64 -13, label %rec_upvalue_constify.exit.thread143
    i64 -7, label %rec_upvalue_constify.exit.thread143
  ]

bb.d:                                             ; preds = %bb.c
  %i.ac = and i64 %i.aa, 140737488355327
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !140
  %i.ag = and i8 %i.af, -112
  %or.cond.i = icmp eq i8 %i.ag, 0
  br i1 %or.cond.i, label %bb.e, label %rec_upvalue_constify.exit.thread143

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds i8, ptr %0, i64 -352
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !149
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !150
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !157
  %i.an = zext i16 %i.al to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi i64 [ %i.an, %bb.e ], [ %i.ar, %bb.f ]
  %.0.i.i = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.pn.i ; 2 uses
  %i.ao = load i32, ptr %.0.i.i, align 8, !tbaa !159 ; 3 uses
  %i.ap = icmp slt i32 %i.ao, -1879048192
  %i.aq = and i32 %i.ao, 65535
  %i.ar = zext nneg i32 %i.aq to i64
  br i1 %i.ap, label %bb.f, label %ctype_raw.exit.i, !llvm.loop !135

ctype_raw.exit.i:                                 ; preds = %bb.f
  %i.as = icmp ult i32 %i.ao, 1610612736
  br i1 %i.as, label %rec_upvalue_constify.exit, label %rec_upvalue_constify.exit.thread140

rec_upvalue_constify.exit:                        ; preds = %ctype_raw.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !160
  %i.av = icmp ugt i32 %i.au, 16
  br i1 %i.av, label %rec_upvalue_constify.exit.thread143, label %rec_upvalue_constify.exit.thread140

rec_upvalue_constify.exit.thread140:              ; preds = %ctype_raw.exit.i, %bb.c, %rec_upvalue_constify.exit
  %i.aw = trunc i32 %.0.i134 to i16
  %i.ax = and i32 %.0.i134, 32768
  %.not124.not = icmp eq i32 %i.ax, 0
  br i1 %.not124.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %rec_upvalue_constify.exit.thread140
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 61
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !52
  %i.bc = icmp ugt i8 %i.bb, 95
  br i1 %i.bc, label %rec_upvalue_constify.exit.thread143, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.be = tail call i32 @lj_ir_kgc(ptr noundef nonnull %0, ptr noundef %i.bd, i32 noundef 8) #8 ; 3 uses
  %i.bf = trunc i32 %i.be to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 2184, ptr %i.bh, align 4, !tbaa !9
  store i16 %i.aw, ptr %i.bg, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.bf, ptr %i.bi, align 2, !tbaa !9
  %i.bj = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  store i32 %i.be, ptr %i.bl, align 4, !tbaa !37
  %.pre = load i64, ptr %i.x, align 8, !tbaa !138
  %.phi.trans.insert = inttoptr i64 %.pre to ptr
  %.pre157 = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre162 = ashr i64 %.pre157, 47
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rec_upvalue_constify.exit.thread140
  %.pre-phi163 = phi i64 [ %.pre162, %bb.h ], [ %i.ab, %rec_upvalue_constify.exit.thread140 ] ; 4 uses
  %i.bm = phi i64 [ %.pre157, %bb.h ], [ %i.aa, %rec_upvalue_constify.exit.thread140 ] ; 2 uses
  %.0112 = phi i32 [ %i.be, %bb.h ], [ %.0.i134, %rec_upvalue_constify.exit.thread140 ] ; 2 uses
  %i.bn = trunc nsw i64 %.pre-phi163 to i32       ; 3 uses
  %i.bo = add nsw i32 %i.bn, 13
  %i.bp = icmp ult i32 %i.bo, 9
  %i.bq = bitcast i64 %i.bm to double
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = and i64 %i.bm, 140737488355327
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = icmp ult i64 %.pre-phi163, -14
  %i.bu = xor i32 %i.bn, -1
  %.0.i13.i = select i1 %i.bt, i32 14, i32 %i.bu
  %i.bv = tail call i32 @lj_ir_kgc(ptr noundef nonnull %0, ptr noundef %i.bs, i32 noundef %.0.i13.i) #8
  br label %lj_record_constify.exit

bb.k:                                             ; preds = %bb.i
  %i.bw = icmp ult i64 %.pre-phi163, -14
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = tail call i32 @lj_ir_knumint(ptr noundef nonnull %0, double noundef %i.bq) #8
  br label %lj_record_constify.exit

bb.m:                                             ; preds = %bb.k
  %.off.i = add nsw i64 %.pre-phi163, 3
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.n, label %rec_upvalue_constify.exit.thread143

bb.n:                                             ; preds = %bb.m
  %i.by = xor i32 %i.bn, -1
  %i.bz = mul nuw nsw i32 %i.by, 16777217
  %i.ca = xor i32 %i.bz, 32767
  br label %lj_record_constify.exit

lj_record_constify.exit:                          ; preds = %bb.j, %bb.l, %bb.n
  %.0.i136 = phi i32 [ %i.bv, %bb.j ], [ %i.bx, %bb.l ], [ %i.ca, %bb.n ]
  %.0.i136.fr = freeze i32 %.0.i136               ; 2 uses
  %.not125 = icmp eq i32 %.0.i136.fr, 0
  br i1 %.not125, label %rec_upvalue_constify.exit.thread143, label %.thread155

rec_upvalue_constify.exit.thread143:              ; preds = %lj_record_constify.exit, %bb.m, %bb.g, %getcurrf.exit, %bb.c, %bb.c, %bb.c, %bb.d, %rec_upvalue_constify.exit
  %.2114 = phi i32 [ %.0.i134, %getcurrf.exit ], [ %.0.i134, %bb.d ], [ %.0.i134, %rec_upvalue_constify.exit ], [ %.0.i134, %bb.c ], [ %.0.i134, %bb.c ], [ %.0.i134, %bb.c ], [ %.0112, %bb.m ], [ %.0.i134, %bb.g ], [ %.0112, %lj_record_constify.exit ] ; 3 uses
  %i.cb = shl i32 %1, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !161 ; 2 uses
  %i.ce = add i32 %i.cd, -79764919                ; 4 uses
  %i.cf = xor i32 %i.ce, %i.cd
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 14)
  %i.ch = sub i32 %i.cf, %i.cg                    ; 2 uses
  %i.ci = lshr i32 %i.ce, 13
  %i.cj = xor i32 %i.ch, %i.ci
  %i.ck = lshr i32 %i.ch, 19
  %i.cl = sub i32 %i.cj, %i.ck
  %i.cm = and i32 %i.cl, 255
  %i.cn = or disjoint i32 %i.cm, %i.cb            ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !162
  %.not126 = icmp ne i8 %i.cp, 0                  ; 2 uses
  br i1 %.not126, label %bb.x, label %bb.o

bb.o:                                             ; preds = %rec_upvalue_constify.exit.thread143
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !138 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !43 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !163
  %.not127 = icmp ult i64 %i.cr, %i.cv
  br i1 %.not127, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !164
  %i.cy = icmp ult i64 %i.cr, %i.cx
  br i1 %i.cy, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !46
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !35
  %i.dd = zext i32 %i.dc to i64
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.de
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.cr, %i.dg
  %i.di = lshr exact i64 %i.dh, 3
  %i.dj = trunc i64 %i.di to i32                  ; 3 uses
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = trunc i32 %.2114 to i16
  %i.dm = trunc i32 %i.cn to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  store i16 15369, ptr %i.do, align 4, !tbaa !9
  store i16 %i.dl, ptr %i.dn, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 3 uses
  store i16 %i.dm, ptr %i.dp, align 2, !tbaa !9
  %i.dq = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.dr = trunc i32 %i.dq to i16
  %i.ds = shl i32 %i.dj, 3
  %i.dt = sub i32 16, %i.ds
  %i.du = sext i32 %i.dt to i64
  %i.dv = tail call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef %i.du) #8
  %i.dw = trunc i32 %i.dv to i16
  store i16 10505, ptr %i.do, align 4, !tbaa !9
  store i16 %i.dr, ptr %i.dn, align 8, !tbaa !9
  store i16 %i.dw, ptr %i.dp, align 2, !tbaa !9
  %i.dx = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.dy = trunc i32 %i.dx to i16
  store i16 2185, ptr %i.do, align 4, !tbaa !9
  store i16 -32768, ptr %i.dn, align 8, !tbaa !9
  store i16 %i.dy, ptr %i.dp, align 2, !tbaa !9
  %i.dz = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.ea = load i32, ptr %i.db, align 8, !tbaa !35
  %i.eb = sub nsw i32 %i.dj, %i.ea                ; 4 uses
  %i.ec = icmp eq i32 %2, 0
  %i.ed = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.ee = sext i32 %i.eb to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ee ; 2 uses
  br i1 %i.ec, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !37 ; 2 uses
  %.not129 = icmp eq i32 %i.eg, 0
  br i1 %.not129, label %bb.t, label %.thread155

bb.t:                                             ; preds = %bb.s
  %i.eh = tail call fastcc i32 @sload(ptr noundef nonnull %0, i32 noundef %i.eb)
  br label %.thread155

bb.u:                                             ; preds = %bb.r
  store i32 %2, ptr %i.ef, align 4, !tbaa !37
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !36
  %.not128 = icmp slt i32 %i.eb, %i.ej
  br i1 %.not128, label %.thread155, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ek = add nsw i32 %i.eb, 1
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !36
  br label %.thread155

bb.w:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.el = lshr i32 %2, 24
  %i.em = and i32 %i.el, 31
  %i.en = add nsw i32 %i.em, -4
  %i.eo = icmp ult i32 %i.en, 9
  %i.ep = select i1 %i.eo, i16 15497, i16 15509
  %i.eq = trunc i32 %.2114 to i16
  %i.er = trunc i32 %i.cn to i16
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  store i16 %i.ep, ptr %i.et, align 4, !tbaa !9
  store i16 %i.eq, ptr %i.es, align 8, !tbaa !9
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 3 uses
  store i16 %i.er, ptr %i.eu, align 2, !tbaa !9
  %i.ev = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 2 uses
  %i.ew = trunc i32 %i.ev to i16
  store i16 10761, ptr %i.et, align 4, !tbaa !9
  store i16 %i.ew, ptr %i.es, align 8, !tbaa !9
  store i16 -32768, ptr %i.eu, align 2, !tbaa !9
  %i.ex = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.ey = trunc i32 %i.ex to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !35
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !36
  %i.fd = add i32 %i.fc, %i.fa
  %i.fe = shl i32 %i.fd, 3
  %i.ff = zext i32 %i.fe to i64
  %i.fg = tail call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef %i.ff) #8
  %i.fh = trunc i32 %i.fg to i16
  store i16 1929, ptr %i.et, align 4, !tbaa !9
  store i16 %i.ey, ptr %i.es, align 8, !tbaa !9
  store i16 %i.fh, ptr %i.eu, align 2, !tbaa !9
  %i.fi = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %rec_upvalue_constify.exit.thread143
  %i.fj = trunc i32 %.2114 to i16                 ; 2 uses
  %3 = lshr i16 %i.fj, 8
  %i.fk = and i16 %3, 128
  %i.fl = or disjoint i16 %i.fk, 15625
  %i.fm = trunc i32 %i.cn to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.fl, ptr %i.fo, align 4, !tbaa !9
  store i16 %i.fj, ptr %i.fn, align 8, !tbaa !9
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.fm, ptr %i.fp, align 2, !tbaa !9
  %i.fq = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0111.in = phi i32 [ %i.fq, %bb.x ], [ %i.ev, %bb.w ] ; 2 uses
  %i.fr = icmp eq i32 %2, 0
  br i1 %i.fr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !138
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !9
  %i.fw = ashr i64 %i.fv, 47                      ; 2 uses
  %i.fx = icmp ult i64 %i.fw, -14
  %i.fy = trunc nsw i64 %i.fw to i32
  %i.fz = xor i32 %i.fy, -1
  %.0.i = select i1 %i.fx, i32 14, i32 %i.fz      ; 3 uses
  %i.ga = trunc nuw nsw i32 %.0.i to i16
  %i.gb = or disjoint i16 %i.ga, 17536
  %i.gc = trunc i32 %.0111.in to i16
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.gb, ptr %i.ge, align 4, !tbaa !9
  store i16 %i.gc, ptr %i.gd, align 8, !tbaa !9
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 0, ptr %i.gf, align 2, !tbaa !9
  %i.gg = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.gh = icmp samesign ult i32 %.0.i, 3
  %i.gi = mul nuw nsw i32 %.0.i, 16777217
  %i.gj = xor i32 %i.gi, 32767
  %.0 = select i1 %i.gh, i32 %i.gj, i32 %i.gg
  br label %.thread155

bb.aa:                                            ; preds = %bb.y
  %i.gk = lshr i32 %2, 24
  %i.gl = and i32 %i.gk, 31                       ; 2 uses
  %i.gm = add nsw i32 %i.gl, -15
  %i.gn = icmp ult i32 %i.gm, 5
  br i1 %i.gn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.go = trunc i32 %2 to i16
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 23310, ptr %i.gq, align 4, !tbaa !9
  store i16 %i.go, ptr %i.gp, align 8, !tbaa !9
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 467, ptr %i.gr, align 2, !tbaa !9
  %i.gs = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 2 uses
  %.pre158 = lshr i32 %i.gs, 24
  %.pre159 = and i32 %.pre158, 31
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pre-phi160 = phi i32 [ %.pre159, %bb.ab ], [ %i.gl, %bb.aa ] ; 2 uses
  %.0115 = phi i32 [ %i.gs, %bb.ab ], [ %2, %bb.aa ]
  %i.gt = trunc nuw nsw i32 %.pre-phi160 to i16
  %i.gu = or disjoint i16 %i.gt, 19456
  %i.gv = trunc i32 %.0111.in to i16              ; 2 uses
  %i.gw = trunc i32 %.0115 to i16                 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  store i16 %i.gu, ptr %i.gy, align 4, !tbaa !9
  store i16 %i.gv, ptr %i.gx, align 8, !tbaa !9
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  store i16 %i.gw, ptr %i.gz, align 2, !tbaa !9
  %i.ha = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.hb = add nsw i32 %.pre-phi160, -4
  %i.hc = icmp ult i32 %i.hb, 9
  %or.cond = select i1 %.not126, i1 %i.hc, i1 false
  br i1 %or.cond, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i16 22784, ptr %i.gy, align 4, !tbaa !9
  store i16 %i.gv, ptr %i.gx, align 8, !tbaa !9
  store i16 %i.gw, ptr %i.gz, align 2, !tbaa !9
  %i.hd = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 1, ptr %i.he, align 1, !tbaa !40
  br label %.thread155

.thread155:                                       ; preds = %bb.s, %bb.t, %bb.v, %bb.u, %lj_record_constify.exit, %bb.ae, %bb.z
  %.3 = phi i32 [ %.0.i136.fr, %lj_record_constify.exit ], [ %.0, %bb.z ], [ 0, %bb.ae ], [ 0, %bb.v ], [ %i.eh, %bb.t ], [ %i.eg, %bb.s ], [ 0, %bb.u ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_tsetm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.RecordIndex, align 8        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %i.e = add i32 %1, -1                           ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9
  %i.i = and i64 %i.h, 140737488355327
  %i.j = or disjoint i64 %i.i, -1688849860263936
  store i64 %i.j, ptr %4, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.f
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9
  %i.r = ashr i64 %i.q, 47                        ; 2 uses
  %i.s = icmp ult i64 %i.r, -14
  %i.t = trunc nsw i64 %i.r to i32
  %i.u = xor i32 %i.t, -1
  %.0.i.i = select i1 %i.s, i32 14, i32 %i.u      ; 3 uses
  %i.v = trunc nuw nsw i32 %.0.i.i to i16
  %i.w = or disjoint i16 %i.v, 18304
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.y = load i32, ptr %i.x, align 8, !tbaa !35
  %i.z = add nsw i32 %i.y, %i.e
  %i.aa = trunc i32 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.w, ptr %i.ac, align 4, !tbaa !9
  store i16 %i.aa, ptr %i.ab, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 4, ptr %i.ad, align 2, !tbaa !9
  %i.ae = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8
  %i.af = icmp samesign ult i32 %.0.i.i, 3
  %i.ag = mul nuw nsw i32 %.0.i.i, 16777217
  %i.ah = xor i32 %i.ag, 32767
  %.0.i = select i1 %i.af, i32 %i.ah, i32 %i.ae   ; 2 uses
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.o
  store i32 %.0.i, ptr %i.aj, align 4, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ak = phi i32 [ %.0.i, %bb.b ], [ %i.n, %bb.a ]
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 0, ptr %i.am, align 4, !tbaa !76
  %i.an = icmp ult i32 %1, %2
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 56
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.034 = phi i32 [ %3, %.lr.ph ], [ %i.cb, %bb.f ] ; 3 uses
  %.02733 = phi i32 [ %1, %.lr.ph ], [ %i.cc, %bb.f ] ; 4 uses
  %i.aw = sitofp i32 %.034 to double
  store double %i.aw, ptr %i.ao, align 8, !tbaa !9
  %i.ax = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %.034) #8
  store i32 %i.ax, ptr %i.ap, align 4, !tbaa !74
  %i.ay = zext i32 %.02733 to i64                 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !9
  store i64 %i.ba, ptr %i.aq, align 8, !tbaa !9
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ay
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !37 ; 2 uses
  %.not30 = icmp eq i32 %i.bd, 0
  br i1 %.not30, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !46
  %i.bh = sext i32 %.02733 to i64                 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !9
  %i.bk = ashr i64 %i.bj, 47                      ; 2 uses
  %i.bl = icmp ult i64 %i.bk, -14
  %i.bm = trunc nsw i64 %i.bk to i32
  %i.bn = xor i32 %i.bm, -1
end_hunk_0
