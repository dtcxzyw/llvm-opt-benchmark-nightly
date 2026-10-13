Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 108
loop-unroll.NumUnrolled: 111
begin_hunk_0_@add_ensure_iseq:ISEQ_COMPILE_DATA.exit

._crit_edge.i.i.i.i27:                            ; preds = %._crit_edge.i.i.loopexit.i.i34, %.preheader.i.i.i.i26
  %.0.lcssa.i.i.i.i28 = phi i32 [ %i.bb, %.preheader.i.i.i.i26 ], [ %i.bg, %._crit_edge.i.i.loopexit.i.i34 ]
  %.lcssa.i.i.i.i29 = phi i64 [ %i.bc, %.preheader.i.i.i.i26 ], [ %i.bi, %._crit_edge.i.i.loopexit.i.i34 ]
  %i.bj = add nuw nsw i64 %.lcssa.i.i.i.i29, 16
  %i.bk = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bj, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bk, ptr %i.av, align 8, !tbaa !64
  store ptr %i.bk, ptr %i.au, align 8, !tbaa !64
  store ptr null, ptr %i.bk, align 8, !tbaa !64
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store i32 0, ptr %i.bl, align 8, !tbaa !37
  %i.bm = getelementptr i8, ptr %i.bk, i64 12
  store i32 %.0.lcssa.i.i.i.i28, ptr %i.bm, align 4, !tbaa !37
  br label %new_label_body.exit35

new_label_body.exit35:                            ; preds = %new_label_body.exit, %._crit_edge.i.i.i.i27
  %i.bn = phi i32 [ %i.ax, %new_label_body.exit ], [ 0, %._crit_edge.i.i.i.i27 ] ; 2 uses
  %.022.i.i.i.i25 = phi ptr [ %i.av, %new_label_body.exit ], [ %i.bk, %._crit_edge.i.i.i.i27 ] ; 2 uses
  %i.bo = getelementptr i8, ptr %.022.i.i.i.i25, i64 16
  %i.bp = getelementptr i8, ptr %.022.i.i.i.i25, i64 8
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr i8, ptr %i.bo, i64 %i.bq  ; 9 uses
  %i.bs = add i32 %i.bn, 48
  store i32 %i.bs, ptr %i.bp, align 8, !tbaa !37
  store i32 1, ptr %i.br, align 8, !tbaa !182
  %i.bt = getelementptr i8, ptr %i.br, i64 8
  store ptr null, ptr %i.bt, align 8, !tbaa !183
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.bv = getelementptr i8, ptr %i.bu, i64 132    ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !184 ; 2 uses
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !184
  %i.by = getelementptr i8, ptr %i.br, i64 24
  store i32 %i.bw, ptr %i.by, align 8, !tbaa !111
  %i.bz = getelementptr i8, ptr %i.br, i64 44     ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = and i8 %i.ca, -16
  store i8 %i.cb, ptr %i.bz, align 4
  %i.cc = getelementptr i8, ptr %i.br, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.cc, align 4, !tbaa !37
  store ptr %4, ptr %i.h, align 8, !tbaa !42
  store ptr null, ptr %i.i, align 8, !tbaa !62
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !532
  %.val22 = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.ce = getelementptr i8, ptr %.val22, i64 96   ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !64 ; 4 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !37 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ci, 24
  %i.ck = getelementptr i8, ptr %i.cf, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !37 ; 4 uses
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = icmp samesign ugt i64 %i.cj, %i.cm
  br i1 %i.cn, label %.preheader.i.i.i, label %compile_data_alloc.exit.i

.preheader.i.i.i:                                 ; preds = %new_label_body.exit35
  %i.co = icmp ult i32 %i.cl, 24
  br i1 %i.co, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.h
  %.027.i.i.i = phi i32 [ %i.cq, %bb.h ], [ %i.cl, %.preheader.i.i.i ] ; 3 uses
  %i.cp = icmp samesign ugt i32 %.027.i.i.i, 1073741822
  br i1 %i.cp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i
  call void @rb_memerror() #38
  unreachable

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.cq = shl nuw nsw i32 %.027.i.i.i, 1          ; 3 uses
  %i.cr = icmp samesign ult i32 %.027.i.i.i, 12
  br i1 %i.cr, label %.lr.ph.i.i.i, label %._crit_edge.i.i.loopexit.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i:                       ; preds = %bb.h
  %i.cs = zext nneg i32 %i.cq to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.loopexit.i, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.cl, %.preheader.i.i.i ], [ %i.cq, %._crit_edge.i.i.loopexit.i ]
  %.lcssa.i.i.i = phi i64 [ %i.cm, %.preheader.i.i.i ], [ %i.cs, %._crit_edge.i.i.loopexit.i ]
  %i.ct = add nuw nsw i64 %.lcssa.i.i.i, 16
  %i.cu = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ct, i64 noundef 1) #39 ; 6 uses
  store ptr %i.cu, ptr %i.cf, align 8, !tbaa !64
  store ptr %i.cu, ptr %i.ce, align 8, !tbaa !64
  store ptr null, ptr %i.cu, align 8, !tbaa !64
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  store i32 0, ptr %i.cv, align 8, !tbaa !37
  %i.cw = getelementptr i8, ptr %i.cu, i64 12
  store i32 %.0.lcssa.i.i.i, ptr %i.cw, align 4, !tbaa !37
  br label %compile_data_alloc.exit.i

compile_data_alloc.exit.i:                        ; preds = %._crit_edge.i.i.i, %new_label_body.exit35
  %i.cx = phi i32 [ 0, %._crit_edge.i.i.i ], [ %i.ch, %new_label_body.exit35 ] ; 2 uses
  %.022.i.i.i = phi ptr [ %i.cu, %._crit_edge.i.i.i ], [ %i.cf, %new_label_body.exit35 ] ; 2 uses
  %i.cy = getelementptr i8, ptr %.022.i.i.i, i64 8
  %i.cz = add i32 %i.cx, 24
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %compile_data_alloc.exit.i
  %.0.i36 = phi ptr [ %i.cd, %compile_data_alloc.exit.i ], [ %i.db, %bb.i ] ; 3 uses
  %i.da = getelementptr i8, ptr %.0.i36, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !541 ; 2 uses
  %.not.i37 = icmp eq ptr %i.db, null
  br i1 %.not.i37, label %add_ensure_range.exit, label %bb.i, !llvm.loop !18

add_ensure_range.exit:                            ; preds = %bb.i
  %i.dc = getelementptr i8, ptr %.0.i36, i64 16
  %i.dd = getelementptr i8, ptr %.022.i.i.i, i64 16
  %i.de = zext i32 %i.cx to i64
  %i.df = getelementptr i8, ptr %i.dd, i64 %i.de  ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  store ptr null, ptr %i.dg, align 8, !tbaa !541
  store ptr %i.br, ptr %i.df, align 8, !tbaa !539
  %i.dh = getelementptr i8, ptr %.0.i36, i64 8    ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !540
  %i.dj = getelementptr i8, ptr %i.df, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !540
  store ptr %i.ai, ptr %i.dh, align 8, !tbaa !540
  store ptr %i.df, ptr %i.dc, align 8, !tbaa !541
  %i.dk = getelementptr i8, ptr %.052, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !531
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.dn = getelementptr i8, ptr %i.dm, i64 80
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !530
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.dp = getelementptr i8, ptr %i.ai, i64 16
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !61
  %i.dq = getelementptr i8, ptr %i.do, i64 8
  store ptr %i.ai, ptr %i.dq, align 8, !tbaa !62
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !42
  %i.dr = load ptr, ptr %.052, align 8, !tbaa !529 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %iseq_compile_each.exit, label %bb.j

bb.j:                                             ; preds = %add_ensure_range.exit
  %i.dt = call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef %i.dr, i32 noundef 1), !inline_history !169 ; 0 uses
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !42
  br label %iseq_compile_each.exit

iseq_compile_each.exit:                           ; preds = %add_ensure_range.exit, %bb.j
  %i.du = phi ptr [ %i.ai, %add_ensure_range.exit ], [ %.pre, %bb.j ] ; 2 uses
  %i.dv = getelementptr i8, ptr %i.br, i64 16
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !61
  %i.dw = getelementptr i8, ptr %i.du, i64 8
  store ptr %i.br, ptr %i.dw, align 8, !tbaa !62
  %i.dx = load ptr, ptr %i.i, align 8, !tbaa !87  ; 2 uses
  %.not.i41 = icmp eq ptr %i.dx, null
  br i1 %.not.i41, label %APPEND_LIST.exit, label %bb.k

bb.k:                                             ; preds = %iseq_compile_each.exit
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !62
  %i.ea = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  store ptr %i.dy, ptr %i.eb, align 8, !tbaa !61
  store ptr %i.br, ptr %i.e, align 8, !tbaa !42
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %iseq_compile_each.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  br i1 %.not21, label %ISEQ_COMPILE_DATA.exit44, label %bb.m

bb.m:                                             ; preds = %bb.l, %APPEND_LIST.exit
  %i.ec = getelementptr i8, ptr %.052, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !531 ; 2 uses
  %.not = icmp eq ptr %i.ed, null
  br i1 %.not, label %ISEQ_COMPILE_DATA.exit44, label %bb.a, !llvm.loop !1209

ISEQ_COMPILE_DATA.exit44:                         ; preds = %bb.m, %bb.l
  %.pre57 = load ptr, ptr %i.a, align 8, !tbaa !47
  %.pre58 = load ptr, ptr %i.f, align 8, !tbaa !87 ; 2 uses
  %i.ee = getelementptr i8, ptr %.pre57, i64 80
  store ptr %i.d, ptr %i.ee, align 8, !tbaa !530
  %.not.i45 = icmp eq ptr %.pre58, null
  br i1 %.not.i45, label %APPEND_LIST.exit46, label %bb.n

bb.n:                                             ; preds = %ISEQ_COMPILE_DATA.exit44
  %i.ef = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !42 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  store ptr %.pre58, ptr %i.eh, align 8, !tbaa !62
  %i.ei = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  store ptr %i.eg, ptr %i.ej, align 8, !tbaa !61
  %i.ek = load ptr, ptr %i.e, align 8, !tbaa !42
  store ptr %i.ek, ptr %i.ef, align 8, !tbaa !42
  br label %APPEND_LIST.exit46

APPEND_LIST.exit46:                               ; preds = %ISEQ_COMPILE_DATA.exit44.thread, %ISEQ_COMPILE_DATA.exit44, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_massign0(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef captures(address_is_null) %6, i32 noundef %7) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %5, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !544  ; 2 uses
  %i.c = getelementptr i8, ptr %5, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !543  ; 8 uses
  %i.e = getelementptr i8, ptr %5, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !545  ; 3 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ne ptr %i.d, inttoptr (i64 -1 to ptr)
  %i.i = and i1 %i.g, %i.h                        ; 2 uses
  %i.j = zext i1 %i.i to i32
  %.not109 = icmp eq ptr %i.f, null
  br i1 %.not109, label %._crit_edge, label %.lr.ph

.lr.ph115:                                        ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %6, i64 16
  %i.l = add i32 %i.m, %i.j
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.085111 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.a ]
  %.086110 = phi ptr [ %i.o, %.lr.ph ], [ %i.f, %bb.a ]
  %i.m = add i32 %.085111, 1                      ; 3 uses
  %i.n = getelementptr i8, ptr %.086110, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !524  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.lr.ph115, label %.lr.ph, !llvm.loop !1210

