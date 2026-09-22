Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/idruptracer?download=true
inline.NumInlined: 234
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7CaDiCaL11IdrupTracer19idrup_delete_clauseEmRKSt6vectorIiSaIiEE:bb.a
  br label %_ZN7CaDiCaL11IdrupTracer14put_binary_litEi.exit

_ZN7CaDiCaL11IdrupTracer14put_binary_litEi.exit:  ; preds = %_ZN7CaDiCaL11IdrupTracer14put_binary_litEi.exit.sink.split, %putc_unlocked.exit.i26, %putc_unlocked.exit.i9.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.044.048, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.dy, %i.bs
  br i1 %.not, label %._crit_edge, label %bb.n

bb.r:                                             ; preds = %._crit_edge
  %i.dz = load ptr, ptr %i.ca, align 8, !tbaa !60 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !66 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !67
  %.not.i.i.i30 = icmp ult ptr %i.eb, %i.ed
  br i1 %.not.i.i.i30, label %putc_unlocked.exit.thread.i.i34, label %putc_unlocked.exit.i.i31, !prof !68

putc_unlocked.exit.thread.i.i34:                  ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store ptr %i.ee, ptr %i.ea, align 8, !tbaa !66
  store i8 0, ptr %i.eb, align 1, !tbaa !69
  br label %bb.s

putc_unlocked.exit.i.i31:                         ; preds = %bb.r
  %i.ef = tail call i32 @__overflow(ptr noundef nonnull %i.dz, i32 noundef 0), !inline_history !1
  %.not.i.i32 = icmp eq i32 %i.ef, -1
  br i1 %.not.i.i32, label %_ZN7CaDiCaL11IdrupTracer15put_binary_zeroEv.exit, label %bb.s

bb.s:                                             ; preds = %putc_unlocked.exit.i.i31, %putc_unlocked.exit.thread.i.i34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bz, i64 48 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !70
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !70
  br label %_ZN7CaDiCaL11IdrupTracer15put_binary_zeroEv.exit

bb.t:                                             ; preds = %._crit_edge
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bz, i64 48 ; 4 uses
  %i.ek = load ptr, ptr %i.ca, align 8, !tbaa !60 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !66 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !67
  %.not.i.i.i37 = icmp ult ptr %i.em, %i.eo
  br i1 %.not.i.i.i37, label %putc_unlocked.exit.thread.i.i42, label %putc_unlocked.exit.i.i38, !prof !68

putc_unlocked.exit.thread.i.i42:                  ; preds = %bb.t
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.ep, ptr %i.el, align 8, !tbaa !66
  store i8 48, ptr %i.em, align 1, !tbaa !69
  br label %bb.u

putc_unlocked.exit.i.i38:                         ; preds = %bb.t
  %i.eq = tail call i32 @__overflow(ptr noundef nonnull %i.ek, i32 noundef 48), !inline_history !1
  %.not.i.i39 = icmp eq i32 %i.eq, -1
  br i1 %.not.i.i39, label %_ZN7CaDiCaL11IdrupTracer15put_binary_zeroEv.exit, label %bb.u

bb.u:                                             ; preds = %putc_unlocked.exit.i.i38, %putc_unlocked.exit.thread.i.i42
  %i.er = load i64, ptr %i.ej, align 8, !tbaa !70
  %i.es = add i64 %i.er, 1
  store i64 %i.es, ptr %i.ej, align 8, !tbaa !70
  %i.et = load ptr, ptr %i.ca, align 8, !tbaa !60 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !66 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !67
  %.not.i.i.i37.1 = icmp ult ptr %i.ev, %i.ex
  br i1 %.not.i.i.i37.1, label %putc_unlocked.exit.thread.i.i42.1, label %putc_unlocked.exit.i.i38.1, !prof !68

putc_unlocked.exit.i.i38.1:                       ; preds = %bb.u
  %i.ey = tail call i32 @__overflow(ptr noundef nonnull %i.et, i32 noundef 10), !inline_history !1
  %.not.i.i39.1 = icmp eq i32 %i.ey, -1
  br i1 %.not.i.i39.1, label %_ZN7CaDiCaL11IdrupTracer15put_binary_zeroEv.exit, label %bb.v

putc_unlocked.exit.thread.i.i42.1:                ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  store ptr %i.ez, ptr %i.eu, align 8, !tbaa !66
  store i8 10, ptr %i.ev, align 1, !tbaa !69
  br label %bb.v