bb.b:                                             ; preds = %.lr.ph115, %bb.c
  %.084114 = phi i32 [ 0, %.lr.ph115 ], [ %i.v, %bb.c ] ; 2 uses
  %.087113 = phi ptr [ %i.f, %.lr.ph115 ], [ %i.x, %bb.c ] ; 2 uses
  %i.p = getelementptr i8, ptr %.087113, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !523
  %i.r = load i32, ptr %i.k, align 8, !tbaa !548
  %i.s = sub i32 %i.l, %.084114
  %i.t = add i32 %i.s, %i.r
  %i.u = tail call fastcc i32 @compile_massign_lhs(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %i.q, ptr noundef %6, i32 noundef %i.t)
  %.not98 = icmp eq i32 %i.u, 0
  br i1 %.not98, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = add i32 %.084114, 1
  %i.w = getelementptr i8, ptr %.087113, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !524  ; 2 uses
  %.not91 = icmp eq ptr %i.x, null
  br i1 %.not91, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !1211

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.y = sext i32 %i.m to i64
  %i.z = shl nsw i64 %i.y, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.085.lcssa131 = phi i64 [ 1, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  %magicptr = ptrtoint ptr %i.d to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, -2
  br i1 %switch, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  %.val = load i64, ptr %i.d, align 8, !tbaa !172 ; 2 uses
  %i.ab = and i64 %.val, 32512
  %i.ac = icmp eq i64 %i.ab, 19200
  br i1 %i.ac, label %nd_line.exit, label %bb.h

nd_line.exit:                                     ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %i.d, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1214 ; 2 uses
  %i.af = getelementptr i8, ptr %i.d, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1215 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !47 ; 2 uses
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %.not93.not = icmp eq ptr %i.ag, inttoptr (i64 -1 to ptr) ; 2 uses
  %i.ak = lshr i64 %.val, 15
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr i8, ptr %i.d, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !243
  %sext = shl i64 %i.ai, 32
  %i.ao = ashr exact i64 %sext, 31
  %i.ap = or disjoint i64 %i.ao, 1
  %i.aq = select i1 %.not93.not, i64 5, i64 7
  %i.ar = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.al, i32 noundef %i.an, i32 noundef 31, i32 noundef 2, i64 noundef %i.ap, i64 noundef %i.aq) ; 3 uses
  %i.as = getelementptr i8, ptr %3, i64 24        ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !61
  %i.av = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.ar, ptr %i.av, align 8, !tbaa !62
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !42
  br i1 %.not93.not, label %.lr.ph120, label %bb.e

bb.e:                                             ; preds = %nd_line.exit
  %i.aw = add i32 %i.aj, 1
  %i.ax = getelementptr i8, ptr %6, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !548
  %i.az = add i32 %i.aw, %i.ay
  %i.ba = tail call fastcc i32 @compile_massign_lhs(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %i.ag, ptr noundef %6, i32 noundef %i.az)
  %.not94 = icmp eq i32 %i.ba, 0
  br i1 %.not94, label %.critedge, label %.lr.ph120

.lr.ph120:                                        ; preds = %nd_line.exit, %bb.e
  %i.bb = getelementptr i8, ptr %6, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph120, %bb.g
  %.0118 = phi i32 [ 0, %.lr.ph120 ], [ %i.bi, %bb.g ] ; 2 uses
  %.082117 = phi ptr [ %i.ae, %.lr.ph120 ], [ %i.bk, %bb.g ] ; 2 uses
  %i.bc = getelementptr i8, ptr %.082117, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !523
  %i.be = sub i32 %i.aj, %.0118
  %i.bf = load i32, ptr %i.bb, align 8, !tbaa !548
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = tail call fastcc i32 @compile_massign_lhs(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %i.bd, ptr noundef %6, i32 noundef %i.bg)
  %.not96 = icmp eq i32 %i.bh, 0
  br i1 %.not96, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = add i32 %.0118, 1
  %i.bj = getelementptr i8, ptr %.082117, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !524 ; 2 uses
  %.not95 = icmp eq ptr %i.bk, null
  br i1 %.not95, label %.loopexit, label %bb.f, !llvm.loop !1212

bb.h:                                             ; preds = %bb.d
  %i.bl = getelementptr i8, ptr %6, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !548
  %i.bn = add i32 %i.bm, 1
  %i.bo = tail call fastcc i32 @compile_massign_lhs(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %i.d, ptr noundef %6, i32 noundef %i.bn)
  %.not92 = icmp eq i32 %i.bo, 0
  br i1 %.not92, label %.critedge, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %._crit_edge, %bb.h
  %i.bp = getelementptr i8, ptr %6, i64 24
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !549, !range !151, !noundef !152
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %iseq_compile_each.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.bs = icmp eq ptr %i.b, null
  br i1 %i.bs, label %ISEQ_COMPILE_DATA.exit.i, label %bb.l

ISEQ_COMPILE_DATA.exit.i:                         ; preds = %bb.i
  %i.bt = getelementptr i8, ptr %0, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47
  %i.bv = getelementptr i8, ptr %i.bu, i64 128
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !60 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i
  %i.by = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !169
  %i.bz = tail call i64 @rb_fix2int(i64 noundef %i.by) #37, !inline_history !169
  %i.ca = trunc i64 %i.bz to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %ISEQ_COMPILE_DATA.exit.i
  %.0.i99 = phi i32 [ %i.ca, %bb.j ], [ %i.bw, %ISEQ_COMPILE_DATA.exit.i ]
  %i.cb = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i99, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !169 ; 3 uses
  %i.cc = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !42 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cb, i64 16
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !61
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  store ptr %i.cb, ptr %i.cf, align 8, !tbaa !62
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !42
  br label %iseq_compile_each.exit

bb.l:                                             ; preds = %bb.i
  %i.cg = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.b, i32 noundef 0), !inline_history !169 ; 0 uses
  br label %iseq_compile_each.exit

iseq_compile_each.exit:                           ; preds = %bb.l, %bb.k, %.loopexit
  %.not97 = icmp eq i32 %7, 0
  %.not.i100 = icmp eq ptr %5, null               ; 2 uses
  br i1 %.not97, label %bb.m, label %bb.o

bb.m:                                             ; preds = %iseq_compile_each.exit
  br i1 %.not.i100, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = load i64, ptr %5, align 8, !tbaa !172
  %i.ci = lshr i64 %i.ch, 15
  %i.cj = trunc i64 %i.ci to i32
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.m
  %.0.i101 = phi i32 [ %i.cj, %bb.n ], [ -1, %bb.m ]
  %i.ck = getelementptr i8, ptr %5, i64 24
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !243
  %i.cm = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %.0.i101, i32 noundef %i.cl, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.cn = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !42 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cm, i64 16
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !61
  %i.cq = getelementptr i8, ptr %i.co, i64 8
  store ptr %i.cm, ptr %i.cq, align 8, !tbaa !62
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !42
  br label %bb.p

bb.o:                                             ; preds = %iseq_compile_each.exit
  br i1 %.not.i100, label %nd_line.exit105, label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o
  %i.cr = load i64, ptr %5, align 8, !tbaa !172
  %i.cs = lshr i64 %i.cr, 15
  %i.ct = trunc i64 %i.cs to i32
  br label %nd_line.exit105

nd_line.exit105:                                  ; preds = %bb.o, %bb.p
  %.0.i104 = phi i32 [ %i.ct, %bb.p ], [ -1, %bb.o ]
  %i.cu = getelementptr i8, ptr %5, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !243
  %i.cw = select i1 %i.i, i64 3, i64 1
  %i.cx = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %.0.i104, i32 noundef %i.cv, i32 noundef 31, i32 noundef 2, i64 noundef %.085.lcssa131, i64 noundef %i.cw) ; 3 uses
  %i.cy = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cx, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !61
  %i.db = getelementptr i8, ptr %i.cz, i64 8
  store ptr %i.cx, ptr %i.db, align 8, !tbaa !62
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !42
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.f, %bb.e, %bb.h, %nd_line.exit105
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %nd_line.exit105 ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_massign_opt_lhs(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !524
  %i.c = tail call fastcc i32 @compile_massign_opt_lhs(ptr noundef %0, ptr noundef %1, ptr noundef %i.b)
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !523
  %i.f = tail call fastcc i32 @compile_massign_lhs(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef %1, ptr noundef %i.e, ptr noundef null, i32 noundef 0)
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_massign_lhs(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr nofree noundef captures(address_is_null) %5, i32 noundef %6) unnamed_addr #1 {
bb.a:
  %7 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 8 uses
  %8 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 8 uses
  %9 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 8 uses
  %i.a = load i64, ptr %4, align 8, !tbaa !172
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127
  switch i32 %i.d, label %iseq_compile_each.exit277 [
    i32 103, label %iseq_compile_each.exit
    i32 24, label %bb.am
    i32 29, label %bb.aq
  ]

iseq_compile_each.exit:                           ; preds = %bb.a
  %i.e = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1), !inline_history !169
  %.not158 = icmp eq i32 %i.e, 0
  br i1 %.not158, label %.thread23, label %bb.b

bb.b:                                             ; preds = %iseq_compile_each.exit
  %i.f = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val170 = load ptr, ptr %i.f, align 8, !tbaa !42 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.pn.i = phi ptr [ %.val170, %bb.b ], [ %.0.i, %bb.d ]
  %.0.in.i = getelementptr i8, ptr %.pn.i, i64 16
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !61 ; 7 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %get_prev_insn.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %.0.i, align 8, !tbaa !88
  %i.h = and i32 %i.g, -2
  %switch.i = icmp eq i32 %i.h, 2
  br i1 %switch.i, label %get_prev_insn.exit, label %bb.c

get_prev_insn.exit:                               ; preds = %bb.c, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.i = getelementptr i8, ptr %.val170, i64 8    ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 3 uses
  %i.k = getelementptr i8, ptr %.val170, i64 16   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61   ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !62
  %.not.i171 = icmp eq ptr %i.j, null
  br i1 %.not.i171, label %ELEM_REMOVE.exit, label %bb.e

bb.e:                                             ; preds = %get_prev_insn.exit
  %i.n = getelementptr i8, ptr %i.j, i64 16
  store ptr %i.l, ptr %i.n, align 8, !tbaa !61
  br label %ELEM_REMOVE.exit

ELEM_REMOVE.exit:                                 ; preds = %get_prev_insn.exit, %bb.e
  %i.o = getelementptr i8, ptr %.0.i, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !91
  %.not163 = icmp eq i32 %i.p, 55                 ; 2 uses
  br i1 %.not163, label %ELEM_INSERT_NEXT.exit, label %.preheader

.preheader:                                       ; preds = %ELEM_REMOVE.exit, %bb.f
  %.pn.i172 = phi ptr [ %.0.i174, %bb.f ], [ %.0.i, %ELEM_REMOVE.exit ]
  %.0.in.i173 = getelementptr i8, ptr %.pn.i172, i64 16
  %.0.i174 = load ptr, ptr %.0.in.i173, align 8, !tbaa !61 ; 7 uses
  %.not.i175 = icmp eq ptr %.0.i174, null
  br i1 %.not.i175, label %get_prev_insn.exit177, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.q = load i32, ptr %.0.i174, align 8, !tbaa !88
  %i.r = and i32 %i.q, -2
  %switch.i176 = icmp eq i32 %i.r, 2
  br i1 %switch.i176, label %get_prev_insn.exit177, label %.preheader

get_prev_insn.exit177:                            ; preds = %.preheader, %bb.f
  %i.s = getelementptr i8, ptr %.0.i174, i64 8    ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  store ptr %i.t, ptr %i.i, align 8, !tbaa !62
  store ptr %.0.i174, ptr %i.k, align 8, !tbaa !61
  store ptr %.val170, ptr %i.s, align 8, !tbaa !62
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !62   ; 2 uses
  %.not.i178 = icmp eq ptr %i.u, null
  br i1 %.not.i178, label %ELEM_INSERT_NEXT.exit, label %bb.g

bb.g:                                             ; preds = %get_prev_insn.exit177
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store ptr %.val170, ptr %i.v, align 8, !tbaa !61
  br label %ELEM_INSERT_NEXT.exit

ELEM_INSERT_NEXT.exit:                            ; preds = %bb.g, %get_prev_insn.exit177, %ELEM_REMOVE.exit
  %.0144 = phi ptr [ %.0.i, %ELEM_REMOVE.exit ], [ %.0.i174, %get_prev_insn.exit177 ], [ %.0.i174, %bb.g ] ; 9 uses
  %i.w = getelementptr i8, ptr %.0144, i64 16     ; 10 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !475  ; 2 uses
  store ptr %i.x, ptr %i.f, align 8, !tbaa !42
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !62
  %i.z = getelementptr i8, ptr %.0144, i64 40     ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !63 ; 4 uses
  %.not.i.i = trunc i64 %i.ab to i1
  br i1 %.not.i.i, label %vm_ci_flag.exit.thread.i, label %bb.h

vm_ci_flag.exit.thread.i:                         ; preds = %ELEM_INSERT_NEXT.exit
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = and i32 %i.ad, 32767
  %i.af = lshr i64 %i.ab, 32
  %i.ag = lshr i32 %i.ac, 16
  br label %vm_ci_kwarg.exit.i

bb.h:                                             ; preds = %ELEM_INSERT_NEXT.exit
  %i.ah = inttoptr i64 %i.ab to ptr               ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !97
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !98
  %i.an = getelementptr i8, ptr %i.ah, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !96
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr i8, ptr %i.ah, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !101
  br label %vm_ci_kwarg.exit.i

vm_ci_kwarg.exit.i:                               ; preds = %bb.h, %vm_ci_flag.exit.thread.i
  %.0.i1798 = phi i32 [ %i.ak, %bb.h ], [ %i.ae, %vm_ci_flag.exit.thread.i ] ; 4 uses
  %.0.i818.i = phi i32 [ %i.ap, %bb.h ], [ %i.ag, %vm_ci_flag.exit.thread.i ] ; 3 uses
  %.0.i1317.i = phi i64 [ %i.am, %bb.h ], [ %i.af, %vm_ci_flag.exit.thread.i ] ; 3 uses
  %.0.i10.i = phi ptr [ %i.ar, %bb.h ], [ null, %vm_ci_flag.exit.thread.i ] ; 2 uses
  %i.as = add i32 %.0.i1798, 1                    ; 6 uses
  %.not.i.i180 = icmp ugt i64 %.0.i1317.i, 4294967295
  %i.at = icmp ugt i32 %.0.i818.i, 65535
  %or.cond13.i.i = or i1 %i.at, %.not.i.i180
  br i1 %or.cond13.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %vm_ci_kwarg.exit.i
  %i.au = icmp ugt i32 %i.as, 32767
  %i.av = icmp ne ptr %.0.i10.i, null
  %or.cond.i.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = shl nuw i64 %.0.i1317.i, 32
  %i.ax = shl nuw i32 %.0.i818.i, 16
  %i.ay = zext i32 %i.ax to i64
  %i.az = or disjoint i64 %i.aw, %i.ay
  %i.ba = shl nuw nsw i32 %i.as, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = or disjoint i64 %i.az, %i.bb
  %i.bd = or disjoint i64 %i.bc, 1
  %i.be = inttoptr i64 %i.bd to ptr
  br label %vm_ci_new_.exit.i

bb.k:                                             ; preds = %bb.i, %vm_ci_kwarg.exit.i
  %i.bf = tail call ptr @rb_vm_ci_lookup(i64 noundef %.0.i1317.i, i32 noundef %.0.i818.i, i32 noundef %i.as, ptr noundef %.0.i10.i) #37
  br label %vm_ci_new_.exit.i

vm_ci_new_.exit.i:                                ; preds = %bb.k, %bb.j
  %.0.i11.i = phi ptr [ %i.bf, %bb.k ], [ %i.be, %bb.j ] ; 6 uses
  %i.bg = ptrtoint ptr %.0.i11.i to i64           ; 9 uses
  %i.bh = icmp eq ptr %.0.i11.i, null
  %i.bi = and i64 %i.bg, 7
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = or i1 %i.bh, %i.bj
  %.pre = ptrtoint ptr %0 to i64                  ; 5 uses
  br i1 %i.bk, label %ci_argc_set.exit.thread, label %bb.l

ci_argc_set.exit.thread:                          ; preds = %vm_ci_new_.exit.i
  %i.bl = load ptr, ptr %i.z, align 8, !tbaa !93
  store i64 %i.bg, ptr %i.bl, align 8, !tbaa !63
  br label %rb_obj_written.exit

bb.l:                                             ; preds = %vm_ci_new_.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %.pre, i64 noundef %i.bg) #37
  %i.bm = load ptr, ptr %i.z, align 8, !tbaa !93
  store i64 %i.bg, ptr %i.bm, align 8, !tbaa !63
  tail call void @rb_gc_writebarrier(i64 noundef %.pre, i64 noundef %i.bg) #37
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %ci_argc_set.exit.thread, %bb.l
  %i.bn = icmp eq i32 %.0.i1798, 0                ; 2 uses
  %i.bo = load i64, ptr %4, align 8, !tbaa !172
  %i.bp = lshr i64 %i.bo, 15
  %i.bq = trunc i64 %i.bp to i32                  ; 2 uses
  %i.br = getelementptr i8, ptr %4, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !243 ; 2 uses
  br i1 %i.bn, label %nd_line.exit, label %nd_line.exit187

nd_line.exit:                                     ; preds = %rb_obj_written.exit
  %i.bt = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.bq, i32 noundef %i.bs, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 6 uses
  %i.bu = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !42 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bt, i64 16
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !61
  %i.bx = getelementptr i8, ptr %i.bv, i64 8
  store ptr %i.bt, ptr %i.bx, align 8, !tbaa !62
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !42
  %.not.i183 = icmp eq ptr %5, null
  br i1 %.not.i183, label %bb.m, label %bb.n

bb.m:                                             ; preds = %nd_line.exit
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.145) #38
end_hunk_0
begin_hunk_1_@pm_static_literal_value:bb.a
  %.not9.i.i107 = icmp eq i32 %i.cn, 0
  br i1 %.not9.i.i107, label %.split14.i106, label %parse_regexp_encoding.exit.i103

parse_regexp_encoding.exit.i103:                  ; preds = %bb.aa, %bb.z
  %.sink.i104 = phi i32 [ 10, %bb.z ], [ 11, %bb.aa ]
  %i.co = tail call ptr @rb_enc_get_from_index(i32 noundef %.sink.i104) #37 ; 2 uses
  %.not.i105 = icmp eq ptr %i.co, null
  br i1 %.not.i105, label %.split14.i106, label %.split.i98

.split.i98:                                       ; preds = %parse_regexp_encoding.exit.i103, %bb.y, %bb.w
  %.0.i17.i99 = phi ptr [ %i.co, %parse_regexp_encoding.exit.i103 ], [ %i.cl, %bb.y ], [ %i.cj, %bb.w ] ; 2 uses
  %i.cp = tail call fastcc i64 @pm_static_literal_concat(ptr noundef %0, ptr noundef readonly %i.cf, ptr noundef %2, ptr noundef nonnull %.0.i17.i99, ptr noundef nonnull %.0.i17.i99, i1 noundef zeroext false)
  br label %parse_regexp_concat.exit108

.split14.i106:                                    ; preds = %parse_regexp_encoding.exit.i103, %bb.aa
  %i.cq = getelementptr i8, ptr %2, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !454
  %i.cs = tail call fastcc i64 @pm_static_literal_concat(ptr noundef %0, ptr noundef readonly %i.cf, ptr noundef %2, ptr noundef %i.cr, ptr noundef null, i1 noundef zeroext false)
  br label %parse_regexp_concat.exit108

parse_regexp_concat.exit108:                      ; preds = %.split.i98, %.split14.i106
  %phi.call.i100 = phi i64 [ %i.cp, %.split.i98 ], [ %i.cs, %.split14.i106 ]
  %i.ct = tail call fastcc i64 @parse_regexp(ptr noundef %0, ptr noundef %2, ptr noundef nonnull readonly %1, i64 noundef %phi.call.i100)
  br label %parse_float.exit

bb.ab:                                            ; preds = %bb.a
  %i.cu = getelementptr i8, ptr %1, i64 40
  %i.cv = tail call fastcc i64 @pm_static_literal_concat(ptr noundef %0, ptr noundef %i.cu, ptr noundef %2, ptr noundef null, ptr noundef null, i1 noundef zeroext false) ; 2 uses
  %i.cw = getelementptr i8, ptr %2, i64 80
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !354 ; 2 uses
  %i.cy = getelementptr i8, ptr %1, i64 8
  %.val92 = load ptr, ptr %i.cy, align 8, !tbaa !355
  %i.cz = getelementptr i8, ptr %i.cx, i64 600
  %i.da = getelementptr i8, ptr %i.cx, i64 664
  %i.db = load i32, ptr %i.da, align 8, !tbaa !368
  %i.dc = tail call i32 @pm_newline_list_line(ptr noundef %i.cz, ptr noundef %.val92, i32 noundef %i.db) #37
  %i.dd = getelementptr i8, ptr %0, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !47
  %i.df = getelementptr i8, ptr %i.de, i64 152
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !67
  %i.dh = load i16, ptr %i.dg, align 4
  %i.di = and i16 %i.dh, 256
  %.not.i109 = icmp eq i16 %i.di, 0
  br i1 %.not.i109, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dj = tail call ptr @rb_ruby_debug_ptr() #37
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !63
  %i.dl = and i64 %i.dk, -5
  %.not7.i = icmp eq i64 %i.dl, 0
  br i1 %.not7.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dm = tail call i64 @rb_iseq_path(ptr noundef nonnull %0) #37
  %i.dn = tail call i64 @rb_str_with_debug_created_info(i64 noundef %i.cv, i64 noundef %i.dm, i32 noundef %i.dc) #37 ; 2 uses
  %i.do = tail call i64 @rb_obj_set_shareable(i64 noundef %i.dn) #37 ; 0 uses
  br label %parse_float.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dp = tail call i64 @rb_fstring(i64 noundef %i.cv) #37
  br label %parse_float.exit

bb.af:                                            ; preds = %bb.a
  %i.dq = getelementptr i8, ptr %1, i64 40
  %i.dr = tail call fastcc i64 @pm_static_literal_concat(ptr noundef %0, ptr noundef %i.dq, ptr noundef %2, ptr noundef null, ptr noundef null, i1 noundef zeroext true)
  %i.ds = tail call i64 @rb_intern_str(i64 noundef %i.dr) #37
  %i.dt = tail call i64 @rb_id2sym(i64 noundef %i.ds) #37
  br label %parse_float.exit

bb.ag:                                            ; preds = %bb.a
  %i.du = getelementptr i8, ptr %1, i64 72
  %i.dv = tail call fastcc i64 @parse_regexp_literal(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %1, ptr noundef %i.du)
  br label %parse_float.exit

bb.ah:                                            ; preds = %bb.a
  br label %parse_float.exit

bb.ai:                                            ; preds = %bb.a
  %i.dw = getelementptr i8, ptr %1, i64 24
  %i.dx = tail call fastcc i64 @parse_integer_value(ptr noundef readonly %i.dw)
  %i.dy = getelementptr i8, ptr %1, i64 48
  %i.dz = tail call fastcc i64 @parse_integer_value(ptr noundef readonly %i.dy)
  %i.ea = tail call i64 @rb_rational_new(i64 noundef %i.dx, i64 noundef %i.dz) #37
  %i.eb = tail call i64 @rb_ractor_make_shareable(i64 noundef %i.ea) #37
  br label %parse_float.exit

bb.aj:                                            ; preds = %bb.a
  %i.ec = getelementptr i8, ptr %1, i64 72
  %i.ed = tail call fastcc i64 @parse_regexp_literal(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %1, ptr noundef %i.ec)
  br label %parse_float.exit

bb.ak:                                            ; preds = %bb.a
  %i.ee = getelementptr i8, ptr %2, i64 88
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !454
  %i.eg = tail call i64 @rb_enc_from_encoding(ptr noundef %i.ef) #37
  br label %parse_float.exit

bb.al:                                            ; preds = %bb.a
  %i.eh = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ei = tail call i64 @pm_string_length(ptr noundef %i.eh) #37 ; 2 uses
  %.not.i111 = icmp eq i64 %i.ei, 0
  br i1 %.not.i111, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr i8, ptr %2, i64 104
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !455 ; 2 uses
  %.not10.i = icmp eq ptr %i.ek, null
  br i1 %.not10.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.el = tail call nonnull ptr @rb_utf8_encoding() #37
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.em = phi ptr [ %i.el, %bb.an ], [ %i.ek, %bb.am ]
  %i.en = tail call ptr @pm_string_source(ptr noundef %i.eh) #37
  %i.eo = tail call i64 @rb_enc_interned_str(ptr noundef %i.en, i64 noundef %i.ei, ptr noundef nonnull %i.em) #37
  br label %parse_float.exit

bb.ap:                                            ; preds = %bb.al
  %i.ep = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.298, i64 noundef 10) #37
  br label %parse_float.exit

bb.aq:                                            ; preds = %bb.a
  %i.eq = getelementptr i8, ptr %2, i64 80
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !354 ; 2 uses
  %i.es = getelementptr i8, ptr %1, i64 8
  %.val91 = load ptr, ptr %i.es, align 8, !tbaa !355
  %i.et = getelementptr i8, ptr %i.er, i64 600
  %i.eu = getelementptr i8, ptr %i.er, i64 664
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !368
  %i.ew = tail call i32 @pm_newline_list_line(ptr noundef %i.et, ptr noundef %.val91, i32 noundef %i.ev) #37
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 1
  %i.ez = or disjoint i64 %i.ey, 1
  br label %parse_float.exit

bb.ar:                                            ; preds = %bb.a
  %i.fa = getelementptr i8, ptr %1, i64 72
  %i.fb = tail call fastcc i64 @parse_static_literal_string(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %1, ptr noundef %i.fa)
  br label %parse_float.exit