bb.v:                                             ; preds = %putc_unlocked.exit.thread.i.i42.1, %putc_unlocked.exit.i.i38.1
  %i.fa = load i64, ptr %i.ej, align 8, !tbaa !70
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ej, align 8, !tbaa !70
  br label %_ZN7CaDiCaL11IdrupTracer15put_binary_zeroEv.exit

_ZN7CaDiCaL11IdrupTracer15put_binary_zeroEv.exit: ; preds = %putc_unlocked.exit.i.i38, %putc_unlocked.exit.i.i38.1, %bb.v, %bb.s, %putc_unlocked.exit.i.i31
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11IdrupTracer25idrup_conclude_and_deleteERKSt6vectorImSaImEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [22 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = load ptr, ptr %1, align 8, !tbaa !95
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 5 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %bb.b, label %_ZN7CaDiCaL11IdrupTracer13put_binary_idEm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !33, !range !58, !noundef !59
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67
  %.not.i.i = icmp ult ptr %i.r, %i.t
  br i1 %.not.i.i, label %putc_unlocked.exit.thread.i, label %putc_unlocked.exit.i, !prof !68

putc_unlocked.exit.thread.i:                      ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.u, ptr %i.q, align 8, !tbaa !66
  store i8 85, ptr %i.r, align 1, !tbaa !69
  br label %bb.d

putc_unlocked.exit.i:                             ; preds = %bb.c
  %i.v = tail call i32 @__overflow(ptr noundef nonnull %i.p, i32 noundef 85), !inline_history !1
  %.not.i = icmp eq i32 %i.v, -1
  br i1 %.not.i, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.d

bb.d:                                             ; preds = %putc_unlocked.exit.i, %putc_unlocked.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !70
  br label %_ZN7CaDiCaL4File3putEc.exit

_ZN7CaDiCaL4File3putEc.exit:                      ; preds = %putc_unlocked.exit.i, %bb.d
  %.not12.i = icmp ult i64 %i.h, 128
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7CaDiCaL4File3putEc.exit, %_ZN7CaDiCaL4File3putEh.exit.i
  %.013.i = phi i64 [ %i.ao, %_ZN7CaDiCaL4File3putEh.exit.i ], [ %i.h, %_ZN7CaDiCaL4File3putEc.exit ] ; 3 uses
  %i.z = trunc i64 %.013.i to i8
  %i.aa = or i8 %i.z, -128                        ; 2 uses
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !32  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67
  %.not.i.i.i = icmp ult ptr %i.af, %i.ah
  br i1 %.not.i.i.i, label %putc_unlocked.exit.thread.i.i, label %putc_unlocked.exit.i.i, !prof !68

putc_unlocked.exit.thread.i.i:                    ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !66
  store i8 %i.aa, ptr %i.af, align 1, !tbaa !69
  br label %bb.e

putc_unlocked.exit.i.i:                           ; preds = %.lr.ph.i
  %i.aj = zext i8 %i.aa to i32
  %i.ak = tail call i32 @__overflow(ptr noundef nonnull %i.ad, i32 noundef %i.aj), !inline_history !1
  %.not.i.i13 = icmp eq i32 %i.ak, -1
  br i1 %.not.i.i13, label %_ZN7CaDiCaL4File3putEh.exit.i, label %bb.e

bb.e:                                             ; preds = %putc_unlocked.exit.i.i, %putc_unlocked.exit.thread.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !70
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !70
  br label %_ZN7CaDiCaL4File3putEh.exit.i

_ZN7CaDiCaL4File3putEh.exit.i:                    ; preds = %bb.e, %putc_unlocked.exit.i.i
  %i.ao = lshr i64 %.013.i, 7                     ; 2 uses
  %.not.i14 = icmp ult i64 %.013.i, 16384
  br i1 %.not.i14, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !90

._crit_edge.i:                                    ; preds = %_ZN7CaDiCaL4File3putEh.exit.i, %_ZN7CaDiCaL4File3putEc.exit
  %.0.lcssa.i = phi i64 [ %i.h, %_ZN7CaDiCaL4File3putEc.exit ], [ %i.ao, %_ZN7CaDiCaL4File3putEh.exit.i ] ; 2 uses
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !32  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !66 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !67
  %.not.i.i7.i = icmp ult ptr %i.at, %i.av
  br i1 %.not.i.i7.i, label %putc_unlocked.exit.thread.i10.i, label %putc_unlocked.exit.i8.i, !prof !68

putc_unlocked.exit.thread.i10.i:                  ; preds = %._crit_edge.i
  %i.aw = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !66
  store i8 %i.aw, ptr %i.at, align 1, !tbaa !69
  br label %bb.f

putc_unlocked.exit.i8.i:                          ; preds = %._crit_edge.i
  %i.ay = trunc nuw nsw i64 %.0.lcssa.i to i32
  %i.az = tail call i32 @__overflow(ptr noundef nonnull %i.ar, i32 noundef %i.ay), !inline_history !1
  %.not.i9.i = icmp eq i32 %i.az, -1
  br i1 %.not.i9.i, label %_ZN7CaDiCaL11IdrupTracer13put_binary_idEm.exit, label %bb.f

bb.f:                                             ; preds = %putc_unlocked.exit.i8.i, %putc_unlocked.exit.thread.i10.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !70
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !70
  br label %_ZN7CaDiCaL11IdrupTracer13put_binary_idEm.exit

bb.g:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 4 uses
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !60  ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !66 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !67
  %.not.i.i.i16 = icmp ult ptr %i.bg, %i.bi
  br i1 %.not.i.i.i16, label %putc_unlocked.exit.thread.i.i20, label %putc_unlocked.exit.i.i17, !prof !68

putc_unlocked.exit.thread.i.i20:                  ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !66
  store i8 85, ptr %i.bg, align 1, !tbaa !69
  br label %bb.h

putc_unlocked.exit.i.i17:                         ; preds = %bb.g
  %i.bk = tail call i32 @__overflow(ptr noundef nonnull %i.be, i32 noundef 85), !inline_history !1
  %.not.i.i18 = icmp eq i32 %i.bk, -1
  br i1 %.not.i.i18, label %bb.j, label %bb.h

bb.h:                                             ; preds = %putc_unlocked.exit.i.i17, %putc_unlocked.exit.thread.i.i20
  %i.bl = load i64, ptr %i.bd, align 8, !tbaa !70
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bd, align 8, !tbaa !70
  %i.bn = load ptr, ptr %i.o, align 8, !tbaa !60  ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !66 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !67
  %.not.i.i.i16.1 = icmp ult ptr %i.bp, %i.br
  br i1 %.not.i.i.i16.1, label %putc_unlocked.exit.thread.i.i20.1, label %putc_unlocked.exit.i.i17.1, !prof !68

putc_unlocked.exit.i.i17.1:                       ; preds = %bb.h
  %i.bs = tail call i32 @__overflow(ptr noundef nonnull %i.bn, i32 noundef 32), !inline_history !1
  %.not.i.i18.1 = icmp eq i32 %i.bs, -1
  br i1 %.not.i.i18.1, label %bb.j, label %bb.i

putc_unlocked.exit.thread.i.i20.1:                ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !66
  store i8 32, ptr %i.bp, align 1, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %putc_unlocked.exit.thread.i.i20.1, %putc_unlocked.exit.i.i17.1
  %i.bu = load i64, ptr %i.bd, align 8, !tbaa !70
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bd, align 8, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %putc_unlocked.exit.i.i17.1, %putc_unlocked.exit.i.i17
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !32  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 0, ptr %i.bx, align 1, !tbaa !69
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.i = phi i64 [ 21, %bb.j ], [ %indvars.iv.next.i, %bb.k ]
  %.0814.i = phi i64 [ %i.h, %bb.j ], [ %i.cc, %bb.k ] ; 3 uses
  %i.by = urem i64 %.0814.i, 10
  %i.bz = trunc nuw nsw i64 %i.by to i8
  %i.ca = or disjoint i8 %i.bz, 48                ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next.i
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !69
  %i.cc = udiv i64 %.0814.i, 10
  %.not11.i = icmp ult i64 %.0814.i, 10
  br i1 %.not11.i, label %.lr.ph.i.i, label %bb.k, !llvm.loop !91

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.cd = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i
  %i.cg = phi i8 [ %i.ca, %.lr.ph.i.i ], [ %i.cs, %bb.m ] ; 2 uses
  %.0610.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %i.cr, %bb.m ]
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !60 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !66 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !67
  %.not.i.i.i.i = icmp ult ptr %i.cj, %i.cl
  br i1 %.not.i.i.i.i, label %putc_unlocked.exit.thread.i.i.i, label %putc_unlocked.exit.i.i.i, !prof !68