bb.as:                                            ; preds = %bb.a
  %i.fc = getelementptr i8, ptr %1, i64 2
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !622
  %i.fe = zext i16 %i.fd to i32                   ; 3 uses
  %i.ff = and i32 %i.fe, 4
  %.not.i113 = icmp eq i32 %i.ff, 0
  br i1 %.not.i113, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fg = tail call nonnull ptr @rb_utf8_encoding() #37
  br label %parse_string_symbol.exit

bb.au:                                            ; preds = %bb.as
  %i.fh = and i32 %i.fe, 8
  %.not7.i115 = icmp eq i32 %i.fh, 0
  br i1 %.not7.i115, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fi = tail call nonnull ptr @rb_ascii8bit_encoding() #37
  br label %parse_string_symbol.exit

bb.aw:                                            ; preds = %bb.au
  %i.fj = and i32 %i.fe, 16
  %.not8.i = icmp eq i32 %i.fj, 0
  br i1 %.not8.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fk = tail call nonnull ptr @rb_usascii_encoding() #37
  br label %parse_string_symbol.exit

bb.ay:                                            ; preds = %bb.aw
  %i.fl = getelementptr i8, ptr %2, i64 88
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !454
  br label %parse_string_symbol.exit

parse_string_symbol.exit:                         ; preds = %bb.at, %bb.av, %bb.ax, %bb.ay
  %.0.i114 = phi ptr [ %i.fg, %bb.at ], [ %i.fi, %bb.av ], [ %i.fk, %bb.ax ], [ %i.fm, %bb.ay ]
  %i.fn = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %i.fo = tail call ptr @pm_string_source(ptr noundef %i.fn) #37
  %i.fp = tail call i64 @pm_string_length(ptr noundef %i.fn) #37
  %i.fq = tail call i64 @rb_intern3(ptr noundef %i.fo, i64 noundef %i.fp, ptr noundef %.0.i114) #37
  %i.fr = tail call i64 @rb_id2sym(i64 noundef %i.fq) #37
  br label %parse_float.exit

bb.az:                                            ; preds = %bb.a
  br label %parse_float.exit

bb.ba:                                            ; preds = %bb.a
  %i.fs = tail call ptr @pm_node_type_to_str(i16 noundef zeroext %i.b) #37
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.279, ptr noundef %i.fs) #38
  unreachable

parse_float.exit:                                 ; preds = %bb.ap, %bb.ao, %bb.ae, %bb.ad, %bb.i, %rb_float_new_inline.exit.i, %bb.g, %bb.a, %bb.az, %parse_string_symbol.exit, %bb.ar, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %parse_regexp_concat.exit108, %parse_regexp_concat.exit, %bb.o, %bb.n, %rb_array_const_ptr.exit, %._crit_edge123
  %.0 = phi i64 [ %i.e, %._crit_edge123 ], [ 20, %bb.az ], [ 0, %bb.a ], [ %i.ax, %rb_array_const_ptr.exit ], [ %i.bn, %bb.n ], [ %i.bp, %bb.o ], [ %i.ce, %parse_regexp_concat.exit ], [ %i.ct, %parse_regexp_concat.exit108 ], [ -9223372036854775806, %bb.g ], [ %i.dt, %bb.af ], [ %i.dv, %bb.ag ], [ 4, %bb.ah ], [ %i.eb, %bb.ai ], [ %i.ed, %bb.aj ], [ %i.eg, %bb.ak ], [ %i.dp, %bb.ae ], [ %i.ez, %bb.aq ], [ %i.fb, %bb.ar ], [ %i.fr, %parse_string_symbol.exit ], [ %.0.i.i, %rb_float_new_inline.exit.i ], [ %.0.i.i, %bb.i ], [ %i.dn, %bb.ad ], [ %i.eo, %bb.ao ], [ %i.ep, %bb.ap ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_compile_hash_elements(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i16 noundef zeroext range(i16 0, 29) %3, i64 noundef %4, i1 noundef zeroext %5, ptr noundef nonnull %6, ptr noundef %7) unnamed_addr #1 {
bb.a:
  %8 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 12 uses
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %7, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !354  ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 600
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !355
  %i.g = getelementptr i8, ptr %i.c, i64 664
  %i.h = load i32, ptr %i.g, align 8, !tbaa !368
  %i.i = tail call i32 @pm_newline_list_line(ptr noundef %i.d, ptr noundef %i.f, i32 noundef %i.h) #37 ; 27 uses
  %i.j = getelementptr i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !371  ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %8, ptr %i.l, align 8, !tbaa !42
  %i.m = load i64, ptr %2, align 8, !tbaa !379    ; 2 uses
  %.not363 = icmp eq i64 %i.m, 0
  br i1 %.not363, label %._crit_edge360.thread, label %.lr.ph359

.lr.ph359:                                        ; preds = %bb.a
  %i.n = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.o = getelementptr i8, ptr %6, i64 24         ; 47 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 15 uses
  %i.q = icmp eq i16 %3, 0                        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

._crit_edge360:                                   ; preds = %.thread313
  %.not = icmp eq i32 %.5267, 0
  br i1 %.not, label %._crit_edge360.thread, label %bb.ay

bb.b:                                             ; preds = %.lr.ph359, %.thread313
  %i.s = phi i64 [ %i.m, %.lr.ph359 ], [ %i.im, %.thread313 ] ; 4 uses
  %.0252356 = phi i64 [ 0, %.lr.ph359 ], [ %i.il, %.thread313 ] ; 20 uses
  %.0253355 = phi i1 [ false, %.lr.ph359 ], [ %.3256, %.thread313 ] ; 4 uses
  %.0257354 = phi i8 [ 1, %.lr.ph359 ], [ %.9, %.thread313 ] ; 6 uses
  %.0262353 = phi i32 [ 0, %.lr.ph359 ], [ %.5267, %.thread313 ] ; 9 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !380  ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %.0252356
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !335  ; 10 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !331
  switch i16 %i.w, label %.thread313 [
    i16 8, label %bb.c
    i16 9, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.d, label %.thread333

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.v, i64 2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !378
  %i.z = and i16 %i.y, 2
  %.not274 = icmp eq i16 %i.z, 0
  br i1 %.not274, label %.thread320, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not277 = xor i1 %.0253355, true
  %i.aa = add i64 %.0252356, 2048
  %i.ab = icmp ult i64 %i.aa, %i.s
  %or.cond279 = and i1 %i.ab, %.not277
  %i.ac = trunc nuw i8 %.0257354 to i1            ; 3 uses
  %i.ad = icmp eq i32 %.0262353, 0                ; 2 uses
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false  ; 2 uses
  %or.cond281 = select i1 %or.cond279, i1 true, i1 %or.cond
  br i1 %or.cond281, label %.preheader, label %.thread320

.preheader:                                       ; preds = %bb.e
  %i.ae = add nuw i64 %.0252356, 1                ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.s
  br i1 %i.af, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ag = sub i64 %i.s, %.0252356                 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.ah = phi i64 [ %i.ao, %bb.f ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %.0345 = phi i64 [ %i.an, %bb.f ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.t, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !335
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !378
  %i.am = and i16 %i.al, 2
  %.not275 = icmp eq i16 %i.am, 0
  br i1 %.not275, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.an = add i64 %.0345, 1                       ; 3 uses
  %i.ao = add i64 %i.an, %.0252356
  %exitcond.not = icmp eq i64 %i.an, %i.ag
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !1380

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.preheader
  %.0.lcssa = phi i64 [ 1, %.preheader ], [ %i.ag, %bb.f ], [ %.0345, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.ae, %.preheader ], [ %i.s, %bb.f ], [ %i.ah, %.lr.ph ] ; 3 uses
  %i.ap = icmp ugt i64 %.0.lcssa, 2047
  %or.cond5 = or i1 %or.cond, %i.ap
  br i1 %or.cond5, label %bb.g, label %.thread320

bb.g:                                             ; preds = %.critedge
  %i.aq = call i64 @rb_ary_hidden_new(i64 noundef %.0.lcssa) #37 ; 2 uses
  %i.ar = icmp ult i64 %.0252356, %.lcssa
  br i1 %i.ar, label %.lr.ph351, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph351, %bb.g
  %.1.lcssa = phi i64 [ %.0252356, %bb.g ], [ %.lcssa, %.lr.ph351 ]
  %i.as = add i64 %.1.lcssa, -1                   ; 2 uses
  %i.at = inttoptr i64 %i.aq to ptr               ; 6 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %i.av = and i64 %i.au, 8192
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.aw = lshr i64 %i.au, 15
  %i.ax = and i64 %i.aw, 127
  br label %rb_array_len.exit

bb.i:                                             ; preds = %._crit_edge
  %i.ay = getelementptr i8, ptr %i.at, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !47
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.h, %bb.i
  %.0.i = phi i64 [ %i.ax, %bb.h ], [ %i.az, %bb.i ]
  %i.ba = sdiv i64 %.0.i, 2
  %i.bb = call i64 @rb_hash_new_with_size(i64 noundef %i.ba) #37 ; 2 uses
  %i.bc = load i64, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %i.bd = and i64 %i.bc, 8192
  %.not.i282 = icmp eq i64 %i.bd, 0
  br i1 %.not.i282, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rb_array_len.exit
  %i.be = lshr i64 %i.bc, 15
  %i.bf = and i64 %i.be, 127
  %i.bg = getelementptr i8, ptr %i.at, i64 16
  br label %rb_array_const_ptr.exit

bb.k:                                             ; preds = %rb_array_len.exit
  %i.bh = getelementptr i8, ptr %i.at, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !47
  %i.bj = getelementptr i8, ptr %i.at, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !47
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.j, %bb.k
  %.0.i283309 = phi i64 [ %i.bf, %bb.j ], [ %i.bi, %bb.k ]
  %.0.i286 = phi ptr [ %i.bg, %bb.j ], [ %i.bk, %bb.k ]
  call void @rb_hash_bulk_insert(i64 noundef %.0.i283309, ptr noundef %.0.i286, i64 noundef %i.bb) #37
  %i.bl = call i64 @rb_obj_hide(i64 noundef %i.bb) #37 ; 4 uses
  call void @rb_obj_freeze_inline(i64 noundef %i.bl) #37
  %i.bm = call i64 @rb_obj_set_shareable(i64 noundef %i.bl) #37 ; 0 uses
  br i1 %i.ad, label %bb.q, label %bb.l

.lr.ph351:                                        ; preds = %bb.g, %.lr.ph351
  %.1350 = phi i64 [ %i.bx, %.lr.ph351 ], [ %.0252356, %bb.g ] ; 2 uses
  %i.bn = load ptr, ptr %i.n, align 8, !tbaa !380
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.1350
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !335 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.bq = getelementptr i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !382
  %i.bs = call fastcc i64 @pm_static_literal_value(ptr noundef %0, ptr noundef %i.br, ptr noundef %7)
  store i64 %i.bs, ptr %i.a, align 16, !tbaa !63
  %i.bt = getelementptr i8, ptr %i.bp, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !383
  %i.bv = call fastcc i64 @pm_static_literal_value(ptr noundef %0, ptr noundef %i.bu, ptr noundef %7)
  store i64 %i.bv, ptr %i.r, align 8, !tbaa !63
  %i.bw = call i64 @rb_ary_cat(i64 noundef %i.aq, ptr noundef nonnull %i.a, i64 noundef 2) #37 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bx = add i64 %.1350, 1                       ; 2 uses
  %exitcond365.not = icmp eq i64 %i.bx, %.lcssa
  br i1 %exitcond365.not, label %._crit_edge, label %.lr.ph351, !llvm.loop !1381

bb.l:                                             ; preds = %rb_array_const_ptr.exit
  br i1 %i.ac, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %i.p, align 8, !tbaa !87  ; 2 uses
  %.not.i287 = icmp eq ptr %i.by, null
  br i1 %.not.i287, label %APPEND_LIST.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.o, align 8, !tbaa !42  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !62
  %i.cb = load ptr, ptr %i.p, align 8, !tbaa !87
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !61
  %i.cd = load ptr, ptr %i.l, align 8, !tbaa !42
  store ptr %i.cd, ptr %i.o, align 8, !tbaa !42
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %bb.m, %bb.n
  %i.ce = sext i32 %.0262353 to i64
  %i.cf = shl nsw i64 %i.ce, 1
  %i.cg = or disjoint i64 %i.cf, 1
end_hunk_1
begin_hunk_2_@pm_compile_match_write_node:bb.a

bb.n:                                             ; preds = %.lr.ph, %pm_constant_id_lookup.exit147
  %.0164 = phi i64 [ 0, %.lr.ph ], [ %i.kk, %pm_constant_id_lookup.exit147 ] ; 3 uses
  %i.hf = load ptr, ptr %i.gb, align 8, !tbaa !1439
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %.0164
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !335 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 24     ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !627 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hh, i64 28
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !628 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %.lr.ph.i142.preheader, label %.preheader.i127

.lr.ph.i142.preheader:                            ; preds = %bb.n
  %xtraiter = and i32 %i.hl, 7                    ; 3 uses
  %i.hn = icmp ult i32 %i.hl, 8
  br i1 %i.hn, label %.lr.ph.i142.epil.preheader, label %.lr.ph.i142.preheader.new

.lr.ph.i142.preheader.new:                        ; preds = %.lr.ph.i142.preheader
  %unroll_iter = and i32 %i.hl, 2147483640
  br label %.lr.ph.i142

.preheader.i127.loopexit.unr-lcssa:               ; preds = %.lr.ph.i142
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i127, label %.lr.ph.i142.epil.preheader

.lr.ph.i142.epil.preheader:                       ; preds = %.preheader.i127.loopexit.unr-lcssa, %.lr.ph.i142.preheader
  %.0113.i144.epil.init = phi ptr [ %5, %.lr.ph.i142.preheader ], [ %i.ij, %.preheader.i127.loopexit.unr-lcssa ]
  %lcmp.mod231 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod231)
  br label %.lr.ph.i142.epil

.lr.ph.i142.epil:                                 ; preds = %.lr.ph.i142.epil, %.lr.ph.i142.epil.preheader
  %.0113.i144.epil = phi ptr [ %i.hp, %.lr.ph.i142.epil ], [ %.0113.i144.epil.init, %.lr.ph.i142.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i142.epil ], [ 0, %.lr.ph.i142.epil.preheader ]
  %i.ho = getelementptr i8, ptr %.0113.i144.epil, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !327 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i127, label %.lr.ph.i142.epil, !llvm.loop !1433

.preheader.i127:                                  ; preds = %.preheader.i127.loopexit.unr-lcssa, %.lr.ph.i142.epil, %bb.n
  %.011.lcssa.i128 = phi ptr [ %5, %bb.n ], [ %i.ij, %.preheader.i127.loopexit.unr-lcssa ], [ %i.hp, %.lr.ph.i142.epil ] ; 3 uses
  %.0.lcssa.i129 = phi i32 [ 0, %bb.n ], [ %i.hl, %.lr.ph.i142.epil ], [ %i.hl, %.preheader.i127.loopexit.unr-lcssa ] ; 2 uses
  %i.hq = zext i32 %i.hj to i64                   ; 2 uses
  %i.hr = getelementptr i8, ptr %.011.lcssa.i128, i64 128
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !352
  %i.ht = call i32 @rb_st_lookup(ptr noundef %i.hs, i64 noundef %i.hq, ptr noundef nonnull %i.a) #37
  %.not6.i130 = icmp eq i32 %i.ht, 0
  br i1 %.not6.i130, label %.lr.ph9.i137, label %pm_lookup_local_index.exit146

.lr.ph.i142:                                      ; preds = %.lr.ph.i142, %.lr.ph.i142.preheader.new
  %.0113.i144 = phi ptr [ %5, %.lr.ph.i142.preheader.new ], [ %i.ij, %.lr.ph.i142 ]
  %niter = phi i32 [ 0, %.lr.ph.i142.preheader.new ], [ %niter.next.7, %.lr.ph.i142 ]
  %i.hu = getelementptr i8, ptr %.0113.i144, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !327
  %i.hw = getelementptr i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !327
  %i.hy = getelementptr i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !327
  %i.ia = getelementptr i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !327
  %i.ic = getelementptr i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !327
  %i.ie = getelementptr i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !327
  %i.ig = getelementptr i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !327
  %i.ii = getelementptr i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !327 ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i127.loopexit.unr-lcssa, label %.lr.ph.i142, !llvm.loop !23

.lr.ph9.i137:                                     ; preds = %.preheader.i127, %bb.o
  %.18.i138 = phi i32 [ %i.im, %bb.o ], [ %.0.lcssa.i129, %.preheader.i127 ]
  %.1127.i139 = phi ptr [ %i.il, %bb.o ], [ %.011.lcssa.i128, %.preheader.i127 ]
  %i.ik = getelementptr i8, ptr %.1127.i139, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !327 ; 4 uses
  %.not14.i140 = icmp eq ptr %i.il, null
  br i1 %.not14.i140, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph9.i137
  %i.im = add i32 %.18.i138, 1                    ; 2 uses
  %i.in = getelementptr i8, ptr %i.il, i64 128
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !352
  %i.ip = call i32 @rb_st_lookup(ptr noundef %i.io, i64 noundef %i.hq, ptr noundef nonnull %i.a) #37
  %.not.i141 = icmp eq i32 %i.ip, 0
  br i1 %.not.i141, label %.lr.ph9.i137, label %pm_lookup_local_index.exit146, !llvm.loop !22

bb.p:                                             ; preds = %.lr.ph9.i137
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.262, i32 noundef %i.hj) #38
  unreachable

pm_lookup_local_index.exit146:                    ; preds = %bb.o, %.preheader.i127
  %.112.lcssa.i131 = phi ptr [ %.011.lcssa.i128, %.preheader.i127 ], [ %i.il, %bb.o ]
  %.1.lcssa.i132 = phi i32 [ %.0.lcssa.i129, %.preheader.i127 ], [ %i.im, %bb.o ] ; 2 uses
  %i.iq = getelementptr i8, ptr %.112.lcssa.i131, i64 112
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !424
  %i.is = load i64, ptr %i.a, align 8, !tbaa !63
  %i.it = trunc i64 %i.is to i32
  %i.iu = sub i32 %i.ir, %i.it                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.iv = icmp ult i64 %.0164, %i.gc
  br i1 %i.iv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %pm_lookup_local_index.exit146
  %i.iw = load i32, ptr %2, align 4, !tbaa !370
  %i.ix = load i32, ptr %i.cb, align 4, !tbaa !372
  %i.iy = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.iw, i32 noundef %i.ix, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.iz = load ptr, ptr %i.ce, align 8, !tbaa !42 ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iy, i64 16
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !61
  %i.jb = getelementptr i8, ptr %i.iz, i64 8
  store ptr %i.iy, ptr %i.jb, align 8, !tbaa !62
  store ptr %i.iy, ptr %i.ce, align 8, !tbaa !42
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %pm_lookup_local_index.exit146
  %i.jc = load i32, ptr %i.hi, align 8, !tbaa !627 ; 4 uses
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.je = load ptr, ptr %i.gd, align 8, !tbaa !354
  %i.jf = getelementptr i8, ptr %i.je, i64 592
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !465
  %i.jh = icmp ugt i32 %i.jc, %i.jg
  br i1 %i.jh, label %bb.t, label %pm_constant_id_lookup.exit147

bb.t:                                             ; preds = %bb.s, %bb.r
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.jc) #38
  unreachable

pm_constant_id_lookup.exit147:                    ; preds = %bb.s
  %i.ji = load ptr, ptr %i.ge, align 8, !tbaa !329
  %i.jj = add i32 %i.jc, -1
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr [8 x i8], ptr %i.ji, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !63
  %i.jn = call i64 @rb_id2sym(i64 noundef %i.jm) #37
  %i.jo = load i32, ptr %2, align 4, !tbaa !370
  %i.jp = load i32, ptr %i.cb, align 4, !tbaa !372
  %i.jq = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.jo, i32 noundef %i.jp, i32 noundef 19, i32 noundef 1, i64 noundef %i.jn) ; 3 uses
  %i.jr = load ptr, ptr %i.ce, align 8, !tbaa !42 ; 2 uses
  %i.js = getelementptr i8, ptr %i.jq, i64 16
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !61
  %i.jt = getelementptr i8, ptr %i.jr, i64 8
  store ptr %i.jq, ptr %i.jt, align 8, !tbaa !62
  store ptr %i.jq, ptr %i.ce, align 8, !tbaa !42
  %i.ju = load i32, ptr %2, align 4, !tbaa !370
  %i.jv = load i32, ptr %i.cb, align 4, !tbaa !372
  %i.jw = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.ju, i32 noundef %i.jv, i64 noundef 145, i64 noundef 3, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.jx = load ptr, ptr %i.ce, align 8, !tbaa !42 ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jw, i64 16
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !61
  %i.jz = getelementptr i8, ptr %i.jx, i64 8
  store ptr %i.jw, ptr %i.jz, align 8, !tbaa !62
  store ptr %i.jw, ptr %i.ce, align 8, !tbaa !42
  %i.ka = load i32, ptr %2, align 4, !tbaa !370
  %i.kb = load i32, ptr %i.cb, align 4, !tbaa !372
  call fastcc void @pm_iseq_add_setlocal(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %i.ka, i32 noundef %i.kb, i32 noundef %i.iu, i32 noundef %.1.lcssa.i132)
  %i.kc = load i32, ptr %2, align 4, !tbaa !370
  %i.kd = load i32, ptr %i.cb, align 4, !tbaa !372
  %i.ke = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.kc, i32 noundef %i.kd, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.kf = load ptr, ptr %i.ga, align 8, !tbaa !42 ; 2 uses
  %i.kg = getelementptr i8, ptr %i.ke, i64 16
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !61
  %i.kh = getelementptr i8, ptr %i.kf, i64 8
  store ptr %i.ke, ptr %i.kh, align 8, !tbaa !62
  store ptr %i.ke, ptr %i.ga, align 8, !tbaa !42
  %i.ki = load i32, ptr %2, align 4, !tbaa !370
  %i.kj = load i32, ptr %i.cb, align 4, !tbaa !372
  call fastcc void @pm_iseq_add_setlocal(ptr noundef nonnull %0, ptr noundef %6, i32 noundef %i.ki, i32 noundef %i.kj, i32 noundef %i.iu, i32 noundef %.1.lcssa.i132)
  %i.kk = add nuw i64 %.0164, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.kk, %i.cy
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !1434

bb.u:                                             ; preds = %APPEND_LIST.exit
  %i.kl = load i32, ptr %2, align 4, !tbaa !370
  %i.km = load i32, ptr %i.cb, align 4, !tbaa !372
  %i.kn = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.kl, i32 noundef %i.km, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ko = load ptr, ptr %i.ce, align 8, !tbaa !42 ; 2 uses
  %i.kp = getelementptr i8, ptr %i.kn, i64 16
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !61
  %i.kq = getelementptr i8, ptr %i.ko, i64 8
  store ptr %i.kn, ptr %i.kq, align 8, !tbaa !62
  store ptr %i.kn, ptr %i.ce, align 8, !tbaa !42
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %APPEND_LIST.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.w

bb.w:                                             ; preds = %pm_constant_id_lookup.exit, %bb.k, %bb.v
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_compile_multi_target_node(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr noundef %5, ptr nofree noundef captures(address_is_null) %6) unnamed_addr #1 {
bb.a:
  %7 = alloca %struct.pm_multi_target_state_t, align 8 ; 5 uses
  %i.a = getelementptr i8, ptr %5, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 600
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !355
  %i.f = getelementptr i8, ptr %i.b, i64 664
  %i.g = load i32, ptr %i.f, align 8, !tbaa !368
  %i.h = tail call i32 @pm_newline_list_line(ptr noundef %i.c, ptr noundef %i.e, i32 noundef %i.g) #37 ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !371  ; 3 uses
  %i.k = load i16, ptr %1, align 8, !tbaa !331    ; 2 uses
  %.off = add i16 %i.k, -105
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @pm_node_type_to_str(i16 noundef zeroext %i.k) #37
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.290, ptr noundef %i.l) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %.087 = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %.088 = getelementptr i8, ptr %1, i64 56        ; 5 uses
  %.089.in = getelementptr i8, ptr %1, i64 48
  %.089 = load ptr, ptr %.089.in, align 8, !tbaa !335 ; 4 uses
  %i.m = icmp eq ptr %.089, null                  ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i16, ptr %.089, align 8, !tbaa !331
  %i.o = icmp eq i16 %i.n, 139
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.089, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !443
  %i.r = icmp ne ptr %i.q, null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.s = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ %i.r, %bb.e ] ; 3 uses
  %i.t = load i64, ptr %.088, align 8, !tbaa !379
  %i.u = icmp ne i64 %i.t, 0                      ; 3 uses
  %i.v = load i64, ptr %.087, align 8, !tbaa !379
  %i.w = shl i64 %i.v, 1
  %i.x = or disjoint i64 %i.w, 1
  %i.y = select i1 %i.s, i1 true, i1 %i.u         ; 2 uses
  %i.z = select i1 %i.y, i64 3, i64 1
  %i.aa = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 31, i32 noundef 2, i64 noundef %i.x, i64 noundef %i.z) ; 3 uses
  %i.ab = getelementptr i8, ptr %3, i64 24        ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !61
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !62
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.af = icmp eq ptr %6, null                    ; 2 uses
  %spec.store.select = select i1 %i.af, ptr %7, ptr %6 ; 3 uses
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.af, ptr %7, ptr %6
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8 ; 4 uses
  %i.ag = load i64, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !431 ; 3 uses
  %i.ah = load i64, ptr %.087, align 8, !tbaa !379 ; 2 uses
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ai = zext i1 %i.y to i64
  %i.aj = getelementptr i8, ptr %1, i64 40
  %i.ak = add i64 %i.ag, %i.ai
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.f
  br i1 %i.s, label %bb.h, label %bb.k

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %i.al = phi i64 [ %i.ah, %.lr.ph ], [ %i.as, %bb.g ]
  %.08694 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %bb.g ] ; 3 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !380
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.08694
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !335
  %i.ap = sub i64 %i.ak, %.08694
  %i.aq = add i64 %i.ap, %i.al
  store i64 %i.aq, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !431
  call fastcc void @pm_compile_target_node(ptr noundef %0, ptr noundef %i.ao, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %spec.store.select)
  %i.ar = add nuw i64 %.08694, 1                  ; 2 uses
  %i.as = load i64, ptr %.087, align 8, !tbaa !379 ; 2 uses
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %bb.g, label %._crit_edge, !llvm.loop !1440