putc_unlocked.exit.thread.i.i.i:                  ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !66
  store i8 %i.cg, ptr %i.cj, align 1, !tbaa !69
  br label %bb.m

putc_unlocked.exit.i.i.i:                         ; preds = %bb.l
  %i.cn = zext i8 %i.cg to i32
  %i.co = tail call i32 @__overflow(ptr noundef nonnull %i.ch, i32 noundef %i.cn), !inline_history !1
  %.not.i.i12.i = icmp eq i32 %i.co, -1
  br i1 %.not.i.i12.i, label %_ZN7CaDiCaL4File3putEm.exit, label %bb.m

bb.m:                                             ; preds = %putc_unlocked.exit.i.i.i, %putc_unlocked.exit.thread.i.i.i
  %i.cp = load i64, ptr %i.cf, align 8, !tbaa !70
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.cf, align 8, !tbaa !70
  %i.cr = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 1 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !69  ; 2 uses
  %.not.i13.i = icmp eq i8 %i.cs, 0
  br i1 %.not.i13.i, label %_ZN7CaDiCaL4File3putEm.exit, label %bb.l, !llvm.loop !3

_ZN7CaDiCaL4File3putEm.exit:                      ; preds = %putc_unlocked.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ct = load ptr, ptr %i.m, align 8, !tbaa !32  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 48 ; 2 uses
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !60 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !66 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !67
  %.not.i.i.i28 = icmp ult ptr %i.cy, %i.da
  br i1 %.not.i.i.i28, label %putc_unlocked.exit.thread.i.i33, label %putc_unlocked.exit.i.i29, !prof !68

putc_unlocked.exit.thread.i.i33:                  ; preds = %_ZN7CaDiCaL4File3putEm.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  store ptr %i.db, ptr %i.cx, align 8, !tbaa !66
  store i8 10, ptr %i.cy, align 1, !tbaa !69
  br label %bb.n

putc_unlocked.exit.i.i29:                         ; preds = %_ZN7CaDiCaL4File3putEm.exit
  %i.dc = tail call i32 @__overflow(ptr noundef nonnull %i.cw, i32 noundef 10), !inline_history !1
  %.not.i.i30 = icmp eq i32 %i.dc, -1
  br i1 %.not.i.i30, label %_ZN7CaDiCaL11IdrupTracer13put_binary_idEm.exit, label %bb.n

bb.n:                                             ; preds = %putc_unlocked.exit.i.i29, %putc_unlocked.exit.thread.i.i33
  %i.dd = load i64, ptr %i.cv, align 8, !tbaa !70
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.cv, align 8, !tbaa !70
  br label %_ZN7CaDiCaL11IdrupTracer13put_binary_idEm.exit

_ZN7CaDiCaL11IdrupTracer13put_binary_idEm.exit:   ; preds = %putc_unlocked.exit.i.i29, %bb.n, %bb.f, %putc_unlocked.exit.i8.i, %bb.a
  %i.df = load ptr, ptr %1, align 8, !tbaa !96    ; 2 uses
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !96  ; 2 uses
  %.not91 = icmp eq ptr %i.df, %i.dg
  br i1 %.not91, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %_ZN7CaDiCaL11IdrupTracer13put_binary_idEm.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %bb.p

._crit_edge94:                                    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZN7CaDiCaL11IdrupTracer13put_binary_idEm.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !36, !range !58, !noundef !59
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.o, label %_ZN7CaDiCaL11IdrupTracer15flush_if_pipingEv.exit

bb.o:                                             ; preds = %._crit_edge94
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !32
  tail call void @_ZN7CaDiCaL4File5flushEv(ptr noundef nonnull align 8 dereferenceable(56) %i.dp)
  br label %_ZN7CaDiCaL11IdrupTracer15flush_if_pipingEv.exit

_ZN7CaDiCaL11IdrupTracer15flush_if_pipingEv.exit: ; preds = %._crit_edge94, %bb.o
  ret void

bb.p:                                             ; preds = %.lr.ph93, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %.sroa.082.092 = phi ptr [ %i.df, %.lr.ph93 ], [ %i.ii, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 2 uses
  %i.dq = load i8, ptr %i.dh, align 8, !tbaa !33, !range !58, !noundef !59
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = load ptr, ptr %i.di, align 8, !tbaa !32 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24 ; 3 uses
  br i1 %i.dr, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !60 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !66 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !67
  %.not.i.i35 = icmp ult ptr %i.dw, %i.dy
  br i1 %.not.i.i35, label %putc_unlocked.exit.thread.i38, label %putc_unlocked.exit.i36, !prof !68

putc_unlocked.exit.thread.i38:                    ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !66
  store i8 117, ptr %i.dw, align 1, !tbaa !69
  br label %bb.r

end_hunk_0