bb.h:                                             ; preds = %._crit_edge
  %i.au = getelementptr i8, ptr %.089, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !443
  %i.aw = load i64, ptr %.088, align 8, !tbaa !379 ; 2 uses
  %i.ax = add i64 %i.ag, 1
  %i.ay = add i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !431
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = shl i64 %i.aw, 1
  %i.ba = or disjoint i64 %i.az, 1
  %i.bb = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 31, i32 noundef 2, i64 noundef %i.ba, i64 noundef 7) ; 3 uses
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !61
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !62
  store ptr %i.bb, ptr %i.ab, align 8, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call fastcc void @pm_compile_target_node(ptr noundef %0, ptr noundef %i.av, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %spec.store.select)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  br i1 %i.u, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %or.cond.not = or i1 %i.m, %i.s
  br i1 %or.cond.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i64, ptr %.088, align 8, !tbaa !379
  %i.bg = shl i64 %i.bf, 1
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 31, i32 noundef 2, i64 noundef %i.bh, i64 noundef 5) ; 3 uses
  %i.bj = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !61
  %i.bl = getelementptr i8, ptr %i.bj, i64 8
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !62
  store ptr %i.bi, ptr %i.ab, align 8, !tbaa !42
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = load i64, ptr %.088, align 8, !tbaa !379 ; 2 uses
  %.not98 = icmp eq i64 %i.bm, 0
  br i1 %.not98, label %.loopexit, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.n
  %i.bn = getelementptr i8, ptr %1, i64 72
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph97, %bb.o
  %i.bo = phi i64 [ %i.bm, %.lr.ph97 ], [ %i.bv, %bb.o ]
  %.095 = phi i64 [ 0, %.lr.ph97 ], [ %i.bu, %bb.o ] ; 3 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !380
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %.095
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !335
  %i.bs = sub i64 %i.ag, %.095
  %i.bt = add i64 %i.bs, %i.bo
  store i64 %i.bt, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !431
  call fastcc void @pm_compile_target_node(ptr noundef %0, ptr noundef %i.br, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %spec.store.select)
  %i.bu = add nuw i64 %.095, 1                    ; 2 uses
  %i.bv = load i64, ptr %.088, align 8, !tbaa !379 ; 2 uses
  %i.bw = icmp ult i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.o, label %.loopexit, !llvm.loop !1441

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_multi_target_state_update(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !629
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !630  ; 2 uses
  %.not25 = icmp eq ptr %i.d, null
  br i1 %.not25, label %.loopexit22, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.loopexit
  %.026 = phi ptr [ %i.ab, %.loopexit ], [ %i.d, %bb.b ] ; 6 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !629
  %i.f = getelementptr i8, ptr %.026, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !632
  %i.h = sub i64 %i.e, %i.g
  %i.i = getelementptr i8, ptr %.026, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !633
  %i.k = add i64 %i.h, %i.j
  %i.l = shl i64 %i.k, 1
  %i.m = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.n = load ptr, ptr %.026, align 8, !tbaa !634 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93
  store i64 %i.m, ptr %i.p, align 8, !tbaa !63
  %i.q = getelementptr i8, ptr %.026, i64 16      ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !635
  %i.s = icmp ugt i64 %i.r, 1
  br i1 %i.s, label %.preheader, label %.loopexit

end_hunk_2
begin_hunk_3_@pm_compile_pattern_error_handler:bb.a
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !62
  store ptr %i.dl, ptr %i.cm, align 8, !tbaa !42
  %i.dp = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 44, i32 noundef 1, i64 noundef 9) ; 3 uses
  %i.dq = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 16
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !61
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !62
  store ptr %i.dp, ptr %i.cm, align 8, !tbaa !42
  %i.dt = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 44, i32 noundef 1, i64 noundef 15) ; 3 uses
  %i.du = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dt, i64 16
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !61
  %i.dw = getelementptr i8, ptr %i.du, i64 8
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !62
  store ptr %i.dt, ptr %i.cm, align 8, !tbaa !42
  %i.dx = tail call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i64 noundef 170, i64 noundef 7, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.dy = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dx, i64 16
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !61
  %i.ea = getelementptr i8, ptr %i.dy, i64 8
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !62
  store ptr %i.dx, ptr %i.cm, align 8, !tbaa !42
  %i.eb = tail call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i64 noundef 169, i64 noundef 5, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.ec = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.eb, i64 16
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !61
  %i.ee = getelementptr i8, ptr %i.ec, i64 8
  store ptr %i.eb, ptr %i.ee, align 8, !tbaa !62
  store ptr %i.eb, ptr %i.cm, align 8, !tbaa !42
  %i.ef = ptrtoint ptr %i.bq to i64
  %i.eg = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 72, i32 noundef 1, i64 noundef %i.ef) ; 4 uses
  %i.eh = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eg, i64 16
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !61
  %i.ej = getelementptr i8, ptr %i.eh, i64 8
  store ptr %i.eg, ptr %i.ej, align 8, !tbaa !62
  %i.ek = load i32, ptr %i.by, align 8, !tbaa !240
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.by, align 8, !tbaa !240
  %i.em = getelementptr i8, ptr %i.ag, i64 16
  store ptr %i.eg, ptr %i.em, align 8, !tbaa !61
  %i.en = getelementptr i8, ptr %i.eg, i64 8
  store ptr %i.ag, ptr %i.en, align 8, !tbaa !62
  store ptr %i.ag, ptr %i.cm, align 8, !tbaa !42
  %i.eo = load i64, ptr @rb_eNoMatchingPatternKeyError, align 8, !tbaa !63
  %i.ep = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 19, i32 noundef 1, i64 noundef %i.eo) ; 3 uses
  %i.eq = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.er = getelementptr i8, ptr %i.ep, i64 16
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !61
  %i.es = getelementptr i8, ptr %i.eq, i64 8
  store ptr %i.ep, ptr %i.es, align 8, !tbaa !62
  store ptr %i.ep, ptr %i.cm, align 8, !tbaa !42
  %i.et = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.eu = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.et, i64 16
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !61
  %i.ew = getelementptr i8, ptr %i.eu, i64 8
  store ptr %i.et, ptr %i.ew, align 8, !tbaa !62
  store ptr %i.et, ptr %i.cm, align 8, !tbaa !42
  %i.ex = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.102, i64 noundef 6) #37
  %i.ey = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 19, i32 noundef 1, i64 noundef %i.ex) ; 3 uses
  %i.ez = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ey, i64 16
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !61
  %i.fb = getelementptr i8, ptr %i.ez, i64 8
  store ptr %i.ey, ptr %i.fb, align 8, !tbaa !62
  store ptr %i.ey, ptr %i.cm, align 8, !tbaa !42
  %i.fc = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 44, i32 noundef 1, i64 noundef 9) ; 3 uses
  %i.fd = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fc, i64 16
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !61
  %i.ff = getelementptr i8, ptr %i.fd, i64 8
  store ptr %i.fc, ptr %i.ff, align 8, !tbaa !62
  store ptr %i.fc, ptr %i.cm, align 8, !tbaa !42
  %i.fg = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 44, i32 noundef 1, i64 noundef 15) ; 3 uses
  %i.fh = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fg, i64 16
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !61
  %i.fj = getelementptr i8, ptr %i.fh, i64 8
  store ptr %i.fg, ptr %i.fj, align 8, !tbaa !62
  store ptr %i.fg, ptr %i.cm, align 8, !tbaa !42
  %i.fk = tail call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i64 noundef 170, i64 noundef 7, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.fl = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fk, i64 16
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !61
  %i.fn = getelementptr i8, ptr %i.fl, i64 8
  store ptr %i.fk, ptr %i.fn, align 8, !tbaa !62
  store ptr %i.fk, ptr %i.cm, align 8, !tbaa !42
  %i.fo = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 44, i32 noundef 1, i64 noundef 15) ; 3 uses
  %i.fp = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fo, i64 16
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !61
  %i.fr = getelementptr i8, ptr %i.fp, i64 8
  store ptr %i.fo, ptr %i.fr, align 8, !tbaa !62
  store ptr %i.fo, ptr %i.cm, align 8, !tbaa !42
  %i.fs = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 44, i32 noundef 1, i64 noundef 19) ; 3 uses
  %i.ft = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fs, i64 16
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !61
  %i.fv = getelementptr i8, ptr %i.ft, i64 8
  store ptr %i.fs, ptr %i.fv, align 8, !tbaa !62
  store ptr %i.fs, ptr %i.cm, align 8, !tbaa !42
  %.pr.i150 = load i64, ptr @pm_compile_pattern_error_handler.rbimpl_id.269, align 8, !tbaa !63 ; 2 uses
  %.not4.i151 = icmp eq i64 %.pr.i150, 0
  br i1 %.not4.i151, label %.lr.ph.i153, label %rbimpl_intern_const.exit155

.lr.ph.i153:                                      ; preds = %rbimpl_intern_const.exit149, %.lr.ph.i153
  %i.fw = tail call i64 @rb_intern2(ptr noundef nonnull @.str.104, i64 noundef 3) #37 ; 3 uses
  store i64 %i.fw, ptr @pm_compile_pattern_error_handler.rbimpl_id.269, align 8, !tbaa !63
  %.not.i154 = icmp eq i64 %i.fw, 0
  br i1 %.not.i154, label %.lr.ph.i153, label %rbimpl_intern_const.exit155, !llvm.loop !3

rbimpl_intern_const.exit155:                      ; preds = %.lr.ph.i153, %rbimpl_intern_const.exit149
  %.lcssa.i152 = phi i64 [ %.pr.i150, %rbimpl_intern_const.exit149 ], [ %i.fw, %.lr.ph.i153 ]
  %i.fx = tail call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i64 noundef %.lcssa.i152, i64 noundef 3, ptr noundef null, i64 noundef 65, ptr noundef nonnull %i.cd) ; 3 uses
  %i.fy = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fx, i64 16
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !61
  %i.ga = getelementptr i8, ptr %i.fy, i64 8
  store ptr %i.fx, ptr %i.ga, align 8, !tbaa !62
  store ptr %i.fx, ptr %i.cm, align 8, !tbaa !42
  %i.gb = tail call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i64 noundef 169, i64 noundef 3, ptr noundef null, i64 noundef 1, ptr noundef null) ; 4 uses
  %i.gc = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gb, i64 16
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !61
  %i.ge = getelementptr i8, ptr %i.gc, i64 8
  store ptr %i.gb, ptr %i.ge, align 8, !tbaa !62
  %i.gf = getelementptr i8, ptr %i.bq, i64 16
  store ptr %i.gb, ptr %i.gf, align 8, !tbaa !61
  %i.gg = getelementptr i8, ptr %i.gb, i64 8
  store ptr %i.bq, ptr %i.gg, align 8, !tbaa !62
  store ptr %i.bq, ptr %i.cm, align 8, !tbaa !42
  %i.gh = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 46, i32 noundef 1, i64 noundef 15) ; 3 uses
  %i.gi = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gh, i64 16
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !61
  %i.gk = getelementptr i8, ptr %i.gi, i64 8
  store ptr %i.gh, ptr %i.gk, align 8, !tbaa !62
  store ptr %i.gh, ptr %i.cm, align 8, !tbaa !42
  br i1 %4, label %.critedge, label %bb.f

bb.f:                                             ; preds = %rbimpl_intern_const.exit155
  %i.gl = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.gm = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gl, i64 16
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !61
  %i.go = getelementptr i8, ptr %i.gm, i64 8
  store ptr %i.gl, ptr %i.go, align 8, !tbaa !62
  store ptr %i.gl, ptr %i.cm, align 8, !tbaa !42
  %i.gp = ptrtoint ptr %3 to i64
  %i.gq = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 72, i32 noundef 1, i64 noundef %i.gp) ; 3 uses
  %i.gr = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gq, i64 16
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !61
  %i.gt = getelementptr i8, ptr %i.gr, i64 8
  store ptr %i.gq, ptr %i.gt, align 8, !tbaa !62
  store ptr %i.gq, ptr %i.cm, align 8, !tbaa !42
  %i.gu = getelementptr i8, ptr %3, i64 40        ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !240
  %i.gw = add i32 %i.gv, 1
  store i32 %i.gw, ptr %i.gu, align 8, !tbaa !240
  %i.gx = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 41, i32 noundef 1, i64 noundef 11)
  br label %bb.g

.critedge:                                        ; preds = %rbimpl_intern_const.exit155
  %i.gy = ptrtoint ptr %3 to i64
  %i.gz = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 72, i32 noundef 1, i64 noundef %i.gy) ; 3 uses
  %i.ha = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gz, i64 16
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !61
  %i.hc = getelementptr i8, ptr %i.ha, i64 8
  store ptr %i.gz, ptr %i.hc, align 8, !tbaa !62
  store ptr %i.gz, ptr %i.cm, align 8, !tbaa !42
  %i.hd = getelementptr i8, ptr %3, i64 40        ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !240
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 8, !tbaa !240
  %i.hg = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 41, i32 noundef 1, i64 noundef 11) ; 3 uses
  %i.hh = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hg, i64 16
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !61
  %i.hj = getelementptr i8, ptr %i.hh, i64 8
  store ptr %i.hg, ptr %i.hj, align 8, !tbaa !62
  store ptr %i.hg, ptr %i.cm, align 8, !tbaa !42
  %i.hk = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 17, i32 noundef 0, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %.sink25 = phi ptr [ %i.gx, %bb.f ], [ %i.hk, %.critedge ] ; 3 uses
  %i.hl = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.hm = getelementptr i8, ptr %.sink25, i64 16
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !61
  %i.hn = getelementptr i8, ptr %i.hl, i64 8
  store ptr %.sink25, ptr %i.hn, align 8, !tbaa !62
  store ptr %.sink25, ptr %i.cm, align 8, !tbaa !42
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_compile_shareable_constant_value(ptr noundef %0, ptr noundef %1, i16 noundef zeroext range(i16 0, 29) %2, i64 noundef %3, ptr noundef nonnull %4, ptr noundef %5, i1 noundef zeroext %6) unnamed_addr #1 {
bb.a:
  %7 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 11 uses
  %i.a = tail call fastcc i64 @pm_compile_shareable_constant_literal(ptr noundef %0, ptr noundef %1, ptr noundef %5) ; 2 uses
  %.not = icmp eq i64 %i.a, 36
  %i.b = getelementptr i8, ptr %5, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !354  ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 600
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !355
  %i.g = getelementptr i8, ptr %i.c, i64 664
  %i.h = load i32, ptr %i.g, align 8, !tbaa !368
  %i.i = tail call i32 @pm_newline_list_line(ptr noundef %i.d, ptr noundef %i.f, i32 noundef %i.h) #37 ; 14 uses
  %i.j = getelementptr i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !371  ; 14 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.k, i32 noundef 19, i32 noundef 1, i64 noundef %i.a) ; 3 uses
  %i.m = getelementptr i8, ptr %4, i64 24         ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %i.o = getelementptr i8, ptr %i.l, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !61
  %i.p = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.l, ptr %i.p, align 8, !tbaa !62
  store ptr %i.l, ptr %i.m, align 8, !tbaa !42
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.q = load i16, ptr %1, align 8, !tbaa !331
  switch i16 %i.q, label %bb.o [
    i16 6, label %bb.d
    i16 65, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.k, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.s = getelementptr i8, ptr %4, i64 24         ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42   ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !61
  %i.v = getelementptr i8, ptr %i.t, i64 8
  store ptr %i.r, ptr %i.v, align 8, !tbaa !62
  store ptr %i.r, ptr %i.s, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !649
  %.not177 = icmp eq i64 %i.x, 0
  br i1 %.not177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.y = getelementptr i8, ptr %1, i64 40
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.z = shl i64 %i.ak, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.lcssa173 = phi i64 [ 1, %bb.f ], [ %i.aa, %._crit_edge.loopexit ]
  %i.ab = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.k, i32 noundef 27, i32 noundef 1, i64 noundef %.lcssa173) ; 3 uses
  %i.ac = getelementptr i8, ptr %4, i64 24        ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !61
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !62
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !42
  br i1 %6, label %bb.h, label %bb.af

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0176 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %bb.g ] ; 2 uses
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !650
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.0176
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !335
  tail call fastcc void @pm_compile_shareable_constant_value(ptr noundef %0, ptr noundef %i.ai, i16 noundef zeroext %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i1 noundef zeroext false)
  %i.aj = add nuw i64 %.0176, 1                   ; 2 uses
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !649 ; 2 uses
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !1521

bb.h:                                             ; preds = %._crit_edge
  %.not120 = icmp samesign ult i16 %2, 16
  br i1 %.not120, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.pr.i = load i64, ptr @pm_compile_shareable_constant_value.rbimpl_id, align 8, !tbaa !63 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.am = tail call i64 @rb_intern2(ptr noundef nonnull @.str.152, i64 noundef 19) #37 ; 3 uses
  store i64 %i.am, ptr @pm_compile_shareable_constant_value.rbimpl_id, align 8, !tbaa !63
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !3

bb.j:                                             ; preds = %bb.h
  %.pr.i129 = load i64, ptr @pm_compile_shareable_constant_value.rbimpl_id.271, align 8, !tbaa !63 ; 2 uses
  %.not4.i130 = icmp eq i64 %.pr.i129, 0
  br i1 %.not4.i130, label %.lr.ph.i132, label %rbimpl_intern_const.exit

.lr.ph.i132:                                      ; preds = %bb.j, %.lr.ph.i132
  %i.an = tail call i64 @rb_intern2(ptr noundef nonnull @.str.154, i64 noundef 14) #37 ; 3 uses
  store i64 %i.an, ptr @pm_compile_shareable_constant_value.rbimpl_id.271, align 8, !tbaa !63
  %.not.i133 = icmp eq i64 %i.an, 0
  br i1 %.not.i133, label %.lr.ph.i132, label %rbimpl_intern_const.exit, !llvm.loop !3

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %.lr.ph.i132, %bb.j, %bb.i
  %i.ao = phi i64 [ %i.an, %.lr.ph.i132 ], [ %.pr.i, %bb.i ], [ %.pr.i129, %bb.j ], [ %i.am, %.lr.ph.i ]
  %i.ap = tail call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.k, i64 noundef %i.ao, i64 noundef 3, ptr noundef null, i64 noundef 33, ptr noundef null) ; 3 uses
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !61
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !62
  store ptr %i.ap, ptr %i.ac, align 8, !tbaa !42
  br label %bb.af

bb.k:                                             ; preds = %bb.c
  br i1 %6, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.at = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.k, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.au = getelementptr i8, ptr %4, i64 24        ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !61
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !62
  store ptr %i.at, ptr %i.au, align 8, !tbaa !42
  %i.ay = getelementptr i8, ptr %1, i64 40
  tail call fastcc void @pm_compile_hash_elements(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.ay, i16 noundef zeroext %2, i64 noundef %3, i1 noundef zeroext false, ptr noundef %4, ptr noundef nonnull %5)
  %.not119 = icmp samesign ult i16 %2, 16
  br i1 %.not119, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pr.i135 = load i64, ptr @pm_compile_shareable_constant_value.rbimpl_id.272, align 8, !tbaa !63 ; 2 uses
  %.not4.i136 = icmp eq i64 %.pr.i135, 0
  br i1 %.not4.i136, label %.lr.ph.i138, label %rbimpl_intern_const.exit140

.lr.ph.i138:                                      ; preds = %bb.m, %.lr.ph.i138
  %i.az = tail call i64 @rb_intern2(ptr noundef nonnull @.str.152, i64 noundef 19) #37 ; 3 uses
  store i64 %i.az, ptr @pm_compile_shareable_constant_value.rbimpl_id.272, align 8, !tbaa !63
  %.not.i139 = icmp eq i64 %i.az, 0
  br i1 %.not.i139, label %.lr.ph.i138, label %rbimpl_intern_const.exit140, !llvm.loop !3

bb.n:                                             ; preds = %bb.l
  %.pr.i141 = load i64, ptr @pm_compile_shareable_constant_value.rbimpl_id.273, align 8, !tbaa !63 ; 2 uses
  %.not4.i142 = icmp eq i64 %.pr.i141, 0
  br i1 %.not4.i142, label %.lr.ph.i144, label %rbimpl_intern_const.exit140

.lr.ph.i144:                                      ; preds = %bb.n, %.lr.ph.i144
  %i.ba = tail call i64 @rb_intern2(ptr noundef nonnull @.str.154, i64 noundef 14) #37 ; 3 uses
  store i64 %i.ba, ptr @pm_compile_shareable_constant_value.rbimpl_id.273, align 8, !tbaa !63
  %.not.i145 = icmp eq i64 %i.ba, 0
  br i1 %.not.i145, label %.lr.ph.i144, label %rbimpl_intern_const.exit140, !llvm.loop !3

rbimpl_intern_const.exit140:                      ; preds = %.lr.ph.i138, %.lr.ph.i144, %bb.n, %bb.m
  %i.bb = phi i64 [ %i.ba, %.lr.ph.i144 ], [ %.pr.i135, %bb.m ], [ %.pr.i141, %bb.n ], [ %i.az, %.lr.ph.i138 ]
  %i.bc = tail call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.k, i64 noundef %i.bb, i64 noundef 3, ptr noundef null, i64 noundef 33, ptr noundef null) ; 3 uses
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 16
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !62
  store ptr %i.bc, ptr %i.au, align 8, !tbaa !42
  br label %bb.af

.critedge:                                        ; preds = %bb.k
  %i.bg = getelementptr i8, ptr %1, i64 40
  tail call fastcc void @pm_compile_hash_elements(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.bg, i16 noundef zeroext %2, i64 noundef %3, i1 noundef zeroext false, ptr noundef %4, ptr noundef nonnull %5)
  br label %bb.af

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr %7, ptr %i.bh, align 8, !tbaa !42
  call fastcc void @pm_compile_node(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %7, i1 noundef zeroext false, ptr noundef nonnull %5)
  %i.bi = load i16, ptr %1, align 8, !tbaa !331
  %i.bj = icmp eq i16 %i.bi, 85
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.k, i64 noundef 133, i64 noundef 1, ptr noundef null, i64 noundef 33, ptr noundef null) ; 3 uses
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !42 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 16
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !61
  %i.bn = getelementptr i8, ptr %i.bl, i64 8
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !62
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !42
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bo = and i16 %2, 4
end_hunk_3
begin_hunk_4_@pm_compile_pattern_eqq_error:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 48
  %i.p = getelementptr i8, ptr %i.k, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !37   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp samesign ugt i64 %i.o, %i.r
  br i1 %i.s, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %bb.a
  %i.t = icmp ult i32 %i.q, 48
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.c
  %.027.i.i.i.i = phi i32 [ %i.v, %bb.c ], [ %i.q, %.preheader.i.i.i.i ] ; 3 uses
  %i.u = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = shl nuw nsw i32 %.027.i.i.i.i, 1         ; 3 uses
  %i.w = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.c
  %i.x = zext nneg i32 %i.v to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.q, %.preheader.i.i.i.i ], [ %i.v, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.r, %.preheader.i.i.i.i ], [ %i.x, %._crit_edge.i.i.loopexit.i.i ]
  %i.y = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.z = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.y, i64 noundef 1) #39 ; 6 uses
  store ptr %i.z, ptr %i.k, align 8, !tbaa !64
  store ptr %i.z, ptr %i.j, align 8, !tbaa !64
  store ptr null, ptr %i.z, align 8, !tbaa !64
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !37
  %i.ab = getelementptr i8, ptr %i.z, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ab, align 4, !tbaa !37
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %bb.a, %._crit_edge.i.i.i.i
  %i.ac = phi i32 [ %i.m, %bb.a ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.k, %bb.a ], [ %i.z, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.ae = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.af = zext i32 %i.ac to i64
  %i.ag = getelementptr i8, ptr %i.ad, i64 %i.af  ; 10 uses
  %i.ah = add i32 %i.ac, 48
  store i32 %i.ah, ptr %i.ae, align 8, !tbaa !37
  store i32 1, ptr %i.ag, align 8, !tbaa !182
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !183
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.ak = getelementptr i8, ptr %i.aj, i64 132    ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !184 ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !184
  %i.an = getelementptr i8, ptr %i.ag, i64 24
  store i32 %i.al, ptr %i.an, align 8, !tbaa !111
  %i.ao = getelementptr i8, ptr %i.ag, i64 40     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 44     ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = and i8 %i.aq, -16
  store i8 %i.ar, ptr %i.ap, align 4
  %i.as = getelementptr i8, ptr %i.ag, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.as, align 4, !tbaa !37
  %i.at = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.au = getelementptr i8, ptr %2, i64 24        ; 30 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !61
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !62
  store ptr %i.at, ptr %i.au, align 8, !tbaa !42
  %i.ay = ptrtoint ptr %i.ag to i64
  %i.az = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 73, i32 noundef 1, i64 noundef %i.ay) ; 3 uses
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !61
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !62
  store ptr %i.az, ptr %i.au, align 8, !tbaa !42
  %i.bd = load i32, ptr %i.ao, align 8, !tbaa !240
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ao, align 8, !tbaa !240
  %i.bf = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 16
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !61
  %i.bi = getelementptr i8, ptr %i.bg, i64 8
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !62
  store ptr %i.bf, ptr %i.au, align 8, !tbaa !42
  %i.bj = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.129, i64 noundef 30) #37
  %i.bk = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 19, i32 noundef 1, i64 noundef %i.bj) ; 3 uses
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 16
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !61
  %i.bn = getelementptr i8, ptr %i.bl, i64 8
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !62
  store ptr %i.bk, ptr %i.au, align 8, !tbaa !42
  %i.bo = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 44, i32 noundef 1, i64 noundef 7) ; 3 uses
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bo, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !61
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !62
  store ptr %i.bo, ptr %i.au, align 8, !tbaa !42
  %i.bs = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 44, i32 noundef 1, i64 noundef 11) ; 3 uses
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !61
  %i.bv = getelementptr i8, ptr %i.bt, i64 8
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !62
  store ptr %i.bs, ptr %i.au, align 8, !tbaa !42
  %i.bw = tail call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i64 noundef 170, i64 noundef 7, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.bx = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bw, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !61
  %i.bz = getelementptr i8, ptr %i.bx, i64 8
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !62
  store ptr %i.bw, ptr %i.au, align 8, !tbaa !42
  %i.ca = add i32 %3, 2
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 1
  %i.cd = or disjoint i64 %i.cc, 1
  %i.ce = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 45, i32 noundef 1, i64 noundef %i.cd) ; 3 uses
  %i.cf = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !61
  %i.ch = getelementptr i8, ptr %i.cf, i64 8
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !62
  store ptr %i.ce, ptr %i.au, align 8, !tbaa !42
  %i.ci = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 19, i32 noundef 1, i64 noundef 0) ; 3 uses
  %i.cj = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 16
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !61
  %i.cl = getelementptr i8, ptr %i.cj, i64 8
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !62
  store ptr %i.ci, ptr %i.au, align 8, !tbaa !42
  %i.cm = add i32 %3, 4
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 1
  %i.cp = or disjoint i64 %i.co, 1
  %i.cq = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 45, i32 noundef 1, i64 noundef %i.cp) ; 3 uses
  %i.cr = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cq, i64 16
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !61
  %i.ct = getelementptr i8, ptr %i.cr, i64 8
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !62
  store ptr %i.cq, ptr %i.au, align 8, !tbaa !42
  %i.cu = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.cv = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 16
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !61
  %i.cx = getelementptr i8, ptr %i.cv, i64 8
  store ptr %i.cu, ptr %i.cx, align 8, !tbaa !62
  store ptr %i.cu, ptr %i.au, align 8, !tbaa !42
  %i.cy = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.cz = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !61
  %i.db = getelementptr i8, ptr %i.cz, i64 8
  store ptr %i.cy, ptr %i.db, align 8, !tbaa !62
  %i.dc = getelementptr i8, ptr %i.ag, i64 16
  store ptr %i.cy, ptr %i.dc, align 8, !tbaa !61
  %i.dd = getelementptr i8, ptr %i.cy, i64 8
  store ptr %i.ag, ptr %i.dd, align 8, !tbaa !62
  store ptr %i.ag, ptr %i.au, align 8, !tbaa !42
  %i.de = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 45, i32 noundef 1, i64 noundef 5) ; 3 uses
  %i.df = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.de, i64 16
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !61
  %i.dh = getelementptr i8, ptr %i.df, i64 8
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !62
  store ptr %i.de, ptr %i.au, align 8, !tbaa !42
  %i.di = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.dj = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.di, i64 16
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !61
  %i.dl = getelementptr i8, ptr %i.dj, i64 8
  store ptr %i.di, ptr %i.dl, align 8, !tbaa !62
  store ptr %i.di, ptr %i.au, align 8, !tbaa !42
  %i.dm = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.dn = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.do = getelementptr i8, ptr %i.dm, i64 16
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !61
  %i.dp = getelementptr i8, ptr %i.dn, i64 8
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !62
  store ptr %i.dm, ptr %i.au, align 8, !tbaa !42
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_compile_target_node(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr noundef %5, ptr nofree noundef captures(address_is_null) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %struct.pm_node_location_t, align 4 ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.e = getelementptr i8, ptr %5, i64 80         ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !354  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 600
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !355
  %i.j = getelementptr i8, ptr %i.f, i64 664
  %i.k = load i32, ptr %i.j, align 8, !tbaa !368
  %i.l = tail call i32 @pm_newline_list_line(ptr noundef %i.g, ptr noundef %i.i, i32 noundef %i.k) #37 ; 29 uses
  store i32 %i.l, ptr %7, align 4, !tbaa !370
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !371  ; 29 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !372
  %i.p = load i16, ptr %1, align 8, !tbaa !331    ; 2 uses
  switch i16 %i.p, label %bb.bh [
    i16 97, label %bb.b
    i16 31, label %bb.e
    i16 43, label %bb.j
    i16 63, label %bb.m
    i16 80, label %bb.p
    i16 40, label %bb.s
    i16 22, label %bb.ae
    i16 75, label %bb.at
    i16 105, label %bb.bd
    i16 139, label %bb.bf
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !627  ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !628  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i32 %i.t, 7                     ; 3 uses
  %i.v = icmp ult i32 %i.t, 8
  br i1 %i.v, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.t, 2147483640
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.0113.i.epil.init = phi ptr [ %5, %.lr.ph.i.preheader ], [ %i.ar, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod298 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod298)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0113.i.epil = phi ptr [ %i.x, %.lr.ph.i.epil ], [ %.0113.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.w = getelementptr i8, ptr %.0113.i.epil, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !327  ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !1537

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %.011.lcssa.i = phi ptr [ %5, %bb.b ], [ %i.ar, %.preheader.i.loopexit.unr-lcssa ], [ %i.x, %.lr.ph.i.epil ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.t, %.lr.ph.i.epil ], [ %i.t, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %i.y = zext i32 %i.r to i64                     ; 2 uses
  %i.z = getelementptr i8, ptr %.011.lcssa.i, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !352
  %i.ab = call i32 @rb_st_lookup(ptr noundef %i.aa, i64 noundef %i.y, ptr noundef nonnull %i.b) #37
  %.not6.i = icmp eq i32 %i.ab, 0
  br i1 %.not6.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0113.i = phi ptr [ %5, %.lr.ph.i.preheader.new ], [ %i.ar, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr i8, ptr %.0113.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !327
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !327
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !327
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !327
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !327
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !327
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !327
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !327 ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !23

.lr.ph9.i:                                        ; preds = %.preheader.i, %bb.c
  %.18.i = phi i32 [ %i.au, %bb.c ], [ %.0.lcssa.i, %.preheader.i ]
  %.1127.i = phi ptr [ %i.at, %bb.c ], [ %.011.lcssa.i, %.preheader.i ]
  %i.as = getelementptr i8, ptr %.1127.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !327 ; 4 uses
  %.not14.i = icmp eq ptr %i.at, null
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph9.i
  %i.au = add i32 %.18.i, 1                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.at, i64 128
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !352
  %i.ax = call i32 @rb_st_lookup(ptr noundef %i.aw, i64 noundef %i.y, ptr noundef nonnull %i.b) #37
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit, !llvm.loop !22

bb.d:                                             ; preds = %.lr.ph9.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.262, i32 noundef %i.r) #38
  unreachable

pm_lookup_local_index.exit:                       ; preds = %bb.c, %.preheader.i
  %.112.lcssa.i = phi ptr [ %.011.lcssa.i, %.preheader.i ], [ %i.at, %bb.c ]
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.au, %bb.c ]
  %i.ay = getelementptr i8, ptr %.112.lcssa.i, i64 112
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !424
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !63
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = sub i32 %i.az, %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call fastcc void @pm_iseq_add_setlocal(ptr noundef %0, ptr noundef %3, i32 noundef %i.l, i32 noundef %i.o, i32 noundef %i.bc, i32 noundef %.1.lcssa.i)
  br label %bb.bi

bb.e:                                             ; preds = %bb.a
  %i.bd = getelementptr i8, ptr %1, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1541 ; 4 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !354
  %i.bh = getelementptr i8, ptr %i.bg, i64 592
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !465
  %i.bj = icmp ugt i32 %i.be, %i.bi
  br i1 %i.bj, label %bb.g, label %pm_constant_id_lookup.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.be) #38
  unreachable

pm_constant_id_lookup.exit:                       ; preds = %bb.f
  %i.bk = getelementptr i8, ptr %5, i64 120
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !329
  %i.bm = add i32 %i.be, -1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !63 ; 3 uses
  %i.bq = tail call i64 @rb_id2sym(i64 noundef %i.bp) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.br = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !47
  %i.bt = getelementptr i8, ptr %i.bs, i64 160
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !562 ; 3 uses
  %.not.i207 = icmp eq ptr %i.bu, null
  br i1 %.not.i207, label %ISEQ_COMPILE_DATA.exit14.i, label %bb.h

bb.h:                                             ; preds = %pm_constant_id_lookup.exit
  %i.bv = call i32 @rb_id_table_lookup(ptr noundef nonnull %i.bu, i64 noundef %i.bp, ptr noundef nonnull %i.a) #37
  %.not11.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i, label %bb.i, label %get_cvar_ic_value.exit

ISEQ_COMPILE_DATA.exit14.i:                       ; preds = %pm_constant_id_lookup.exit
  %i.bw = tail call ptr @rb_id_table_create(i64 noundef 1) #37 ; 2 uses
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !47
  %i.by = getelementptr i8, ptr %i.bx, i64 160
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !562
  br label %bb.i

bb.i:                                             ; preds = %ISEQ_COMPILE_DATA.exit14.i, %bb.h
  %.0.i = phi ptr [ %i.bu, %bb.h ], [ %i.bw, %ISEQ_COMPILE_DATA.exit14.i ]
  %i.bz = getelementptr i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !70
  %i.cb = getelementptr i8, ptr %i.ca, i64 256    ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !129 ; 2 uses
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !129
  %i.ce = zext i32 %i.cc to i64
  %i.cf = shl nuw nsw i64 %i.ce, 1
  %i.cg = or disjoint i64 %i.cf, 1                ; 2 uses
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !63
  %i.ch = call i32 @rb_id_table_insert(ptr noundef %.0.i, i64 noundef %i.bp, i64 noundef %i.cg) #37 ; 0 uses
  br label %get_cvar_ic_value.exit

get_cvar_ic_value.exit:                           ; preds = %bb.h, %bb.i
  %.09.i = load i64, ptr %i.a, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ci = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %i.o, i32 noundef 11, i32 noundef 2, i64 noundef %i.bq, i64 noundef %.09.i) ; 3 uses
end_hunk_4
