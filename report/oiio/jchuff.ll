inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@encode_mcu_huff:bb.a
  %.not.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i, label %flush_bits.exit.i, label %dump_buffer.exit.i.i

dump_buffer.exit.i.i:                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !86 ; 2 uses
  store ptr %i.bh, ptr %2, align 8, !tbaa !89
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !92 ; 2 uses
  store i64 %i.bj, ptr %i.i, align 8, !tbaa !93
  br label %bb.h

bb.h:                                             ; preds = %dump_buffer.exit.i.i, %.lr.ph76.i.i
  %i.bk = phi ptr [ %i.bh, %dump_buffer.exit.i.i ], [ %i.aw, %.lr.ph76.i.i ] ; 2 uses
  %i.bl = phi i64 [ %i.bj, %dump_buffer.exit.i.i ], [ %i.az, %.lr.ph76.i.i ]
  %i.bm = sub i64 %.05174.i.i, %.051..i.i         ; 2 uses
  %.not60.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not60.i.i, label %.loopexit.i, label %.lr.ph76.i.i, !llvm.loop !100

bb.i:                                             ; preds = %bb.e
  %i.bn = ptrtoint ptr %i.f to i64
  %.neg59.i.i = sub i64 %i.bn, %i.aq
  %i.bo = add i64 %.neg59.i.i, %i.h
  store i64 %i.bo, ptr %i.i, align 8, !tbaa !93
  br label %.loopexit.i

flush_bits.exit.i:                                ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %emit_restart.exit.thread

.loopexit.i:                                      ; preds = %bb.h, %bb.i, %bb.f
  %i.bp = phi ptr [ %i.f, %bb.f ], [ %.2.i.i, %bb.i ], [ %i.bk, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bq, ptr %2, align 8, !tbaa !89
  store i8 -1, ptr %i.bp, align 1, !tbaa !31
  %i.br = load i64, ptr %i.i, align 8, !tbaa !93
  %i.bs = add i64 %i.br, -1                       ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !95  ; 5 uses
  br i1 %i.bt, label %bb.j, label %.loopexit._crit_edge.i

bb.j:                                             ; preds = %.loopexit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !85 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !98
  %i.bz = call i32 %i.by(ptr noundef %i.bu) #7, !inline_history !101
  %.not.i16.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i16.i, label %emit_restart.exit.thread, label %dump_buffer.exit.i

dump_buffer.exit.i:                               ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !92
  br label %.loopexit._crit_edge.i

.loopexit._crit_edge.i:                           ; preds = %.loopexit.i, %dump_buffer.exit.i
  %i.cc = phi i64 [ %i.cb, %dump_buffer.exit.i ], [ %i.bs, %.loopexit.i ]
  %.in = phi ptr [ %i.bw, %dump_buffer.exit.i ], [ %2, %.loopexit.i ]
  %i.cd = load ptr, ptr %.in, align 8, !tbaa !102 ; 2 uses
  %i.ce = trunc i32 %i.s to i8
  %i.cf = add i8 %i.ce, -48
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 2 uses
  store ptr %i.cg, ptr %2, align 8, !tbaa !89
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !31
  %i.ch = add i64 %i.cc, -1                       ; 3 uses
  store i64 %i.ch, ptr %i.i, align 8, !tbaa !93
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit._crit_edge.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !85 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !98
  %i.cn = call i32 %i.cm(ptr noundef %i.bu) #7, !inline_history !101
  %.not.i17.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i17.i, label %emit_restart.exit.thread, label %dump_buffer.exit19.i

dump_buffer.exit19.i:                             ; preds = %bb.k
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !86 ; 2 uses
  store ptr %i.co, ptr %2, align 8, !tbaa !89
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !92 ; 2 uses
  store i64 %i.cq, ptr %i.i, align 8, !tbaa !93
  br label %bb.l

bb.l:                                             ; preds = %dump_buffer.exit19.i, %.loopexit._crit_edge.i
  %i.cr = phi i64 [ %i.cq, %dump_buffer.exit19.i ], [ %i.ch, %.loopexit._crit_edge.i ] ; 2 uses
  %i.cs = phi ptr [ %i.co, %dump_buffer.exit19.i ], [ %i.cg, %.loopexit._crit_edge.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 368
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !63 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i, label %emit_restart.exit

.lr.ph.i:                                         ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cx = zext nneg i32 %i.cu to i64
  %i.cy = shl nuw nsw i64 %i.cx, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cw, i8 0, i64 %i.cy, i1 false), !tbaa !3
  br label %emit_restart.exit

emit_restart.exit:                                ; preds = %.lr.ph.i, %bb.l, %bb.b, %bb.a
  %i.cz = phi i64 [ %i.cr, %.lr.ph.i ], [ %i.cr, %bb.l ], [ %i.h, %bb.b ], [ %i.h, %bb.a ]
  %i.da = phi ptr [ %i.cs, %.lr.ph.i ], [ %i.cs, %bb.l ], [ %i.f, %bb.b ], [ %i.f, %bb.a ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !75
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %emit_restart.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !33 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !76
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dl ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !64
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !33
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !66
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !33
  %i.ec = call fastcc i32 @encode_one_block(ptr noundef %2, ptr noundef %i.dp, i32 noundef %i.dr, ptr noundef %i.dw, ptr noundef %i.eb)
  %.not39 = icmp eq i32 %i.ec, 0
  br i1 %.not39, label %emit_restart.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ed = load ptr, ptr %i.do, align 8, !tbaa !76
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !79
  %i.ef = sext i16 %i.ee to i32
  store i32 %i.ef, ptr %i.dq, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eg = load i32, ptr %i.db, align 8, !tbaa !75
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp slt i64 %indvars.iv.next, %i.eh
  br i1 %i.ei, label %bb.m, label %._crit_edge.loopexit, !llvm.loop !103

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre44 = load ptr, ptr %2, align 8, !tbaa !89
  %.pre45 = load i64, ptr %i.i, align 8, !tbaa !93
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %emit_restart.exit
  %i.ej = phi i64 [ %.pre45, %._crit_edge.loopexit ], [ %i.cz, %emit_restart.exit ]
  %i.ek = phi ptr [ %.pre44, %._crit_edge.loopexit ], [ %i.da, %emit_restart.exit ]
  %i.el = load ptr, ptr %i.d, align 8, !tbaa !85  ; 2 uses
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !86
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.ej, ptr %i.em, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !tbaa.struct !94
  %i.en = load i32, ptr %i.m, align 4, !tbaa !71  ; 2 uses
  %.not38 = icmp eq i32 %i.en, 0
  br i1 %.not38, label %emit_restart.exit.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !72 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !73
  %i.et = add nsw i32 %i.es, 1
  %i.eu = and i32 %i.et, 7
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !73
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ev = phi i32 [ %i.en, %bb.p ], [ %i.ep, %bb.o ]
  %i.ew = add i32 %i.ev, -1
  store i32 %i.ew, ptr %i.eo, align 8, !tbaa !72
  br label %emit_restart.exit.thread

emit_restart.exit.thread:                         ; preds = %bb.m, %flush_bits.exit.i, %bb.k, %bb.j, %._crit_edge, %bb.q
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %flush_bits.exit.i ], [ 1, %bb.q ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_huff(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !92   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sroa.20.16.copyload18 = load i64, ptr %i.i, align 8, !tbaa !31 ; 2 uses
  %.sroa.24.16..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %.sroa.24.16.copyload20 = load i32, ptr %.sroa.24.16..sroa_idx19, align 8, !tbaa !3 ; 2 uses
  %.sroa.26.16..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %.sroa.26.sroa.0.0.copyload36 = load <20 x i8>, ptr %.sroa.26.16..sroa_idx21, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.j = sub i32 64, %.sroa.24.16.copyload20      ; 2 uses
  %i.k = icmp ugt i64 %i.h, 511                   ; 2 uses
  %spec.select = select i1 %i.k, ptr %i.f, ptr %i.a ; 2 uses
  %i.l = icmp slt i32 %.sroa.24.16.copyload20, 57
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.m = zext i32 %i.j to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.m, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.15569.i = phi ptr [ %spec.select, %.lr.ph.preheader.i ], [ %.neg63.sroa.sel.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -8 ; 3 uses
  %i.n = and i64 %indvars.iv.next.i, 4294967295
  %i.o = lshr i64 %.sroa.20.16.copyload18, %i.n   ; 2 uses
  %i.p = trunc i64 %i.o to i8
  store i8 %i.p, ptr %.15569.i, align 1, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %.15569.i, i64 1 ; 2 uses
  store i8 0, ptr %i.q, align 1, !tbaa !31
  %i.r = and i64 %i.o, 255
  %.not62.i = icmp eq i64 %i.r, 255
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %.15569.i, i64 2
  %.neg63.sroa.sel.i = select i1 %.not62.i, ptr %.sroa.gep.i, ptr %i.q ; 2 uses
  %i.s = trunc nuw i64 %indvars.iv.i to i32
  %i.t = icmp sgt i32 %i.s, 15
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !97

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %.155.lcssa.i = phi ptr [ %spec.select, %bb.a ], [ %.neg63.sroa.sel.i, %._crit_edge.loopexit.i ] ; 4 uses
  %.053.lcssa.i = phi i32 [ %i.j, %bb.a ], [ %indvars.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.not.i = icmp eq i32 %.053.lcssa.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.u = sub nsw i32 8, %.053.lcssa.i
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %.sroa.20.16.copyload18, %i.v
  %i.x = lshr i32 255, %.053.lcssa.i
  %i.y = zext nneg i32 %i.x to i64
  %i.z = or i64 %i.w, %i.y                        ; 2 uses
  %i.aa = trunc i64 %i.z to i8
  store i8 %i.aa, ptr %.155.lcssa.i, align 1, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %.155.lcssa.i, i64 1 ; 2 uses
  store i8 0, ptr %i.ab, align 1, !tbaa !31
  %i.ac = and i64 %i.z, 255
  %.not57.i = icmp eq i64 %i.ac, 255
  %.sroa.gep65.i = getelementptr inbounds nuw i8, ptr %.155.lcssa.i, i64 2
  %.neg.sroa.sel.i = select i1 %.not57.i, ptr %.sroa.gep65.i, ptr %i.ab
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %.2.i = phi ptr [ %.neg.sroa.sel.i, %bb.b ], [ %.155.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ad = ptrtoint ptr %.2.i to i64               ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = ptrtoint ptr %i.a to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %.not6072.i = icmp eq i64 %i.af, 0
  br i1 %.not6072.i, label %flush_bits.exit.thread, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %bb.d, %bb.f
  %.sroa.11.0 = phi i64 [ %.sroa.11.1, %bb.f ], [ %i.h, %bb.d ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.f ], [ %i.f, %bb.d ] ; 2 uses
  %.05174.i = phi i64 [ %i.aq, %bb.f ], [ %i.af, %bb.d ] ; 3 uses
  %.373.i = phi ptr [ %i.ah, %bb.f ], [ %i.a, %bb.d ] ; 2 uses
  %.051..i = call i64 @llvm.umin.i64(i64 %.05174.i, i64 %.sroa.11.0) ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0, ptr align 1 %.373.i, i64 %.051..i, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.051..i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.373.i, i64 %.051..i
  %i.ai = sub i64 %.sroa.11.0, %.051..i
  %.not = icmp ugt i64 %.sroa.11.0, %.05174.i
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph76.i
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !85  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !98
  %i.am = call i32 %i.al(ptr noundef %0) #7, !inline_history !104
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %bb.h, label %dump_buffer.exit.i

dump_buffer.exit.i:                               ; preds = %bb.e
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !92
  br label %bb.f

bb.f:                                             ; preds = %dump_buffer.exit.i, %.lr.ph76.i
  %.sroa.11.1 = phi i64 [ %i.ap, %dump_buffer.exit.i ], [ %i.ai, %.lr.ph76.i ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.an, %dump_buffer.exit.i ], [ %i.ag, %.lr.ph76.i ] ; 2 uses
  %i.aq = sub i64 %.05174.i, %.051..i             ; 2 uses
  %.not60.i = icmp eq i64 %i.aq, 0
  br i1 %.not60.i, label %flush_bits.exit.thread, label %.lr.ph76.i, !llvm.loop !100

bb.g:                                             ; preds = %bb.c
  %i.ar = ptrtoint ptr %i.f to i64
  %.neg59.i = add i64 %i.h, %i.ar
  %i.as = sub i64 %.neg59.i, %i.ad
  br label %flush_bits.exit.thread

flush_bits.exit.thread:                           ; preds = %bb.f, %bb.g, %bb.d
  %.sroa.11.2.ph = phi i64 [ %i.as, %bb.g ], [ %i.h, %bb.d ], [ %.sroa.11.1, %bb.f ]
  %.sroa.0.2.ph = phi ptr [ %.2.i, %bb.g ], [ %i.f, %bb.d ], [ %.sroa.0.1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.at = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i32 25, ptr %i.au, align 8, !tbaa !26
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !32
  call void %i.av(ptr noundef nonnull %0) #7
  br label %bb.i

bb.i:                                             ; preds = %flush_bits.exit.thread, %bb.h
  %.sroa.0.228 = phi ptr [ %.sroa.0.2.ph, %flush_bits.exit.thread ], [ %i.ag, %bb.h ]
  %.sroa.11.227 = phi i64 [ %.sroa.11.2.ph, %flush_bits.exit.thread ], [ 0, %bb.h ]
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !85  ; 2 uses
  store ptr %.sroa.0.228, ptr %i.aw, align 8, !tbaa !86
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %.sroa.11.227, ptr %i.ax, align 8, !tbaa !92
  store i64 0, ptr %i.i, align 8, !tbaa !31
  store i32 64, ptr %.sroa.24.16..sroa_idx19, align 8, !tbaa !3
  store <20 x i8> %.sroa.26.sroa.0.0.copyload36, ptr %.sroa.26.16..sroa_idx21, align 4
  ret void
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @encode_one_block(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 65 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %i.f = add nsw i32 %i.e, 2                      ; 63 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 2 uses
  %i.j = load i64, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !93
  %i.m = icmp ugt i64 %i.l, 511                   ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.010917 = phi ptr [ %i.n, %bb.b ], [ %i.a, %bb.a ] ; 13 uses
  %i.o = load i16, ptr %1, align 2, !tbaa !79
  %i.p = sext i16 %i.o to i32
  %i.q = sub nsw i32 %i.p, %2                     ; 2 uses
  %i.r = ashr i32 %i.q, 31                        ; 2 uses
  %i.s = add nsw i32 %i.r, %i.q                   ; 2 uses
  %i.t = xor i32 %i.s, %i.r
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !31    ; 2 uses
  %i.x = zext i8 %i.w to i32                      ; 3 uses
  %i.y = add nsw i32 %i.e, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !7   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 6, ptr %i.ab, align 8, !tbaa !26
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !32
  tail call void %i.ac(ptr noundef nonnull %i.c) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = zext i8 %i.w to i64                     ; 3 uses
  %notmask = shl nsw i64 -1, %i.ad
  %i.ae = trunc i64 %notmask to i32
  %i.af = xor i32 %i.ae, -1
  %i.ag = and i32 %i.s, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ad
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = shl i32 %i.ai, %i.x
  %i.ak = or i32 %i.aj, %i.ag                     ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 1024
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  %i.an = load i8, ptr %i.am, align 1, !tbaa !31
  %i.ao = sext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, %i.x                 ; 2 uses
  %i.aq = sub nsw i32 %i.i, %i.ap                 ; 4 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.as = zext nneg i32 %i.i to i64
  %i.at = shl i64 %i.j, %i.as
  %i.au = sub nsw i32 0, %i.aq
  %i.av = ashr i32 %i.ak, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = or i64 %i.at, %i.aw                     ; 24 uses
  %i.ay = and i64 %i.ax, -9187201950435737472
  %i.az = sub i64 -72340172838076674, %i.ax
  %i.ba = and i64 %i.ay, %i.az
  %.not = icmp eq i64 %i.ba, 0
  %i.bb = lshr i64 %i.ax, 56                      ; 2 uses
  %i.bc = trunc nuw i64 %i.bb to i8
  store i8 %i.bc, ptr %.010917, align 1, !tbaa !31
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %.010917, i64 1 ; 2 uses
  store i8 0, ptr %i.bd, align 1, !tbaa !31
  %.not11871 = icmp eq i64 %i.bb, 255             ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %.010917, i64 2 ; 2 uses
  %.neg.sroa.sel = select i1 %.not11871, ptr %.sroa.gep, ptr %i.bd ; 2 uses
  %i.be = lshr i64 %i.ax, 48
  %i.bf = trunc i64 %i.be to i8
  store i8 %i.bf, ptr %.neg.sroa.sel, align 1, !tbaa !31
  %.sroa.gep16200 = getelementptr inbounds nuw i8, ptr %.010917, i64 3
  %.neg.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not11871, ptr %.sroa.gep16200, ptr %.sroa.gep
  store i8 0, ptr %.neg.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.bg = and i64 %i.ax, 71776119061217280
  %.not11872 = icmp eq i64 %i.bg, 71776119061217280
  %.neg11873 = select i1 %.not11872, i64 2, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.neg.sroa.sel, i64 %.neg11873 ; 4 uses
  %i.bi = lshr i64 %i.ax, 40
  %i.bj = trunc i64 %i.bi to i8
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  store i8 0, ptr %i.bk, align 1, !tbaa !31
  %i.bl = and i64 %i.ax, 280375465082880
  %.not11874 = icmp eq i64 %i.bl, 280375465082880 ; 2 uses
  %.sroa.gep13841 = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 2 uses
  %.neg11875.sroa.sel = select i1 %.not11874, ptr %.sroa.gep13841, ptr %i.bk ; 2 uses
  %i.bm = lshr i64 %i.ax, 32
  %i.bn = trunc i64 %i.bm to i8
  store i8 %i.bn, ptr %.neg11875.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15310 = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %.neg11875.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not11874, ptr %.sroa.gep15310, ptr %.sroa.gep13841
  store i8 0, ptr %.neg11875.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.bo = and i64 %i.ax, 1095216660480
  %.not11876 = icmp eq i64 %i.bo, 1095216660480
  %.neg11877 = select i1 %.not11876, i64 2, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.neg11875.sroa.sel, i64 %.neg11877 ; 4 uses
  %i.bq = lshr i64 %i.ax, 24
  %i.br = trunc i64 %i.bq to i8
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !31
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  store i8 0, ptr %i.bs, align 1, !tbaa !31
  %i.bt = and i64 %i.ax, 4278190080
  %.not11878 = icmp eq i64 %i.bt, 4278190080      ; 2 uses
  %.sroa.gep13843 = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  %.neg11879.sroa.sel = select i1 %.not11878, ptr %.sroa.gep13843, ptr %i.bs ; 2 uses
  %i.bu = lshr i64 %i.ax, 16
  %i.bv = trunc i64 %i.bu to i8
  store i8 %i.bv, ptr %.neg11879.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15308 = getelementptr inbounds nuw i8, ptr %i.bp, i64 3
  %.neg11879.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not11878, ptr %.sroa.gep15308, ptr %.sroa.gep13843
  store i8 0, ptr %.neg11879.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.bw = and i64 %i.ax, 16711680
  %.not11880 = icmp eq i64 %i.bw, 16711680
  %.neg11881 = select i1 %.not11880, i64 2, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.neg11879.sroa.sel, i64 %.neg11881 ; 4 uses
  %i.by = lshr i64 %i.ax, 8
  %i.bz = trunc i64 %i.by to i8
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  store i8 0, ptr %i.ca, align 1, !tbaa !31
  %i.cb = and i64 %i.ax, 65280
  %.not11882 = icmp eq i64 %i.cb, 65280           ; 2 uses
  %.sroa.gep13845 = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 2 uses
  %.neg11883.sroa.sel = select i1 %.not11882, ptr %.sroa.gep13845, ptr %i.ca ; 2 uses
  %i.cc = trunc i64 %i.ax to i8
  store i8 %i.cc, ptr %.neg11883.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15306 = getelementptr inbounds nuw i8, ptr %i.bx, i64 3
  %.neg11883.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not11882, ptr %.sroa.gep15306, ptr %.sroa.gep13845
  store i8 0, ptr %.neg11883.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.cd = and i64 %i.ax, 255
  %.not11884 = icmp eq i64 %i.cd, 255
  %.neg11885 = select i1 %.not11884, i64 2, i64 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.neg11883.sroa.sel, i64 %.neg11885
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cf = lshr i64 %i.ax, 48
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.010917, i64 1
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !31
  %i.ci = lshr i64 %i.ax, 40
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.010917, i64 2
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !31
  %i.cl = lshr i64 %i.ax, 32
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %.010917, i64 3
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !31
  %i.co = lshr i64 %i.ax, 24
  %i.cp = trunc i64 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.010917, i64 4
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !31
  %i.cr = lshr i64 %i.ax, 16
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.010917, i64 5
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !31
  %i.cu = lshr i64 %i.ax, 8
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %.010917, i64 6
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !31
  %i.cx = trunc i64 %i.ax to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %.010917, i64 7
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !31
  %i.cz = getelementptr inbounds nuw i8, ptr %.010917, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.110918 = phi ptr [ %i.ce, %bb.g ], [ %i.cz, %bb.h ]
  %i.da = add nsw i32 %i.aq, 64
  %i.db = sext i32 %i.ak to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.dc = zext nneg i32 %i.ap to i64
end_hunk_0
begin_hunk_1_@encode_one_block:bb.a
  %i.fqx = or i64 %i.fqv, %i.fqw
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pg, %bb.ph, %bb.ot
  %.12811425 = phi i32 [ %.12411421, %bb.ot ], [ %i.fqs, %bb.pg ], [ %i.foi, %bb.ph ] ; 3 uses
  %.12811171 = phi i64 [ %.12411167, %bb.ot ], [ %i.fqt, %bb.pg ], [ %i.fqx, %bb.ph ] ; 3 uses
  %.194 = phi ptr [ %.188, %bb.ot ], [ %.192, %bb.pg ], [ %.189.lcssa, %bb.ph ] ; 3 uses
  %.63 = phi i32 [ %i.fkh, %bb.ot ], [ 0, %bb.pg ], [ 0, %bb.ph ] ; 4 uses
  %i.fqy = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.fqz = load i16, ptr %i.fqy, align 2, !tbaa !79 ; 2 uses
  %i.fra = icmp eq i16 %i.fqz, 0
  br i1 %i.fra, label %bb.pj, label %bb.pk

bb.pj:                                            ; preds = %bb.pi
  %i.frb = add nuw nsw i32 %.63, 16
  br label %bb.pz

bb.pk:                                            ; preds = %bb.pi
  %i.frc = sext i16 %i.fqz to i32                 ; 2 uses
  %i.frd = ashr i32 %i.frc, 31                    ; 2 uses
  %i.fre = add nsw i32 %i.frd, %i.frc             ; 2 uses
  %i.frf = xor i32 %i.fre, %i.frd
  %i.frg = sext i32 %i.frf to i64
  %i.frh = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.frg
  %i.fri = load i8, ptr %i.frh, align 1, !tbaa !31 ; 2 uses
  %i.frj = zext i8 %i.fri to i32                  ; 4 uses
  %i.frk = icmp slt i32 %i.f, %i.frj
  br i1 %i.frk, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.frl = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.frm = load ptr, ptr %i.frl, align 8, !tbaa !7 ; 2 uses
  %i.frn = getelementptr inbounds nuw i8, ptr %i.frm, i64 40
  store i32 6, ptr %i.frn, align 8, !tbaa !26
  %i.fro = load ptr, ptr %i.frm, align 8, !tbaa !32
  tail call void %i.fro(ptr noundef nonnull %i.frl) #7
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk
  %i.frp = icmp samesign ugt i32 %.63, 255
  br i1 %i.frp, label %.lr.ph14917, label %._crit_edge14918

.lr.ph14917:                                      ; preds = %bb.pm
  %i.frq = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.frr = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.pn

bb.pn:                                            ; preds = %.lr.ph14917, %bb.pt
  %.6414915 = phi i32 [ %.63, %.lr.ph14917 ], [ %i.frs, %bb.pt ] ; 2 uses
  %.19514914 = phi ptr [ %.194, %.lr.ph14917 ], [ %.197, %bb.pt ] ; 13 uses
  %.1291117214913 = phi i64 [ %.12811171, %.lr.ph14917 ], [ %.13011173, %bb.pt ] ; 2 uses
  %.1291142614912 = phi i32 [ %.12811425, %.lr.ph14917 ], [ %.13011427, %bb.pt ] ; 2 uses
  %i.frs = add nsw i32 %.6414915, -256            ; 2 uses
  %i.frt = load i8, ptr %i.frq, align 4, !tbaa !31
  %i.fru = sext i8 %i.frt to i32                  ; 2 uses
  %i.frv = sub nsw i32 %.1291142614912, %i.fru    ; 4 uses
  %i.frw = icmp slt i32 %i.frv, 0
  %i.frx = load i32, ptr %i.frr, align 4, !tbaa !3 ; 2 uses
  br i1 %i.frw, label %bb.po, label %bb.ps

bb.po:                                            ; preds = %bb.pn
  %i.fry = zext nneg i32 %.1291142614912 to i64
  %i.frz = shl i64 %.1291117214913, %i.fry        ; 11 uses
  %i.fsa = sub nsw i32 0, %i.frv
  %i.fsb = lshr i32 %i.frx, %i.fsa
  %i.fsc = zext nneg i32 %i.fsb to i64
  %i.fsd = or i64 %i.frz, %i.fsc                  ; 14 uses
  %i.fse = and i64 %i.fsd, -9187201950435737472
  %i.fsf = sub i64 -72340172838076674, %i.fsd
  %i.fsg = and i64 %i.fse, %i.fsf
  %.not12752 = icmp eq i64 %i.fsg, 0
  %i.fsh = lshr i64 %i.frz, 56                    ; 2 uses
  %i.fsi = trunc nuw i64 %i.fsh to i8
  store i8 %i.fsi, ptr %.19514914, align 1, !tbaa !31
  br i1 %.not12752, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.fsj = getelementptr inbounds nuw i8, ptr %.19514914, i64 1 ; 2 uses
  store i8 0, ptr %i.fsj, align 1, !tbaa !31
  %.not12753 = icmp eq i64 %i.fsh, 255            ; 2 uses
  %.sroa.gep14231 = getelementptr inbounds nuw i8, ptr %.19514914, i64 2 ; 2 uses
  %.neg12754.sroa.sel = select i1 %.not12753, ptr %.sroa.gep14231, ptr %i.fsj ; 2 uses
  %i.fsk = lshr i64 %i.frz, 48
  %i.fsl = trunc i64 %i.fsk to i8
  store i8 %i.fsl, ptr %.neg12754.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15896 = getelementptr inbounds nuw i8, ptr %.19514914, i64 3
  %.neg12754.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12753, ptr %.sroa.gep15896, ptr %.sroa.gep14231
  store i8 0, ptr %.neg12754.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.fsm = and i64 %i.frz, 71776119061217280
  %.not12755 = icmp eq i64 %i.fsm, 71776119061217280
  %.neg12756 = select i1 %.not12755, i64 2, i64 1
  %i.fsn = getelementptr inbounds nuw i8, ptr %.neg12754.sroa.sel, i64 %.neg12756 ; 4 uses
  %i.fso = lshr i64 %i.frz, 40
  %i.fsp = trunc i64 %i.fso to i8
  store i8 %i.fsp, ptr %i.fsn, align 1, !tbaa !31
  %i.fsq = getelementptr inbounds nuw i8, ptr %i.fsn, i64 1 ; 2 uses
  store i8 0, ptr %i.fsq, align 1, !tbaa !31
  %i.fsr = and i64 %i.frz, 280375465082880
  %.not12757 = icmp eq i64 %i.fsr, 280375465082880 ; 2 uses
  %.sroa.gep14233 = getelementptr inbounds nuw i8, ptr %i.fsn, i64 2 ; 2 uses
  %.neg12758.sroa.sel = select i1 %.not12757, ptr %.sroa.gep14233, ptr %i.fsq ; 2 uses
  %i.fss = lshr i64 %i.frz, 32
  %i.fst = trunc i64 %i.fss to i8
  store i8 %i.fst, ptr %.neg12758.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15902 = getelementptr inbounds nuw i8, ptr %i.fsn, i64 3
  %.neg12758.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12757, ptr %.sroa.gep15902, ptr %.sroa.gep14233
  store i8 0, ptr %.neg12758.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.fsu = and i64 %i.frz, 1095216660480
  %.not12759 = icmp eq i64 %i.fsu, 1095216660480
  %.neg12760 = select i1 %.not12759, i64 2, i64 1
  %i.fsv = getelementptr inbounds nuw i8, ptr %.neg12758.sroa.sel, i64 %.neg12760 ; 4 uses
  %i.fsw = lshr i64 %i.fsd, 24
  %i.fsx = trunc i64 %i.fsw to i8
  store i8 %i.fsx, ptr %i.fsv, align 1, !tbaa !31
  %i.fsy = getelementptr inbounds nuw i8, ptr %i.fsv, i64 1 ; 2 uses
  store i8 0, ptr %i.fsy, align 1, !tbaa !31
  %i.fsz = and i64 %i.fsd, 4278190080
  %.not12761 = icmp eq i64 %i.fsz, 4278190080     ; 2 uses
  %.sroa.gep14235 = getelementptr inbounds nuw i8, ptr %i.fsv, i64 2 ; 2 uses
  %.neg12762.sroa.sel = select i1 %.not12761, ptr %.sroa.gep14235, ptr %i.fsy ; 2 uses
  %i.fta = lshr i64 %i.fsd, 16
  %i.ftb = trunc i64 %i.fta to i8
  store i8 %i.ftb, ptr %.neg12762.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15900 = getelementptr inbounds nuw i8, ptr %i.fsv, i64 3
  %.neg12762.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12761, ptr %.sroa.gep15900, ptr %.sroa.gep14235
  store i8 0, ptr %.neg12762.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ftc = and i64 %i.fsd, 16711680
  %.not12763 = icmp eq i64 %i.ftc, 16711680
  %.neg12764 = select i1 %.not12763, i64 2, i64 1
  %i.ftd = getelementptr inbounds nuw i8, ptr %.neg12762.sroa.sel, i64 %.neg12764 ; 4 uses
  %i.fte = lshr i64 %i.fsd, 8
  %i.ftf = trunc i64 %i.fte to i8
  store i8 %i.ftf, ptr %i.ftd, align 1, !tbaa !31
  %i.ftg = getelementptr inbounds nuw i8, ptr %i.ftd, i64 1 ; 2 uses
  store i8 0, ptr %i.ftg, align 1, !tbaa !31
  %i.fth = and i64 %i.fsd, 65280
  %.not12765 = icmp eq i64 %i.fth, 65280          ; 2 uses
  %.sroa.gep14237 = getelementptr inbounds nuw i8, ptr %i.ftd, i64 2 ; 2 uses
  %.neg12766.sroa.sel = select i1 %.not12765, ptr %.sroa.gep14237, ptr %i.ftg ; 2 uses
  %i.fti = trunc i64 %i.fsd to i8
  store i8 %i.fti, ptr %.neg12766.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15898 = getelementptr inbounds nuw i8, ptr %i.ftd, i64 3
  %.neg12766.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12765, ptr %.sroa.gep15898, ptr %.sroa.gep14237
  store i8 0, ptr %.neg12766.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ftj = and i64 %i.fsd, 255
  %.not12767 = icmp eq i64 %i.ftj, 255
  %.neg12768 = select i1 %.not12767, i64 2, i64 1
  %i.ftk = getelementptr inbounds nuw i8, ptr %.neg12766.sroa.sel, i64 %.neg12768
  br label %bb.pr

bb.pq:                                            ; preds = %bb.po
  %i.ftl = lshr i64 %i.frz, 48
  %i.ftm = trunc i64 %i.ftl to i8
  %i.ftn = getelementptr inbounds nuw i8, ptr %.19514914, i64 1
  store i8 %i.ftm, ptr %i.ftn, align 1, !tbaa !31
  %i.fto = lshr i64 %i.frz, 40
  %i.ftp = trunc i64 %i.fto to i8
  %i.ftq = getelementptr inbounds nuw i8, ptr %.19514914, i64 2
  store i8 %i.ftp, ptr %i.ftq, align 1, !tbaa !31
  %i.ftr = lshr i64 %i.frz, 32
  %i.fts = trunc i64 %i.ftr to i8
  %i.ftt = getelementptr inbounds nuw i8, ptr %.19514914, i64 3
  store i8 %i.fts, ptr %i.ftt, align 1, !tbaa !31
  %i.ftu = lshr i64 %i.fsd, 24
  %i.ftv = trunc i64 %i.ftu to i8
  %i.ftw = getelementptr inbounds nuw i8, ptr %.19514914, i64 4
  store i8 %i.ftv, ptr %i.ftw, align 1, !tbaa !31
  %i.ftx = lshr i64 %i.fsd, 16
  %i.fty = trunc i64 %i.ftx to i8
  %i.ftz = getelementptr inbounds nuw i8, ptr %.19514914, i64 5
  store i8 %i.fty, ptr %i.ftz, align 1, !tbaa !31
  %i.fua = lshr i64 %i.fsd, 8
  %i.fub = trunc i64 %i.fua to i8
  %i.fuc = getelementptr inbounds nuw i8, ptr %.19514914, i64 6
  store i8 %i.fub, ptr %i.fuc, align 1, !tbaa !31
  %i.fud = trunc i64 %i.fsd to i8
  %i.fue = getelementptr inbounds nuw i8, ptr %.19514914, i64 7
  store i8 %i.fud, ptr %i.fue, align 1, !tbaa !31
  %i.fuf = getelementptr inbounds nuw i8, ptr %.19514914, i64 8
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pq, %bb.pp
  %.196 = phi ptr [ %i.ftk, %bb.pp ], [ %i.fuf, %bb.pq ]
  %i.fug = add nsw i32 %i.frv, 64
  %i.fuh = load i32, ptr %i.frr, align 4, !tbaa !3
  %i.fui = zext i32 %i.fuh to i64
  br label %bb.pt

bb.ps:                                            ; preds = %bb.pn
  %i.fuj = zext nneg i32 %i.fru to i64
  %i.fuk = shl i64 %.1291117214913, %i.fuj
  %i.ful = zext i32 %i.frx to i64
  %i.fum = or i64 %i.fuk, %i.ful
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  %.13011427 = phi i32 [ %i.fug, %bb.pr ], [ %i.frv, %bb.ps ] ; 2 uses
  %.13011173 = phi i64 [ %i.fui, %bb.pr ], [ %i.fum, %bb.ps ] ; 2 uses
  %.197 = phi ptr [ %.196, %bb.pr ], [ %.19514914, %bb.ps ] ; 2 uses
  %i.fun = icmp samesign ugt i32 %.6414915, 511
  br i1 %i.fun, label %bb.pn, label %._crit_edge14918, !llvm.loop !105

._crit_edge14918:                                 ; preds = %bb.pt, %bb.pm
  %.12911426.lcssa = phi i32 [ %.12811425, %bb.pm ], [ %.13011427, %bb.pt ] ; 2 uses
  %.12911172.lcssa = phi i64 [ %.12811171, %bb.pm ], [ %.13011173, %bb.pt ] ; 2 uses
  %.195.lcssa = phi ptr [ %.194, %bb.pm ], [ %.197, %bb.pt ] ; 13 uses
  %.64.lcssa = phi i32 [ %.63, %bb.pm ], [ %i.frs, %bb.pt ]
  %i.fuo = add nuw nsw i32 %.64.lcssa, %i.frj
  %i.fup = zext nneg i8 %i.fri to i64
  %notmask12734 = shl nsw i64 -1, %i.fup
  %i.fuq = trunc i64 %notmask12734 to i32
  %i.fur = xor i32 %i.fuq, -1
  %i.fus = and i32 %i.fre, %i.fur
  %i.fut = zext nneg i32 %i.fuo to i64            ; 2 uses
  %i.fuu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fut
  %i.fuv = load i32, ptr %i.fuu, align 4, !tbaa !3
  %i.fuw = shl i32 %i.fuv, %i.frj
  %i.fux = or i32 %i.fuw, %i.fus                  ; 3 uses
  %i.fuy = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.fuz = getelementptr inbounds nuw i8, ptr %i.fuy, i64 %i.fut
  %i.fva = load i8, ptr %i.fuz, align 1, !tbaa !31
  %i.fvb = sext i8 %i.fva to i32
  %i.fvc = add nsw i32 %i.fvb, %i.frj             ; 2 uses
  %i.fvd = sub nsw i32 %.12911426.lcssa, %i.fvc   ; 4 uses
  %i.fve = icmp slt i32 %i.fvd, 0
  br i1 %i.fve, label %bb.pu, label %bb.py

bb.pu:                                            ; preds = %._crit_edge14918
  %i.fvf = zext nneg i32 %.12911426.lcssa to i64
  %i.fvg = shl i64 %.12911172.lcssa, %i.fvf
  %i.fvh = sub nsw i32 0, %i.fvd
  %i.fvi = ashr i32 %i.fux, %i.fvh
  %i.fvj = sext i32 %i.fvi to i64
  %i.fvk = or i64 %i.fvg, %i.fvj                  ; 24 uses
  %i.fvl = and i64 %i.fvk, -9187201950435737472
  %i.fvm = sub i64 -72340172838076674, %i.fvk
  %i.fvn = and i64 %i.fvl, %i.fvm
  %.not12735 = icmp eq i64 %i.fvn, 0
  %i.fvo = lshr i64 %i.fvk, 56                    ; 2 uses
  %i.fvp = trunc nuw i64 %i.fvo to i8
  store i8 %i.fvp, ptr %.195.lcssa, align 1, !tbaa !31
  br i1 %.not12735, label %bb.pw, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.fvq = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.fvq, align 1, !tbaa !31
  %.not12736 = icmp eq i64 %i.fvo, 255            ; 2 uses
  %.sroa.gep14239 = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 2 ; 2 uses
  %.neg12737.sroa.sel = select i1 %.not12736, ptr %.sroa.gep14239, ptr %i.fvq ; 2 uses
  %i.fvr = lshr i64 %i.fvk, 48
  %i.fvs = trunc i64 %i.fvr to i8
  store i8 %i.fvs, ptr %.neg12737.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15904 = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 3
  %.neg12737.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12736, ptr %.sroa.gep15904, ptr %.sroa.gep14239
  store i8 0, ptr %.neg12737.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.fvt = and i64 %i.fvk, 71776119061217280
  %.not12738 = icmp eq i64 %i.fvt, 71776119061217280
  %.neg12739 = select i1 %.not12738, i64 2, i64 1
  %i.fvu = getelementptr inbounds nuw i8, ptr %.neg12737.sroa.sel, i64 %.neg12739 ; 4 uses
  %i.fvv = lshr i64 %i.fvk, 40
  %i.fvw = trunc i64 %i.fvv to i8
  store i8 %i.fvw, ptr %i.fvu, align 1, !tbaa !31
  %i.fvx = getelementptr inbounds nuw i8, ptr %i.fvu, i64 1 ; 2 uses
  store i8 0, ptr %i.fvx, align 1, !tbaa !31
  %i.fvy = and i64 %i.fvk, 280375465082880
  %.not12740 = icmp eq i64 %i.fvy, 280375465082880 ; 2 uses
  %.sroa.gep14241 = getelementptr inbounds nuw i8, ptr %i.fvu, i64 2 ; 2 uses
  %.neg12741.sroa.sel = select i1 %.not12740, ptr %.sroa.gep14241, ptr %i.fvx ; 2 uses
  %i.fvz = lshr i64 %i.fvk, 32
  %i.fwa = trunc i64 %i.fvz to i8
  store i8 %i.fwa, ptr %.neg12741.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15910 = getelementptr inbounds nuw i8, ptr %i.fvu, i64 3
  %.neg12741.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12740, ptr %.sroa.gep15910, ptr %.sroa.gep14241
  store i8 0, ptr %.neg12741.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.fwb = and i64 %i.fvk, 1095216660480
  %.not12742 = icmp eq i64 %i.fwb, 1095216660480
  %.neg12743 = select i1 %.not12742, i64 2, i64 1
  %i.fwc = getelementptr inbounds nuw i8, ptr %.neg12741.sroa.sel, i64 %.neg12743 ; 4 uses
  %i.fwd = lshr i64 %i.fvk, 24
  %i.fwe = trunc i64 %i.fwd to i8
  store i8 %i.fwe, ptr %i.fwc, align 1, !tbaa !31
  %i.fwf = getelementptr inbounds nuw i8, ptr %i.fwc, i64 1 ; 2 uses
  store i8 0, ptr %i.fwf, align 1, !tbaa !31
  %i.fwg = and i64 %i.fvk, 4278190080
  %.not12744 = icmp eq i64 %i.fwg, 4278190080     ; 2 uses
  %.sroa.gep14243 = getelementptr inbounds nuw i8, ptr %i.fwc, i64 2 ; 2 uses
  %.neg12745.sroa.sel = select i1 %.not12744, ptr %.sroa.gep14243, ptr %i.fwf ; 2 uses
  %i.fwh = lshr i64 %i.fvk, 16
  %i.fwi = trunc i64 %i.fwh to i8
  store i8 %i.fwi, ptr %.neg12745.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15908 = getelementptr inbounds nuw i8, ptr %i.fwc, i64 3
  %.neg12745.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12744, ptr %.sroa.gep15908, ptr %.sroa.gep14243
  store i8 0, ptr %.neg12745.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.fwj = and i64 %i.fvk, 16711680
  %.not12746 = icmp eq i64 %i.fwj, 16711680
  %.neg12747 = select i1 %.not12746, i64 2, i64 1
  %i.fwk = getelementptr inbounds nuw i8, ptr %.neg12745.sroa.sel, i64 %.neg12747 ; 4 uses
  %i.fwl = lshr i64 %i.fvk, 8
  %i.fwm = trunc i64 %i.fwl to i8
  store i8 %i.fwm, ptr %i.fwk, align 1, !tbaa !31
  %i.fwn = getelementptr inbounds nuw i8, ptr %i.fwk, i64 1 ; 2 uses
  store i8 0, ptr %i.fwn, align 1, !tbaa !31
  %i.fwo = and i64 %i.fvk, 65280
  %.not12748 = icmp eq i64 %i.fwo, 65280          ; 2 uses
  %.sroa.gep14245 = getelementptr inbounds nuw i8, ptr %i.fwk, i64 2 ; 2 uses
  %.neg12749.sroa.sel = select i1 %.not12748, ptr %.sroa.gep14245, ptr %i.fwn ; 2 uses
  %i.fwp = trunc i64 %i.fvk to i8
  store i8 %i.fwp, ptr %.neg12749.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15906 = getelementptr inbounds nuw i8, ptr %i.fwk, i64 3
  %.neg12749.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12748, ptr %.sroa.gep15906, ptr %.sroa.gep14245
  store i8 0, ptr %.neg12749.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.fwq = and i64 %i.fvk, 255
  %.not12750 = icmp eq i64 %i.fwq, 255
  %.neg12751 = select i1 %.not12750, i64 2, i64 1
  %i.fwr = getelementptr inbounds nuw i8, ptr %.neg12749.sroa.sel, i64 %.neg12751
  br label %bb.px

bb.pw:                                            ; preds = %bb.pu
  %i.fws = lshr i64 %i.fvk, 48
  %i.fwt = trunc i64 %i.fws to i8
  %i.fwu = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 1
  store i8 %i.fwt, ptr %i.fwu, align 1, !tbaa !31
  %i.fwv = lshr i64 %i.fvk, 40
  %i.fww = trunc i64 %i.fwv to i8
  %i.fwx = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 2
  store i8 %i.fww, ptr %i.fwx, align 1, !tbaa !31
  %i.fwy = lshr i64 %i.fvk, 32
  %i.fwz = trunc i64 %i.fwy to i8
  %i.fxa = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 3
  store i8 %i.fwz, ptr %i.fxa, align 1, !tbaa !31
  %i.fxb = lshr i64 %i.fvk, 24
  %i.fxc = trunc i64 %i.fxb to i8
  %i.fxd = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 4
  store i8 %i.fxc, ptr %i.fxd, align 1, !tbaa !31
  %i.fxe = lshr i64 %i.fvk, 16
  %i.fxf = trunc i64 %i.fxe to i8
  %i.fxg = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 5
  store i8 %i.fxf, ptr %i.fxg, align 1, !tbaa !31
  %i.fxh = lshr i64 %i.fvk, 8
  %i.fxi = trunc i64 %i.fxh to i8
  %i.fxj = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 6
  store i8 %i.fxi, ptr %i.fxj, align 1, !tbaa !31
  %i.fxk = trunc i64 %i.fvk to i8
  %i.fxl = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 7
  store i8 %i.fxk, ptr %i.fxl, align 1, !tbaa !31
  %i.fxm = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 8
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %bb.pv
  %.198 = phi ptr [ %i.fwr, %bb.pv ], [ %i.fxm, %bb.pw ]
  %i.fxn = add nsw i32 %i.fvd, 64
  %i.fxo = sext i32 %i.fux to i64
  br label %bb.pz

bb.py:                                            ; preds = %._crit_edge14918
  %i.fxp = zext nneg i32 %i.fvc to i64
  %i.fxq = shl i64 %.12911172.lcssa, %i.fxp
  %i.fxr = sext i32 %i.fux to i64
  %i.fxs = or i64 %i.fxq, %i.fxr
  br label %bb.pz

bb.pz:                                            ; preds = %bb.px, %bb.py, %bb.pj
  %.13211429 = phi i32 [ %.12811425, %bb.pj ], [ %i.fxn, %bb.px ], [ %i.fvd, %bb.py ] ; 3 uses
  %.13211175 = phi i64 [ %.12811171, %bb.pj ], [ %i.fxo, %bb.px ], [ %i.fxs, %bb.py ] ; 3 uses
  %.200 = phi ptr [ %.194, %bb.pj ], [ %.198, %bb.px ], [ %.195.lcssa, %bb.py ] ; 3 uses
  %.65 = phi i32 [ %i.frb, %bb.pj ], [ 0, %bb.px ], [ 0, %bb.py ] ; 4 uses
  %i.fxt = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.fxu = load i16, ptr %i.fxt, align 2, !tbaa !79 ; 2 uses
  %i.fxv = icmp eq i16 %i.fxu, 0
  br i1 %i.fxv, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %bb.pz
  %i.fxw = add nuw nsw i32 %.65, 16
  br label %bb.qq

bb.qb:                                            ; preds = %bb.pz
  %i.fxx = sext i16 %i.fxu to i32                 ; 2 uses
  %i.fxy = ashr i32 %i.fxx, 31                    ; 2 uses
  %i.fxz = add nsw i32 %i.fxy, %i.fxx             ; 2 uses
  %i.fya = xor i32 %i.fxz, %i.fxy
  %i.fyb = sext i32 %i.fya to i64
  %i.fyc = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.fyb
  %i.fyd = load i8, ptr %i.fyc, align 1, !tbaa !31 ; 2 uses
  %i.fye = zext i8 %i.fyd to i32                  ; 4 uses
  %i.fyf = icmp slt i32 %i.f, %i.fye
  br i1 %i.fyf, label %bb.qc, label %bb.qd

bb.qc:                                            ; preds = %bb.qb
  %i.fyg = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.fyh = load ptr, ptr %i.fyg, align 8, !tbaa !7 ; 2 uses
  %i.fyi = getelementptr inbounds nuw i8, ptr %i.fyh, i64 40
  store i32 6, ptr %i.fyi, align 8, !tbaa !26
  %i.fyj = load ptr, ptr %i.fyh, align 8, !tbaa !32
  tail call void %i.fyj(ptr noundef nonnull %i.fyg) #7
  br label %bb.qd

bb.qd:                                            ; preds = %bb.qc, %bb.qb
  %i.fyk = icmp samesign ugt i32 %.65, 255
  br i1 %i.fyk, label %.lr.ph14928, label %._crit_edge14929

.lr.ph14928:                                      ; preds = %bb.qd
  %i.fyl = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.fym = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.qe

bb.qe:                                            ; preds = %.lr.ph14928, %bb.qk
  %.6614926 = phi i32 [ %.65, %.lr.ph14928 ], [ %i.fyn, %bb.qk ] ; 2 uses
  %.20114925 = phi ptr [ %.200, %.lr.ph14928 ], [ %.203, %bb.qk ] ; 13 uses
  %.1331117614924 = phi i64 [ %.13211175, %.lr.ph14928 ], [ %.13411177, %bb.qk ] ; 2 uses
  %.1331143014923 = phi i32 [ %.13211429, %.lr.ph14928 ], [ %.13411431, %bb.qk ] ; 2 uses
  %i.fyn = add nsw i32 %.6614926, -256            ; 2 uses
  %i.fyo = load i8, ptr %i.fyl, align 4, !tbaa !31
  %i.fyp = sext i8 %i.fyo to i32                  ; 2 uses
  %i.fyq = sub nsw i32 %.1331143014923, %i.fyp    ; 4 uses
  %i.fyr = icmp slt i32 %i.fyq, 0
  %i.fys = load i32, ptr %i.fym, align 4, !tbaa !3 ; 2 uses
  br i1 %i.fyr, label %bb.qf, label %bb.qj

bb.qf:                                            ; preds = %bb.qe
  %i.fyt = zext nneg i32 %.1331143014923 to i64
  %i.fyu = shl i64 %.1331117614924, %i.fyt        ; 11 uses
  %i.fyv = sub nsw i32 0, %i.fyq
  %i.fyw = lshr i32 %i.fys, %i.fyv
  %i.fyx = zext nneg i32 %i.fyw to i64
  %i.fyy = or i64 %i.fyu, %i.fyx                  ; 14 uses
  %i.fyz = and i64 %i.fyy, -9187201950435737472
  %i.fza = sub i64 -72340172838076674, %i.fyy
  %i.fzb = and i64 %i.fyz, %i.fza
  %.not12787 = icmp eq i64 %i.fzb, 0
  %i.fzc = lshr i64 %i.fyu, 56                    ; 2 uses
  %i.fzd = trunc nuw i64 %i.fzc to i8
  store i8 %i.fzd, ptr %.20114925, align 1, !tbaa !31
  br i1 %.not12787, label %bb.qh, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.fze = getelementptr inbounds nuw i8, ptr %.20114925, i64 1 ; 2 uses
  store i8 0, ptr %i.fze, align 1, !tbaa !31
  %.not12788 = icmp eq i64 %i.fzc, 255            ; 2 uses
  %.sroa.gep14247 = getelementptr inbounds nuw i8, ptr %.20114925, i64 2 ; 2 uses
  %.neg12789.sroa.sel = select i1 %.not12788, ptr %.sroa.gep14247, ptr %i.fze ; 2 uses
  %i.fzf = lshr i64 %i.fyu, 48
  %i.fzg = trunc i64 %i.fzf to i8
  store i8 %i.fzg, ptr %.neg12789.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15880 = getelementptr inbounds nuw i8, ptr %.20114925, i64 3
  %.neg12789.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12788, ptr %.sroa.gep15880, ptr %.sroa.gep14247
  store i8 0, ptr %.neg12789.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.fzh = and i64 %i.fyu, 71776119061217280
  %.not12790 = icmp eq i64 %i.fzh, 71776119061217280
  %.neg12791 = select i1 %.not12790, i64 2, i64 1
  %i.fzi = getelementptr inbounds nuw i8, ptr %.neg12789.sroa.sel, i64 %.neg12791 ; 4 uses
  %i.fzj = lshr i64 %i.fyu, 40
  %i.fzk = trunc i64 %i.fzj to i8
  store i8 %i.fzk, ptr %i.fzi, align 1, !tbaa !31
  %i.fzl = getelementptr inbounds nuw i8, ptr %i.fzi, i64 1 ; 2 uses
  store i8 0, ptr %i.fzl, align 1, !tbaa !31
  %i.fzm = and i64 %i.fyu, 280375465082880
  %.not12792 = icmp eq i64 %i.fzm, 280375465082880 ; 2 uses
  %.sroa.gep14249 = getelementptr inbounds nuw i8, ptr %i.fzi, i64 2 ; 2 uses
  %.neg12793.sroa.sel = select i1 %.not12792, ptr %.sroa.gep14249, ptr %i.fzl ; 2 uses
  %i.fzn = lshr i64 %i.fyu, 32
  %i.fzo = trunc i64 %i.fzn to i8
  store i8 %i.fzo, ptr %.neg12793.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15886 = getelementptr inbounds nuw i8, ptr %i.fzi, i64 3
  %.neg12793.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12792, ptr %.sroa.gep15886, ptr %.sroa.gep14249
  store i8 0, ptr %.neg12793.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.fzp = and i64 %i.fyu, 1095216660480
  %.not12794 = icmp eq i64 %i.fzp, 1095216660480
  %.neg12795 = select i1 %.not12794, i64 2, i64 1
  %i.fzq = getelementptr inbounds nuw i8, ptr %.neg12793.sroa.sel, i64 %.neg12795 ; 4 uses
  %i.fzr = lshr i64 %i.fyy, 24
  %i.fzs = trunc i64 %i.fzr to i8
  store i8 %i.fzs, ptr %i.fzq, align 1, !tbaa !31
  %i.fzt = getelementptr inbounds nuw i8, ptr %i.fzq, i64 1 ; 2 uses
  store i8 0, ptr %i.fzt, align 1, !tbaa !31
  %i.fzu = and i64 %i.fyy, 4278190080
  %.not12796 = icmp eq i64 %i.fzu, 4278190080     ; 2 uses
  %.sroa.gep14251 = getelementptr inbounds nuw i8, ptr %i.fzq, i64 2 ; 2 uses
  %.neg12797.sroa.sel = select i1 %.not12796, ptr %.sroa.gep14251, ptr %i.fzt ; 2 uses
  %i.fzv = lshr i64 %i.fyy, 16
  %i.fzw = trunc i64 %i.fzv to i8
  store i8 %i.fzw, ptr %.neg12797.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15884 = getelementptr inbounds nuw i8, ptr %i.fzq, i64 3
  %.neg12797.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12796, ptr %.sroa.gep15884, ptr %.sroa.gep14251
  store i8 0, ptr %.neg12797.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.fzx = and i64 %i.fyy, 16711680
  %.not12798 = icmp eq i64 %i.fzx, 16711680
  %.neg12799 = select i1 %.not12798, i64 2, i64 1
  %i.fzy = getelementptr inbounds nuw i8, ptr %.neg12797.sroa.sel, i64 %.neg12799 ; 4 uses
  %i.fzz = lshr i64 %i.fyy, 8
  %i.gaa = trunc i64 %i.fzz to i8
  store i8 %i.gaa, ptr %i.fzy, align 1, !tbaa !31
  %i.gab = getelementptr inbounds nuw i8, ptr %i.fzy, i64 1 ; 2 uses
  store i8 0, ptr %i.gab, align 1, !tbaa !31
  %i.gac = and i64 %i.fyy, 65280
  %.not12800 = icmp eq i64 %i.gac, 65280          ; 2 uses
  %.sroa.gep14253 = getelementptr inbounds nuw i8, ptr %i.fzy, i64 2 ; 2 uses
  %.neg12801.sroa.sel = select i1 %.not12800, ptr %.sroa.gep14253, ptr %i.gab ; 2 uses
  %i.gad = trunc i64 %i.fyy to i8
  store i8 %i.gad, ptr %.neg12801.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15882 = getelementptr inbounds nuw i8, ptr %i.fzy, i64 3
  %.neg12801.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12800, ptr %.sroa.gep15882, ptr %.sroa.gep14253
  store i8 0, ptr %.neg12801.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gae = and i64 %i.fyy, 255
  %.not12802 = icmp eq i64 %i.gae, 255
  %.neg12803 = select i1 %.not12802, i64 2, i64 1
  %i.gaf = getelementptr inbounds nuw i8, ptr %.neg12801.sroa.sel, i64 %.neg12803
  br label %bb.qi

bb.qh:                                            ; preds = %bb.qf
  %i.gag = lshr i64 %i.fyu, 48
  %i.gah = trunc i64 %i.gag to i8
  %i.gai = getelementptr inbounds nuw i8, ptr %.20114925, i64 1
  store i8 %i.gah, ptr %i.gai, align 1, !tbaa !31
  %i.gaj = lshr i64 %i.fyu, 40
  %i.gak = trunc i64 %i.gaj to i8
  %i.gal = getelementptr inbounds nuw i8, ptr %.20114925, i64 2
  store i8 %i.gak, ptr %i.gal, align 1, !tbaa !31
  %i.gam = lshr i64 %i.fyu, 32
  %i.gan = trunc i64 %i.gam to i8
  %i.gao = getelementptr inbounds nuw i8, ptr %.20114925, i64 3
  store i8 %i.gan, ptr %i.gao, align 1, !tbaa !31
  %i.gap = lshr i64 %i.fyy, 24
  %i.gaq = trunc i64 %i.gap to i8
  %i.gar = getelementptr inbounds nuw i8, ptr %.20114925, i64 4
  store i8 %i.gaq, ptr %i.gar, align 1, !tbaa !31
  %i.gas = lshr i64 %i.fyy, 16
  %i.gat = trunc i64 %i.gas to i8
  %i.gau = getelementptr inbounds nuw i8, ptr %.20114925, i64 5
  store i8 %i.gat, ptr %i.gau, align 1, !tbaa !31
  %i.gav = lshr i64 %i.fyy, 8
  %i.gaw = trunc i64 %i.gav to i8
  %i.gax = getelementptr inbounds nuw i8, ptr %.20114925, i64 6
  store i8 %i.gaw, ptr %i.gax, align 1, !tbaa !31
  %i.gay = trunc i64 %i.fyy to i8
  %i.gaz = getelementptr inbounds nuw i8, ptr %.20114925, i64 7
  store i8 %i.gay, ptr %i.gaz, align 1, !tbaa !31
  %i.gba = getelementptr inbounds nuw i8, ptr %.20114925, i64 8
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %bb.qg
  %.202 = phi ptr [ %i.gaf, %bb.qg ], [ %i.gba, %bb.qh ]
  %i.gbb = add nsw i32 %i.fyq, 64
  %i.gbc = load i32, ptr %i.fym, align 4, !tbaa !3
  %i.gbd = zext i32 %i.gbc to i64
  br label %bb.qk

bb.qj:                                            ; preds = %bb.qe
  %i.gbe = zext nneg i32 %i.fyp to i64
  %i.gbf = shl i64 %.1331117614924, %i.gbe
  %i.gbg = zext i32 %i.fys to i64
  %i.gbh = or i64 %i.gbf, %i.gbg
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qj, %bb.qi
  %.13411431 = phi i32 [ %i.gbb, %bb.qi ], [ %i.fyq, %bb.qj ] ; 2 uses
  %.13411177 = phi i64 [ %i.gbd, %bb.qi ], [ %i.gbh, %bb.qj ] ; 2 uses
  %.203 = phi ptr [ %.202, %bb.qi ], [ %.20114925, %bb.qj ] ; 2 uses
  %i.gbi = icmp samesign ugt i32 %.6614926, 511
  br i1 %i.gbi, label %bb.qe, label %._crit_edge14929, !llvm.loop !106

._crit_edge14929:                                 ; preds = %bb.qk, %bb.qd
  %.13311430.lcssa = phi i32 [ %.13211429, %bb.qd ], [ %.13411431, %bb.qk ] ; 2 uses
  %.13311176.lcssa = phi i64 [ %.13211175, %bb.qd ], [ %.13411177, %bb.qk ] ; 2 uses
  %.201.lcssa = phi ptr [ %.200, %bb.qd ], [ %.203, %bb.qk ] ; 13 uses
  %.66.lcssa = phi i32 [ %.65, %bb.qd ], [ %i.fyn, %bb.qk ]
  %i.gbj = add nuw nsw i32 %.66.lcssa, %i.fye
  %i.gbk = zext nneg i8 %i.fyd to i64
  %notmask12769 = shl nsw i64 -1, %i.gbk
  %i.gbl = trunc i64 %notmask12769 to i32
  %i.gbm = xor i32 %i.gbl, -1
  %i.gbn = and i32 %i.fxz, %i.gbm
  %i.gbo = zext nneg i32 %i.gbj to i64            ; 2 uses
  %i.gbp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.gbo
  %i.gbq = load i32, ptr %i.gbp, align 4, !tbaa !3
  %i.gbr = shl i32 %i.gbq, %i.fye
  %i.gbs = or i32 %i.gbr, %i.gbn                  ; 3 uses
  %i.gbt = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.gbu = getelementptr inbounds nuw i8, ptr %i.gbt, i64 %i.gbo
  %i.gbv = load i8, ptr %i.gbu, align 1, !tbaa !31
  %i.gbw = sext i8 %i.gbv to i32
  %i.gbx = add nsw i32 %i.gbw, %i.fye             ; 2 uses
  %i.gby = sub nsw i32 %.13311430.lcssa, %i.gbx   ; 4 uses
  %i.gbz = icmp slt i32 %i.gby, 0
  br i1 %i.gbz, label %bb.ql, label %bb.qp

bb.ql:                                            ; preds = %._crit_edge14929
  %i.gca = zext nneg i32 %.13311430.lcssa to i64
  %i.gcb = shl i64 %.13311176.lcssa, %i.gca
  %i.gcc = sub nsw i32 0, %i.gby
  %i.gcd = ashr i32 %i.gbs, %i.gcc
  %i.gce = sext i32 %i.gcd to i64
  %i.gcf = or i64 %i.gcb, %i.gce                  ; 24 uses
  %i.gcg = and i64 %i.gcf, -9187201950435737472
  %i.gch = sub i64 -72340172838076674, %i.gcf
  %i.gci = and i64 %i.gcg, %i.gch
  %.not12770 = icmp eq i64 %i.gci, 0
  %i.gcj = lshr i64 %i.gcf, 56                    ; 2 uses
  %i.gck = trunc nuw i64 %i.gcj to i8
  store i8 %i.gck, ptr %.201.lcssa, align 1, !tbaa !31
  br i1 %.not12770, label %bb.qn, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %i.gcl = getelementptr inbounds nuw i8, ptr %.201.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.gcl, align 1, !tbaa !31
  %.not12771 = icmp eq i64 %i.gcj, 255            ; 2 uses
  %.sroa.gep14255 = getelementptr inbounds nuw i8, ptr %.201.lcssa, i64 2 ; 2 uses
  %.neg12772.sroa.sel = select i1 %.not12771, ptr %.sroa.gep14255, ptr %i.gcl ; 2 uses
  %i.gcm = lshr i64 %i.gcf, 48
  %i.gcn = trunc i64 %i.gcm to i8
  store i8 %i.gcn, ptr %.neg12772.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15888 = getelementptr inbounds nuw i8, ptr %.201.lcssa, i64 3
  %.neg12772.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12771, ptr %.sroa.gep15888, ptr %.sroa.gep14255
  store i8 0, ptr %.neg12772.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gco = and i64 %i.gcf, 71776119061217280
  %.not12773 = icmp eq i64 %i.gco, 71776119061217280
  %.neg12774 = select i1 %.not12773, i64 2, i64 1
  %i.gcp = getelementptr inbounds nuw i8, ptr %.neg12772.sroa.sel, i64 %.neg12774 ; 4 uses
  %i.gcq = lshr i64 %i.gcf, 40
  %i.gcr = trunc i64 %i.gcq to i8
  store i8 %i.gcr, ptr %i.gcp, align 1, !tbaa !31
  %i.gcs = getelementptr inbounds nuw i8, ptr %i.gcp, i64 1 ; 2 uses
  store i8 0, ptr %i.gcs, align 1, !tbaa !31
  %i.gct = and i64 %i.gcf, 280375465082880
  %.not12775 = icmp eq i64 %i.gct, 280375465082880 ; 2 uses
  %.sroa.gep14257 = getelementptr inbounds nuw i8, ptr %i.gcp, i64 2 ; 2 uses
  %.neg12776.sroa.sel = select i1 %.not12775, ptr %.sroa.gep14257, ptr %i.gcs ; 2 uses
  %i.gcu = lshr i64 %i.gcf, 32
  %i.gcv = trunc i64 %i.gcu to i8
  store i8 %i.gcv, ptr %.neg12776.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15894 = getelementptr inbounds nuw i8, ptr %i.gcp, i64 3
  %.neg12776.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12775, ptr %.sroa.gep15894, ptr %.sroa.gep14257
  store i8 0, ptr %.neg12776.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gcw = and i64 %i.gcf, 1095216660480
  %.not12777 = icmp eq i64 %i.gcw, 1095216660480
  %.neg12778 = select i1 %.not12777, i64 2, i64 1
  %i.gcx = getelementptr inbounds nuw i8, ptr %.neg12776.sroa.sel, i64 %.neg12778 ; 4 uses
  %i.gcy = lshr i64 %i.gcf, 24
  %i.gcz = trunc i64 %i.gcy to i8
  store i8 %i.gcz, ptr %i.gcx, align 1, !tbaa !31
  %i.gda = getelementptr inbounds nuw i8, ptr %i.gcx, i64 1 ; 2 uses
  store i8 0, ptr %i.gda, align 1, !tbaa !31
  %i.gdb = and i64 %i.gcf, 4278190080
  %.not12779 = icmp eq i64 %i.gdb, 4278190080     ; 2 uses
  %.sroa.gep14259 = getelementptr inbounds nuw i8, ptr %i.gcx, i64 2 ; 2 uses
  %.neg12780.sroa.sel = select i1 %.not12779, ptr %.sroa.gep14259, ptr %i.gda ; 2 uses
  %i.gdc = lshr i64 %i.gcf, 16
  %i.gdd = trunc i64 %i.gdc to i8
  store i8 %i.gdd, ptr %.neg12780.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15892 = getelementptr inbounds nuw i8, ptr %i.gcx, i64 3
  %.neg12780.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12779, ptr %.sroa.gep15892, ptr %.sroa.gep14259
  store i8 0, ptr %.neg12780.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gde = and i64 %i.gcf, 16711680
  %.not12781 = icmp eq i64 %i.gde, 16711680
  %.neg12782 = select i1 %.not12781, i64 2, i64 1
  %i.gdf = getelementptr inbounds nuw i8, ptr %.neg12780.sroa.sel, i64 %.neg12782 ; 4 uses
  %i.gdg = lshr i64 %i.gcf, 8
  %i.gdh = trunc i64 %i.gdg to i8
  store i8 %i.gdh, ptr %i.gdf, align 1, !tbaa !31
  %i.gdi = getelementptr inbounds nuw i8, ptr %i.gdf, i64 1 ; 2 uses
  store i8 0, ptr %i.gdi, align 1, !tbaa !31
  %i.gdj = and i64 %i.gcf, 65280
  %.not12783 = icmp eq i64 %i.gdj, 65280          ; 2 uses
  %.sroa.gep14261 = getelementptr inbounds nuw i8, ptr %i.gdf, i64 2 ; 2 uses
  %.neg12784.sroa.sel = select i1 %.not12783, ptr %.sroa.gep14261, ptr %i.gdi ; 2 uses
  %i.gdk = trunc i64 %i.gcf to i8
  store i8 %i.gdk, ptr %.neg12784.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15890 = getelementptr inbounds nuw i8, ptr %i.gdf, i64 3
  %.neg12784.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12783, ptr %.sroa.gep15890, ptr %.sroa.gep14261
  store i8 0, ptr %.neg12784.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gdl = and i64 %i.gcf, 255
  %.not12785 = icmp eq i64 %i.gdl, 255
  %.neg12786 = select i1 %.not12785, i64 2, i64 1
  %i.gdm = getelementptr inbounds nuw i8, ptr %.neg12784.sroa.sel, i64 %.neg12786
  br label %bb.qo

bb.qn:                                            ; preds = %bb.ql
  %i.gdn = lshr i64 %i.gcf, 48
  %i.gdo = trunc i64 %i.gdn to i8
  %i.gdp = getelementptr inbounds nuw i8, ptr %.201.lcssa, i64 1
  store i8 %i.gdo, ptr %i.gdp, align 1, !tbaa !31
  %i.gdq = lshr i64 %i.gcf, 40
  %i.gdr = trunc i64 %i.gdq to i8
  %i.gds = getelementptr inbounds nuw i8, ptr %.201.lcssa, i64 2
  store i8 %i.gdr, ptr %i.gds, align 1, !tbaa !31
  %i.gdt = lshr i64 %i.gcf, 32
  %i.gdu = trunc i64 %i.gdt to i8
  %i.gdv = getelementptr inbounds nuw i8, ptr %.201.lcssa, i64 3
  store i8 %i.gdu, ptr %i.gdv, align 1, !tbaa !31
  %i.gdw = lshr i64 %i.gcf, 24
  %i.gdx = trunc i64 %i.gdw to i8
  %i.gdy = getelementptr inbounds nuw i8, ptr %.201.lcssa, i64 4
  store i8 %i.gdx, ptr %i.gdy, align 1, !tbaa !31
  %i.gdz = lshr i64 %i.gcf, 16
  %i.gea = trunc i64 %i.gdz to i8
  %i.geb = getelementptr inbounds nuw i8, ptr %.201.lcssa, i64 5
  store i8 %i.gea, ptr %i.geb, align 1, !tbaa !31
  %i.gec = lshr i64 %i.gcf, 8
  %i.ged = trunc i64 %i.gec to i8
  %i.gee = getelementptr inbounds nuw i8, ptr %.201.lcssa, i64 6
  store i8 %i.ged, ptr %i.gee, align 1, !tbaa !31
  %i.gef = trunc i64 %i.gcf to i8
  %i.geg = getelementptr inbounds nuw i8, ptr %.201.lcssa, i64 7
  store i8 %i.gef, ptr %i.geg, align 1, !tbaa !31
  %i.geh = getelementptr inbounds nuw i8, ptr %.201.lcssa, i64 8
  br label %bb.qo

bb.qo:                                            ; preds = %bb.qn, %bb.qm
  %.204 = phi ptr [ %i.gdm, %bb.qm ], [ %i.geh, %bb.qn ]
  %i.gei = add nsw i32 %i.gby, 64
  %i.gej = sext i32 %i.gbs to i64
  br label %bb.qq

bb.qp:                                            ; preds = %._crit_edge14929
  %i.gek = zext nneg i32 %i.gbx to i64
  %i.gel = shl i64 %.13311176.lcssa, %i.gek
  %i.gem = sext i32 %i.gbs to i64
  %i.gen = or i64 %i.gel, %i.gem
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qo, %bb.qp, %bb.qa
  %.13611433 = phi i32 [ %.13211429, %bb.qa ], [ %i.gei, %bb.qo ], [ %i.gby, %bb.qp ] ; 3 uses
  %.13611179 = phi i64 [ %.13211175, %bb.qa ], [ %i.gej, %bb.qo ], [ %i.gen, %bb.qp ] ; 3 uses
  %.206 = phi ptr [ %.200, %bb.qa ], [ %.204, %bb.qo ], [ %.201.lcssa, %bb.qp ] ; 3 uses
  %.67 = phi i32 [ %i.fxw, %bb.qa ], [ 0, %bb.qo ], [ 0, %bb.qp ] ; 4 uses
  %i.geo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.gep = load i16, ptr %i.geo, align 2, !tbaa !79 ; 2 uses
  %i.geq = icmp eq i16 %i.gep, 0
  br i1 %i.geq, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq
  %i.ger = add nuw nsw i32 %.67, 16
  br label %bb.rh

bb.qs:                                            ; preds = %bb.qq
  %i.ges = sext i16 %i.gep to i32                 ; 2 uses
  %i.get = ashr i32 %i.ges, 31                    ; 2 uses
  %i.geu = add nsw i32 %i.get, %i.ges             ; 2 uses
  %i.gev = xor i32 %i.geu, %i.get
  %i.gew = sext i32 %i.gev to i64
  %i.gex = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.gew
  %i.gey = load i8, ptr %i.gex, align 1, !tbaa !31 ; 2 uses
  %i.gez = zext i8 %i.gey to i32                  ; 4 uses
  %i.gfa = icmp slt i32 %i.f, %i.gez
  br i1 %i.gfa, label %bb.qt, label %bb.qu

bb.qt:                                            ; preds = %bb.qs
  %i.gfb = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.gfc = load ptr, ptr %i.gfb, align 8, !tbaa !7 ; 2 uses
  %i.gfd = getelementptr inbounds nuw i8, ptr %i.gfc, i64 40
  store i32 6, ptr %i.gfd, align 8, !tbaa !26
  %i.gfe = load ptr, ptr %i.gfc, align 8, !tbaa !32
  tail call void %i.gfe(ptr noundef nonnull %i.gfb) #7
  br label %bb.qu

bb.qu:                                            ; preds = %bb.qt, %bb.qs
  %i.gff = icmp samesign ugt i32 %.67, 255
  br i1 %i.gff, label %.lr.ph14939, label %._crit_edge14940

.lr.ph14939:                                      ; preds = %bb.qu
  %i.gfg = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.gfh = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.qv

bb.qv:                                            ; preds = %.lr.ph14939, %bb.rb
  %.6814937 = phi i32 [ %.67, %.lr.ph14939 ], [ %i.gfi, %bb.rb ] ; 2 uses
  %.20714936 = phi ptr [ %.206, %.lr.ph14939 ], [ %.209, %bb.rb ] ; 13 uses
  %.1371118014935 = phi i64 [ %.13611179, %.lr.ph14939 ], [ %.13811181, %bb.rb ] ; 2 uses
  %.1371143414934 = phi i32 [ %.13611433, %.lr.ph14939 ], [ %.13811435, %bb.rb ] ; 2 uses
  %i.gfi = add nsw i32 %.6814937, -256            ; 2 uses
  %i.gfj = load i8, ptr %i.gfg, align 4, !tbaa !31
  %i.gfk = sext i8 %i.gfj to i32                  ; 2 uses
  %i.gfl = sub nsw i32 %.1371143414934, %i.gfk    ; 4 uses
  %i.gfm = icmp slt i32 %i.gfl, 0
  %i.gfn = load i32, ptr %i.gfh, align 4, !tbaa !3 ; 2 uses
  br i1 %i.gfm, label %bb.qw, label %bb.ra

bb.qw:                                            ; preds = %bb.qv
  %i.gfo = zext nneg i32 %.1371143414934 to i64
  %i.gfp = shl i64 %.1371118014935, %i.gfo        ; 11 uses
  %i.gfq = sub nsw i32 0, %i.gfl
  %i.gfr = lshr i32 %i.gfn, %i.gfq
  %i.gfs = zext nneg i32 %i.gfr to i64
  %i.gft = or i64 %i.gfp, %i.gfs                  ; 14 uses
  %i.gfu = and i64 %i.gft, -9187201950435737472
  %i.gfv = sub i64 -72340172838076674, %i.gft
  %i.gfw = and i64 %i.gfu, %i.gfv
  %.not12822 = icmp eq i64 %i.gfw, 0
  %i.gfx = lshr i64 %i.gfp, 56                    ; 2 uses
  %i.gfy = trunc nuw i64 %i.gfx to i8
  store i8 %i.gfy, ptr %.20714936, align 1, !tbaa !31
  br i1 %.not12822, label %bb.qy, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  %i.gfz = getelementptr inbounds nuw i8, ptr %.20714936, i64 1 ; 2 uses
  store i8 0, ptr %i.gfz, align 1, !tbaa !31
  %.not12823 = icmp eq i64 %i.gfx, 255            ; 2 uses
  %.sroa.gep14263 = getelementptr inbounds nuw i8, ptr %.20714936, i64 2 ; 2 uses
  %.neg12824.sroa.sel = select i1 %.not12823, ptr %.sroa.gep14263, ptr %i.gfz ; 2 uses
  %i.gga = lshr i64 %i.gfp, 48
  %i.ggb = trunc i64 %i.gga to i8
  store i8 %i.ggb, ptr %.neg12824.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15864 = getelementptr inbounds nuw i8, ptr %.20714936, i64 3
  %.neg12824.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12823, ptr %.sroa.gep15864, ptr %.sroa.gep14263
  store i8 0, ptr %.neg12824.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ggc = and i64 %i.gfp, 71776119061217280
  %.not12825 = icmp eq i64 %i.ggc, 71776119061217280
  %.neg12826 = select i1 %.not12825, i64 2, i64 1
  %i.ggd = getelementptr inbounds nuw i8, ptr %.neg12824.sroa.sel, i64 %.neg12826 ; 4 uses
  %i.gge = lshr i64 %i.gfp, 40
  %i.ggf = trunc i64 %i.gge to i8
  store i8 %i.ggf, ptr %i.ggd, align 1, !tbaa !31
  %i.ggg = getelementptr inbounds nuw i8, ptr %i.ggd, i64 1 ; 2 uses
  store i8 0, ptr %i.ggg, align 1, !tbaa !31
  %i.ggh = and i64 %i.gfp, 280375465082880
  %.not12827 = icmp eq i64 %i.ggh, 280375465082880 ; 2 uses
  %.sroa.gep14265 = getelementptr inbounds nuw i8, ptr %i.ggd, i64 2 ; 2 uses
  %.neg12828.sroa.sel = select i1 %.not12827, ptr %.sroa.gep14265, ptr %i.ggg ; 2 uses
  %i.ggi = lshr i64 %i.gfp, 32
  %i.ggj = trunc i64 %i.ggi to i8
  store i8 %i.ggj, ptr %.neg12828.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15870 = getelementptr inbounds nuw i8, ptr %i.ggd, i64 3
  %.neg12828.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12827, ptr %.sroa.gep15870, ptr %.sroa.gep14265
  store i8 0, ptr %.neg12828.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ggk = and i64 %i.gfp, 1095216660480
  %.not12829 = icmp eq i64 %i.ggk, 1095216660480
  %.neg12830 = select i1 %.not12829, i64 2, i64 1
  %i.ggl = getelementptr inbounds nuw i8, ptr %.neg12828.sroa.sel, i64 %.neg12830 ; 4 uses
  %i.ggm = lshr i64 %i.gft, 24
  %i.ggn = trunc i64 %i.ggm to i8
  store i8 %i.ggn, ptr %i.ggl, align 1, !tbaa !31
  %i.ggo = getelementptr inbounds nuw i8, ptr %i.ggl, i64 1 ; 2 uses
  store i8 0, ptr %i.ggo, align 1, !tbaa !31
  %i.ggp = and i64 %i.gft, 4278190080
  %.not12831 = icmp eq i64 %i.ggp, 4278190080     ; 2 uses
  %.sroa.gep14267 = getelementptr inbounds nuw i8, ptr %i.ggl, i64 2 ; 2 uses
  %.neg12832.sroa.sel = select i1 %.not12831, ptr %.sroa.gep14267, ptr %i.ggo ; 2 uses
  %i.ggq = lshr i64 %i.gft, 16
  %i.ggr = trunc i64 %i.ggq to i8
  store i8 %i.ggr, ptr %.neg12832.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15868 = getelementptr inbounds nuw i8, ptr %i.ggl, i64 3
  %.neg12832.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12831, ptr %.sroa.gep15868, ptr %.sroa.gep14267
  store i8 0, ptr %.neg12832.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ggs = and i64 %i.gft, 16711680
  %.not12833 = icmp eq i64 %i.ggs, 16711680
  %.neg12834 = select i1 %.not12833, i64 2, i64 1
  %i.ggt = getelementptr inbounds nuw i8, ptr %.neg12832.sroa.sel, i64 %.neg12834 ; 4 uses
  %i.ggu = lshr i64 %i.gft, 8
  %i.ggv = trunc i64 %i.ggu to i8
  store i8 %i.ggv, ptr %i.ggt, align 1, !tbaa !31
  %i.ggw = getelementptr inbounds nuw i8, ptr %i.ggt, i64 1 ; 2 uses
  store i8 0, ptr %i.ggw, align 1, !tbaa !31
  %i.ggx = and i64 %i.gft, 65280
  %.not12835 = icmp eq i64 %i.ggx, 65280          ; 2 uses
  %.sroa.gep14269 = getelementptr inbounds nuw i8, ptr %i.ggt, i64 2 ; 2 uses
  %.neg12836.sroa.sel = select i1 %.not12835, ptr %.sroa.gep14269, ptr %i.ggw ; 2 uses
  %i.ggy = trunc i64 %i.gft to i8
  store i8 %i.ggy, ptr %.neg12836.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15866 = getelementptr inbounds nuw i8, ptr %i.ggt, i64 3
  %.neg12836.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12835, ptr %.sroa.gep15866, ptr %.sroa.gep14269
  store i8 0, ptr %.neg12836.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ggz = and i64 %i.gft, 255
  %.not12837 = icmp eq i64 %i.ggz, 255
  %.neg12838 = select i1 %.not12837, i64 2, i64 1
  %i.gha = getelementptr inbounds nuw i8, ptr %.neg12836.sroa.sel, i64 %.neg12838
  br label %bb.qz

bb.qy:                                            ; preds = %bb.qw
  %i.ghb = lshr i64 %i.gfp, 48
  %i.ghc = trunc i64 %i.ghb to i8
  %i.ghd = getelementptr inbounds nuw i8, ptr %.20714936, i64 1
  store i8 %i.ghc, ptr %i.ghd, align 1, !tbaa !31
  %i.ghe = lshr i64 %i.gfp, 40
  %i.ghf = trunc i64 %i.ghe to i8
  %i.ghg = getelementptr inbounds nuw i8, ptr %.20714936, i64 2
  store i8 %i.ghf, ptr %i.ghg, align 1, !tbaa !31
  %i.ghh = lshr i64 %i.gfp, 32
  %i.ghi = trunc i64 %i.ghh to i8
  %i.ghj = getelementptr inbounds nuw i8, ptr %.20714936, i64 3
  store i8 %i.ghi, ptr %i.ghj, align 1, !tbaa !31
  %i.ghk = lshr i64 %i.gft, 24
  %i.ghl = trunc i64 %i.ghk to i8
  %i.ghm = getelementptr inbounds nuw i8, ptr %.20714936, i64 4
  store i8 %i.ghl, ptr %i.ghm, align 1, !tbaa !31
  %i.ghn = lshr i64 %i.gft, 16
  %i.gho = trunc i64 %i.ghn to i8
  %i.ghp = getelementptr inbounds nuw i8, ptr %.20714936, i64 5
  store i8 %i.gho, ptr %i.ghp, align 1, !tbaa !31
  %i.ghq = lshr i64 %i.gft, 8
  %i.ghr = trunc i64 %i.ghq to i8
  %i.ghs = getelementptr inbounds nuw i8, ptr %.20714936, i64 6
  store i8 %i.ghr, ptr %i.ghs, align 1, !tbaa !31
  %i.ght = trunc i64 %i.gft to i8
  %i.ghu = getelementptr inbounds nuw i8, ptr %.20714936, i64 7
  store i8 %i.ght, ptr %i.ghu, align 1, !tbaa !31
  %i.ghv = getelementptr inbounds nuw i8, ptr %.20714936, i64 8
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qy, %bb.qx
  %.208 = phi ptr [ %i.gha, %bb.qx ], [ %i.ghv, %bb.qy ]
  %i.ghw = add nsw i32 %i.gfl, 64
  %i.ghx = load i32, ptr %i.gfh, align 4, !tbaa !3
  %i.ghy = zext i32 %i.ghx to i64
  br label %bb.rb

bb.ra:                                            ; preds = %bb.qv
  %i.ghz = zext nneg i32 %i.gfk to i64
  %i.gia = shl i64 %.1371118014935, %i.ghz
  %i.gib = zext i32 %i.gfn to i64
  %i.gic = or i64 %i.gia, %i.gib
  br label %bb.rb

bb.rb:                                            ; preds = %bb.ra, %bb.qz
  %.13811435 = phi i32 [ %i.ghw, %bb.qz ], [ %i.gfl, %bb.ra ] ; 2 uses
  %.13811181 = phi i64 [ %i.ghy, %bb.qz ], [ %i.gic, %bb.ra ] ; 2 uses
  %.209 = phi ptr [ %.208, %bb.qz ], [ %.20714936, %bb.ra ] ; 2 uses
  %i.gid = icmp samesign ugt i32 %.6814937, 511
  br i1 %i.gid, label %bb.qv, label %._crit_edge14940, !llvm.loop !107

._crit_edge14940:                                 ; preds = %bb.rb, %bb.qu
  %.13711434.lcssa = phi i32 [ %.13611433, %bb.qu ], [ %.13811435, %bb.rb ] ; 2 uses
  %.13711180.lcssa = phi i64 [ %.13611179, %bb.qu ], [ %.13811181, %bb.rb ] ; 2 uses
  %.207.lcssa = phi ptr [ %.206, %bb.qu ], [ %.209, %bb.rb ] ; 13 uses
  %.68.lcssa = phi i32 [ %.67, %bb.qu ], [ %i.gfi, %bb.rb ]
  %i.gie = add nuw nsw i32 %.68.lcssa, %i.gez
  %i.gif = zext nneg i8 %i.gey to i64
  %notmask12804 = shl nsw i64 -1, %i.gif
  %i.gig = trunc i64 %notmask12804 to i32
  %i.gih = xor i32 %i.gig, -1
  %i.gii = and i32 %i.geu, %i.gih
  %i.gij = zext nneg i32 %i.gie to i64            ; 2 uses
  %i.gik = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.gij
  %i.gil = load i32, ptr %i.gik, align 4, !tbaa !3
  %i.gim = shl i32 %i.gil, %i.gez
  %i.gin = or i32 %i.gim, %i.gii                  ; 3 uses
  %i.gio = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.gip = getelementptr inbounds nuw i8, ptr %i.gio, i64 %i.gij
  %i.giq = load i8, ptr %i.gip, align 1, !tbaa !31
  %i.gir = sext i8 %i.giq to i32
  %i.gis = add nsw i32 %i.gir, %i.gez             ; 2 uses
  %i.git = sub nsw i32 %.13711434.lcssa, %i.gis   ; 4 uses
  %i.giu = icmp slt i32 %i.git, 0
  br i1 %i.giu, label %bb.rc, label %bb.rg

bb.rc:                                            ; preds = %._crit_edge14940
  %i.giv = zext nneg i32 %.13711434.lcssa to i64
  %i.giw = shl i64 %.13711180.lcssa, %i.giv
  %i.gix = sub nsw i32 0, %i.git
  %i.giy = ashr i32 %i.gin, %i.gix
  %i.giz = sext i32 %i.giy to i64
  %i.gja = or i64 %i.giw, %i.giz                  ; 24 uses
  %i.gjb = and i64 %i.gja, -9187201950435737472
  %i.gjc = sub i64 -72340172838076674, %i.gja
  %i.gjd = and i64 %i.gjb, %i.gjc
  %.not12805 = icmp eq i64 %i.gjd, 0
  %i.gje = lshr i64 %i.gja, 56                    ; 2 uses
  %i.gjf = trunc nuw i64 %i.gje to i8
  store i8 %i.gjf, ptr %.207.lcssa, align 1, !tbaa !31
  br i1 %.not12805, label %bb.re, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.gjg = getelementptr inbounds nuw i8, ptr %.207.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.gjg, align 1, !tbaa !31
  %.not12806 = icmp eq i64 %i.gje, 255            ; 2 uses
  %.sroa.gep14271 = getelementptr inbounds nuw i8, ptr %.207.lcssa, i64 2 ; 2 uses
  %.neg12807.sroa.sel = select i1 %.not12806, ptr %.sroa.gep14271, ptr %i.gjg ; 2 uses
  %i.gjh = lshr i64 %i.gja, 48
  %i.gji = trunc i64 %i.gjh to i8
  store i8 %i.gji, ptr %.neg12807.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15872 = getelementptr inbounds nuw i8, ptr %.207.lcssa, i64 3
  %.neg12807.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12806, ptr %.sroa.gep15872, ptr %.sroa.gep14271
  store i8 0, ptr %.neg12807.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gjj = and i64 %i.gja, 71776119061217280
  %.not12808 = icmp eq i64 %i.gjj, 71776119061217280
  %.neg12809 = select i1 %.not12808, i64 2, i64 1
  %i.gjk = getelementptr inbounds nuw i8, ptr %.neg12807.sroa.sel, i64 %.neg12809 ; 4 uses
  %i.gjl = lshr i64 %i.gja, 40
  %i.gjm = trunc i64 %i.gjl to i8
  store i8 %i.gjm, ptr %i.gjk, align 1, !tbaa !31
  %i.gjn = getelementptr inbounds nuw i8, ptr %i.gjk, i64 1 ; 2 uses
  store i8 0, ptr %i.gjn, align 1, !tbaa !31
  %i.gjo = and i64 %i.gja, 280375465082880
  %.not12810 = icmp eq i64 %i.gjo, 280375465082880 ; 2 uses
  %.sroa.gep14273 = getelementptr inbounds nuw i8, ptr %i.gjk, i64 2 ; 2 uses
  %.neg12811.sroa.sel = select i1 %.not12810, ptr %.sroa.gep14273, ptr %i.gjn ; 2 uses
  %i.gjp = lshr i64 %i.gja, 32
  %i.gjq = trunc i64 %i.gjp to i8
  store i8 %i.gjq, ptr %.neg12811.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15878 = getelementptr inbounds nuw i8, ptr %i.gjk, i64 3
  %.neg12811.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12810, ptr %.sroa.gep15878, ptr %.sroa.gep14273
  store i8 0, ptr %.neg12811.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gjr = and i64 %i.gja, 1095216660480
  %.not12812 = icmp eq i64 %i.gjr, 1095216660480
  %.neg12813 = select i1 %.not12812, i64 2, i64 1
  %i.gjs = getelementptr inbounds nuw i8, ptr %.neg12811.sroa.sel, i64 %.neg12813 ; 4 uses
  %i.gjt = lshr i64 %i.gja, 24
  %i.gju = trunc i64 %i.gjt to i8
  store i8 %i.gju, ptr %i.gjs, align 1, !tbaa !31
  %i.gjv = getelementptr inbounds nuw i8, ptr %i.gjs, i64 1 ; 2 uses
  store i8 0, ptr %i.gjv, align 1, !tbaa !31
  %i.gjw = and i64 %i.gja, 4278190080
  %.not12814 = icmp eq i64 %i.gjw, 4278190080     ; 2 uses
  %.sroa.gep14275 = getelementptr inbounds nuw i8, ptr %i.gjs, i64 2 ; 2 uses
  %.neg12815.sroa.sel = select i1 %.not12814, ptr %.sroa.gep14275, ptr %i.gjv ; 2 uses
  %i.gjx = lshr i64 %i.gja, 16
  %i.gjy = trunc i64 %i.gjx to i8
  store i8 %i.gjy, ptr %.neg12815.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15876 = getelementptr inbounds nuw i8, ptr %i.gjs, i64 3
  %.neg12815.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12814, ptr %.sroa.gep15876, ptr %.sroa.gep14275
  store i8 0, ptr %.neg12815.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gjz = and i64 %i.gja, 16711680
  %.not12816 = icmp eq i64 %i.gjz, 16711680
  %.neg12817 = select i1 %.not12816, i64 2, i64 1
  %i.gka = getelementptr inbounds nuw i8, ptr %.neg12815.sroa.sel, i64 %.neg12817 ; 4 uses
  %i.gkb = lshr i64 %i.gja, 8
  %i.gkc = trunc i64 %i.gkb to i8
  store i8 %i.gkc, ptr %i.gka, align 1, !tbaa !31
  %i.gkd = getelementptr inbounds nuw i8, ptr %i.gka, i64 1 ; 2 uses
  store i8 0, ptr %i.gkd, align 1, !tbaa !31
  %i.gke = and i64 %i.gja, 65280
  %.not12818 = icmp eq i64 %i.gke, 65280          ; 2 uses
  %.sroa.gep14277 = getelementptr inbounds nuw i8, ptr %i.gka, i64 2 ; 2 uses
  %.neg12819.sroa.sel = select i1 %.not12818, ptr %.sroa.gep14277, ptr %i.gkd ; 2 uses
  %i.gkf = trunc i64 %i.gja to i8
  store i8 %i.gkf, ptr %.neg12819.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15874 = getelementptr inbounds nuw i8, ptr %i.gka, i64 3
  %.neg12819.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12818, ptr %.sroa.gep15874, ptr %.sroa.gep14277
  store i8 0, ptr %.neg12819.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gkg = and i64 %i.gja, 255
  %.not12820 = icmp eq i64 %i.gkg, 255
  %.neg12821 = select i1 %.not12820, i64 2, i64 1
  %i.gkh = getelementptr inbounds nuw i8, ptr %.neg12819.sroa.sel, i64 %.neg12821
  br label %bb.rf

bb.re:                                            ; preds = %bb.rc
  %i.gki = lshr i64 %i.gja, 48
  %i.gkj = trunc i64 %i.gki to i8
  %i.gkk = getelementptr inbounds nuw i8, ptr %.207.lcssa, i64 1
  store i8 %i.gkj, ptr %i.gkk, align 1, !tbaa !31
  %i.gkl = lshr i64 %i.gja, 40
  %i.gkm = trunc i64 %i.gkl to i8
  %i.gkn = getelementptr inbounds nuw i8, ptr %.207.lcssa, i64 2
  store i8 %i.gkm, ptr %i.gkn, align 1, !tbaa !31
  %i.gko = lshr i64 %i.gja, 32
  %i.gkp = trunc i64 %i.gko to i8
  %i.gkq = getelementptr inbounds nuw i8, ptr %.207.lcssa, i64 3
  store i8 %i.gkp, ptr %i.gkq, align 1, !tbaa !31
  %i.gkr = lshr i64 %i.gja, 24
  %i.gks = trunc i64 %i.gkr to i8
  %i.gkt = getelementptr inbounds nuw i8, ptr %.207.lcssa, i64 4
  store i8 %i.gks, ptr %i.gkt, align 1, !tbaa !31
  %i.gku = lshr i64 %i.gja, 16
  %i.gkv = trunc i64 %i.gku to i8
  %i.gkw = getelementptr inbounds nuw i8, ptr %.207.lcssa, i64 5
  store i8 %i.gkv, ptr %i.gkw, align 1, !tbaa !31
  %i.gkx = lshr i64 %i.gja, 8
  %i.gky = trunc i64 %i.gkx to i8
  %i.gkz = getelementptr inbounds nuw i8, ptr %.207.lcssa, i64 6
  store i8 %i.gky, ptr %i.gkz, align 1, !tbaa !31
  %i.gla = trunc i64 %i.gja to i8
  %i.glb = getelementptr inbounds nuw i8, ptr %.207.lcssa, i64 7
  store i8 %i.gla, ptr %i.glb, align 1, !tbaa !31
  %i.glc = getelementptr inbounds nuw i8, ptr %.207.lcssa, i64 8
  br label %bb.rf

bb.rf:                                            ; preds = %bb.re, %bb.rd
  %.210 = phi ptr [ %i.gkh, %bb.rd ], [ %i.glc, %bb.re ]
  %i.gld = add nsw i32 %i.git, 64
  %i.gle = sext i32 %i.gin to i64
  br label %bb.rh

bb.rg:                                            ; preds = %._crit_edge14940
  %i.glf = zext nneg i32 %i.gis to i64
  %i.glg = shl i64 %.13711180.lcssa, %i.glf
  %i.glh = sext i32 %i.gin to i64
  %i.gli = or i64 %i.glg, %i.glh
  br label %bb.rh

bb.rh:                                            ; preds = %bb.rf, %bb.rg, %bb.qr
  %.14011437 = phi i32 [ %.13611433, %bb.qr ], [ %i.gld, %bb.rf ], [ %i.git, %bb.rg ] ; 3 uses
  %.14011183 = phi i64 [ %.13611179, %bb.qr ], [ %i.gle, %bb.rf ], [ %i.gli, %bb.rg ] ; 3 uses
  %.212 = phi ptr [ %.206, %bb.qr ], [ %.210, %bb.rf ], [ %.207.lcssa, %bb.rg ] ; 3 uses
  %.69 = phi i32 [ %i.ger, %bb.qr ], [ 0, %bb.rf ], [ 0, %bb.rg ] ; 4 uses
  %i.glj = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.glk = load i16, ptr %i.glj, align 2, !tbaa !79 ; 2 uses
  %i.gll = icmp eq i16 %i.glk, 0
  br i1 %i.gll, label %bb.ri, label %bb.rj

bb.ri:                                            ; preds = %bb.rh
  %i.glm = add nuw nsw i32 %.69, 16
  br label %bb.ry

bb.rj:                                            ; preds = %bb.rh
  %i.gln = sext i16 %i.glk to i32                 ; 2 uses
  %i.glo = ashr i32 %i.gln, 31                    ; 2 uses
  %i.glp = add nsw i32 %i.glo, %i.gln             ; 2 uses
  %i.glq = xor i32 %i.glp, %i.glo
  %i.glr = sext i32 %i.glq to i64
  %i.gls = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.glr
  %i.glt = load i8, ptr %i.gls, align 1, !tbaa !31 ; 2 uses
  %i.glu = zext i8 %i.glt to i32                  ; 4 uses
  %i.glv = icmp slt i32 %i.f, %i.glu
  br i1 %i.glv, label %bb.rk, label %bb.rl

bb.rk:                                            ; preds = %bb.rj
  %i.glw = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.glx = load ptr, ptr %i.glw, align 8, !tbaa !7 ; 2 uses
  %i.gly = getelementptr inbounds nuw i8, ptr %i.glx, i64 40
  store i32 6, ptr %i.gly, align 8, !tbaa !26
  %i.glz = load ptr, ptr %i.glx, align 8, !tbaa !32
  tail call void %i.glz(ptr noundef nonnull %i.glw) #7
  br label %bb.rl

bb.rl:                                            ; preds = %bb.rk, %bb.rj
  %i.gma = icmp samesign ugt i32 %.69, 255
  br i1 %i.gma, label %.lr.ph14950, label %._crit_edge14951

.lr.ph14950:                                      ; preds = %bb.rl
  %i.gmb = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.gmc = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.rm

bb.rm:                                            ; preds = %.lr.ph14950, %bb.rs
  %.7014948 = phi i32 [ %.69, %.lr.ph14950 ], [ %i.gmd, %bb.rs ] ; 2 uses
  %.21314947 = phi ptr [ %.212, %.lr.ph14950 ], [ %.215, %bb.rs ] ; 13 uses
  %.1411118414946 = phi i64 [ %.14011183, %.lr.ph14950 ], [ %.14211185, %bb.rs ] ; 2 uses
  %.1411143814945 = phi i32 [ %.14011437, %.lr.ph14950 ], [ %.14211439, %bb.rs ] ; 2 uses
  %i.gmd = add nsw i32 %.7014948, -256            ; 2 uses
  %i.gme = load i8, ptr %i.gmb, align 4, !tbaa !31
  %i.gmf = sext i8 %i.gme to i32                  ; 2 uses
  %i.gmg = sub nsw i32 %.1411143814945, %i.gmf    ; 4 uses
  %i.gmh = icmp slt i32 %i.gmg, 0
  %i.gmi = load i32, ptr %i.gmc, align 4, !tbaa !3 ; 2 uses
  br i1 %i.gmh, label %bb.rn, label %bb.rr

bb.rn:                                            ; preds = %bb.rm
  %i.gmj = zext nneg i32 %.1411143814945 to i64
  %i.gmk = shl i64 %.1411118414946, %i.gmj        ; 11 uses
  %i.gml = sub nsw i32 0, %i.gmg
  %i.gmm = lshr i32 %i.gmi, %i.gml
  %i.gmn = zext nneg i32 %i.gmm to i64
  %i.gmo = or i64 %i.gmk, %i.gmn                  ; 14 uses
  %i.gmp = and i64 %i.gmo, -9187201950435737472
  %i.gmq = sub i64 -72340172838076674, %i.gmo
  %i.gmr = and i64 %i.gmp, %i.gmq
  %.not12857 = icmp eq i64 %i.gmr, 0
  %i.gms = lshr i64 %i.gmk, 56                    ; 2 uses
  %i.gmt = trunc nuw i64 %i.gms to i8
  store i8 %i.gmt, ptr %.21314947, align 1, !tbaa !31
  br i1 %.not12857, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.gmu = getelementptr inbounds nuw i8, ptr %.21314947, i64 1 ; 2 uses
  store i8 0, ptr %i.gmu, align 1, !tbaa !31
  %.not12858 = icmp eq i64 %i.gms, 255            ; 2 uses
  %.sroa.gep14279 = getelementptr inbounds nuw i8, ptr %.21314947, i64 2 ; 2 uses
  %.neg12859.sroa.sel = select i1 %.not12858, ptr %.sroa.gep14279, ptr %i.gmu ; 2 uses
  %i.gmv = lshr i64 %i.gmk, 48
  %i.gmw = trunc i64 %i.gmv to i8
  store i8 %i.gmw, ptr %.neg12859.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15848 = getelementptr inbounds nuw i8, ptr %.21314947, i64 3
  %.neg12859.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12858, ptr %.sroa.gep15848, ptr %.sroa.gep14279
  store i8 0, ptr %.neg12859.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gmx = and i64 %i.gmk, 71776119061217280
  %.not12860 = icmp eq i64 %i.gmx, 71776119061217280
  %.neg12861 = select i1 %.not12860, i64 2, i64 1
  %i.gmy = getelementptr inbounds nuw i8, ptr %.neg12859.sroa.sel, i64 %.neg12861 ; 4 uses
  %i.gmz = lshr i64 %i.gmk, 40
  %i.gna = trunc i64 %i.gmz to i8
  store i8 %i.gna, ptr %i.gmy, align 1, !tbaa !31
  %i.gnb = getelementptr inbounds nuw i8, ptr %i.gmy, i64 1 ; 2 uses
  store i8 0, ptr %i.gnb, align 1, !tbaa !31
  %i.gnc = and i64 %i.gmk, 280375465082880
  %.not12862 = icmp eq i64 %i.gnc, 280375465082880 ; 2 uses
  %.sroa.gep14281 = getelementptr inbounds nuw i8, ptr %i.gmy, i64 2 ; 2 uses
  %.neg12863.sroa.sel = select i1 %.not12862, ptr %.sroa.gep14281, ptr %i.gnb ; 2 uses
  %i.gnd = lshr i64 %i.gmk, 32
  %i.gne = trunc i64 %i.gnd to i8
  store i8 %i.gne, ptr %.neg12863.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15854 = getelementptr inbounds nuw i8, ptr %i.gmy, i64 3
  %.neg12863.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12862, ptr %.sroa.gep15854, ptr %.sroa.gep14281
  store i8 0, ptr %.neg12863.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gnf = and i64 %i.gmk, 1095216660480
  %.not12864 = icmp eq i64 %i.gnf, 1095216660480
  %.neg12865 = select i1 %.not12864, i64 2, i64 1
  %i.gng = getelementptr inbounds nuw i8, ptr %.neg12863.sroa.sel, i64 %.neg12865 ; 4 uses
  %i.gnh = lshr i64 %i.gmo, 24
  %i.gni = trunc i64 %i.gnh to i8
  store i8 %i.gni, ptr %i.gng, align 1, !tbaa !31
  %i.gnj = getelementptr inbounds nuw i8, ptr %i.gng, i64 1 ; 2 uses
  store i8 0, ptr %i.gnj, align 1, !tbaa !31
  %i.gnk = and i64 %i.gmo, 4278190080
  %.not12866 = icmp eq i64 %i.gnk, 4278190080     ; 2 uses
  %.sroa.gep14283 = getelementptr inbounds nuw i8, ptr %i.gng, i64 2 ; 2 uses
  %.neg12867.sroa.sel = select i1 %.not12866, ptr %.sroa.gep14283, ptr %i.gnj ; 2 uses
  %i.gnl = lshr i64 %i.gmo, 16
  %i.gnm = trunc i64 %i.gnl to i8
  store i8 %i.gnm, ptr %.neg12867.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15852 = getelementptr inbounds nuw i8, ptr %i.gng, i64 3
  %.neg12867.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12866, ptr %.sroa.gep15852, ptr %.sroa.gep14283
  store i8 0, ptr %.neg12867.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gnn = and i64 %i.gmo, 16711680
  %.not12868 = icmp eq i64 %i.gnn, 16711680
  %.neg12869 = select i1 %.not12868, i64 2, i64 1
  %i.gno = getelementptr inbounds nuw i8, ptr %.neg12867.sroa.sel, i64 %.neg12869 ; 4 uses
  %i.gnp = lshr i64 %i.gmo, 8
  %i.gnq = trunc i64 %i.gnp to i8
  store i8 %i.gnq, ptr %i.gno, align 1, !tbaa !31
  %i.gnr = getelementptr inbounds nuw i8, ptr %i.gno, i64 1 ; 2 uses
  store i8 0, ptr %i.gnr, align 1, !tbaa !31
  %i.gns = and i64 %i.gmo, 65280
  %.not12870 = icmp eq i64 %i.gns, 65280          ; 2 uses
  %.sroa.gep14285 = getelementptr inbounds nuw i8, ptr %i.gno, i64 2 ; 2 uses
  %.neg12871.sroa.sel = select i1 %.not12870, ptr %.sroa.gep14285, ptr %i.gnr ; 2 uses
  %i.gnt = trunc i64 %i.gmo to i8
  store i8 %i.gnt, ptr %.neg12871.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15850 = getelementptr inbounds nuw i8, ptr %i.gno, i64 3
  %.neg12871.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12870, ptr %.sroa.gep15850, ptr %.sroa.gep14285
  store i8 0, ptr %.neg12871.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gnu = and i64 %i.gmo, 255
  %.not12872 = icmp eq i64 %i.gnu, 255
  %.neg12873 = select i1 %.not12872, i64 2, i64 1
  %i.gnv = getelementptr inbounds nuw i8, ptr %.neg12871.sroa.sel, i64 %.neg12873
  br label %bb.rq

bb.rp:                                            ; preds = %bb.rn
  %i.gnw = lshr i64 %i.gmk, 48
  %i.gnx = trunc i64 %i.gnw to i8
  %i.gny = getelementptr inbounds nuw i8, ptr %.21314947, i64 1
  store i8 %i.gnx, ptr %i.gny, align 1, !tbaa !31
  %i.gnz = lshr i64 %i.gmk, 40
  %i.goa = trunc i64 %i.gnz to i8
  %i.gob = getelementptr inbounds nuw i8, ptr %.21314947, i64 2
  store i8 %i.goa, ptr %i.gob, align 1, !tbaa !31
  %i.goc = lshr i64 %i.gmk, 32
  %i.god = trunc i64 %i.goc to i8
  %i.goe = getelementptr inbounds nuw i8, ptr %.21314947, i64 3
  store i8 %i.god, ptr %i.goe, align 1, !tbaa !31
  %i.gof = lshr i64 %i.gmo, 24
  %i.gog = trunc i64 %i.gof to i8
  %i.goh = getelementptr inbounds nuw i8, ptr %.21314947, i64 4
  store i8 %i.gog, ptr %i.goh, align 1, !tbaa !31
  %i.goi = lshr i64 %i.gmo, 16
  %i.goj = trunc i64 %i.goi to i8
  %i.gok = getelementptr inbounds nuw i8, ptr %.21314947, i64 5
  store i8 %i.goj, ptr %i.gok, align 1, !tbaa !31
  %i.gol = lshr i64 %i.gmo, 8
  %i.gom = trunc i64 %i.gol to i8
  %i.gon = getelementptr inbounds nuw i8, ptr %.21314947, i64 6
  store i8 %i.gom, ptr %i.gon, align 1, !tbaa !31
  %i.goo = trunc i64 %i.gmo to i8
  %i.gop = getelementptr inbounds nuw i8, ptr %.21314947, i64 7
  store i8 %i.goo, ptr %i.gop, align 1, !tbaa !31
  %i.goq = getelementptr inbounds nuw i8, ptr %.21314947, i64 8
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.ro
  %.214 = phi ptr [ %i.gnv, %bb.ro ], [ %i.goq, %bb.rp ]
  %i.gor = add nsw i32 %i.gmg, 64
  %i.gos = load i32, ptr %i.gmc, align 4, !tbaa !3
  %i.got = zext i32 %i.gos to i64
  br label %bb.rs

bb.rr:                                            ; preds = %bb.rm
  %i.gou = zext nneg i32 %i.gmf to i64
  %i.gov = shl i64 %.1411118414946, %i.gou
  %i.gow = zext i32 %i.gmi to i64
  %i.gox = or i64 %i.gov, %i.gow
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.rq
  %.14211439 = phi i32 [ %i.gor, %bb.rq ], [ %i.gmg, %bb.rr ] ; 2 uses
  %.14211185 = phi i64 [ %i.got, %bb.rq ], [ %i.gox, %bb.rr ] ; 2 uses
  %.215 = phi ptr [ %.214, %bb.rq ], [ %.21314947, %bb.rr ] ; 2 uses
  %i.goy = icmp samesign ugt i32 %.7014948, 511
  br i1 %i.goy, label %bb.rm, label %._crit_edge14951, !llvm.loop !108

._crit_edge14951:                                 ; preds = %bb.rs, %bb.rl
  %.14111438.lcssa = phi i32 [ %.14011437, %bb.rl ], [ %.14211439, %bb.rs ] ; 2 uses
  %.14111184.lcssa = phi i64 [ %.14011183, %bb.rl ], [ %.14211185, %bb.rs ] ; 2 uses
  %.213.lcssa = phi ptr [ %.212, %bb.rl ], [ %.215, %bb.rs ] ; 13 uses
  %.70.lcssa = phi i32 [ %.69, %bb.rl ], [ %i.gmd, %bb.rs ]
  %i.goz = add nuw nsw i32 %.70.lcssa, %i.glu
  %i.gpa = zext nneg i8 %i.glt to i64
  %notmask12839 = shl nsw i64 -1, %i.gpa
  %i.gpb = trunc i64 %notmask12839 to i32
  %i.gpc = xor i32 %i.gpb, -1
  %i.gpd = and i32 %i.glp, %i.gpc
  %i.gpe = zext nneg i32 %i.goz to i64            ; 2 uses
  %i.gpf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.gpe
  %i.gpg = load i32, ptr %i.gpf, align 4, !tbaa !3
  %i.gph = shl i32 %i.gpg, %i.glu
  %i.gpi = or i32 %i.gph, %i.gpd                  ; 3 uses
  %i.gpj = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.gpk = getelementptr inbounds nuw i8, ptr %i.gpj, i64 %i.gpe
  %i.gpl = load i8, ptr %i.gpk, align 1, !tbaa !31
  %i.gpm = sext i8 %i.gpl to i32
  %i.gpn = add nsw i32 %i.gpm, %i.glu             ; 2 uses
  %i.gpo = sub nsw i32 %.14111438.lcssa, %i.gpn   ; 4 uses
  %i.gpp = icmp slt i32 %i.gpo, 0
  br i1 %i.gpp, label %bb.rt, label %bb.rx

bb.rt:                                            ; preds = %._crit_edge14951
  %i.gpq = zext nneg i32 %.14111438.lcssa to i64
  %i.gpr = shl i64 %.14111184.lcssa, %i.gpq
  %i.gps = sub nsw i32 0, %i.gpo
  %i.gpt = ashr i32 %i.gpi, %i.gps
  %i.gpu = sext i32 %i.gpt to i64
  %i.gpv = or i64 %i.gpr, %i.gpu                  ; 24 uses
  %i.gpw = and i64 %i.gpv, -9187201950435737472
  %i.gpx = sub i64 -72340172838076674, %i.gpv
  %i.gpy = and i64 %i.gpw, %i.gpx
  %.not12840 = icmp eq i64 %i.gpy, 0
  %i.gpz = lshr i64 %i.gpv, 56                    ; 2 uses
  %i.gqa = trunc nuw i64 %i.gpz to i8
  store i8 %i.gqa, ptr %.213.lcssa, align 1, !tbaa !31
  br i1 %.not12840, label %bb.rv, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.gqb = getelementptr inbounds nuw i8, ptr %.213.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.gqb, align 1, !tbaa !31
  %.not12841 = icmp eq i64 %i.gpz, 255            ; 2 uses
  %.sroa.gep14287 = getelementptr inbounds nuw i8, ptr %.213.lcssa, i64 2 ; 2 uses
  %.neg12842.sroa.sel = select i1 %.not12841, ptr %.sroa.gep14287, ptr %i.gqb ; 2 uses
  %i.gqc = lshr i64 %i.gpv, 48
  %i.gqd = trunc i64 %i.gqc to i8
  store i8 %i.gqd, ptr %.neg12842.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15856 = getelementptr inbounds nuw i8, ptr %.213.lcssa, i64 3
  %.neg12842.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12841, ptr %.sroa.gep15856, ptr %.sroa.gep14287
  store i8 0, ptr %.neg12842.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gqe = and i64 %i.gpv, 71776119061217280
  %.not12843 = icmp eq i64 %i.gqe, 71776119061217280
  %.neg12844 = select i1 %.not12843, i64 2, i64 1
  %i.gqf = getelementptr inbounds nuw i8, ptr %.neg12842.sroa.sel, i64 %.neg12844 ; 4 uses
  %i.gqg = lshr i64 %i.gpv, 40
  %i.gqh = trunc i64 %i.gqg to i8
  store i8 %i.gqh, ptr %i.gqf, align 1, !tbaa !31
  %i.gqi = getelementptr inbounds nuw i8, ptr %i.gqf, i64 1 ; 2 uses
  store i8 0, ptr %i.gqi, align 1, !tbaa !31
  %i.gqj = and i64 %i.gpv, 280375465082880
  %.not12845 = icmp eq i64 %i.gqj, 280375465082880 ; 2 uses
  %.sroa.gep14289 = getelementptr inbounds nuw i8, ptr %i.gqf, i64 2 ; 2 uses
  %.neg12846.sroa.sel = select i1 %.not12845, ptr %.sroa.gep14289, ptr %i.gqi ; 2 uses
  %i.gqk = lshr i64 %i.gpv, 32
  %i.gql = trunc i64 %i.gqk to i8
  store i8 %i.gql, ptr %.neg12846.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15862 = getelementptr inbounds nuw i8, ptr %i.gqf, i64 3
  %.neg12846.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12845, ptr %.sroa.gep15862, ptr %.sroa.gep14289
  store i8 0, ptr %.neg12846.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gqm = and i64 %i.gpv, 1095216660480
  %.not12847 = icmp eq i64 %i.gqm, 1095216660480
  %.neg12848 = select i1 %.not12847, i64 2, i64 1
  %i.gqn = getelementptr inbounds nuw i8, ptr %.neg12846.sroa.sel, i64 %.neg12848 ; 4 uses
  %i.gqo = lshr i64 %i.gpv, 24
  %i.gqp = trunc i64 %i.gqo to i8
  store i8 %i.gqp, ptr %i.gqn, align 1, !tbaa !31
  %i.gqq = getelementptr inbounds nuw i8, ptr %i.gqn, i64 1 ; 2 uses
  store i8 0, ptr %i.gqq, align 1, !tbaa !31
  %i.gqr = and i64 %i.gpv, 4278190080
  %.not12849 = icmp eq i64 %i.gqr, 4278190080     ; 2 uses
  %.sroa.gep14291 = getelementptr inbounds nuw i8, ptr %i.gqn, i64 2 ; 2 uses
  %.neg12850.sroa.sel = select i1 %.not12849, ptr %.sroa.gep14291, ptr %i.gqq ; 2 uses
  %i.gqs = lshr i64 %i.gpv, 16
  %i.gqt = trunc i64 %i.gqs to i8
  store i8 %i.gqt, ptr %.neg12850.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15860 = getelementptr inbounds nuw i8, ptr %i.gqn, i64 3
  %.neg12850.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12849, ptr %.sroa.gep15860, ptr %.sroa.gep14291
  store i8 0, ptr %.neg12850.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gqu = and i64 %i.gpv, 16711680
  %.not12851 = icmp eq i64 %i.gqu, 16711680
  %.neg12852 = select i1 %.not12851, i64 2, i64 1
  %i.gqv = getelementptr inbounds nuw i8, ptr %.neg12850.sroa.sel, i64 %.neg12852 ; 4 uses
  %i.gqw = lshr i64 %i.gpv, 8
  %i.gqx = trunc i64 %i.gqw to i8
  store i8 %i.gqx, ptr %i.gqv, align 1, !tbaa !31
  %i.gqy = getelementptr inbounds nuw i8, ptr %i.gqv, i64 1 ; 2 uses
  store i8 0, ptr %i.gqy, align 1, !tbaa !31
  %i.gqz = and i64 %i.gpv, 65280
  %.not12853 = icmp eq i64 %i.gqz, 65280          ; 2 uses
  %.sroa.gep14293 = getelementptr inbounds nuw i8, ptr %i.gqv, i64 2 ; 2 uses
  %.neg12854.sroa.sel = select i1 %.not12853, ptr %.sroa.gep14293, ptr %i.gqy ; 2 uses
  %i.gra = trunc i64 %i.gpv to i8
  store i8 %i.gra, ptr %.neg12854.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15858 = getelementptr inbounds nuw i8, ptr %i.gqv, i64 3
  %.neg12854.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12853, ptr %.sroa.gep15858, ptr %.sroa.gep14293
  store i8 0, ptr %.neg12854.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.grb = and i64 %i.gpv, 255
  %.not12855 = icmp eq i64 %i.grb, 255
  %.neg12856 = select i1 %.not12855, i64 2, i64 1
  %i.grc = getelementptr inbounds nuw i8, ptr %.neg12854.sroa.sel, i64 %.neg12856
  br label %bb.rw

bb.rv:                                            ; preds = %bb.rt
  %i.grd = lshr i64 %i.gpv, 48
  %i.gre = trunc i64 %i.grd to i8
  %i.grf = getelementptr inbounds nuw i8, ptr %.213.lcssa, i64 1
  store i8 %i.gre, ptr %i.grf, align 1, !tbaa !31
  %i.grg = lshr i64 %i.gpv, 40
  %i.grh = trunc i64 %i.grg to i8
  %i.gri = getelementptr inbounds nuw i8, ptr %.213.lcssa, i64 2
  store i8 %i.grh, ptr %i.gri, align 1, !tbaa !31
  %i.grj = lshr i64 %i.gpv, 32
  %i.grk = trunc i64 %i.grj to i8
  %i.grl = getelementptr inbounds nuw i8, ptr %.213.lcssa, i64 3
  store i8 %i.grk, ptr %i.grl, align 1, !tbaa !31
  %i.grm = lshr i64 %i.gpv, 24
  %i.grn = trunc i64 %i.grm to i8
  %i.gro = getelementptr inbounds nuw i8, ptr %.213.lcssa, i64 4
  store i8 %i.grn, ptr %i.gro, align 1, !tbaa !31
  %i.grp = lshr i64 %i.gpv, 16
  %i.grq = trunc i64 %i.grp to i8
  %i.grr = getelementptr inbounds nuw i8, ptr %.213.lcssa, i64 5
  store i8 %i.grq, ptr %i.grr, align 1, !tbaa !31
  %i.grs = lshr i64 %i.gpv, 8
  %i.grt = trunc i64 %i.grs to i8
  %i.gru = getelementptr inbounds nuw i8, ptr %.213.lcssa, i64 6
  store i8 %i.grt, ptr %i.gru, align 1, !tbaa !31
  %i.grv = trunc i64 %i.gpv to i8
  %i.grw = getelementptr inbounds nuw i8, ptr %.213.lcssa, i64 7
  store i8 %i.grv, ptr %i.grw, align 1, !tbaa !31
  %i.grx = getelementptr inbounds nuw i8, ptr %.213.lcssa, i64 8
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %bb.ru
  %.216 = phi ptr [ %i.grc, %bb.ru ], [ %i.grx, %bb.rv ]
  %i.gry = add nsw i32 %i.gpo, 64
  %i.grz = sext i32 %i.gpi to i64
  br label %bb.ry

bb.rx:                                            ; preds = %._crit_edge14951
  %i.gsa = zext nneg i32 %i.gpn to i64
  %i.gsb = shl i64 %.14111184.lcssa, %i.gsa
  %i.gsc = sext i32 %i.gpi to i64
  %i.gsd = or i64 %i.gsb, %i.gsc
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rw, %bb.rx, %bb.ri
  %.14411441 = phi i32 [ %.14011437, %bb.ri ], [ %i.gry, %bb.rw ], [ %i.gpo, %bb.rx ] ; 3 uses
  %.14411187 = phi i64 [ %.14011183, %bb.ri ], [ %i.grz, %bb.rw ], [ %i.gsd, %bb.rx ] ; 3 uses
  %.218 = phi ptr [ %.212, %bb.ri ], [ %.216, %bb.rw ], [ %.213.lcssa, %bb.rx ] ; 3 uses
  %.71 = phi i32 [ %i.glm, %bb.ri ], [ 0, %bb.rw ], [ 0, %bb.rx ] ; 4 uses
  %i.gse = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.gsf = load i16, ptr %i.gse, align 2, !tbaa !79 ; 2 uses
  %i.gsg = icmp eq i16 %i.gsf, 0
  br i1 %i.gsg, label %bb.rz, label %bb.sa

bb.rz:                                            ; preds = %bb.ry
  %i.gsh = add nuw nsw i32 %.71, 16
  br label %bb.sp

bb.sa:                                            ; preds = %bb.ry
  %i.gsi = sext i16 %i.gsf to i32                 ; 2 uses
  %i.gsj = ashr i32 %i.gsi, 31                    ; 2 uses
  %i.gsk = add nsw i32 %i.gsj, %i.gsi             ; 2 uses
  %i.gsl = xor i32 %i.gsk, %i.gsj
  %i.gsm = sext i32 %i.gsl to i64
  %i.gsn = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.gsm
  %i.gso = load i8, ptr %i.gsn, align 1, !tbaa !31 ; 2 uses
  %i.gsp = zext i8 %i.gso to i32                  ; 4 uses
  %i.gsq = icmp slt i32 %i.f, %i.gsp
  br i1 %i.gsq, label %bb.sb, label %bb.sc

bb.sb:                                            ; preds = %bb.sa
  %i.gsr = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.gss = load ptr, ptr %i.gsr, align 8, !tbaa !7 ; 2 uses
  %i.gst = getelementptr inbounds nuw i8, ptr %i.gss, i64 40
  store i32 6, ptr %i.gst, align 8, !tbaa !26
  %i.gsu = load ptr, ptr %i.gss, align 8, !tbaa !32
  tail call void %i.gsu(ptr noundef nonnull %i.gsr) #7
  br label %bb.sc

bb.sc:                                            ; preds = %bb.sb, %bb.sa
  %i.gsv = icmp samesign ugt i32 %.71, 255
  br i1 %i.gsv, label %.lr.ph14961, label %._crit_edge14962

.lr.ph14961:                                      ; preds = %bb.sc
  %i.gsw = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.gsx = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.sd

bb.sd:                                            ; preds = %.lr.ph14961, %bb.sj
  %.7214959 = phi i32 [ %.71, %.lr.ph14961 ], [ %i.gsy, %bb.sj ] ; 2 uses
  %.21914958 = phi ptr [ %.218, %.lr.ph14961 ], [ %.221, %bb.sj ] ; 13 uses
  %.1451118814957 = phi i64 [ %.14411187, %.lr.ph14961 ], [ %.14611189, %bb.sj ] ; 2 uses
  %.1451144214956 = phi i32 [ %.14411441, %.lr.ph14961 ], [ %.14611443, %bb.sj ] ; 2 uses
  %i.gsy = add nsw i32 %.7214959, -256            ; 2 uses
  %i.gsz = load i8, ptr %i.gsw, align 4, !tbaa !31
  %i.gta = sext i8 %i.gsz to i32                  ; 2 uses
  %i.gtb = sub nsw i32 %.1451144214956, %i.gta    ; 4 uses
  %i.gtc = icmp slt i32 %i.gtb, 0
  %i.gtd = load i32, ptr %i.gsx, align 4, !tbaa !3 ; 2 uses
  br i1 %i.gtc, label %bb.se, label %bb.si

bb.se:                                            ; preds = %bb.sd
  %i.gte = zext nneg i32 %.1451144214956 to i64
  %i.gtf = shl i64 %.1451118814957, %i.gte        ; 11 uses
  %i.gtg = sub nsw i32 0, %i.gtb
  %i.gth = lshr i32 %i.gtd, %i.gtg
  %i.gti = zext nneg i32 %i.gth to i64
  %i.gtj = or i64 %i.gtf, %i.gti                  ; 14 uses
  %i.gtk = and i64 %i.gtj, -9187201950435737472
  %i.gtl = sub i64 -72340172838076674, %i.gtj
  %i.gtm = and i64 %i.gtk, %i.gtl
  %.not12892 = icmp eq i64 %i.gtm, 0
  %i.gtn = lshr i64 %i.gtf, 56                    ; 2 uses
  %i.gto = trunc nuw i64 %i.gtn to i8
  store i8 %i.gto, ptr %.21914958, align 1, !tbaa !31
  br i1 %.not12892, label %bb.sg, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.gtp = getelementptr inbounds nuw i8, ptr %.21914958, i64 1 ; 2 uses
  store i8 0, ptr %i.gtp, align 1, !tbaa !31
  %.not12893 = icmp eq i64 %i.gtn, 255            ; 2 uses
  %.sroa.gep14295 = getelementptr inbounds nuw i8, ptr %.21914958, i64 2 ; 2 uses
  %.neg12894.sroa.sel = select i1 %.not12893, ptr %.sroa.gep14295, ptr %i.gtp ; 2 uses
  %i.gtq = lshr i64 %i.gtf, 48
  %i.gtr = trunc i64 %i.gtq to i8
  store i8 %i.gtr, ptr %.neg12894.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15832 = getelementptr inbounds nuw i8, ptr %.21914958, i64 3
  %.neg12894.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12893, ptr %.sroa.gep15832, ptr %.sroa.gep14295
  store i8 0, ptr %.neg12894.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gts = and i64 %i.gtf, 71776119061217280
  %.not12895 = icmp eq i64 %i.gts, 71776119061217280
  %.neg12896 = select i1 %.not12895, i64 2, i64 1
  %i.gtt = getelementptr inbounds nuw i8, ptr %.neg12894.sroa.sel, i64 %.neg12896 ; 4 uses
  %i.gtu = lshr i64 %i.gtf, 40
  %i.gtv = trunc i64 %i.gtu to i8
  store i8 %i.gtv, ptr %i.gtt, align 1, !tbaa !31
  %i.gtw = getelementptr inbounds nuw i8, ptr %i.gtt, i64 1 ; 2 uses
  store i8 0, ptr %i.gtw, align 1, !tbaa !31
  %i.gtx = and i64 %i.gtf, 280375465082880
  %.not12897 = icmp eq i64 %i.gtx, 280375465082880 ; 2 uses
  %.sroa.gep14297 = getelementptr inbounds nuw i8, ptr %i.gtt, i64 2 ; 2 uses
  %.neg12898.sroa.sel = select i1 %.not12897, ptr %.sroa.gep14297, ptr %i.gtw ; 2 uses
  %i.gty = lshr i64 %i.gtf, 32
  %i.gtz = trunc i64 %i.gty to i8
  store i8 %i.gtz, ptr %.neg12898.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15838 = getelementptr inbounds nuw i8, ptr %i.gtt, i64 3
  %.neg12898.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12897, ptr %.sroa.gep15838, ptr %.sroa.gep14297
  store i8 0, ptr %.neg12898.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gua = and i64 %i.gtf, 1095216660480
  %.not12899 = icmp eq i64 %i.gua, 1095216660480
  %.neg12900 = select i1 %.not12899, i64 2, i64 1
  %i.gub = getelementptr inbounds nuw i8, ptr %.neg12898.sroa.sel, i64 %.neg12900 ; 4 uses
  %i.guc = lshr i64 %i.gtj, 24
  %i.gud = trunc i64 %i.guc to i8
  store i8 %i.gud, ptr %i.gub, align 1, !tbaa !31
  %i.gue = getelementptr inbounds nuw i8, ptr %i.gub, i64 1 ; 2 uses
  store i8 0, ptr %i.gue, align 1, !tbaa !31
  %i.guf = and i64 %i.gtj, 4278190080
  %.not12901 = icmp eq i64 %i.guf, 4278190080     ; 2 uses
  %.sroa.gep14299 = getelementptr inbounds nuw i8, ptr %i.gub, i64 2 ; 2 uses
  %.neg12902.sroa.sel = select i1 %.not12901, ptr %.sroa.gep14299, ptr %i.gue ; 2 uses
  %i.gug = lshr i64 %i.gtj, 16
  %i.guh = trunc i64 %i.gug to i8
  store i8 %i.guh, ptr %.neg12902.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15836 = getelementptr inbounds nuw i8, ptr %i.gub, i64 3
  %.neg12902.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12901, ptr %.sroa.gep15836, ptr %.sroa.gep14299
  store i8 0, ptr %.neg12902.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gui = and i64 %i.gtj, 16711680
  %.not12903 = icmp eq i64 %i.gui, 16711680
  %.neg12904 = select i1 %.not12903, i64 2, i64 1
  %i.guj = getelementptr inbounds nuw i8, ptr %.neg12902.sroa.sel, i64 %.neg12904 ; 4 uses
  %i.guk = lshr i64 %i.gtj, 8
  %i.gul = trunc i64 %i.guk to i8
  store i8 %i.gul, ptr %i.guj, align 1, !tbaa !31
  %i.gum = getelementptr inbounds nuw i8, ptr %i.guj, i64 1 ; 2 uses
  store i8 0, ptr %i.gum, align 1, !tbaa !31
  %i.gun = and i64 %i.gtj, 65280
  %.not12905 = icmp eq i64 %i.gun, 65280          ; 2 uses
  %.sroa.gep14301 = getelementptr inbounds nuw i8, ptr %i.guj, i64 2 ; 2 uses
  %.neg12906.sroa.sel = select i1 %.not12905, ptr %.sroa.gep14301, ptr %i.gum ; 2 uses
  %i.guo = trunc i64 %i.gtj to i8
  store i8 %i.guo, ptr %.neg12906.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15834 = getelementptr inbounds nuw i8, ptr %i.guj, i64 3
  %.neg12906.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12905, ptr %.sroa.gep15834, ptr %.sroa.gep14301
  store i8 0, ptr %.neg12906.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gup = and i64 %i.gtj, 255
  %.not12907 = icmp eq i64 %i.gup, 255
  %.neg12908 = select i1 %.not12907, i64 2, i64 1
  %i.guq = getelementptr inbounds nuw i8, ptr %.neg12906.sroa.sel, i64 %.neg12908
  br label %bb.sh

bb.sg:                                            ; preds = %bb.se
  %i.gur = lshr i64 %i.gtf, 48
  %i.gus = trunc i64 %i.gur to i8
  %i.gut = getelementptr inbounds nuw i8, ptr %.21914958, i64 1
  store i8 %i.gus, ptr %i.gut, align 1, !tbaa !31
  %i.guu = lshr i64 %i.gtf, 40
  %i.guv = trunc i64 %i.guu to i8
  %i.guw = getelementptr inbounds nuw i8, ptr %.21914958, i64 2
  store i8 %i.guv, ptr %i.guw, align 1, !tbaa !31
  %i.gux = lshr i64 %i.gtf, 32
  %i.guy = trunc i64 %i.gux to i8
  %i.guz = getelementptr inbounds nuw i8, ptr %.21914958, i64 3
  store i8 %i.guy, ptr %i.guz, align 1, !tbaa !31
  %i.gva = lshr i64 %i.gtj, 24
  %i.gvb = trunc i64 %i.gva to i8
  %i.gvc = getelementptr inbounds nuw i8, ptr %.21914958, i64 4
  store i8 %i.gvb, ptr %i.gvc, align 1, !tbaa !31
  %i.gvd = lshr i64 %i.gtj, 16
  %i.gve = trunc i64 %i.gvd to i8
  %i.gvf = getelementptr inbounds nuw i8, ptr %.21914958, i64 5
  store i8 %i.gve, ptr %i.gvf, align 1, !tbaa !31
  %i.gvg = lshr i64 %i.gtj, 8
  %i.gvh = trunc i64 %i.gvg to i8
  %i.gvi = getelementptr inbounds nuw i8, ptr %.21914958, i64 6
  store i8 %i.gvh, ptr %i.gvi, align 1, !tbaa !31
  %i.gvj = trunc i64 %i.gtj to i8
  %i.gvk = getelementptr inbounds nuw i8, ptr %.21914958, i64 7
  store i8 %i.gvj, ptr %i.gvk, align 1, !tbaa !31
  %i.gvl = getelementptr inbounds nuw i8, ptr %.21914958, i64 8
  br label %bb.sh

bb.sh:                                            ; preds = %bb.sg, %bb.sf
  %.220 = phi ptr [ %i.guq, %bb.sf ], [ %i.gvl, %bb.sg ]
  %i.gvm = add nsw i32 %i.gtb, 64
  %i.gvn = load i32, ptr %i.gsx, align 4, !tbaa !3
  %i.gvo = zext i32 %i.gvn to i64
  br label %bb.sj

bb.si:                                            ; preds = %bb.sd
  %i.gvp = zext nneg i32 %i.gta to i64
  %i.gvq = shl i64 %.1451118814957, %i.gvp
  %i.gvr = zext i32 %i.gtd to i64
  %i.gvs = or i64 %i.gvq, %i.gvr
  br label %bb.sj

bb.sj:                                            ; preds = %bb.si, %bb.sh
  %.14611443 = phi i32 [ %i.gvm, %bb.sh ], [ %i.gtb, %bb.si ] ; 2 uses
  %.14611189 = phi i64 [ %i.gvo, %bb.sh ], [ %i.gvs, %bb.si ] ; 2 uses
  %.221 = phi ptr [ %.220, %bb.sh ], [ %.21914958, %bb.si ] ; 2 uses
  %i.gvt = icmp samesign ugt i32 %.7214959, 511
  br i1 %i.gvt, label %bb.sd, label %._crit_edge14962, !llvm.loop !109

._crit_edge14962:                                 ; preds = %bb.sj, %bb.sc
  %.14511442.lcssa = phi i32 [ %.14411441, %bb.sc ], [ %.14611443, %bb.sj ] ; 2 uses
  %.14511188.lcssa = phi i64 [ %.14411187, %bb.sc ], [ %.14611189, %bb.sj ] ; 2 uses
  %.219.lcssa = phi ptr [ %.218, %bb.sc ], [ %.221, %bb.sj ] ; 13 uses
  %.72.lcssa = phi i32 [ %.71, %bb.sc ], [ %i.gsy, %bb.sj ]
  %i.gvu = add nuw nsw i32 %.72.lcssa, %i.gsp
  %i.gvv = zext nneg i8 %i.gso to i64
  %notmask12874 = shl nsw i64 -1, %i.gvv
  %i.gvw = trunc i64 %notmask12874 to i32
  %i.gvx = xor i32 %i.gvw, -1
  %i.gvy = and i32 %i.gsk, %i.gvx
  %i.gvz = zext nneg i32 %i.gvu to i64            ; 2 uses
  %i.gwa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.gvz
  %i.gwb = load i32, ptr %i.gwa, align 4, !tbaa !3
  %i.gwc = shl i32 %i.gwb, %i.gsp
  %i.gwd = or i32 %i.gwc, %i.gvy                  ; 3 uses
  %i.gwe = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.gwf = getelementptr inbounds nuw i8, ptr %i.gwe, i64 %i.gvz
  %i.gwg = load i8, ptr %i.gwf, align 1, !tbaa !31
  %i.gwh = sext i8 %i.gwg to i32
  %i.gwi = add nsw i32 %i.gwh, %i.gsp             ; 2 uses
  %i.gwj = sub nsw i32 %.14511442.lcssa, %i.gwi   ; 4 uses
  %i.gwk = icmp slt i32 %i.gwj, 0
  br i1 %i.gwk, label %bb.sk, label %bb.so

bb.sk:                                            ; preds = %._crit_edge14962
  %i.gwl = zext nneg i32 %.14511442.lcssa to i64
  %i.gwm = shl i64 %.14511188.lcssa, %i.gwl
  %i.gwn = sub nsw i32 0, %i.gwj
  %i.gwo = ashr i32 %i.gwd, %i.gwn
  %i.gwp = sext i32 %i.gwo to i64
  %i.gwq = or i64 %i.gwm, %i.gwp                  ; 24 uses
  %i.gwr = and i64 %i.gwq, -9187201950435737472
  %i.gws = sub i64 -72340172838076674, %i.gwq
  %i.gwt = and i64 %i.gwr, %i.gws
  %.not12875 = icmp eq i64 %i.gwt, 0
  %i.gwu = lshr i64 %i.gwq, 56                    ; 2 uses
  %i.gwv = trunc nuw i64 %i.gwu to i8
  store i8 %i.gwv, ptr %.219.lcssa, align 1, !tbaa !31
  br i1 %.not12875, label %bb.sm, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.gww = getelementptr inbounds nuw i8, ptr %.219.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.gww, align 1, !tbaa !31
  %.not12876 = icmp eq i64 %i.gwu, 255            ; 2 uses
  %.sroa.gep14303 = getelementptr inbounds nuw i8, ptr %.219.lcssa, i64 2 ; 2 uses
  %.neg12877.sroa.sel = select i1 %.not12876, ptr %.sroa.gep14303, ptr %i.gww ; 2 uses
  %i.gwx = lshr i64 %i.gwq, 48
  %i.gwy = trunc i64 %i.gwx to i8
  store i8 %i.gwy, ptr %.neg12877.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15840 = getelementptr inbounds nuw i8, ptr %.219.lcssa, i64 3
  %.neg12877.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12876, ptr %.sroa.gep15840, ptr %.sroa.gep14303
  store i8 0, ptr %.neg12877.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gwz = and i64 %i.gwq, 71776119061217280
  %.not12878 = icmp eq i64 %i.gwz, 71776119061217280
  %.neg12879 = select i1 %.not12878, i64 2, i64 1
  %i.gxa = getelementptr inbounds nuw i8, ptr %.neg12877.sroa.sel, i64 %.neg12879 ; 4 uses
  %i.gxb = lshr i64 %i.gwq, 40
  %i.gxc = trunc i64 %i.gxb to i8
  store i8 %i.gxc, ptr %i.gxa, align 1, !tbaa !31
  %i.gxd = getelementptr inbounds nuw i8, ptr %i.gxa, i64 1 ; 2 uses
  store i8 0, ptr %i.gxd, align 1, !tbaa !31
  %i.gxe = and i64 %i.gwq, 280375465082880
  %.not12880 = icmp eq i64 %i.gxe, 280375465082880 ; 2 uses
  %.sroa.gep14305 = getelementptr inbounds nuw i8, ptr %i.gxa, i64 2 ; 2 uses
  %.neg12881.sroa.sel = select i1 %.not12880, ptr %.sroa.gep14305, ptr %i.gxd ; 2 uses
  %i.gxf = lshr i64 %i.gwq, 32
  %i.gxg = trunc i64 %i.gxf to i8
  store i8 %i.gxg, ptr %.neg12881.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15846 = getelementptr inbounds nuw i8, ptr %i.gxa, i64 3
  %.neg12881.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12880, ptr %.sroa.gep15846, ptr %.sroa.gep14305
  store i8 0, ptr %.neg12881.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gxh = and i64 %i.gwq, 1095216660480
  %.not12882 = icmp eq i64 %i.gxh, 1095216660480
  %.neg12883 = select i1 %.not12882, i64 2, i64 1
  %i.gxi = getelementptr inbounds nuw i8, ptr %.neg12881.sroa.sel, i64 %.neg12883 ; 4 uses
  %i.gxj = lshr i64 %i.gwq, 24
  %i.gxk = trunc i64 %i.gxj to i8
  store i8 %i.gxk, ptr %i.gxi, align 1, !tbaa !31
  %i.gxl = getelementptr inbounds nuw i8, ptr %i.gxi, i64 1 ; 2 uses
  store i8 0, ptr %i.gxl, align 1, !tbaa !31
  %i.gxm = and i64 %i.gwq, 4278190080
  %.not12884 = icmp eq i64 %i.gxm, 4278190080     ; 2 uses
  %.sroa.gep14307 = getelementptr inbounds nuw i8, ptr %i.gxi, i64 2 ; 2 uses
  %.neg12885.sroa.sel = select i1 %.not12884, ptr %.sroa.gep14307, ptr %i.gxl ; 2 uses
  %i.gxn = lshr i64 %i.gwq, 16
  %i.gxo = trunc i64 %i.gxn to i8
  store i8 %i.gxo, ptr %.neg12885.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15844 = getelementptr inbounds nuw i8, ptr %i.gxi, i64 3
  %.neg12885.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12884, ptr %.sroa.gep15844, ptr %.sroa.gep14307
  store i8 0, ptr %.neg12885.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gxp = and i64 %i.gwq, 16711680
  %.not12886 = icmp eq i64 %i.gxp, 16711680
  %.neg12887 = select i1 %.not12886, i64 2, i64 1
  %i.gxq = getelementptr inbounds nuw i8, ptr %.neg12885.sroa.sel, i64 %.neg12887 ; 4 uses
  %i.gxr = lshr i64 %i.gwq, 8
  %i.gxs = trunc i64 %i.gxr to i8
  store i8 %i.gxs, ptr %i.gxq, align 1, !tbaa !31
  %i.gxt = getelementptr inbounds nuw i8, ptr %i.gxq, i64 1 ; 2 uses
  store i8 0, ptr %i.gxt, align 1, !tbaa !31
  %i.gxu = and i64 %i.gwq, 65280
  %.not12888 = icmp eq i64 %i.gxu, 65280          ; 2 uses
  %.sroa.gep14309 = getelementptr inbounds nuw i8, ptr %i.gxq, i64 2 ; 2 uses
  %.neg12889.sroa.sel = select i1 %.not12888, ptr %.sroa.gep14309, ptr %i.gxt ; 2 uses
  %i.gxv = trunc i64 %i.gwq to i8
  store i8 %i.gxv, ptr %.neg12889.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15842 = getelementptr inbounds nuw i8, ptr %i.gxq, i64 3
  %.neg12889.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12888, ptr %.sroa.gep15842, ptr %.sroa.gep14309
  store i8 0, ptr %.neg12889.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.gxw = and i64 %i.gwq, 255
  %.not12890 = icmp eq i64 %i.gxw, 255
  %.neg12891 = select i1 %.not12890, i64 2, i64 1
  %i.gxx = getelementptr inbounds nuw i8, ptr %.neg12889.sroa.sel, i64 %.neg12891
  br label %bb.sn

bb.sm:                                            ; preds = %bb.sk
  %i.gxy = lshr i64 %i.gwq, 48
  %i.gxz = trunc i64 %i.gxy to i8
  %i.gya = getelementptr inbounds nuw i8, ptr %.219.lcssa, i64 1
  store i8 %i.gxz, ptr %i.gya, align 1, !tbaa !31
  %i.gyb = lshr i64 %i.gwq, 40
  %i.gyc = trunc i64 %i.gyb to i8
  %i.gyd = getelementptr inbounds nuw i8, ptr %.219.lcssa, i64 2
  store i8 %i.gyc, ptr %i.gyd, align 1, !tbaa !31
  %i.gye = lshr i64 %i.gwq, 32
  %i.gyf = trunc i64 %i.gye to i8
  %i.gyg = getelementptr inbounds nuw i8, ptr %.219.lcssa, i64 3
  store i8 %i.gyf, ptr %i.gyg, align 1, !tbaa !31
  %i.gyh = lshr i64 %i.gwq, 24
  %i.gyi = trunc i64 %i.gyh to i8
  %i.gyj = getelementptr inbounds nuw i8, ptr %.219.lcssa, i64 4
  store i8 %i.gyi, ptr %i.gyj, align 1, !tbaa !31
  %i.gyk = lshr i64 %i.gwq, 16
  %i.gyl = trunc i64 %i.gyk to i8
  %i.gym = getelementptr inbounds nuw i8, ptr %.219.lcssa, i64 5
  store i8 %i.gyl, ptr %i.gym, align 1, !tbaa !31
  %i.gyn = lshr i64 %i.gwq, 8
  %i.gyo = trunc i64 %i.gyn to i8
  %i.gyp = getelementptr inbounds nuw i8, ptr %.219.lcssa, i64 6
  store i8 %i.gyo, ptr %i.gyp, align 1, !tbaa !31
  %i.gyq = trunc i64 %i.gwq to i8
  %i.gyr = getelementptr inbounds nuw i8, ptr %.219.lcssa, i64 7
  store i8 %i.gyq, ptr %i.gyr, align 1, !tbaa !31
  %i.gys = getelementptr inbounds nuw i8, ptr %.219.lcssa, i64 8
  br label %bb.sn

bb.sn:                                            ; preds = %bb.sm, %bb.sl
  %.222 = phi ptr [ %i.gxx, %bb.sl ], [ %i.gys, %bb.sm ]
  %i.gyt = add nsw i32 %i.gwj, 64
  %i.gyu = sext i32 %i.gwd to i64
  br label %bb.sp

bb.so:                                            ; preds = %._crit_edge14962
  %i.gyv = zext nneg i32 %i.gwi to i64
  %i.gyw = shl i64 %.14511188.lcssa, %i.gyv
  %i.gyx = sext i32 %i.gwd to i64
  %i.gyy = or i64 %i.gyw, %i.gyx
  br label %bb.sp

bb.sp:                                            ; preds = %bb.sn, %bb.so, %bb.rz
  %.14811445 = phi i32 [ %.14411441, %bb.rz ], [ %i.gyt, %bb.sn ], [ %i.gwj, %bb.so ] ; 3 uses
  %.14811191 = phi i64 [ %.14411187, %bb.rz ], [ %i.gyu, %bb.sn ], [ %i.gyy, %bb.so ] ; 3 uses
  %.224 = phi ptr [ %.218, %bb.rz ], [ %.222, %bb.sn ], [ %.219.lcssa, %bb.so ] ; 3 uses
  %.73 = phi i32 [ %i.gsh, %bb.rz ], [ 0, %bb.sn ], [ 0, %bb.so ] ; 4 uses
  %i.gyz = getelementptr inbounds nuw i8, ptr %1, i64 86
  %i.gza = load i16, ptr %i.gyz, align 2, !tbaa !79 ; 2 uses
  %i.gzb = icmp eq i16 %i.gza, 0
  br i1 %i.gzb, label %bb.sq, label %bb.sr

bb.sq:                                            ; preds = %bb.sp
  %i.gzc = add nuw nsw i32 %.73, 16
  br label %bb.tg

bb.sr:                                            ; preds = %bb.sp
  %i.gzd = sext i16 %i.gza to i32                 ; 2 uses
  %i.gze = ashr i32 %i.gzd, 31                    ; 2 uses
  %i.gzf = add nsw i32 %i.gze, %i.gzd             ; 2 uses
  %i.gzg = xor i32 %i.gzf, %i.gze
  %i.gzh = sext i32 %i.gzg to i64
  %i.gzi = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.gzh
  %i.gzj = load i8, ptr %i.gzi, align 1, !tbaa !31 ; 2 uses
  %i.gzk = zext i8 %i.gzj to i32                  ; 4 uses
  %i.gzl = icmp slt i32 %i.f, %i.gzk
  br i1 %i.gzl, label %bb.ss, label %bb.st

bb.ss:                                            ; preds = %bb.sr
  %i.gzm = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.gzn = load ptr, ptr %i.gzm, align 8, !tbaa !7 ; 2 uses
  %i.gzo = getelementptr inbounds nuw i8, ptr %i.gzn, i64 40
  store i32 6, ptr %i.gzo, align 8, !tbaa !26
  %i.gzp = load ptr, ptr %i.gzn, align 8, !tbaa !32
  tail call void %i.gzp(ptr noundef nonnull %i.gzm) #7
  br label %bb.st

bb.st:                                            ; preds = %bb.ss, %bb.sr
  %i.gzq = icmp samesign ugt i32 %.73, 255
  br i1 %i.gzq, label %.lr.ph14972, label %._crit_edge14973

.lr.ph14972:                                      ; preds = %bb.st
  %i.gzr = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.gzs = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.su

bb.su:                                            ; preds = %.lr.ph14972, %bb.ta
  %.7414970 = phi i32 [ %.73, %.lr.ph14972 ], [ %i.gzt, %bb.ta ] ; 2 uses
  %.22514969 = phi ptr [ %.224, %.lr.ph14972 ], [ %.227, %bb.ta ] ; 13 uses
  %.1491119214968 = phi i64 [ %.14811191, %.lr.ph14972 ], [ %.15011193, %bb.ta ] ; 2 uses
  %.1491144614967 = phi i32 [ %.14811445, %.lr.ph14972 ], [ %.15011447, %bb.ta ] ; 2 uses
  %i.gzt = add nsw i32 %.7414970, -256            ; 2 uses
  %i.gzu = load i8, ptr %i.gzr, align 4, !tbaa !31
  %i.gzv = sext i8 %i.gzu to i32                  ; 2 uses
  %i.gzw = sub nsw i32 %.1491144614967, %i.gzv    ; 4 uses
  %i.gzx = icmp slt i32 %i.gzw, 0
  %i.gzy = load i32, ptr %i.gzs, align 4, !tbaa !3 ; 2 uses
  br i1 %i.gzx, label %bb.sv, label %bb.sz

bb.sv:                                            ; preds = %bb.su
  %i.gzz = zext nneg i32 %.1491144614967 to i64
  %i.haa = shl i64 %.1491119214968, %i.gzz        ; 11 uses
  %i.hab = sub nsw i32 0, %i.gzw
  %i.hac = lshr i32 %i.gzy, %i.hab
  %i.had = zext nneg i32 %i.hac to i64
  %i.hae = or i64 %i.haa, %i.had                  ; 14 uses
  %i.haf = and i64 %i.hae, -9187201950435737472
  %i.hag = sub i64 -72340172838076674, %i.hae
  %i.hah = and i64 %i.haf, %i.hag
  %.not12927 = icmp eq i64 %i.hah, 0
  %i.hai = lshr i64 %i.haa, 56                    ; 2 uses
  %i.haj = trunc nuw i64 %i.hai to i8
  store i8 %i.haj, ptr %.22514969, align 1, !tbaa !31
  br i1 %.not12927, label %bb.sx, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  %i.hak = getelementptr inbounds nuw i8, ptr %.22514969, i64 1 ; 2 uses
  store i8 0, ptr %i.hak, align 1, !tbaa !31
  %.not12928 = icmp eq i64 %i.hai, 255            ; 2 uses
  %.sroa.gep14311 = getelementptr inbounds nuw i8, ptr %.22514969, i64 2 ; 2 uses
  %.neg12929.sroa.sel = select i1 %.not12928, ptr %.sroa.gep14311, ptr %i.hak ; 2 uses
  %i.hal = lshr i64 %i.haa, 48
  %i.ham = trunc i64 %i.hal to i8
  store i8 %i.ham, ptr %.neg12929.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15816 = getelementptr inbounds nuw i8, ptr %.22514969, i64 3
  %.neg12929.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12928, ptr %.sroa.gep15816, ptr %.sroa.gep14311
  store i8 0, ptr %.neg12929.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.han = and i64 %i.haa, 71776119061217280
  %.not12930 = icmp eq i64 %i.han, 71776119061217280
  %.neg12931 = select i1 %.not12930, i64 2, i64 1
  %i.hao = getelementptr inbounds nuw i8, ptr %.neg12929.sroa.sel, i64 %.neg12931 ; 4 uses
  %i.hap = lshr i64 %i.haa, 40
  %i.haq = trunc i64 %i.hap to i8
  store i8 %i.haq, ptr %i.hao, align 1, !tbaa !31
  %i.har = getelementptr inbounds nuw i8, ptr %i.hao, i64 1 ; 2 uses
  store i8 0, ptr %i.har, align 1, !tbaa !31
  %i.has = and i64 %i.haa, 280375465082880
  %.not12932 = icmp eq i64 %i.has, 280375465082880 ; 2 uses
  %.sroa.gep14313 = getelementptr inbounds nuw i8, ptr %i.hao, i64 2 ; 2 uses
  %.neg12933.sroa.sel = select i1 %.not12932, ptr %.sroa.gep14313, ptr %i.har ; 2 uses
  %i.hat = lshr i64 %i.haa, 32
  %i.hau = trunc i64 %i.hat to i8
  store i8 %i.hau, ptr %.neg12933.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15822 = getelementptr inbounds nuw i8, ptr %i.hao, i64 3
  %.neg12933.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12932, ptr %.sroa.gep15822, ptr %.sroa.gep14313
  store i8 0, ptr %.neg12933.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hav = and i64 %i.haa, 1095216660480
  %.not12934 = icmp eq i64 %i.hav, 1095216660480
  %.neg12935 = select i1 %.not12934, i64 2, i64 1
  %i.haw = getelementptr inbounds nuw i8, ptr %.neg12933.sroa.sel, i64 %.neg12935 ; 4 uses
  %i.hax = lshr i64 %i.hae, 24
  %i.hay = trunc i64 %i.hax to i8
  store i8 %i.hay, ptr %i.haw, align 1, !tbaa !31
  %i.haz = getelementptr inbounds nuw i8, ptr %i.haw, i64 1 ; 2 uses
  store i8 0, ptr %i.haz, align 1, !tbaa !31
  %i.hba = and i64 %i.hae, 4278190080
  %.not12936 = icmp eq i64 %i.hba, 4278190080     ; 2 uses
  %.sroa.gep14315 = getelementptr inbounds nuw i8, ptr %i.haw, i64 2 ; 2 uses
  %.neg12937.sroa.sel = select i1 %.not12936, ptr %.sroa.gep14315, ptr %i.haz ; 2 uses
  %i.hbb = lshr i64 %i.hae, 16
  %i.hbc = trunc i64 %i.hbb to i8
  store i8 %i.hbc, ptr %.neg12937.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15820 = getelementptr inbounds nuw i8, ptr %i.haw, i64 3
  %.neg12937.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12936, ptr %.sroa.gep15820, ptr %.sroa.gep14315
  store i8 0, ptr %.neg12937.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hbd = and i64 %i.hae, 16711680
  %.not12938 = icmp eq i64 %i.hbd, 16711680
  %.neg12939 = select i1 %.not12938, i64 2, i64 1
  %i.hbe = getelementptr inbounds nuw i8, ptr %.neg12937.sroa.sel, i64 %.neg12939 ; 4 uses
  %i.hbf = lshr i64 %i.hae, 8
  %i.hbg = trunc i64 %i.hbf to i8
  store i8 %i.hbg, ptr %i.hbe, align 1, !tbaa !31
  %i.hbh = getelementptr inbounds nuw i8, ptr %i.hbe, i64 1 ; 2 uses
  store i8 0, ptr %i.hbh, align 1, !tbaa !31
  %i.hbi = and i64 %i.hae, 65280
  %.not12940 = icmp eq i64 %i.hbi, 65280          ; 2 uses
  %.sroa.gep14317 = getelementptr inbounds nuw i8, ptr %i.hbe, i64 2 ; 2 uses
  %.neg12941.sroa.sel = select i1 %.not12940, ptr %.sroa.gep14317, ptr %i.hbh ; 2 uses
  %i.hbj = trunc i64 %i.hae to i8
  store i8 %i.hbj, ptr %.neg12941.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15818 = getelementptr inbounds nuw i8, ptr %i.hbe, i64 3
  %.neg12941.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12940, ptr %.sroa.gep15818, ptr %.sroa.gep14317
  store i8 0, ptr %.neg12941.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hbk = and i64 %i.hae, 255
  %.not12942 = icmp eq i64 %i.hbk, 255
  %.neg12943 = select i1 %.not12942, i64 2, i64 1
  %i.hbl = getelementptr inbounds nuw i8, ptr %.neg12941.sroa.sel, i64 %.neg12943
  br label %bb.sy

bb.sx:                                            ; preds = %bb.sv
  %i.hbm = lshr i64 %i.haa, 48
  %i.hbn = trunc i64 %i.hbm to i8
  %i.hbo = getelementptr inbounds nuw i8, ptr %.22514969, i64 1
  store i8 %i.hbn, ptr %i.hbo, align 1, !tbaa !31
  %i.hbp = lshr i64 %i.haa, 40
  %i.hbq = trunc i64 %i.hbp to i8
  %i.hbr = getelementptr inbounds nuw i8, ptr %.22514969, i64 2
  store i8 %i.hbq, ptr %i.hbr, align 1, !tbaa !31
  %i.hbs = lshr i64 %i.haa, 32
  %i.hbt = trunc i64 %i.hbs to i8
  %i.hbu = getelementptr inbounds nuw i8, ptr %.22514969, i64 3
  store i8 %i.hbt, ptr %i.hbu, align 1, !tbaa !31
  %i.hbv = lshr i64 %i.hae, 24
  %i.hbw = trunc i64 %i.hbv to i8
  %i.hbx = getelementptr inbounds nuw i8, ptr %.22514969, i64 4
  store i8 %i.hbw, ptr %i.hbx, align 1, !tbaa !31
  %i.hby = lshr i64 %i.hae, 16
  %i.hbz = trunc i64 %i.hby to i8
  %i.hca = getelementptr inbounds nuw i8, ptr %.22514969, i64 5
  store i8 %i.hbz, ptr %i.hca, align 1, !tbaa !31
  %i.hcb = lshr i64 %i.hae, 8
  %i.hcc = trunc i64 %i.hcb to i8
  %i.hcd = getelementptr inbounds nuw i8, ptr %.22514969, i64 6
  store i8 %i.hcc, ptr %i.hcd, align 1, !tbaa !31
  %i.hce = trunc i64 %i.hae to i8
  %i.hcf = getelementptr inbounds nuw i8, ptr %.22514969, i64 7
  store i8 %i.hce, ptr %i.hcf, align 1, !tbaa !31
  %i.hcg = getelementptr inbounds nuw i8, ptr %.22514969, i64 8
  br label %bb.sy

bb.sy:                                            ; preds = %bb.sx, %bb.sw
  %.226 = phi ptr [ %i.hbl, %bb.sw ], [ %i.hcg, %bb.sx ]
  %i.hch = add nsw i32 %i.gzw, 64
  %i.hci = load i32, ptr %i.gzs, align 4, !tbaa !3
  %i.hcj = zext i32 %i.hci to i64
  br label %bb.ta

bb.sz:                                            ; preds = %bb.su
  %i.hck = zext nneg i32 %i.gzv to i64
  %i.hcl = shl i64 %.1491119214968, %i.hck
  %i.hcm = zext i32 %i.gzy to i64
  %i.hcn = or i64 %i.hcl, %i.hcm
  br label %bb.ta

bb.ta:                                            ; preds = %bb.sz, %bb.sy
  %.15011447 = phi i32 [ %i.hch, %bb.sy ], [ %i.gzw, %bb.sz ] ; 2 uses
  %.15011193 = phi i64 [ %i.hcj, %bb.sy ], [ %i.hcn, %bb.sz ] ; 2 uses
  %.227 = phi ptr [ %.226, %bb.sy ], [ %.22514969, %bb.sz ] ; 2 uses
  %i.hco = icmp samesign ugt i32 %.7414970, 511
  br i1 %i.hco, label %bb.su, label %._crit_edge14973, !llvm.loop !110

._crit_edge14973:                                 ; preds = %bb.ta, %bb.st
  %.14911446.lcssa = phi i32 [ %.14811445, %bb.st ], [ %.15011447, %bb.ta ] ; 2 uses
  %.14911192.lcssa = phi i64 [ %.14811191, %bb.st ], [ %.15011193, %bb.ta ] ; 2 uses
  %.225.lcssa = phi ptr [ %.224, %bb.st ], [ %.227, %bb.ta ] ; 13 uses
  %.74.lcssa = phi i32 [ %.73, %bb.st ], [ %i.gzt, %bb.ta ]
  %i.hcp = add nuw nsw i32 %.74.lcssa, %i.gzk
  %i.hcq = zext nneg i8 %i.gzj to i64
  %notmask12909 = shl nsw i64 -1, %i.hcq
  %i.hcr = trunc i64 %notmask12909 to i32
  %i.hcs = xor i32 %i.hcr, -1
  %i.hct = and i32 %i.gzf, %i.hcs
  %i.hcu = zext nneg i32 %i.hcp to i64            ; 2 uses
  %i.hcv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hcu
  %i.hcw = load i32, ptr %i.hcv, align 4, !tbaa !3
  %i.hcx = shl i32 %i.hcw, %i.gzk
  %i.hcy = or i32 %i.hcx, %i.hct                  ; 3 uses
  %i.hcz = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.hda = getelementptr inbounds nuw i8, ptr %i.hcz, i64 %i.hcu
  %i.hdb = load i8, ptr %i.hda, align 1, !tbaa !31
  %i.hdc = sext i8 %i.hdb to i32
  %i.hdd = add nsw i32 %i.hdc, %i.gzk             ; 2 uses
  %i.hde = sub nsw i32 %.14911446.lcssa, %i.hdd   ; 4 uses
  %i.hdf = icmp slt i32 %i.hde, 0
  br i1 %i.hdf, label %bb.tb, label %bb.tf

bb.tb:                                            ; preds = %._crit_edge14973
  %i.hdg = zext nneg i32 %.14911446.lcssa to i64
  %i.hdh = shl i64 %.14911192.lcssa, %i.hdg
  %i.hdi = sub nsw i32 0, %i.hde
  %i.hdj = ashr i32 %i.hcy, %i.hdi
  %i.hdk = sext i32 %i.hdj to i64
  %i.hdl = or i64 %i.hdh, %i.hdk                  ; 24 uses
  %i.hdm = and i64 %i.hdl, -9187201950435737472
  %i.hdn = sub i64 -72340172838076674, %i.hdl
  %i.hdo = and i64 %i.hdm, %i.hdn
  %.not12910 = icmp eq i64 %i.hdo, 0
  %i.hdp = lshr i64 %i.hdl, 56                    ; 2 uses
  %i.hdq = trunc nuw i64 %i.hdp to i8
  store i8 %i.hdq, ptr %.225.lcssa, align 1, !tbaa !31
  br i1 %.not12910, label %bb.td, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.hdr = getelementptr inbounds nuw i8, ptr %.225.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.hdr, align 1, !tbaa !31
  %.not12911 = icmp eq i64 %i.hdp, 255            ; 2 uses
  %.sroa.gep14319 = getelementptr inbounds nuw i8, ptr %.225.lcssa, i64 2 ; 2 uses
  %.neg12912.sroa.sel = select i1 %.not12911, ptr %.sroa.gep14319, ptr %i.hdr ; 2 uses
  %i.hds = lshr i64 %i.hdl, 48
  %i.hdt = trunc i64 %i.hds to i8
  store i8 %i.hdt, ptr %.neg12912.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15824 = getelementptr inbounds nuw i8, ptr %.225.lcssa, i64 3
  %.neg12912.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12911, ptr %.sroa.gep15824, ptr %.sroa.gep14319
  store i8 0, ptr %.neg12912.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hdu = and i64 %i.hdl, 71776119061217280
  %.not12913 = icmp eq i64 %i.hdu, 71776119061217280
  %.neg12914 = select i1 %.not12913, i64 2, i64 1
  %i.hdv = getelementptr inbounds nuw i8, ptr %.neg12912.sroa.sel, i64 %.neg12914 ; 4 uses
  %i.hdw = lshr i64 %i.hdl, 40
  %i.hdx = trunc i64 %i.hdw to i8
  store i8 %i.hdx, ptr %i.hdv, align 1, !tbaa !31
  %i.hdy = getelementptr inbounds nuw i8, ptr %i.hdv, i64 1 ; 2 uses
  store i8 0, ptr %i.hdy, align 1, !tbaa !31
  %i.hdz = and i64 %i.hdl, 280375465082880
  %.not12915 = icmp eq i64 %i.hdz, 280375465082880 ; 2 uses
  %.sroa.gep14321 = getelementptr inbounds nuw i8, ptr %i.hdv, i64 2 ; 2 uses
  %.neg12916.sroa.sel = select i1 %.not12915, ptr %.sroa.gep14321, ptr %i.hdy ; 2 uses
  %i.hea = lshr i64 %i.hdl, 32
  %i.heb = trunc i64 %i.hea to i8
  store i8 %i.heb, ptr %.neg12916.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15830 = getelementptr inbounds nuw i8, ptr %i.hdv, i64 3
  %.neg12916.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12915, ptr %.sroa.gep15830, ptr %.sroa.gep14321
  store i8 0, ptr %.neg12916.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hec = and i64 %i.hdl, 1095216660480
  %.not12917 = icmp eq i64 %i.hec, 1095216660480
  %.neg12918 = select i1 %.not12917, i64 2, i64 1
  %i.hed = getelementptr inbounds nuw i8, ptr %.neg12916.sroa.sel, i64 %.neg12918 ; 4 uses
  %i.hee = lshr i64 %i.hdl, 24
  %i.hef = trunc i64 %i.hee to i8
  store i8 %i.hef, ptr %i.hed, align 1, !tbaa !31
  %i.heg = getelementptr inbounds nuw i8, ptr %i.hed, i64 1 ; 2 uses
  store i8 0, ptr %i.heg, align 1, !tbaa !31
  %i.heh = and i64 %i.hdl, 4278190080
  %.not12919 = icmp eq i64 %i.heh, 4278190080     ; 2 uses
  %.sroa.gep14323 = getelementptr inbounds nuw i8, ptr %i.hed, i64 2 ; 2 uses
  %.neg12920.sroa.sel = select i1 %.not12919, ptr %.sroa.gep14323, ptr %i.heg ; 2 uses
  %i.hei = lshr i64 %i.hdl, 16
  %i.hej = trunc i64 %i.hei to i8
  store i8 %i.hej, ptr %.neg12920.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15828 = getelementptr inbounds nuw i8, ptr %i.hed, i64 3
  %.neg12920.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12919, ptr %.sroa.gep15828, ptr %.sroa.gep14323
  store i8 0, ptr %.neg12920.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hek = and i64 %i.hdl, 16711680
  %.not12921 = icmp eq i64 %i.hek, 16711680
  %.neg12922 = select i1 %.not12921, i64 2, i64 1
  %i.hel = getelementptr inbounds nuw i8, ptr %.neg12920.sroa.sel, i64 %.neg12922 ; 4 uses
  %i.hem = lshr i64 %i.hdl, 8
  %i.hen = trunc i64 %i.hem to i8
  store i8 %i.hen, ptr %i.hel, align 1, !tbaa !31
  %i.heo = getelementptr inbounds nuw i8, ptr %i.hel, i64 1 ; 2 uses
  store i8 0, ptr %i.heo, align 1, !tbaa !31
  %i.hep = and i64 %i.hdl, 65280
  %.not12923 = icmp eq i64 %i.hep, 65280          ; 2 uses
  %.sroa.gep14325 = getelementptr inbounds nuw i8, ptr %i.hel, i64 2 ; 2 uses
  %.neg12924.sroa.sel = select i1 %.not12923, ptr %.sroa.gep14325, ptr %i.heo ; 2 uses
  %i.heq = trunc i64 %i.hdl to i8
  store i8 %i.heq, ptr %.neg12924.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15826 = getelementptr inbounds nuw i8, ptr %i.hel, i64 3
  %.neg12924.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12923, ptr %.sroa.gep15826, ptr %.sroa.gep14325
  store i8 0, ptr %.neg12924.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.her = and i64 %i.hdl, 255
  %.not12925 = icmp eq i64 %i.her, 255
  %.neg12926 = select i1 %.not12925, i64 2, i64 1
  %i.hes = getelementptr inbounds nuw i8, ptr %.neg12924.sroa.sel, i64 %.neg12926
  br label %bb.te

bb.td:                                            ; preds = %bb.tb
  %i.het = lshr i64 %i.hdl, 48
  %i.heu = trunc i64 %i.het to i8
  %i.hev = getelementptr inbounds nuw i8, ptr %.225.lcssa, i64 1
  store i8 %i.heu, ptr %i.hev, align 1, !tbaa !31
  %i.hew = lshr i64 %i.hdl, 40
  %i.hex = trunc i64 %i.hew to i8
  %i.hey = getelementptr inbounds nuw i8, ptr %.225.lcssa, i64 2
  store i8 %i.hex, ptr %i.hey, align 1, !tbaa !31
  %i.hez = lshr i64 %i.hdl, 32
  %i.hfa = trunc i64 %i.hez to i8
  %i.hfb = getelementptr inbounds nuw i8, ptr %.225.lcssa, i64 3
  store i8 %i.hfa, ptr %i.hfb, align 1, !tbaa !31
  %i.hfc = lshr i64 %i.hdl, 24
  %i.hfd = trunc i64 %i.hfc to i8
  %i.hfe = getelementptr inbounds nuw i8, ptr %.225.lcssa, i64 4
  store i8 %i.hfd, ptr %i.hfe, align 1, !tbaa !31
  %i.hff = lshr i64 %i.hdl, 16
  %i.hfg = trunc i64 %i.hff to i8
  %i.hfh = getelementptr inbounds nuw i8, ptr %.225.lcssa, i64 5
  store i8 %i.hfg, ptr %i.hfh, align 1, !tbaa !31
  %i.hfi = lshr i64 %i.hdl, 8
  %i.hfj = trunc i64 %i.hfi to i8
  %i.hfk = getelementptr inbounds nuw i8, ptr %.225.lcssa, i64 6
  store i8 %i.hfj, ptr %i.hfk, align 1, !tbaa !31
  %i.hfl = trunc i64 %i.hdl to i8
  %i.hfm = getelementptr inbounds nuw i8, ptr %.225.lcssa, i64 7
  store i8 %i.hfl, ptr %i.hfm, align 1, !tbaa !31
  %i.hfn = getelementptr inbounds nuw i8, ptr %.225.lcssa, i64 8
  br label %bb.te

bb.te:                                            ; preds = %bb.td, %bb.tc
  %.228 = phi ptr [ %i.hes, %bb.tc ], [ %i.hfn, %bb.td ]
  %i.hfo = add nsw i32 %i.hde, 64
  %i.hfp = sext i32 %i.hcy to i64
  br label %bb.tg

bb.tf:                                            ; preds = %._crit_edge14973
  %i.hfq = zext nneg i32 %i.hdd to i64
  %i.hfr = shl i64 %.14911192.lcssa, %i.hfq
  %i.hfs = sext i32 %i.hcy to i64
  %i.hft = or i64 %i.hfr, %i.hfs
  br label %bb.tg

bb.tg:                                            ; preds = %bb.te, %bb.tf, %bb.sq
  %.15211449 = phi i32 [ %.14811445, %bb.sq ], [ %i.hfo, %bb.te ], [ %i.hde, %bb.tf ] ; 3 uses
  %.15211195 = phi i64 [ %.14811191, %bb.sq ], [ %i.hfp, %bb.te ], [ %i.hft, %bb.tf ] ; 3 uses
  %.230 = phi ptr [ %.224, %bb.sq ], [ %.228, %bb.te ], [ %.225.lcssa, %bb.tf ] ; 3 uses
  %.75 = phi i32 [ %i.gzc, %bb.sq ], [ 0, %bb.te ], [ 0, %bb.tf ] ; 4 uses
  %i.hfu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hfv = load i16, ptr %i.hfu, align 2, !tbaa !79 ; 2 uses
  %i.hfw = icmp eq i16 %i.hfv, 0
  br i1 %i.hfw, label %bb.th, label %bb.ti

bb.th:                                            ; preds = %bb.tg
  %i.hfx = add nuw nsw i32 %.75, 16
  br label %bb.tx

bb.ti:                                            ; preds = %bb.tg
  %i.hfy = sext i16 %i.hfv to i32                 ; 2 uses
  %i.hfz = ashr i32 %i.hfy, 31                    ; 2 uses
  %i.hga = add nsw i32 %i.hfz, %i.hfy             ; 2 uses
  %i.hgb = xor i32 %i.hga, %i.hfz
  %i.hgc = sext i32 %i.hgb to i64
  %i.hgd = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.hgc
  %i.hge = load i8, ptr %i.hgd, align 1, !tbaa !31 ; 2 uses
  %i.hgf = zext i8 %i.hge to i32                  ; 4 uses
  %i.hgg = icmp slt i32 %i.f, %i.hgf
  br i1 %i.hgg, label %bb.tj, label %bb.tk

bb.tj:                                            ; preds = %bb.ti
  %i.hgh = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.hgi = load ptr, ptr %i.hgh, align 8, !tbaa !7 ; 2 uses
  %i.hgj = getelementptr inbounds nuw i8, ptr %i.hgi, i64 40
  store i32 6, ptr %i.hgj, align 8, !tbaa !26
  %i.hgk = load ptr, ptr %i.hgi, align 8, !tbaa !32
  tail call void %i.hgk(ptr noundef nonnull %i.hgh) #7
  br label %bb.tk

bb.tk:                                            ; preds = %bb.tj, %bb.ti
  %i.hgl = icmp samesign ugt i32 %.75, 255
  br i1 %i.hgl, label %.lr.ph14983, label %._crit_edge14984

.lr.ph14983:                                      ; preds = %bb.tk
  %i.hgm = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.hgn = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.tl

bb.tl:                                            ; preds = %.lr.ph14983, %bb.tr
  %.7614981 = phi i32 [ %.75, %.lr.ph14983 ], [ %i.hgo, %bb.tr ] ; 2 uses
  %.23114980 = phi ptr [ %.230, %.lr.ph14983 ], [ %.233, %bb.tr ] ; 13 uses
  %.1531119614979 = phi i64 [ %.15211195, %.lr.ph14983 ], [ %.15411197, %bb.tr ] ; 2 uses
  %.1531145014978 = phi i32 [ %.15211449, %.lr.ph14983 ], [ %.15411451, %bb.tr ] ; 2 uses
  %i.hgo = add nsw i32 %.7614981, -256            ; 2 uses
  %i.hgp = load i8, ptr %i.hgm, align 4, !tbaa !31
  %i.hgq = sext i8 %i.hgp to i32                  ; 2 uses
  %i.hgr = sub nsw i32 %.1531145014978, %i.hgq    ; 4 uses
  %i.hgs = icmp slt i32 %i.hgr, 0
  %i.hgt = load i32, ptr %i.hgn, align 4, !tbaa !3 ; 2 uses
  br i1 %i.hgs, label %bb.tm, label %bb.tq

bb.tm:                                            ; preds = %bb.tl
  %i.hgu = zext nneg i32 %.1531145014978 to i64
  %i.hgv = shl i64 %.1531119614979, %i.hgu        ; 11 uses
  %i.hgw = sub nsw i32 0, %i.hgr
  %i.hgx = lshr i32 %i.hgt, %i.hgw
  %i.hgy = zext nneg i32 %i.hgx to i64
  %i.hgz = or i64 %i.hgv, %i.hgy                  ; 14 uses
  %i.hha = and i64 %i.hgz, -9187201950435737472
  %i.hhb = sub i64 -72340172838076674, %i.hgz
  %i.hhc = and i64 %i.hha, %i.hhb
  %.not12962 = icmp eq i64 %i.hhc, 0
  %i.hhd = lshr i64 %i.hgv, 56                    ; 2 uses
  %i.hhe = trunc nuw i64 %i.hhd to i8
  store i8 %i.hhe, ptr %.23114980, align 1, !tbaa !31
  br i1 %.not12962, label %bb.to, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.hhf = getelementptr inbounds nuw i8, ptr %.23114980, i64 1 ; 2 uses
  store i8 0, ptr %i.hhf, align 1, !tbaa !31
  %.not12963 = icmp eq i64 %i.hhd, 255            ; 2 uses
  %.sroa.gep14327 = getelementptr inbounds nuw i8, ptr %.23114980, i64 2 ; 2 uses
  %.neg12964.sroa.sel = select i1 %.not12963, ptr %.sroa.gep14327, ptr %i.hhf ; 2 uses
  %i.hhg = lshr i64 %i.hgv, 48
  %i.hhh = trunc i64 %i.hhg to i8
  store i8 %i.hhh, ptr %.neg12964.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15800 = getelementptr inbounds nuw i8, ptr %.23114980, i64 3
  %.neg12964.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12963, ptr %.sroa.gep15800, ptr %.sroa.gep14327
  store i8 0, ptr %.neg12964.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hhi = and i64 %i.hgv, 71776119061217280
  %.not12965 = icmp eq i64 %i.hhi, 71776119061217280
  %.neg12966 = select i1 %.not12965, i64 2, i64 1
  %i.hhj = getelementptr inbounds nuw i8, ptr %.neg12964.sroa.sel, i64 %.neg12966 ; 4 uses
  %i.hhk = lshr i64 %i.hgv, 40
  %i.hhl = trunc i64 %i.hhk to i8
  store i8 %i.hhl, ptr %i.hhj, align 1, !tbaa !31
  %i.hhm = getelementptr inbounds nuw i8, ptr %i.hhj, i64 1 ; 2 uses
  store i8 0, ptr %i.hhm, align 1, !tbaa !31
  %i.hhn = and i64 %i.hgv, 280375465082880
  %.not12967 = icmp eq i64 %i.hhn, 280375465082880 ; 2 uses
  %.sroa.gep14329 = getelementptr inbounds nuw i8, ptr %i.hhj, i64 2 ; 2 uses
  %.neg12968.sroa.sel = select i1 %.not12967, ptr %.sroa.gep14329, ptr %i.hhm ; 2 uses
  %i.hho = lshr i64 %i.hgv, 32
  %i.hhp = trunc i64 %i.hho to i8
  store i8 %i.hhp, ptr %.neg12968.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15806 = getelementptr inbounds nuw i8, ptr %i.hhj, i64 3
  %.neg12968.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12967, ptr %.sroa.gep15806, ptr %.sroa.gep14329
  store i8 0, ptr %.neg12968.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hhq = and i64 %i.hgv, 1095216660480
  %.not12969 = icmp eq i64 %i.hhq, 1095216660480
  %.neg12970 = select i1 %.not12969, i64 2, i64 1
  %i.hhr = getelementptr inbounds nuw i8, ptr %.neg12968.sroa.sel, i64 %.neg12970 ; 4 uses
  %i.hhs = lshr i64 %i.hgz, 24
  %i.hht = trunc i64 %i.hhs to i8
  store i8 %i.hht, ptr %i.hhr, align 1, !tbaa !31
  %i.hhu = getelementptr inbounds nuw i8, ptr %i.hhr, i64 1 ; 2 uses
  store i8 0, ptr %i.hhu, align 1, !tbaa !31
  %i.hhv = and i64 %i.hgz, 4278190080
  %.not12971 = icmp eq i64 %i.hhv, 4278190080     ; 2 uses
  %.sroa.gep14331 = getelementptr inbounds nuw i8, ptr %i.hhr, i64 2 ; 2 uses
  %.neg12972.sroa.sel = select i1 %.not12971, ptr %.sroa.gep14331, ptr %i.hhu ; 2 uses
  %i.hhw = lshr i64 %i.hgz, 16
  %i.hhx = trunc i64 %i.hhw to i8
  store i8 %i.hhx, ptr %.neg12972.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15804 = getelementptr inbounds nuw i8, ptr %i.hhr, i64 3
  %.neg12972.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12971, ptr %.sroa.gep15804, ptr %.sroa.gep14331
  store i8 0, ptr %.neg12972.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hhy = and i64 %i.hgz, 16711680
  %.not12973 = icmp eq i64 %i.hhy, 16711680
  %.neg12974 = select i1 %.not12973, i64 2, i64 1
  %i.hhz = getelementptr inbounds nuw i8, ptr %.neg12972.sroa.sel, i64 %.neg12974 ; 4 uses
  %i.hia = lshr i64 %i.hgz, 8
  %i.hib = trunc i64 %i.hia to i8
  store i8 %i.hib, ptr %i.hhz, align 1, !tbaa !31
  %i.hic = getelementptr inbounds nuw i8, ptr %i.hhz, i64 1 ; 2 uses
  store i8 0, ptr %i.hic, align 1, !tbaa !31
  %i.hid = and i64 %i.hgz, 65280
  %.not12975 = icmp eq i64 %i.hid, 65280          ; 2 uses
  %.sroa.gep14333 = getelementptr inbounds nuw i8, ptr %i.hhz, i64 2 ; 2 uses
  %.neg12976.sroa.sel = select i1 %.not12975, ptr %.sroa.gep14333, ptr %i.hic ; 2 uses
  %i.hie = trunc i64 %i.hgz to i8
  store i8 %i.hie, ptr %.neg12976.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15802 = getelementptr inbounds nuw i8, ptr %i.hhz, i64 3
  %.neg12976.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12975, ptr %.sroa.gep15802, ptr %.sroa.gep14333
  store i8 0, ptr %.neg12976.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hif = and i64 %i.hgz, 255
  %.not12977 = icmp eq i64 %i.hif, 255
  %.neg12978 = select i1 %.not12977, i64 2, i64 1
  %i.hig = getelementptr inbounds nuw i8, ptr %.neg12976.sroa.sel, i64 %.neg12978
  br label %bb.tp

bb.to:                                            ; preds = %bb.tm
  %i.hih = lshr i64 %i.hgv, 48
  %i.hii = trunc i64 %i.hih to i8
  %i.hij = getelementptr inbounds nuw i8, ptr %.23114980, i64 1
  store i8 %i.hii, ptr %i.hij, align 1, !tbaa !31
  %i.hik = lshr i64 %i.hgv, 40
  %i.hil = trunc i64 %i.hik to i8
  %i.him = getelementptr inbounds nuw i8, ptr %.23114980, i64 2
  store i8 %i.hil, ptr %i.him, align 1, !tbaa !31
  %i.hin = lshr i64 %i.hgv, 32
  %i.hio = trunc i64 %i.hin to i8
  %i.hip = getelementptr inbounds nuw i8, ptr %.23114980, i64 3
  store i8 %i.hio, ptr %i.hip, align 1, !tbaa !31
  %i.hiq = lshr i64 %i.hgz, 24
  %i.hir = trunc i64 %i.hiq to i8
  %i.his = getelementptr inbounds nuw i8, ptr %.23114980, i64 4
  store i8 %i.hir, ptr %i.his, align 1, !tbaa !31
  %i.hit = lshr i64 %i.hgz, 16
  %i.hiu = trunc i64 %i.hit to i8
  %i.hiv = getelementptr inbounds nuw i8, ptr %.23114980, i64 5
  store i8 %i.hiu, ptr %i.hiv, align 1, !tbaa !31
  %i.hiw = lshr i64 %i.hgz, 8
  %i.hix = trunc i64 %i.hiw to i8
  %i.hiy = getelementptr inbounds nuw i8, ptr %.23114980, i64 6
  store i8 %i.hix, ptr %i.hiy, align 1, !tbaa !31
  %i.hiz = trunc i64 %i.hgz to i8
  %i.hja = getelementptr inbounds nuw i8, ptr %.23114980, i64 7
  store i8 %i.hiz, ptr %i.hja, align 1, !tbaa !31
  %i.hjb = getelementptr inbounds nuw i8, ptr %.23114980, i64 8
  br label %bb.tp

bb.tp:                                            ; preds = %bb.to, %bb.tn
  %.232 = phi ptr [ %i.hig, %bb.tn ], [ %i.hjb, %bb.to ]
  %i.hjc = add nsw i32 %i.hgr, 64
  %i.hjd = load i32, ptr %i.hgn, align 4, !tbaa !3
  %i.hje = zext i32 %i.hjd to i64
  br label %bb.tr

bb.tq:                                            ; preds = %bb.tl
  %i.hjf = zext nneg i32 %i.hgq to i64
  %i.hjg = shl i64 %.1531119614979, %i.hjf
  %i.hjh = zext i32 %i.hgt to i64
  %i.hji = or i64 %i.hjg, %i.hjh
  br label %bb.tr

bb.tr:                                            ; preds = %bb.tq, %bb.tp
  %.15411451 = phi i32 [ %i.hjc, %bb.tp ], [ %i.hgr, %bb.tq ] ; 2 uses
  %.15411197 = phi i64 [ %i.hje, %bb.tp ], [ %i.hji, %bb.tq ] ; 2 uses
  %.233 = phi ptr [ %.232, %bb.tp ], [ %.23114980, %bb.tq ] ; 2 uses
  %i.hjj = icmp samesign ugt i32 %.7614981, 511
  br i1 %i.hjj, label %bb.tl, label %._crit_edge14984, !llvm.loop !111

._crit_edge14984:                                 ; preds = %bb.tr, %bb.tk
  %.15311450.lcssa = phi i32 [ %.15211449, %bb.tk ], [ %.15411451, %bb.tr ] ; 2 uses
  %.15311196.lcssa = phi i64 [ %.15211195, %bb.tk ], [ %.15411197, %bb.tr ] ; 2 uses
  %.231.lcssa = phi ptr [ %.230, %bb.tk ], [ %.233, %bb.tr ] ; 13 uses
  %.76.lcssa = phi i32 [ %.75, %bb.tk ], [ %i.hgo, %bb.tr ]
  %i.hjk = add nuw nsw i32 %.76.lcssa, %i.hgf
  %i.hjl = zext nneg i8 %i.hge to i64
  %notmask12944 = shl nsw i64 -1, %i.hjl
  %i.hjm = trunc i64 %notmask12944 to i32
  %i.hjn = xor i32 %i.hjm, -1
  %i.hjo = and i32 %i.hga, %i.hjn
  %i.hjp = zext nneg i32 %i.hjk to i64            ; 2 uses
  %i.hjq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hjp
  %i.hjr = load i32, ptr %i.hjq, align 4, !tbaa !3
  %i.hjs = shl i32 %i.hjr, %i.hgf
  %i.hjt = or i32 %i.hjs, %i.hjo                  ; 3 uses
  %i.hju = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.hjv = getelementptr inbounds nuw i8, ptr %i.hju, i64 %i.hjp
  %i.hjw = load i8, ptr %i.hjv, align 1, !tbaa !31
  %i.hjx = sext i8 %i.hjw to i32
  %i.hjy = add nsw i32 %i.hjx, %i.hgf             ; 2 uses
  %i.hjz = sub nsw i32 %.15311450.lcssa, %i.hjy   ; 4 uses
  %i.hka = icmp slt i32 %i.hjz, 0
  br i1 %i.hka, label %bb.ts, label %bb.tw

bb.ts:                                            ; preds = %._crit_edge14984
  %i.hkb = zext nneg i32 %.15311450.lcssa to i64
  %i.hkc = shl i64 %.15311196.lcssa, %i.hkb
  %i.hkd = sub nsw i32 0, %i.hjz
  %i.hke = ashr i32 %i.hjt, %i.hkd
  %i.hkf = sext i32 %i.hke to i64
  %i.hkg = or i64 %i.hkc, %i.hkf                  ; 24 uses
  %i.hkh = and i64 %i.hkg, -9187201950435737472
  %i.hki = sub i64 -72340172838076674, %i.hkg
  %i.hkj = and i64 %i.hkh, %i.hki
  %.not12945 = icmp eq i64 %i.hkj, 0
  %i.hkk = lshr i64 %i.hkg, 56                    ; 2 uses
  %i.hkl = trunc nuw i64 %i.hkk to i8
  store i8 %i.hkl, ptr %.231.lcssa, align 1, !tbaa !31
  br i1 %.not12945, label %bb.tu, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.hkm = getelementptr inbounds nuw i8, ptr %.231.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.hkm, align 1, !tbaa !31
  %.not12946 = icmp eq i64 %i.hkk, 255            ; 2 uses
  %.sroa.gep14335 = getelementptr inbounds nuw i8, ptr %.231.lcssa, i64 2 ; 2 uses
  %.neg12947.sroa.sel = select i1 %.not12946, ptr %.sroa.gep14335, ptr %i.hkm ; 2 uses
  %i.hkn = lshr i64 %i.hkg, 48
  %i.hko = trunc i64 %i.hkn to i8
  store i8 %i.hko, ptr %.neg12947.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15808 = getelementptr inbounds nuw i8, ptr %.231.lcssa, i64 3
  %.neg12947.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12946, ptr %.sroa.gep15808, ptr %.sroa.gep14335
  store i8 0, ptr %.neg12947.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hkp = and i64 %i.hkg, 71776119061217280
  %.not12948 = icmp eq i64 %i.hkp, 71776119061217280
  %.neg12949 = select i1 %.not12948, i64 2, i64 1
  %i.hkq = getelementptr inbounds nuw i8, ptr %.neg12947.sroa.sel, i64 %.neg12949 ; 4 uses
  %i.hkr = lshr i64 %i.hkg, 40
  %i.hks = trunc i64 %i.hkr to i8
  store i8 %i.hks, ptr %i.hkq, align 1, !tbaa !31
  %i.hkt = getelementptr inbounds nuw i8, ptr %i.hkq, i64 1 ; 2 uses
  store i8 0, ptr %i.hkt, align 1, !tbaa !31
  %i.hku = and i64 %i.hkg, 280375465082880
  %.not12950 = icmp eq i64 %i.hku, 280375465082880 ; 2 uses
  %.sroa.gep14337 = getelementptr inbounds nuw i8, ptr %i.hkq, i64 2 ; 2 uses
  %.neg12951.sroa.sel = select i1 %.not12950, ptr %.sroa.gep14337, ptr %i.hkt ; 2 uses
  %i.hkv = lshr i64 %i.hkg, 32
  %i.hkw = trunc i64 %i.hkv to i8
  store i8 %i.hkw, ptr %.neg12951.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15814 = getelementptr inbounds nuw i8, ptr %i.hkq, i64 3
  %.neg12951.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12950, ptr %.sroa.gep15814, ptr %.sroa.gep14337
  store i8 0, ptr %.neg12951.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hkx = and i64 %i.hkg, 1095216660480
  %.not12952 = icmp eq i64 %i.hkx, 1095216660480
  %.neg12953 = select i1 %.not12952, i64 2, i64 1
  %i.hky = getelementptr inbounds nuw i8, ptr %.neg12951.sroa.sel, i64 %.neg12953 ; 4 uses
  %i.hkz = lshr i64 %i.hkg, 24
  %i.hla = trunc i64 %i.hkz to i8
  store i8 %i.hla, ptr %i.hky, align 1, !tbaa !31
  %i.hlb = getelementptr inbounds nuw i8, ptr %i.hky, i64 1 ; 2 uses
  store i8 0, ptr %i.hlb, align 1, !tbaa !31
  %i.hlc = and i64 %i.hkg, 4278190080
  %.not12954 = icmp eq i64 %i.hlc, 4278190080     ; 2 uses
  %.sroa.gep14339 = getelementptr inbounds nuw i8, ptr %i.hky, i64 2 ; 2 uses
  %.neg12955.sroa.sel = select i1 %.not12954, ptr %.sroa.gep14339, ptr %i.hlb ; 2 uses
  %i.hld = lshr i64 %i.hkg, 16
  %i.hle = trunc i64 %i.hld to i8
  store i8 %i.hle, ptr %.neg12955.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15812 = getelementptr inbounds nuw i8, ptr %i.hky, i64 3
  %.neg12955.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12954, ptr %.sroa.gep15812, ptr %.sroa.gep14339
  store i8 0, ptr %.neg12955.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hlf = and i64 %i.hkg, 16711680
  %.not12956 = icmp eq i64 %i.hlf, 16711680
  %.neg12957 = select i1 %.not12956, i64 2, i64 1
  %i.hlg = getelementptr inbounds nuw i8, ptr %.neg12955.sroa.sel, i64 %.neg12957 ; 4 uses
  %i.hlh = lshr i64 %i.hkg, 8
  %i.hli = trunc i64 %i.hlh to i8
  store i8 %i.hli, ptr %i.hlg, align 1, !tbaa !31
  %i.hlj = getelementptr inbounds nuw i8, ptr %i.hlg, i64 1 ; 2 uses
  store i8 0, ptr %i.hlj, align 1, !tbaa !31
  %i.hlk = and i64 %i.hkg, 65280
  %.not12958 = icmp eq i64 %i.hlk, 65280          ; 2 uses
  %.sroa.gep14341 = getelementptr inbounds nuw i8, ptr %i.hlg, i64 2 ; 2 uses
  %.neg12959.sroa.sel = select i1 %.not12958, ptr %.sroa.gep14341, ptr %i.hlj ; 2 uses
  %i.hll = trunc i64 %i.hkg to i8
  store i8 %i.hll, ptr %.neg12959.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15810 = getelementptr inbounds nuw i8, ptr %i.hlg, i64 3
  %.neg12959.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12958, ptr %.sroa.gep15810, ptr %.sroa.gep14341
  store i8 0, ptr %.neg12959.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hlm = and i64 %i.hkg, 255
  %.not12960 = icmp eq i64 %i.hlm, 255
  %.neg12961 = select i1 %.not12960, i64 2, i64 1
  %i.hln = getelementptr inbounds nuw i8, ptr %.neg12959.sroa.sel, i64 %.neg12961
  br label %bb.tv

bb.tu:                                            ; preds = %bb.ts
  %i.hlo = lshr i64 %i.hkg, 48
  %i.hlp = trunc i64 %i.hlo to i8
  %i.hlq = getelementptr inbounds nuw i8, ptr %.231.lcssa, i64 1
  store i8 %i.hlp, ptr %i.hlq, align 1, !tbaa !31
  %i.hlr = lshr i64 %i.hkg, 40
  %i.hls = trunc i64 %i.hlr to i8
  %i.hlt = getelementptr inbounds nuw i8, ptr %.231.lcssa, i64 2
  store i8 %i.hls, ptr %i.hlt, align 1, !tbaa !31
  %i.hlu = lshr i64 %i.hkg, 32
  %i.hlv = trunc i64 %i.hlu to i8
  %i.hlw = getelementptr inbounds nuw i8, ptr %.231.lcssa, i64 3
  store i8 %i.hlv, ptr %i.hlw, align 1, !tbaa !31
  %i.hlx = lshr i64 %i.hkg, 24
  %i.hly = trunc i64 %i.hlx to i8
  %i.hlz = getelementptr inbounds nuw i8, ptr %.231.lcssa, i64 4
  store i8 %i.hly, ptr %i.hlz, align 1, !tbaa !31
  %i.hma = lshr i64 %i.hkg, 16
  %i.hmb = trunc i64 %i.hma to i8
  %i.hmc = getelementptr inbounds nuw i8, ptr %.231.lcssa, i64 5
  store i8 %i.hmb, ptr %i.hmc, align 1, !tbaa !31
  %i.hmd = lshr i64 %i.hkg, 8
  %i.hme = trunc i64 %i.hmd to i8
  %i.hmf = getelementptr inbounds nuw i8, ptr %.231.lcssa, i64 6
  store i8 %i.hme, ptr %i.hmf, align 1, !tbaa !31
  %i.hmg = trunc i64 %i.hkg to i8
  %i.hmh = getelementptr inbounds nuw i8, ptr %.231.lcssa, i64 7
  store i8 %i.hmg, ptr %i.hmh, align 1, !tbaa !31
  %i.hmi = getelementptr inbounds nuw i8, ptr %.231.lcssa, i64 8
  br label %bb.tv

bb.tv:                                            ; preds = %bb.tu, %bb.tt
  %.234 = phi ptr [ %i.hln, %bb.tt ], [ %i.hmi, %bb.tu ]
  %i.hmj = add nsw i32 %i.hjz, 64
  %i.hmk = sext i32 %i.hjt to i64
  br label %bb.tx

bb.tw:                                            ; preds = %._crit_edge14984
  %i.hml = zext nneg i32 %i.hjy to i64
  %i.hmm = shl i64 %.15311196.lcssa, %i.hml
  %i.hmn = sext i32 %i.hjt to i64
  %i.hmo = or i64 %i.hmm, %i.hmn
  br label %bb.tx

bb.tx:                                            ; preds = %bb.tv, %bb.tw, %bb.th
  %.15611453 = phi i32 [ %.15211449, %bb.th ], [ %i.hmj, %bb.tv ], [ %i.hjz, %bb.tw ] ; 3 uses
  %.15611199 = phi i64 [ %.15211195, %bb.th ], [ %i.hmk, %bb.tv ], [ %i.hmo, %bb.tw ] ; 3 uses
  %.236 = phi ptr [ %.230, %bb.th ], [ %.234, %bb.tv ], [ %.231.lcssa, %bb.tw ] ; 3 uses
  %.77 = phi i32 [ %i.hfx, %bb.th ], [ 0, %bb.tv ], [ 0, %bb.tw ] ; 4 uses
  %i.hmp = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.hmq = load i16, ptr %i.hmp, align 2, !tbaa !79 ; 2 uses
  %i.hmr = icmp eq i16 %i.hmq, 0
  br i1 %i.hmr, label %bb.ty, label %bb.tz

bb.ty:                                            ; preds = %bb.tx
  %i.hms = add nuw nsw i32 %.77, 16
  br label %bb.uo

bb.tz:                                            ; preds = %bb.tx
  %i.hmt = sext i16 %i.hmq to i32                 ; 2 uses
  %i.hmu = ashr i32 %i.hmt, 31                    ; 2 uses
  %i.hmv = add nsw i32 %i.hmu, %i.hmt             ; 2 uses
  %i.hmw = xor i32 %i.hmv, %i.hmu
  %i.hmx = sext i32 %i.hmw to i64
  %i.hmy = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.hmx
  %i.hmz = load i8, ptr %i.hmy, align 1, !tbaa !31 ; 2 uses
  %i.hna = zext i8 %i.hmz to i32                  ; 4 uses
  %i.hnb = icmp slt i32 %i.f, %i.hna
  br i1 %i.hnb, label %bb.ua, label %bb.ub

bb.ua:                                            ; preds = %bb.tz
  %i.hnc = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.hnd = load ptr, ptr %i.hnc, align 8, !tbaa !7 ; 2 uses
  %i.hne = getelementptr inbounds nuw i8, ptr %i.hnd, i64 40
  store i32 6, ptr %i.hne, align 8, !tbaa !26
  %i.hnf = load ptr, ptr %i.hnd, align 8, !tbaa !32
  tail call void %i.hnf(ptr noundef nonnull %i.hnc) #7
  br label %bb.ub

bb.ub:                                            ; preds = %bb.ua, %bb.tz
  %i.hng = icmp samesign ugt i32 %.77, 255
  br i1 %i.hng, label %.lr.ph14994, label %._crit_edge14995

.lr.ph14994:                                      ; preds = %bb.ub
  %i.hnh = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.hni = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.uc

bb.uc:                                            ; preds = %.lr.ph14994, %bb.ui
  %.7814992 = phi i32 [ %.77, %.lr.ph14994 ], [ %i.hnj, %bb.ui ] ; 2 uses
  %.23714991 = phi ptr [ %.236, %.lr.ph14994 ], [ %.239, %bb.ui ] ; 13 uses
  %.1571120014990 = phi i64 [ %.15611199, %.lr.ph14994 ], [ %.15811201, %bb.ui ] ; 2 uses
  %.1571145414989 = phi i32 [ %.15611453, %.lr.ph14994 ], [ %.15811455, %bb.ui ] ; 2 uses
  %i.hnj = add nsw i32 %.7814992, -256            ; 2 uses
  %i.hnk = load i8, ptr %i.hnh, align 4, !tbaa !31
  %i.hnl = sext i8 %i.hnk to i32                  ; 2 uses
  %i.hnm = sub nsw i32 %.1571145414989, %i.hnl    ; 4 uses
  %i.hnn = icmp slt i32 %i.hnm, 0
  %i.hno = load i32, ptr %i.hni, align 4, !tbaa !3 ; 2 uses
  br i1 %i.hnn, label %bb.ud, label %bb.uh

bb.ud:                                            ; preds = %bb.uc
  %i.hnp = zext nneg i32 %.1571145414989 to i64
  %i.hnq = shl i64 %.1571120014990, %i.hnp        ; 11 uses
  %i.hnr = sub nsw i32 0, %i.hnm
  %i.hns = lshr i32 %i.hno, %i.hnr
  %i.hnt = zext nneg i32 %i.hns to i64
  %i.hnu = or i64 %i.hnq, %i.hnt                  ; 14 uses
  %i.hnv = and i64 %i.hnu, -9187201950435737472
  %i.hnw = sub i64 -72340172838076674, %i.hnu
  %i.hnx = and i64 %i.hnv, %i.hnw
  %.not12997 = icmp eq i64 %i.hnx, 0
  %i.hny = lshr i64 %i.hnq, 56                    ; 2 uses
  %i.hnz = trunc nuw i64 %i.hny to i8
  store i8 %i.hnz, ptr %.23714991, align 1, !tbaa !31
  br i1 %.not12997, label %bb.uf, label %bb.ue

bb.ue:                                            ; preds = %bb.ud
  %i.hoa = getelementptr inbounds nuw i8, ptr %.23714991, i64 1 ; 2 uses
  store i8 0, ptr %i.hoa, align 1, !tbaa !31
  %.not12998 = icmp eq i64 %i.hny, 255            ; 2 uses
  %.sroa.gep14343 = getelementptr inbounds nuw i8, ptr %.23714991, i64 2 ; 2 uses
  %.neg12999.sroa.sel = select i1 %.not12998, ptr %.sroa.gep14343, ptr %i.hoa ; 2 uses
  %i.hob = lshr i64 %i.hnq, 48
  %i.hoc = trunc i64 %i.hob to i8
  store i8 %i.hoc, ptr %.neg12999.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15784 = getelementptr inbounds nuw i8, ptr %.23714991, i64 3
  %.neg12999.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12998, ptr %.sroa.gep15784, ptr %.sroa.gep14343
  store i8 0, ptr %.neg12999.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hod = and i64 %i.hnq, 71776119061217280
  %.not13000 = icmp eq i64 %i.hod, 71776119061217280
  %.neg13001 = select i1 %.not13000, i64 2, i64 1
  %i.hoe = getelementptr inbounds nuw i8, ptr %.neg12999.sroa.sel, i64 %.neg13001 ; 4 uses
  %i.hof = lshr i64 %i.hnq, 40
  %i.hog = trunc i64 %i.hof to i8
  store i8 %i.hog, ptr %i.hoe, align 1, !tbaa !31
  %i.hoh = getelementptr inbounds nuw i8, ptr %i.hoe, i64 1 ; 2 uses
  store i8 0, ptr %i.hoh, align 1, !tbaa !31
  %i.hoi = and i64 %i.hnq, 280375465082880
  %.not13002 = icmp eq i64 %i.hoi, 280375465082880 ; 2 uses
  %.sroa.gep14345 = getelementptr inbounds nuw i8, ptr %i.hoe, i64 2 ; 2 uses
  %.neg13003.sroa.sel = select i1 %.not13002, ptr %.sroa.gep14345, ptr %i.hoh ; 2 uses
  %i.hoj = lshr i64 %i.hnq, 32
  %i.hok = trunc i64 %i.hoj to i8
  store i8 %i.hok, ptr %.neg13003.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15790 = getelementptr inbounds nuw i8, ptr %i.hoe, i64 3
  %.neg13003.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13002, ptr %.sroa.gep15790, ptr %.sroa.gep14345
  store i8 0, ptr %.neg13003.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hol = and i64 %i.hnq, 1095216660480
  %.not13004 = icmp eq i64 %i.hol, 1095216660480
  %.neg13005 = select i1 %.not13004, i64 2, i64 1
  %i.hom = getelementptr inbounds nuw i8, ptr %.neg13003.sroa.sel, i64 %.neg13005 ; 4 uses
  %i.hon = lshr i64 %i.hnu, 24
  %i.hoo = trunc i64 %i.hon to i8
  store i8 %i.hoo, ptr %i.hom, align 1, !tbaa !31
  %i.hop = getelementptr inbounds nuw i8, ptr %i.hom, i64 1 ; 2 uses
  store i8 0, ptr %i.hop, align 1, !tbaa !31
  %i.hoq = and i64 %i.hnu, 4278190080
  %.not13006 = icmp eq i64 %i.hoq, 4278190080     ; 2 uses
  %.sroa.gep14347 = getelementptr inbounds nuw i8, ptr %i.hom, i64 2 ; 2 uses
  %.neg13007.sroa.sel = select i1 %.not13006, ptr %.sroa.gep14347, ptr %i.hop ; 2 uses
  %i.hor = lshr i64 %i.hnu, 16
  %i.hos = trunc i64 %i.hor to i8
  store i8 %i.hos, ptr %.neg13007.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15788 = getelementptr inbounds nuw i8, ptr %i.hom, i64 3
  %.neg13007.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13006, ptr %.sroa.gep15788, ptr %.sroa.gep14347
  store i8 0, ptr %.neg13007.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hot = and i64 %i.hnu, 16711680
  %.not13008 = icmp eq i64 %i.hot, 16711680
  %.neg13009 = select i1 %.not13008, i64 2, i64 1
  %i.hou = getelementptr inbounds nuw i8, ptr %.neg13007.sroa.sel, i64 %.neg13009 ; 4 uses
  %i.hov = lshr i64 %i.hnu, 8
  %i.how = trunc i64 %i.hov to i8
  store i8 %i.how, ptr %i.hou, align 1, !tbaa !31
  %i.hox = getelementptr inbounds nuw i8, ptr %i.hou, i64 1 ; 2 uses
  store i8 0, ptr %i.hox, align 1, !tbaa !31
  %i.hoy = and i64 %i.hnu, 65280
  %.not13010 = icmp eq i64 %i.hoy, 65280          ; 2 uses
  %.sroa.gep14349 = getelementptr inbounds nuw i8, ptr %i.hou, i64 2 ; 2 uses
  %.neg13011.sroa.sel = select i1 %.not13010, ptr %.sroa.gep14349, ptr %i.hox ; 2 uses
  %i.hoz = trunc i64 %i.hnu to i8
  store i8 %i.hoz, ptr %.neg13011.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15786 = getelementptr inbounds nuw i8, ptr %i.hou, i64 3
  %.neg13011.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13010, ptr %.sroa.gep15786, ptr %.sroa.gep14349
  store i8 0, ptr %.neg13011.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hpa = and i64 %i.hnu, 255
  %.not13012 = icmp eq i64 %i.hpa, 255
  %.neg13013 = select i1 %.not13012, i64 2, i64 1
  %i.hpb = getelementptr inbounds nuw i8, ptr %.neg13011.sroa.sel, i64 %.neg13013
  br label %bb.ug

bb.uf:                                            ; preds = %bb.ud
  %i.hpc = lshr i64 %i.hnq, 48
  %i.hpd = trunc i64 %i.hpc to i8
  %i.hpe = getelementptr inbounds nuw i8, ptr %.23714991, i64 1
  store i8 %i.hpd, ptr %i.hpe, align 1, !tbaa !31
  %i.hpf = lshr i64 %i.hnq, 40
  %i.hpg = trunc i64 %i.hpf to i8
  %i.hph = getelementptr inbounds nuw i8, ptr %.23714991, i64 2
  store i8 %i.hpg, ptr %i.hph, align 1, !tbaa !31
  %i.hpi = lshr i64 %i.hnq, 32
  %i.hpj = trunc i64 %i.hpi to i8
  %i.hpk = getelementptr inbounds nuw i8, ptr %.23714991, i64 3
  store i8 %i.hpj, ptr %i.hpk, align 1, !tbaa !31
  %i.hpl = lshr i64 %i.hnu, 24
  %i.hpm = trunc i64 %i.hpl to i8
  %i.hpn = getelementptr inbounds nuw i8, ptr %.23714991, i64 4
  store i8 %i.hpm, ptr %i.hpn, align 1, !tbaa !31
  %i.hpo = lshr i64 %i.hnu, 16
  %i.hpp = trunc i64 %i.hpo to i8
  %i.hpq = getelementptr inbounds nuw i8, ptr %.23714991, i64 5
  store i8 %i.hpp, ptr %i.hpq, align 1, !tbaa !31
  %i.hpr = lshr i64 %i.hnu, 8
  %i.hps = trunc i64 %i.hpr to i8
  %i.hpt = getelementptr inbounds nuw i8, ptr %.23714991, i64 6
  store i8 %i.hps, ptr %i.hpt, align 1, !tbaa !31
  %i.hpu = trunc i64 %i.hnu to i8
  %i.hpv = getelementptr inbounds nuw i8, ptr %.23714991, i64 7
  store i8 %i.hpu, ptr %i.hpv, align 1, !tbaa !31
  %i.hpw = getelementptr inbounds nuw i8, ptr %.23714991, i64 8
  br label %bb.ug

bb.ug:                                            ; preds = %bb.uf, %bb.ue
  %.238 = phi ptr [ %i.hpb, %bb.ue ], [ %i.hpw, %bb.uf ]
  %i.hpx = add nsw i32 %i.hnm, 64
  %i.hpy = load i32, ptr %i.hni, align 4, !tbaa !3
  %i.hpz = zext i32 %i.hpy to i64
  br label %bb.ui

bb.uh:                                            ; preds = %bb.uc
  %i.hqa = zext nneg i32 %i.hnl to i64
  %i.hqb = shl i64 %.1571120014990, %i.hqa
  %i.hqc = zext i32 %i.hno to i64
  %i.hqd = or i64 %i.hqb, %i.hqc
  br label %bb.ui

bb.ui:                                            ; preds = %bb.uh, %bb.ug
  %.15811455 = phi i32 [ %i.hpx, %bb.ug ], [ %i.hnm, %bb.uh ] ; 2 uses
  %.15811201 = phi i64 [ %i.hpz, %bb.ug ], [ %i.hqd, %bb.uh ] ; 2 uses
  %.239 = phi ptr [ %.238, %bb.ug ], [ %.23714991, %bb.uh ] ; 2 uses
  %i.hqe = icmp samesign ugt i32 %.7814992, 511
  br i1 %i.hqe, label %bb.uc, label %._crit_edge14995, !llvm.loop !112

._crit_edge14995:                                 ; preds = %bb.ui, %bb.ub
  %.15711454.lcssa = phi i32 [ %.15611453, %bb.ub ], [ %.15811455, %bb.ui ] ; 2 uses
  %.15711200.lcssa = phi i64 [ %.15611199, %bb.ub ], [ %.15811201, %bb.ui ] ; 2 uses
  %.237.lcssa = phi ptr [ %.236, %bb.ub ], [ %.239, %bb.ui ] ; 13 uses
  %.78.lcssa = phi i32 [ %.77, %bb.ub ], [ %i.hnj, %bb.ui ]
  %i.hqf = add nuw nsw i32 %.78.lcssa, %i.hna
  %i.hqg = zext nneg i8 %i.hmz to i64
  %notmask12979 = shl nsw i64 -1, %i.hqg
  %i.hqh = trunc i64 %notmask12979 to i32
  %i.hqi = xor i32 %i.hqh, -1
  %i.hqj = and i32 %i.hmv, %i.hqi
  %i.hqk = zext nneg i32 %i.hqf to i64            ; 2 uses
  %i.hql = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hqk
  %i.hqm = load i32, ptr %i.hql, align 4, !tbaa !3
  %i.hqn = shl i32 %i.hqm, %i.hna
  %i.hqo = or i32 %i.hqn, %i.hqj                  ; 3 uses
  %i.hqp = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.hqq = getelementptr inbounds nuw i8, ptr %i.hqp, i64 %i.hqk
  %i.hqr = load i8, ptr %i.hqq, align 1, !tbaa !31
  %i.hqs = sext i8 %i.hqr to i32
  %i.hqt = add nsw i32 %i.hqs, %i.hna             ; 2 uses
  %i.hqu = sub nsw i32 %.15711454.lcssa, %i.hqt   ; 4 uses
  %i.hqv = icmp slt i32 %i.hqu, 0
  br i1 %i.hqv, label %bb.uj, label %bb.un

bb.uj:                                            ; preds = %._crit_edge14995
  %i.hqw = zext nneg i32 %.15711454.lcssa to i64
  %i.hqx = shl i64 %.15711200.lcssa, %i.hqw
  %i.hqy = sub nsw i32 0, %i.hqu
  %i.hqz = ashr i32 %i.hqo, %i.hqy
  %i.hra = sext i32 %i.hqz to i64
  %i.hrb = or i64 %i.hqx, %i.hra                  ; 24 uses
  %i.hrc = and i64 %i.hrb, -9187201950435737472
  %i.hrd = sub i64 -72340172838076674, %i.hrb
  %i.hre = and i64 %i.hrc, %i.hrd
  %.not12980 = icmp eq i64 %i.hre, 0
  %i.hrf = lshr i64 %i.hrb, 56                    ; 2 uses
  %i.hrg = trunc nuw i64 %i.hrf to i8
  store i8 %i.hrg, ptr %.237.lcssa, align 1, !tbaa !31
  br i1 %.not12980, label %bb.ul, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.hrh = getelementptr inbounds nuw i8, ptr %.237.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.hrh, align 1, !tbaa !31
  %.not12981 = icmp eq i64 %i.hrf, 255            ; 2 uses
  %.sroa.gep14351 = getelementptr inbounds nuw i8, ptr %.237.lcssa, i64 2 ; 2 uses
  %.neg12982.sroa.sel = select i1 %.not12981, ptr %.sroa.gep14351, ptr %i.hrh ; 2 uses
  %i.hri = lshr i64 %i.hrb, 48
  %i.hrj = trunc i64 %i.hri to i8
  store i8 %i.hrj, ptr %.neg12982.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15792 = getelementptr inbounds nuw i8, ptr %.237.lcssa, i64 3
  %.neg12982.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12981, ptr %.sroa.gep15792, ptr %.sroa.gep14351
  store i8 0, ptr %.neg12982.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hrk = and i64 %i.hrb, 71776119061217280
  %.not12983 = icmp eq i64 %i.hrk, 71776119061217280
  %.neg12984 = select i1 %.not12983, i64 2, i64 1
  %i.hrl = getelementptr inbounds nuw i8, ptr %.neg12982.sroa.sel, i64 %.neg12984 ; 4 uses
  %i.hrm = lshr i64 %i.hrb, 40
  %i.hrn = trunc i64 %i.hrm to i8
  store i8 %i.hrn, ptr %i.hrl, align 1, !tbaa !31
  %i.hro = getelementptr inbounds nuw i8, ptr %i.hrl, i64 1 ; 2 uses
  store i8 0, ptr %i.hro, align 1, !tbaa !31
  %i.hrp = and i64 %i.hrb, 280375465082880
  %.not12985 = icmp eq i64 %i.hrp, 280375465082880 ; 2 uses
  %.sroa.gep14353 = getelementptr inbounds nuw i8, ptr %i.hrl, i64 2 ; 2 uses
  %.neg12986.sroa.sel = select i1 %.not12985, ptr %.sroa.gep14353, ptr %i.hro ; 2 uses
  %i.hrq = lshr i64 %i.hrb, 32
  %i.hrr = trunc i64 %i.hrq to i8
  store i8 %i.hrr, ptr %.neg12986.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15798 = getelementptr inbounds nuw i8, ptr %i.hrl, i64 3
  %.neg12986.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12985, ptr %.sroa.gep15798, ptr %.sroa.gep14353
  store i8 0, ptr %.neg12986.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hrs = and i64 %i.hrb, 1095216660480
  %.not12987 = icmp eq i64 %i.hrs, 1095216660480
  %.neg12988 = select i1 %.not12987, i64 2, i64 1
  %i.hrt = getelementptr inbounds nuw i8, ptr %.neg12986.sroa.sel, i64 %.neg12988 ; 4 uses
  %i.hru = lshr i64 %i.hrb, 24
  %i.hrv = trunc i64 %i.hru to i8
  store i8 %i.hrv, ptr %i.hrt, align 1, !tbaa !31
  %i.hrw = getelementptr inbounds nuw i8, ptr %i.hrt, i64 1 ; 2 uses
  store i8 0, ptr %i.hrw, align 1, !tbaa !31
  %i.hrx = and i64 %i.hrb, 4278190080
  %.not12989 = icmp eq i64 %i.hrx, 4278190080     ; 2 uses
  %.sroa.gep14355 = getelementptr inbounds nuw i8, ptr %i.hrt, i64 2 ; 2 uses
  %.neg12990.sroa.sel = select i1 %.not12989, ptr %.sroa.gep14355, ptr %i.hrw ; 2 uses
  %i.hry = lshr i64 %i.hrb, 16
  %i.hrz = trunc i64 %i.hry to i8
  store i8 %i.hrz, ptr %.neg12990.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15796 = getelementptr inbounds nuw i8, ptr %i.hrt, i64 3
  %.neg12990.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12989, ptr %.sroa.gep15796, ptr %.sroa.gep14355
  store i8 0, ptr %.neg12990.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hsa = and i64 %i.hrb, 16711680
  %.not12991 = icmp eq i64 %i.hsa, 16711680
  %.neg12992 = select i1 %.not12991, i64 2, i64 1
  %i.hsb = getelementptr inbounds nuw i8, ptr %.neg12990.sroa.sel, i64 %.neg12992 ; 4 uses
  %i.hsc = lshr i64 %i.hrb, 8
  %i.hsd = trunc i64 %i.hsc to i8
  store i8 %i.hsd, ptr %i.hsb, align 1, !tbaa !31
  %i.hse = getelementptr inbounds nuw i8, ptr %i.hsb, i64 1 ; 2 uses
  store i8 0, ptr %i.hse, align 1, !tbaa !31
  %i.hsf = and i64 %i.hrb, 65280
  %.not12993 = icmp eq i64 %i.hsf, 65280          ; 2 uses
  %.sroa.gep14357 = getelementptr inbounds nuw i8, ptr %i.hsb, i64 2 ; 2 uses
  %.neg12994.sroa.sel = select i1 %.not12993, ptr %.sroa.gep14357, ptr %i.hse ; 2 uses
  %i.hsg = trunc i64 %i.hrb to i8
  store i8 %i.hsg, ptr %.neg12994.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15794 = getelementptr inbounds nuw i8, ptr %i.hsb, i64 3
  %.neg12994.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not12993, ptr %.sroa.gep15794, ptr %.sroa.gep14357
  store i8 0, ptr %.neg12994.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hsh = and i64 %i.hrb, 255
  %.not12995 = icmp eq i64 %i.hsh, 255
  %.neg12996 = select i1 %.not12995, i64 2, i64 1
  %i.hsi = getelementptr inbounds nuw i8, ptr %.neg12994.sroa.sel, i64 %.neg12996
  br label %bb.um

bb.ul:                                            ; preds = %bb.uj
  %i.hsj = lshr i64 %i.hrb, 48
  %i.hsk = trunc i64 %i.hsj to i8
  %i.hsl = getelementptr inbounds nuw i8, ptr %.237.lcssa, i64 1
  store i8 %i.hsk, ptr %i.hsl, align 1, !tbaa !31
  %i.hsm = lshr i64 %i.hrb, 40
  %i.hsn = trunc i64 %i.hsm to i8
  %i.hso = getelementptr inbounds nuw i8, ptr %.237.lcssa, i64 2
  store i8 %i.hsn, ptr %i.hso, align 1, !tbaa !31
  %i.hsp = lshr i64 %i.hrb, 32
  %i.hsq = trunc i64 %i.hsp to i8
  %i.hsr = getelementptr inbounds nuw i8, ptr %.237.lcssa, i64 3
  store i8 %i.hsq, ptr %i.hsr, align 1, !tbaa !31
  %i.hss = lshr i64 %i.hrb, 24
  %i.hst = trunc i64 %i.hss to i8
  %i.hsu = getelementptr inbounds nuw i8, ptr %.237.lcssa, i64 4
  store i8 %i.hst, ptr %i.hsu, align 1, !tbaa !31
  %i.hsv = lshr i64 %i.hrb, 16
  %i.hsw = trunc i64 %i.hsv to i8
  %i.hsx = getelementptr inbounds nuw i8, ptr %.237.lcssa, i64 5
  store i8 %i.hsw, ptr %i.hsx, align 1, !tbaa !31
  %i.hsy = lshr i64 %i.hrb, 8
  %i.hsz = trunc i64 %i.hsy to i8
  %i.hta = getelementptr inbounds nuw i8, ptr %.237.lcssa, i64 6
  store i8 %i.hsz, ptr %i.hta, align 1, !tbaa !31
  %i.htb = trunc i64 %i.hrb to i8
  %i.htc = getelementptr inbounds nuw i8, ptr %.237.lcssa, i64 7
  store i8 %i.htb, ptr %i.htc, align 1, !tbaa !31
  %i.htd = getelementptr inbounds nuw i8, ptr %.237.lcssa, i64 8
  br label %bb.um

bb.um:                                            ; preds = %bb.ul, %bb.uk
  %.240 = phi ptr [ %i.hsi, %bb.uk ], [ %i.htd, %bb.ul ]
  %i.hte = add nsw i32 %i.hqu, 64
  %i.htf = sext i32 %i.hqo to i64
  br label %bb.uo

bb.un:                                            ; preds = %._crit_edge14995
  %i.htg = zext nneg i32 %i.hqt to i64
  %i.hth = shl i64 %.15711200.lcssa, %i.htg
  %i.hti = sext i32 %i.hqo to i64
  %i.htj = or i64 %i.hth, %i.hti
  br label %bb.uo

bb.uo:                                            ; preds = %bb.um, %bb.un, %bb.ty
  %.16011457 = phi i32 [ %.15611453, %bb.ty ], [ %i.hte, %bb.um ], [ %i.hqu, %bb.un ] ; 3 uses
  %.16011203 = phi i64 [ %.15611199, %bb.ty ], [ %i.htf, %bb.um ], [ %i.htj, %bb.un ] ; 3 uses
  %.242 = phi ptr [ %.236, %bb.ty ], [ %.240, %bb.um ], [ %.237.lcssa, %bb.un ] ; 3 uses
  %.79 = phi i32 [ %i.hms, %bb.ty ], [ 0, %bb.um ], [ 0, %bb.un ] ; 4 uses
  %i.htk = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.htl = load i16, ptr %i.htk, align 2, !tbaa !79 ; 2 uses
  %i.htm = icmp eq i16 %i.htl, 0
  br i1 %i.htm, label %bb.up, label %bb.uq

bb.up:                                            ; preds = %bb.uo
  %i.htn = add nuw nsw i32 %.79, 16
  br label %bb.vf

bb.uq:                                            ; preds = %bb.uo
  %i.hto = sext i16 %i.htl to i32                 ; 2 uses
  %i.htp = ashr i32 %i.hto, 31                    ; 2 uses
  %i.htq = add nsw i32 %i.htp, %i.hto             ; 2 uses
  %i.htr = xor i32 %i.htq, %i.htp
  %i.hts = sext i32 %i.htr to i64
  %i.htt = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.hts
  %i.htu = load i8, ptr %i.htt, align 1, !tbaa !31 ; 2 uses
  %i.htv = zext i8 %i.htu to i32                  ; 4 uses
  %i.htw = icmp slt i32 %i.f, %i.htv
  br i1 %i.htw, label %bb.ur, label %bb.us

bb.ur:                                            ; preds = %bb.uq
  %i.htx = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.hty = load ptr, ptr %i.htx, align 8, !tbaa !7 ; 2 uses
  %i.htz = getelementptr inbounds nuw i8, ptr %i.hty, i64 40
  store i32 6, ptr %i.htz, align 8, !tbaa !26
  %i.hua = load ptr, ptr %i.hty, align 8, !tbaa !32
  tail call void %i.hua(ptr noundef nonnull %i.htx) #7
  br label %bb.us

bb.us:                                            ; preds = %bb.ur, %bb.uq
  %i.hub = icmp samesign ugt i32 %.79, 255
  br i1 %i.hub, label %.lr.ph15005, label %._crit_edge15006

.lr.ph15005:                                      ; preds = %bb.us
  %i.huc = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.hud = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.ut

bb.ut:                                            ; preds = %.lr.ph15005, %bb.uz
  %.8015003 = phi i32 [ %.79, %.lr.ph15005 ], [ %i.hue, %bb.uz ] ; 2 uses
  %.24315002 = phi ptr [ %.242, %.lr.ph15005 ], [ %.245, %bb.uz ] ; 13 uses
  %.1611120415001 = phi i64 [ %.16011203, %.lr.ph15005 ], [ %.16211205, %bb.uz ] ; 2 uses
  %.1611145815000 = phi i32 [ %.16011457, %.lr.ph15005 ], [ %.16211459, %bb.uz ] ; 2 uses
  %i.hue = add nsw i32 %.8015003, -256            ; 2 uses
  %i.huf = load i8, ptr %i.huc, align 4, !tbaa !31
  %i.hug = sext i8 %i.huf to i32                  ; 2 uses
  %i.huh = sub nsw i32 %.1611145815000, %i.hug    ; 4 uses
  %i.hui = icmp slt i32 %i.huh, 0
  %i.huj = load i32, ptr %i.hud, align 4, !tbaa !3 ; 2 uses
  br i1 %i.hui, label %bb.uu, label %bb.uy

bb.uu:                                            ; preds = %bb.ut
  %i.huk = zext nneg i32 %.1611145815000 to i64
  %i.hul = shl i64 %.1611120415001, %i.huk        ; 11 uses
  %i.hum = sub nsw i32 0, %i.huh
  %i.hun = lshr i32 %i.huj, %i.hum
  %i.huo = zext nneg i32 %i.hun to i64
  %i.hup = or i64 %i.hul, %i.huo                  ; 14 uses
  %i.huq = and i64 %i.hup, -9187201950435737472
  %i.hur = sub i64 -72340172838076674, %i.hup
  %i.hus = and i64 %i.huq, %i.hur
  %.not13032 = icmp eq i64 %i.hus, 0
  %i.hut = lshr i64 %i.hul, 56                    ; 2 uses
  %i.huu = trunc nuw i64 %i.hut to i8
  store i8 %i.huu, ptr %.24315002, align 1, !tbaa !31
  br i1 %.not13032, label %bb.uw, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.huv = getelementptr inbounds nuw i8, ptr %.24315002, i64 1 ; 2 uses
  store i8 0, ptr %i.huv, align 1, !tbaa !31
  %.not13033 = icmp eq i64 %i.hut, 255            ; 2 uses
  %.sroa.gep14359 = getelementptr inbounds nuw i8, ptr %.24315002, i64 2 ; 2 uses
  %.neg13034.sroa.sel = select i1 %.not13033, ptr %.sroa.gep14359, ptr %i.huv ; 2 uses
  %i.huw = lshr i64 %i.hul, 48
  %i.hux = trunc i64 %i.huw to i8
  store i8 %i.hux, ptr %.neg13034.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15768 = getelementptr inbounds nuw i8, ptr %.24315002, i64 3
  %.neg13034.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13033, ptr %.sroa.gep15768, ptr %.sroa.gep14359
  store i8 0, ptr %.neg13034.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.huy = and i64 %i.hul, 71776119061217280
  %.not13035 = icmp eq i64 %i.huy, 71776119061217280
  %.neg13036 = select i1 %.not13035, i64 2, i64 1
  %i.huz = getelementptr inbounds nuw i8, ptr %.neg13034.sroa.sel, i64 %.neg13036 ; 4 uses
  %i.hva = lshr i64 %i.hul, 40
  %i.hvb = trunc i64 %i.hva to i8
  store i8 %i.hvb, ptr %i.huz, align 1, !tbaa !31
  %i.hvc = getelementptr inbounds nuw i8, ptr %i.huz, i64 1 ; 2 uses
  store i8 0, ptr %i.hvc, align 1, !tbaa !31
  %i.hvd = and i64 %i.hul, 280375465082880
  %.not13037 = icmp eq i64 %i.hvd, 280375465082880 ; 2 uses
  %.sroa.gep14361 = getelementptr inbounds nuw i8, ptr %i.huz, i64 2 ; 2 uses
  %.neg13038.sroa.sel = select i1 %.not13037, ptr %.sroa.gep14361, ptr %i.hvc ; 2 uses
  %i.hve = lshr i64 %i.hul, 32
  %i.hvf = trunc i64 %i.hve to i8
  store i8 %i.hvf, ptr %.neg13038.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15774 = getelementptr inbounds nuw i8, ptr %i.huz, i64 3
  %.neg13038.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13037, ptr %.sroa.gep15774, ptr %.sroa.gep14361
  store i8 0, ptr %.neg13038.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hvg = and i64 %i.hul, 1095216660480
  %.not13039 = icmp eq i64 %i.hvg, 1095216660480
  %.neg13040 = select i1 %.not13039, i64 2, i64 1
  %i.hvh = getelementptr inbounds nuw i8, ptr %.neg13038.sroa.sel, i64 %.neg13040 ; 4 uses
  %i.hvi = lshr i64 %i.hup, 24
  %i.hvj = trunc i64 %i.hvi to i8
  store i8 %i.hvj, ptr %i.hvh, align 1, !tbaa !31
  %i.hvk = getelementptr inbounds nuw i8, ptr %i.hvh, i64 1 ; 2 uses
  store i8 0, ptr %i.hvk, align 1, !tbaa !31
  %i.hvl = and i64 %i.hup, 4278190080
  %.not13041 = icmp eq i64 %i.hvl, 4278190080     ; 2 uses
  %.sroa.gep14363 = getelementptr inbounds nuw i8, ptr %i.hvh, i64 2 ; 2 uses
  %.neg13042.sroa.sel = select i1 %.not13041, ptr %.sroa.gep14363, ptr %i.hvk ; 2 uses
  %i.hvm = lshr i64 %i.hup, 16
  %i.hvn = trunc i64 %i.hvm to i8
  store i8 %i.hvn, ptr %.neg13042.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15772 = getelementptr inbounds nuw i8, ptr %i.hvh, i64 3
  %.neg13042.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13041, ptr %.sroa.gep15772, ptr %.sroa.gep14363
  store i8 0, ptr %.neg13042.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hvo = and i64 %i.hup, 16711680
  %.not13043 = icmp eq i64 %i.hvo, 16711680
  %.neg13044 = select i1 %.not13043, i64 2, i64 1
  %i.hvp = getelementptr inbounds nuw i8, ptr %.neg13042.sroa.sel, i64 %.neg13044 ; 4 uses
  %i.hvq = lshr i64 %i.hup, 8
  %i.hvr = trunc i64 %i.hvq to i8
  store i8 %i.hvr, ptr %i.hvp, align 1, !tbaa !31
  %i.hvs = getelementptr inbounds nuw i8, ptr %i.hvp, i64 1 ; 2 uses
  store i8 0, ptr %i.hvs, align 1, !tbaa !31
  %i.hvt = and i64 %i.hup, 65280
  %.not13045 = icmp eq i64 %i.hvt, 65280          ; 2 uses
  %.sroa.gep14365 = getelementptr inbounds nuw i8, ptr %i.hvp, i64 2 ; 2 uses
  %.neg13046.sroa.sel = select i1 %.not13045, ptr %.sroa.gep14365, ptr %i.hvs ; 2 uses
  %i.hvu = trunc i64 %i.hup to i8
  store i8 %i.hvu, ptr %.neg13046.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15770 = getelementptr inbounds nuw i8, ptr %i.hvp, i64 3
  %.neg13046.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13045, ptr %.sroa.gep15770, ptr %.sroa.gep14365
  store i8 0, ptr %.neg13046.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hvv = and i64 %i.hup, 255
  %.not13047 = icmp eq i64 %i.hvv, 255
  %.neg13048 = select i1 %.not13047, i64 2, i64 1
  %i.hvw = getelementptr inbounds nuw i8, ptr %.neg13046.sroa.sel, i64 %.neg13048
  br label %bb.ux

bb.uw:                                            ; preds = %bb.uu
  %i.hvx = lshr i64 %i.hul, 48
  %i.hvy = trunc i64 %i.hvx to i8
  %i.hvz = getelementptr inbounds nuw i8, ptr %.24315002, i64 1
  store i8 %i.hvy, ptr %i.hvz, align 1, !tbaa !31
  %i.hwa = lshr i64 %i.hul, 40
  %i.hwb = trunc i64 %i.hwa to i8
  %i.hwc = getelementptr inbounds nuw i8, ptr %.24315002, i64 2
  store i8 %i.hwb, ptr %i.hwc, align 1, !tbaa !31
  %i.hwd = lshr i64 %i.hul, 32
  %i.hwe = trunc i64 %i.hwd to i8
  %i.hwf = getelementptr inbounds nuw i8, ptr %.24315002, i64 3
  store i8 %i.hwe, ptr %i.hwf, align 1, !tbaa !31
  %i.hwg = lshr i64 %i.hup, 24
  %i.hwh = trunc i64 %i.hwg to i8
  %i.hwi = getelementptr inbounds nuw i8, ptr %.24315002, i64 4
  store i8 %i.hwh, ptr %i.hwi, align 1, !tbaa !31
  %i.hwj = lshr i64 %i.hup, 16
  %i.hwk = trunc i64 %i.hwj to i8
  %i.hwl = getelementptr inbounds nuw i8, ptr %.24315002, i64 5
  store i8 %i.hwk, ptr %i.hwl, align 1, !tbaa !31
  %i.hwm = lshr i64 %i.hup, 8
  %i.hwn = trunc i64 %i.hwm to i8
  %i.hwo = getelementptr inbounds nuw i8, ptr %.24315002, i64 6
  store i8 %i.hwn, ptr %i.hwo, align 1, !tbaa !31
  %i.hwp = trunc i64 %i.hup to i8
  %i.hwq = getelementptr inbounds nuw i8, ptr %.24315002, i64 7
  store i8 %i.hwp, ptr %i.hwq, align 1, !tbaa !31
  %i.hwr = getelementptr inbounds nuw i8, ptr %.24315002, i64 8
  br label %bb.ux

bb.ux:                                            ; preds = %bb.uw, %bb.uv
  %.244 = phi ptr [ %i.hvw, %bb.uv ], [ %i.hwr, %bb.uw ]
  %i.hws = add nsw i32 %i.huh, 64
  %i.hwt = load i32, ptr %i.hud, align 4, !tbaa !3
  %i.hwu = zext i32 %i.hwt to i64
  br label %bb.uz

bb.uy:                                            ; preds = %bb.ut
  %i.hwv = zext nneg i32 %i.hug to i64
  %i.hww = shl i64 %.1611120415001, %i.hwv
  %i.hwx = zext i32 %i.huj to i64
  %i.hwy = or i64 %i.hww, %i.hwx
  br label %bb.uz

bb.uz:                                            ; preds = %bb.uy, %bb.ux
  %.16211459 = phi i32 [ %i.hws, %bb.ux ], [ %i.huh, %bb.uy ] ; 2 uses
  %.16211205 = phi i64 [ %i.hwu, %bb.ux ], [ %i.hwy, %bb.uy ] ; 2 uses
  %.245 = phi ptr [ %.244, %bb.ux ], [ %.24315002, %bb.uy ] ; 2 uses
  %i.hwz = icmp samesign ugt i32 %.8015003, 511
  br i1 %i.hwz, label %bb.ut, label %._crit_edge15006, !llvm.loop !113

._crit_edge15006:                                 ; preds = %bb.uz, %bb.us
  %.16111458.lcssa = phi i32 [ %.16011457, %bb.us ], [ %.16211459, %bb.uz ] ; 2 uses
  %.16111204.lcssa = phi i64 [ %.16011203, %bb.us ], [ %.16211205, %bb.uz ] ; 2 uses
  %.243.lcssa = phi ptr [ %.242, %bb.us ], [ %.245, %bb.uz ] ; 13 uses
  %.80.lcssa = phi i32 [ %.79, %bb.us ], [ %i.hue, %bb.uz ]
  %i.hxa = add nuw nsw i32 %.80.lcssa, %i.htv
  %i.hxb = zext nneg i8 %i.htu to i64
  %notmask13014 = shl nsw i64 -1, %i.hxb
  %i.hxc = trunc i64 %notmask13014 to i32
  %i.hxd = xor i32 %i.hxc, -1
  %i.hxe = and i32 %i.htq, %i.hxd
  %i.hxf = zext nneg i32 %i.hxa to i64            ; 2 uses
  %i.hxg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hxf
  %i.hxh = load i32, ptr %i.hxg, align 4, !tbaa !3
  %i.hxi = shl i32 %i.hxh, %i.htv
  %i.hxj = or i32 %i.hxi, %i.hxe                  ; 3 uses
  %i.hxk = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.hxl = getelementptr inbounds nuw i8, ptr %i.hxk, i64 %i.hxf
  %i.hxm = load i8, ptr %i.hxl, align 1, !tbaa !31
  %i.hxn = sext i8 %i.hxm to i32
  %i.hxo = add nsw i32 %i.hxn, %i.htv             ; 2 uses
  %i.hxp = sub nsw i32 %.16111458.lcssa, %i.hxo   ; 4 uses
  %i.hxq = icmp slt i32 %i.hxp, 0
  br i1 %i.hxq, label %bb.va, label %bb.ve

bb.va:                                            ; preds = %._crit_edge15006
  %i.hxr = zext nneg i32 %.16111458.lcssa to i64
  %i.hxs = shl i64 %.16111204.lcssa, %i.hxr
  %i.hxt = sub nsw i32 0, %i.hxp
  %i.hxu = ashr i32 %i.hxj, %i.hxt
  %i.hxv = sext i32 %i.hxu to i64
  %i.hxw = or i64 %i.hxs, %i.hxv                  ; 24 uses
  %i.hxx = and i64 %i.hxw, -9187201950435737472
  %i.hxy = sub i64 -72340172838076674, %i.hxw
  %i.hxz = and i64 %i.hxx, %i.hxy
  %.not13015 = icmp eq i64 %i.hxz, 0
  %i.hya = lshr i64 %i.hxw, 56                    ; 2 uses
  %i.hyb = trunc nuw i64 %i.hya to i8
  store i8 %i.hyb, ptr %.243.lcssa, align 1, !tbaa !31
  br i1 %.not13015, label %bb.vc, label %bb.vb

bb.vb:                                            ; preds = %bb.va
  %i.hyc = getelementptr inbounds nuw i8, ptr %.243.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.hyc, align 1, !tbaa !31
  %.not13016 = icmp eq i64 %i.hya, 255            ; 2 uses
  %.sroa.gep14367 = getelementptr inbounds nuw i8, ptr %.243.lcssa, i64 2 ; 2 uses
  %.neg13017.sroa.sel = select i1 %.not13016, ptr %.sroa.gep14367, ptr %i.hyc ; 2 uses
  %i.hyd = lshr i64 %i.hxw, 48
  %i.hye = trunc i64 %i.hyd to i8
  store i8 %i.hye, ptr %.neg13017.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15776 = getelementptr inbounds nuw i8, ptr %.243.lcssa, i64 3
  %.neg13017.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13016, ptr %.sroa.gep15776, ptr %.sroa.gep14367
  store i8 0, ptr %.neg13017.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hyf = and i64 %i.hxw, 71776119061217280
  %.not13018 = icmp eq i64 %i.hyf, 71776119061217280
  %.neg13019 = select i1 %.not13018, i64 2, i64 1
  %i.hyg = getelementptr inbounds nuw i8, ptr %.neg13017.sroa.sel, i64 %.neg13019 ; 4 uses
  %i.hyh = lshr i64 %i.hxw, 40
  %i.hyi = trunc i64 %i.hyh to i8
  store i8 %i.hyi, ptr %i.hyg, align 1, !tbaa !31
  %i.hyj = getelementptr inbounds nuw i8, ptr %i.hyg, i64 1 ; 2 uses
  store i8 0, ptr %i.hyj, align 1, !tbaa !31
  %i.hyk = and i64 %i.hxw, 280375465082880
  %.not13020 = icmp eq i64 %i.hyk, 280375465082880 ; 2 uses
  %.sroa.gep14369 = getelementptr inbounds nuw i8, ptr %i.hyg, i64 2 ; 2 uses
  %.neg13021.sroa.sel = select i1 %.not13020, ptr %.sroa.gep14369, ptr %i.hyj ; 2 uses
  %i.hyl = lshr i64 %i.hxw, 32
  %i.hym = trunc i64 %i.hyl to i8
  store i8 %i.hym, ptr %.neg13021.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15782 = getelementptr inbounds nuw i8, ptr %i.hyg, i64 3
  %.neg13021.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13020, ptr %.sroa.gep15782, ptr %.sroa.gep14369
  store i8 0, ptr %.neg13021.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hyn = and i64 %i.hxw, 1095216660480
  %.not13022 = icmp eq i64 %i.hyn, 1095216660480
  %.neg13023 = select i1 %.not13022, i64 2, i64 1
  %i.hyo = getelementptr inbounds nuw i8, ptr %.neg13021.sroa.sel, i64 %.neg13023 ; 4 uses
  %i.hyp = lshr i64 %i.hxw, 24
  %i.hyq = trunc i64 %i.hyp to i8
  store i8 %i.hyq, ptr %i.hyo, align 1, !tbaa !31
  %i.hyr = getelementptr inbounds nuw i8, ptr %i.hyo, i64 1 ; 2 uses
  store i8 0, ptr %i.hyr, align 1, !tbaa !31
  %i.hys = and i64 %i.hxw, 4278190080
  %.not13024 = icmp eq i64 %i.hys, 4278190080     ; 2 uses
  %.sroa.gep14371 = getelementptr inbounds nuw i8, ptr %i.hyo, i64 2 ; 2 uses
  %.neg13025.sroa.sel = select i1 %.not13024, ptr %.sroa.gep14371, ptr %i.hyr ; 2 uses
  %i.hyt = lshr i64 %i.hxw, 16
  %i.hyu = trunc i64 %i.hyt to i8
  store i8 %i.hyu, ptr %.neg13025.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15780 = getelementptr inbounds nuw i8, ptr %i.hyo, i64 3
  %.neg13025.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13024, ptr %.sroa.gep15780, ptr %.sroa.gep14371
  store i8 0, ptr %.neg13025.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hyv = and i64 %i.hxw, 16711680
  %.not13026 = icmp eq i64 %i.hyv, 16711680
  %.neg13027 = select i1 %.not13026, i64 2, i64 1
  %i.hyw = getelementptr inbounds nuw i8, ptr %.neg13025.sroa.sel, i64 %.neg13027 ; 4 uses
  %i.hyx = lshr i64 %i.hxw, 8
  %i.hyy = trunc i64 %i.hyx to i8
  store i8 %i.hyy, ptr %i.hyw, align 1, !tbaa !31
  %i.hyz = getelementptr inbounds nuw i8, ptr %i.hyw, i64 1 ; 2 uses
  store i8 0, ptr %i.hyz, align 1, !tbaa !31
  %i.hza = and i64 %i.hxw, 65280
  %.not13028 = icmp eq i64 %i.hza, 65280          ; 2 uses
  %.sroa.gep14373 = getelementptr inbounds nuw i8, ptr %i.hyw, i64 2 ; 2 uses
  %.neg13029.sroa.sel = select i1 %.not13028, ptr %.sroa.gep14373, ptr %i.hyz ; 2 uses
  %i.hzb = trunc i64 %i.hxw to i8
  store i8 %i.hzb, ptr %.neg13029.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15778 = getelementptr inbounds nuw i8, ptr %i.hyw, i64 3
  %.neg13029.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13028, ptr %.sroa.gep15778, ptr %.sroa.gep14373
  store i8 0, ptr %.neg13029.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.hzc = and i64 %i.hxw, 255
  %.not13030 = icmp eq i64 %i.hzc, 255
  %.neg13031 = select i1 %.not13030, i64 2, i64 1
  %i.hzd = getelementptr inbounds nuw i8, ptr %.neg13029.sroa.sel, i64 %.neg13031
  br label %bb.vd

bb.vc:                                            ; preds = %bb.va
  %i.hze = lshr i64 %i.hxw, 48
  %i.hzf = trunc i64 %i.hze to i8
  %i.hzg = getelementptr inbounds nuw i8, ptr %.243.lcssa, i64 1
  store i8 %i.hzf, ptr %i.hzg, align 1, !tbaa !31
  %i.hzh = lshr i64 %i.hxw, 40
  %i.hzi = trunc i64 %i.hzh to i8
  %i.hzj = getelementptr inbounds nuw i8, ptr %.243.lcssa, i64 2
  store i8 %i.hzi, ptr %i.hzj, align 1, !tbaa !31
  %i.hzk = lshr i64 %i.hxw, 32
  %i.hzl = trunc i64 %i.hzk to i8
  %i.hzm = getelementptr inbounds nuw i8, ptr %.243.lcssa, i64 3
  store i8 %i.hzl, ptr %i.hzm, align 1, !tbaa !31
  %i.hzn = lshr i64 %i.hxw, 24
  %i.hzo = trunc i64 %i.hzn to i8
  %i.hzp = getelementptr inbounds nuw i8, ptr %.243.lcssa, i64 4
  store i8 %i.hzo, ptr %i.hzp, align 1, !tbaa !31
  %i.hzq = lshr i64 %i.hxw, 16
  %i.hzr = trunc i64 %i.hzq to i8
  %i.hzs = getelementptr inbounds nuw i8, ptr %.243.lcssa, i64 5
  store i8 %i.hzr, ptr %i.hzs, align 1, !tbaa !31
  %i.hzt = lshr i64 %i.hxw, 8
  %i.hzu = trunc i64 %i.hzt to i8
  %i.hzv = getelementptr inbounds nuw i8, ptr %.243.lcssa, i64 6
  store i8 %i.hzu, ptr %i.hzv, align 1, !tbaa !31
  %i.hzw = trunc i64 %i.hxw to i8
  %i.hzx = getelementptr inbounds nuw i8, ptr %.243.lcssa, i64 7
  store i8 %i.hzw, ptr %i.hzx, align 1, !tbaa !31
  %i.hzy = getelementptr inbounds nuw i8, ptr %.243.lcssa, i64 8
  br label %bb.vd

bb.vd:                                            ; preds = %bb.vc, %bb.vb
  %.246 = phi ptr [ %i.hzd, %bb.vb ], [ %i.hzy, %bb.vc ]
  %i.hzz = add nsw i32 %i.hxp, 64
  %i.iaa = sext i32 %i.hxj to i64
  br label %bb.vf

bb.ve:                                            ; preds = %._crit_edge15006
  %i.iab = zext nneg i32 %i.hxo to i64
  %i.iac = shl i64 %.16111204.lcssa, %i.iab
  %i.iad = sext i32 %i.hxj to i64
  %i.iae = or i64 %i.iac, %i.iad
  br label %bb.vf

bb.vf:                                            ; preds = %bb.vd, %bb.ve, %bb.up
  %.16411461 = phi i32 [ %.16011457, %bb.up ], [ %i.hzz, %bb.vd ], [ %i.hxp, %bb.ve ] ; 3 uses
  %.16411207 = phi i64 [ %.16011203, %bb.up ], [ %i.iaa, %bb.vd ], [ %i.iae, %bb.ve ] ; 3 uses
  %.248 = phi ptr [ %.242, %bb.up ], [ %.246, %bb.vd ], [ %.243.lcssa, %bb.ve ] ; 3 uses
  %.81 = phi i32 [ %i.htn, %bb.up ], [ 0, %bb.vd ], [ 0, %bb.ve ] ; 4 uses
  %i.iaf = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.iag = load i16, ptr %i.iaf, align 2, !tbaa !79 ; 2 uses
  %i.iah = icmp eq i16 %i.iag, 0
  br i1 %i.iah, label %bb.vg, label %bb.vh

bb.vg:                                            ; preds = %bb.vf
  %i.iai = add nuw nsw i32 %.81, 16
  br label %bb.vw

bb.vh:                                            ; preds = %bb.vf
  %i.iaj = sext i16 %i.iag to i32                 ; 2 uses
  %i.iak = ashr i32 %i.iaj, 31                    ; 2 uses
  %i.ial = add nsw i32 %i.iak, %i.iaj             ; 2 uses
  %i.iam = xor i32 %i.ial, %i.iak
  %i.ian = sext i32 %i.iam to i64
  %i.iao = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.ian
  %i.iap = load i8, ptr %i.iao, align 1, !tbaa !31 ; 2 uses
  %i.iaq = zext i8 %i.iap to i32                  ; 4 uses
  %i.iar = icmp slt i32 %i.f, %i.iaq
  br i1 %i.iar, label %bb.vi, label %bb.vj

bb.vi:                                            ; preds = %bb.vh
  %i.ias = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.iat = load ptr, ptr %i.ias, align 8, !tbaa !7 ; 2 uses
  %i.iau = getelementptr inbounds nuw i8, ptr %i.iat, i64 40
  store i32 6, ptr %i.iau, align 8, !tbaa !26
  %i.iav = load ptr, ptr %i.iat, align 8, !tbaa !32
  tail call void %i.iav(ptr noundef nonnull %i.ias) #7
  br label %bb.vj

bb.vj:                                            ; preds = %bb.vi, %bb.vh
  %i.iaw = icmp samesign ugt i32 %.81, 255
  br i1 %i.iaw, label %.lr.ph15016, label %._crit_edge15017

.lr.ph15016:                                      ; preds = %bb.vj
  %i.iax = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.iay = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.vk

bb.vk:                                            ; preds = %.lr.ph15016, %bb.vq
  %.8215014 = phi i32 [ %.81, %.lr.ph15016 ], [ %i.iaz, %bb.vq ] ; 2 uses
  %.24915013 = phi ptr [ %.248, %.lr.ph15016 ], [ %.251, %bb.vq ] ; 13 uses
  %.1651120815012 = phi i64 [ %.16411207, %.lr.ph15016 ], [ %.16611209, %bb.vq ] ; 2 uses
  %.1651146215011 = phi i32 [ %.16411461, %.lr.ph15016 ], [ %.16611463, %bb.vq ] ; 2 uses
  %i.iaz = add nsw i32 %.8215014, -256            ; 2 uses
  %i.iba = load i8, ptr %i.iax, align 4, !tbaa !31
  %i.ibb = sext i8 %i.iba to i32                  ; 2 uses
  %i.ibc = sub nsw i32 %.1651146215011, %i.ibb    ; 4 uses
  %i.ibd = icmp slt i32 %i.ibc, 0
  %i.ibe = load i32, ptr %i.iay, align 4, !tbaa !3 ; 2 uses
  br i1 %i.ibd, label %bb.vl, label %bb.vp

bb.vl:                                            ; preds = %bb.vk
  %i.ibf = zext nneg i32 %.1651146215011 to i64
  %i.ibg = shl i64 %.1651120815012, %i.ibf        ; 11 uses
  %i.ibh = sub nsw i32 0, %i.ibc
  %i.ibi = lshr i32 %i.ibe, %i.ibh
  %i.ibj = zext nneg i32 %i.ibi to i64
  %i.ibk = or i64 %i.ibg, %i.ibj                  ; 14 uses
  %i.ibl = and i64 %i.ibk, -9187201950435737472
  %i.ibm = sub i64 -72340172838076674, %i.ibk
  %i.ibn = and i64 %i.ibl, %i.ibm
  %.not13067 = icmp eq i64 %i.ibn, 0
  %i.ibo = lshr i64 %i.ibg, 56                    ; 2 uses
  %i.ibp = trunc nuw i64 %i.ibo to i8
  store i8 %i.ibp, ptr %.24915013, align 1, !tbaa !31
  br i1 %.not13067, label %bb.vn, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.ibq = getelementptr inbounds nuw i8, ptr %.24915013, i64 1 ; 2 uses
  store i8 0, ptr %i.ibq, align 1, !tbaa !31
  %.not13068 = icmp eq i64 %i.ibo, 255            ; 2 uses
  %.sroa.gep14375 = getelementptr inbounds nuw i8, ptr %.24915013, i64 2 ; 2 uses
  %.neg13069.sroa.sel = select i1 %.not13068, ptr %.sroa.gep14375, ptr %i.ibq ; 2 uses
  %i.ibr = lshr i64 %i.ibg, 48
  %i.ibs = trunc i64 %i.ibr to i8
  store i8 %i.ibs, ptr %.neg13069.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15752 = getelementptr inbounds nuw i8, ptr %.24915013, i64 3
  %.neg13069.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13068, ptr %.sroa.gep15752, ptr %.sroa.gep14375
  store i8 0, ptr %.neg13069.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ibt = and i64 %i.ibg, 71776119061217280
  %.not13070 = icmp eq i64 %i.ibt, 71776119061217280
  %.neg13071 = select i1 %.not13070, i64 2, i64 1
  %i.ibu = getelementptr inbounds nuw i8, ptr %.neg13069.sroa.sel, i64 %.neg13071 ; 4 uses
  %i.ibv = lshr i64 %i.ibg, 40
  %i.ibw = trunc i64 %i.ibv to i8
  store i8 %i.ibw, ptr %i.ibu, align 1, !tbaa !31
  %i.ibx = getelementptr inbounds nuw i8, ptr %i.ibu, i64 1 ; 2 uses
  store i8 0, ptr %i.ibx, align 1, !tbaa !31
  %i.iby = and i64 %i.ibg, 280375465082880
  %.not13072 = icmp eq i64 %i.iby, 280375465082880 ; 2 uses
  %.sroa.gep14377 = getelementptr inbounds nuw i8, ptr %i.ibu, i64 2 ; 2 uses
  %.neg13073.sroa.sel = select i1 %.not13072, ptr %.sroa.gep14377, ptr %i.ibx ; 2 uses
  %i.ibz = lshr i64 %i.ibg, 32
  %i.ica = trunc i64 %i.ibz to i8
  store i8 %i.ica, ptr %.neg13073.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15758 = getelementptr inbounds nuw i8, ptr %i.ibu, i64 3
  %.neg13073.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13072, ptr %.sroa.gep15758, ptr %.sroa.gep14377
  store i8 0, ptr %.neg13073.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.icb = and i64 %i.ibg, 1095216660480
  %.not13074 = icmp eq i64 %i.icb, 1095216660480
  %.neg13075 = select i1 %.not13074, i64 2, i64 1
  %i.icc = getelementptr inbounds nuw i8, ptr %.neg13073.sroa.sel, i64 %.neg13075 ; 4 uses
  %i.icd = lshr i64 %i.ibk, 24
  %i.ice = trunc i64 %i.icd to i8
  store i8 %i.ice, ptr %i.icc, align 1, !tbaa !31
  %i.icf = getelementptr inbounds nuw i8, ptr %i.icc, i64 1 ; 2 uses
  store i8 0, ptr %i.icf, align 1, !tbaa !31
  %i.icg = and i64 %i.ibk, 4278190080
  %.not13076 = icmp eq i64 %i.icg, 4278190080     ; 2 uses
  %.sroa.gep14379 = getelementptr inbounds nuw i8, ptr %i.icc, i64 2 ; 2 uses
  %.neg13077.sroa.sel = select i1 %.not13076, ptr %.sroa.gep14379, ptr %i.icf ; 2 uses
  %i.ich = lshr i64 %i.ibk, 16
  %i.ici = trunc i64 %i.ich to i8
  store i8 %i.ici, ptr %.neg13077.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15756 = getelementptr inbounds nuw i8, ptr %i.icc, i64 3
  %.neg13077.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13076, ptr %.sroa.gep15756, ptr %.sroa.gep14379
  store i8 0, ptr %.neg13077.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.icj = and i64 %i.ibk, 16711680
  %.not13078 = icmp eq i64 %i.icj, 16711680
  %.neg13079 = select i1 %.not13078, i64 2, i64 1
  %i.ick = getelementptr inbounds nuw i8, ptr %.neg13077.sroa.sel, i64 %.neg13079 ; 4 uses
  %i.icl = lshr i64 %i.ibk, 8
  %i.icm = trunc i64 %i.icl to i8
  store i8 %i.icm, ptr %i.ick, align 1, !tbaa !31
  %i.icn = getelementptr inbounds nuw i8, ptr %i.ick, i64 1 ; 2 uses
  store i8 0, ptr %i.icn, align 1, !tbaa !31
  %i.ico = and i64 %i.ibk, 65280
  %.not13080 = icmp eq i64 %i.ico, 65280          ; 2 uses
  %.sroa.gep14381 = getelementptr inbounds nuw i8, ptr %i.ick, i64 2 ; 2 uses
  %.neg13081.sroa.sel = select i1 %.not13080, ptr %.sroa.gep14381, ptr %i.icn ; 2 uses
  %i.icp = trunc i64 %i.ibk to i8
  store i8 %i.icp, ptr %.neg13081.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15754 = getelementptr inbounds nuw i8, ptr %i.ick, i64 3
  %.neg13081.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13080, ptr %.sroa.gep15754, ptr %.sroa.gep14381
  store i8 0, ptr %.neg13081.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.icq = and i64 %i.ibk, 255
  %.not13082 = icmp eq i64 %i.icq, 255
  %.neg13083 = select i1 %.not13082, i64 2, i64 1
  %i.icr = getelementptr inbounds nuw i8, ptr %.neg13081.sroa.sel, i64 %.neg13083
  br label %bb.vo

bb.vn:                                            ; preds = %bb.vl
  %i.ics = lshr i64 %i.ibg, 48
  %i.ict = trunc i64 %i.ics to i8
  %i.icu = getelementptr inbounds nuw i8, ptr %.24915013, i64 1
  store i8 %i.ict, ptr %i.icu, align 1, !tbaa !31
  %i.icv = lshr i64 %i.ibg, 40
  %i.icw = trunc i64 %i.icv to i8
  %i.icx = getelementptr inbounds nuw i8, ptr %.24915013, i64 2
  store i8 %i.icw, ptr %i.icx, align 1, !tbaa !31
  %i.icy = lshr i64 %i.ibg, 32
  %i.icz = trunc i64 %i.icy to i8
  %i.ida = getelementptr inbounds nuw i8, ptr %.24915013, i64 3
  store i8 %i.icz, ptr %i.ida, align 1, !tbaa !31
  %i.idb = lshr i64 %i.ibk, 24
  %i.idc = trunc i64 %i.idb to i8
  %i.idd = getelementptr inbounds nuw i8, ptr %.24915013, i64 4
  store i8 %i.idc, ptr %i.idd, align 1, !tbaa !31
  %i.ide = lshr i64 %i.ibk, 16
  %i.idf = trunc i64 %i.ide to i8
  %i.idg = getelementptr inbounds nuw i8, ptr %.24915013, i64 5
  store i8 %i.idf, ptr %i.idg, align 1, !tbaa !31
  %i.idh = lshr i64 %i.ibk, 8
  %i.idi = trunc i64 %i.idh to i8
  %i.idj = getelementptr inbounds nuw i8, ptr %.24915013, i64 6
  store i8 %i.idi, ptr %i.idj, align 1, !tbaa !31
  %i.idk = trunc i64 %i.ibk to i8
  %i.idl = getelementptr inbounds nuw i8, ptr %.24915013, i64 7
  store i8 %i.idk, ptr %i.idl, align 1, !tbaa !31
  %i.idm = getelementptr inbounds nuw i8, ptr %.24915013, i64 8
  br label %bb.vo

bb.vo:                                            ; preds = %bb.vn, %bb.vm
  %.250 = phi ptr [ %i.icr, %bb.vm ], [ %i.idm, %bb.vn ]
  %i.idn = add nsw i32 %i.ibc, 64
  %i.ido = load i32, ptr %i.iay, align 4, !tbaa !3
  %i.idp = zext i32 %i.ido to i64
  br label %bb.vq

bb.vp:                                            ; preds = %bb.vk
  %i.idq = zext nneg i32 %i.ibb to i64
  %i.idr = shl i64 %.1651120815012, %i.idq
  %i.ids = zext i32 %i.ibe to i64
  %i.idt = or i64 %i.idr, %i.ids
  br label %bb.vq

bb.vq:                                            ; preds = %bb.vp, %bb.vo
  %.16611463 = phi i32 [ %i.idn, %bb.vo ], [ %i.ibc, %bb.vp ] ; 2 uses
  %.16611209 = phi i64 [ %i.idp, %bb.vo ], [ %i.idt, %bb.vp ] ; 2 uses
  %.251 = phi ptr [ %.250, %bb.vo ], [ %.24915013, %bb.vp ] ; 2 uses
  %i.idu = icmp samesign ugt i32 %.8215014, 511
  br i1 %i.idu, label %bb.vk, label %._crit_edge15017, !llvm.loop !114

._crit_edge15017:                                 ; preds = %bb.vq, %bb.vj
  %.16511462.lcssa = phi i32 [ %.16411461, %bb.vj ], [ %.16611463, %bb.vq ] ; 2 uses
  %.16511208.lcssa = phi i64 [ %.16411207, %bb.vj ], [ %.16611209, %bb.vq ] ; 2 uses
  %.249.lcssa = phi ptr [ %.248, %bb.vj ], [ %.251, %bb.vq ] ; 13 uses
  %.82.lcssa = phi i32 [ %.81, %bb.vj ], [ %i.iaz, %bb.vq ]
  %i.idv = add nuw nsw i32 %.82.lcssa, %i.iaq
  %i.idw = zext nneg i8 %i.iap to i64
  %notmask13049 = shl nsw i64 -1, %i.idw
  %i.idx = trunc i64 %notmask13049 to i32
  %i.idy = xor i32 %i.idx, -1
  %i.idz = and i32 %i.ial, %i.idy
  %i.iea = zext nneg i32 %i.idv to i64            ; 2 uses
  %i.ieb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.iea
  %i.iec = load i32, ptr %i.ieb, align 4, !tbaa !3
  %i.ied = shl i32 %i.iec, %i.iaq
  %i.iee = or i32 %i.ied, %i.idz                  ; 3 uses
  %i.ief = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.ieg = getelementptr inbounds nuw i8, ptr %i.ief, i64 %i.iea
  %i.ieh = load i8, ptr %i.ieg, align 1, !tbaa !31
  %i.iei = sext i8 %i.ieh to i32
  %i.iej = add nsw i32 %i.iei, %i.iaq             ; 2 uses
  %i.iek = sub nsw i32 %.16511462.lcssa, %i.iej   ; 4 uses
  %i.iel = icmp slt i32 %i.iek, 0
  br i1 %i.iel, label %bb.vr, label %bb.vv

bb.vr:                                            ; preds = %._crit_edge15017
  %i.iem = zext nneg i32 %.16511462.lcssa to i64
  %i.ien = shl i64 %.16511208.lcssa, %i.iem
  %i.ieo = sub nsw i32 0, %i.iek
  %i.iep = ashr i32 %i.iee, %i.ieo
  %i.ieq = sext i32 %i.iep to i64
  %i.ier = or i64 %i.ien, %i.ieq                  ; 24 uses
  %i.ies = and i64 %i.ier, -9187201950435737472
  %i.iet = sub i64 -72340172838076674, %i.ier
  %i.ieu = and i64 %i.ies, %i.iet
  %.not13050 = icmp eq i64 %i.ieu, 0
  %i.iev = lshr i64 %i.ier, 56                    ; 2 uses
  %i.iew = trunc nuw i64 %i.iev to i8
  store i8 %i.iew, ptr %.249.lcssa, align 1, !tbaa !31
  br i1 %.not13050, label %bb.vt, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.iex = getelementptr inbounds nuw i8, ptr %.249.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.iex, align 1, !tbaa !31
  %.not13051 = icmp eq i64 %i.iev, 255            ; 2 uses
  %.sroa.gep14383 = getelementptr inbounds nuw i8, ptr %.249.lcssa, i64 2 ; 2 uses
  %.neg13052.sroa.sel = select i1 %.not13051, ptr %.sroa.gep14383, ptr %i.iex ; 2 uses
  %i.iey = lshr i64 %i.ier, 48
  %i.iez = trunc i64 %i.iey to i8
  store i8 %i.iez, ptr %.neg13052.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15760 = getelementptr inbounds nuw i8, ptr %.249.lcssa, i64 3
  %.neg13052.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13051, ptr %.sroa.gep15760, ptr %.sroa.gep14383
  store i8 0, ptr %.neg13052.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ifa = and i64 %i.ier, 71776119061217280
  %.not13053 = icmp eq i64 %i.ifa, 71776119061217280
  %.neg13054 = select i1 %.not13053, i64 2, i64 1
  %i.ifb = getelementptr inbounds nuw i8, ptr %.neg13052.sroa.sel, i64 %.neg13054 ; 4 uses
  %i.ifc = lshr i64 %i.ier, 40
  %i.ifd = trunc i64 %i.ifc to i8
  store i8 %i.ifd, ptr %i.ifb, align 1, !tbaa !31
  %i.ife = getelementptr inbounds nuw i8, ptr %i.ifb, i64 1 ; 2 uses
  store i8 0, ptr %i.ife, align 1, !tbaa !31
  %i.iff = and i64 %i.ier, 280375465082880
  %.not13055 = icmp eq i64 %i.iff, 280375465082880 ; 2 uses
  %.sroa.gep14385 = getelementptr inbounds nuw i8, ptr %i.ifb, i64 2 ; 2 uses
  %.neg13056.sroa.sel = select i1 %.not13055, ptr %.sroa.gep14385, ptr %i.ife ; 2 uses
  %i.ifg = lshr i64 %i.ier, 32
  %i.ifh = trunc i64 %i.ifg to i8
  store i8 %i.ifh, ptr %.neg13056.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15766 = getelementptr inbounds nuw i8, ptr %i.ifb, i64 3
  %.neg13056.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13055, ptr %.sroa.gep15766, ptr %.sroa.gep14385
  store i8 0, ptr %.neg13056.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ifi = and i64 %i.ier, 1095216660480
  %.not13057 = icmp eq i64 %i.ifi, 1095216660480
  %.neg13058 = select i1 %.not13057, i64 2, i64 1
  %i.ifj = getelementptr inbounds nuw i8, ptr %.neg13056.sroa.sel, i64 %.neg13058 ; 4 uses
  %i.ifk = lshr i64 %i.ier, 24
  %i.ifl = trunc i64 %i.ifk to i8
  store i8 %i.ifl, ptr %i.ifj, align 1, !tbaa !31
  %i.ifm = getelementptr inbounds nuw i8, ptr %i.ifj, i64 1 ; 2 uses
  store i8 0, ptr %i.ifm, align 1, !tbaa !31
  %i.ifn = and i64 %i.ier, 4278190080
  %.not13059 = icmp eq i64 %i.ifn, 4278190080     ; 2 uses
  %.sroa.gep14387 = getelementptr inbounds nuw i8, ptr %i.ifj, i64 2 ; 2 uses
  %.neg13060.sroa.sel = select i1 %.not13059, ptr %.sroa.gep14387, ptr %i.ifm ; 2 uses
  %i.ifo = lshr i64 %i.ier, 16
  %i.ifp = trunc i64 %i.ifo to i8
  store i8 %i.ifp, ptr %.neg13060.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15764 = getelementptr inbounds nuw i8, ptr %i.ifj, i64 3
  %.neg13060.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13059, ptr %.sroa.gep15764, ptr %.sroa.gep14387
  store i8 0, ptr %.neg13060.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ifq = and i64 %i.ier, 16711680
  %.not13061 = icmp eq i64 %i.ifq, 16711680
  %.neg13062 = select i1 %.not13061, i64 2, i64 1
  %i.ifr = getelementptr inbounds nuw i8, ptr %.neg13060.sroa.sel, i64 %.neg13062 ; 4 uses
  %i.ifs = lshr i64 %i.ier, 8
  %i.ift = trunc i64 %i.ifs to i8
  store i8 %i.ift, ptr %i.ifr, align 1, !tbaa !31
  %i.ifu = getelementptr inbounds nuw i8, ptr %i.ifr, i64 1 ; 2 uses
  store i8 0, ptr %i.ifu, align 1, !tbaa !31
  %i.ifv = and i64 %i.ier, 65280
  %.not13063 = icmp eq i64 %i.ifv, 65280          ; 2 uses
  %.sroa.gep14389 = getelementptr inbounds nuw i8, ptr %i.ifr, i64 2 ; 2 uses
  %.neg13064.sroa.sel = select i1 %.not13063, ptr %.sroa.gep14389, ptr %i.ifu ; 2 uses
  %i.ifw = trunc i64 %i.ier to i8
  store i8 %i.ifw, ptr %.neg13064.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15762 = getelementptr inbounds nuw i8, ptr %i.ifr, i64 3
  %.neg13064.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13063, ptr %.sroa.gep15762, ptr %.sroa.gep14389
  store i8 0, ptr %.neg13064.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ifx = and i64 %i.ier, 255
  %.not13065 = icmp eq i64 %i.ifx, 255
  %.neg13066 = select i1 %.not13065, i64 2, i64 1
  %i.ify = getelementptr inbounds nuw i8, ptr %.neg13064.sroa.sel, i64 %.neg13066
  br label %bb.vu

bb.vt:                                            ; preds = %bb.vr
  %i.ifz = lshr i64 %i.ier, 48
  %i.iga = trunc i64 %i.ifz to i8
  %i.igb = getelementptr inbounds nuw i8, ptr %.249.lcssa, i64 1
  store i8 %i.iga, ptr %i.igb, align 1, !tbaa !31
  %i.igc = lshr i64 %i.ier, 40
  %i.igd = trunc i64 %i.igc to i8
  %i.ige = getelementptr inbounds nuw i8, ptr %.249.lcssa, i64 2
  store i8 %i.igd, ptr %i.ige, align 1, !tbaa !31
  %i.igf = lshr i64 %i.ier, 32
  %i.igg = trunc i64 %i.igf to i8
  %i.igh = getelementptr inbounds nuw i8, ptr %.249.lcssa, i64 3
  store i8 %i.igg, ptr %i.igh, align 1, !tbaa !31
  %i.igi = lshr i64 %i.ier, 24
  %i.igj = trunc i64 %i.igi to i8
  %i.igk = getelementptr inbounds nuw i8, ptr %.249.lcssa, i64 4
  store i8 %i.igj, ptr %i.igk, align 1, !tbaa !31
  %i.igl = lshr i64 %i.ier, 16
  %i.igm = trunc i64 %i.igl to i8
  %i.ign = getelementptr inbounds nuw i8, ptr %.249.lcssa, i64 5
  store i8 %i.igm, ptr %i.ign, align 1, !tbaa !31
  %i.igo = lshr i64 %i.ier, 8
  %i.igp = trunc i64 %i.igo to i8
  %i.igq = getelementptr inbounds nuw i8, ptr %.249.lcssa, i64 6
  store i8 %i.igp, ptr %i.igq, align 1, !tbaa !31
  %i.igr = trunc i64 %i.ier to i8
  %i.igs = getelementptr inbounds nuw i8, ptr %.249.lcssa, i64 7
  store i8 %i.igr, ptr %i.igs, align 1, !tbaa !31
  %i.igt = getelementptr inbounds nuw i8, ptr %.249.lcssa, i64 8
  br label %bb.vu

bb.vu:                                            ; preds = %bb.vt, %bb.vs
  %.252 = phi ptr [ %i.ify, %bb.vs ], [ %i.igt, %bb.vt ]
  %i.igu = add nsw i32 %i.iek, 64
  %i.igv = sext i32 %i.iee to i64
  br label %bb.vw

bb.vv:                                            ; preds = %._crit_edge15017
  %i.igw = zext nneg i32 %i.iej to i64
  %i.igx = shl i64 %.16511208.lcssa, %i.igw
  %i.igy = sext i32 %i.iee to i64
  %i.igz = or i64 %i.igx, %i.igy
  br label %bb.vw

bb.vw:                                            ; preds = %bb.vu, %bb.vv, %bb.vg
  %.16811465 = phi i32 [ %.16411461, %bb.vg ], [ %i.igu, %bb.vu ], [ %i.iek, %bb.vv ] ; 3 uses
  %.16811211 = phi i64 [ %.16411207, %bb.vg ], [ %i.igv, %bb.vu ], [ %i.igz, %bb.vv ] ; 3 uses
  %.254 = phi ptr [ %.248, %bb.vg ], [ %.252, %bb.vu ], [ %.249.lcssa, %bb.vv ] ; 3 uses
  %.83 = phi i32 [ %i.iai, %bb.vg ], [ 0, %bb.vu ], [ 0, %bb.vv ] ; 4 uses
  %i.iha = getelementptr inbounds nuw i8, ptr %1, i64 46
  %i.ihb = load i16, ptr %i.iha, align 2, !tbaa !79 ; 2 uses
  %i.ihc = icmp eq i16 %i.ihb, 0
  br i1 %i.ihc, label %bb.vx, label %bb.vy

bb.vx:                                            ; preds = %bb.vw
  %i.ihd = add nuw nsw i32 %.83, 16
  br label %bb.wn

bb.vy:                                            ; preds = %bb.vw
  %i.ihe = sext i16 %i.ihb to i32                 ; 2 uses
  %i.ihf = ashr i32 %i.ihe, 31                    ; 2 uses
  %i.ihg = add nsw i32 %i.ihf, %i.ihe             ; 2 uses
  %i.ihh = xor i32 %i.ihg, %i.ihf
  %i.ihi = sext i32 %i.ihh to i64
  %i.ihj = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.ihi
  %i.ihk = load i8, ptr %i.ihj, align 1, !tbaa !31 ; 2 uses
  %i.ihl = zext i8 %i.ihk to i32                  ; 4 uses
  %i.ihm = icmp slt i32 %i.f, %i.ihl
  br i1 %i.ihm, label %bb.vz, label %bb.wa

bb.vz:                                            ; preds = %bb.vy
  %i.ihn = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.iho = load ptr, ptr %i.ihn, align 8, !tbaa !7 ; 2 uses
  %i.ihp = getelementptr inbounds nuw i8, ptr %i.iho, i64 40
  store i32 6, ptr %i.ihp, align 8, !tbaa !26
  %i.ihq = load ptr, ptr %i.iho, align 8, !tbaa !32
  tail call void %i.ihq(ptr noundef nonnull %i.ihn) #7
  br label %bb.wa

bb.wa:                                            ; preds = %bb.vz, %bb.vy
  %i.ihr = icmp samesign ugt i32 %.83, 255
  br i1 %i.ihr, label %.lr.ph15027, label %._crit_edge15028

.lr.ph15027:                                      ; preds = %bb.wa
  %i.ihs = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.iht = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.wb

bb.wb:                                            ; preds = %.lr.ph15027, %bb.wh
  %.8415025 = phi i32 [ %.83, %.lr.ph15027 ], [ %i.ihu, %bb.wh ] ; 2 uses
  %.25515024 = phi ptr [ %.254, %.lr.ph15027 ], [ %.257, %bb.wh ] ; 13 uses
  %.1691121215023 = phi i64 [ %.16811211, %.lr.ph15027 ], [ %.17011213, %bb.wh ] ; 2 uses
  %.1691146615022 = phi i32 [ %.16811465, %.lr.ph15027 ], [ %.17011467, %bb.wh ] ; 2 uses
  %i.ihu = add nsw i32 %.8415025, -256            ; 2 uses
  %i.ihv = load i8, ptr %i.ihs, align 4, !tbaa !31
  %i.ihw = sext i8 %i.ihv to i32                  ; 2 uses
  %i.ihx = sub nsw i32 %.1691146615022, %i.ihw    ; 4 uses
  %i.ihy = icmp slt i32 %i.ihx, 0
  %i.ihz = load i32, ptr %i.iht, align 4, !tbaa !3 ; 2 uses
  br i1 %i.ihy, label %bb.wc, label %bb.wg

bb.wc:                                            ; preds = %bb.wb
  %i.iia = zext nneg i32 %.1691146615022 to i64
  %i.iib = shl i64 %.1691121215023, %i.iia        ; 11 uses
  %i.iic = sub nsw i32 0, %i.ihx
  %i.iid = lshr i32 %i.ihz, %i.iic
  %i.iie = zext nneg i32 %i.iid to i64
  %i.iif = or i64 %i.iib, %i.iie                  ; 14 uses
  %i.iig = and i64 %i.iif, -9187201950435737472
  %i.iih = sub i64 -72340172838076674, %i.iif
  %i.iii = and i64 %i.iig, %i.iih
  %.not13102 = icmp eq i64 %i.iii, 0
  %i.iij = lshr i64 %i.iib, 56                    ; 2 uses
  %i.iik = trunc nuw i64 %i.iij to i8
  store i8 %i.iik, ptr %.25515024, align 1, !tbaa !31
  br i1 %.not13102, label %bb.we, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.iil = getelementptr inbounds nuw i8, ptr %.25515024, i64 1 ; 2 uses
  store i8 0, ptr %i.iil, align 1, !tbaa !31
  %.not13103 = icmp eq i64 %i.iij, 255            ; 2 uses
  %.sroa.gep14391 = getelementptr inbounds nuw i8, ptr %.25515024, i64 2 ; 2 uses
  %.neg13104.sroa.sel = select i1 %.not13103, ptr %.sroa.gep14391, ptr %i.iil ; 2 uses
  %i.iim = lshr i64 %i.iib, 48
  %i.iin = trunc i64 %i.iim to i8
  store i8 %i.iin, ptr %.neg13104.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15736 = getelementptr inbounds nuw i8, ptr %.25515024, i64 3
  %.neg13104.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13103, ptr %.sroa.gep15736, ptr %.sroa.gep14391
  store i8 0, ptr %.neg13104.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.iio = and i64 %i.iib, 71776119061217280
  %.not13105 = icmp eq i64 %i.iio, 71776119061217280
  %.neg13106 = select i1 %.not13105, i64 2, i64 1
  %i.iip = getelementptr inbounds nuw i8, ptr %.neg13104.sroa.sel, i64 %.neg13106 ; 4 uses
  %i.iiq = lshr i64 %i.iib, 40
  %i.iir = trunc i64 %i.iiq to i8
  store i8 %i.iir, ptr %i.iip, align 1, !tbaa !31
  %i.iis = getelementptr inbounds nuw i8, ptr %i.iip, i64 1 ; 2 uses
  store i8 0, ptr %i.iis, align 1, !tbaa !31
  %i.iit = and i64 %i.iib, 280375465082880
  %.not13107 = icmp eq i64 %i.iit, 280375465082880 ; 2 uses
  %.sroa.gep14393 = getelementptr inbounds nuw i8, ptr %i.iip, i64 2 ; 2 uses
  %.neg13108.sroa.sel = select i1 %.not13107, ptr %.sroa.gep14393, ptr %i.iis ; 2 uses
  %i.iiu = lshr i64 %i.iib, 32
  %i.iiv = trunc i64 %i.iiu to i8
  store i8 %i.iiv, ptr %.neg13108.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15742 = getelementptr inbounds nuw i8, ptr %i.iip, i64 3
  %.neg13108.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13107, ptr %.sroa.gep15742, ptr %.sroa.gep14393
  store i8 0, ptr %.neg13108.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.iiw = and i64 %i.iib, 1095216660480
  %.not13109 = icmp eq i64 %i.iiw, 1095216660480
  %.neg13110 = select i1 %.not13109, i64 2, i64 1
  %i.iix = getelementptr inbounds nuw i8, ptr %.neg13108.sroa.sel, i64 %.neg13110 ; 4 uses
  %i.iiy = lshr i64 %i.iif, 24
  %i.iiz = trunc i64 %i.iiy to i8
  store i8 %i.iiz, ptr %i.iix, align 1, !tbaa !31
  %i.ija = getelementptr inbounds nuw i8, ptr %i.iix, i64 1 ; 2 uses
  store i8 0, ptr %i.ija, align 1, !tbaa !31
  %i.ijb = and i64 %i.iif, 4278190080
  %.not13111 = icmp eq i64 %i.ijb, 4278190080     ; 2 uses
  %.sroa.gep14395 = getelementptr inbounds nuw i8, ptr %i.iix, i64 2 ; 2 uses
  %.neg13112.sroa.sel = select i1 %.not13111, ptr %.sroa.gep14395, ptr %i.ija ; 2 uses
  %i.ijc = lshr i64 %i.iif, 16
  %i.ijd = trunc i64 %i.ijc to i8
  store i8 %i.ijd, ptr %.neg13112.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15740 = getelementptr inbounds nuw i8, ptr %i.iix, i64 3
  %.neg13112.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13111, ptr %.sroa.gep15740, ptr %.sroa.gep14395
  store i8 0, ptr %.neg13112.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ije = and i64 %i.iif, 16711680
  %.not13113 = icmp eq i64 %i.ije, 16711680
  %.neg13114 = select i1 %.not13113, i64 2, i64 1
  %i.ijf = getelementptr inbounds nuw i8, ptr %.neg13112.sroa.sel, i64 %.neg13114 ; 4 uses
  %i.ijg = lshr i64 %i.iif, 8
  %i.ijh = trunc i64 %i.ijg to i8
  store i8 %i.ijh, ptr %i.ijf, align 1, !tbaa !31
  %i.iji = getelementptr inbounds nuw i8, ptr %i.ijf, i64 1 ; 2 uses
  store i8 0, ptr %i.iji, align 1, !tbaa !31
  %i.ijj = and i64 %i.iif, 65280
  %.not13115 = icmp eq i64 %i.ijj, 65280          ; 2 uses
  %.sroa.gep14397 = getelementptr inbounds nuw i8, ptr %i.ijf, i64 2 ; 2 uses
  %.neg13116.sroa.sel = select i1 %.not13115, ptr %.sroa.gep14397, ptr %i.iji ; 2 uses
  %i.ijk = trunc i64 %i.iif to i8
  store i8 %i.ijk, ptr %.neg13116.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15738 = getelementptr inbounds nuw i8, ptr %i.ijf, i64 3
  %.neg13116.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13115, ptr %.sroa.gep15738, ptr %.sroa.gep14397
  store i8 0, ptr %.neg13116.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ijl = and i64 %i.iif, 255
  %.not13117 = icmp eq i64 %i.ijl, 255
  %.neg13118 = select i1 %.not13117, i64 2, i64 1
  %i.ijm = getelementptr inbounds nuw i8, ptr %.neg13116.sroa.sel, i64 %.neg13118
  br label %bb.wf

bb.we:                                            ; preds = %bb.wc
  %i.ijn = lshr i64 %i.iib, 48
  %i.ijo = trunc i64 %i.ijn to i8
  %i.ijp = getelementptr inbounds nuw i8, ptr %.25515024, i64 1
  store i8 %i.ijo, ptr %i.ijp, align 1, !tbaa !31
  %i.ijq = lshr i64 %i.iib, 40
  %i.ijr = trunc i64 %i.ijq to i8
  %i.ijs = getelementptr inbounds nuw i8, ptr %.25515024, i64 2
  store i8 %i.ijr, ptr %i.ijs, align 1, !tbaa !31
  %i.ijt = lshr i64 %i.iib, 32
  %i.iju = trunc i64 %i.ijt to i8
  %i.ijv = getelementptr inbounds nuw i8, ptr %.25515024, i64 3
  store i8 %i.iju, ptr %i.ijv, align 1, !tbaa !31
  %i.ijw = lshr i64 %i.iif, 24
  %i.ijx = trunc i64 %i.ijw to i8
  %i.ijy = getelementptr inbounds nuw i8, ptr %.25515024, i64 4
  store i8 %i.ijx, ptr %i.ijy, align 1, !tbaa !31
  %i.ijz = lshr i64 %i.iif, 16
  %i.ika = trunc i64 %i.ijz to i8
  %i.ikb = getelementptr inbounds nuw i8, ptr %.25515024, i64 5
  store i8 %i.ika, ptr %i.ikb, align 1, !tbaa !31
  %i.ikc = lshr i64 %i.iif, 8
  %i.ikd = trunc i64 %i.ikc to i8
  %i.ike = getelementptr inbounds nuw i8, ptr %.25515024, i64 6
  store i8 %i.ikd, ptr %i.ike, align 1, !tbaa !31
  %i.ikf = trunc i64 %i.iif to i8
  %i.ikg = getelementptr inbounds nuw i8, ptr %.25515024, i64 7
  store i8 %i.ikf, ptr %i.ikg, align 1, !tbaa !31
  %i.ikh = getelementptr inbounds nuw i8, ptr %.25515024, i64 8
  br label %bb.wf

bb.wf:                                            ; preds = %bb.we, %bb.wd
  %.256 = phi ptr [ %i.ijm, %bb.wd ], [ %i.ikh, %bb.we ]
  %i.iki = add nsw i32 %i.ihx, 64
  %i.ikj = load i32, ptr %i.iht, align 4, !tbaa !3
  %i.ikk = zext i32 %i.ikj to i64
  br label %bb.wh

bb.wg:                                            ; preds = %bb.wb
  %i.ikl = zext nneg i32 %i.ihw to i64
  %i.ikm = shl i64 %.1691121215023, %i.ikl
  %i.ikn = zext i32 %i.ihz to i64
  %i.iko = or i64 %i.ikm, %i.ikn
  br label %bb.wh

bb.wh:                                            ; preds = %bb.wg, %bb.wf
  %.17011467 = phi i32 [ %i.iki, %bb.wf ], [ %i.ihx, %bb.wg ] ; 2 uses
  %.17011213 = phi i64 [ %i.ikk, %bb.wf ], [ %i.iko, %bb.wg ] ; 2 uses
  %.257 = phi ptr [ %.256, %bb.wf ], [ %.25515024, %bb.wg ] ; 2 uses
  %i.ikp = icmp samesign ugt i32 %.8415025, 511
  br i1 %i.ikp, label %bb.wb, label %._crit_edge15028, !llvm.loop !115

._crit_edge15028:                                 ; preds = %bb.wh, %bb.wa
  %.16911466.lcssa = phi i32 [ %.16811465, %bb.wa ], [ %.17011467, %bb.wh ] ; 2 uses
  %.16911212.lcssa = phi i64 [ %.16811211, %bb.wa ], [ %.17011213, %bb.wh ] ; 2 uses
  %.255.lcssa = phi ptr [ %.254, %bb.wa ], [ %.257, %bb.wh ] ; 13 uses
  %.84.lcssa = phi i32 [ %.83, %bb.wa ], [ %i.ihu, %bb.wh ]
  %i.ikq = add nuw nsw i32 %.84.lcssa, %i.ihl
  %i.ikr = zext nneg i8 %i.ihk to i64
  %notmask13084 = shl nsw i64 -1, %i.ikr
  %i.iks = trunc i64 %notmask13084 to i32
  %i.ikt = xor i32 %i.iks, -1
  %i.iku = and i32 %i.ihg, %i.ikt
  %i.ikv = zext nneg i32 %i.ikq to i64            ; 2 uses
  %i.ikw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ikv
  %i.ikx = load i32, ptr %i.ikw, align 4, !tbaa !3
  %i.iky = shl i32 %i.ikx, %i.ihl
  %i.ikz = or i32 %i.iky, %i.iku                  ; 3 uses
  %i.ila = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.ilb = getelementptr inbounds nuw i8, ptr %i.ila, i64 %i.ikv
  %i.ilc = load i8, ptr %i.ilb, align 1, !tbaa !31
  %i.ild = sext i8 %i.ilc to i32
  %i.ile = add nsw i32 %i.ild, %i.ihl             ; 2 uses
  %i.ilf = sub nsw i32 %.16911466.lcssa, %i.ile   ; 4 uses
  %i.ilg = icmp slt i32 %i.ilf, 0
  br i1 %i.ilg, label %bb.wi, label %bb.wm

bb.wi:                                            ; preds = %._crit_edge15028
  %i.ilh = zext nneg i32 %.16911466.lcssa to i64
  %i.ili = shl i64 %.16911212.lcssa, %i.ilh
  %i.ilj = sub nsw i32 0, %i.ilf
  %i.ilk = ashr i32 %i.ikz, %i.ilj
  %i.ill = sext i32 %i.ilk to i64
  %i.ilm = or i64 %i.ili, %i.ill                  ; 24 uses
  %i.iln = and i64 %i.ilm, -9187201950435737472
  %i.ilo = sub i64 -72340172838076674, %i.ilm
  %i.ilp = and i64 %i.iln, %i.ilo
  %.not13085 = icmp eq i64 %i.ilp, 0
  %i.ilq = lshr i64 %i.ilm, 56                    ; 2 uses
  %i.ilr = trunc nuw i64 %i.ilq to i8
  store i8 %i.ilr, ptr %.255.lcssa, align 1, !tbaa !31
  br i1 %.not13085, label %bb.wk, label %bb.wj

bb.wj:                                            ; preds = %bb.wi
  %i.ils = getelementptr inbounds nuw i8, ptr %.255.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.ils, align 1, !tbaa !31
  %.not13086 = icmp eq i64 %i.ilq, 255            ; 2 uses
  %.sroa.gep14399 = getelementptr inbounds nuw i8, ptr %.255.lcssa, i64 2 ; 2 uses
  %.neg13087.sroa.sel = select i1 %.not13086, ptr %.sroa.gep14399, ptr %i.ils ; 2 uses
  %i.ilt = lshr i64 %i.ilm, 48
  %i.ilu = trunc i64 %i.ilt to i8
  store i8 %i.ilu, ptr %.neg13087.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15744 = getelementptr inbounds nuw i8, ptr %.255.lcssa, i64 3
  %.neg13087.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13086, ptr %.sroa.gep15744, ptr %.sroa.gep14399
  store i8 0, ptr %.neg13087.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ilv = and i64 %i.ilm, 71776119061217280
  %.not13088 = icmp eq i64 %i.ilv, 71776119061217280
  %.neg13089 = select i1 %.not13088, i64 2, i64 1
  %i.ilw = getelementptr inbounds nuw i8, ptr %.neg13087.sroa.sel, i64 %.neg13089 ; 4 uses
  %i.ilx = lshr i64 %i.ilm, 40
  %i.ily = trunc i64 %i.ilx to i8
  store i8 %i.ily, ptr %i.ilw, align 1, !tbaa !31
  %i.ilz = getelementptr inbounds nuw i8, ptr %i.ilw, i64 1 ; 2 uses
  store i8 0, ptr %i.ilz, align 1, !tbaa !31
  %i.ima = and i64 %i.ilm, 280375465082880
  %.not13090 = icmp eq i64 %i.ima, 280375465082880 ; 2 uses
  %.sroa.gep14401 = getelementptr inbounds nuw i8, ptr %i.ilw, i64 2 ; 2 uses
  %.neg13091.sroa.sel = select i1 %.not13090, ptr %.sroa.gep14401, ptr %i.ilz ; 2 uses
  %i.imb = lshr i64 %i.ilm, 32
  %i.imc = trunc i64 %i.imb to i8
  store i8 %i.imc, ptr %.neg13091.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15750 = getelementptr inbounds nuw i8, ptr %i.ilw, i64 3
  %.neg13091.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13090, ptr %.sroa.gep15750, ptr %.sroa.gep14401
  store i8 0, ptr %.neg13091.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.imd = and i64 %i.ilm, 1095216660480
  %.not13092 = icmp eq i64 %i.imd, 1095216660480
  %.neg13093 = select i1 %.not13092, i64 2, i64 1
  %i.ime = getelementptr inbounds nuw i8, ptr %.neg13091.sroa.sel, i64 %.neg13093 ; 4 uses
  %i.imf = lshr i64 %i.ilm, 24
  %i.img = trunc i64 %i.imf to i8
  store i8 %i.img, ptr %i.ime, align 1, !tbaa !31
  %i.imh = getelementptr inbounds nuw i8, ptr %i.ime, i64 1 ; 2 uses
  store i8 0, ptr %i.imh, align 1, !tbaa !31
  %i.imi = and i64 %i.ilm, 4278190080
  %.not13094 = icmp eq i64 %i.imi, 4278190080     ; 2 uses
  %.sroa.gep14403 = getelementptr inbounds nuw i8, ptr %i.ime, i64 2 ; 2 uses
  %.neg13095.sroa.sel = select i1 %.not13094, ptr %.sroa.gep14403, ptr %i.imh ; 2 uses
  %i.imj = lshr i64 %i.ilm, 16
  %i.imk = trunc i64 %i.imj to i8
  store i8 %i.imk, ptr %.neg13095.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15748 = getelementptr inbounds nuw i8, ptr %i.ime, i64 3
  %.neg13095.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13094, ptr %.sroa.gep15748, ptr %.sroa.gep14403
  store i8 0, ptr %.neg13095.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.iml = and i64 %i.ilm, 16711680
  %.not13096 = icmp eq i64 %i.iml, 16711680
  %.neg13097 = select i1 %.not13096, i64 2, i64 1
  %i.imm = getelementptr inbounds nuw i8, ptr %.neg13095.sroa.sel, i64 %.neg13097 ; 4 uses
  %i.imn = lshr i64 %i.ilm, 8
  %i.imo = trunc i64 %i.imn to i8
  store i8 %i.imo, ptr %i.imm, align 1, !tbaa !31
  %i.imp = getelementptr inbounds nuw i8, ptr %i.imm, i64 1 ; 2 uses
  store i8 0, ptr %i.imp, align 1, !tbaa !31
  %i.imq = and i64 %i.ilm, 65280
  %.not13098 = icmp eq i64 %i.imq, 65280          ; 2 uses
  %.sroa.gep14405 = getelementptr inbounds nuw i8, ptr %i.imm, i64 2 ; 2 uses
  %.neg13099.sroa.sel = select i1 %.not13098, ptr %.sroa.gep14405, ptr %i.imp ; 2 uses
  %i.imr = trunc i64 %i.ilm to i8
  store i8 %i.imr, ptr %.neg13099.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15746 = getelementptr inbounds nuw i8, ptr %i.imm, i64 3
  %.neg13099.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13098, ptr %.sroa.gep15746, ptr %.sroa.gep14405
  store i8 0, ptr %.neg13099.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ims = and i64 %i.ilm, 255
  %.not13100 = icmp eq i64 %i.ims, 255
  %.neg13101 = select i1 %.not13100, i64 2, i64 1
  %i.imt = getelementptr inbounds nuw i8, ptr %.neg13099.sroa.sel, i64 %.neg13101
  br label %bb.wl

bb.wk:                                            ; preds = %bb.wi
  %i.imu = lshr i64 %i.ilm, 48
  %i.imv = trunc i64 %i.imu to i8
  %i.imw = getelementptr inbounds nuw i8, ptr %.255.lcssa, i64 1
  store i8 %i.imv, ptr %i.imw, align 1, !tbaa !31
  %i.imx = lshr i64 %i.ilm, 40
  %i.imy = trunc i64 %i.imx to i8
  %i.imz = getelementptr inbounds nuw i8, ptr %.255.lcssa, i64 2
  store i8 %i.imy, ptr %i.imz, align 1, !tbaa !31
  %i.ina = lshr i64 %i.ilm, 32
  %i.inb = trunc i64 %i.ina to i8
  %i.inc = getelementptr inbounds nuw i8, ptr %.255.lcssa, i64 3
  store i8 %i.inb, ptr %i.inc, align 1, !tbaa !31
  %i.ind = lshr i64 %i.ilm, 24
  %i.ine = trunc i64 %i.ind to i8
  %i.inf = getelementptr inbounds nuw i8, ptr %.255.lcssa, i64 4
  store i8 %i.ine, ptr %i.inf, align 1, !tbaa !31
  %i.ing = lshr i64 %i.ilm, 16
  %i.inh = trunc i64 %i.ing to i8
  %i.ini = getelementptr inbounds nuw i8, ptr %.255.lcssa, i64 5
  store i8 %i.inh, ptr %i.ini, align 1, !tbaa !31
  %i.inj = lshr i64 %i.ilm, 8
  %i.ink = trunc i64 %i.inj to i8
  %i.inl = getelementptr inbounds nuw i8, ptr %.255.lcssa, i64 6
  store i8 %i.ink, ptr %i.inl, align 1, !tbaa !31
  %i.inm = trunc i64 %i.ilm to i8
  %i.inn = getelementptr inbounds nuw i8, ptr %.255.lcssa, i64 7
  store i8 %i.inm, ptr %i.inn, align 1, !tbaa !31
  %i.ino = getelementptr inbounds nuw i8, ptr %.255.lcssa, i64 8
  br label %bb.wl

bb.wl:                                            ; preds = %bb.wk, %bb.wj
  %.258 = phi ptr [ %i.imt, %bb.wj ], [ %i.ino, %bb.wk ]
  %i.inp = add nsw i32 %i.ilf, 64
  %i.inq = sext i32 %i.ikz to i64
  br label %bb.wn

bb.wm:                                            ; preds = %._crit_edge15028
  %i.inr = zext nneg i32 %i.ile to i64
  %i.ins = shl i64 %.16911212.lcssa, %i.inr
  %i.int = sext i32 %i.ikz to i64
  %i.inu = or i64 %i.ins, %i.int
  br label %bb.wn

bb.wn:                                            ; preds = %bb.wl, %bb.wm, %bb.vx
  %.17211469 = phi i32 [ %.16811465, %bb.vx ], [ %i.inp, %bb.wl ], [ %i.ilf, %bb.wm ] ; 3 uses
  %.17211215 = phi i64 [ %.16811211, %bb.vx ], [ %i.inq, %bb.wl ], [ %i.inu, %bb.wm ] ; 3 uses
  %.260 = phi ptr [ %.254, %bb.vx ], [ %.258, %bb.wl ], [ %.255.lcssa, %bb.wm ] ; 3 uses
  %.85 = phi i32 [ %i.ihd, %bb.vx ], [ 0, %bb.wl ], [ 0, %bb.wm ] ; 4 uses
  %i.inv = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.inw = load i16, ptr %i.inv, align 2, !tbaa !79 ; 2 uses
  %i.inx = icmp eq i16 %i.inw, 0
  br i1 %i.inx, label %bb.wo, label %bb.wp

bb.wo:                                            ; preds = %bb.wn
  %i.iny = add nuw nsw i32 %.85, 16
  br label %bb.xe

bb.wp:                                            ; preds = %bb.wn
  %i.inz = sext i16 %i.inw to i32                 ; 2 uses
  %i.ioa = ashr i32 %i.inz, 31                    ; 2 uses
  %i.iob = add nsw i32 %i.ioa, %i.inz             ; 2 uses
  %i.ioc = xor i32 %i.iob, %i.ioa
  %i.iod = sext i32 %i.ioc to i64
  %i.ioe = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.iod
  %i.iof = load i8, ptr %i.ioe, align 1, !tbaa !31 ; 2 uses
  %i.iog = zext i8 %i.iof to i32                  ; 4 uses
  %i.ioh = icmp slt i32 %i.f, %i.iog
  br i1 %i.ioh, label %bb.wq, label %bb.wr

bb.wq:                                            ; preds = %bb.wp
  %i.ioi = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.ioj = load ptr, ptr %i.ioi, align 8, !tbaa !7 ; 2 uses
  %i.iok = getelementptr inbounds nuw i8, ptr %i.ioj, i64 40
  store i32 6, ptr %i.iok, align 8, !tbaa !26
  %i.iol = load ptr, ptr %i.ioj, align 8, !tbaa !32
  tail call void %i.iol(ptr noundef nonnull %i.ioi) #7
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wq, %bb.wp
  %i.iom = icmp samesign ugt i32 %.85, 255
  br i1 %i.iom, label %.lr.ph15038, label %._crit_edge15039

.lr.ph15038:                                      ; preds = %bb.wr
  %i.ion = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.ioo = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.ws

bb.ws:                                            ; preds = %.lr.ph15038, %bb.wy
  %.8615036 = phi i32 [ %.85, %.lr.ph15038 ], [ %i.iop, %bb.wy ] ; 2 uses
  %.26115035 = phi ptr [ %.260, %.lr.ph15038 ], [ %.263, %bb.wy ] ; 13 uses
  %.1731121615034 = phi i64 [ %.17211215, %.lr.ph15038 ], [ %.17411217, %bb.wy ] ; 2 uses
  %.1731147015033 = phi i32 [ %.17211469, %.lr.ph15038 ], [ %.17411471, %bb.wy ] ; 2 uses
  %i.iop = add nsw i32 %.8615036, -256            ; 2 uses
  %i.ioq = load i8, ptr %i.ion, align 4, !tbaa !31
  %i.ior = sext i8 %i.ioq to i32                  ; 2 uses
  %i.ios = sub nsw i32 %.1731147015033, %i.ior    ; 4 uses
  %i.iot = icmp slt i32 %i.ios, 0
  %i.iou = load i32, ptr %i.ioo, align 4, !tbaa !3 ; 2 uses
  br i1 %i.iot, label %bb.wt, label %bb.wx

bb.wt:                                            ; preds = %bb.ws
  %i.iov = zext nneg i32 %.1731147015033 to i64
  %i.iow = shl i64 %.1731121615034, %i.iov        ; 11 uses
  %i.iox = sub nsw i32 0, %i.ios
  %i.ioy = lshr i32 %i.iou, %i.iox
  %i.ioz = zext nneg i32 %i.ioy to i64
  %i.ipa = or i64 %i.iow, %i.ioz                  ; 14 uses
  %i.ipb = and i64 %i.ipa, -9187201950435737472
  %i.ipc = sub i64 -72340172838076674, %i.ipa
  %i.ipd = and i64 %i.ipb, %i.ipc
  %.not13137 = icmp eq i64 %i.ipd, 0
  %i.ipe = lshr i64 %i.iow, 56                    ; 2 uses
  %i.ipf = trunc nuw i64 %i.ipe to i8
  store i8 %i.ipf, ptr %.26115035, align 1, !tbaa !31
  br i1 %.not13137, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %i.ipg = getelementptr inbounds nuw i8, ptr %.26115035, i64 1 ; 2 uses
  store i8 0, ptr %i.ipg, align 1, !tbaa !31
  %.not13138 = icmp eq i64 %i.ipe, 255            ; 2 uses
  %.sroa.gep14407 = getelementptr inbounds nuw i8, ptr %.26115035, i64 2 ; 2 uses
  %.neg13139.sroa.sel = select i1 %.not13138, ptr %.sroa.gep14407, ptr %i.ipg ; 2 uses
  %i.iph = lshr i64 %i.iow, 48
  %i.ipi = trunc i64 %i.iph to i8
  store i8 %i.ipi, ptr %.neg13139.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15720 = getelementptr inbounds nuw i8, ptr %.26115035, i64 3
  %.neg13139.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13138, ptr %.sroa.gep15720, ptr %.sroa.gep14407
  store i8 0, ptr %.neg13139.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ipj = and i64 %i.iow, 71776119061217280
  %.not13140 = icmp eq i64 %i.ipj, 71776119061217280
  %.neg13141 = select i1 %.not13140, i64 2, i64 1
  %i.ipk = getelementptr inbounds nuw i8, ptr %.neg13139.sroa.sel, i64 %.neg13141 ; 4 uses
  %i.ipl = lshr i64 %i.iow, 40
  %i.ipm = trunc i64 %i.ipl to i8
  store i8 %i.ipm, ptr %i.ipk, align 1, !tbaa !31
  %i.ipn = getelementptr inbounds nuw i8, ptr %i.ipk, i64 1 ; 2 uses
  store i8 0, ptr %i.ipn, align 1, !tbaa !31
  %i.ipo = and i64 %i.iow, 280375465082880
  %.not13142 = icmp eq i64 %i.ipo, 280375465082880 ; 2 uses
  %.sroa.gep14409 = getelementptr inbounds nuw i8, ptr %i.ipk, i64 2 ; 2 uses
  %.neg13143.sroa.sel = select i1 %.not13142, ptr %.sroa.gep14409, ptr %i.ipn ; 2 uses
  %i.ipp = lshr i64 %i.iow, 32
  %i.ipq = trunc i64 %i.ipp to i8
  store i8 %i.ipq, ptr %.neg13143.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15726 = getelementptr inbounds nuw i8, ptr %i.ipk, i64 3
  %.neg13143.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13142, ptr %.sroa.gep15726, ptr %.sroa.gep14409
  store i8 0, ptr %.neg13143.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ipr = and i64 %i.iow, 1095216660480
  %.not13144 = icmp eq i64 %i.ipr, 1095216660480
  %.neg13145 = select i1 %.not13144, i64 2, i64 1
  %i.ips = getelementptr inbounds nuw i8, ptr %.neg13143.sroa.sel, i64 %.neg13145 ; 4 uses
  %i.ipt = lshr i64 %i.ipa, 24
  %i.ipu = trunc i64 %i.ipt to i8
  store i8 %i.ipu, ptr %i.ips, align 1, !tbaa !31
  %i.ipv = getelementptr inbounds nuw i8, ptr %i.ips, i64 1 ; 2 uses
  store i8 0, ptr %i.ipv, align 1, !tbaa !31
  %i.ipw = and i64 %i.ipa, 4278190080
  %.not13146 = icmp eq i64 %i.ipw, 4278190080     ; 2 uses
  %.sroa.gep14411 = getelementptr inbounds nuw i8, ptr %i.ips, i64 2 ; 2 uses
  %.neg13147.sroa.sel = select i1 %.not13146, ptr %.sroa.gep14411, ptr %i.ipv ; 2 uses
  %i.ipx = lshr i64 %i.ipa, 16
  %i.ipy = trunc i64 %i.ipx to i8
  store i8 %i.ipy, ptr %.neg13147.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15724 = getelementptr inbounds nuw i8, ptr %i.ips, i64 3
  %.neg13147.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13146, ptr %.sroa.gep15724, ptr %.sroa.gep14411
  store i8 0, ptr %.neg13147.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ipz = and i64 %i.ipa, 16711680
  %.not13148 = icmp eq i64 %i.ipz, 16711680
  %.neg13149 = select i1 %.not13148, i64 2, i64 1
  %i.iqa = getelementptr inbounds nuw i8, ptr %.neg13147.sroa.sel, i64 %.neg13149 ; 4 uses
  %i.iqb = lshr i64 %i.ipa, 8
  %i.iqc = trunc i64 %i.iqb to i8
  store i8 %i.iqc, ptr %i.iqa, align 1, !tbaa !31
  %i.iqd = getelementptr inbounds nuw i8, ptr %i.iqa, i64 1 ; 2 uses
  store i8 0, ptr %i.iqd, align 1, !tbaa !31
  %i.iqe = and i64 %i.ipa, 65280
  %.not13150 = icmp eq i64 %i.iqe, 65280          ; 2 uses
  %.sroa.gep14413 = getelementptr inbounds nuw i8, ptr %i.iqa, i64 2 ; 2 uses
  %.neg13151.sroa.sel = select i1 %.not13150, ptr %.sroa.gep14413, ptr %i.iqd ; 2 uses
  %i.iqf = trunc i64 %i.ipa to i8
  store i8 %i.iqf, ptr %.neg13151.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15722 = getelementptr inbounds nuw i8, ptr %i.iqa, i64 3
  %.neg13151.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13150, ptr %.sroa.gep15722, ptr %.sroa.gep14413
  store i8 0, ptr %.neg13151.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.iqg = and i64 %i.ipa, 255
  %.not13152 = icmp eq i64 %i.iqg, 255
  %.neg13153 = select i1 %.not13152, i64 2, i64 1
  %i.iqh = getelementptr inbounds nuw i8, ptr %.neg13151.sroa.sel, i64 %.neg13153
  br label %bb.ww

bb.wv:                                            ; preds = %bb.wt
  %i.iqi = lshr i64 %i.iow, 48
  %i.iqj = trunc i64 %i.iqi to i8
  %i.iqk = getelementptr inbounds nuw i8, ptr %.26115035, i64 1
  store i8 %i.iqj, ptr %i.iqk, align 1, !tbaa !31
  %i.iql = lshr i64 %i.iow, 40
  %i.iqm = trunc i64 %i.iql to i8
  %i.iqn = getelementptr inbounds nuw i8, ptr %.26115035, i64 2
  store i8 %i.iqm, ptr %i.iqn, align 1, !tbaa !31
  %i.iqo = lshr i64 %i.iow, 32
  %i.iqp = trunc i64 %i.iqo to i8
  %i.iqq = getelementptr inbounds nuw i8, ptr %.26115035, i64 3
  store i8 %i.iqp, ptr %i.iqq, align 1, !tbaa !31
  %i.iqr = lshr i64 %i.ipa, 24
  %i.iqs = trunc i64 %i.iqr to i8
  %i.iqt = getelementptr inbounds nuw i8, ptr %.26115035, i64 4
  store i8 %i.iqs, ptr %i.iqt, align 1, !tbaa !31
  %i.iqu = lshr i64 %i.ipa, 16
  %i.iqv = trunc i64 %i.iqu to i8
  %i.iqw = getelementptr inbounds nuw i8, ptr %.26115035, i64 5
  store i8 %i.iqv, ptr %i.iqw, align 1, !tbaa !31
  %i.iqx = lshr i64 %i.ipa, 8
  %i.iqy = trunc i64 %i.iqx to i8
  %i.iqz = getelementptr inbounds nuw i8, ptr %.26115035, i64 6
  store i8 %i.iqy, ptr %i.iqz, align 1, !tbaa !31
  %i.ira = trunc i64 %i.ipa to i8
  %i.irb = getelementptr inbounds nuw i8, ptr %.26115035, i64 7
  store i8 %i.ira, ptr %i.irb, align 1, !tbaa !31
  %i.irc = getelementptr inbounds nuw i8, ptr %.26115035, i64 8
  br label %bb.ww

bb.ww:                                            ; preds = %bb.wv, %bb.wu
  %.262 = phi ptr [ %i.iqh, %bb.wu ], [ %i.irc, %bb.wv ]
  %i.ird = add nsw i32 %i.ios, 64
  %i.ire = load i32, ptr %i.ioo, align 4, !tbaa !3
  %i.irf = zext i32 %i.ire to i64
  br label %bb.wy

bb.wx:                                            ; preds = %bb.ws
  %i.irg = zext nneg i32 %i.ior to i64
  %i.irh = shl i64 %.1731121615034, %i.irg
  %i.iri = zext i32 %i.iou to i64
  %i.irj = or i64 %i.irh, %i.iri
  br label %bb.wy

bb.wy:                                            ; preds = %bb.wx, %bb.ww
  %.17411471 = phi i32 [ %i.ird, %bb.ww ], [ %i.ios, %bb.wx ] ; 2 uses
  %.17411217 = phi i64 [ %i.irf, %bb.ww ], [ %i.irj, %bb.wx ] ; 2 uses
  %.263 = phi ptr [ %.262, %bb.ww ], [ %.26115035, %bb.wx ] ; 2 uses
  %i.irk = icmp samesign ugt i32 %.8615036, 511
  br i1 %i.irk, label %bb.ws, label %._crit_edge15039, !llvm.loop !116

._crit_edge15039:                                 ; preds = %bb.wy, %bb.wr
  %.17311470.lcssa = phi i32 [ %.17211469, %bb.wr ], [ %.17411471, %bb.wy ] ; 2 uses
  %.17311216.lcssa = phi i64 [ %.17211215, %bb.wr ], [ %.17411217, %bb.wy ] ; 2 uses
  %.261.lcssa = phi ptr [ %.260, %bb.wr ], [ %.263, %bb.wy ] ; 13 uses
  %.86.lcssa = phi i32 [ %.85, %bb.wr ], [ %i.iop, %bb.wy ]
  %i.irl = add nuw nsw i32 %.86.lcssa, %i.iog
  %i.irm = zext nneg i8 %i.iof to i64
  %notmask13119 = shl nsw i64 -1, %i.irm
  %i.irn = trunc i64 %notmask13119 to i32
  %i.iro = xor i32 %i.irn, -1
  %i.irp = and i32 %i.iob, %i.iro
  %i.irq = zext nneg i32 %i.irl to i64            ; 2 uses
  %i.irr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.irq
  %i.irs = load i32, ptr %i.irr, align 4, !tbaa !3
  %i.irt = shl i32 %i.irs, %i.iog
  %i.iru = or i32 %i.irt, %i.irp                  ; 3 uses
  %i.irv = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.irw = getelementptr inbounds nuw i8, ptr %i.irv, i64 %i.irq
  %i.irx = load i8, ptr %i.irw, align 1, !tbaa !31
  %i.iry = sext i8 %i.irx to i32
  %i.irz = add nsw i32 %i.iry, %i.iog             ; 2 uses
  %i.isa = sub nsw i32 %.17311470.lcssa, %i.irz   ; 4 uses
  %i.isb = icmp slt i32 %i.isa, 0
  br i1 %i.isb, label %bb.wz, label %bb.xd

bb.wz:                                            ; preds = %._crit_edge15039
  %i.isc = zext nneg i32 %.17311470.lcssa to i64
  %i.isd = shl i64 %.17311216.lcssa, %i.isc
  %i.ise = sub nsw i32 0, %i.isa
  %i.isf = ashr i32 %i.iru, %i.ise
  %i.isg = sext i32 %i.isf to i64
  %i.ish = or i64 %i.isd, %i.isg                  ; 24 uses
  %i.isi = and i64 %i.ish, -9187201950435737472
  %i.isj = sub i64 -72340172838076674, %i.ish
  %i.isk = and i64 %i.isi, %i.isj
  %.not13120 = icmp eq i64 %i.isk, 0
  %i.isl = lshr i64 %i.ish, 56                    ; 2 uses
  %i.ism = trunc nuw i64 %i.isl to i8
  store i8 %i.ism, ptr %.261.lcssa, align 1, !tbaa !31
  br i1 %.not13120, label %bb.xb, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.isn = getelementptr inbounds nuw i8, ptr %.261.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.isn, align 1, !tbaa !31
  %.not13121 = icmp eq i64 %i.isl, 255            ; 2 uses
  %.sroa.gep14415 = getelementptr inbounds nuw i8, ptr %.261.lcssa, i64 2 ; 2 uses
  %.neg13122.sroa.sel = select i1 %.not13121, ptr %.sroa.gep14415, ptr %i.isn ; 2 uses
  %i.iso = lshr i64 %i.ish, 48
  %i.isp = trunc i64 %i.iso to i8
  store i8 %i.isp, ptr %.neg13122.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15728 = getelementptr inbounds nuw i8, ptr %.261.lcssa, i64 3
  %.neg13122.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13121, ptr %.sroa.gep15728, ptr %.sroa.gep14415
  store i8 0, ptr %.neg13122.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.isq = and i64 %i.ish, 71776119061217280
  %.not13123 = icmp eq i64 %i.isq, 71776119061217280
  %.neg13124 = select i1 %.not13123, i64 2, i64 1
  %i.isr = getelementptr inbounds nuw i8, ptr %.neg13122.sroa.sel, i64 %.neg13124 ; 4 uses
  %i.iss = lshr i64 %i.ish, 40
  %i.ist = trunc i64 %i.iss to i8
  store i8 %i.ist, ptr %i.isr, align 1, !tbaa !31
  %i.isu = getelementptr inbounds nuw i8, ptr %i.isr, i64 1 ; 2 uses
  store i8 0, ptr %i.isu, align 1, !tbaa !31
  %i.isv = and i64 %i.ish, 280375465082880
  %.not13125 = icmp eq i64 %i.isv, 280375465082880 ; 2 uses
  %.sroa.gep14417 = getelementptr inbounds nuw i8, ptr %i.isr, i64 2 ; 2 uses
  %.neg13126.sroa.sel = select i1 %.not13125, ptr %.sroa.gep14417, ptr %i.isu ; 2 uses
  %i.isw = lshr i64 %i.ish, 32
  %i.isx = trunc i64 %i.isw to i8
  store i8 %i.isx, ptr %.neg13126.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15734 = getelementptr inbounds nuw i8, ptr %i.isr, i64 3
  %.neg13126.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13125, ptr %.sroa.gep15734, ptr %.sroa.gep14417
  store i8 0, ptr %.neg13126.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.isy = and i64 %i.ish, 1095216660480
  %.not13127 = icmp eq i64 %i.isy, 1095216660480
  %.neg13128 = select i1 %.not13127, i64 2, i64 1
  %i.isz = getelementptr inbounds nuw i8, ptr %.neg13126.sroa.sel, i64 %.neg13128 ; 4 uses
  %i.ita = lshr i64 %i.ish, 24
  %i.itb = trunc i64 %i.ita to i8
  store i8 %i.itb, ptr %i.isz, align 1, !tbaa !31
  %i.itc = getelementptr inbounds nuw i8, ptr %i.isz, i64 1 ; 2 uses
  store i8 0, ptr %i.itc, align 1, !tbaa !31
  %i.itd = and i64 %i.ish, 4278190080
  %.not13129 = icmp eq i64 %i.itd, 4278190080     ; 2 uses
  %.sroa.gep14419 = getelementptr inbounds nuw i8, ptr %i.isz, i64 2 ; 2 uses
  %.neg13130.sroa.sel = select i1 %.not13129, ptr %.sroa.gep14419, ptr %i.itc ; 2 uses
  %i.ite = lshr i64 %i.ish, 16
  %i.itf = trunc i64 %i.ite to i8
  store i8 %i.itf, ptr %.neg13130.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15732 = getelementptr inbounds nuw i8, ptr %i.isz, i64 3
  %.neg13130.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13129, ptr %.sroa.gep15732, ptr %.sroa.gep14419
  store i8 0, ptr %.neg13130.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.itg = and i64 %i.ish, 16711680
  %.not13131 = icmp eq i64 %i.itg, 16711680
  %.neg13132 = select i1 %.not13131, i64 2, i64 1
  %i.ith = getelementptr inbounds nuw i8, ptr %.neg13130.sroa.sel, i64 %.neg13132 ; 4 uses
  %i.iti = lshr i64 %i.ish, 8
  %i.itj = trunc i64 %i.iti to i8
  store i8 %i.itj, ptr %i.ith, align 1, !tbaa !31
  %i.itk = getelementptr inbounds nuw i8, ptr %i.ith, i64 1 ; 2 uses
  store i8 0, ptr %i.itk, align 1, !tbaa !31
  %i.itl = and i64 %i.ish, 65280
  %.not13133 = icmp eq i64 %i.itl, 65280          ; 2 uses
  %.sroa.gep14421 = getelementptr inbounds nuw i8, ptr %i.ith, i64 2 ; 2 uses
  %.neg13134.sroa.sel = select i1 %.not13133, ptr %.sroa.gep14421, ptr %i.itk ; 2 uses
  %i.itm = trunc i64 %i.ish to i8
  store i8 %i.itm, ptr %.neg13134.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15730 = getelementptr inbounds nuw i8, ptr %i.ith, i64 3
  %.neg13134.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13133, ptr %.sroa.gep15730, ptr %.sroa.gep14421
  store i8 0, ptr %.neg13134.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.itn = and i64 %i.ish, 255
  %.not13135 = icmp eq i64 %i.itn, 255
  %.neg13136 = select i1 %.not13135, i64 2, i64 1
  %i.ito = getelementptr inbounds nuw i8, ptr %.neg13134.sroa.sel, i64 %.neg13136
  br label %bb.xc

bb.xb:                                            ; preds = %bb.wz
  %i.itp = lshr i64 %i.ish, 48
  %i.itq = trunc i64 %i.itp to i8
  %i.itr = getelementptr inbounds nuw i8, ptr %.261.lcssa, i64 1
  store i8 %i.itq, ptr %i.itr, align 1, !tbaa !31
  %i.its = lshr i64 %i.ish, 40
  %i.itt = trunc i64 %i.its to i8
  %i.itu = getelementptr inbounds nuw i8, ptr %.261.lcssa, i64 2
  store i8 %i.itt, ptr %i.itu, align 1, !tbaa !31
  %i.itv = lshr i64 %i.ish, 32
  %i.itw = trunc i64 %i.itv to i8
  %i.itx = getelementptr inbounds nuw i8, ptr %.261.lcssa, i64 3
  store i8 %i.itw, ptr %i.itx, align 1, !tbaa !31
  %i.ity = lshr i64 %i.ish, 24
  %i.itz = trunc i64 %i.ity to i8
  %i.iua = getelementptr inbounds nuw i8, ptr %.261.lcssa, i64 4
  store i8 %i.itz, ptr %i.iua, align 1, !tbaa !31
  %i.iub = lshr i64 %i.ish, 16
  %i.iuc = trunc i64 %i.iub to i8
  %i.iud = getelementptr inbounds nuw i8, ptr %.261.lcssa, i64 5
  store i8 %i.iuc, ptr %i.iud, align 1, !tbaa !31
  %i.iue = lshr i64 %i.ish, 8
  %i.iuf = trunc i64 %i.iue to i8
  %i.iug = getelementptr inbounds nuw i8, ptr %.261.lcssa, i64 6
  store i8 %i.iuf, ptr %i.iug, align 1, !tbaa !31
  %i.iuh = trunc i64 %i.ish to i8
  %i.iui = getelementptr inbounds nuw i8, ptr %.261.lcssa, i64 7
  store i8 %i.iuh, ptr %i.iui, align 1, !tbaa !31
  %i.iuj = getelementptr inbounds nuw i8, ptr %.261.lcssa, i64 8
  br label %bb.xc

bb.xc:                                            ; preds = %bb.xb, %bb.xa
  %.264 = phi ptr [ %i.ito, %bb.xa ], [ %i.iuj, %bb.xb ]
  %i.iuk = add nsw i32 %i.isa, 64
  %i.iul = sext i32 %i.iru to i64
  br label %bb.xe

bb.xd:                                            ; preds = %._crit_edge15039
  %i.ium = zext nneg i32 %i.irz to i64
  %i.iun = shl i64 %.17311216.lcssa, %i.ium
  %i.iuo = sext i32 %i.iru to i64
  %i.iup = or i64 %i.iun, %i.iuo
  br label %bb.xe

bb.xe:                                            ; preds = %bb.xc, %bb.xd, %bb.wo
  %.17611473 = phi i32 [ %.17211469, %bb.wo ], [ %i.iuk, %bb.xc ], [ %i.isa, %bb.xd ] ; 3 uses
  %.17611219 = phi i64 [ %.17211215, %bb.wo ], [ %i.iul, %bb.xc ], [ %i.iup, %bb.xd ] ; 3 uses
  %.266 = phi ptr [ %.260, %bb.wo ], [ %.264, %bb.xc ], [ %.261.lcssa, %bb.xd ] ; 3 uses
  %.87 = phi i32 [ %i.iny, %bb.wo ], [ 0, %bb.xc ], [ 0, %bb.xd ] ; 4 uses
  %i.iuq = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.iur = load i16, ptr %i.iuq, align 2, !tbaa !79 ; 2 uses
  %i.ius = icmp eq i16 %i.iur, 0
  br i1 %i.ius, label %bb.xf, label %bb.xg

bb.xf:                                            ; preds = %bb.xe
  %i.iut = add nuw nsw i32 %.87, 16
  br label %bb.xv

bb.xg:                                            ; preds = %bb.xe
  %i.iuu = sext i16 %i.iur to i32                 ; 2 uses
  %i.iuv = ashr i32 %i.iuu, 31                    ; 2 uses
  %i.iuw = add nsw i32 %i.iuv, %i.iuu             ; 2 uses
  %i.iux = xor i32 %i.iuw, %i.iuv
  %i.iuy = sext i32 %i.iux to i64
  %i.iuz = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.iuy
  %i.iva = load i8, ptr %i.iuz, align 1, !tbaa !31 ; 2 uses
  %i.ivb = zext i8 %i.iva to i32                  ; 4 uses
  %i.ivc = icmp slt i32 %i.f, %i.ivb
  br i1 %i.ivc, label %bb.xh, label %bb.xi

bb.xh:                                            ; preds = %bb.xg
  %i.ivd = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.ive = load ptr, ptr %i.ivd, align 8, !tbaa !7 ; 2 uses
  %i.ivf = getelementptr inbounds nuw i8, ptr %i.ive, i64 40
  store i32 6, ptr %i.ivf, align 8, !tbaa !26
  %i.ivg = load ptr, ptr %i.ive, align 8, !tbaa !32
  tail call void %i.ivg(ptr noundef nonnull %i.ivd) #7
  br label %bb.xi

bb.xi:                                            ; preds = %bb.xh, %bb.xg
  %i.ivh = icmp samesign ugt i32 %.87, 255
  br i1 %i.ivh, label %.lr.ph15049, label %._crit_edge15050

.lr.ph15049:                                      ; preds = %bb.xi
  %i.ivi = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.ivj = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.xj

bb.xj:                                            ; preds = %.lr.ph15049, %bb.xp
  %.8815047 = phi i32 [ %.87, %.lr.ph15049 ], [ %i.ivk, %bb.xp ] ; 2 uses
  %.26715046 = phi ptr [ %.266, %.lr.ph15049 ], [ %.269, %bb.xp ] ; 13 uses
  %.1771122015045 = phi i64 [ %.17611219, %.lr.ph15049 ], [ %.17811221, %bb.xp ] ; 2 uses
  %.1771147415044 = phi i32 [ %.17611473, %.lr.ph15049 ], [ %.17811475, %bb.xp ] ; 2 uses
  %i.ivk = add nsw i32 %.8815047, -256            ; 2 uses
  %i.ivl = load i8, ptr %i.ivi, align 4, !tbaa !31
  %i.ivm = sext i8 %i.ivl to i32                  ; 2 uses
  %i.ivn = sub nsw i32 %.1771147415044, %i.ivm    ; 4 uses
  %i.ivo = icmp slt i32 %i.ivn, 0
  %i.ivp = load i32, ptr %i.ivj, align 4, !tbaa !3 ; 2 uses
  br i1 %i.ivo, label %bb.xk, label %bb.xo

bb.xk:                                            ; preds = %bb.xj
  %i.ivq = zext nneg i32 %.1771147415044 to i64
  %i.ivr = shl i64 %.1771122015045, %i.ivq        ; 11 uses
  %i.ivs = sub nsw i32 0, %i.ivn
  %i.ivt = lshr i32 %i.ivp, %i.ivs
  %i.ivu = zext nneg i32 %i.ivt to i64
  %i.ivv = or i64 %i.ivr, %i.ivu                  ; 14 uses
  %i.ivw = and i64 %i.ivv, -9187201950435737472
  %i.ivx = sub i64 -72340172838076674, %i.ivv
  %i.ivy = and i64 %i.ivw, %i.ivx
  %.not13172 = icmp eq i64 %i.ivy, 0
  %i.ivz = lshr i64 %i.ivr, 56                    ; 2 uses
  %i.iwa = trunc nuw i64 %i.ivz to i8
  store i8 %i.iwa, ptr %.26715046, align 1, !tbaa !31
  br i1 %.not13172, label %bb.xm, label %bb.xl

bb.xl:                                            ; preds = %bb.xk
  %i.iwb = getelementptr inbounds nuw i8, ptr %.26715046, i64 1 ; 2 uses
  store i8 0, ptr %i.iwb, align 1, !tbaa !31
  %.not13173 = icmp eq i64 %i.ivz, 255            ; 2 uses
  %.sroa.gep14423 = getelementptr inbounds nuw i8, ptr %.26715046, i64 2 ; 2 uses
  %.neg13174.sroa.sel = select i1 %.not13173, ptr %.sroa.gep14423, ptr %i.iwb ; 2 uses
  %i.iwc = lshr i64 %i.ivr, 48
  %i.iwd = trunc i64 %i.iwc to i8
  store i8 %i.iwd, ptr %.neg13174.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15704 = getelementptr inbounds nuw i8, ptr %.26715046, i64 3
  %.neg13174.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13173, ptr %.sroa.gep15704, ptr %.sroa.gep14423
  store i8 0, ptr %.neg13174.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.iwe = and i64 %i.ivr, 71776119061217280
  %.not13175 = icmp eq i64 %i.iwe, 71776119061217280
  %.neg13176 = select i1 %.not13175, i64 2, i64 1
  %i.iwf = getelementptr inbounds nuw i8, ptr %.neg13174.sroa.sel, i64 %.neg13176 ; 4 uses
  %i.iwg = lshr i64 %i.ivr, 40
  %i.iwh = trunc i64 %i.iwg to i8
  store i8 %i.iwh, ptr %i.iwf, align 1, !tbaa !31
  %i.iwi = getelementptr inbounds nuw i8, ptr %i.iwf, i64 1 ; 2 uses
  store i8 0, ptr %i.iwi, align 1, !tbaa !31
  %i.iwj = and i64 %i.ivr, 280375465082880
  %.not13177 = icmp eq i64 %i.iwj, 280375465082880 ; 2 uses
  %.sroa.gep14425 = getelementptr inbounds nuw i8, ptr %i.iwf, i64 2 ; 2 uses
  %.neg13178.sroa.sel = select i1 %.not13177, ptr %.sroa.gep14425, ptr %i.iwi ; 2 uses
  %i.iwk = lshr i64 %i.ivr, 32
  %i.iwl = trunc i64 %i.iwk to i8
  store i8 %i.iwl, ptr %.neg13178.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15710 = getelementptr inbounds nuw i8, ptr %i.iwf, i64 3
  %.neg13178.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13177, ptr %.sroa.gep15710, ptr %.sroa.gep14425
  store i8 0, ptr %.neg13178.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.iwm = and i64 %i.ivr, 1095216660480
  %.not13179 = icmp eq i64 %i.iwm, 1095216660480
  %.neg13180 = select i1 %.not13179, i64 2, i64 1
  %i.iwn = getelementptr inbounds nuw i8, ptr %.neg13178.sroa.sel, i64 %.neg13180 ; 4 uses
  %i.iwo = lshr i64 %i.ivv, 24
  %i.iwp = trunc i64 %i.iwo to i8
  store i8 %i.iwp, ptr %i.iwn, align 1, !tbaa !31
  %i.iwq = getelementptr inbounds nuw i8, ptr %i.iwn, i64 1 ; 2 uses
  store i8 0, ptr %i.iwq, align 1, !tbaa !31
  %i.iwr = and i64 %i.ivv, 4278190080
  %.not13181 = icmp eq i64 %i.iwr, 4278190080     ; 2 uses
  %.sroa.gep14427 = getelementptr inbounds nuw i8, ptr %i.iwn, i64 2 ; 2 uses
  %.neg13182.sroa.sel = select i1 %.not13181, ptr %.sroa.gep14427, ptr %i.iwq ; 2 uses
  %i.iws = lshr i64 %i.ivv, 16
  %i.iwt = trunc i64 %i.iws to i8
  store i8 %i.iwt, ptr %.neg13182.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15708 = getelementptr inbounds nuw i8, ptr %i.iwn, i64 3
  %.neg13182.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13181, ptr %.sroa.gep15708, ptr %.sroa.gep14427
  store i8 0, ptr %.neg13182.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.iwu = and i64 %i.ivv, 16711680
  %.not13183 = icmp eq i64 %i.iwu, 16711680
  %.neg13184 = select i1 %.not13183, i64 2, i64 1
  %i.iwv = getelementptr inbounds nuw i8, ptr %.neg13182.sroa.sel, i64 %.neg13184 ; 4 uses
  %i.iww = lshr i64 %i.ivv, 8
  %i.iwx = trunc i64 %i.iww to i8
  store i8 %i.iwx, ptr %i.iwv, align 1, !tbaa !31
  %i.iwy = getelementptr inbounds nuw i8, ptr %i.iwv, i64 1 ; 2 uses
  store i8 0, ptr %i.iwy, align 1, !tbaa !31
  %i.iwz = and i64 %i.ivv, 65280
  %.not13185 = icmp eq i64 %i.iwz, 65280          ; 2 uses
  %.sroa.gep14429 = getelementptr inbounds nuw i8, ptr %i.iwv, i64 2 ; 2 uses
  %.neg13186.sroa.sel = select i1 %.not13185, ptr %.sroa.gep14429, ptr %i.iwy ; 2 uses
  %i.ixa = trunc i64 %i.ivv to i8
  store i8 %i.ixa, ptr %.neg13186.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15706 = getelementptr inbounds nuw i8, ptr %i.iwv, i64 3
  %.neg13186.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13185, ptr %.sroa.gep15706, ptr %.sroa.gep14429
  store i8 0, ptr %.neg13186.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ixb = and i64 %i.ivv, 255
  %.not13187 = icmp eq i64 %i.ixb, 255
  %.neg13188 = select i1 %.not13187, i64 2, i64 1
  %i.ixc = getelementptr inbounds nuw i8, ptr %.neg13186.sroa.sel, i64 %.neg13188
  br label %bb.xn

bb.xm:                                            ; preds = %bb.xk
  %i.ixd = lshr i64 %i.ivr, 48
  %i.ixe = trunc i64 %i.ixd to i8
  %i.ixf = getelementptr inbounds nuw i8, ptr %.26715046, i64 1
  store i8 %i.ixe, ptr %i.ixf, align 1, !tbaa !31
  %i.ixg = lshr i64 %i.ivr, 40
  %i.ixh = trunc i64 %i.ixg to i8
  %i.ixi = getelementptr inbounds nuw i8, ptr %.26715046, i64 2
  store i8 %i.ixh, ptr %i.ixi, align 1, !tbaa !31
  %i.ixj = lshr i64 %i.ivr, 32
  %i.ixk = trunc i64 %i.ixj to i8
  %i.ixl = getelementptr inbounds nuw i8, ptr %.26715046, i64 3
  store i8 %i.ixk, ptr %i.ixl, align 1, !tbaa !31
  %i.ixm = lshr i64 %i.ivv, 24
  %i.ixn = trunc i64 %i.ixm to i8
  %i.ixo = getelementptr inbounds nuw i8, ptr %.26715046, i64 4
  store i8 %i.ixn, ptr %i.ixo, align 1, !tbaa !31
  %i.ixp = lshr i64 %i.ivv, 16
  %i.ixq = trunc i64 %i.ixp to i8
  %i.ixr = getelementptr inbounds nuw i8, ptr %.26715046, i64 5
  store i8 %i.ixq, ptr %i.ixr, align 1, !tbaa !31
  %i.ixs = lshr i64 %i.ivv, 8
  %i.ixt = trunc i64 %i.ixs to i8
  %i.ixu = getelementptr inbounds nuw i8, ptr %.26715046, i64 6
  store i8 %i.ixt, ptr %i.ixu, align 1, !tbaa !31
  %i.ixv = trunc i64 %i.ivv to i8
  %i.ixw = getelementptr inbounds nuw i8, ptr %.26715046, i64 7
  store i8 %i.ixv, ptr %i.ixw, align 1, !tbaa !31
  %i.ixx = getelementptr inbounds nuw i8, ptr %.26715046, i64 8
  br label %bb.xn

bb.xn:                                            ; preds = %bb.xm, %bb.xl
  %.268 = phi ptr [ %i.ixc, %bb.xl ], [ %i.ixx, %bb.xm ]
  %i.ixy = add nsw i32 %i.ivn, 64
  %i.ixz = load i32, ptr %i.ivj, align 4, !tbaa !3
  %i.iya = zext i32 %i.ixz to i64
  br label %bb.xp

bb.xo:                                            ; preds = %bb.xj
  %i.iyb = zext nneg i32 %i.ivm to i64
  %i.iyc = shl i64 %.1771122015045, %i.iyb
  %i.iyd = zext i32 %i.ivp to i64
  %i.iye = or i64 %i.iyc, %i.iyd
  br label %bb.xp

bb.xp:                                            ; preds = %bb.xo, %bb.xn
  %.17811475 = phi i32 [ %i.ixy, %bb.xn ], [ %i.ivn, %bb.xo ] ; 2 uses
  %.17811221 = phi i64 [ %i.iya, %bb.xn ], [ %i.iye, %bb.xo ] ; 2 uses
  %.269 = phi ptr [ %.268, %bb.xn ], [ %.26715046, %bb.xo ] ; 2 uses
  %i.iyf = icmp samesign ugt i32 %.8815047, 511
  br i1 %i.iyf, label %bb.xj, label %._crit_edge15050, !llvm.loop !117

._crit_edge15050:                                 ; preds = %bb.xp, %bb.xi
  %.17711474.lcssa = phi i32 [ %.17611473, %bb.xi ], [ %.17811475, %bb.xp ] ; 2 uses
  %.17711220.lcssa = phi i64 [ %.17611219, %bb.xi ], [ %.17811221, %bb.xp ] ; 2 uses
  %.267.lcssa = phi ptr [ %.266, %bb.xi ], [ %.269, %bb.xp ] ; 13 uses
  %.88.lcssa = phi i32 [ %.87, %bb.xi ], [ %i.ivk, %bb.xp ]
  %i.iyg = add nuw nsw i32 %.88.lcssa, %i.ivb
  %i.iyh = zext nneg i8 %i.iva to i64
  %notmask13154 = shl nsw i64 -1, %i.iyh
  %i.iyi = trunc i64 %notmask13154 to i32
  %i.iyj = xor i32 %i.iyi, -1
  %i.iyk = and i32 %i.iuw, %i.iyj
  %i.iyl = zext nneg i32 %i.iyg to i64            ; 2 uses
  %i.iym = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.iyl
  %i.iyn = load i32, ptr %i.iym, align 4, !tbaa !3
  %i.iyo = shl i32 %i.iyn, %i.ivb
  %i.iyp = or i32 %i.iyo, %i.iyk                  ; 3 uses
  %i.iyq = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.iyr = getelementptr inbounds nuw i8, ptr %i.iyq, i64 %i.iyl
  %i.iys = load i8, ptr %i.iyr, align 1, !tbaa !31
  %i.iyt = sext i8 %i.iys to i32
  %i.iyu = add nsw i32 %i.iyt, %i.ivb             ; 2 uses
  %i.iyv = sub nsw i32 %.17711474.lcssa, %i.iyu   ; 4 uses
  %i.iyw = icmp slt i32 %i.iyv, 0
  br i1 %i.iyw, label %bb.xq, label %bb.xu

bb.xq:                                            ; preds = %._crit_edge15050
  %i.iyx = zext nneg i32 %.17711474.lcssa to i64
  %i.iyy = shl i64 %.17711220.lcssa, %i.iyx
  %i.iyz = sub nsw i32 0, %i.iyv
  %i.iza = ashr i32 %i.iyp, %i.iyz
  %i.izb = sext i32 %i.iza to i64
  %i.izc = or i64 %i.iyy, %i.izb                  ; 24 uses
  %i.izd = and i64 %i.izc, -9187201950435737472
  %i.ize = sub i64 -72340172838076674, %i.izc
  %i.izf = and i64 %i.izd, %i.ize
  %.not13155 = icmp eq i64 %i.izf, 0
  %i.izg = lshr i64 %i.izc, 56                    ; 2 uses
  %i.izh = trunc nuw i64 %i.izg to i8
  store i8 %i.izh, ptr %.267.lcssa, align 1, !tbaa !31
  br i1 %.not13155, label %bb.xs, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  %i.izi = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.izi, align 1, !tbaa !31
  %.not13156 = icmp eq i64 %i.izg, 255            ; 2 uses
  %.sroa.gep14431 = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 2 ; 2 uses
  %.neg13157.sroa.sel = select i1 %.not13156, ptr %.sroa.gep14431, ptr %i.izi ; 2 uses
  %i.izj = lshr i64 %i.izc, 48
  %i.izk = trunc i64 %i.izj to i8
  store i8 %i.izk, ptr %.neg13157.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15712 = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 3
  %.neg13157.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13156, ptr %.sroa.gep15712, ptr %.sroa.gep14431
  store i8 0, ptr %.neg13157.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.izl = and i64 %i.izc, 71776119061217280
  %.not13158 = icmp eq i64 %i.izl, 71776119061217280
  %.neg13159 = select i1 %.not13158, i64 2, i64 1
  %i.izm = getelementptr inbounds nuw i8, ptr %.neg13157.sroa.sel, i64 %.neg13159 ; 4 uses
  %i.izn = lshr i64 %i.izc, 40
  %i.izo = trunc i64 %i.izn to i8
  store i8 %i.izo, ptr %i.izm, align 1, !tbaa !31
  %i.izp = getelementptr inbounds nuw i8, ptr %i.izm, i64 1 ; 2 uses
  store i8 0, ptr %i.izp, align 1, !tbaa !31
  %i.izq = and i64 %i.izc, 280375465082880
  %.not13160 = icmp eq i64 %i.izq, 280375465082880 ; 2 uses
  %.sroa.gep14433 = getelementptr inbounds nuw i8, ptr %i.izm, i64 2 ; 2 uses
  %.neg13161.sroa.sel = select i1 %.not13160, ptr %.sroa.gep14433, ptr %i.izp ; 2 uses
  %i.izr = lshr i64 %i.izc, 32
  %i.izs = trunc i64 %i.izr to i8
  store i8 %i.izs, ptr %.neg13161.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15718 = getelementptr inbounds nuw i8, ptr %i.izm, i64 3
  %.neg13161.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13160, ptr %.sroa.gep15718, ptr %.sroa.gep14433
  store i8 0, ptr %.neg13161.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.izt = and i64 %i.izc, 1095216660480
  %.not13162 = icmp eq i64 %i.izt, 1095216660480
  %.neg13163 = select i1 %.not13162, i64 2, i64 1
  %i.izu = getelementptr inbounds nuw i8, ptr %.neg13161.sroa.sel, i64 %.neg13163 ; 4 uses
  %i.izv = lshr i64 %i.izc, 24
  %i.izw = trunc i64 %i.izv to i8
  store i8 %i.izw, ptr %i.izu, align 1, !tbaa !31
  %i.izx = getelementptr inbounds nuw i8, ptr %i.izu, i64 1 ; 2 uses
  store i8 0, ptr %i.izx, align 1, !tbaa !31
  %i.izy = and i64 %i.izc, 4278190080
  %.not13164 = icmp eq i64 %i.izy, 4278190080     ; 2 uses
  %.sroa.gep14435 = getelementptr inbounds nuw i8, ptr %i.izu, i64 2 ; 2 uses
  %.neg13165.sroa.sel = select i1 %.not13164, ptr %.sroa.gep14435, ptr %i.izx ; 2 uses
  %i.izz = lshr i64 %i.izc, 16
  %i.jaa = trunc i64 %i.izz to i8
  store i8 %i.jaa, ptr %.neg13165.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15716 = getelementptr inbounds nuw i8, ptr %i.izu, i64 3
  %.neg13165.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13164, ptr %.sroa.gep15716, ptr %.sroa.gep14435
  store i8 0, ptr %.neg13165.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jab = and i64 %i.izc, 16711680
  %.not13166 = icmp eq i64 %i.jab, 16711680
  %.neg13167 = select i1 %.not13166, i64 2, i64 1
  %i.jac = getelementptr inbounds nuw i8, ptr %.neg13165.sroa.sel, i64 %.neg13167 ; 4 uses
  %i.jad = lshr i64 %i.izc, 8
  %i.jae = trunc i64 %i.jad to i8
  store i8 %i.jae, ptr %i.jac, align 1, !tbaa !31
  %i.jaf = getelementptr inbounds nuw i8, ptr %i.jac, i64 1 ; 2 uses
  store i8 0, ptr %i.jaf, align 1, !tbaa !31
  %i.jag = and i64 %i.izc, 65280
  %.not13168 = icmp eq i64 %i.jag, 65280          ; 2 uses
  %.sroa.gep14437 = getelementptr inbounds nuw i8, ptr %i.jac, i64 2 ; 2 uses
  %.neg13169.sroa.sel = select i1 %.not13168, ptr %.sroa.gep14437, ptr %i.jaf ; 2 uses
  %i.jah = trunc i64 %i.izc to i8
  store i8 %i.jah, ptr %.neg13169.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15714 = getelementptr inbounds nuw i8, ptr %i.jac, i64 3
  %.neg13169.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13168, ptr %.sroa.gep15714, ptr %.sroa.gep14437
  store i8 0, ptr %.neg13169.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jai = and i64 %i.izc, 255
  %.not13170 = icmp eq i64 %i.jai, 255
  %.neg13171 = select i1 %.not13170, i64 2, i64 1
  %i.jaj = getelementptr inbounds nuw i8, ptr %.neg13169.sroa.sel, i64 %.neg13171
  br label %bb.xt

bb.xs:                                            ; preds = %bb.xq
  %i.jak = lshr i64 %i.izc, 48
  %i.jal = trunc i64 %i.jak to i8
  %i.jam = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 1
  store i8 %i.jal, ptr %i.jam, align 1, !tbaa !31
  %i.jan = lshr i64 %i.izc, 40
  %i.jao = trunc i64 %i.jan to i8
  %i.jap = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 2
  store i8 %i.jao, ptr %i.jap, align 1, !tbaa !31
  %i.jaq = lshr i64 %i.izc, 32
  %i.jar = trunc i64 %i.jaq to i8
  %i.jas = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 3
  store i8 %i.jar, ptr %i.jas, align 1, !tbaa !31
  %i.jat = lshr i64 %i.izc, 24
  %i.jau = trunc i64 %i.jat to i8
  %i.jav = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 4
  store i8 %i.jau, ptr %i.jav, align 1, !tbaa !31
  %i.jaw = lshr i64 %i.izc, 16
  %i.jax = trunc i64 %i.jaw to i8
  %i.jay = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 5
  store i8 %i.jax, ptr %i.jay, align 1, !tbaa !31
  %i.jaz = lshr i64 %i.izc, 8
  %i.jba = trunc i64 %i.jaz to i8
  %i.jbb = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 6
  store i8 %i.jba, ptr %i.jbb, align 1, !tbaa !31
  %i.jbc = trunc i64 %i.izc to i8
  %i.jbd = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 7
  store i8 %i.jbc, ptr %i.jbd, align 1, !tbaa !31
  %i.jbe = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 8
  br label %bb.xt

bb.xt:                                            ; preds = %bb.xs, %bb.xr
  %.270 = phi ptr [ %i.jaj, %bb.xr ], [ %i.jbe, %bb.xs ]
  %i.jbf = add nsw i32 %i.iyv, 64
  %i.jbg = sext i32 %i.iyp to i64
  br label %bb.xv

bb.xu:                                            ; preds = %._crit_edge15050
  %i.jbh = zext nneg i32 %i.iyu to i64
  %i.jbi = shl i64 %.17711220.lcssa, %i.jbh
  %i.jbj = sext i32 %i.iyp to i64
  %i.jbk = or i64 %i.jbi, %i.jbj
  br label %bb.xv

bb.xv:                                            ; preds = %bb.xt, %bb.xu, %bb.xf
  %.18011477 = phi i32 [ %.17611473, %bb.xf ], [ %i.jbf, %bb.xt ], [ %i.iyv, %bb.xu ] ; 3 uses
  %.18011223 = phi i64 [ %.17611219, %bb.xf ], [ %i.jbg, %bb.xt ], [ %i.jbk, %bb.xu ] ; 3 uses
  %.272 = phi ptr [ %.266, %bb.xf ], [ %.270, %bb.xt ], [ %.267.lcssa, %bb.xu ] ; 3 uses
  %.89 = phi i32 [ %i.iut, %bb.xf ], [ 0, %bb.xt ], [ 0, %bb.xu ] ; 4 uses
  %i.jbl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.jbm = load i16, ptr %i.jbl, align 2, !tbaa !79 ; 2 uses
  %i.jbn = icmp eq i16 %i.jbm, 0
  br i1 %i.jbn, label %bb.xw, label %bb.xx

bb.xw:                                            ; preds = %bb.xv
  %i.jbo = add nuw nsw i32 %.89, 16
  br label %bb.ym

bb.xx:                                            ; preds = %bb.xv
  %i.jbp = sext i16 %i.jbm to i32                 ; 2 uses
  %i.jbq = ashr i32 %i.jbp, 31                    ; 2 uses
  %i.jbr = add nsw i32 %i.jbq, %i.jbp             ; 2 uses
  %i.jbs = xor i32 %i.jbr, %i.jbq
  %i.jbt = sext i32 %i.jbs to i64
  %i.jbu = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.jbt
  %i.jbv = load i8, ptr %i.jbu, align 1, !tbaa !31 ; 2 uses
  %i.jbw = zext i8 %i.jbv to i32                  ; 4 uses
  %i.jbx = icmp slt i32 %i.f, %i.jbw
  br i1 %i.jbx, label %bb.xy, label %bb.xz

bb.xy:                                            ; preds = %bb.xx
  %i.jby = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.jbz = load ptr, ptr %i.jby, align 8, !tbaa !7 ; 2 uses
  %i.jca = getelementptr inbounds nuw i8, ptr %i.jbz, i64 40
  store i32 6, ptr %i.jca, align 8, !tbaa !26
  %i.jcb = load ptr, ptr %i.jbz, align 8, !tbaa !32
  tail call void %i.jcb(ptr noundef nonnull %i.jby) #7
  br label %bb.xz

bb.xz:                                            ; preds = %bb.xy, %bb.xx
  %i.jcc = icmp samesign ugt i32 %.89, 255
  br i1 %i.jcc, label %.lr.ph15060, label %._crit_edge15061

.lr.ph15060:                                      ; preds = %bb.xz
  %i.jcd = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.jce = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.ya

bb.ya:                                            ; preds = %.lr.ph15060, %bb.yg
  %.9015058 = phi i32 [ %.89, %.lr.ph15060 ], [ %i.jcf, %bb.yg ] ; 2 uses
  %.27315057 = phi ptr [ %.272, %.lr.ph15060 ], [ %.275, %bb.yg ] ; 13 uses
  %.1811122415056 = phi i64 [ %.18011223, %.lr.ph15060 ], [ %.18211225, %bb.yg ] ; 2 uses
  %.1811147815055 = phi i32 [ %.18011477, %.lr.ph15060 ], [ %.18211479, %bb.yg ] ; 2 uses
  %i.jcf = add nsw i32 %.9015058, -256            ; 2 uses
  %i.jcg = load i8, ptr %i.jcd, align 4, !tbaa !31
  %i.jch = sext i8 %i.jcg to i32                  ; 2 uses
  %i.jci = sub nsw i32 %.1811147815055, %i.jch    ; 4 uses
  %i.jcj = icmp slt i32 %i.jci, 0
  %i.jck = load i32, ptr %i.jce, align 4, !tbaa !3 ; 2 uses
  br i1 %i.jcj, label %bb.yb, label %bb.yf

bb.yb:                                            ; preds = %bb.ya
  %i.jcl = zext nneg i32 %.1811147815055 to i64
  %i.jcm = shl i64 %.1811122415056, %i.jcl        ; 11 uses
  %i.jcn = sub nsw i32 0, %i.jci
  %i.jco = lshr i32 %i.jck, %i.jcn
  %i.jcp = zext nneg i32 %i.jco to i64
  %i.jcq = or i64 %i.jcm, %i.jcp                  ; 14 uses
  %i.jcr = and i64 %i.jcq, -9187201950435737472
  %i.jcs = sub i64 -72340172838076674, %i.jcq
  %i.jct = and i64 %i.jcr, %i.jcs
  %.not13207 = icmp eq i64 %i.jct, 0
  %i.jcu = lshr i64 %i.jcm, 56                    ; 2 uses
  %i.jcv = trunc nuw i64 %i.jcu to i8
  store i8 %i.jcv, ptr %.27315057, align 1, !tbaa !31
  br i1 %.not13207, label %bb.yd, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  %i.jcw = getelementptr inbounds nuw i8, ptr %.27315057, i64 1 ; 2 uses
  store i8 0, ptr %i.jcw, align 1, !tbaa !31
  %.not13208 = icmp eq i64 %i.jcu, 255            ; 2 uses
  %.sroa.gep14439 = getelementptr inbounds nuw i8, ptr %.27315057, i64 2 ; 2 uses
  %.neg13209.sroa.sel = select i1 %.not13208, ptr %.sroa.gep14439, ptr %i.jcw ; 2 uses
  %i.jcx = lshr i64 %i.jcm, 48
  %i.jcy = trunc i64 %i.jcx to i8
  store i8 %i.jcy, ptr %.neg13209.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15688 = getelementptr inbounds nuw i8, ptr %.27315057, i64 3
  %.neg13209.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13208, ptr %.sroa.gep15688, ptr %.sroa.gep14439
  store i8 0, ptr %.neg13209.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jcz = and i64 %i.jcm, 71776119061217280
  %.not13210 = icmp eq i64 %i.jcz, 71776119061217280
  %.neg13211 = select i1 %.not13210, i64 2, i64 1
  %i.jda = getelementptr inbounds nuw i8, ptr %.neg13209.sroa.sel, i64 %.neg13211 ; 4 uses
  %i.jdb = lshr i64 %i.jcm, 40
  %i.jdc = trunc i64 %i.jdb to i8
  store i8 %i.jdc, ptr %i.jda, align 1, !tbaa !31
  %i.jdd = getelementptr inbounds nuw i8, ptr %i.jda, i64 1 ; 2 uses
  store i8 0, ptr %i.jdd, align 1, !tbaa !31
  %i.jde = and i64 %i.jcm, 280375465082880
  %.not13212 = icmp eq i64 %i.jde, 280375465082880 ; 2 uses
  %.sroa.gep14441 = getelementptr inbounds nuw i8, ptr %i.jda, i64 2 ; 2 uses
  %.neg13213.sroa.sel = select i1 %.not13212, ptr %.sroa.gep14441, ptr %i.jdd ; 2 uses
  %i.jdf = lshr i64 %i.jcm, 32
  %i.jdg = trunc i64 %i.jdf to i8
  store i8 %i.jdg, ptr %.neg13213.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15694 = getelementptr inbounds nuw i8, ptr %i.jda, i64 3
  %.neg13213.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13212, ptr %.sroa.gep15694, ptr %.sroa.gep14441
  store i8 0, ptr %.neg13213.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jdh = and i64 %i.jcm, 1095216660480
  %.not13214 = icmp eq i64 %i.jdh, 1095216660480
  %.neg13215 = select i1 %.not13214, i64 2, i64 1
  %i.jdi = getelementptr inbounds nuw i8, ptr %.neg13213.sroa.sel, i64 %.neg13215 ; 4 uses
  %i.jdj = lshr i64 %i.jcq, 24
  %i.jdk = trunc i64 %i.jdj to i8
  store i8 %i.jdk, ptr %i.jdi, align 1, !tbaa !31
  %i.jdl = getelementptr inbounds nuw i8, ptr %i.jdi, i64 1 ; 2 uses
  store i8 0, ptr %i.jdl, align 1, !tbaa !31
  %i.jdm = and i64 %i.jcq, 4278190080
  %.not13216 = icmp eq i64 %i.jdm, 4278190080     ; 2 uses
  %.sroa.gep14443 = getelementptr inbounds nuw i8, ptr %i.jdi, i64 2 ; 2 uses
  %.neg13217.sroa.sel = select i1 %.not13216, ptr %.sroa.gep14443, ptr %i.jdl ; 2 uses
  %i.jdn = lshr i64 %i.jcq, 16
  %i.jdo = trunc i64 %i.jdn to i8
  store i8 %i.jdo, ptr %.neg13217.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15692 = getelementptr inbounds nuw i8, ptr %i.jdi, i64 3
  %.neg13217.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13216, ptr %.sroa.gep15692, ptr %.sroa.gep14443
  store i8 0, ptr %.neg13217.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jdp = and i64 %i.jcq, 16711680
  %.not13218 = icmp eq i64 %i.jdp, 16711680
  %.neg13219 = select i1 %.not13218, i64 2, i64 1
  %i.jdq = getelementptr inbounds nuw i8, ptr %.neg13217.sroa.sel, i64 %.neg13219 ; 4 uses
  %i.jdr = lshr i64 %i.jcq, 8
  %i.jds = trunc i64 %i.jdr to i8
  store i8 %i.jds, ptr %i.jdq, align 1, !tbaa !31
  %i.jdt = getelementptr inbounds nuw i8, ptr %i.jdq, i64 1 ; 2 uses
  store i8 0, ptr %i.jdt, align 1, !tbaa !31
  %i.jdu = and i64 %i.jcq, 65280
  %.not13220 = icmp eq i64 %i.jdu, 65280          ; 2 uses
  %.sroa.gep14445 = getelementptr inbounds nuw i8, ptr %i.jdq, i64 2 ; 2 uses
  %.neg13221.sroa.sel = select i1 %.not13220, ptr %.sroa.gep14445, ptr %i.jdt ; 2 uses
  %i.jdv = trunc i64 %i.jcq to i8
  store i8 %i.jdv, ptr %.neg13221.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15690 = getelementptr inbounds nuw i8, ptr %i.jdq, i64 3
  %.neg13221.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13220, ptr %.sroa.gep15690, ptr %.sroa.gep14445
  store i8 0, ptr %.neg13221.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jdw = and i64 %i.jcq, 255
  %.not13222 = icmp eq i64 %i.jdw, 255
  %.neg13223 = select i1 %.not13222, i64 2, i64 1
  %i.jdx = getelementptr inbounds nuw i8, ptr %.neg13221.sroa.sel, i64 %.neg13223
  br label %bb.ye

bb.yd:                                            ; preds = %bb.yb
  %i.jdy = lshr i64 %i.jcm, 48
  %i.jdz = trunc i64 %i.jdy to i8
  %i.jea = getelementptr inbounds nuw i8, ptr %.27315057, i64 1
  store i8 %i.jdz, ptr %i.jea, align 1, !tbaa !31
  %i.jeb = lshr i64 %i.jcm, 40
  %i.jec = trunc i64 %i.jeb to i8
  %i.jed = getelementptr inbounds nuw i8, ptr %.27315057, i64 2
  store i8 %i.jec, ptr %i.jed, align 1, !tbaa !31
  %i.jee = lshr i64 %i.jcm, 32
  %i.jef = trunc i64 %i.jee to i8
  %i.jeg = getelementptr inbounds nuw i8, ptr %.27315057, i64 3
  store i8 %i.jef, ptr %i.jeg, align 1, !tbaa !31
  %i.jeh = lshr i64 %i.jcq, 24
  %i.jei = trunc i64 %i.jeh to i8
  %i.jej = getelementptr inbounds nuw i8, ptr %.27315057, i64 4
  store i8 %i.jei, ptr %i.jej, align 1, !tbaa !31
  %i.jek = lshr i64 %i.jcq, 16
  %i.jel = trunc i64 %i.jek to i8
  %i.jem = getelementptr inbounds nuw i8, ptr %.27315057, i64 5
  store i8 %i.jel, ptr %i.jem, align 1, !tbaa !31
  %i.jen = lshr i64 %i.jcq, 8
  %i.jeo = trunc i64 %i.jen to i8
  %i.jep = getelementptr inbounds nuw i8, ptr %.27315057, i64 6
  store i8 %i.jeo, ptr %i.jep, align 1, !tbaa !31
  %i.jeq = trunc i64 %i.jcq to i8
  %i.jer = getelementptr inbounds nuw i8, ptr %.27315057, i64 7
  store i8 %i.jeq, ptr %i.jer, align 1, !tbaa !31
  %i.jes = getelementptr inbounds nuw i8, ptr %.27315057, i64 8
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yd, %bb.yc
  %.274 = phi ptr [ %i.jdx, %bb.yc ], [ %i.jes, %bb.yd ]
  %i.jet = add nsw i32 %i.jci, 64
  %i.jeu = load i32, ptr %i.jce, align 4, !tbaa !3
  %i.jev = zext i32 %i.jeu to i64
  br label %bb.yg

bb.yf:                                            ; preds = %bb.ya
  %i.jew = zext nneg i32 %i.jch to i64
  %i.jex = shl i64 %.1811122415056, %i.jew
  %i.jey = zext i32 %i.jck to i64
  %i.jez = or i64 %i.jex, %i.jey
  br label %bb.yg

bb.yg:                                            ; preds = %bb.yf, %bb.ye
  %.18211479 = phi i32 [ %i.jet, %bb.ye ], [ %i.jci, %bb.yf ] ; 2 uses
  %.18211225 = phi i64 [ %i.jev, %bb.ye ], [ %i.jez, %bb.yf ] ; 2 uses
  %.275 = phi ptr [ %.274, %bb.ye ], [ %.27315057, %bb.yf ] ; 2 uses
  %i.jfa = icmp samesign ugt i32 %.9015058, 511
  br i1 %i.jfa, label %bb.ya, label %._crit_edge15061, !llvm.loop !118

._crit_edge15061:                                 ; preds = %bb.yg, %bb.xz
  %.18111478.lcssa = phi i32 [ %.18011477, %bb.xz ], [ %.18211479, %bb.yg ] ; 2 uses
  %.18111224.lcssa = phi i64 [ %.18011223, %bb.xz ], [ %.18211225, %bb.yg ] ; 2 uses
  %.273.lcssa = phi ptr [ %.272, %bb.xz ], [ %.275, %bb.yg ] ; 13 uses
  %.90.lcssa = phi i32 [ %.89, %bb.xz ], [ %i.jcf, %bb.yg ]
  %i.jfb = add nuw nsw i32 %.90.lcssa, %i.jbw
  %i.jfc = zext nneg i8 %i.jbv to i64
  %notmask13189 = shl nsw i64 -1, %i.jfc
  %i.jfd = trunc i64 %notmask13189 to i32
  %i.jfe = xor i32 %i.jfd, -1
  %i.jff = and i32 %i.jbr, %i.jfe
  %i.jfg = zext nneg i32 %i.jfb to i64            ; 2 uses
  %i.jfh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.jfg
  %i.jfi = load i32, ptr %i.jfh, align 4, !tbaa !3
  %i.jfj = shl i32 %i.jfi, %i.jbw
  %i.jfk = or i32 %i.jfj, %i.jff                  ; 3 uses
  %i.jfl = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.jfm = getelementptr inbounds nuw i8, ptr %i.jfl, i64 %i.jfg
  %i.jfn = load i8, ptr %i.jfm, align 1, !tbaa !31
  %i.jfo = sext i8 %i.jfn to i32
  %i.jfp = add nsw i32 %i.jfo, %i.jbw             ; 2 uses
  %i.jfq = sub nsw i32 %.18111478.lcssa, %i.jfp   ; 4 uses
  %i.jfr = icmp slt i32 %i.jfq, 0
  br i1 %i.jfr, label %bb.yh, label %bb.yl

bb.yh:                                            ; preds = %._crit_edge15061
  %i.jfs = zext nneg i32 %.18111478.lcssa to i64
  %i.jft = shl i64 %.18111224.lcssa, %i.jfs
  %i.jfu = sub nsw i32 0, %i.jfq
  %i.jfv = ashr i32 %i.jfk, %i.jfu
  %i.jfw = sext i32 %i.jfv to i64
  %i.jfx = or i64 %i.jft, %i.jfw                  ; 24 uses
  %i.jfy = and i64 %i.jfx, -9187201950435737472
  %i.jfz = sub i64 -72340172838076674, %i.jfx
  %i.jga = and i64 %i.jfy, %i.jfz
  %.not13190 = icmp eq i64 %i.jga, 0
  %i.jgb = lshr i64 %i.jfx, 56                    ; 2 uses
  %i.jgc = trunc nuw i64 %i.jgb to i8
  store i8 %i.jgc, ptr %.273.lcssa, align 1, !tbaa !31
  br i1 %.not13190, label %bb.yj, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.jgd = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.jgd, align 1, !tbaa !31
  %.not13191 = icmp eq i64 %i.jgb, 255            ; 2 uses
  %.sroa.gep14447 = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 2 ; 2 uses
  %.neg13192.sroa.sel = select i1 %.not13191, ptr %.sroa.gep14447, ptr %i.jgd ; 2 uses
  %i.jge = lshr i64 %i.jfx, 48
  %i.jgf = trunc i64 %i.jge to i8
  store i8 %i.jgf, ptr %.neg13192.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15696 = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 3
  %.neg13192.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13191, ptr %.sroa.gep15696, ptr %.sroa.gep14447
  store i8 0, ptr %.neg13192.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jgg = and i64 %i.jfx, 71776119061217280
  %.not13193 = icmp eq i64 %i.jgg, 71776119061217280
  %.neg13194 = select i1 %.not13193, i64 2, i64 1
  %i.jgh = getelementptr inbounds nuw i8, ptr %.neg13192.sroa.sel, i64 %.neg13194 ; 4 uses
  %i.jgi = lshr i64 %i.jfx, 40
  %i.jgj = trunc i64 %i.jgi to i8
  store i8 %i.jgj, ptr %i.jgh, align 1, !tbaa !31
  %i.jgk = getelementptr inbounds nuw i8, ptr %i.jgh, i64 1 ; 2 uses
  store i8 0, ptr %i.jgk, align 1, !tbaa !31
  %i.jgl = and i64 %i.jfx, 280375465082880
  %.not13195 = icmp eq i64 %i.jgl, 280375465082880 ; 2 uses
  %.sroa.gep14449 = getelementptr inbounds nuw i8, ptr %i.jgh, i64 2 ; 2 uses
  %.neg13196.sroa.sel = select i1 %.not13195, ptr %.sroa.gep14449, ptr %i.jgk ; 2 uses
  %i.jgm = lshr i64 %i.jfx, 32
  %i.jgn = trunc i64 %i.jgm to i8
  store i8 %i.jgn, ptr %.neg13196.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15702 = getelementptr inbounds nuw i8, ptr %i.jgh, i64 3
  %.neg13196.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13195, ptr %.sroa.gep15702, ptr %.sroa.gep14449
  store i8 0, ptr %.neg13196.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jgo = and i64 %i.jfx, 1095216660480
  %.not13197 = icmp eq i64 %i.jgo, 1095216660480
  %.neg13198 = select i1 %.not13197, i64 2, i64 1
  %i.jgp = getelementptr inbounds nuw i8, ptr %.neg13196.sroa.sel, i64 %.neg13198 ; 4 uses
  %i.jgq = lshr i64 %i.jfx, 24
  %i.jgr = trunc i64 %i.jgq to i8
  store i8 %i.jgr, ptr %i.jgp, align 1, !tbaa !31
  %i.jgs = getelementptr inbounds nuw i8, ptr %i.jgp, i64 1 ; 2 uses
  store i8 0, ptr %i.jgs, align 1, !tbaa !31
  %i.jgt = and i64 %i.jfx, 4278190080
  %.not13199 = icmp eq i64 %i.jgt, 4278190080     ; 2 uses
  %.sroa.gep14451 = getelementptr inbounds nuw i8, ptr %i.jgp, i64 2 ; 2 uses
  %.neg13200.sroa.sel = select i1 %.not13199, ptr %.sroa.gep14451, ptr %i.jgs ; 2 uses
  %i.jgu = lshr i64 %i.jfx, 16
  %i.jgv = trunc i64 %i.jgu to i8
  store i8 %i.jgv, ptr %.neg13200.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15700 = getelementptr inbounds nuw i8, ptr %i.jgp, i64 3
  %.neg13200.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13199, ptr %.sroa.gep15700, ptr %.sroa.gep14451
  store i8 0, ptr %.neg13200.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jgw = and i64 %i.jfx, 16711680
  %.not13201 = icmp eq i64 %i.jgw, 16711680
  %.neg13202 = select i1 %.not13201, i64 2, i64 1
  %i.jgx = getelementptr inbounds nuw i8, ptr %.neg13200.sroa.sel, i64 %.neg13202 ; 4 uses
  %i.jgy = lshr i64 %i.jfx, 8
  %i.jgz = trunc i64 %i.jgy to i8
  store i8 %i.jgz, ptr %i.jgx, align 1, !tbaa !31
  %i.jha = getelementptr inbounds nuw i8, ptr %i.jgx, i64 1 ; 2 uses
  store i8 0, ptr %i.jha, align 1, !tbaa !31
  %i.jhb = and i64 %i.jfx, 65280
  %.not13203 = icmp eq i64 %i.jhb, 65280          ; 2 uses
  %.sroa.gep14453 = getelementptr inbounds nuw i8, ptr %i.jgx, i64 2 ; 2 uses
  %.neg13204.sroa.sel = select i1 %.not13203, ptr %.sroa.gep14453, ptr %i.jha ; 2 uses
  %i.jhc = trunc i64 %i.jfx to i8
  store i8 %i.jhc, ptr %.neg13204.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15698 = getelementptr inbounds nuw i8, ptr %i.jgx, i64 3
  %.neg13204.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13203, ptr %.sroa.gep15698, ptr %.sroa.gep14453
  store i8 0, ptr %.neg13204.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jhd = and i64 %i.jfx, 255
  %.not13205 = icmp eq i64 %i.jhd, 255
  %.neg13206 = select i1 %.not13205, i64 2, i64 1
  %i.jhe = getelementptr inbounds nuw i8, ptr %.neg13204.sroa.sel, i64 %.neg13206
  br label %bb.yk

bb.yj:                                            ; preds = %bb.yh
  %i.jhf = lshr i64 %i.jfx, 48
  %i.jhg = trunc i64 %i.jhf to i8
  %i.jhh = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 1
  store i8 %i.jhg, ptr %i.jhh, align 1, !tbaa !31
  %i.jhi = lshr i64 %i.jfx, 40
  %i.jhj = trunc i64 %i.jhi to i8
  %i.jhk = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 2
  store i8 %i.jhj, ptr %i.jhk, align 1, !tbaa !31
  %i.jhl = lshr i64 %i.jfx, 32
  %i.jhm = trunc i64 %i.jhl to i8
  %i.jhn = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 3
  store i8 %i.jhm, ptr %i.jhn, align 1, !tbaa !31
  %i.jho = lshr i64 %i.jfx, 24
  %i.jhp = trunc i64 %i.jho to i8
  %i.jhq = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 4
  store i8 %i.jhp, ptr %i.jhq, align 1, !tbaa !31
  %i.jhr = lshr i64 %i.jfx, 16
  %i.jhs = trunc i64 %i.jhr to i8
  %i.jht = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 5
  store i8 %i.jhs, ptr %i.jht, align 1, !tbaa !31
  %i.jhu = lshr i64 %i.jfx, 8
  %i.jhv = trunc i64 %i.jhu to i8
  %i.jhw = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 6
  store i8 %i.jhv, ptr %i.jhw, align 1, !tbaa !31
  %i.jhx = trunc i64 %i.jfx to i8
  %i.jhy = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 7
  store i8 %i.jhx, ptr %i.jhy, align 1, !tbaa !31
  %i.jhz = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 8
  br label %bb.yk

bb.yk:                                            ; preds = %bb.yj, %bb.yi
  %.276 = phi ptr [ %i.jhe, %bb.yi ], [ %i.jhz, %bb.yj ]
  %i.jia = add nsw i32 %i.jfq, 64
  %i.jib = sext i32 %i.jfk to i64
  br label %bb.ym

bb.yl:                                            ; preds = %._crit_edge15061
  %i.jic = zext nneg i32 %i.jfp to i64
  %i.jid = shl i64 %.18111224.lcssa, %i.jic
  %i.jie = sext i32 %i.jfk to i64
  %i.jif = or i64 %i.jid, %i.jie
  br label %bb.ym

bb.ym:                                            ; preds = %bb.yk, %bb.yl, %bb.xw
  %.18411481 = phi i32 [ %.18011477, %bb.xw ], [ %i.jia, %bb.yk ], [ %i.jfq, %bb.yl ] ; 3 uses
  %.18411227 = phi i64 [ %.18011223, %bb.xw ], [ %i.jib, %bb.yk ], [ %i.jif, %bb.yl ] ; 3 uses
  %.278 = phi ptr [ %.272, %bb.xw ], [ %.276, %bb.yk ], [ %.273.lcssa, %bb.yl ] ; 3 uses
  %.91 = phi i32 [ %i.jbo, %bb.xw ], [ 0, %bb.yk ], [ 0, %bb.yl ] ; 4 uses
  %i.jig = getelementptr inbounds nuw i8, ptr %1, i64 102
  %i.jih = load i16, ptr %i.jig, align 2, !tbaa !79 ; 2 uses
  %i.jii = icmp eq i16 %i.jih, 0
  br i1 %i.jii, label %bb.yn, label %bb.yo

bb.yn:                                            ; preds = %bb.ym
  %i.jij = add nuw nsw i32 %.91, 16
  br label %bb.zd

bb.yo:                                            ; preds = %bb.ym
  %i.jik = sext i16 %i.jih to i32                 ; 2 uses
  %i.jil = ashr i32 %i.jik, 31                    ; 2 uses
  %i.jim = add nsw i32 %i.jil, %i.jik             ; 2 uses
  %i.jin = xor i32 %i.jim, %i.jil
  %i.jio = sext i32 %i.jin to i64
  %i.jip = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.jio
  %i.jiq = load i8, ptr %i.jip, align 1, !tbaa !31 ; 2 uses
  %i.jir = zext i8 %i.jiq to i32                  ; 4 uses
  %i.jis = icmp slt i32 %i.f, %i.jir
  br i1 %i.jis, label %bb.yp, label %bb.yq

bb.yp:                                            ; preds = %bb.yo
  %i.jit = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.jiu = load ptr, ptr %i.jit, align 8, !tbaa !7 ; 2 uses
  %i.jiv = getelementptr inbounds nuw i8, ptr %i.jiu, i64 40
  store i32 6, ptr %i.jiv, align 8, !tbaa !26
  %i.jiw = load ptr, ptr %i.jiu, align 8, !tbaa !32
  tail call void %i.jiw(ptr noundef nonnull %i.jit) #7
  br label %bb.yq

bb.yq:                                            ; preds = %bb.yp, %bb.yo
  %i.jix = icmp samesign ugt i32 %.91, 255
  br i1 %i.jix, label %.lr.ph15071, label %._crit_edge15072

.lr.ph15071:                                      ; preds = %bb.yq
  %i.jiy = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.jiz = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.yr

bb.yr:                                            ; preds = %.lr.ph15071, %bb.yx
  %.9215069 = phi i32 [ %.91, %.lr.ph15071 ], [ %i.jja, %bb.yx ] ; 2 uses
  %.27915068 = phi ptr [ %.278, %.lr.ph15071 ], [ %.281, %bb.yx ] ; 13 uses
  %.1851122815067 = phi i64 [ %.18411227, %.lr.ph15071 ], [ %.18611229, %bb.yx ] ; 2 uses
  %.1851148215066 = phi i32 [ %.18411481, %.lr.ph15071 ], [ %.18611483, %bb.yx ] ; 2 uses
  %i.jja = add nsw i32 %.9215069, -256            ; 2 uses
  %i.jjb = load i8, ptr %i.jiy, align 4, !tbaa !31
  %i.jjc = sext i8 %i.jjb to i32                  ; 2 uses
  %i.jjd = sub nsw i32 %.1851148215066, %i.jjc    ; 4 uses
  %i.jje = icmp slt i32 %i.jjd, 0
  %i.jjf = load i32, ptr %i.jiz, align 4, !tbaa !3 ; 2 uses
  br i1 %i.jje, label %bb.ys, label %bb.yw

bb.ys:                                            ; preds = %bb.yr
  %i.jjg = zext nneg i32 %.1851148215066 to i64
  %i.jjh = shl i64 %.1851122815067, %i.jjg        ; 11 uses
  %i.jji = sub nsw i32 0, %i.jjd
  %i.jjj = lshr i32 %i.jjf, %i.jji
  %i.jjk = zext nneg i32 %i.jjj to i64
  %i.jjl = or i64 %i.jjh, %i.jjk                  ; 14 uses
  %i.jjm = and i64 %i.jjl, -9187201950435737472
  %i.jjn = sub i64 -72340172838076674, %i.jjl
  %i.jjo = and i64 %i.jjm, %i.jjn
  %.not13242 = icmp eq i64 %i.jjo, 0
  %i.jjp = lshr i64 %i.jjh, 56                    ; 2 uses
  %i.jjq = trunc nuw i64 %i.jjp to i8
  store i8 %i.jjq, ptr %.27915068, align 1, !tbaa !31
  br i1 %.not13242, label %bb.yu, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %i.jjr = getelementptr inbounds nuw i8, ptr %.27915068, i64 1 ; 2 uses
  store i8 0, ptr %i.jjr, align 1, !tbaa !31
  %.not13243 = icmp eq i64 %i.jjp, 255            ; 2 uses
  %.sroa.gep14455 = getelementptr inbounds nuw i8, ptr %.27915068, i64 2 ; 2 uses
  %.neg13244.sroa.sel = select i1 %.not13243, ptr %.sroa.gep14455, ptr %i.jjr ; 2 uses
  %i.jjs = lshr i64 %i.jjh, 48
  %i.jjt = trunc i64 %i.jjs to i8
  store i8 %i.jjt, ptr %.neg13244.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15672 = getelementptr inbounds nuw i8, ptr %.27915068, i64 3
  %.neg13244.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13243, ptr %.sroa.gep15672, ptr %.sroa.gep14455
  store i8 0, ptr %.neg13244.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jju = and i64 %i.jjh, 71776119061217280
  %.not13245 = icmp eq i64 %i.jju, 71776119061217280
  %.neg13246 = select i1 %.not13245, i64 2, i64 1
  %i.jjv = getelementptr inbounds nuw i8, ptr %.neg13244.sroa.sel, i64 %.neg13246 ; 4 uses
  %i.jjw = lshr i64 %i.jjh, 40
  %i.jjx = trunc i64 %i.jjw to i8
  store i8 %i.jjx, ptr %i.jjv, align 1, !tbaa !31
  %i.jjy = getelementptr inbounds nuw i8, ptr %i.jjv, i64 1 ; 2 uses
  store i8 0, ptr %i.jjy, align 1, !tbaa !31
  %i.jjz = and i64 %i.jjh, 280375465082880
  %.not13247 = icmp eq i64 %i.jjz, 280375465082880 ; 2 uses
  %.sroa.gep14457 = getelementptr inbounds nuw i8, ptr %i.jjv, i64 2 ; 2 uses
  %.neg13248.sroa.sel = select i1 %.not13247, ptr %.sroa.gep14457, ptr %i.jjy ; 2 uses
  %i.jka = lshr i64 %i.jjh, 32
  %i.jkb = trunc i64 %i.jka to i8
  store i8 %i.jkb, ptr %.neg13248.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15678 = getelementptr inbounds nuw i8, ptr %i.jjv, i64 3
  %.neg13248.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13247, ptr %.sroa.gep15678, ptr %.sroa.gep14457
  store i8 0, ptr %.neg13248.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jkc = and i64 %i.jjh, 1095216660480
  %.not13249 = icmp eq i64 %i.jkc, 1095216660480
  %.neg13250 = select i1 %.not13249, i64 2, i64 1
  %i.jkd = getelementptr inbounds nuw i8, ptr %.neg13248.sroa.sel, i64 %.neg13250 ; 4 uses
  %i.jke = lshr i64 %i.jjl, 24
  %i.jkf = trunc i64 %i.jke to i8
  store i8 %i.jkf, ptr %i.jkd, align 1, !tbaa !31
  %i.jkg = getelementptr inbounds nuw i8, ptr %i.jkd, i64 1 ; 2 uses
  store i8 0, ptr %i.jkg, align 1, !tbaa !31
  %i.jkh = and i64 %i.jjl, 4278190080
  %.not13251 = icmp eq i64 %i.jkh, 4278190080     ; 2 uses
  %.sroa.gep14459 = getelementptr inbounds nuw i8, ptr %i.jkd, i64 2 ; 2 uses
  %.neg13252.sroa.sel = select i1 %.not13251, ptr %.sroa.gep14459, ptr %i.jkg ; 2 uses
  %i.jki = lshr i64 %i.jjl, 16
  %i.jkj = trunc i64 %i.jki to i8
  store i8 %i.jkj, ptr %.neg13252.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15676 = getelementptr inbounds nuw i8, ptr %i.jkd, i64 3
  %.neg13252.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13251, ptr %.sroa.gep15676, ptr %.sroa.gep14459
  store i8 0, ptr %.neg13252.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jkk = and i64 %i.jjl, 16711680
  %.not13253 = icmp eq i64 %i.jkk, 16711680
  %.neg13254 = select i1 %.not13253, i64 2, i64 1
  %i.jkl = getelementptr inbounds nuw i8, ptr %.neg13252.sroa.sel, i64 %.neg13254 ; 4 uses
  %i.jkm = lshr i64 %i.jjl, 8
  %i.jkn = trunc i64 %i.jkm to i8
  store i8 %i.jkn, ptr %i.jkl, align 1, !tbaa !31
  %i.jko = getelementptr inbounds nuw i8, ptr %i.jkl, i64 1 ; 2 uses
  store i8 0, ptr %i.jko, align 1, !tbaa !31
  %i.jkp = and i64 %i.jjl, 65280
  %.not13255 = icmp eq i64 %i.jkp, 65280          ; 2 uses
  %.sroa.gep14461 = getelementptr inbounds nuw i8, ptr %i.jkl, i64 2 ; 2 uses
  %.neg13256.sroa.sel = select i1 %.not13255, ptr %.sroa.gep14461, ptr %i.jko ; 2 uses
  %i.jkq = trunc i64 %i.jjl to i8
  store i8 %i.jkq, ptr %.neg13256.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15674 = getelementptr inbounds nuw i8, ptr %i.jkl, i64 3
  %.neg13256.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13255, ptr %.sroa.gep15674, ptr %.sroa.gep14461
  store i8 0, ptr %.neg13256.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jkr = and i64 %i.jjl, 255
  %.not13257 = icmp eq i64 %i.jkr, 255
  %.neg13258 = select i1 %.not13257, i64 2, i64 1
  %i.jks = getelementptr inbounds nuw i8, ptr %.neg13256.sroa.sel, i64 %.neg13258
  br label %bb.yv

bb.yu:                                            ; preds = %bb.ys
  %i.jkt = lshr i64 %i.jjh, 48
  %i.jku = trunc i64 %i.jkt to i8
  %i.jkv = getelementptr inbounds nuw i8, ptr %.27915068, i64 1
  store i8 %i.jku, ptr %i.jkv, align 1, !tbaa !31
  %i.jkw = lshr i64 %i.jjh, 40
  %i.jkx = trunc i64 %i.jkw to i8
  %i.jky = getelementptr inbounds nuw i8, ptr %.27915068, i64 2
  store i8 %i.jkx, ptr %i.jky, align 1, !tbaa !31
  %i.jkz = lshr i64 %i.jjh, 32
  %i.jla = trunc i64 %i.jkz to i8
  %i.jlb = getelementptr inbounds nuw i8, ptr %.27915068, i64 3
  store i8 %i.jla, ptr %i.jlb, align 1, !tbaa !31
  %i.jlc = lshr i64 %i.jjl, 24
  %i.jld = trunc i64 %i.jlc to i8
  %i.jle = getelementptr inbounds nuw i8, ptr %.27915068, i64 4
  store i8 %i.jld, ptr %i.jle, align 1, !tbaa !31
  %i.jlf = lshr i64 %i.jjl, 16
  %i.jlg = trunc i64 %i.jlf to i8
  %i.jlh = getelementptr inbounds nuw i8, ptr %.27915068, i64 5
  store i8 %i.jlg, ptr %i.jlh, align 1, !tbaa !31
  %i.jli = lshr i64 %i.jjl, 8
  %i.jlj = trunc i64 %i.jli to i8
  %i.jlk = getelementptr inbounds nuw i8, ptr %.27915068, i64 6
  store i8 %i.jlj, ptr %i.jlk, align 1, !tbaa !31
  %i.jll = trunc i64 %i.jjl to i8
  %i.jlm = getelementptr inbounds nuw i8, ptr %.27915068, i64 7
  store i8 %i.jll, ptr %i.jlm, align 1, !tbaa !31
  %i.jln = getelementptr inbounds nuw i8, ptr %.27915068, i64 8
  br label %bb.yv

bb.yv:                                            ; preds = %bb.yu, %bb.yt
  %.280 = phi ptr [ %i.jks, %bb.yt ], [ %i.jln, %bb.yu ]
  %i.jlo = add nsw i32 %i.jjd, 64
  %i.jlp = load i32, ptr %i.jiz, align 4, !tbaa !3
  %i.jlq = zext i32 %i.jlp to i64
  br label %bb.yx

bb.yw:                                            ; preds = %bb.yr
  %i.jlr = zext nneg i32 %i.jjc to i64
  %i.jls = shl i64 %.1851122815067, %i.jlr
  %i.jlt = zext i32 %i.jjf to i64
  %i.jlu = or i64 %i.jls, %i.jlt
  br label %bb.yx

bb.yx:                                            ; preds = %bb.yw, %bb.yv
  %.18611483 = phi i32 [ %i.jlo, %bb.yv ], [ %i.jjd, %bb.yw ] ; 2 uses
  %.18611229 = phi i64 [ %i.jlq, %bb.yv ], [ %i.jlu, %bb.yw ] ; 2 uses
  %.281 = phi ptr [ %.280, %bb.yv ], [ %.27915068, %bb.yw ] ; 2 uses
  %i.jlv = icmp samesign ugt i32 %.9215069, 511
  br i1 %i.jlv, label %bb.yr, label %._crit_edge15072, !llvm.loop !119

._crit_edge15072:                                 ; preds = %bb.yx, %bb.yq
  %.18511482.lcssa = phi i32 [ %.18411481, %bb.yq ], [ %.18611483, %bb.yx ] ; 2 uses
  %.18511228.lcssa = phi i64 [ %.18411227, %bb.yq ], [ %.18611229, %bb.yx ] ; 2 uses
  %.279.lcssa = phi ptr [ %.278, %bb.yq ], [ %.281, %bb.yx ] ; 13 uses
  %.92.lcssa = phi i32 [ %.91, %bb.yq ], [ %i.jja, %bb.yx ]
  %i.jlw = add nuw nsw i32 %.92.lcssa, %i.jir
  %i.jlx = zext nneg i8 %i.jiq to i64
  %notmask13224 = shl nsw i64 -1, %i.jlx
  %i.jly = trunc i64 %notmask13224 to i32
  %i.jlz = xor i32 %i.jly, -1
  %i.jma = and i32 %i.jim, %i.jlz
  %i.jmb = zext nneg i32 %i.jlw to i64            ; 2 uses
  %i.jmc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.jmb
  %i.jmd = load i32, ptr %i.jmc, align 4, !tbaa !3
  %i.jme = shl i32 %i.jmd, %i.jir
  %i.jmf = or i32 %i.jme, %i.jma                  ; 3 uses
  %i.jmg = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.jmh = getelementptr inbounds nuw i8, ptr %i.jmg, i64 %i.jmb
  %i.jmi = load i8, ptr %i.jmh, align 1, !tbaa !31
  %i.jmj = sext i8 %i.jmi to i32
  %i.jmk = add nsw i32 %i.jmj, %i.jir             ; 2 uses
  %i.jml = sub nsw i32 %.18511482.lcssa, %i.jmk   ; 4 uses
  %i.jmm = icmp slt i32 %i.jml, 0
  br i1 %i.jmm, label %bb.yy, label %bb.zc

bb.yy:                                            ; preds = %._crit_edge15072
  %i.jmn = zext nneg i32 %.18511482.lcssa to i64
  %i.jmo = shl i64 %.18511228.lcssa, %i.jmn
  %i.jmp = sub nsw i32 0, %i.jml
  %i.jmq = ashr i32 %i.jmf, %i.jmp
  %i.jmr = sext i32 %i.jmq to i64
  %i.jms = or i64 %i.jmo, %i.jmr                  ; 24 uses
  %i.jmt = and i64 %i.jms, -9187201950435737472
  %i.jmu = sub i64 -72340172838076674, %i.jms
  %i.jmv = and i64 %i.jmt, %i.jmu
  %.not13225 = icmp eq i64 %i.jmv, 0
  %i.jmw = lshr i64 %i.jms, 56                    ; 2 uses
  %i.jmx = trunc nuw i64 %i.jmw to i8
  store i8 %i.jmx, ptr %.279.lcssa, align 1, !tbaa !31
  br i1 %.not13225, label %bb.za, label %bb.yz

bb.yz:                                            ; preds = %bb.yy
  %i.jmy = getelementptr inbounds nuw i8, ptr %.279.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.jmy, align 1, !tbaa !31
  %.not13226 = icmp eq i64 %i.jmw, 255            ; 2 uses
  %.sroa.gep14463 = getelementptr inbounds nuw i8, ptr %.279.lcssa, i64 2 ; 2 uses
  %.neg13227.sroa.sel = select i1 %.not13226, ptr %.sroa.gep14463, ptr %i.jmy ; 2 uses
  %i.jmz = lshr i64 %i.jms, 48
  %i.jna = trunc i64 %i.jmz to i8
  store i8 %i.jna, ptr %.neg13227.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15680 = getelementptr inbounds nuw i8, ptr %.279.lcssa, i64 3
  %.neg13227.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13226, ptr %.sroa.gep15680, ptr %.sroa.gep14463
  store i8 0, ptr %.neg13227.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jnb = and i64 %i.jms, 71776119061217280
  %.not13228 = icmp eq i64 %i.jnb, 71776119061217280
  %.neg13229 = select i1 %.not13228, i64 2, i64 1
  %i.jnc = getelementptr inbounds nuw i8, ptr %.neg13227.sroa.sel, i64 %.neg13229 ; 4 uses
  %i.jnd = lshr i64 %i.jms, 40
  %i.jne = trunc i64 %i.jnd to i8
  store i8 %i.jne, ptr %i.jnc, align 1, !tbaa !31
  %i.jnf = getelementptr inbounds nuw i8, ptr %i.jnc, i64 1 ; 2 uses
  store i8 0, ptr %i.jnf, align 1, !tbaa !31
  %i.jng = and i64 %i.jms, 280375465082880
  %.not13230 = icmp eq i64 %i.jng, 280375465082880 ; 2 uses
  %.sroa.gep14465 = getelementptr inbounds nuw i8, ptr %i.jnc, i64 2 ; 2 uses
  %.neg13231.sroa.sel = select i1 %.not13230, ptr %.sroa.gep14465, ptr %i.jnf ; 2 uses
  %i.jnh = lshr i64 %i.jms, 32
  %i.jni = trunc i64 %i.jnh to i8
  store i8 %i.jni, ptr %.neg13231.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15686 = getelementptr inbounds nuw i8, ptr %i.jnc, i64 3
  %.neg13231.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13230, ptr %.sroa.gep15686, ptr %.sroa.gep14465
  store i8 0, ptr %.neg13231.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jnj = and i64 %i.jms, 1095216660480
  %.not13232 = icmp eq i64 %i.jnj, 1095216660480
  %.neg13233 = select i1 %.not13232, i64 2, i64 1
  %i.jnk = getelementptr inbounds nuw i8, ptr %.neg13231.sroa.sel, i64 %.neg13233 ; 4 uses
  %i.jnl = lshr i64 %i.jms, 24
  %i.jnm = trunc i64 %i.jnl to i8
  store i8 %i.jnm, ptr %i.jnk, align 1, !tbaa !31
  %i.jnn = getelementptr inbounds nuw i8, ptr %i.jnk, i64 1 ; 2 uses
  store i8 0, ptr %i.jnn, align 1, !tbaa !31
  %i.jno = and i64 %i.jms, 4278190080
  %.not13234 = icmp eq i64 %i.jno, 4278190080     ; 2 uses
  %.sroa.gep14467 = getelementptr inbounds nuw i8, ptr %i.jnk, i64 2 ; 2 uses
  %.neg13235.sroa.sel = select i1 %.not13234, ptr %.sroa.gep14467, ptr %i.jnn ; 2 uses
  %i.jnp = lshr i64 %i.jms, 16
  %i.jnq = trunc i64 %i.jnp to i8
  store i8 %i.jnq, ptr %.neg13235.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15684 = getelementptr inbounds nuw i8, ptr %i.jnk, i64 3
  %.neg13235.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13234, ptr %.sroa.gep15684, ptr %.sroa.gep14467
  store i8 0, ptr %.neg13235.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jnr = and i64 %i.jms, 16711680
  %.not13236 = icmp eq i64 %i.jnr, 16711680
  %.neg13237 = select i1 %.not13236, i64 2, i64 1
  %i.jns = getelementptr inbounds nuw i8, ptr %.neg13235.sroa.sel, i64 %.neg13237 ; 4 uses
  %i.jnt = lshr i64 %i.jms, 8
  %i.jnu = trunc i64 %i.jnt to i8
  store i8 %i.jnu, ptr %i.jns, align 1, !tbaa !31
  %i.jnv = getelementptr inbounds nuw i8, ptr %i.jns, i64 1 ; 2 uses
  store i8 0, ptr %i.jnv, align 1, !tbaa !31
  %i.jnw = and i64 %i.jms, 65280
  %.not13238 = icmp eq i64 %i.jnw, 65280          ; 2 uses
  %.sroa.gep14469 = getelementptr inbounds nuw i8, ptr %i.jns, i64 2 ; 2 uses
  %.neg13239.sroa.sel = select i1 %.not13238, ptr %.sroa.gep14469, ptr %i.jnv ; 2 uses
  %i.jnx = trunc i64 %i.jms to i8
  store i8 %i.jnx, ptr %.neg13239.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15682 = getelementptr inbounds nuw i8, ptr %i.jns, i64 3
  %.neg13239.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13238, ptr %.sroa.gep15682, ptr %.sroa.gep14469
  store i8 0, ptr %.neg13239.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jny = and i64 %i.jms, 255
  %.not13240 = icmp eq i64 %i.jny, 255
  %.neg13241 = select i1 %.not13240, i64 2, i64 1
  %i.jnz = getelementptr inbounds nuw i8, ptr %.neg13239.sroa.sel, i64 %.neg13241
  br label %bb.zb

bb.za:                                            ; preds = %bb.yy
  %i.joa = lshr i64 %i.jms, 48
  %i.job = trunc i64 %i.joa to i8
  %i.joc = getelementptr inbounds nuw i8, ptr %.279.lcssa, i64 1
  store i8 %i.job, ptr %i.joc, align 1, !tbaa !31
  %i.jod = lshr i64 %i.jms, 40
  %i.joe = trunc i64 %i.jod to i8
  %i.jof = getelementptr inbounds nuw i8, ptr %.279.lcssa, i64 2
  store i8 %i.joe, ptr %i.jof, align 1, !tbaa !31
  %i.jog = lshr i64 %i.jms, 32
  %i.joh = trunc i64 %i.jog to i8
  %i.joi = getelementptr inbounds nuw i8, ptr %.279.lcssa, i64 3
  store i8 %i.joh, ptr %i.joi, align 1, !tbaa !31
  %i.joj = lshr i64 %i.jms, 24
  %i.jok = trunc i64 %i.joj to i8
  %i.jol = getelementptr inbounds nuw i8, ptr %.279.lcssa, i64 4
  store i8 %i.jok, ptr %i.jol, align 1, !tbaa !31
  %i.jom = lshr i64 %i.jms, 16
  %i.jon = trunc i64 %i.jom to i8
  %i.joo = getelementptr inbounds nuw i8, ptr %.279.lcssa, i64 5
  store i8 %i.jon, ptr %i.joo, align 1, !tbaa !31
  %i.jop = lshr i64 %i.jms, 8
  %i.joq = trunc i64 %i.jop to i8
  %i.jor = getelementptr inbounds nuw i8, ptr %.279.lcssa, i64 6
  store i8 %i.joq, ptr %i.jor, align 1, !tbaa !31
  %i.jos = trunc i64 %i.jms to i8
  %i.jot = getelementptr inbounds nuw i8, ptr %.279.lcssa, i64 7
  store i8 %i.jos, ptr %i.jot, align 1, !tbaa !31
  %i.jou = getelementptr inbounds nuw i8, ptr %.279.lcssa, i64 8
  br label %bb.zb

bb.zb:                                            ; preds = %bb.za, %bb.yz
  %.282 = phi ptr [ %i.jnz, %bb.yz ], [ %i.jou, %bb.za ]
  %i.jov = add nsw i32 %i.jml, 64
  %i.jow = sext i32 %i.jmf to i64
  br label %bb.zd

bb.zc:                                            ; preds = %._crit_edge15072
  %i.jox = zext nneg i32 %i.jmk to i64
  %i.joy = shl i64 %.18511228.lcssa, %i.jox
  %i.joz = sext i32 %i.jmf to i64
  %i.jpa = or i64 %i.joy, %i.joz
  br label %bb.zd

bb.zd:                                            ; preds = %bb.zb, %bb.zc, %bb.yn
  %.18811485 = phi i32 [ %.18411481, %bb.yn ], [ %i.jov, %bb.zb ], [ %i.jml, %bb.zc ] ; 3 uses
  %.18811231 = phi i64 [ %.18411227, %bb.yn ], [ %i.jow, %bb.zb ], [ %i.jpa, %bb.zc ] ; 3 uses
  %.284 = phi ptr [ %.278, %bb.yn ], [ %.282, %bb.zb ], [ %.279.lcssa, %bb.zc ] ; 3 uses
  %.93 = phi i32 [ %i.jij, %bb.yn ], [ 0, %bb.zb ], [ 0, %bb.zc ] ; 4 uses
  %i.jpb = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.jpc = load i16, ptr %i.jpb, align 2, !tbaa !79 ; 2 uses
  %i.jpd = icmp eq i16 %i.jpc, 0
  br i1 %i.jpd, label %bb.ze, label %bb.zf

bb.ze:                                            ; preds = %bb.zd
  %i.jpe = add nuw nsw i32 %.93, 16
  br label %bb.zu

bb.zf:                                            ; preds = %bb.zd
  %i.jpf = sext i16 %i.jpc to i32                 ; 2 uses
  %i.jpg = ashr i32 %i.jpf, 31                    ; 2 uses
  %i.jph = add nsw i32 %i.jpg, %i.jpf             ; 2 uses
  %i.jpi = xor i32 %i.jph, %i.jpg
  %i.jpj = sext i32 %i.jpi to i64
  %i.jpk = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.jpj
  %i.jpl = load i8, ptr %i.jpk, align 1, !tbaa !31 ; 2 uses
  %i.jpm = zext i8 %i.jpl to i32                  ; 4 uses
  %i.jpn = icmp slt i32 %i.f, %i.jpm
  br i1 %i.jpn, label %bb.zg, label %bb.zh

bb.zg:                                            ; preds = %bb.zf
  %i.jpo = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.jpp = load ptr, ptr %i.jpo, align 8, !tbaa !7 ; 2 uses
  %i.jpq = getelementptr inbounds nuw i8, ptr %i.jpp, i64 40
  store i32 6, ptr %i.jpq, align 8, !tbaa !26
  %i.jpr = load ptr, ptr %i.jpp, align 8, !tbaa !32
  tail call void %i.jpr(ptr noundef nonnull %i.jpo) #7
  br label %bb.zh

bb.zh:                                            ; preds = %bb.zg, %bb.zf
  %i.jps = icmp samesign ugt i32 %.93, 255
  br i1 %i.jps, label %.lr.ph15082, label %._crit_edge15083

.lr.ph15082:                                      ; preds = %bb.zh
  %i.jpt = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.jpu = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.zi

bb.zi:                                            ; preds = %.lr.ph15082, %bb.zo
  %.9415080 = phi i32 [ %.93, %.lr.ph15082 ], [ %i.jpv, %bb.zo ] ; 2 uses
  %.28515079 = phi ptr [ %.284, %.lr.ph15082 ], [ %.287, %bb.zo ] ; 13 uses
  %.1891123215078 = phi i64 [ %.18811231, %.lr.ph15082 ], [ %.19011233, %bb.zo ] ; 2 uses
  %.1891148615077 = phi i32 [ %.18811485, %.lr.ph15082 ], [ %.19011487, %bb.zo ] ; 2 uses
  %i.jpv = add nsw i32 %.9415080, -256            ; 2 uses
  %i.jpw = load i8, ptr %i.jpt, align 4, !tbaa !31
  %i.jpx = sext i8 %i.jpw to i32                  ; 2 uses
  %i.jpy = sub nsw i32 %.1891148615077, %i.jpx    ; 4 uses
  %i.jpz = icmp slt i32 %i.jpy, 0
  %i.jqa = load i32, ptr %i.jpu, align 4, !tbaa !3 ; 2 uses
  br i1 %i.jpz, label %bb.zj, label %bb.zn

bb.zj:                                            ; preds = %bb.zi
  %i.jqb = zext nneg i32 %.1891148615077 to i64
  %i.jqc = shl i64 %.1891123215078, %i.jqb        ; 11 uses
  %i.jqd = sub nsw i32 0, %i.jpy
  %i.jqe = lshr i32 %i.jqa, %i.jqd
  %i.jqf = zext nneg i32 %i.jqe to i64
  %i.jqg = or i64 %i.jqc, %i.jqf                  ; 14 uses
  %i.jqh = and i64 %i.jqg, -9187201950435737472
  %i.jqi = sub i64 -72340172838076674, %i.jqg
  %i.jqj = and i64 %i.jqh, %i.jqi
  %.not13277 = icmp eq i64 %i.jqj, 0
  %i.jqk = lshr i64 %i.jqc, 56                    ; 2 uses
  %i.jql = trunc nuw i64 %i.jqk to i8
  store i8 %i.jql, ptr %.28515079, align 1, !tbaa !31
  br i1 %.not13277, label %bb.zl, label %bb.zk

bb.zk:                                            ; preds = %bb.zj
  %i.jqm = getelementptr inbounds nuw i8, ptr %.28515079, i64 1 ; 2 uses
  store i8 0, ptr %i.jqm, align 1, !tbaa !31
  %.not13278 = icmp eq i64 %i.jqk, 255            ; 2 uses
  %.sroa.gep14471 = getelementptr inbounds nuw i8, ptr %.28515079, i64 2 ; 2 uses
  %.neg13279.sroa.sel = select i1 %.not13278, ptr %.sroa.gep14471, ptr %i.jqm ; 2 uses
  %i.jqn = lshr i64 %i.jqc, 48
  %i.jqo = trunc i64 %i.jqn to i8
  store i8 %i.jqo, ptr %.neg13279.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15656 = getelementptr inbounds nuw i8, ptr %.28515079, i64 3
  %.neg13279.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13278, ptr %.sroa.gep15656, ptr %.sroa.gep14471
  store i8 0, ptr %.neg13279.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jqp = and i64 %i.jqc, 71776119061217280
  %.not13280 = icmp eq i64 %i.jqp, 71776119061217280
  %.neg13281 = select i1 %.not13280, i64 2, i64 1
  %i.jqq = getelementptr inbounds nuw i8, ptr %.neg13279.sroa.sel, i64 %.neg13281 ; 4 uses
  %i.jqr = lshr i64 %i.jqc, 40
  %i.jqs = trunc i64 %i.jqr to i8
  store i8 %i.jqs, ptr %i.jqq, align 1, !tbaa !31
  %i.jqt = getelementptr inbounds nuw i8, ptr %i.jqq, i64 1 ; 2 uses
  store i8 0, ptr %i.jqt, align 1, !tbaa !31
  %i.jqu = and i64 %i.jqc, 280375465082880
  %.not13282 = icmp eq i64 %i.jqu, 280375465082880 ; 2 uses
  %.sroa.gep14473 = getelementptr inbounds nuw i8, ptr %i.jqq, i64 2 ; 2 uses
  %.neg13283.sroa.sel = select i1 %.not13282, ptr %.sroa.gep14473, ptr %i.jqt ; 2 uses
  %i.jqv = lshr i64 %i.jqc, 32
  %i.jqw = trunc i64 %i.jqv to i8
  store i8 %i.jqw, ptr %.neg13283.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15662 = getelementptr inbounds nuw i8, ptr %i.jqq, i64 3
  %.neg13283.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13282, ptr %.sroa.gep15662, ptr %.sroa.gep14473
  store i8 0, ptr %.neg13283.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jqx = and i64 %i.jqc, 1095216660480
  %.not13284 = icmp eq i64 %i.jqx, 1095216660480
  %.neg13285 = select i1 %.not13284, i64 2, i64 1
  %i.jqy = getelementptr inbounds nuw i8, ptr %.neg13283.sroa.sel, i64 %.neg13285 ; 4 uses
  %i.jqz = lshr i64 %i.jqg, 24
  %i.jra = trunc i64 %i.jqz to i8
  store i8 %i.jra, ptr %i.jqy, align 1, !tbaa !31
  %i.jrb = getelementptr inbounds nuw i8, ptr %i.jqy, i64 1 ; 2 uses
  store i8 0, ptr %i.jrb, align 1, !tbaa !31
  %i.jrc = and i64 %i.jqg, 4278190080
  %.not13286 = icmp eq i64 %i.jrc, 4278190080     ; 2 uses
  %.sroa.gep14475 = getelementptr inbounds nuw i8, ptr %i.jqy, i64 2 ; 2 uses
  %.neg13287.sroa.sel = select i1 %.not13286, ptr %.sroa.gep14475, ptr %i.jrb ; 2 uses
  %i.jrd = lshr i64 %i.jqg, 16
  %i.jre = trunc i64 %i.jrd to i8
  store i8 %i.jre, ptr %.neg13287.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15660 = getelementptr inbounds nuw i8, ptr %i.jqy, i64 3
  %.neg13287.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13286, ptr %.sroa.gep15660, ptr %.sroa.gep14475
  store i8 0, ptr %.neg13287.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jrf = and i64 %i.jqg, 16711680
  %.not13288 = icmp eq i64 %i.jrf, 16711680
  %.neg13289 = select i1 %.not13288, i64 2, i64 1
  %i.jrg = getelementptr inbounds nuw i8, ptr %.neg13287.sroa.sel, i64 %.neg13289 ; 4 uses
  %i.jrh = lshr i64 %i.jqg, 8
  %i.jri = trunc i64 %i.jrh to i8
  store i8 %i.jri, ptr %i.jrg, align 1, !tbaa !31
  %i.jrj = getelementptr inbounds nuw i8, ptr %i.jrg, i64 1 ; 2 uses
  store i8 0, ptr %i.jrj, align 1, !tbaa !31
  %i.jrk = and i64 %i.jqg, 65280
  %.not13290 = icmp eq i64 %i.jrk, 65280          ; 2 uses
  %.sroa.gep14477 = getelementptr inbounds nuw i8, ptr %i.jrg, i64 2 ; 2 uses
  %.neg13291.sroa.sel = select i1 %.not13290, ptr %.sroa.gep14477, ptr %i.jrj ; 2 uses
  %i.jrl = trunc i64 %i.jqg to i8
  store i8 %i.jrl, ptr %.neg13291.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15658 = getelementptr inbounds nuw i8, ptr %i.jrg, i64 3
  %.neg13291.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13290, ptr %.sroa.gep15658, ptr %.sroa.gep14477
  store i8 0, ptr %.neg13291.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jrm = and i64 %i.jqg, 255
  %.not13292 = icmp eq i64 %i.jrm, 255
  %.neg13293 = select i1 %.not13292, i64 2, i64 1
  %i.jrn = getelementptr inbounds nuw i8, ptr %.neg13291.sroa.sel, i64 %.neg13293
  br label %bb.zm

bb.zl:                                            ; preds = %bb.zj
  %i.jro = lshr i64 %i.jqc, 48
  %i.jrp = trunc i64 %i.jro to i8
  %i.jrq = getelementptr inbounds nuw i8, ptr %.28515079, i64 1
  store i8 %i.jrp, ptr %i.jrq, align 1, !tbaa !31
  %i.jrr = lshr i64 %i.jqc, 40
  %i.jrs = trunc i64 %i.jrr to i8
  %i.jrt = getelementptr inbounds nuw i8, ptr %.28515079, i64 2
  store i8 %i.jrs, ptr %i.jrt, align 1, !tbaa !31
  %i.jru = lshr i64 %i.jqc, 32
  %i.jrv = trunc i64 %i.jru to i8
  %i.jrw = getelementptr inbounds nuw i8, ptr %.28515079, i64 3
  store i8 %i.jrv, ptr %i.jrw, align 1, !tbaa !31
  %i.jrx = lshr i64 %i.jqg, 24
  %i.jry = trunc i64 %i.jrx to i8
  %i.jrz = getelementptr inbounds nuw i8, ptr %.28515079, i64 4
  store i8 %i.jry, ptr %i.jrz, align 1, !tbaa !31
  %i.jsa = lshr i64 %i.jqg, 16
  %i.jsb = trunc i64 %i.jsa to i8
  %i.jsc = getelementptr inbounds nuw i8, ptr %.28515079, i64 5
  store i8 %i.jsb, ptr %i.jsc, align 1, !tbaa !31
  %i.jsd = lshr i64 %i.jqg, 8
  %i.jse = trunc i64 %i.jsd to i8
  %i.jsf = getelementptr inbounds nuw i8, ptr %.28515079, i64 6
  store i8 %i.jse, ptr %i.jsf, align 1, !tbaa !31
  %i.jsg = trunc i64 %i.jqg to i8
  %i.jsh = getelementptr inbounds nuw i8, ptr %.28515079, i64 7
  store i8 %i.jsg, ptr %i.jsh, align 1, !tbaa !31
  %i.jsi = getelementptr inbounds nuw i8, ptr %.28515079, i64 8
  br label %bb.zm

bb.zm:                                            ; preds = %bb.zl, %bb.zk
  %.286 = phi ptr [ %i.jrn, %bb.zk ], [ %i.jsi, %bb.zl ]
  %i.jsj = add nsw i32 %i.jpy, 64
  %i.jsk = load i32, ptr %i.jpu, align 4, !tbaa !3
  %i.jsl = zext i32 %i.jsk to i64
  br label %bb.zo

bb.zn:                                            ; preds = %bb.zi
  %i.jsm = zext nneg i32 %i.jpx to i64
  %i.jsn = shl i64 %.1891123215078, %i.jsm
  %i.jso = zext i32 %i.jqa to i64
  %i.jsp = or i64 %i.jsn, %i.jso
  br label %bb.zo

bb.zo:                                            ; preds = %bb.zn, %bb.zm
  %.19011487 = phi i32 [ %i.jsj, %bb.zm ], [ %i.jpy, %bb.zn ] ; 2 uses
  %.19011233 = phi i64 [ %i.jsl, %bb.zm ], [ %i.jsp, %bb.zn ] ; 2 uses
  %.287 = phi ptr [ %.286, %bb.zm ], [ %.28515079, %bb.zn ] ; 2 uses
  %i.jsq = icmp samesign ugt i32 %.9415080, 511
  br i1 %i.jsq, label %bb.zi, label %._crit_edge15083, !llvm.loop !120

._crit_edge15083:                                 ; preds = %bb.zo, %bb.zh
  %.18911486.lcssa = phi i32 [ %.18811485, %bb.zh ], [ %.19011487, %bb.zo ] ; 2 uses
  %.18911232.lcssa = phi i64 [ %.18811231, %bb.zh ], [ %.19011233, %bb.zo ] ; 2 uses
  %.285.lcssa = phi ptr [ %.284, %bb.zh ], [ %.287, %bb.zo ] ; 13 uses
  %.94.lcssa = phi i32 [ %.93, %bb.zh ], [ %i.jpv, %bb.zo ]
  %i.jsr = add nuw nsw i32 %.94.lcssa, %i.jpm
  %i.jss = zext nneg i8 %i.jpl to i64
  %notmask13259 = shl nsw i64 -1, %i.jss
  %i.jst = trunc i64 %notmask13259 to i32
  %i.jsu = xor i32 %i.jst, -1
  %i.jsv = and i32 %i.jph, %i.jsu
  %i.jsw = zext nneg i32 %i.jsr to i64            ; 2 uses
  %i.jsx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.jsw
  %i.jsy = load i32, ptr %i.jsx, align 4, !tbaa !3
  %i.jsz = shl i32 %i.jsy, %i.jpm
  %i.jta = or i32 %i.jsz, %i.jsv                  ; 3 uses
  %i.jtb = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.jtc = getelementptr inbounds nuw i8, ptr %i.jtb, i64 %i.jsw
  %i.jtd = load i8, ptr %i.jtc, align 1, !tbaa !31
  %i.jte = sext i8 %i.jtd to i32
  %i.jtf = add nsw i32 %i.jte, %i.jpm             ; 2 uses
  %i.jtg = sub nsw i32 %.18911486.lcssa, %i.jtf   ; 4 uses
  %i.jth = icmp slt i32 %i.jtg, 0
  br i1 %i.jth, label %bb.zp, label %bb.zt

bb.zp:                                            ; preds = %._crit_edge15083
  %i.jti = zext nneg i32 %.18911486.lcssa to i64
  %i.jtj = shl i64 %.18911232.lcssa, %i.jti
  %i.jtk = sub nsw i32 0, %i.jtg
  %i.jtl = ashr i32 %i.jta, %i.jtk
  %i.jtm = sext i32 %i.jtl to i64
  %i.jtn = or i64 %i.jtj, %i.jtm                  ; 24 uses
  %i.jto = and i64 %i.jtn, -9187201950435737472
  %i.jtp = sub i64 -72340172838076674, %i.jtn
  %i.jtq = and i64 %i.jto, %i.jtp
  %.not13260 = icmp eq i64 %i.jtq, 0
  %i.jtr = lshr i64 %i.jtn, 56                    ; 2 uses
  %i.jts = trunc nuw i64 %i.jtr to i8
  store i8 %i.jts, ptr %.285.lcssa, align 1, !tbaa !31
  br i1 %.not13260, label %bb.zr, label %bb.zq

bb.zq:                                            ; preds = %bb.zp
  %i.jtt = getelementptr inbounds nuw i8, ptr %.285.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.jtt, align 1, !tbaa !31
  %.not13261 = icmp eq i64 %i.jtr, 255            ; 2 uses
  %.sroa.gep14479 = getelementptr inbounds nuw i8, ptr %.285.lcssa, i64 2 ; 2 uses
  %.neg13262.sroa.sel = select i1 %.not13261, ptr %.sroa.gep14479, ptr %i.jtt ; 2 uses
  %i.jtu = lshr i64 %i.jtn, 48
  %i.jtv = trunc i64 %i.jtu to i8
  store i8 %i.jtv, ptr %.neg13262.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15664 = getelementptr inbounds nuw i8, ptr %.285.lcssa, i64 3
  %.neg13262.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13261, ptr %.sroa.gep15664, ptr %.sroa.gep14479
  store i8 0, ptr %.neg13262.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jtw = and i64 %i.jtn, 71776119061217280
  %.not13263 = icmp eq i64 %i.jtw, 71776119061217280
  %.neg13264 = select i1 %.not13263, i64 2, i64 1
  %i.jtx = getelementptr inbounds nuw i8, ptr %.neg13262.sroa.sel, i64 %.neg13264 ; 4 uses
  %i.jty = lshr i64 %i.jtn, 40
  %i.jtz = trunc i64 %i.jty to i8
  store i8 %i.jtz, ptr %i.jtx, align 1, !tbaa !31
  %i.jua = getelementptr inbounds nuw i8, ptr %i.jtx, i64 1 ; 2 uses
  store i8 0, ptr %i.jua, align 1, !tbaa !31
  %i.jub = and i64 %i.jtn, 280375465082880
  %.not13265 = icmp eq i64 %i.jub, 280375465082880 ; 2 uses
  %.sroa.gep14481 = getelementptr inbounds nuw i8, ptr %i.jtx, i64 2 ; 2 uses
  %.neg13266.sroa.sel = select i1 %.not13265, ptr %.sroa.gep14481, ptr %i.jua ; 2 uses
  %i.juc = lshr i64 %i.jtn, 32
  %i.jud = trunc i64 %i.juc to i8
  store i8 %i.jud, ptr %.neg13266.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15670 = getelementptr inbounds nuw i8, ptr %i.jtx, i64 3
  %.neg13266.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13265, ptr %.sroa.gep15670, ptr %.sroa.gep14481
  store i8 0, ptr %.neg13266.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jue = and i64 %i.jtn, 1095216660480
  %.not13267 = icmp eq i64 %i.jue, 1095216660480
  %.neg13268 = select i1 %.not13267, i64 2, i64 1
  %i.juf = getelementptr inbounds nuw i8, ptr %.neg13266.sroa.sel, i64 %.neg13268 ; 4 uses
  %i.jug = lshr i64 %i.jtn, 24
  %i.juh = trunc i64 %i.jug to i8
  store i8 %i.juh, ptr %i.juf, align 1, !tbaa !31
  %i.jui = getelementptr inbounds nuw i8, ptr %i.juf, i64 1 ; 2 uses
  store i8 0, ptr %i.jui, align 1, !tbaa !31
  %i.juj = and i64 %i.jtn, 4278190080
  %.not13269 = icmp eq i64 %i.juj, 4278190080     ; 2 uses
  %.sroa.gep14483 = getelementptr inbounds nuw i8, ptr %i.juf, i64 2 ; 2 uses
  %.neg13270.sroa.sel = select i1 %.not13269, ptr %.sroa.gep14483, ptr %i.jui ; 2 uses
  %i.juk = lshr i64 %i.jtn, 16
  %i.jul = trunc i64 %i.juk to i8
  store i8 %i.jul, ptr %.neg13270.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15668 = getelementptr inbounds nuw i8, ptr %i.juf, i64 3
  %.neg13270.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13269, ptr %.sroa.gep15668, ptr %.sroa.gep14483
  store i8 0, ptr %.neg13270.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jum = and i64 %i.jtn, 16711680
  %.not13271 = icmp eq i64 %i.jum, 16711680
  %.neg13272 = select i1 %.not13271, i64 2, i64 1
  %i.jun = getelementptr inbounds nuw i8, ptr %.neg13270.sroa.sel, i64 %.neg13272 ; 4 uses
  %i.juo = lshr i64 %i.jtn, 8
  %i.jup = trunc i64 %i.juo to i8
  store i8 %i.jup, ptr %i.jun, align 1, !tbaa !31
  %i.juq = getelementptr inbounds nuw i8, ptr %i.jun, i64 1 ; 2 uses
  store i8 0, ptr %i.juq, align 1, !tbaa !31
  %i.jur = and i64 %i.jtn, 65280
  %.not13273 = icmp eq i64 %i.jur, 65280          ; 2 uses
  %.sroa.gep14485 = getelementptr inbounds nuw i8, ptr %i.jun, i64 2 ; 2 uses
  %.neg13274.sroa.sel = select i1 %.not13273, ptr %.sroa.gep14485, ptr %i.juq ; 2 uses
  %i.jus = trunc i64 %i.jtn to i8
  store i8 %i.jus, ptr %.neg13274.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15666 = getelementptr inbounds nuw i8, ptr %i.jun, i64 3
  %.neg13274.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13273, ptr %.sroa.gep15666, ptr %.sroa.gep14485
  store i8 0, ptr %.neg13274.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jut = and i64 %i.jtn, 255
  %.not13275 = icmp eq i64 %i.jut, 255
  %.neg13276 = select i1 %.not13275, i64 2, i64 1
  %i.juu = getelementptr inbounds nuw i8, ptr %.neg13274.sroa.sel, i64 %.neg13276
  br label %bb.zs

bb.zr:                                            ; preds = %bb.zp
  %i.juv = lshr i64 %i.jtn, 48
  %i.juw = trunc i64 %i.juv to i8
  %i.jux = getelementptr inbounds nuw i8, ptr %.285.lcssa, i64 1
  store i8 %i.juw, ptr %i.jux, align 1, !tbaa !31
  %i.juy = lshr i64 %i.jtn, 40
  %i.juz = trunc i64 %i.juy to i8
  %i.jva = getelementptr inbounds nuw i8, ptr %.285.lcssa, i64 2
  store i8 %i.juz, ptr %i.jva, align 1, !tbaa !31
  %i.jvb = lshr i64 %i.jtn, 32
  %i.jvc = trunc i64 %i.jvb to i8
  %i.jvd = getelementptr inbounds nuw i8, ptr %.285.lcssa, i64 3
  store i8 %i.jvc, ptr %i.jvd, align 1, !tbaa !31
  %i.jve = lshr i64 %i.jtn, 24
  %i.jvf = trunc i64 %i.jve to i8
  %i.jvg = getelementptr inbounds nuw i8, ptr %.285.lcssa, i64 4
  store i8 %i.jvf, ptr %i.jvg, align 1, !tbaa !31
  %i.jvh = lshr i64 %i.jtn, 16
  %i.jvi = trunc i64 %i.jvh to i8
  %i.jvj = getelementptr inbounds nuw i8, ptr %.285.lcssa, i64 5
  store i8 %i.jvi, ptr %i.jvj, align 1, !tbaa !31
  %i.jvk = lshr i64 %i.jtn, 8
  %i.jvl = trunc i64 %i.jvk to i8
  %i.jvm = getelementptr inbounds nuw i8, ptr %.285.lcssa, i64 6
  store i8 %i.jvl, ptr %i.jvm, align 1, !tbaa !31
  %i.jvn = trunc i64 %i.jtn to i8
  %i.jvo = getelementptr inbounds nuw i8, ptr %.285.lcssa, i64 7
  store i8 %i.jvn, ptr %i.jvo, align 1, !tbaa !31
  %i.jvp = getelementptr inbounds nuw i8, ptr %.285.lcssa, i64 8
  br label %bb.zs

bb.zs:                                            ; preds = %bb.zr, %bb.zq
  %.288 = phi ptr [ %i.juu, %bb.zq ], [ %i.jvp, %bb.zr ]
  %i.jvq = add nsw i32 %i.jtg, 64
  %i.jvr = sext i32 %i.jta to i64
  br label %bb.zu

bb.zt:                                            ; preds = %._crit_edge15083
  %i.jvs = zext nneg i32 %i.jtf to i64
  %i.jvt = shl i64 %.18911232.lcssa, %i.jvs
  %i.jvu = sext i32 %i.jta to i64
  %i.jvv = or i64 %i.jvt, %i.jvu
  br label %bb.zu

bb.zu:                                            ; preds = %bb.zs, %bb.zt, %bb.ze
  %.19211489 = phi i32 [ %.18811485, %bb.ze ], [ %i.jvq, %bb.zs ], [ %i.jtg, %bb.zt ] ; 3 uses
  %.19211235 = phi i64 [ %.18811231, %bb.ze ], [ %i.jvr, %bb.zs ], [ %i.jvv, %bb.zt ] ; 3 uses
  %.290 = phi ptr [ %.284, %bb.ze ], [ %.288, %bb.zs ], [ %.285.lcssa, %bb.zt ] ; 3 uses
  %.95 = phi i32 [ %i.jpe, %bb.ze ], [ 0, %bb.zs ], [ 0, %bb.zt ] ; 4 uses
  %i.jvw = getelementptr inbounds nuw i8, ptr %1, i64 118
  %i.jvx = load i16, ptr %i.jvw, align 2, !tbaa !79 ; 2 uses
  %i.jvy = icmp eq i16 %i.jvx, 0
  br i1 %i.jvy, label %bb.zv, label %bb.zw

bb.zv:                                            ; preds = %bb.zu
  %i.jvz = add nuw nsw i32 %.95, 16
  br label %bb.aal

bb.zw:                                            ; preds = %bb.zu
  %i.jwa = sext i16 %i.jvx to i32                 ; 2 uses
  %i.jwb = ashr i32 %i.jwa, 31                    ; 2 uses
  %i.jwc = add nsw i32 %i.jwb, %i.jwa             ; 2 uses
  %i.jwd = xor i32 %i.jwc, %i.jwb
  %i.jwe = sext i32 %i.jwd to i64
  %i.jwf = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.jwe
  %i.jwg = load i8, ptr %i.jwf, align 1, !tbaa !31 ; 2 uses
  %i.jwh = zext i8 %i.jwg to i32                  ; 4 uses
  %i.jwi = icmp slt i32 %i.f, %i.jwh
  br i1 %i.jwi, label %bb.zx, label %bb.zy

bb.zx:                                            ; preds = %bb.zw
  %i.jwj = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.jwk = load ptr, ptr %i.jwj, align 8, !tbaa !7 ; 2 uses
  %i.jwl = getelementptr inbounds nuw i8, ptr %i.jwk, i64 40
  store i32 6, ptr %i.jwl, align 8, !tbaa !26
  %i.jwm = load ptr, ptr %i.jwk, align 8, !tbaa !32
  tail call void %i.jwm(ptr noundef nonnull %i.jwj) #7
  br label %bb.zy

bb.zy:                                            ; preds = %bb.zx, %bb.zw
  %i.jwn = icmp samesign ugt i32 %.95, 255
  br i1 %i.jwn, label %.lr.ph15093, label %._crit_edge15094

.lr.ph15093:                                      ; preds = %bb.zy
  %i.jwo = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.jwp = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.zz

bb.zz:                                            ; preds = %.lr.ph15093, %bb.aaf
  %.9615091 = phi i32 [ %.95, %.lr.ph15093 ], [ %i.jwq, %bb.aaf ] ; 2 uses
  %.29115090 = phi ptr [ %.290, %.lr.ph15093 ], [ %.293, %bb.aaf ] ; 13 uses
  %.1931123615089 = phi i64 [ %.19211235, %.lr.ph15093 ], [ %.19411237, %bb.aaf ] ; 2 uses
  %.1931149015088 = phi i32 [ %.19211489, %.lr.ph15093 ], [ %.19411491, %bb.aaf ] ; 2 uses
  %i.jwq = add nsw i32 %.9615091, -256            ; 2 uses
  %i.jwr = load i8, ptr %i.jwo, align 4, !tbaa !31
  %i.jws = sext i8 %i.jwr to i32                  ; 2 uses
  %i.jwt = sub nsw i32 %.1931149015088, %i.jws    ; 4 uses
  %i.jwu = icmp slt i32 %i.jwt, 0
  %i.jwv = load i32, ptr %i.jwp, align 4, !tbaa !3 ; 2 uses
  br i1 %i.jwu, label %bb.aaa, label %bb.aae

bb.aaa:                                           ; preds = %bb.zz
  %i.jww = zext nneg i32 %.1931149015088 to i64
  %i.jwx = shl i64 %.1931123615089, %i.jww        ; 11 uses
  %i.jwy = sub nsw i32 0, %i.jwt
  %i.jwz = lshr i32 %i.jwv, %i.jwy
  %i.jxa = zext nneg i32 %i.jwz to i64
  %i.jxb = or i64 %i.jwx, %i.jxa                  ; 14 uses
  %i.jxc = and i64 %i.jxb, -9187201950435737472
  %i.jxd = sub i64 -72340172838076674, %i.jxb
  %i.jxe = and i64 %i.jxc, %i.jxd
  %.not13312 = icmp eq i64 %i.jxe, 0
  %i.jxf = lshr i64 %i.jwx, 56                    ; 2 uses
  %i.jxg = trunc nuw i64 %i.jxf to i8
  store i8 %i.jxg, ptr %.29115090, align 1, !tbaa !31
  br i1 %.not13312, label %bb.aac, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.jxh = getelementptr inbounds nuw i8, ptr %.29115090, i64 1 ; 2 uses
  store i8 0, ptr %i.jxh, align 1, !tbaa !31
  %.not13313 = icmp eq i64 %i.jxf, 255            ; 2 uses
  %.sroa.gep14487 = getelementptr inbounds nuw i8, ptr %.29115090, i64 2 ; 2 uses
  %.neg13314.sroa.sel = select i1 %.not13313, ptr %.sroa.gep14487, ptr %i.jxh ; 2 uses
  %i.jxi = lshr i64 %i.jwx, 48
  %i.jxj = trunc i64 %i.jxi to i8
  store i8 %i.jxj, ptr %.neg13314.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15640 = getelementptr inbounds nuw i8, ptr %.29115090, i64 3
  %.neg13314.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13313, ptr %.sroa.gep15640, ptr %.sroa.gep14487
  store i8 0, ptr %.neg13314.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jxk = and i64 %i.jwx, 71776119061217280
  %.not13315 = icmp eq i64 %i.jxk, 71776119061217280
  %.neg13316 = select i1 %.not13315, i64 2, i64 1
  %i.jxl = getelementptr inbounds nuw i8, ptr %.neg13314.sroa.sel, i64 %.neg13316 ; 4 uses
  %i.jxm = lshr i64 %i.jwx, 40
  %i.jxn = trunc i64 %i.jxm to i8
  store i8 %i.jxn, ptr %i.jxl, align 1, !tbaa !31
  %i.jxo = getelementptr inbounds nuw i8, ptr %i.jxl, i64 1 ; 2 uses
  store i8 0, ptr %i.jxo, align 1, !tbaa !31
  %i.jxp = and i64 %i.jwx, 280375465082880
  %.not13317 = icmp eq i64 %i.jxp, 280375465082880 ; 2 uses
  %.sroa.gep14489 = getelementptr inbounds nuw i8, ptr %i.jxl, i64 2 ; 2 uses
  %.neg13318.sroa.sel = select i1 %.not13317, ptr %.sroa.gep14489, ptr %i.jxo ; 2 uses
  %i.jxq = lshr i64 %i.jwx, 32
  %i.jxr = trunc i64 %i.jxq to i8
  store i8 %i.jxr, ptr %.neg13318.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15646 = getelementptr inbounds nuw i8, ptr %i.jxl, i64 3
  %.neg13318.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13317, ptr %.sroa.gep15646, ptr %.sroa.gep14489
  store i8 0, ptr %.neg13318.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jxs = and i64 %i.jwx, 1095216660480
  %.not13319 = icmp eq i64 %i.jxs, 1095216660480
  %.neg13320 = select i1 %.not13319, i64 2, i64 1
  %i.jxt = getelementptr inbounds nuw i8, ptr %.neg13318.sroa.sel, i64 %.neg13320 ; 4 uses
  %i.jxu = lshr i64 %i.jxb, 24
  %i.jxv = trunc i64 %i.jxu to i8
  store i8 %i.jxv, ptr %i.jxt, align 1, !tbaa !31
  %i.jxw = getelementptr inbounds nuw i8, ptr %i.jxt, i64 1 ; 2 uses
  store i8 0, ptr %i.jxw, align 1, !tbaa !31
  %i.jxx = and i64 %i.jxb, 4278190080
  %.not13321 = icmp eq i64 %i.jxx, 4278190080     ; 2 uses
  %.sroa.gep14491 = getelementptr inbounds nuw i8, ptr %i.jxt, i64 2 ; 2 uses
  %.neg13322.sroa.sel = select i1 %.not13321, ptr %.sroa.gep14491, ptr %i.jxw ; 2 uses
  %i.jxy = lshr i64 %i.jxb, 16
  %i.jxz = trunc i64 %i.jxy to i8
  store i8 %i.jxz, ptr %.neg13322.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15644 = getelementptr inbounds nuw i8, ptr %i.jxt, i64 3
  %.neg13322.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13321, ptr %.sroa.gep15644, ptr %.sroa.gep14491
  store i8 0, ptr %.neg13322.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jya = and i64 %i.jxb, 16711680
  %.not13323 = icmp eq i64 %i.jya, 16711680
  %.neg13324 = select i1 %.not13323, i64 2, i64 1
  %i.jyb = getelementptr inbounds nuw i8, ptr %.neg13322.sroa.sel, i64 %.neg13324 ; 4 uses
  %i.jyc = lshr i64 %i.jxb, 8
  %i.jyd = trunc i64 %i.jyc to i8
  store i8 %i.jyd, ptr %i.jyb, align 1, !tbaa !31
  %i.jye = getelementptr inbounds nuw i8, ptr %i.jyb, i64 1 ; 2 uses
  store i8 0, ptr %i.jye, align 1, !tbaa !31
  %i.jyf = and i64 %i.jxb, 65280
  %.not13325 = icmp eq i64 %i.jyf, 65280          ; 2 uses
  %.sroa.gep14493 = getelementptr inbounds nuw i8, ptr %i.jyb, i64 2 ; 2 uses
  %.neg13326.sroa.sel = select i1 %.not13325, ptr %.sroa.gep14493, ptr %i.jye ; 2 uses
  %i.jyg = trunc i64 %i.jxb to i8
  store i8 %i.jyg, ptr %.neg13326.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15642 = getelementptr inbounds nuw i8, ptr %i.jyb, i64 3
  %.neg13326.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13325, ptr %.sroa.gep15642, ptr %.sroa.gep14493
  store i8 0, ptr %.neg13326.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.jyh = and i64 %i.jxb, 255
  %.not13327 = icmp eq i64 %i.jyh, 255
  %.neg13328 = select i1 %.not13327, i64 2, i64 1
  %i.jyi = getelementptr inbounds nuw i8, ptr %.neg13326.sroa.sel, i64 %.neg13328
  br label %bb.aad

bb.aac:                                           ; preds = %bb.aaa
  %i.jyj = lshr i64 %i.jwx, 48
  %i.jyk = trunc i64 %i.jyj to i8
  %i.jyl = getelementptr inbounds nuw i8, ptr %.29115090, i64 1
  store i8 %i.jyk, ptr %i.jyl, align 1, !tbaa !31
  %i.jym = lshr i64 %i.jwx, 40
  %i.jyn = trunc i64 %i.jym to i8
  %i.jyo = getelementptr inbounds nuw i8, ptr %.29115090, i64 2
  store i8 %i.jyn, ptr %i.jyo, align 1, !tbaa !31
  %i.jyp = lshr i64 %i.jwx, 32
  %i.jyq = trunc i64 %i.jyp to i8
  %i.jyr = getelementptr inbounds nuw i8, ptr %.29115090, i64 3
  store i8 %i.jyq, ptr %i.jyr, align 1, !tbaa !31
  %i.jys = lshr i64 %i.jxb, 24
  %i.jyt = trunc i64 %i.jys to i8
  %i.jyu = getelementptr inbounds nuw i8, ptr %.29115090, i64 4
  store i8 %i.jyt, ptr %i.jyu, align 1, !tbaa !31
  %i.jyv = lshr i64 %i.jxb, 16
  %i.jyw = trunc i64 %i.jyv to i8
  %i.jyx = getelementptr inbounds nuw i8, ptr %.29115090, i64 5
  store i8 %i.jyw, ptr %i.jyx, align 1, !tbaa !31
  %i.jyy = lshr i64 %i.jxb, 8
  %i.jyz = trunc i64 %i.jyy to i8
  %i.jza = getelementptr inbounds nuw i8, ptr %.29115090, i64 6
  store i8 %i.jyz, ptr %i.jza, align 1, !tbaa !31
  %i.jzb = trunc i64 %i.jxb to i8
  %i.jzc = getelementptr inbounds nuw i8, ptr %.29115090, i64 7
  store i8 %i.jzb, ptr %i.jzc, align 1, !tbaa !31
  %i.jzd = getelementptr inbounds nuw i8, ptr %.29115090, i64 8
  br label %bb.aad

bb.aad:                                           ; preds = %bb.aac, %bb.aab
  %.292 = phi ptr [ %i.jyi, %bb.aab ], [ %i.jzd, %bb.aac ]
  %i.jze = add nsw i32 %i.jwt, 64
  %i.jzf = load i32, ptr %i.jwp, align 4, !tbaa !3
  %i.jzg = zext i32 %i.jzf to i64
  br label %bb.aaf

bb.aae:                                           ; preds = %bb.zz
  %i.jzh = zext nneg i32 %i.jws to i64
  %i.jzi = shl i64 %.1931123615089, %i.jzh
  %i.jzj = zext i32 %i.jwv to i64
  %i.jzk = or i64 %i.jzi, %i.jzj
  br label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae, %bb.aad
  %.19411491 = phi i32 [ %i.jze, %bb.aad ], [ %i.jwt, %bb.aae ] ; 2 uses
  %.19411237 = phi i64 [ %i.jzg, %bb.aad ], [ %i.jzk, %bb.aae ] ; 2 uses
  %.293 = phi ptr [ %.292, %bb.aad ], [ %.29115090, %bb.aae ] ; 2 uses
  %i.jzl = icmp samesign ugt i32 %.9615091, 511
  br i1 %i.jzl, label %bb.zz, label %._crit_edge15094, !llvm.loop !121

._crit_edge15094:                                 ; preds = %bb.aaf, %bb.zy
  %.19311490.lcssa = phi i32 [ %.19211489, %bb.zy ], [ %.19411491, %bb.aaf ] ; 2 uses
  %.19311236.lcssa = phi i64 [ %.19211235, %bb.zy ], [ %.19411237, %bb.aaf ] ; 2 uses
  %.291.lcssa = phi ptr [ %.290, %bb.zy ], [ %.293, %bb.aaf ] ; 13 uses
  %.96.lcssa = phi i32 [ %.95, %bb.zy ], [ %i.jwq, %bb.aaf ]
  %i.jzm = add nuw nsw i32 %.96.lcssa, %i.jwh
  %i.jzn = zext nneg i8 %i.jwg to i64
  %notmask13294 = shl nsw i64 -1, %i.jzn
  %i.jzo = trunc i64 %notmask13294 to i32
  %i.jzp = xor i32 %i.jzo, -1
  %i.jzq = and i32 %i.jwc, %i.jzp
  %i.jzr = zext nneg i32 %i.jzm to i64            ; 2 uses
  %i.jzs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.jzr
  %i.jzt = load i32, ptr %i.jzs, align 4, !tbaa !3
  %i.jzu = shl i32 %i.jzt, %i.jwh
  %i.jzv = or i32 %i.jzu, %i.jzq                  ; 3 uses
  %i.jzw = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.jzx = getelementptr inbounds nuw i8, ptr %i.jzw, i64 %i.jzr
  %i.jzy = load i8, ptr %i.jzx, align 1, !tbaa !31
  %i.jzz = sext i8 %i.jzy to i32
  %i.kaa = add nsw i32 %i.jzz, %i.jwh             ; 2 uses
  %i.kab = sub nsw i32 %.19311490.lcssa, %i.kaa   ; 4 uses
  %i.kac = icmp slt i32 %i.kab, 0
  br i1 %i.kac, label %bb.aag, label %bb.aak

bb.aag:                                           ; preds = %._crit_edge15094
  %i.kad = zext nneg i32 %.19311490.lcssa to i64
  %i.kae = shl i64 %.19311236.lcssa, %i.kad
  %i.kaf = sub nsw i32 0, %i.kab
  %i.kag = ashr i32 %i.jzv, %i.kaf
  %i.kah = sext i32 %i.kag to i64
  %i.kai = or i64 %i.kae, %i.kah                  ; 24 uses
  %i.kaj = and i64 %i.kai, -9187201950435737472
  %i.kak = sub i64 -72340172838076674, %i.kai
  %i.kal = and i64 %i.kaj, %i.kak
  %.not13295 = icmp eq i64 %i.kal, 0
  %i.kam = lshr i64 %i.kai, 56                    ; 2 uses
  %i.kan = trunc nuw i64 %i.kam to i8
  store i8 %i.kan, ptr %.291.lcssa, align 1, !tbaa !31
  br i1 %.not13295, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.kao = getelementptr inbounds nuw i8, ptr %.291.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.kao, align 1, !tbaa !31
  %.not13296 = icmp eq i64 %i.kam, 255            ; 2 uses
  %.sroa.gep14495 = getelementptr inbounds nuw i8, ptr %.291.lcssa, i64 2 ; 2 uses
  %.neg13297.sroa.sel = select i1 %.not13296, ptr %.sroa.gep14495, ptr %i.kao ; 2 uses
  %i.kap = lshr i64 %i.kai, 48
  %i.kaq = trunc i64 %i.kap to i8
  store i8 %i.kaq, ptr %.neg13297.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15648 = getelementptr inbounds nuw i8, ptr %.291.lcssa, i64 3
  %.neg13297.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13296, ptr %.sroa.gep15648, ptr %.sroa.gep14495
  store i8 0, ptr %.neg13297.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kar = and i64 %i.kai, 71776119061217280
  %.not13298 = icmp eq i64 %i.kar, 71776119061217280
  %.neg13299 = select i1 %.not13298, i64 2, i64 1
  %i.kas = getelementptr inbounds nuw i8, ptr %.neg13297.sroa.sel, i64 %.neg13299 ; 4 uses
  %i.kat = lshr i64 %i.kai, 40
  %i.kau = trunc i64 %i.kat to i8
  store i8 %i.kau, ptr %i.kas, align 1, !tbaa !31
  %i.kav = getelementptr inbounds nuw i8, ptr %i.kas, i64 1 ; 2 uses
  store i8 0, ptr %i.kav, align 1, !tbaa !31
  %i.kaw = and i64 %i.kai, 280375465082880
  %.not13300 = icmp eq i64 %i.kaw, 280375465082880 ; 2 uses
  %.sroa.gep14497 = getelementptr inbounds nuw i8, ptr %i.kas, i64 2 ; 2 uses
  %.neg13301.sroa.sel = select i1 %.not13300, ptr %.sroa.gep14497, ptr %i.kav ; 2 uses
  %i.kax = lshr i64 %i.kai, 32
  %i.kay = trunc i64 %i.kax to i8
  store i8 %i.kay, ptr %.neg13301.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15654 = getelementptr inbounds nuw i8, ptr %i.kas, i64 3
  %.neg13301.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13300, ptr %.sroa.gep15654, ptr %.sroa.gep14497
  store i8 0, ptr %.neg13301.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kaz = and i64 %i.kai, 1095216660480
  %.not13302 = icmp eq i64 %i.kaz, 1095216660480
  %.neg13303 = select i1 %.not13302, i64 2, i64 1
  %i.kba = getelementptr inbounds nuw i8, ptr %.neg13301.sroa.sel, i64 %.neg13303 ; 4 uses
  %i.kbb = lshr i64 %i.kai, 24
  %i.kbc = trunc i64 %i.kbb to i8
  store i8 %i.kbc, ptr %i.kba, align 1, !tbaa !31
  %i.kbd = getelementptr inbounds nuw i8, ptr %i.kba, i64 1 ; 2 uses
  store i8 0, ptr %i.kbd, align 1, !tbaa !31
  %i.kbe = and i64 %i.kai, 4278190080
  %.not13304 = icmp eq i64 %i.kbe, 4278190080     ; 2 uses
  %.sroa.gep14499 = getelementptr inbounds nuw i8, ptr %i.kba, i64 2 ; 2 uses
  %.neg13305.sroa.sel = select i1 %.not13304, ptr %.sroa.gep14499, ptr %i.kbd ; 2 uses
  %i.kbf = lshr i64 %i.kai, 16
  %i.kbg = trunc i64 %i.kbf to i8
  store i8 %i.kbg, ptr %.neg13305.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15652 = getelementptr inbounds nuw i8, ptr %i.kba, i64 3
  %.neg13305.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13304, ptr %.sroa.gep15652, ptr %.sroa.gep14499
  store i8 0, ptr %.neg13305.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kbh = and i64 %i.kai, 16711680
  %.not13306 = icmp eq i64 %i.kbh, 16711680
  %.neg13307 = select i1 %.not13306, i64 2, i64 1
  %i.kbi = getelementptr inbounds nuw i8, ptr %.neg13305.sroa.sel, i64 %.neg13307 ; 4 uses
  %i.kbj = lshr i64 %i.kai, 8
  %i.kbk = trunc i64 %i.kbj to i8
  store i8 %i.kbk, ptr %i.kbi, align 1, !tbaa !31
  %i.kbl = getelementptr inbounds nuw i8, ptr %i.kbi, i64 1 ; 2 uses
  store i8 0, ptr %i.kbl, align 1, !tbaa !31
  %i.kbm = and i64 %i.kai, 65280
  %.not13308 = icmp eq i64 %i.kbm, 65280          ; 2 uses
  %.sroa.gep14501 = getelementptr inbounds nuw i8, ptr %i.kbi, i64 2 ; 2 uses
  %.neg13309.sroa.sel = select i1 %.not13308, ptr %.sroa.gep14501, ptr %i.kbl ; 2 uses
  %i.kbn = trunc i64 %i.kai to i8
  store i8 %i.kbn, ptr %.neg13309.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15650 = getelementptr inbounds nuw i8, ptr %i.kbi, i64 3
  %.neg13309.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13308, ptr %.sroa.gep15650, ptr %.sroa.gep14501
  store i8 0, ptr %.neg13309.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kbo = and i64 %i.kai, 255
  %.not13310 = icmp eq i64 %i.kbo, 255
  %.neg13311 = select i1 %.not13310, i64 2, i64 1
  %i.kbp = getelementptr inbounds nuw i8, ptr %.neg13309.sroa.sel, i64 %.neg13311
  br label %bb.aaj

bb.aai:                                           ; preds = %bb.aag
  %i.kbq = lshr i64 %i.kai, 48
  %i.kbr = trunc i64 %i.kbq to i8
  %i.kbs = getelementptr inbounds nuw i8, ptr %.291.lcssa, i64 1
  store i8 %i.kbr, ptr %i.kbs, align 1, !tbaa !31
  %i.kbt = lshr i64 %i.kai, 40
  %i.kbu = trunc i64 %i.kbt to i8
  %i.kbv = getelementptr inbounds nuw i8, ptr %.291.lcssa, i64 2
  store i8 %i.kbu, ptr %i.kbv, align 1, !tbaa !31
  %i.kbw = lshr i64 %i.kai, 32
  %i.kbx = trunc i64 %i.kbw to i8
  %i.kby = getelementptr inbounds nuw i8, ptr %.291.lcssa, i64 3
  store i8 %i.kbx, ptr %i.kby, align 1, !tbaa !31
  %i.kbz = lshr i64 %i.kai, 24
  %i.kca = trunc i64 %i.kbz to i8
  %i.kcb = getelementptr inbounds nuw i8, ptr %.291.lcssa, i64 4
  store i8 %i.kca, ptr %i.kcb, align 1, !tbaa !31
  %i.kcc = lshr i64 %i.kai, 16
  %i.kcd = trunc i64 %i.kcc to i8
  %i.kce = getelementptr inbounds nuw i8, ptr %.291.lcssa, i64 5
  store i8 %i.kcd, ptr %i.kce, align 1, !tbaa !31
  %i.kcf = lshr i64 %i.kai, 8
  %i.kcg = trunc i64 %i.kcf to i8
  %i.kch = getelementptr inbounds nuw i8, ptr %.291.lcssa, i64 6
  store i8 %i.kcg, ptr %i.kch, align 1, !tbaa !31
  %i.kci = trunc i64 %i.kai to i8
  %i.kcj = getelementptr inbounds nuw i8, ptr %.291.lcssa, i64 7
  store i8 %i.kci, ptr %i.kcj, align 1, !tbaa !31
  %i.kck = getelementptr inbounds nuw i8, ptr %.291.lcssa, i64 8
  br label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai, %bb.aah
  %.294 = phi ptr [ %i.kbp, %bb.aah ], [ %i.kck, %bb.aai ]
  %i.kcl = add nsw i32 %i.kab, 64
  %i.kcm = sext i32 %i.jzv to i64
  br label %bb.aal

bb.aak:                                           ; preds = %._crit_edge15094
  %i.kcn = zext nneg i32 %i.kaa to i64
  %i.kco = shl i64 %.19311236.lcssa, %i.kcn
  %i.kcp = sext i32 %i.jzv to i64
  %i.kcq = or i64 %i.kco, %i.kcp
  br label %bb.aal

bb.aal:                                           ; preds = %bb.aaj, %bb.aak, %bb.zv
  %.19611493 = phi i32 [ %.19211489, %bb.zv ], [ %i.kcl, %bb.aaj ], [ %i.kab, %bb.aak ] ; 3 uses
  %.19611239 = phi i64 [ %.19211235, %bb.zv ], [ %i.kcm, %bb.aaj ], [ %i.kcq, %bb.aak ] ; 3 uses
  %.296 = phi ptr [ %.290, %bb.zv ], [ %.294, %bb.aaj ], [ %.291.lcssa, %bb.aak ] ; 3 uses
  %.97 = phi i32 [ %i.jvz, %bb.zv ], [ 0, %bb.aaj ], [ 0, %bb.aak ] ; 4 uses
  %i.kcr = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.kcs = load i16, ptr %i.kcr, align 2, !tbaa !79 ; 2 uses
  %i.kct = icmp eq i16 %i.kcs, 0
  br i1 %i.kct, label %bb.aam, label %bb.aan

bb.aam:                                           ; preds = %bb.aal
  %i.kcu = add nuw nsw i32 %.97, 16
  br label %bb.abc

bb.aan:                                           ; preds = %bb.aal
  %i.kcv = sext i16 %i.kcs to i32                 ; 2 uses
  %i.kcw = ashr i32 %i.kcv, 31                    ; 2 uses
  %i.kcx = add nsw i32 %i.kcw, %i.kcv             ; 2 uses
  %i.kcy = xor i32 %i.kcx, %i.kcw
  %i.kcz = sext i32 %i.kcy to i64
  %i.kda = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.kcz
  %i.kdb = load i8, ptr %i.kda, align 1, !tbaa !31 ; 2 uses
  %i.kdc = zext i8 %i.kdb to i32                  ; 4 uses
  %i.kdd = icmp slt i32 %i.f, %i.kdc
  br i1 %i.kdd, label %bb.aao, label %bb.aap

bb.aao:                                           ; preds = %bb.aan
  %i.kde = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.kdf = load ptr, ptr %i.kde, align 8, !tbaa !7 ; 2 uses
  %i.kdg = getelementptr inbounds nuw i8, ptr %i.kdf, i64 40
  store i32 6, ptr %i.kdg, align 8, !tbaa !26
  %i.kdh = load ptr, ptr %i.kdf, align 8, !tbaa !32
  tail call void %i.kdh(ptr noundef nonnull %i.kde) #7
  br label %bb.aap

bb.aap:                                           ; preds = %bb.aao, %bb.aan
  %i.kdi = icmp samesign ugt i32 %.97, 255
  br i1 %i.kdi, label %.lr.ph15104, label %._crit_edge15105

.lr.ph15104:                                      ; preds = %bb.aap
  %i.kdj = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.kdk = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.aaq

bb.aaq:                                           ; preds = %.lr.ph15104, %bb.aaw
  %.9815102 = phi i32 [ %.97, %.lr.ph15104 ], [ %i.kdl, %bb.aaw ] ; 2 uses
  %.29715101 = phi ptr [ %.296, %.lr.ph15104 ], [ %.299, %bb.aaw ] ; 13 uses
  %.1971124015100 = phi i64 [ %.19611239, %.lr.ph15104 ], [ %.19811241, %bb.aaw ] ; 2 uses
  %.1971149415099 = phi i32 [ %.19611493, %.lr.ph15104 ], [ %.19811495, %bb.aaw ] ; 2 uses
  %i.kdl = add nsw i32 %.9815102, -256            ; 2 uses
  %i.kdm = load i8, ptr %i.kdj, align 4, !tbaa !31
  %i.kdn = sext i8 %i.kdm to i32                  ; 2 uses
  %i.kdo = sub nsw i32 %.1971149415099, %i.kdn    ; 4 uses
  %i.kdp = icmp slt i32 %i.kdo, 0
  %i.kdq = load i32, ptr %i.kdk, align 4, !tbaa !3 ; 2 uses
  br i1 %i.kdp, label %bb.aar, label %bb.aav

bb.aar:                                           ; preds = %bb.aaq
  %i.kdr = zext nneg i32 %.1971149415099 to i64
  %i.kds = shl i64 %.1971124015100, %i.kdr        ; 11 uses
  %i.kdt = sub nsw i32 0, %i.kdo
  %i.kdu = lshr i32 %i.kdq, %i.kdt
  %i.kdv = zext nneg i32 %i.kdu to i64
  %i.kdw = or i64 %i.kds, %i.kdv                  ; 14 uses
  %i.kdx = and i64 %i.kdw, -9187201950435737472
  %i.kdy = sub i64 -72340172838076674, %i.kdw
  %i.kdz = and i64 %i.kdx, %i.kdy
  %.not13347 = icmp eq i64 %i.kdz, 0
  %i.kea = lshr i64 %i.kds, 56                    ; 2 uses
  %i.keb = trunc nuw i64 %i.kea to i8
  store i8 %i.keb, ptr %.29715101, align 1, !tbaa !31
  br i1 %.not13347, label %bb.aat, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.kec = getelementptr inbounds nuw i8, ptr %.29715101, i64 1 ; 2 uses
  store i8 0, ptr %i.kec, align 1, !tbaa !31
  %.not13348 = icmp eq i64 %i.kea, 255            ; 2 uses
  %.sroa.gep14503 = getelementptr inbounds nuw i8, ptr %.29715101, i64 2 ; 2 uses
  %.neg13349.sroa.sel = select i1 %.not13348, ptr %.sroa.gep14503, ptr %i.kec ; 2 uses
  %i.ked = lshr i64 %i.kds, 48
  %i.kee = trunc i64 %i.ked to i8
  store i8 %i.kee, ptr %.neg13349.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15624 = getelementptr inbounds nuw i8, ptr %.29715101, i64 3
  %.neg13349.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13348, ptr %.sroa.gep15624, ptr %.sroa.gep14503
  store i8 0, ptr %.neg13349.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kef = and i64 %i.kds, 71776119061217280
  %.not13350 = icmp eq i64 %i.kef, 71776119061217280
  %.neg13351 = select i1 %.not13350, i64 2, i64 1
  %i.keg = getelementptr inbounds nuw i8, ptr %.neg13349.sroa.sel, i64 %.neg13351 ; 4 uses
  %i.keh = lshr i64 %i.kds, 40
  %i.kei = trunc i64 %i.keh to i8
  store i8 %i.kei, ptr %i.keg, align 1, !tbaa !31
  %i.kej = getelementptr inbounds nuw i8, ptr %i.keg, i64 1 ; 2 uses
  store i8 0, ptr %i.kej, align 1, !tbaa !31
  %i.kek = and i64 %i.kds, 280375465082880
  %.not13352 = icmp eq i64 %i.kek, 280375465082880 ; 2 uses
  %.sroa.gep14505 = getelementptr inbounds nuw i8, ptr %i.keg, i64 2 ; 2 uses
  %.neg13353.sroa.sel = select i1 %.not13352, ptr %.sroa.gep14505, ptr %i.kej ; 2 uses
  %i.kel = lshr i64 %i.kds, 32
  %i.kem = trunc i64 %i.kel to i8
  store i8 %i.kem, ptr %.neg13353.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15630 = getelementptr inbounds nuw i8, ptr %i.keg, i64 3
  %.neg13353.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13352, ptr %.sroa.gep15630, ptr %.sroa.gep14505
  store i8 0, ptr %.neg13353.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ken = and i64 %i.kds, 1095216660480
  %.not13354 = icmp eq i64 %i.ken, 1095216660480
  %.neg13355 = select i1 %.not13354, i64 2, i64 1
  %i.keo = getelementptr inbounds nuw i8, ptr %.neg13353.sroa.sel, i64 %.neg13355 ; 4 uses
  %i.kep = lshr i64 %i.kdw, 24
  %i.keq = trunc i64 %i.kep to i8
  store i8 %i.keq, ptr %i.keo, align 1, !tbaa !31
  %i.ker = getelementptr inbounds nuw i8, ptr %i.keo, i64 1 ; 2 uses
  store i8 0, ptr %i.ker, align 1, !tbaa !31
  %i.kes = and i64 %i.kdw, 4278190080
  %.not13356 = icmp eq i64 %i.kes, 4278190080     ; 2 uses
  %.sroa.gep14507 = getelementptr inbounds nuw i8, ptr %i.keo, i64 2 ; 2 uses
  %.neg13357.sroa.sel = select i1 %.not13356, ptr %.sroa.gep14507, ptr %i.ker ; 2 uses
  %i.ket = lshr i64 %i.kdw, 16
  %i.keu = trunc i64 %i.ket to i8
  store i8 %i.keu, ptr %.neg13357.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15628 = getelementptr inbounds nuw i8, ptr %i.keo, i64 3
  %.neg13357.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13356, ptr %.sroa.gep15628, ptr %.sroa.gep14507
  store i8 0, ptr %.neg13357.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kev = and i64 %i.kdw, 16711680
  %.not13358 = icmp eq i64 %i.kev, 16711680
  %.neg13359 = select i1 %.not13358, i64 2, i64 1
  %i.kew = getelementptr inbounds nuw i8, ptr %.neg13357.sroa.sel, i64 %.neg13359 ; 4 uses
  %i.kex = lshr i64 %i.kdw, 8
  %i.key = trunc i64 %i.kex to i8
  store i8 %i.key, ptr %i.kew, align 1, !tbaa !31
  %i.kez = getelementptr inbounds nuw i8, ptr %i.kew, i64 1 ; 2 uses
  store i8 0, ptr %i.kez, align 1, !tbaa !31
  %i.kfa = and i64 %i.kdw, 65280
  %.not13360 = icmp eq i64 %i.kfa, 65280          ; 2 uses
  %.sroa.gep14509 = getelementptr inbounds nuw i8, ptr %i.kew, i64 2 ; 2 uses
  %.neg13361.sroa.sel = select i1 %.not13360, ptr %.sroa.gep14509, ptr %i.kez ; 2 uses
  %i.kfb = trunc i64 %i.kdw to i8
  store i8 %i.kfb, ptr %.neg13361.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15626 = getelementptr inbounds nuw i8, ptr %i.kew, i64 3
  %.neg13361.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13360, ptr %.sroa.gep15626, ptr %.sroa.gep14509
  store i8 0, ptr %.neg13361.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kfc = and i64 %i.kdw, 255
  %.not13362 = icmp eq i64 %i.kfc, 255
  %.neg13363 = select i1 %.not13362, i64 2, i64 1
  %i.kfd = getelementptr inbounds nuw i8, ptr %.neg13361.sroa.sel, i64 %.neg13363
  br label %bb.aau

bb.aat:                                           ; preds = %bb.aar
  %i.kfe = lshr i64 %i.kds, 48
  %i.kff = trunc i64 %i.kfe to i8
  %i.kfg = getelementptr inbounds nuw i8, ptr %.29715101, i64 1
  store i8 %i.kff, ptr %i.kfg, align 1, !tbaa !31
  %i.kfh = lshr i64 %i.kds, 40
  %i.kfi = trunc i64 %i.kfh to i8
  %i.kfj = getelementptr inbounds nuw i8, ptr %.29715101, i64 2
  store i8 %i.kfi, ptr %i.kfj, align 1, !tbaa !31
  %i.kfk = lshr i64 %i.kds, 32
  %i.kfl = trunc i64 %i.kfk to i8
  %i.kfm = getelementptr inbounds nuw i8, ptr %.29715101, i64 3
  store i8 %i.kfl, ptr %i.kfm, align 1, !tbaa !31
  %i.kfn = lshr i64 %i.kdw, 24
  %i.kfo = trunc i64 %i.kfn to i8
  %i.kfp = getelementptr inbounds nuw i8, ptr %.29715101, i64 4
  store i8 %i.kfo, ptr %i.kfp, align 1, !tbaa !31
  %i.kfq = lshr i64 %i.kdw, 16
  %i.kfr = trunc i64 %i.kfq to i8
  %i.kfs = getelementptr inbounds nuw i8, ptr %.29715101, i64 5
  store i8 %i.kfr, ptr %i.kfs, align 1, !tbaa !31
  %i.kft = lshr i64 %i.kdw, 8
  %i.kfu = trunc i64 %i.kft to i8
  %i.kfv = getelementptr inbounds nuw i8, ptr %.29715101, i64 6
  store i8 %i.kfu, ptr %i.kfv, align 1, !tbaa !31
  %i.kfw = trunc i64 %i.kdw to i8
  %i.kfx = getelementptr inbounds nuw i8, ptr %.29715101, i64 7
  store i8 %i.kfw, ptr %i.kfx, align 1, !tbaa !31
  %i.kfy = getelementptr inbounds nuw i8, ptr %.29715101, i64 8
  br label %bb.aau

bb.aau:                                           ; preds = %bb.aat, %bb.aas
  %.298 = phi ptr [ %i.kfd, %bb.aas ], [ %i.kfy, %bb.aat ]
  %i.kfz = add nsw i32 %i.kdo, 64
  %i.kga = load i32, ptr %i.kdk, align 4, !tbaa !3
  %i.kgb = zext i32 %i.kga to i64
  br label %bb.aaw

bb.aav:                                           ; preds = %bb.aaq
  %i.kgc = zext nneg i32 %i.kdn to i64
  %i.kgd = shl i64 %.1971124015100, %i.kgc
  %i.kge = zext i32 %i.kdq to i64
  %i.kgf = or i64 %i.kgd, %i.kge
  br label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav, %bb.aau
  %.19811495 = phi i32 [ %i.kfz, %bb.aau ], [ %i.kdo, %bb.aav ] ; 2 uses
  %.19811241 = phi i64 [ %i.kgb, %bb.aau ], [ %i.kgf, %bb.aav ] ; 2 uses
  %.299 = phi ptr [ %.298, %bb.aau ], [ %.29715101, %bb.aav ] ; 2 uses
  %i.kgg = icmp samesign ugt i32 %.9815102, 511
  br i1 %i.kgg, label %bb.aaq, label %._crit_edge15105, !llvm.loop !122

._crit_edge15105:                                 ; preds = %bb.aaw, %bb.aap
  %.19711494.lcssa = phi i32 [ %.19611493, %bb.aap ], [ %.19811495, %bb.aaw ] ; 2 uses
  %.19711240.lcssa = phi i64 [ %.19611239, %bb.aap ], [ %.19811241, %bb.aaw ] ; 2 uses
  %.297.lcssa = phi ptr [ %.296, %bb.aap ], [ %.299, %bb.aaw ] ; 13 uses
  %.98.lcssa = phi i32 [ %.97, %bb.aap ], [ %i.kdl, %bb.aaw ]
  %i.kgh = add nuw nsw i32 %.98.lcssa, %i.kdc
  %i.kgi = zext nneg i8 %i.kdb to i64
  %notmask13329 = shl nsw i64 -1, %i.kgi
  %i.kgj = trunc i64 %notmask13329 to i32
  %i.kgk = xor i32 %i.kgj, -1
  %i.kgl = and i32 %i.kcx, %i.kgk
  %i.kgm = zext nneg i32 %i.kgh to i64            ; 2 uses
  %i.kgn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.kgm
  %i.kgo = load i32, ptr %i.kgn, align 4, !tbaa !3
  %i.kgp = shl i32 %i.kgo, %i.kdc
  %i.kgq = or i32 %i.kgp, %i.kgl                  ; 3 uses
  %i.kgr = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.kgs = getelementptr inbounds nuw i8, ptr %i.kgr, i64 %i.kgm
  %i.kgt = load i8, ptr %i.kgs, align 1, !tbaa !31
  %i.kgu = sext i8 %i.kgt to i32
  %i.kgv = add nsw i32 %i.kgu, %i.kdc             ; 2 uses
  %i.kgw = sub nsw i32 %.19711494.lcssa, %i.kgv   ; 4 uses
  %i.kgx = icmp slt i32 %i.kgw, 0
  br i1 %i.kgx, label %bb.aax, label %bb.abb

bb.aax:                                           ; preds = %._crit_edge15105
  %i.kgy = zext nneg i32 %.19711494.lcssa to i64
  %i.kgz = shl i64 %.19711240.lcssa, %i.kgy
  %i.kha = sub nsw i32 0, %i.kgw
  %i.khb = ashr i32 %i.kgq, %i.kha
  %i.khc = sext i32 %i.khb to i64
  %i.khd = or i64 %i.kgz, %i.khc                  ; 24 uses
  %i.khe = and i64 %i.khd, -9187201950435737472
  %i.khf = sub i64 -72340172838076674, %i.khd
  %i.khg = and i64 %i.khe, %i.khf
  %.not13330 = icmp eq i64 %i.khg, 0
  %i.khh = lshr i64 %i.khd, 56                    ; 2 uses
  %i.khi = trunc nuw i64 %i.khh to i8
  store i8 %i.khi, ptr %.297.lcssa, align 1, !tbaa !31
  br i1 %.not13330, label %bb.aaz, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  %i.khj = getelementptr inbounds nuw i8, ptr %.297.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.khj, align 1, !tbaa !31
  %.not13331 = icmp eq i64 %i.khh, 255            ; 2 uses
  %.sroa.gep14511 = getelementptr inbounds nuw i8, ptr %.297.lcssa, i64 2 ; 2 uses
  %.neg13332.sroa.sel = select i1 %.not13331, ptr %.sroa.gep14511, ptr %i.khj ; 2 uses
  %i.khk = lshr i64 %i.khd, 48
  %i.khl = trunc i64 %i.khk to i8
  store i8 %i.khl, ptr %.neg13332.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15632 = getelementptr inbounds nuw i8, ptr %.297.lcssa, i64 3
  %.neg13332.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13331, ptr %.sroa.gep15632, ptr %.sroa.gep14511
  store i8 0, ptr %.neg13332.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.khm = and i64 %i.khd, 71776119061217280
  %.not13333 = icmp eq i64 %i.khm, 71776119061217280
  %.neg13334 = select i1 %.not13333, i64 2, i64 1
  %i.khn = getelementptr inbounds nuw i8, ptr %.neg13332.sroa.sel, i64 %.neg13334 ; 4 uses
  %i.kho = lshr i64 %i.khd, 40
  %i.khp = trunc i64 %i.kho to i8
  store i8 %i.khp, ptr %i.khn, align 1, !tbaa !31
  %i.khq = getelementptr inbounds nuw i8, ptr %i.khn, i64 1 ; 2 uses
  store i8 0, ptr %i.khq, align 1, !tbaa !31
  %i.khr = and i64 %i.khd, 280375465082880
  %.not13335 = icmp eq i64 %i.khr, 280375465082880 ; 2 uses
  %.sroa.gep14513 = getelementptr inbounds nuw i8, ptr %i.khn, i64 2 ; 2 uses
  %.neg13336.sroa.sel = select i1 %.not13335, ptr %.sroa.gep14513, ptr %i.khq ; 2 uses
  %i.khs = lshr i64 %i.khd, 32
  %i.kht = trunc i64 %i.khs to i8
  store i8 %i.kht, ptr %.neg13336.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15638 = getelementptr inbounds nuw i8, ptr %i.khn, i64 3
  %.neg13336.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13335, ptr %.sroa.gep15638, ptr %.sroa.gep14513
  store i8 0, ptr %.neg13336.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.khu = and i64 %i.khd, 1095216660480
  %.not13337 = icmp eq i64 %i.khu, 1095216660480
  %.neg13338 = select i1 %.not13337, i64 2, i64 1
  %i.khv = getelementptr inbounds nuw i8, ptr %.neg13336.sroa.sel, i64 %.neg13338 ; 4 uses
  %i.khw = lshr i64 %i.khd, 24
  %i.khx = trunc i64 %i.khw to i8
  store i8 %i.khx, ptr %i.khv, align 1, !tbaa !31
  %i.khy = getelementptr inbounds nuw i8, ptr %i.khv, i64 1 ; 2 uses
  store i8 0, ptr %i.khy, align 1, !tbaa !31
  %i.khz = and i64 %i.khd, 4278190080
  %.not13339 = icmp eq i64 %i.khz, 4278190080     ; 2 uses
  %.sroa.gep14515 = getelementptr inbounds nuw i8, ptr %i.khv, i64 2 ; 2 uses
  %.neg13340.sroa.sel = select i1 %.not13339, ptr %.sroa.gep14515, ptr %i.khy ; 2 uses
  %i.kia = lshr i64 %i.khd, 16
  %i.kib = trunc i64 %i.kia to i8
  store i8 %i.kib, ptr %.neg13340.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15636 = getelementptr inbounds nuw i8, ptr %i.khv, i64 3
  %.neg13340.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13339, ptr %.sroa.gep15636, ptr %.sroa.gep14515
  store i8 0, ptr %.neg13340.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kic = and i64 %i.khd, 16711680
  %.not13341 = icmp eq i64 %i.kic, 16711680
  %.neg13342 = select i1 %.not13341, i64 2, i64 1
  %i.kid = getelementptr inbounds nuw i8, ptr %.neg13340.sroa.sel, i64 %.neg13342 ; 4 uses
  %i.kie = lshr i64 %i.khd, 8
  %i.kif = trunc i64 %i.kie to i8
  store i8 %i.kif, ptr %i.kid, align 1, !tbaa !31
  %i.kig = getelementptr inbounds nuw i8, ptr %i.kid, i64 1 ; 2 uses
  store i8 0, ptr %i.kig, align 1, !tbaa !31
  %i.kih = and i64 %i.khd, 65280
  %.not13343 = icmp eq i64 %i.kih, 65280          ; 2 uses
  %.sroa.gep14517 = getelementptr inbounds nuw i8, ptr %i.kid, i64 2 ; 2 uses
  %.neg13344.sroa.sel = select i1 %.not13343, ptr %.sroa.gep14517, ptr %i.kig ; 2 uses
  %i.kii = trunc i64 %i.khd to i8
  store i8 %i.kii, ptr %.neg13344.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15634 = getelementptr inbounds nuw i8, ptr %i.kid, i64 3
  %.neg13344.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13343, ptr %.sroa.gep15634, ptr %.sroa.gep14517
  store i8 0, ptr %.neg13344.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kij = and i64 %i.khd, 255
  %.not13345 = icmp eq i64 %i.kij, 255
  %.neg13346 = select i1 %.not13345, i64 2, i64 1
  %i.kik = getelementptr inbounds nuw i8, ptr %.neg13344.sroa.sel, i64 %.neg13346
  br label %bb.aba

bb.aaz:                                           ; preds = %bb.aax
  %i.kil = lshr i64 %i.khd, 48
  %i.kim = trunc i64 %i.kil to i8
  %i.kin = getelementptr inbounds nuw i8, ptr %.297.lcssa, i64 1
  store i8 %i.kim, ptr %i.kin, align 1, !tbaa !31
  %i.kio = lshr i64 %i.khd, 40
  %i.kip = trunc i64 %i.kio to i8
  %i.kiq = getelementptr inbounds nuw i8, ptr %.297.lcssa, i64 2
  store i8 %i.kip, ptr %i.kiq, align 1, !tbaa !31
  %i.kir = lshr i64 %i.khd, 32
  %i.kis = trunc i64 %i.kir to i8
  %i.kit = getelementptr inbounds nuw i8, ptr %.297.lcssa, i64 3
  store i8 %i.kis, ptr %i.kit, align 1, !tbaa !31
  %i.kiu = lshr i64 %i.khd, 24
  %i.kiv = trunc i64 %i.kiu to i8
  %i.kiw = getelementptr inbounds nuw i8, ptr %.297.lcssa, i64 4
  store i8 %i.kiv, ptr %i.kiw, align 1, !tbaa !31
  %i.kix = lshr i64 %i.khd, 16
  %i.kiy = trunc i64 %i.kix to i8
  %i.kiz = getelementptr inbounds nuw i8, ptr %.297.lcssa, i64 5
  store i8 %i.kiy, ptr %i.kiz, align 1, !tbaa !31
  %i.kja = lshr i64 %i.khd, 8
  %i.kjb = trunc i64 %i.kja to i8
  %i.kjc = getelementptr inbounds nuw i8, ptr %.297.lcssa, i64 6
  store i8 %i.kjb, ptr %i.kjc, align 1, !tbaa !31
  %i.kjd = trunc i64 %i.khd to i8
  %i.kje = getelementptr inbounds nuw i8, ptr %.297.lcssa, i64 7
  store i8 %i.kjd, ptr %i.kje, align 1, !tbaa !31
  %i.kjf = getelementptr inbounds nuw i8, ptr %.297.lcssa, i64 8
  br label %bb.aba

bb.aba:                                           ; preds = %bb.aaz, %bb.aay
  %.300 = phi ptr [ %i.kik, %bb.aay ], [ %i.kjf, %bb.aaz ]
  %i.kjg = add nsw i32 %i.kgw, 64
  %i.kjh = sext i32 %i.kgq to i64
  br label %bb.abc

bb.abb:                                           ; preds = %._crit_edge15105
  %i.kji = zext nneg i32 %i.kgv to i64
  %i.kjj = shl i64 %.19711240.lcssa, %i.kji
  %i.kjk = sext i32 %i.kgq to i64
  %i.kjl = or i64 %i.kjj, %i.kjk
  br label %bb.abc

bb.abc:                                           ; preds = %bb.aba, %bb.abb, %bb.aam
  %.20011497 = phi i32 [ %.19611493, %bb.aam ], [ %i.kjg, %bb.aba ], [ %i.kgw, %bb.abb ] ; 3 uses
  %.20011243 = phi i64 [ %.19611239, %bb.aam ], [ %i.kjh, %bb.aba ], [ %i.kjl, %bb.abb ] ; 3 uses
  %.302 = phi ptr [ %.296, %bb.aam ], [ %.300, %bb.aba ], [ %.297.lcssa, %bb.abb ] ; 3 uses
  %.99 = phi i32 [ %i.kcu, %bb.aam ], [ 0, %bb.aba ], [ 0, %bb.abb ] ; 4 uses
  %i.kjm = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.kjn = load i16, ptr %i.kjm, align 2, !tbaa !79 ; 2 uses
  %i.kjo = icmp eq i16 %i.kjn, 0
  br i1 %i.kjo, label %bb.abd, label %bb.abe

bb.abd:                                           ; preds = %bb.abc
  %i.kjp = add nuw nsw i32 %.99, 16
  br label %bb.abt

bb.abe:                                           ; preds = %bb.abc
  %i.kjq = sext i16 %i.kjn to i32                 ; 2 uses
  %i.kjr = ashr i32 %i.kjq, 31                    ; 2 uses
  %i.kjs = add nsw i32 %i.kjr, %i.kjq             ; 2 uses
  %i.kjt = xor i32 %i.kjs, %i.kjr
  %i.kju = sext i32 %i.kjt to i64
  %i.kjv = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.kju
  %i.kjw = load i8, ptr %i.kjv, align 1, !tbaa !31 ; 2 uses
  %i.kjx = zext i8 %i.kjw to i32                  ; 4 uses
  %i.kjy = icmp slt i32 %i.f, %i.kjx
  br i1 %i.kjy, label %bb.abf, label %bb.abg

bb.abf:                                           ; preds = %bb.abe
  %i.kjz = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.kka = load ptr, ptr %i.kjz, align 8, !tbaa !7 ; 2 uses
  %i.kkb = getelementptr inbounds nuw i8, ptr %i.kka, i64 40
  store i32 6, ptr %i.kkb, align 8, !tbaa !26
  %i.kkc = load ptr, ptr %i.kka, align 8, !tbaa !32
  tail call void %i.kkc(ptr noundef nonnull %i.kjz) #7
  br label %bb.abg

bb.abg:                                           ; preds = %bb.abf, %bb.abe
  %i.kkd = icmp samesign ugt i32 %.99, 255
  br i1 %i.kkd, label %.lr.ph15115, label %._crit_edge15116

.lr.ph15115:                                      ; preds = %bb.abg
  %i.kke = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.kkf = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.abh

bb.abh:                                           ; preds = %.lr.ph15115, %bb.abn
  %.10015113 = phi i32 [ %.99, %.lr.ph15115 ], [ %i.kkg, %bb.abn ] ; 2 uses
  %.30315112 = phi ptr [ %.302, %.lr.ph15115 ], [ %.305, %bb.abn ] ; 13 uses
  %.2011124415111 = phi i64 [ %.20011243, %.lr.ph15115 ], [ %.20211245, %bb.abn ] ; 2 uses
  %.2011149815110 = phi i32 [ %.20011497, %.lr.ph15115 ], [ %.20211499, %bb.abn ] ; 2 uses
  %i.kkg = add nsw i32 %.10015113, -256           ; 2 uses
  %i.kkh = load i8, ptr %i.kke, align 4, !tbaa !31
  %i.kki = sext i8 %i.kkh to i32                  ; 2 uses
  %i.kkj = sub nsw i32 %.2011149815110, %i.kki    ; 4 uses
  %i.kkk = icmp slt i32 %i.kkj, 0
  %i.kkl = load i32, ptr %i.kkf, align 4, !tbaa !3 ; 2 uses
  br i1 %i.kkk, label %bb.abi, label %bb.abm

bb.abi:                                           ; preds = %bb.abh
  %i.kkm = zext nneg i32 %.2011149815110 to i64
  %i.kkn = shl i64 %.2011124415111, %i.kkm        ; 11 uses
  %i.kko = sub nsw i32 0, %i.kkj
  %i.kkp = lshr i32 %i.kkl, %i.kko
  %i.kkq = zext nneg i32 %i.kkp to i64
  %i.kkr = or i64 %i.kkn, %i.kkq                  ; 14 uses
  %i.kks = and i64 %i.kkr, -9187201950435737472
  %i.kkt = sub i64 -72340172838076674, %i.kkr
  %i.kku = and i64 %i.kks, %i.kkt
  %.not13382 = icmp eq i64 %i.kku, 0
  %i.kkv = lshr i64 %i.kkn, 56                    ; 2 uses
  %i.kkw = trunc nuw i64 %i.kkv to i8
  store i8 %i.kkw, ptr %.30315112, align 1, !tbaa !31
  br i1 %.not13382, label %bb.abk, label %bb.abj

bb.abj:                                           ; preds = %bb.abi
  %i.kkx = getelementptr inbounds nuw i8, ptr %.30315112, i64 1 ; 2 uses
  store i8 0, ptr %i.kkx, align 1, !tbaa !31
  %.not13383 = icmp eq i64 %i.kkv, 255            ; 2 uses
  %.sroa.gep14519 = getelementptr inbounds nuw i8, ptr %.30315112, i64 2 ; 2 uses
  %.neg13384.sroa.sel = select i1 %.not13383, ptr %.sroa.gep14519, ptr %i.kkx ; 2 uses
  %i.kky = lshr i64 %i.kkn, 48
  %i.kkz = trunc i64 %i.kky to i8
  store i8 %i.kkz, ptr %.neg13384.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15608 = getelementptr inbounds nuw i8, ptr %.30315112, i64 3
  %.neg13384.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13383, ptr %.sroa.gep15608, ptr %.sroa.gep14519
  store i8 0, ptr %.neg13384.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kla = and i64 %i.kkn, 71776119061217280
  %.not13385 = icmp eq i64 %i.kla, 71776119061217280
  %.neg13386 = select i1 %.not13385, i64 2, i64 1
  %i.klb = getelementptr inbounds nuw i8, ptr %.neg13384.sroa.sel, i64 %.neg13386 ; 4 uses
  %i.klc = lshr i64 %i.kkn, 40
  %i.kld = trunc i64 %i.klc to i8
  store i8 %i.kld, ptr %i.klb, align 1, !tbaa !31
  %i.kle = getelementptr inbounds nuw i8, ptr %i.klb, i64 1 ; 2 uses
  store i8 0, ptr %i.kle, align 1, !tbaa !31
  %i.klf = and i64 %i.kkn, 280375465082880
  %.not13387 = icmp eq i64 %i.klf, 280375465082880 ; 2 uses
  %.sroa.gep14521 = getelementptr inbounds nuw i8, ptr %i.klb, i64 2 ; 2 uses
  %.neg13388.sroa.sel = select i1 %.not13387, ptr %.sroa.gep14521, ptr %i.kle ; 2 uses
  %i.klg = lshr i64 %i.kkn, 32
  %i.klh = trunc i64 %i.klg to i8
  store i8 %i.klh, ptr %.neg13388.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15614 = getelementptr inbounds nuw i8, ptr %i.klb, i64 3
  %.neg13388.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13387, ptr %.sroa.gep15614, ptr %.sroa.gep14521
  store i8 0, ptr %.neg13388.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kli = and i64 %i.kkn, 1095216660480
  %.not13389 = icmp eq i64 %i.kli, 1095216660480
  %.neg13390 = select i1 %.not13389, i64 2, i64 1
  %i.klj = getelementptr inbounds nuw i8, ptr %.neg13388.sroa.sel, i64 %.neg13390 ; 4 uses
  %i.klk = lshr i64 %i.kkr, 24
  %i.kll = trunc i64 %i.klk to i8
  store i8 %i.kll, ptr %i.klj, align 1, !tbaa !31
  %i.klm = getelementptr inbounds nuw i8, ptr %i.klj, i64 1 ; 2 uses
  store i8 0, ptr %i.klm, align 1, !tbaa !31
  %i.kln = and i64 %i.kkr, 4278190080
  %.not13391 = icmp eq i64 %i.kln, 4278190080     ; 2 uses
  %.sroa.gep14523 = getelementptr inbounds nuw i8, ptr %i.klj, i64 2 ; 2 uses
  %.neg13392.sroa.sel = select i1 %.not13391, ptr %.sroa.gep14523, ptr %i.klm ; 2 uses
  %i.klo = lshr i64 %i.kkr, 16
  %i.klp = trunc i64 %i.klo to i8
  store i8 %i.klp, ptr %.neg13392.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15612 = getelementptr inbounds nuw i8, ptr %i.klj, i64 3
  %.neg13392.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13391, ptr %.sroa.gep15612, ptr %.sroa.gep14523
  store i8 0, ptr %.neg13392.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.klq = and i64 %i.kkr, 16711680
  %.not13393 = icmp eq i64 %i.klq, 16711680
  %.neg13394 = select i1 %.not13393, i64 2, i64 1
  %i.klr = getelementptr inbounds nuw i8, ptr %.neg13392.sroa.sel, i64 %.neg13394 ; 4 uses
  %i.kls = lshr i64 %i.kkr, 8
  %i.klt = trunc i64 %i.kls to i8
  store i8 %i.klt, ptr %i.klr, align 1, !tbaa !31
  %i.klu = getelementptr inbounds nuw i8, ptr %i.klr, i64 1 ; 2 uses
  store i8 0, ptr %i.klu, align 1, !tbaa !31
  %i.klv = and i64 %i.kkr, 65280
  %.not13395 = icmp eq i64 %i.klv, 65280          ; 2 uses
  %.sroa.gep14525 = getelementptr inbounds nuw i8, ptr %i.klr, i64 2 ; 2 uses
  %.neg13396.sroa.sel = select i1 %.not13395, ptr %.sroa.gep14525, ptr %i.klu ; 2 uses
  %i.klw = trunc i64 %i.kkr to i8
  store i8 %i.klw, ptr %.neg13396.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15610 = getelementptr inbounds nuw i8, ptr %i.klr, i64 3
  %.neg13396.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13395, ptr %.sroa.gep15610, ptr %.sroa.gep14525
  store i8 0, ptr %.neg13396.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.klx = and i64 %i.kkr, 255
  %.not13397 = icmp eq i64 %i.klx, 255
  %.neg13398 = select i1 %.not13397, i64 2, i64 1
  %i.kly = getelementptr inbounds nuw i8, ptr %.neg13396.sroa.sel, i64 %.neg13398
  br label %bb.abl

bb.abk:                                           ; preds = %bb.abi
  %i.klz = lshr i64 %i.kkn, 48
  %i.kma = trunc i64 %i.klz to i8
  %i.kmb = getelementptr inbounds nuw i8, ptr %.30315112, i64 1
  store i8 %i.kma, ptr %i.kmb, align 1, !tbaa !31
  %i.kmc = lshr i64 %i.kkn, 40
  %i.kmd = trunc i64 %i.kmc to i8
  %i.kme = getelementptr inbounds nuw i8, ptr %.30315112, i64 2
  store i8 %i.kmd, ptr %i.kme, align 1, !tbaa !31
  %i.kmf = lshr i64 %i.kkn, 32
  %i.kmg = trunc i64 %i.kmf to i8
  %i.kmh = getelementptr inbounds nuw i8, ptr %.30315112, i64 3
  store i8 %i.kmg, ptr %i.kmh, align 1, !tbaa !31
  %i.kmi = lshr i64 %i.kkr, 24
  %i.kmj = trunc i64 %i.kmi to i8
  %i.kmk = getelementptr inbounds nuw i8, ptr %.30315112, i64 4
  store i8 %i.kmj, ptr %i.kmk, align 1, !tbaa !31
  %i.kml = lshr i64 %i.kkr, 16
  %i.kmm = trunc i64 %i.kml to i8
  %i.kmn = getelementptr inbounds nuw i8, ptr %.30315112, i64 5
  store i8 %i.kmm, ptr %i.kmn, align 1, !tbaa !31
  %i.kmo = lshr i64 %i.kkr, 8
  %i.kmp = trunc i64 %i.kmo to i8
  %i.kmq = getelementptr inbounds nuw i8, ptr %.30315112, i64 6
  store i8 %i.kmp, ptr %i.kmq, align 1, !tbaa !31
  %i.kmr = trunc i64 %i.kkr to i8
  %i.kms = getelementptr inbounds nuw i8, ptr %.30315112, i64 7
  store i8 %i.kmr, ptr %i.kms, align 1, !tbaa !31
  %i.kmt = getelementptr inbounds nuw i8, ptr %.30315112, i64 8
  br label %bb.abl

bb.abl:                                           ; preds = %bb.abk, %bb.abj
  %.304 = phi ptr [ %i.kly, %bb.abj ], [ %i.kmt, %bb.abk ]
  %i.kmu = add nsw i32 %i.kkj, 64
  %i.kmv = load i32, ptr %i.kkf, align 4, !tbaa !3
  %i.kmw = zext i32 %i.kmv to i64
  br label %bb.abn

bb.abm:                                           ; preds = %bb.abh
  %i.kmx = zext nneg i32 %i.kki to i64
  %i.kmy = shl i64 %.2011124415111, %i.kmx
  %i.kmz = zext i32 %i.kkl to i64
  %i.kna = or i64 %i.kmy, %i.kmz
  br label %bb.abn

bb.abn:                                           ; preds = %bb.abm, %bb.abl
  %.20211499 = phi i32 [ %i.kmu, %bb.abl ], [ %i.kkj, %bb.abm ] ; 2 uses
  %.20211245 = phi i64 [ %i.kmw, %bb.abl ], [ %i.kna, %bb.abm ] ; 2 uses
  %.305 = phi ptr [ %.304, %bb.abl ], [ %.30315112, %bb.abm ] ; 2 uses
  %i.knb = icmp samesign ugt i32 %.10015113, 511
  br i1 %i.knb, label %bb.abh, label %._crit_edge15116, !llvm.loop !123

._crit_edge15116:                                 ; preds = %bb.abn, %bb.abg
  %.20111498.lcssa = phi i32 [ %.20011497, %bb.abg ], [ %.20211499, %bb.abn ] ; 2 uses
  %.20111244.lcssa = phi i64 [ %.20011243, %bb.abg ], [ %.20211245, %bb.abn ] ; 2 uses
  %.303.lcssa = phi ptr [ %.302, %bb.abg ], [ %.305, %bb.abn ] ; 13 uses
  %.100.lcssa = phi i32 [ %.99, %bb.abg ], [ %i.kkg, %bb.abn ]
  %i.knc = add nuw nsw i32 %.100.lcssa, %i.kjx
  %i.knd = zext nneg i8 %i.kjw to i64
  %notmask13364 = shl nsw i64 -1, %i.knd
  %i.kne = trunc i64 %notmask13364 to i32
  %i.knf = xor i32 %i.kne, -1
  %i.kng = and i32 %i.kjs, %i.knf
  %i.knh = zext nneg i32 %i.knc to i64            ; 2 uses
  %i.kni = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.knh
  %i.knj = load i32, ptr %i.kni, align 4, !tbaa !3
  %i.knk = shl i32 %i.knj, %i.kjx
  %i.knl = or i32 %i.knk, %i.kng                  ; 3 uses
  %i.knm = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.knn = getelementptr inbounds nuw i8, ptr %i.knm, i64 %i.knh
  %i.kno = load i8, ptr %i.knn, align 1, !tbaa !31
  %i.knp = sext i8 %i.kno to i32
  %i.knq = add nsw i32 %i.knp, %i.kjx             ; 2 uses
  %i.knr = sub nsw i32 %.20111498.lcssa, %i.knq   ; 4 uses
  %i.kns = icmp slt i32 %i.knr, 0
  br i1 %i.kns, label %bb.abo, label %bb.abs

bb.abo:                                           ; preds = %._crit_edge15116
  %i.knt = zext nneg i32 %.20111498.lcssa to i64
  %i.knu = shl i64 %.20111244.lcssa, %i.knt
  %i.knv = sub nsw i32 0, %i.knr
  %i.knw = ashr i32 %i.knl, %i.knv
  %i.knx = sext i32 %i.knw to i64
  %i.kny = or i64 %i.knu, %i.knx                  ; 24 uses
  %i.knz = and i64 %i.kny, -9187201950435737472
  %i.koa = sub i64 -72340172838076674, %i.kny
  %i.kob = and i64 %i.knz, %i.koa
  %.not13365 = icmp eq i64 %i.kob, 0
  %i.koc = lshr i64 %i.kny, 56                    ; 2 uses
  %i.kod = trunc nuw i64 %i.koc to i8
  store i8 %i.kod, ptr %.303.lcssa, align 1, !tbaa !31
  br i1 %.not13365, label %bb.abq, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %i.koe = getelementptr inbounds nuw i8, ptr %.303.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.koe, align 1, !tbaa !31
  %.not13366 = icmp eq i64 %i.koc, 255            ; 2 uses
  %.sroa.gep14527 = getelementptr inbounds nuw i8, ptr %.303.lcssa, i64 2 ; 2 uses
  %.neg13367.sroa.sel = select i1 %.not13366, ptr %.sroa.gep14527, ptr %i.koe ; 2 uses
  %i.kof = lshr i64 %i.kny, 48
  %i.kog = trunc i64 %i.kof to i8
  store i8 %i.kog, ptr %.neg13367.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15616 = getelementptr inbounds nuw i8, ptr %.303.lcssa, i64 3
  %.neg13367.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13366, ptr %.sroa.gep15616, ptr %.sroa.gep14527
  store i8 0, ptr %.neg13367.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.koh = and i64 %i.kny, 71776119061217280
  %.not13368 = icmp eq i64 %i.koh, 71776119061217280
  %.neg13369 = select i1 %.not13368, i64 2, i64 1
  %i.koi = getelementptr inbounds nuw i8, ptr %.neg13367.sroa.sel, i64 %.neg13369 ; 4 uses
  %i.koj = lshr i64 %i.kny, 40
  %i.kok = trunc i64 %i.koj to i8
  store i8 %i.kok, ptr %i.koi, align 1, !tbaa !31
  %i.kol = getelementptr inbounds nuw i8, ptr %i.koi, i64 1 ; 2 uses
  store i8 0, ptr %i.kol, align 1, !tbaa !31
  %i.kom = and i64 %i.kny, 280375465082880
  %.not13370 = icmp eq i64 %i.kom, 280375465082880 ; 2 uses
  %.sroa.gep14529 = getelementptr inbounds nuw i8, ptr %i.koi, i64 2 ; 2 uses
  %.neg13371.sroa.sel = select i1 %.not13370, ptr %.sroa.gep14529, ptr %i.kol ; 2 uses
  %i.kon = lshr i64 %i.kny, 32
  %i.koo = trunc i64 %i.kon to i8
  store i8 %i.koo, ptr %.neg13371.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15622 = getelementptr inbounds nuw i8, ptr %i.koi, i64 3
  %.neg13371.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13370, ptr %.sroa.gep15622, ptr %.sroa.gep14529
  store i8 0, ptr %.neg13371.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kop = and i64 %i.kny, 1095216660480
  %.not13372 = icmp eq i64 %i.kop, 1095216660480
  %.neg13373 = select i1 %.not13372, i64 2, i64 1
  %i.koq = getelementptr inbounds nuw i8, ptr %.neg13371.sroa.sel, i64 %.neg13373 ; 4 uses
  %i.kor = lshr i64 %i.kny, 24
  %i.kos = trunc i64 %i.kor to i8
  store i8 %i.kos, ptr %i.koq, align 1, !tbaa !31
  %i.kot = getelementptr inbounds nuw i8, ptr %i.koq, i64 1 ; 2 uses
  store i8 0, ptr %i.kot, align 1, !tbaa !31
  %i.kou = and i64 %i.kny, 4278190080
  %.not13374 = icmp eq i64 %i.kou, 4278190080     ; 2 uses
  %.sroa.gep14531 = getelementptr inbounds nuw i8, ptr %i.koq, i64 2 ; 2 uses
  %.neg13375.sroa.sel = select i1 %.not13374, ptr %.sroa.gep14531, ptr %i.kot ; 2 uses
  %i.kov = lshr i64 %i.kny, 16
  %i.kow = trunc i64 %i.kov to i8
  store i8 %i.kow, ptr %.neg13375.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15620 = getelementptr inbounds nuw i8, ptr %i.koq, i64 3
  %.neg13375.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13374, ptr %.sroa.gep15620, ptr %.sroa.gep14531
  store i8 0, ptr %.neg13375.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kox = and i64 %i.kny, 16711680
  %.not13376 = icmp eq i64 %i.kox, 16711680
  %.neg13377 = select i1 %.not13376, i64 2, i64 1
  %i.koy = getelementptr inbounds nuw i8, ptr %.neg13375.sroa.sel, i64 %.neg13377 ; 4 uses
  %i.koz = lshr i64 %i.kny, 8
  %i.kpa = trunc i64 %i.koz to i8
  store i8 %i.kpa, ptr %i.koy, align 1, !tbaa !31
  %i.kpb = getelementptr inbounds nuw i8, ptr %i.koy, i64 1 ; 2 uses
  store i8 0, ptr %i.kpb, align 1, !tbaa !31
  %i.kpc = and i64 %i.kny, 65280
  %.not13378 = icmp eq i64 %i.kpc, 65280          ; 2 uses
  %.sroa.gep14533 = getelementptr inbounds nuw i8, ptr %i.koy, i64 2 ; 2 uses
  %.neg13379.sroa.sel = select i1 %.not13378, ptr %.sroa.gep14533, ptr %i.kpb ; 2 uses
  %i.kpd = trunc i64 %i.kny to i8
  store i8 %i.kpd, ptr %.neg13379.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15618 = getelementptr inbounds nuw i8, ptr %i.koy, i64 3
  %.neg13379.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13378, ptr %.sroa.gep15618, ptr %.sroa.gep14533
  store i8 0, ptr %.neg13379.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kpe = and i64 %i.kny, 255
  %.not13380 = icmp eq i64 %i.kpe, 255
  %.neg13381 = select i1 %.not13380, i64 2, i64 1
  %i.kpf = getelementptr inbounds nuw i8, ptr %.neg13379.sroa.sel, i64 %.neg13381
  br label %bb.abr

bb.abq:                                           ; preds = %bb.abo
  %i.kpg = lshr i64 %i.kny, 48
  %i.kph = trunc i64 %i.kpg to i8
  %i.kpi = getelementptr inbounds nuw i8, ptr %.303.lcssa, i64 1
  store i8 %i.kph, ptr %i.kpi, align 1, !tbaa !31
  %i.kpj = lshr i64 %i.kny, 40
  %i.kpk = trunc i64 %i.kpj to i8
  %i.kpl = getelementptr inbounds nuw i8, ptr %.303.lcssa, i64 2
  store i8 %i.kpk, ptr %i.kpl, align 1, !tbaa !31
  %i.kpm = lshr i64 %i.kny, 32
  %i.kpn = trunc i64 %i.kpm to i8
  %i.kpo = getelementptr inbounds nuw i8, ptr %.303.lcssa, i64 3
  store i8 %i.kpn, ptr %i.kpo, align 1, !tbaa !31
  %i.kpp = lshr i64 %i.kny, 24
  %i.kpq = trunc i64 %i.kpp to i8
  %i.kpr = getelementptr inbounds nuw i8, ptr %.303.lcssa, i64 4
  store i8 %i.kpq, ptr %i.kpr, align 1, !tbaa !31
  %i.kps = lshr i64 %i.kny, 16
  %i.kpt = trunc i64 %i.kps to i8
  %i.kpu = getelementptr inbounds nuw i8, ptr %.303.lcssa, i64 5
  store i8 %i.kpt, ptr %i.kpu, align 1, !tbaa !31
  %i.kpv = lshr i64 %i.kny, 8
  %i.kpw = trunc i64 %i.kpv to i8
  %i.kpx = getelementptr inbounds nuw i8, ptr %.303.lcssa, i64 6
  store i8 %i.kpw, ptr %i.kpx, align 1, !tbaa !31
  %i.kpy = trunc i64 %i.kny to i8
  %i.kpz = getelementptr inbounds nuw i8, ptr %.303.lcssa, i64 7
  store i8 %i.kpy, ptr %i.kpz, align 1, !tbaa !31
  %i.kqa = getelementptr inbounds nuw i8, ptr %.303.lcssa, i64 8
  br label %bb.abr

bb.abr:                                           ; preds = %bb.abq, %bb.abp
  %.306 = phi ptr [ %i.kpf, %bb.abp ], [ %i.kqa, %bb.abq ]
  %i.kqb = add nsw i32 %i.knr, 64
  %i.kqc = sext i32 %i.knl to i64
  br label %bb.abt

bb.abs:                                           ; preds = %._crit_edge15116
  %i.kqd = zext nneg i32 %i.knq to i64
  %i.kqe = shl i64 %.20111244.lcssa, %i.kqd
  %i.kqf = sext i32 %i.knl to i64
  %i.kqg = or i64 %i.kqe, %i.kqf
  br label %bb.abt

bb.abt:                                           ; preds = %bb.abr, %bb.abs, %bb.abd
  %.20411501 = phi i32 [ %.20011497, %bb.abd ], [ %i.kqb, %bb.abr ], [ %i.knr, %bb.abs ] ; 3 uses
  %.20411247 = phi i64 [ %.20011243, %bb.abd ], [ %i.kqc, %bb.abr ], [ %i.kqg, %bb.abs ] ; 3 uses
  %.308 = phi ptr [ %.302, %bb.abd ], [ %.306, %bb.abr ], [ %.303.lcssa, %bb.abs ] ; 3 uses
  %.101 = phi i32 [ %i.kjp, %bb.abd ], [ 0, %bb.abr ], [ 0, %bb.abs ] ; 4 uses
  %i.kqh = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.kqi = load i16, ptr %i.kqh, align 2, !tbaa !79 ; 2 uses
  %i.kqj = icmp eq i16 %i.kqi, 0
  br i1 %i.kqj, label %bb.abu, label %bb.abv

bb.abu:                                           ; preds = %bb.abt
  %i.kqk = add nuw nsw i32 %.101, 16
  br label %bb.ack

bb.abv:                                           ; preds = %bb.abt
  %i.kql = sext i16 %i.kqi to i32                 ; 2 uses
  %i.kqm = ashr i32 %i.kql, 31                    ; 2 uses
  %i.kqn = add nsw i32 %i.kqm, %i.kql             ; 2 uses
  %i.kqo = xor i32 %i.kqn, %i.kqm
  %i.kqp = sext i32 %i.kqo to i64
  %i.kqq = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.kqp
  %i.kqr = load i8, ptr %i.kqq, align 1, !tbaa !31 ; 2 uses
  %i.kqs = zext i8 %i.kqr to i32                  ; 4 uses
  %i.kqt = icmp slt i32 %i.f, %i.kqs
  br i1 %i.kqt, label %bb.abw, label %bb.abx

bb.abw:                                           ; preds = %bb.abv
  %i.kqu = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.kqv = load ptr, ptr %i.kqu, align 8, !tbaa !7 ; 2 uses
  %i.kqw = getelementptr inbounds nuw i8, ptr %i.kqv, i64 40
  store i32 6, ptr %i.kqw, align 8, !tbaa !26
  %i.kqx = load ptr, ptr %i.kqv, align 8, !tbaa !32
  tail call void %i.kqx(ptr noundef nonnull %i.kqu) #7
  br label %bb.abx

bb.abx:                                           ; preds = %bb.abw, %bb.abv
  %i.kqy = icmp samesign ugt i32 %.101, 255
  br i1 %i.kqy, label %.lr.ph15126, label %._crit_edge15127

.lr.ph15126:                                      ; preds = %bb.abx
  %i.kqz = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.kra = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.aby

bb.aby:                                           ; preds = %.lr.ph15126, %bb.ace
  %.10215124 = phi i32 [ %.101, %.lr.ph15126 ], [ %i.krb, %bb.ace ] ; 2 uses
  %.30915123 = phi ptr [ %.308, %.lr.ph15126 ], [ %.311, %bb.ace ] ; 13 uses
  %.2051124815122 = phi i64 [ %.20411247, %.lr.ph15126 ], [ %.20611249, %bb.ace ] ; 2 uses
  %.2051150215121 = phi i32 [ %.20411501, %.lr.ph15126 ], [ %.20611503, %bb.ace ] ; 2 uses
  %i.krb = add nsw i32 %.10215124, -256           ; 2 uses
  %i.krc = load i8, ptr %i.kqz, align 4, !tbaa !31
  %i.krd = sext i8 %i.krc to i32                  ; 2 uses
  %i.kre = sub nsw i32 %.2051150215121, %i.krd    ; 4 uses
  %i.krf = icmp slt i32 %i.kre, 0
  %i.krg = load i32, ptr %i.kra, align 4, !tbaa !3 ; 2 uses
  br i1 %i.krf, label %bb.abz, label %bb.acd

bb.abz:                                           ; preds = %bb.aby
  %i.krh = zext nneg i32 %.2051150215121 to i64
  %i.kri = shl i64 %.2051124815122, %i.krh        ; 11 uses
  %i.krj = sub nsw i32 0, %i.kre
  %i.krk = lshr i32 %i.krg, %i.krj
  %i.krl = zext nneg i32 %i.krk to i64
  %i.krm = or i64 %i.kri, %i.krl                  ; 14 uses
  %i.krn = and i64 %i.krm, -9187201950435737472
  %i.kro = sub i64 -72340172838076674, %i.krm
  %i.krp = and i64 %i.krn, %i.kro
  %.not13417 = icmp eq i64 %i.krp, 0
  %i.krq = lshr i64 %i.kri, 56                    ; 2 uses
  %i.krr = trunc nuw i64 %i.krq to i8
  store i8 %i.krr, ptr %.30915123, align 1, !tbaa !31
  br i1 %.not13417, label %bb.acb, label %bb.aca

bb.aca:                                           ; preds = %bb.abz
  %i.krs = getelementptr inbounds nuw i8, ptr %.30915123, i64 1 ; 2 uses
  store i8 0, ptr %i.krs, align 1, !tbaa !31
  %.not13418 = icmp eq i64 %i.krq, 255            ; 2 uses
  %.sroa.gep14535 = getelementptr inbounds nuw i8, ptr %.30915123, i64 2 ; 2 uses
  %.neg13419.sroa.sel = select i1 %.not13418, ptr %.sroa.gep14535, ptr %i.krs ; 2 uses
  %i.krt = lshr i64 %i.kri, 48
  %i.kru = trunc i64 %i.krt to i8
  store i8 %i.kru, ptr %.neg13419.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15592 = getelementptr inbounds nuw i8, ptr %.30915123, i64 3
  %.neg13419.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13418, ptr %.sroa.gep15592, ptr %.sroa.gep14535
  store i8 0, ptr %.neg13419.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.krv = and i64 %i.kri, 71776119061217280
  %.not13420 = icmp eq i64 %i.krv, 71776119061217280
  %.neg13421 = select i1 %.not13420, i64 2, i64 1
  %i.krw = getelementptr inbounds nuw i8, ptr %.neg13419.sroa.sel, i64 %.neg13421 ; 4 uses
  %i.krx = lshr i64 %i.kri, 40
  %i.kry = trunc i64 %i.krx to i8
  store i8 %i.kry, ptr %i.krw, align 1, !tbaa !31
  %i.krz = getelementptr inbounds nuw i8, ptr %i.krw, i64 1 ; 2 uses
  store i8 0, ptr %i.krz, align 1, !tbaa !31
  %i.ksa = and i64 %i.kri, 280375465082880
  %.not13422 = icmp eq i64 %i.ksa, 280375465082880 ; 2 uses
  %.sroa.gep14537 = getelementptr inbounds nuw i8, ptr %i.krw, i64 2 ; 2 uses
  %.neg13423.sroa.sel = select i1 %.not13422, ptr %.sroa.gep14537, ptr %i.krz ; 2 uses
  %i.ksb = lshr i64 %i.kri, 32
  %i.ksc = trunc i64 %i.ksb to i8
  store i8 %i.ksc, ptr %.neg13423.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15598 = getelementptr inbounds nuw i8, ptr %i.krw, i64 3
  %.neg13423.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13422, ptr %.sroa.gep15598, ptr %.sroa.gep14537
  store i8 0, ptr %.neg13423.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ksd = and i64 %i.kri, 1095216660480
  %.not13424 = icmp eq i64 %i.ksd, 1095216660480
  %.neg13425 = select i1 %.not13424, i64 2, i64 1
  %i.kse = getelementptr inbounds nuw i8, ptr %.neg13423.sroa.sel, i64 %.neg13425 ; 4 uses
  %i.ksf = lshr i64 %i.krm, 24
  %i.ksg = trunc i64 %i.ksf to i8
  store i8 %i.ksg, ptr %i.kse, align 1, !tbaa !31
  %i.ksh = getelementptr inbounds nuw i8, ptr %i.kse, i64 1 ; 2 uses
  store i8 0, ptr %i.ksh, align 1, !tbaa !31
  %i.ksi = and i64 %i.krm, 4278190080
  %.not13426 = icmp eq i64 %i.ksi, 4278190080     ; 2 uses
  %.sroa.gep14539 = getelementptr inbounds nuw i8, ptr %i.kse, i64 2 ; 2 uses
  %.neg13427.sroa.sel = select i1 %.not13426, ptr %.sroa.gep14539, ptr %i.ksh ; 2 uses
  %i.ksj = lshr i64 %i.krm, 16
  %i.ksk = trunc i64 %i.ksj to i8
  store i8 %i.ksk, ptr %.neg13427.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15596 = getelementptr inbounds nuw i8, ptr %i.kse, i64 3
  %.neg13427.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13426, ptr %.sroa.gep15596, ptr %.sroa.gep14539
  store i8 0, ptr %.neg13427.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ksl = and i64 %i.krm, 16711680
  %.not13428 = icmp eq i64 %i.ksl, 16711680
  %.neg13429 = select i1 %.not13428, i64 2, i64 1
  %i.ksm = getelementptr inbounds nuw i8, ptr %.neg13427.sroa.sel, i64 %.neg13429 ; 4 uses
  %i.ksn = lshr i64 %i.krm, 8
  %i.kso = trunc i64 %i.ksn to i8
  store i8 %i.kso, ptr %i.ksm, align 1, !tbaa !31
  %i.ksp = getelementptr inbounds nuw i8, ptr %i.ksm, i64 1 ; 2 uses
  store i8 0, ptr %i.ksp, align 1, !tbaa !31
  %i.ksq = and i64 %i.krm, 65280
  %.not13430 = icmp eq i64 %i.ksq, 65280          ; 2 uses
  %.sroa.gep14541 = getelementptr inbounds nuw i8, ptr %i.ksm, i64 2 ; 2 uses
  %.neg13431.sroa.sel = select i1 %.not13430, ptr %.sroa.gep14541, ptr %i.ksp ; 2 uses
  %i.ksr = trunc i64 %i.krm to i8
  store i8 %i.ksr, ptr %.neg13431.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15594 = getelementptr inbounds nuw i8, ptr %i.ksm, i64 3
  %.neg13431.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13430, ptr %.sroa.gep15594, ptr %.sroa.gep14541
  store i8 0, ptr %.neg13431.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kss = and i64 %i.krm, 255
  %.not13432 = icmp eq i64 %i.kss, 255
  %.neg13433 = select i1 %.not13432, i64 2, i64 1
  %i.kst = getelementptr inbounds nuw i8, ptr %.neg13431.sroa.sel, i64 %.neg13433
  br label %bb.acc

bb.acb:                                           ; preds = %bb.abz
  %i.ksu = lshr i64 %i.kri, 48
  %i.ksv = trunc i64 %i.ksu to i8
  %i.ksw = getelementptr inbounds nuw i8, ptr %.30915123, i64 1
  store i8 %i.ksv, ptr %i.ksw, align 1, !tbaa !31
  %i.ksx = lshr i64 %i.kri, 40
  %i.ksy = trunc i64 %i.ksx to i8
  %i.ksz = getelementptr inbounds nuw i8, ptr %.30915123, i64 2
  store i8 %i.ksy, ptr %i.ksz, align 1, !tbaa !31
  %i.kta = lshr i64 %i.kri, 32
  %i.ktb = trunc i64 %i.kta to i8
  %i.ktc = getelementptr inbounds nuw i8, ptr %.30915123, i64 3
  store i8 %i.ktb, ptr %i.ktc, align 1, !tbaa !31
  %i.ktd = lshr i64 %i.krm, 24
  %i.kte = trunc i64 %i.ktd to i8
  %i.ktf = getelementptr inbounds nuw i8, ptr %.30915123, i64 4
  store i8 %i.kte, ptr %i.ktf, align 1, !tbaa !31
  %i.ktg = lshr i64 %i.krm, 16
  %i.kth = trunc i64 %i.ktg to i8
  %i.kti = getelementptr inbounds nuw i8, ptr %.30915123, i64 5
  store i8 %i.kth, ptr %i.kti, align 1, !tbaa !31
  %i.ktj = lshr i64 %i.krm, 8
  %i.ktk = trunc i64 %i.ktj to i8
  %i.ktl = getelementptr inbounds nuw i8, ptr %.30915123, i64 6
  store i8 %i.ktk, ptr %i.ktl, align 1, !tbaa !31
  %i.ktm = trunc i64 %i.krm to i8
  %i.ktn = getelementptr inbounds nuw i8, ptr %.30915123, i64 7
  store i8 %i.ktm, ptr %i.ktn, align 1, !tbaa !31
  %i.kto = getelementptr inbounds nuw i8, ptr %.30915123, i64 8
  br label %bb.acc

bb.acc:                                           ; preds = %bb.acb, %bb.aca
  %.310 = phi ptr [ %i.kst, %bb.aca ], [ %i.kto, %bb.acb ]
  %i.ktp = add nsw i32 %i.kre, 64
  %i.ktq = load i32, ptr %i.kra, align 4, !tbaa !3
  %i.ktr = zext i32 %i.ktq to i64
  br label %bb.ace

bb.acd:                                           ; preds = %bb.aby
  %i.kts = zext nneg i32 %i.krd to i64
  %i.ktt = shl i64 %.2051124815122, %i.kts
  %i.ktu = zext i32 %i.krg to i64
  %i.ktv = or i64 %i.ktt, %i.ktu
  br label %bb.ace

bb.ace:                                           ; preds = %bb.acd, %bb.acc
  %.20611503 = phi i32 [ %i.ktp, %bb.acc ], [ %i.kre, %bb.acd ] ; 2 uses
  %.20611249 = phi i64 [ %i.ktr, %bb.acc ], [ %i.ktv, %bb.acd ] ; 2 uses
  %.311 = phi ptr [ %.310, %bb.acc ], [ %.30915123, %bb.acd ] ; 2 uses
  %i.ktw = icmp samesign ugt i32 %.10215124, 511
  br i1 %i.ktw, label %bb.aby, label %._crit_edge15127, !llvm.loop !124

._crit_edge15127:                                 ; preds = %bb.ace, %bb.abx
  %.20511502.lcssa = phi i32 [ %.20411501, %bb.abx ], [ %.20611503, %bb.ace ] ; 2 uses
  %.20511248.lcssa = phi i64 [ %.20411247, %bb.abx ], [ %.20611249, %bb.ace ] ; 2 uses
  %.309.lcssa = phi ptr [ %.308, %bb.abx ], [ %.311, %bb.ace ] ; 13 uses
  %.102.lcssa = phi i32 [ %.101, %bb.abx ], [ %i.krb, %bb.ace ]
  %i.ktx = add nuw nsw i32 %.102.lcssa, %i.kqs
  %i.kty = zext nneg i8 %i.kqr to i64
  %notmask13399 = shl nsw i64 -1, %i.kty
  %i.ktz = trunc i64 %notmask13399 to i32
  %i.kua = xor i32 %i.ktz, -1
  %i.kub = and i32 %i.kqn, %i.kua
  %i.kuc = zext nneg i32 %i.ktx to i64            ; 2 uses
  %i.kud = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.kuc
  %i.kue = load i32, ptr %i.kud, align 4, !tbaa !3
  %i.kuf = shl i32 %i.kue, %i.kqs
  %i.kug = or i32 %i.kuf, %i.kub                  ; 3 uses
  %i.kuh = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.kui = getelementptr inbounds nuw i8, ptr %i.kuh, i64 %i.kuc
  %i.kuj = load i8, ptr %i.kui, align 1, !tbaa !31
  %i.kuk = sext i8 %i.kuj to i32
  %i.kul = add nsw i32 %i.kuk, %i.kqs             ; 2 uses
  %i.kum = sub nsw i32 %.20511502.lcssa, %i.kul   ; 4 uses
  %i.kun = icmp slt i32 %i.kum, 0
  br i1 %i.kun, label %bb.acf, label %bb.acj

bb.acf:                                           ; preds = %._crit_edge15127
  %i.kuo = zext nneg i32 %.20511502.lcssa to i64
  %i.kup = shl i64 %.20511248.lcssa, %i.kuo
  %i.kuq = sub nsw i32 0, %i.kum
  %i.kur = ashr i32 %i.kug, %i.kuq
  %i.kus = sext i32 %i.kur to i64
  %i.kut = or i64 %i.kup, %i.kus                  ; 24 uses
  %i.kuu = and i64 %i.kut, -9187201950435737472
  %i.kuv = sub i64 -72340172838076674, %i.kut
  %i.kuw = and i64 %i.kuu, %i.kuv
  %.not13400 = icmp eq i64 %i.kuw, 0
  %i.kux = lshr i64 %i.kut, 56                    ; 2 uses
  %i.kuy = trunc nuw i64 %i.kux to i8
  store i8 %i.kuy, ptr %.309.lcssa, align 1, !tbaa !31
  br i1 %.not13400, label %bb.ach, label %bb.acg

bb.acg:                                           ; preds = %bb.acf
  %i.kuz = getelementptr inbounds nuw i8, ptr %.309.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.kuz, align 1, !tbaa !31
  %.not13401 = icmp eq i64 %i.kux, 255            ; 2 uses
  %.sroa.gep14543 = getelementptr inbounds nuw i8, ptr %.309.lcssa, i64 2 ; 2 uses
  %.neg13402.sroa.sel = select i1 %.not13401, ptr %.sroa.gep14543, ptr %i.kuz ; 2 uses
  %i.kva = lshr i64 %i.kut, 48
  %i.kvb = trunc i64 %i.kva to i8
  store i8 %i.kvb, ptr %.neg13402.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15600 = getelementptr inbounds nuw i8, ptr %.309.lcssa, i64 3
  %.neg13402.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13401, ptr %.sroa.gep15600, ptr %.sroa.gep14543
  store i8 0, ptr %.neg13402.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kvc = and i64 %i.kut, 71776119061217280
  %.not13403 = icmp eq i64 %i.kvc, 71776119061217280
  %.neg13404 = select i1 %.not13403, i64 2, i64 1
  %i.kvd = getelementptr inbounds nuw i8, ptr %.neg13402.sroa.sel, i64 %.neg13404 ; 4 uses
  %i.kve = lshr i64 %i.kut, 40
  %i.kvf = trunc i64 %i.kve to i8
  store i8 %i.kvf, ptr %i.kvd, align 1, !tbaa !31
  %i.kvg = getelementptr inbounds nuw i8, ptr %i.kvd, i64 1 ; 2 uses
  store i8 0, ptr %i.kvg, align 1, !tbaa !31
  %i.kvh = and i64 %i.kut, 280375465082880
  %.not13405 = icmp eq i64 %i.kvh, 280375465082880 ; 2 uses
  %.sroa.gep14545 = getelementptr inbounds nuw i8, ptr %i.kvd, i64 2 ; 2 uses
  %.neg13406.sroa.sel = select i1 %.not13405, ptr %.sroa.gep14545, ptr %i.kvg ; 2 uses
  %i.kvi = lshr i64 %i.kut, 32
  %i.kvj = trunc i64 %i.kvi to i8
  store i8 %i.kvj, ptr %.neg13406.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15606 = getelementptr inbounds nuw i8, ptr %i.kvd, i64 3
  %.neg13406.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13405, ptr %.sroa.gep15606, ptr %.sroa.gep14545
  store i8 0, ptr %.neg13406.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kvk = and i64 %i.kut, 1095216660480
  %.not13407 = icmp eq i64 %i.kvk, 1095216660480
  %.neg13408 = select i1 %.not13407, i64 2, i64 1
  %i.kvl = getelementptr inbounds nuw i8, ptr %.neg13406.sroa.sel, i64 %.neg13408 ; 4 uses
  %i.kvm = lshr i64 %i.kut, 24
  %i.kvn = trunc i64 %i.kvm to i8
  store i8 %i.kvn, ptr %i.kvl, align 1, !tbaa !31
  %i.kvo = getelementptr inbounds nuw i8, ptr %i.kvl, i64 1 ; 2 uses
  store i8 0, ptr %i.kvo, align 1, !tbaa !31
  %i.kvp = and i64 %i.kut, 4278190080
  %.not13409 = icmp eq i64 %i.kvp, 4278190080     ; 2 uses
  %.sroa.gep14547 = getelementptr inbounds nuw i8, ptr %i.kvl, i64 2 ; 2 uses
  %.neg13410.sroa.sel = select i1 %.not13409, ptr %.sroa.gep14547, ptr %i.kvo ; 2 uses
  %i.kvq = lshr i64 %i.kut, 16
  %i.kvr = trunc i64 %i.kvq to i8
  store i8 %i.kvr, ptr %.neg13410.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15604 = getelementptr inbounds nuw i8, ptr %i.kvl, i64 3
  %.neg13410.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13409, ptr %.sroa.gep15604, ptr %.sroa.gep14547
  store i8 0, ptr %.neg13410.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kvs = and i64 %i.kut, 16711680
  %.not13411 = icmp eq i64 %i.kvs, 16711680
  %.neg13412 = select i1 %.not13411, i64 2, i64 1
  %i.kvt = getelementptr inbounds nuw i8, ptr %.neg13410.sroa.sel, i64 %.neg13412 ; 4 uses
  %i.kvu = lshr i64 %i.kut, 8
  %i.kvv = trunc i64 %i.kvu to i8
  store i8 %i.kvv, ptr %i.kvt, align 1, !tbaa !31
  %i.kvw = getelementptr inbounds nuw i8, ptr %i.kvt, i64 1 ; 2 uses
  store i8 0, ptr %i.kvw, align 1, !tbaa !31
  %i.kvx = and i64 %i.kut, 65280
  %.not13413 = icmp eq i64 %i.kvx, 65280          ; 2 uses
  %.sroa.gep14549 = getelementptr inbounds nuw i8, ptr %i.kvt, i64 2 ; 2 uses
  %.neg13414.sroa.sel = select i1 %.not13413, ptr %.sroa.gep14549, ptr %i.kvw ; 2 uses
  %i.kvy = trunc i64 %i.kut to i8
  store i8 %i.kvy, ptr %.neg13414.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15602 = getelementptr inbounds nuw i8, ptr %i.kvt, i64 3
  %.neg13414.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13413, ptr %.sroa.gep15602, ptr %.sroa.gep14549
  store i8 0, ptr %.neg13414.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kvz = and i64 %i.kut, 255
  %.not13415 = icmp eq i64 %i.kvz, 255
  %.neg13416 = select i1 %.not13415, i64 2, i64 1
  %i.kwa = getelementptr inbounds nuw i8, ptr %.neg13414.sroa.sel, i64 %.neg13416
  br label %bb.aci

bb.ach:                                           ; preds = %bb.acf
  %i.kwb = lshr i64 %i.kut, 48
  %i.kwc = trunc i64 %i.kwb to i8
  %i.kwd = getelementptr inbounds nuw i8, ptr %.309.lcssa, i64 1
  store i8 %i.kwc, ptr %i.kwd, align 1, !tbaa !31
  %i.kwe = lshr i64 %i.kut, 40
  %i.kwf = trunc i64 %i.kwe to i8
  %i.kwg = getelementptr inbounds nuw i8, ptr %.309.lcssa, i64 2
  store i8 %i.kwf, ptr %i.kwg, align 1, !tbaa !31
  %i.kwh = lshr i64 %i.kut, 32
  %i.kwi = trunc i64 %i.kwh to i8
  %i.kwj = getelementptr inbounds nuw i8, ptr %.309.lcssa, i64 3
  store i8 %i.kwi, ptr %i.kwj, align 1, !tbaa !31
  %i.kwk = lshr i64 %i.kut, 24
  %i.kwl = trunc i64 %i.kwk to i8
  %i.kwm = getelementptr inbounds nuw i8, ptr %.309.lcssa, i64 4
  store i8 %i.kwl, ptr %i.kwm, align 1, !tbaa !31
  %i.kwn = lshr i64 %i.kut, 16
  %i.kwo = trunc i64 %i.kwn to i8
  %i.kwp = getelementptr inbounds nuw i8, ptr %.309.lcssa, i64 5
  store i8 %i.kwo, ptr %i.kwp, align 1, !tbaa !31
  %i.kwq = lshr i64 %i.kut, 8
  %i.kwr = trunc i64 %i.kwq to i8
  %i.kws = getelementptr inbounds nuw i8, ptr %.309.lcssa, i64 6
  store i8 %i.kwr, ptr %i.kws, align 1, !tbaa !31
  %i.kwt = trunc i64 %i.kut to i8
  %i.kwu = getelementptr inbounds nuw i8, ptr %.309.lcssa, i64 7
  store i8 %i.kwt, ptr %i.kwu, align 1, !tbaa !31
  %i.kwv = getelementptr inbounds nuw i8, ptr %.309.lcssa, i64 8
  br label %bb.aci

bb.aci:                                           ; preds = %bb.ach, %bb.acg
  %.312 = phi ptr [ %i.kwa, %bb.acg ], [ %i.kwv, %bb.ach ]
  %i.kww = add nsw i32 %i.kum, 64
  %i.kwx = sext i32 %i.kug to i64
  br label %bb.ack

bb.acj:                                           ; preds = %._crit_edge15127
  %i.kwy = zext nneg i32 %i.kul to i64
  %i.kwz = shl i64 %.20511248.lcssa, %i.kwy
  %i.kxa = sext i32 %i.kug to i64
  %i.kxb = or i64 %i.kwz, %i.kxa
  br label %bb.ack

bb.ack:                                           ; preds = %bb.aci, %bb.acj, %bb.abu
  %.20811505 = phi i32 [ %.20411501, %bb.abu ], [ %i.kww, %bb.aci ], [ %i.kum, %bb.acj ] ; 3 uses
  %.20811251 = phi i64 [ %.20411247, %bb.abu ], [ %i.kwx, %bb.aci ], [ %i.kxb, %bb.acj ] ; 3 uses
  %.314 = phi ptr [ %.308, %bb.abu ], [ %.312, %bb.aci ], [ %.309.lcssa, %bb.acj ] ; 3 uses
  %.103 = phi i32 [ %i.kqk, %bb.abu ], [ 0, %bb.aci ], [ 0, %bb.acj ] ; 4 uses
  %i.kxc = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.kxd = load i16, ptr %i.kxc, align 2, !tbaa !79 ; 2 uses
  %i.kxe = icmp eq i16 %i.kxd, 0
  br i1 %i.kxe, label %bb.acl, label %bb.acm

bb.acl:                                           ; preds = %bb.ack
  %i.kxf = add nuw nsw i32 %.103, 16
  br label %bb.adb

bb.acm:                                           ; preds = %bb.ack
  %i.kxg = sext i16 %i.kxd to i32                 ; 2 uses
  %i.kxh = ashr i32 %i.kxg, 31                    ; 2 uses
  %i.kxi = add nsw i32 %i.kxh, %i.kxg             ; 2 uses
  %i.kxj = xor i32 %i.kxi, %i.kxh
  %i.kxk = sext i32 %i.kxj to i64
  %i.kxl = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.kxk
  %i.kxm = load i8, ptr %i.kxl, align 1, !tbaa !31 ; 2 uses
  %i.kxn = zext i8 %i.kxm to i32                  ; 4 uses
  %i.kxo = icmp slt i32 %i.f, %i.kxn
  br i1 %i.kxo, label %bb.acn, label %bb.aco

bb.acn:                                           ; preds = %bb.acm
  %i.kxp = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.kxq = load ptr, ptr %i.kxp, align 8, !tbaa !7 ; 2 uses
  %i.kxr = getelementptr inbounds nuw i8, ptr %i.kxq, i64 40
  store i32 6, ptr %i.kxr, align 8, !tbaa !26
  %i.kxs = load ptr, ptr %i.kxq, align 8, !tbaa !32
  tail call void %i.kxs(ptr noundef nonnull %i.kxp) #7
  br label %bb.aco

bb.aco:                                           ; preds = %bb.acn, %bb.acm
  %i.kxt = icmp samesign ugt i32 %.103, 255
  br i1 %i.kxt, label %.lr.ph15137, label %._crit_edge15138

.lr.ph15137:                                      ; preds = %bb.aco
  %i.kxu = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.kxv = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.acp

bb.acp:                                           ; preds = %.lr.ph15137, %bb.acv
  %.10415135 = phi i32 [ %.103, %.lr.ph15137 ], [ %i.kxw, %bb.acv ] ; 2 uses
  %.31515134 = phi ptr [ %.314, %.lr.ph15137 ], [ %.317, %bb.acv ] ; 13 uses
  %.2091125215133 = phi i64 [ %.20811251, %.lr.ph15137 ], [ %.21011253, %bb.acv ] ; 2 uses
  %.2091150615132 = phi i32 [ %.20811505, %.lr.ph15137 ], [ %.21011507, %bb.acv ] ; 2 uses
  %i.kxw = add nsw i32 %.10415135, -256           ; 2 uses
  %i.kxx = load i8, ptr %i.kxu, align 4, !tbaa !31
  %i.kxy = sext i8 %i.kxx to i32                  ; 2 uses
  %i.kxz = sub nsw i32 %.2091150615132, %i.kxy    ; 4 uses
  %i.kya = icmp slt i32 %i.kxz, 0
  %i.kyb = load i32, ptr %i.kxv, align 4, !tbaa !3 ; 2 uses
  br i1 %i.kya, label %bb.acq, label %bb.acu

bb.acq:                                           ; preds = %bb.acp
  %i.kyc = zext nneg i32 %.2091150615132 to i64
  %i.kyd = shl i64 %.2091125215133, %i.kyc        ; 11 uses
  %i.kye = sub nsw i32 0, %i.kxz
  %i.kyf = lshr i32 %i.kyb, %i.kye
  %i.kyg = zext nneg i32 %i.kyf to i64
  %i.kyh = or i64 %i.kyd, %i.kyg                  ; 14 uses
  %i.kyi = and i64 %i.kyh, -9187201950435737472
  %i.kyj = sub i64 -72340172838076674, %i.kyh
  %i.kyk = and i64 %i.kyi, %i.kyj
  %.not13452 = icmp eq i64 %i.kyk, 0
  %i.kyl = lshr i64 %i.kyd, 56                    ; 2 uses
  %i.kym = trunc nuw i64 %i.kyl to i8
  store i8 %i.kym, ptr %.31515134, align 1, !tbaa !31
  br i1 %.not13452, label %bb.acs, label %bb.acr

bb.acr:                                           ; preds = %bb.acq
  %i.kyn = getelementptr inbounds nuw i8, ptr %.31515134, i64 1 ; 2 uses
  store i8 0, ptr %i.kyn, align 1, !tbaa !31
  %.not13453 = icmp eq i64 %i.kyl, 255            ; 2 uses
  %.sroa.gep14551 = getelementptr inbounds nuw i8, ptr %.31515134, i64 2 ; 2 uses
  %.neg13454.sroa.sel = select i1 %.not13453, ptr %.sroa.gep14551, ptr %i.kyn ; 2 uses
  %i.kyo = lshr i64 %i.kyd, 48
  %i.kyp = trunc i64 %i.kyo to i8
  store i8 %i.kyp, ptr %.neg13454.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15576 = getelementptr inbounds nuw i8, ptr %.31515134, i64 3
  %.neg13454.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13453, ptr %.sroa.gep15576, ptr %.sroa.gep14551
  store i8 0, ptr %.neg13454.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kyq = and i64 %i.kyd, 71776119061217280
  %.not13455 = icmp eq i64 %i.kyq, 71776119061217280
  %.neg13456 = select i1 %.not13455, i64 2, i64 1
  %i.kyr = getelementptr inbounds nuw i8, ptr %.neg13454.sroa.sel, i64 %.neg13456 ; 4 uses
  %i.kys = lshr i64 %i.kyd, 40
  %i.kyt = trunc i64 %i.kys to i8
  store i8 %i.kyt, ptr %i.kyr, align 1, !tbaa !31
  %i.kyu = getelementptr inbounds nuw i8, ptr %i.kyr, i64 1 ; 2 uses
  store i8 0, ptr %i.kyu, align 1, !tbaa !31
  %i.kyv = and i64 %i.kyd, 280375465082880
  %.not13457 = icmp eq i64 %i.kyv, 280375465082880 ; 2 uses
  %.sroa.gep14553 = getelementptr inbounds nuw i8, ptr %i.kyr, i64 2 ; 2 uses
  %.neg13458.sroa.sel = select i1 %.not13457, ptr %.sroa.gep14553, ptr %i.kyu ; 2 uses
  %i.kyw = lshr i64 %i.kyd, 32
  %i.kyx = trunc i64 %i.kyw to i8
  store i8 %i.kyx, ptr %.neg13458.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15582 = getelementptr inbounds nuw i8, ptr %i.kyr, i64 3
  %.neg13458.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13457, ptr %.sroa.gep15582, ptr %.sroa.gep14553
  store i8 0, ptr %.neg13458.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kyy = and i64 %i.kyd, 1095216660480
  %.not13459 = icmp eq i64 %i.kyy, 1095216660480
  %.neg13460 = select i1 %.not13459, i64 2, i64 1
  %i.kyz = getelementptr inbounds nuw i8, ptr %.neg13458.sroa.sel, i64 %.neg13460 ; 4 uses
  %i.kza = lshr i64 %i.kyh, 24
  %i.kzb = trunc i64 %i.kza to i8
  store i8 %i.kzb, ptr %i.kyz, align 1, !tbaa !31
  %i.kzc = getelementptr inbounds nuw i8, ptr %i.kyz, i64 1 ; 2 uses
  store i8 0, ptr %i.kzc, align 1, !tbaa !31
  %i.kzd = and i64 %i.kyh, 4278190080
  %.not13461 = icmp eq i64 %i.kzd, 4278190080     ; 2 uses
  %.sroa.gep14555 = getelementptr inbounds nuw i8, ptr %i.kyz, i64 2 ; 2 uses
  %.neg13462.sroa.sel = select i1 %.not13461, ptr %.sroa.gep14555, ptr %i.kzc ; 2 uses
  %i.kze = lshr i64 %i.kyh, 16
  %i.kzf = trunc i64 %i.kze to i8
  store i8 %i.kzf, ptr %.neg13462.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15580 = getelementptr inbounds nuw i8, ptr %i.kyz, i64 3
  %.neg13462.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13461, ptr %.sroa.gep15580, ptr %.sroa.gep14555
  store i8 0, ptr %.neg13462.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kzg = and i64 %i.kyh, 16711680
  %.not13463 = icmp eq i64 %i.kzg, 16711680
  %.neg13464 = select i1 %.not13463, i64 2, i64 1
  %i.kzh = getelementptr inbounds nuw i8, ptr %.neg13462.sroa.sel, i64 %.neg13464 ; 4 uses
  %i.kzi = lshr i64 %i.kyh, 8
  %i.kzj = trunc i64 %i.kzi to i8
  store i8 %i.kzj, ptr %i.kzh, align 1, !tbaa !31
  %i.kzk = getelementptr inbounds nuw i8, ptr %i.kzh, i64 1 ; 2 uses
  store i8 0, ptr %i.kzk, align 1, !tbaa !31
  %i.kzl = and i64 %i.kyh, 65280
  %.not13465 = icmp eq i64 %i.kzl, 65280          ; 2 uses
  %.sroa.gep14557 = getelementptr inbounds nuw i8, ptr %i.kzh, i64 2 ; 2 uses
  %.neg13466.sroa.sel = select i1 %.not13465, ptr %.sroa.gep14557, ptr %i.kzk ; 2 uses
  %i.kzm = trunc i64 %i.kyh to i8
  store i8 %i.kzm, ptr %.neg13466.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15578 = getelementptr inbounds nuw i8, ptr %i.kzh, i64 3
  %.neg13466.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13465, ptr %.sroa.gep15578, ptr %.sroa.gep14557
  store i8 0, ptr %.neg13466.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.kzn = and i64 %i.kyh, 255
  %.not13467 = icmp eq i64 %i.kzn, 255
  %.neg13468 = select i1 %.not13467, i64 2, i64 1
  %i.kzo = getelementptr inbounds nuw i8, ptr %.neg13466.sroa.sel, i64 %.neg13468
  br label %bb.act

bb.acs:                                           ; preds = %bb.acq
  %i.kzp = lshr i64 %i.kyd, 48
  %i.kzq = trunc i64 %i.kzp to i8
  %i.kzr = getelementptr inbounds nuw i8, ptr %.31515134, i64 1
  store i8 %i.kzq, ptr %i.kzr, align 1, !tbaa !31
  %i.kzs = lshr i64 %i.kyd, 40
  %i.kzt = trunc i64 %i.kzs to i8
  %i.kzu = getelementptr inbounds nuw i8, ptr %.31515134, i64 2
  store i8 %i.kzt, ptr %i.kzu, align 1, !tbaa !31
  %i.kzv = lshr i64 %i.kyd, 32
  %i.kzw = trunc i64 %i.kzv to i8
  %i.kzx = getelementptr inbounds nuw i8, ptr %.31515134, i64 3
  store i8 %i.kzw, ptr %i.kzx, align 1, !tbaa !31
  %i.kzy = lshr i64 %i.kyh, 24
  %i.kzz = trunc i64 %i.kzy to i8
  %i.laa = getelementptr inbounds nuw i8, ptr %.31515134, i64 4
  store i8 %i.kzz, ptr %i.laa, align 1, !tbaa !31
  %i.lab = lshr i64 %i.kyh, 16
  %i.lac = trunc i64 %i.lab to i8
  %i.lad = getelementptr inbounds nuw i8, ptr %.31515134, i64 5
  store i8 %i.lac, ptr %i.lad, align 1, !tbaa !31
  %i.lae = lshr i64 %i.kyh, 8
  %i.laf = trunc i64 %i.lae to i8
  %i.lag = getelementptr inbounds nuw i8, ptr %.31515134, i64 6
  store i8 %i.laf, ptr %i.lag, align 1, !tbaa !31
  %i.lah = trunc i64 %i.kyh to i8
  %i.lai = getelementptr inbounds nuw i8, ptr %.31515134, i64 7
  store i8 %i.lah, ptr %i.lai, align 1, !tbaa !31
  %i.laj = getelementptr inbounds nuw i8, ptr %.31515134, i64 8
  br label %bb.act

bb.act:                                           ; preds = %bb.acs, %bb.acr
  %.316 = phi ptr [ %i.kzo, %bb.acr ], [ %i.laj, %bb.acs ]
  %i.lak = add nsw i32 %i.kxz, 64
  %i.lal = load i32, ptr %i.kxv, align 4, !tbaa !3
  %i.lam = zext i32 %i.lal to i64
  br label %bb.acv

bb.acu:                                           ; preds = %bb.acp
  %i.lan = zext nneg i32 %i.kxy to i64
  %i.lao = shl i64 %.2091125215133, %i.lan
  %i.lap = zext i32 %i.kyb to i64
  %i.laq = or i64 %i.lao, %i.lap
  br label %bb.acv

bb.acv:                                           ; preds = %bb.acu, %bb.act
  %.21011507 = phi i32 [ %i.lak, %bb.act ], [ %i.kxz, %bb.acu ] ; 2 uses
  %.21011253 = phi i64 [ %i.lam, %bb.act ], [ %i.laq, %bb.acu ] ; 2 uses
  %.317 = phi ptr [ %.316, %bb.act ], [ %.31515134, %bb.acu ] ; 2 uses
  %i.lar = icmp samesign ugt i32 %.10415135, 511
  br i1 %i.lar, label %bb.acp, label %._crit_edge15138, !llvm.loop !125

._crit_edge15138:                                 ; preds = %bb.acv, %bb.aco
  %.20911506.lcssa = phi i32 [ %.20811505, %bb.aco ], [ %.21011507, %bb.acv ] ; 2 uses
  %.20911252.lcssa = phi i64 [ %.20811251, %bb.aco ], [ %.21011253, %bb.acv ] ; 2 uses
  %.315.lcssa = phi ptr [ %.314, %bb.aco ], [ %.317, %bb.acv ] ; 13 uses
  %.104.lcssa = phi i32 [ %.103, %bb.aco ], [ %i.kxw, %bb.acv ]
  %i.las = add nuw nsw i32 %.104.lcssa, %i.kxn
  %i.lat = zext nneg i8 %i.kxm to i64
  %notmask13434 = shl nsw i64 -1, %i.lat
  %i.lau = trunc i64 %notmask13434 to i32
  %i.lav = xor i32 %i.lau, -1
  %i.law = and i32 %i.kxi, %i.lav
  %i.lax = zext nneg i32 %i.las to i64            ; 2 uses
  %i.lay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.lax
  %i.laz = load i32, ptr %i.lay, align 4, !tbaa !3
  %i.lba = shl i32 %i.laz, %i.kxn
  %i.lbb = or i32 %i.lba, %i.law                  ; 3 uses
  %i.lbc = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.lbd = getelementptr inbounds nuw i8, ptr %i.lbc, i64 %i.lax
  %i.lbe = load i8, ptr %i.lbd, align 1, !tbaa !31
  %i.lbf = sext i8 %i.lbe to i32
  %i.lbg = add nsw i32 %i.lbf, %i.kxn             ; 2 uses
  %i.lbh = sub nsw i32 %.20911506.lcssa, %i.lbg   ; 4 uses
  %i.lbi = icmp slt i32 %i.lbh, 0
  br i1 %i.lbi, label %bb.acw, label %bb.ada

bb.acw:                                           ; preds = %._crit_edge15138
  %i.lbj = zext nneg i32 %.20911506.lcssa to i64
  %i.lbk = shl i64 %.20911252.lcssa, %i.lbj
  %i.lbl = sub nsw i32 0, %i.lbh
  %i.lbm = ashr i32 %i.lbb, %i.lbl
  %i.lbn = sext i32 %i.lbm to i64
  %i.lbo = or i64 %i.lbk, %i.lbn                  ; 24 uses
  %i.lbp = and i64 %i.lbo, -9187201950435737472
  %i.lbq = sub i64 -72340172838076674, %i.lbo
  %i.lbr = and i64 %i.lbp, %i.lbq
  %.not13435 = icmp eq i64 %i.lbr, 0
  %i.lbs = lshr i64 %i.lbo, 56                    ; 2 uses
  %i.lbt = trunc nuw i64 %i.lbs to i8
  store i8 %i.lbt, ptr %.315.lcssa, align 1, !tbaa !31
  br i1 %.not13435, label %bb.acy, label %bb.acx

bb.acx:                                           ; preds = %bb.acw
  %i.lbu = getelementptr inbounds nuw i8, ptr %.315.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.lbu, align 1, !tbaa !31
  %.not13436 = icmp eq i64 %i.lbs, 255            ; 2 uses
  %.sroa.gep14559 = getelementptr inbounds nuw i8, ptr %.315.lcssa, i64 2 ; 2 uses
  %.neg13437.sroa.sel = select i1 %.not13436, ptr %.sroa.gep14559, ptr %i.lbu ; 2 uses
  %i.lbv = lshr i64 %i.lbo, 48
  %i.lbw = trunc i64 %i.lbv to i8
  store i8 %i.lbw, ptr %.neg13437.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15584 = getelementptr inbounds nuw i8, ptr %.315.lcssa, i64 3
  %.neg13437.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13436, ptr %.sroa.gep15584, ptr %.sroa.gep14559
  store i8 0, ptr %.neg13437.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lbx = and i64 %i.lbo, 71776119061217280
  %.not13438 = icmp eq i64 %i.lbx, 71776119061217280
  %.neg13439 = select i1 %.not13438, i64 2, i64 1
  %i.lby = getelementptr inbounds nuw i8, ptr %.neg13437.sroa.sel, i64 %.neg13439 ; 4 uses
  %i.lbz = lshr i64 %i.lbo, 40
  %i.lca = trunc i64 %i.lbz to i8
  store i8 %i.lca, ptr %i.lby, align 1, !tbaa !31
  %i.lcb = getelementptr inbounds nuw i8, ptr %i.lby, i64 1 ; 2 uses
  store i8 0, ptr %i.lcb, align 1, !tbaa !31
  %i.lcc = and i64 %i.lbo, 280375465082880
  %.not13440 = icmp eq i64 %i.lcc, 280375465082880 ; 2 uses
  %.sroa.gep14561 = getelementptr inbounds nuw i8, ptr %i.lby, i64 2 ; 2 uses
  %.neg13441.sroa.sel = select i1 %.not13440, ptr %.sroa.gep14561, ptr %i.lcb ; 2 uses
  %i.lcd = lshr i64 %i.lbo, 32
  %i.lce = trunc i64 %i.lcd to i8
  store i8 %i.lce, ptr %.neg13441.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15590 = getelementptr inbounds nuw i8, ptr %i.lby, i64 3
  %.neg13441.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13440, ptr %.sroa.gep15590, ptr %.sroa.gep14561
  store i8 0, ptr %.neg13441.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lcf = and i64 %i.lbo, 1095216660480
  %.not13442 = icmp eq i64 %i.lcf, 1095216660480
  %.neg13443 = select i1 %.not13442, i64 2, i64 1
  %i.lcg = getelementptr inbounds nuw i8, ptr %.neg13441.sroa.sel, i64 %.neg13443 ; 4 uses
  %i.lch = lshr i64 %i.lbo, 24
  %i.lci = trunc i64 %i.lch to i8
  store i8 %i.lci, ptr %i.lcg, align 1, !tbaa !31
  %i.lcj = getelementptr inbounds nuw i8, ptr %i.lcg, i64 1 ; 2 uses
  store i8 0, ptr %i.lcj, align 1, !tbaa !31
  %i.lck = and i64 %i.lbo, 4278190080
  %.not13444 = icmp eq i64 %i.lck, 4278190080     ; 2 uses
  %.sroa.gep14563 = getelementptr inbounds nuw i8, ptr %i.lcg, i64 2 ; 2 uses
  %.neg13445.sroa.sel = select i1 %.not13444, ptr %.sroa.gep14563, ptr %i.lcj ; 2 uses
  %i.lcl = lshr i64 %i.lbo, 16
  %i.lcm = trunc i64 %i.lcl to i8
  store i8 %i.lcm, ptr %.neg13445.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15588 = getelementptr inbounds nuw i8, ptr %i.lcg, i64 3
  %.neg13445.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13444, ptr %.sroa.gep15588, ptr %.sroa.gep14563
  store i8 0, ptr %.neg13445.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lcn = and i64 %i.lbo, 16711680
  %.not13446 = icmp eq i64 %i.lcn, 16711680
  %.neg13447 = select i1 %.not13446, i64 2, i64 1
  %i.lco = getelementptr inbounds nuw i8, ptr %.neg13445.sroa.sel, i64 %.neg13447 ; 4 uses
  %i.lcp = lshr i64 %i.lbo, 8
  %i.lcq = trunc i64 %i.lcp to i8
  store i8 %i.lcq, ptr %i.lco, align 1, !tbaa !31
  %i.lcr = getelementptr inbounds nuw i8, ptr %i.lco, i64 1 ; 2 uses
  store i8 0, ptr %i.lcr, align 1, !tbaa !31
  %i.lcs = and i64 %i.lbo, 65280
  %.not13448 = icmp eq i64 %i.lcs, 65280          ; 2 uses
  %.sroa.gep14565 = getelementptr inbounds nuw i8, ptr %i.lco, i64 2 ; 2 uses
  %.neg13449.sroa.sel = select i1 %.not13448, ptr %.sroa.gep14565, ptr %i.lcr ; 2 uses
  %i.lct = trunc i64 %i.lbo to i8
  store i8 %i.lct, ptr %.neg13449.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15586 = getelementptr inbounds nuw i8, ptr %i.lco, i64 3
  %.neg13449.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13448, ptr %.sroa.gep15586, ptr %.sroa.gep14565
  store i8 0, ptr %.neg13449.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lcu = and i64 %i.lbo, 255
  %.not13450 = icmp eq i64 %i.lcu, 255
  %.neg13451 = select i1 %.not13450, i64 2, i64 1
  %i.lcv = getelementptr inbounds nuw i8, ptr %.neg13449.sroa.sel, i64 %.neg13451
  br label %bb.acz

bb.acy:                                           ; preds = %bb.acw
  %i.lcw = lshr i64 %i.lbo, 48
  %i.lcx = trunc i64 %i.lcw to i8
  %i.lcy = getelementptr inbounds nuw i8, ptr %.315.lcssa, i64 1
  store i8 %i.lcx, ptr %i.lcy, align 1, !tbaa !31
  %i.lcz = lshr i64 %i.lbo, 40
  %i.lda = trunc i64 %i.lcz to i8
  %i.ldb = getelementptr inbounds nuw i8, ptr %.315.lcssa, i64 2
  store i8 %i.lda, ptr %i.ldb, align 1, !tbaa !31
  %i.ldc = lshr i64 %i.lbo, 32
  %i.ldd = trunc i64 %i.ldc to i8
  %i.lde = getelementptr inbounds nuw i8, ptr %.315.lcssa, i64 3
  store i8 %i.ldd, ptr %i.lde, align 1, !tbaa !31
  %i.ldf = lshr i64 %i.lbo, 24
  %i.ldg = trunc i64 %i.ldf to i8
  %i.ldh = getelementptr inbounds nuw i8, ptr %.315.lcssa, i64 4
  store i8 %i.ldg, ptr %i.ldh, align 1, !tbaa !31
  %i.ldi = lshr i64 %i.lbo, 16
  %i.ldj = trunc i64 %i.ldi to i8
  %i.ldk = getelementptr inbounds nuw i8, ptr %.315.lcssa, i64 5
  store i8 %i.ldj, ptr %i.ldk, align 1, !tbaa !31
  %i.ldl = lshr i64 %i.lbo, 8
  %i.ldm = trunc i64 %i.ldl to i8
  %i.ldn = getelementptr inbounds nuw i8, ptr %.315.lcssa, i64 6
  store i8 %i.ldm, ptr %i.ldn, align 1, !tbaa !31
  %i.ldo = trunc i64 %i.lbo to i8
  %i.ldp = getelementptr inbounds nuw i8, ptr %.315.lcssa, i64 7
  store i8 %i.ldo, ptr %i.ldp, align 1, !tbaa !31
  %i.ldq = getelementptr inbounds nuw i8, ptr %.315.lcssa, i64 8
  br label %bb.acz

bb.acz:                                           ; preds = %bb.acy, %bb.acx
  %.318 = phi ptr [ %i.lcv, %bb.acx ], [ %i.ldq, %bb.acy ]
  %i.ldr = add nsw i32 %i.lbh, 64
  %i.lds = sext i32 %i.lbb to i64
  br label %bb.adb

bb.ada:                                           ; preds = %._crit_edge15138
  %i.ldt = zext nneg i32 %i.lbg to i64
  %i.ldu = shl i64 %.20911252.lcssa, %i.ldt
  %i.ldv = sext i32 %i.lbb to i64
  %i.ldw = or i64 %i.ldu, %i.ldv
  br label %bb.adb

bb.adb:                                           ; preds = %bb.acz, %bb.ada, %bb.acl
  %.21211509 = phi i32 [ %.20811505, %bb.acl ], [ %i.ldr, %bb.acz ], [ %i.lbh, %bb.ada ] ; 3 uses
  %.21211255 = phi i64 [ %.20811251, %bb.acl ], [ %i.lds, %bb.acz ], [ %i.ldw, %bb.ada ] ; 3 uses
  %.320 = phi ptr [ %.314, %bb.acl ], [ %.318, %bb.acz ], [ %.315.lcssa, %bb.ada ] ; 3 uses
  %.105 = phi i32 [ %i.kxf, %bb.acl ], [ 0, %bb.acz ], [ 0, %bb.ada ] ; 4 uses
  %i.ldx = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.ldy = load i16, ptr %i.ldx, align 2, !tbaa !79 ; 2 uses
  %i.ldz = icmp eq i16 %i.ldy, 0
  br i1 %i.ldz, label %bb.adc, label %bb.add

bb.adc:                                           ; preds = %bb.adb
  %i.lea = add nuw nsw i32 %.105, 16
  br label %bb.ads

bb.add:                                           ; preds = %bb.adb
  %i.leb = sext i16 %i.ldy to i32                 ; 2 uses
  %i.lec = ashr i32 %i.leb, 31                    ; 2 uses
  %i.led = add nsw i32 %i.lec, %i.leb             ; 2 uses
  %i.lee = xor i32 %i.led, %i.lec
  %i.lef = sext i32 %i.lee to i64
  %i.leg = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.lef
  %i.leh = load i8, ptr %i.leg, align 1, !tbaa !31 ; 2 uses
  %i.lei = zext i8 %i.leh to i32                  ; 4 uses
  %i.lej = icmp slt i32 %i.f, %i.lei
  br i1 %i.lej, label %bb.ade, label %bb.adf

bb.ade:                                           ; preds = %bb.add
  %i.lek = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.lel = load ptr, ptr %i.lek, align 8, !tbaa !7 ; 2 uses
  %i.lem = getelementptr inbounds nuw i8, ptr %i.lel, i64 40
  store i32 6, ptr %i.lem, align 8, !tbaa !26
  %i.len = load ptr, ptr %i.lel, align 8, !tbaa !32
  tail call void %i.len(ptr noundef nonnull %i.lek) #7
  br label %bb.adf

bb.adf:                                           ; preds = %bb.ade, %bb.add
  %i.leo = icmp samesign ugt i32 %.105, 255
  br i1 %i.leo, label %.lr.ph15148, label %._crit_edge15149

.lr.ph15148:                                      ; preds = %bb.adf
  %i.lep = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.leq = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.adg

bb.adg:                                           ; preds = %.lr.ph15148, %bb.adm
  %.10615146 = phi i32 [ %.105, %.lr.ph15148 ], [ %i.ler, %bb.adm ] ; 2 uses
  %.32115145 = phi ptr [ %.320, %.lr.ph15148 ], [ %.323, %bb.adm ] ; 13 uses
  %.2131125615144 = phi i64 [ %.21211255, %.lr.ph15148 ], [ %.21411257, %bb.adm ] ; 2 uses
  %.2131151015143 = phi i32 [ %.21211509, %.lr.ph15148 ], [ %.21411511, %bb.adm ] ; 2 uses
  %i.ler = add nsw i32 %.10615146, -256           ; 2 uses
  %i.les = load i8, ptr %i.lep, align 4, !tbaa !31
  %i.let = sext i8 %i.les to i32                  ; 2 uses
  %i.leu = sub nsw i32 %.2131151015143, %i.let    ; 4 uses
  %i.lev = icmp slt i32 %i.leu, 0
  %i.lew = load i32, ptr %i.leq, align 4, !tbaa !3 ; 2 uses
  br i1 %i.lev, label %bb.adh, label %bb.adl

bb.adh:                                           ; preds = %bb.adg
  %i.lex = zext nneg i32 %.2131151015143 to i64
  %i.ley = shl i64 %.2131125615144, %i.lex        ; 11 uses
  %i.lez = sub nsw i32 0, %i.leu
  %i.lfa = lshr i32 %i.lew, %i.lez
  %i.lfb = zext nneg i32 %i.lfa to i64
  %i.lfc = or i64 %i.ley, %i.lfb                  ; 14 uses
  %i.lfd = and i64 %i.lfc, -9187201950435737472
  %i.lfe = sub i64 -72340172838076674, %i.lfc
  %i.lff = and i64 %i.lfd, %i.lfe
  %.not13487 = icmp eq i64 %i.lff, 0
  %i.lfg = lshr i64 %i.ley, 56                    ; 2 uses
  %i.lfh = trunc nuw i64 %i.lfg to i8
  store i8 %i.lfh, ptr %.32115145, align 1, !tbaa !31
  br i1 %.not13487, label %bb.adj, label %bb.adi

bb.adi:                                           ; preds = %bb.adh
  %i.lfi = getelementptr inbounds nuw i8, ptr %.32115145, i64 1 ; 2 uses
  store i8 0, ptr %i.lfi, align 1, !tbaa !31
  %.not13488 = icmp eq i64 %i.lfg, 255            ; 2 uses
  %.sroa.gep14567 = getelementptr inbounds nuw i8, ptr %.32115145, i64 2 ; 2 uses
  %.neg13489.sroa.sel = select i1 %.not13488, ptr %.sroa.gep14567, ptr %i.lfi ; 2 uses
  %i.lfj = lshr i64 %i.ley, 48
  %i.lfk = trunc i64 %i.lfj to i8
  store i8 %i.lfk, ptr %.neg13489.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15560 = getelementptr inbounds nuw i8, ptr %.32115145, i64 3
  %.neg13489.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13488, ptr %.sroa.gep15560, ptr %.sroa.gep14567
  store i8 0, ptr %.neg13489.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lfl = and i64 %i.ley, 71776119061217280
  %.not13490 = icmp eq i64 %i.lfl, 71776119061217280
  %.neg13491 = select i1 %.not13490, i64 2, i64 1
  %i.lfm = getelementptr inbounds nuw i8, ptr %.neg13489.sroa.sel, i64 %.neg13491 ; 4 uses
  %i.lfn = lshr i64 %i.ley, 40
  %i.lfo = trunc i64 %i.lfn to i8
  store i8 %i.lfo, ptr %i.lfm, align 1, !tbaa !31
  %i.lfp = getelementptr inbounds nuw i8, ptr %i.lfm, i64 1 ; 2 uses
  store i8 0, ptr %i.lfp, align 1, !tbaa !31
  %i.lfq = and i64 %i.ley, 280375465082880
  %.not13492 = icmp eq i64 %i.lfq, 280375465082880 ; 2 uses
  %.sroa.gep14569 = getelementptr inbounds nuw i8, ptr %i.lfm, i64 2 ; 2 uses
  %.neg13493.sroa.sel = select i1 %.not13492, ptr %.sroa.gep14569, ptr %i.lfp ; 2 uses
  %i.lfr = lshr i64 %i.ley, 32
  %i.lfs = trunc i64 %i.lfr to i8
  store i8 %i.lfs, ptr %.neg13493.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15566 = getelementptr inbounds nuw i8, ptr %i.lfm, i64 3
  %.neg13493.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13492, ptr %.sroa.gep15566, ptr %.sroa.gep14569
  store i8 0, ptr %.neg13493.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lft = and i64 %i.ley, 1095216660480
  %.not13494 = icmp eq i64 %i.lft, 1095216660480
  %.neg13495 = select i1 %.not13494, i64 2, i64 1
  %i.lfu = getelementptr inbounds nuw i8, ptr %.neg13493.sroa.sel, i64 %.neg13495 ; 4 uses
  %i.lfv = lshr i64 %i.lfc, 24
  %i.lfw = trunc i64 %i.lfv to i8
  store i8 %i.lfw, ptr %i.lfu, align 1, !tbaa !31
  %i.lfx = getelementptr inbounds nuw i8, ptr %i.lfu, i64 1 ; 2 uses
  store i8 0, ptr %i.lfx, align 1, !tbaa !31
  %i.lfy = and i64 %i.lfc, 4278190080
  %.not13496 = icmp eq i64 %i.lfy, 4278190080     ; 2 uses
  %.sroa.gep14571 = getelementptr inbounds nuw i8, ptr %i.lfu, i64 2 ; 2 uses
  %.neg13497.sroa.sel = select i1 %.not13496, ptr %.sroa.gep14571, ptr %i.lfx ; 2 uses
  %i.lfz = lshr i64 %i.lfc, 16
  %i.lga = trunc i64 %i.lfz to i8
  store i8 %i.lga, ptr %.neg13497.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15564 = getelementptr inbounds nuw i8, ptr %i.lfu, i64 3
  %.neg13497.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13496, ptr %.sroa.gep15564, ptr %.sroa.gep14571
  store i8 0, ptr %.neg13497.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lgb = and i64 %i.lfc, 16711680
  %.not13498 = icmp eq i64 %i.lgb, 16711680
  %.neg13499 = select i1 %.not13498, i64 2, i64 1
  %i.lgc = getelementptr inbounds nuw i8, ptr %.neg13497.sroa.sel, i64 %.neg13499 ; 4 uses
  %i.lgd = lshr i64 %i.lfc, 8
  %i.lge = trunc i64 %i.lgd to i8
  store i8 %i.lge, ptr %i.lgc, align 1, !tbaa !31
  %i.lgf = getelementptr inbounds nuw i8, ptr %i.lgc, i64 1 ; 2 uses
  store i8 0, ptr %i.lgf, align 1, !tbaa !31
  %i.lgg = and i64 %i.lfc, 65280
  %.not13500 = icmp eq i64 %i.lgg, 65280          ; 2 uses
  %.sroa.gep14573 = getelementptr inbounds nuw i8, ptr %i.lgc, i64 2 ; 2 uses
  %.neg13501.sroa.sel = select i1 %.not13500, ptr %.sroa.gep14573, ptr %i.lgf ; 2 uses
  %i.lgh = trunc i64 %i.lfc to i8
  store i8 %i.lgh, ptr %.neg13501.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15562 = getelementptr inbounds nuw i8, ptr %i.lgc, i64 3
  %.neg13501.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13500, ptr %.sroa.gep15562, ptr %.sroa.gep14573
  store i8 0, ptr %.neg13501.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lgi = and i64 %i.lfc, 255
  %.not13502 = icmp eq i64 %i.lgi, 255
  %.neg13503 = select i1 %.not13502, i64 2, i64 1
  %i.lgj = getelementptr inbounds nuw i8, ptr %.neg13501.sroa.sel, i64 %.neg13503
  br label %bb.adk

bb.adj:                                           ; preds = %bb.adh
  %i.lgk = lshr i64 %i.ley, 48
  %i.lgl = trunc i64 %i.lgk to i8
  %i.lgm = getelementptr inbounds nuw i8, ptr %.32115145, i64 1
  store i8 %i.lgl, ptr %i.lgm, align 1, !tbaa !31
  %i.lgn = lshr i64 %i.ley, 40
  %i.lgo = trunc i64 %i.lgn to i8
  %i.lgp = getelementptr inbounds nuw i8, ptr %.32115145, i64 2
  store i8 %i.lgo, ptr %i.lgp, align 1, !tbaa !31
  %i.lgq = lshr i64 %i.ley, 32
  %i.lgr = trunc i64 %i.lgq to i8
  %i.lgs = getelementptr inbounds nuw i8, ptr %.32115145, i64 3
  store i8 %i.lgr, ptr %i.lgs, align 1, !tbaa !31
  %i.lgt = lshr i64 %i.lfc, 24
  %i.lgu = trunc i64 %i.lgt to i8
  %i.lgv = getelementptr inbounds nuw i8, ptr %.32115145, i64 4
  store i8 %i.lgu, ptr %i.lgv, align 1, !tbaa !31
  %i.lgw = lshr i64 %i.lfc, 16
  %i.lgx = trunc i64 %i.lgw to i8
  %i.lgy = getelementptr inbounds nuw i8, ptr %.32115145, i64 5
  store i8 %i.lgx, ptr %i.lgy, align 1, !tbaa !31
  %i.lgz = lshr i64 %i.lfc, 8
  %i.lha = trunc i64 %i.lgz to i8
  %i.lhb = getelementptr inbounds nuw i8, ptr %.32115145, i64 6
  store i8 %i.lha, ptr %i.lhb, align 1, !tbaa !31
  %i.lhc = trunc i64 %i.lfc to i8
  %i.lhd = getelementptr inbounds nuw i8, ptr %.32115145, i64 7
  store i8 %i.lhc, ptr %i.lhd, align 1, !tbaa !31
  %i.lhe = getelementptr inbounds nuw i8, ptr %.32115145, i64 8
  br label %bb.adk

bb.adk:                                           ; preds = %bb.adj, %bb.adi
  %.322 = phi ptr [ %i.lgj, %bb.adi ], [ %i.lhe, %bb.adj ]
  %i.lhf = add nsw i32 %i.leu, 64
  %i.lhg = load i32, ptr %i.leq, align 4, !tbaa !3
  %i.lhh = zext i32 %i.lhg to i64
  br label %bb.adm

bb.adl:                                           ; preds = %bb.adg
  %i.lhi = zext nneg i32 %i.let to i64
  %i.lhj = shl i64 %.2131125615144, %i.lhi
  %i.lhk = zext i32 %i.lew to i64
  %i.lhl = or i64 %i.lhj, %i.lhk
  br label %bb.adm

bb.adm:                                           ; preds = %bb.adl, %bb.adk
  %.21411511 = phi i32 [ %i.lhf, %bb.adk ], [ %i.leu, %bb.adl ] ; 2 uses
  %.21411257 = phi i64 [ %i.lhh, %bb.adk ], [ %i.lhl, %bb.adl ] ; 2 uses
  %.323 = phi ptr [ %.322, %bb.adk ], [ %.32115145, %bb.adl ] ; 2 uses
  %i.lhm = icmp samesign ugt i32 %.10615146, 511
  br i1 %i.lhm, label %bb.adg, label %._crit_edge15149, !llvm.loop !126

._crit_edge15149:                                 ; preds = %bb.adm, %bb.adf
  %.21311510.lcssa = phi i32 [ %.21211509, %bb.adf ], [ %.21411511, %bb.adm ] ; 2 uses
  %.21311256.lcssa = phi i64 [ %.21211255, %bb.adf ], [ %.21411257, %bb.adm ] ; 2 uses
  %.321.lcssa = phi ptr [ %.320, %bb.adf ], [ %.323, %bb.adm ] ; 13 uses
  %.106.lcssa = phi i32 [ %.105, %bb.adf ], [ %i.ler, %bb.adm ]
  %i.lhn = add nuw nsw i32 %.106.lcssa, %i.lei
  %i.lho = zext nneg i8 %i.leh to i64
  %notmask13469 = shl nsw i64 -1, %i.lho
  %i.lhp = trunc i64 %notmask13469 to i32
  %i.lhq = xor i32 %i.lhp, -1
  %i.lhr = and i32 %i.led, %i.lhq
  %i.lhs = zext nneg i32 %i.lhn to i64            ; 2 uses
  %i.lht = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.lhs
  %i.lhu = load i32, ptr %i.lht, align 4, !tbaa !3
  %i.lhv = shl i32 %i.lhu, %i.lei
  %i.lhw = or i32 %i.lhv, %i.lhr                  ; 3 uses
  %i.lhx = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.lhy = getelementptr inbounds nuw i8, ptr %i.lhx, i64 %i.lhs
  %i.lhz = load i8, ptr %i.lhy, align 1, !tbaa !31
  %i.lia = sext i8 %i.lhz to i32
  %i.lib = add nsw i32 %i.lia, %i.lei             ; 2 uses
  %i.lic = sub nsw i32 %.21311510.lcssa, %i.lib   ; 4 uses
  %i.lid = icmp slt i32 %i.lic, 0
  br i1 %i.lid, label %bb.adn, label %bb.adr

bb.adn:                                           ; preds = %._crit_edge15149
  %i.lie = zext nneg i32 %.21311510.lcssa to i64
  %i.lif = shl i64 %.21311256.lcssa, %i.lie
  %i.lig = sub nsw i32 0, %i.lic
  %i.lih = ashr i32 %i.lhw, %i.lig
  %i.lii = sext i32 %i.lih to i64
  %i.lij = or i64 %i.lif, %i.lii                  ; 24 uses
  %i.lik = and i64 %i.lij, -9187201950435737472
  %i.lil = sub i64 -72340172838076674, %i.lij
  %i.lim = and i64 %i.lik, %i.lil
  %.not13470 = icmp eq i64 %i.lim, 0
  %i.lin = lshr i64 %i.lij, 56                    ; 2 uses
  %i.lio = trunc nuw i64 %i.lin to i8
  store i8 %i.lio, ptr %.321.lcssa, align 1, !tbaa !31
  br i1 %.not13470, label %bb.adp, label %bb.ado

bb.ado:                                           ; preds = %bb.adn
  %i.lip = getelementptr inbounds nuw i8, ptr %.321.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.lip, align 1, !tbaa !31
  %.not13471 = icmp eq i64 %i.lin, 255            ; 2 uses
  %.sroa.gep14575 = getelementptr inbounds nuw i8, ptr %.321.lcssa, i64 2 ; 2 uses
  %.neg13472.sroa.sel = select i1 %.not13471, ptr %.sroa.gep14575, ptr %i.lip ; 2 uses
  %i.liq = lshr i64 %i.lij, 48
  %i.lir = trunc i64 %i.liq to i8
  store i8 %i.lir, ptr %.neg13472.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15568 = getelementptr inbounds nuw i8, ptr %.321.lcssa, i64 3
  %.neg13472.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13471, ptr %.sroa.gep15568, ptr %.sroa.gep14575
  store i8 0, ptr %.neg13472.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lis = and i64 %i.lij, 71776119061217280
  %.not13473 = icmp eq i64 %i.lis, 71776119061217280
  %.neg13474 = select i1 %.not13473, i64 2, i64 1
  %i.lit = getelementptr inbounds nuw i8, ptr %.neg13472.sroa.sel, i64 %.neg13474 ; 4 uses
  %i.liu = lshr i64 %i.lij, 40
  %i.liv = trunc i64 %i.liu to i8
  store i8 %i.liv, ptr %i.lit, align 1, !tbaa !31
  %i.liw = getelementptr inbounds nuw i8, ptr %i.lit, i64 1 ; 2 uses
  store i8 0, ptr %i.liw, align 1, !tbaa !31
  %i.lix = and i64 %i.lij, 280375465082880
  %.not13475 = icmp eq i64 %i.lix, 280375465082880 ; 2 uses
  %.sroa.gep14577 = getelementptr inbounds nuw i8, ptr %i.lit, i64 2 ; 2 uses
  %.neg13476.sroa.sel = select i1 %.not13475, ptr %.sroa.gep14577, ptr %i.liw ; 2 uses
  %i.liy = lshr i64 %i.lij, 32
  %i.liz = trunc i64 %i.liy to i8
  store i8 %i.liz, ptr %.neg13476.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15574 = getelementptr inbounds nuw i8, ptr %i.lit, i64 3
  %.neg13476.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13475, ptr %.sroa.gep15574, ptr %.sroa.gep14577
  store i8 0, ptr %.neg13476.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lja = and i64 %i.lij, 1095216660480
  %.not13477 = icmp eq i64 %i.lja, 1095216660480
  %.neg13478 = select i1 %.not13477, i64 2, i64 1
  %i.ljb = getelementptr inbounds nuw i8, ptr %.neg13476.sroa.sel, i64 %.neg13478 ; 4 uses
  %i.ljc = lshr i64 %i.lij, 24
  %i.ljd = trunc i64 %i.ljc to i8
  store i8 %i.ljd, ptr %i.ljb, align 1, !tbaa !31
  %i.lje = getelementptr inbounds nuw i8, ptr %i.ljb, i64 1 ; 2 uses
  store i8 0, ptr %i.lje, align 1, !tbaa !31
  %i.ljf = and i64 %i.lij, 4278190080
  %.not13479 = icmp eq i64 %i.ljf, 4278190080     ; 2 uses
  %.sroa.gep14579 = getelementptr inbounds nuw i8, ptr %i.ljb, i64 2 ; 2 uses
  %.neg13480.sroa.sel = select i1 %.not13479, ptr %.sroa.gep14579, ptr %i.lje ; 2 uses
  %i.ljg = lshr i64 %i.lij, 16
  %i.ljh = trunc i64 %i.ljg to i8
  store i8 %i.ljh, ptr %.neg13480.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15572 = getelementptr inbounds nuw i8, ptr %i.ljb, i64 3
  %.neg13480.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13479, ptr %.sroa.gep15572, ptr %.sroa.gep14579
  store i8 0, ptr %.neg13480.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lji = and i64 %i.lij, 16711680
  %.not13481 = icmp eq i64 %i.lji, 16711680
  %.neg13482 = select i1 %.not13481, i64 2, i64 1
  %i.ljj = getelementptr inbounds nuw i8, ptr %.neg13480.sroa.sel, i64 %.neg13482 ; 4 uses
  %i.ljk = lshr i64 %i.lij, 8
  %i.ljl = trunc i64 %i.ljk to i8
  store i8 %i.ljl, ptr %i.ljj, align 1, !tbaa !31
  %i.ljm = getelementptr inbounds nuw i8, ptr %i.ljj, i64 1 ; 2 uses
  store i8 0, ptr %i.ljm, align 1, !tbaa !31
  %i.ljn = and i64 %i.lij, 65280
  %.not13483 = icmp eq i64 %i.ljn, 65280          ; 2 uses
  %.sroa.gep14581 = getelementptr inbounds nuw i8, ptr %i.ljj, i64 2 ; 2 uses
  %.neg13484.sroa.sel = select i1 %.not13483, ptr %.sroa.gep14581, ptr %i.ljm ; 2 uses
  %i.ljo = trunc i64 %i.lij to i8
  store i8 %i.ljo, ptr %.neg13484.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15570 = getelementptr inbounds nuw i8, ptr %i.ljj, i64 3
  %.neg13484.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13483, ptr %.sroa.gep15570, ptr %.sroa.gep14581
  store i8 0, ptr %.neg13484.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ljp = and i64 %i.lij, 255
  %.not13485 = icmp eq i64 %i.ljp, 255
  %.neg13486 = select i1 %.not13485, i64 2, i64 1
  %i.ljq = getelementptr inbounds nuw i8, ptr %.neg13484.sroa.sel, i64 %.neg13486
  br label %bb.adq

bb.adp:                                           ; preds = %bb.adn
  %i.ljr = lshr i64 %i.lij, 48
  %i.ljs = trunc i64 %i.ljr to i8
  %i.ljt = getelementptr inbounds nuw i8, ptr %.321.lcssa, i64 1
  store i8 %i.ljs, ptr %i.ljt, align 1, !tbaa !31
  %i.lju = lshr i64 %i.lij, 40
  %i.ljv = trunc i64 %i.lju to i8
  %i.ljw = getelementptr inbounds nuw i8, ptr %.321.lcssa, i64 2
  store i8 %i.ljv, ptr %i.ljw, align 1, !tbaa !31
  %i.ljx = lshr i64 %i.lij, 32
  %i.ljy = trunc i64 %i.ljx to i8
  %i.ljz = getelementptr inbounds nuw i8, ptr %.321.lcssa, i64 3
  store i8 %i.ljy, ptr %i.ljz, align 1, !tbaa !31
  %i.lka = lshr i64 %i.lij, 24
  %i.lkb = trunc i64 %i.lka to i8
  %i.lkc = getelementptr inbounds nuw i8, ptr %.321.lcssa, i64 4
  store i8 %i.lkb, ptr %i.lkc, align 1, !tbaa !31
  %i.lkd = lshr i64 %i.lij, 16
  %i.lke = trunc i64 %i.lkd to i8
  %i.lkf = getelementptr inbounds nuw i8, ptr %.321.lcssa, i64 5
  store i8 %i.lke, ptr %i.lkf, align 1, !tbaa !31
  %i.lkg = lshr i64 %i.lij, 8
  %i.lkh = trunc i64 %i.lkg to i8
  %i.lki = getelementptr inbounds nuw i8, ptr %.321.lcssa, i64 6
  store i8 %i.lkh, ptr %i.lki, align 1, !tbaa !31
  %i.lkj = trunc i64 %i.lij to i8
  %i.lkk = getelementptr inbounds nuw i8, ptr %.321.lcssa, i64 7
  store i8 %i.lkj, ptr %i.lkk, align 1, !tbaa !31
  %i.lkl = getelementptr inbounds nuw i8, ptr %.321.lcssa, i64 8
  br label %bb.adq

bb.adq:                                           ; preds = %bb.adp, %bb.ado
  %.324 = phi ptr [ %i.ljq, %bb.ado ], [ %i.lkl, %bb.adp ]
  %i.lkm = add nsw i32 %i.lic, 64
  %i.lkn = sext i32 %i.lhw to i64
  br label %bb.ads

bb.adr:                                           ; preds = %._crit_edge15149
  %i.lko = zext nneg i32 %i.lib to i64
  %i.lkp = shl i64 %.21311256.lcssa, %i.lko
  %i.lkq = sext i32 %i.lhw to i64
  %i.lkr = or i64 %i.lkp, %i.lkq
  br label %bb.ads

bb.ads:                                           ; preds = %bb.adq, %bb.adr, %bb.adc
  %.21611513 = phi i32 [ %.21211509, %bb.adc ], [ %i.lkm, %bb.adq ], [ %i.lic, %bb.adr ] ; 3 uses
  %.21611259 = phi i64 [ %.21211255, %bb.adc ], [ %i.lkn, %bb.adq ], [ %i.lkr, %bb.adr ] ; 3 uses
  %.326 = phi ptr [ %.320, %bb.adc ], [ %.324, %bb.adq ], [ %.321.lcssa, %bb.adr ] ; 3 uses
  %.107 = phi i32 [ %i.lea, %bb.adc ], [ 0, %bb.adq ], [ 0, %bb.adr ] ; 4 uses
  %i.lks = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.lkt = load i16, ptr %i.lks, align 2, !tbaa !79 ; 2 uses
  %i.lku = icmp eq i16 %i.lkt, 0
  br i1 %i.lku, label %bb.adt, label %bb.adu

bb.adt:                                           ; preds = %bb.ads
  %i.lkv = add nuw nsw i32 %.107, 16
  br label %bb.aej

bb.adu:                                           ; preds = %bb.ads
  %i.lkw = sext i16 %i.lkt to i32                 ; 2 uses
  %i.lkx = ashr i32 %i.lkw, 31                    ; 2 uses
  %i.lky = add nsw i32 %i.lkx, %i.lkw             ; 2 uses
  %i.lkz = xor i32 %i.lky, %i.lkx
  %i.lla = sext i32 %i.lkz to i64
  %i.llb = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.lla
  %i.llc = load i8, ptr %i.llb, align 1, !tbaa !31 ; 2 uses
  %i.lld = zext i8 %i.llc to i32                  ; 4 uses
  %i.lle = icmp slt i32 %i.f, %i.lld
  br i1 %i.lle, label %bb.adv, label %bb.adw

bb.adv:                                           ; preds = %bb.adu
  %i.llf = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.llg = load ptr, ptr %i.llf, align 8, !tbaa !7 ; 2 uses
  %i.llh = getelementptr inbounds nuw i8, ptr %i.llg, i64 40
  store i32 6, ptr %i.llh, align 8, !tbaa !26
  %i.lli = load ptr, ptr %i.llg, align 8, !tbaa !32
  tail call void %i.lli(ptr noundef nonnull %i.llf) #7
  br label %bb.adw

bb.adw:                                           ; preds = %bb.adv, %bb.adu
  %i.llj = icmp samesign ugt i32 %.107, 255
  br i1 %i.llj, label %.lr.ph15159, label %._crit_edge15160

.lr.ph15159:                                      ; preds = %bb.adw
  %i.llk = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.lll = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.adx

bb.adx:                                           ; preds = %.lr.ph15159, %bb.aed
  %.10815157 = phi i32 [ %.107, %.lr.ph15159 ], [ %i.llm, %bb.aed ] ; 2 uses
  %.32715156 = phi ptr [ %.326, %.lr.ph15159 ], [ %.329, %bb.aed ] ; 13 uses
  %.2171126015155 = phi i64 [ %.21611259, %.lr.ph15159 ], [ %.21811261, %bb.aed ] ; 2 uses
  %.2171151415154 = phi i32 [ %.21611513, %.lr.ph15159 ], [ %.21811515, %bb.aed ] ; 2 uses
  %i.llm = add nsw i32 %.10815157, -256           ; 2 uses
  %i.lln = load i8, ptr %i.llk, align 4, !tbaa !31
  %i.llo = sext i8 %i.lln to i32                  ; 2 uses
  %i.llp = sub nsw i32 %.2171151415154, %i.llo    ; 4 uses
  %i.llq = icmp slt i32 %i.llp, 0
  %i.llr = load i32, ptr %i.lll, align 4, !tbaa !3 ; 2 uses
  br i1 %i.llq, label %bb.ady, label %bb.aec

bb.ady:                                           ; preds = %bb.adx
  %i.lls = zext nneg i32 %.2171151415154 to i64
  %i.llt = shl i64 %.2171126015155, %i.lls        ; 11 uses
  %i.llu = sub nsw i32 0, %i.llp
  %i.llv = lshr i32 %i.llr, %i.llu
  %i.llw = zext nneg i32 %i.llv to i64
  %i.llx = or i64 %i.llt, %i.llw                  ; 14 uses
  %i.lly = and i64 %i.llx, -9187201950435737472
  %i.llz = sub i64 -72340172838076674, %i.llx
  %i.lma = and i64 %i.lly, %i.llz
  %.not13522 = icmp eq i64 %i.lma, 0
  %i.lmb = lshr i64 %i.llt, 56                    ; 2 uses
  %i.lmc = trunc nuw i64 %i.lmb to i8
  store i8 %i.lmc, ptr %.32715156, align 1, !tbaa !31
  br i1 %.not13522, label %bb.aea, label %bb.adz

bb.adz:                                           ; preds = %bb.ady
  %i.lmd = getelementptr inbounds nuw i8, ptr %.32715156, i64 1 ; 2 uses
  store i8 0, ptr %i.lmd, align 1, !tbaa !31
  %.not13523 = icmp eq i64 %i.lmb, 255            ; 2 uses
  %.sroa.gep14583 = getelementptr inbounds nuw i8, ptr %.32715156, i64 2 ; 2 uses
  %.neg13524.sroa.sel = select i1 %.not13523, ptr %.sroa.gep14583, ptr %i.lmd ; 2 uses
  %i.lme = lshr i64 %i.llt, 48
  %i.lmf = trunc i64 %i.lme to i8
  store i8 %i.lmf, ptr %.neg13524.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15544 = getelementptr inbounds nuw i8, ptr %.32715156, i64 3
  %.neg13524.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13523, ptr %.sroa.gep15544, ptr %.sroa.gep14583
  store i8 0, ptr %.neg13524.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lmg = and i64 %i.llt, 71776119061217280
  %.not13525 = icmp eq i64 %i.lmg, 71776119061217280
  %.neg13526 = select i1 %.not13525, i64 2, i64 1
  %i.lmh = getelementptr inbounds nuw i8, ptr %.neg13524.sroa.sel, i64 %.neg13526 ; 4 uses
  %i.lmi = lshr i64 %i.llt, 40
  %i.lmj = trunc i64 %i.lmi to i8
  store i8 %i.lmj, ptr %i.lmh, align 1, !tbaa !31
  %i.lmk = getelementptr inbounds nuw i8, ptr %i.lmh, i64 1 ; 2 uses
  store i8 0, ptr %i.lmk, align 1, !tbaa !31
  %i.lml = and i64 %i.llt, 280375465082880
  %.not13527 = icmp eq i64 %i.lml, 280375465082880 ; 2 uses
  %.sroa.gep14585 = getelementptr inbounds nuw i8, ptr %i.lmh, i64 2 ; 2 uses
  %.neg13528.sroa.sel = select i1 %.not13527, ptr %.sroa.gep14585, ptr %i.lmk ; 2 uses
  %i.lmm = lshr i64 %i.llt, 32
  %i.lmn = trunc i64 %i.lmm to i8
  store i8 %i.lmn, ptr %.neg13528.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15550 = getelementptr inbounds nuw i8, ptr %i.lmh, i64 3
  %.neg13528.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13527, ptr %.sroa.gep15550, ptr %.sroa.gep14585
  store i8 0, ptr %.neg13528.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lmo = and i64 %i.llt, 1095216660480
  %.not13529 = icmp eq i64 %i.lmo, 1095216660480
  %.neg13530 = select i1 %.not13529, i64 2, i64 1
  %i.lmp = getelementptr inbounds nuw i8, ptr %.neg13528.sroa.sel, i64 %.neg13530 ; 4 uses
  %i.lmq = lshr i64 %i.llx, 24
  %i.lmr = trunc i64 %i.lmq to i8
  store i8 %i.lmr, ptr %i.lmp, align 1, !tbaa !31
  %i.lms = getelementptr inbounds nuw i8, ptr %i.lmp, i64 1 ; 2 uses
  store i8 0, ptr %i.lms, align 1, !tbaa !31
  %i.lmt = and i64 %i.llx, 4278190080
  %.not13531 = icmp eq i64 %i.lmt, 4278190080     ; 2 uses
  %.sroa.gep14587 = getelementptr inbounds nuw i8, ptr %i.lmp, i64 2 ; 2 uses
  %.neg13532.sroa.sel = select i1 %.not13531, ptr %.sroa.gep14587, ptr %i.lms ; 2 uses
  %i.lmu = lshr i64 %i.llx, 16
  %i.lmv = trunc i64 %i.lmu to i8
  store i8 %i.lmv, ptr %.neg13532.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15548 = getelementptr inbounds nuw i8, ptr %i.lmp, i64 3
  %.neg13532.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13531, ptr %.sroa.gep15548, ptr %.sroa.gep14587
  store i8 0, ptr %.neg13532.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lmw = and i64 %i.llx, 16711680
  %.not13533 = icmp eq i64 %i.lmw, 16711680
  %.neg13534 = select i1 %.not13533, i64 2, i64 1
  %i.lmx = getelementptr inbounds nuw i8, ptr %.neg13532.sroa.sel, i64 %.neg13534 ; 4 uses
  %i.lmy = lshr i64 %i.llx, 8
  %i.lmz = trunc i64 %i.lmy to i8
  store i8 %i.lmz, ptr %i.lmx, align 1, !tbaa !31
  %i.lna = getelementptr inbounds nuw i8, ptr %i.lmx, i64 1 ; 2 uses
  store i8 0, ptr %i.lna, align 1, !tbaa !31
  %i.lnb = and i64 %i.llx, 65280
  %.not13535 = icmp eq i64 %i.lnb, 65280          ; 2 uses
  %.sroa.gep14589 = getelementptr inbounds nuw i8, ptr %i.lmx, i64 2 ; 2 uses
  %.neg13536.sroa.sel = select i1 %.not13535, ptr %.sroa.gep14589, ptr %i.lna ; 2 uses
  %i.lnc = trunc i64 %i.llx to i8
  store i8 %i.lnc, ptr %.neg13536.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15546 = getelementptr inbounds nuw i8, ptr %i.lmx, i64 3
  %.neg13536.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13535, ptr %.sroa.gep15546, ptr %.sroa.gep14589
  store i8 0, ptr %.neg13536.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lnd = and i64 %i.llx, 255
  %.not13537 = icmp eq i64 %i.lnd, 255
  %.neg13538 = select i1 %.not13537, i64 2, i64 1
  %i.lne = getelementptr inbounds nuw i8, ptr %.neg13536.sroa.sel, i64 %.neg13538
  br label %bb.aeb

bb.aea:                                           ; preds = %bb.ady
  %i.lnf = lshr i64 %i.llt, 48
  %i.lng = trunc i64 %i.lnf to i8
  %i.lnh = getelementptr inbounds nuw i8, ptr %.32715156, i64 1
  store i8 %i.lng, ptr %i.lnh, align 1, !tbaa !31
  %i.lni = lshr i64 %i.llt, 40
  %i.lnj = trunc i64 %i.lni to i8
  %i.lnk = getelementptr inbounds nuw i8, ptr %.32715156, i64 2
  store i8 %i.lnj, ptr %i.lnk, align 1, !tbaa !31
  %i.lnl = lshr i64 %i.llt, 32
  %i.lnm = trunc i64 %i.lnl to i8
  %i.lnn = getelementptr inbounds nuw i8, ptr %.32715156, i64 3
  store i8 %i.lnm, ptr %i.lnn, align 1, !tbaa !31
  %i.lno = lshr i64 %i.llx, 24
  %i.lnp = trunc i64 %i.lno to i8
  %i.lnq = getelementptr inbounds nuw i8, ptr %.32715156, i64 4
  store i8 %i.lnp, ptr %i.lnq, align 1, !tbaa !31
  %i.lnr = lshr i64 %i.llx, 16
  %i.lns = trunc i64 %i.lnr to i8
  %i.lnt = getelementptr inbounds nuw i8, ptr %.32715156, i64 5
  store i8 %i.lns, ptr %i.lnt, align 1, !tbaa !31
  %i.lnu = lshr i64 %i.llx, 8
  %i.lnv = trunc i64 %i.lnu to i8
  %i.lnw = getelementptr inbounds nuw i8, ptr %.32715156, i64 6
  store i8 %i.lnv, ptr %i.lnw, align 1, !tbaa !31
  %i.lnx = trunc i64 %i.llx to i8
  %i.lny = getelementptr inbounds nuw i8, ptr %.32715156, i64 7
  store i8 %i.lnx, ptr %i.lny, align 1, !tbaa !31
  %i.lnz = getelementptr inbounds nuw i8, ptr %.32715156, i64 8
  br label %bb.aeb

bb.aeb:                                           ; preds = %bb.aea, %bb.adz
  %.328 = phi ptr [ %i.lne, %bb.adz ], [ %i.lnz, %bb.aea ]
  %i.loa = add nsw i32 %i.llp, 64
  %i.lob = load i32, ptr %i.lll, align 4, !tbaa !3
  %i.loc = zext i32 %i.lob to i64
  br label %bb.aed

bb.aec:                                           ; preds = %bb.adx
  %i.lod = zext nneg i32 %i.llo to i64
  %i.loe = shl i64 %.2171126015155, %i.lod
  %i.lof = zext i32 %i.llr to i64
  %i.log = or i64 %i.loe, %i.lof
  br label %bb.aed

bb.aed:                                           ; preds = %bb.aec, %bb.aeb
  %.21811515 = phi i32 [ %i.loa, %bb.aeb ], [ %i.llp, %bb.aec ] ; 2 uses
  %.21811261 = phi i64 [ %i.loc, %bb.aeb ], [ %i.log, %bb.aec ] ; 2 uses
  %.329 = phi ptr [ %.328, %bb.aeb ], [ %.32715156, %bb.aec ] ; 2 uses
  %i.loh = icmp samesign ugt i32 %.10815157, 511
  br i1 %i.loh, label %bb.adx, label %._crit_edge15160, !llvm.loop !127

._crit_edge15160:                                 ; preds = %bb.aed, %bb.adw
  %.21711514.lcssa = phi i32 [ %.21611513, %bb.adw ], [ %.21811515, %bb.aed ] ; 2 uses
  %.21711260.lcssa = phi i64 [ %.21611259, %bb.adw ], [ %.21811261, %bb.aed ] ; 2 uses
  %.327.lcssa = phi ptr [ %.326, %bb.adw ], [ %.329, %bb.aed ] ; 13 uses
  %.108.lcssa = phi i32 [ %.107, %bb.adw ], [ %i.llm, %bb.aed ]
  %i.loi = add nuw nsw i32 %.108.lcssa, %i.lld
  %i.loj = zext nneg i8 %i.llc to i64
  %notmask13504 = shl nsw i64 -1, %i.loj
  %i.lok = trunc i64 %notmask13504 to i32
  %i.lol = xor i32 %i.lok, -1
  %i.lom = and i32 %i.lky, %i.lol
  %i.lon = zext nneg i32 %i.loi to i64            ; 2 uses
  %i.loo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.lon
  %i.lop = load i32, ptr %i.loo, align 4, !tbaa !3
  %i.loq = shl i32 %i.lop, %i.lld
  %i.lor = or i32 %i.loq, %i.lom                  ; 3 uses
  %i.los = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.lot = getelementptr inbounds nuw i8, ptr %i.los, i64 %i.lon
  %i.lou = load i8, ptr %i.lot, align 1, !tbaa !31
  %i.lov = sext i8 %i.lou to i32
  %i.low = add nsw i32 %i.lov, %i.lld             ; 2 uses
  %i.lox = sub nsw i32 %.21711514.lcssa, %i.low   ; 4 uses
  %i.loy = icmp slt i32 %i.lox, 0
  br i1 %i.loy, label %bb.aee, label %bb.aei

bb.aee:                                           ; preds = %._crit_edge15160
  %i.loz = zext nneg i32 %.21711514.lcssa to i64
  %i.lpa = shl i64 %.21711260.lcssa, %i.loz
  %i.lpb = sub nsw i32 0, %i.lox
  %i.lpc = ashr i32 %i.lor, %i.lpb
  %i.lpd = sext i32 %i.lpc to i64
  %i.lpe = or i64 %i.lpa, %i.lpd                  ; 24 uses
  %i.lpf = and i64 %i.lpe, -9187201950435737472
  %i.lpg = sub i64 -72340172838076674, %i.lpe
  %i.lph = and i64 %i.lpf, %i.lpg
  %.not13505 = icmp eq i64 %i.lph, 0
  %i.lpi = lshr i64 %i.lpe, 56                    ; 2 uses
  %i.lpj = trunc nuw i64 %i.lpi to i8
  store i8 %i.lpj, ptr %.327.lcssa, align 1, !tbaa !31
  br i1 %.not13505, label %bb.aeg, label %bb.aef

bb.aef:                                           ; preds = %bb.aee
  %i.lpk = getelementptr inbounds nuw i8, ptr %.327.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.lpk, align 1, !tbaa !31
  %.not13506 = icmp eq i64 %i.lpi, 255            ; 2 uses
  %.sroa.gep14591 = getelementptr inbounds nuw i8, ptr %.327.lcssa, i64 2 ; 2 uses
  %.neg13507.sroa.sel = select i1 %.not13506, ptr %.sroa.gep14591, ptr %i.lpk ; 2 uses
  %i.lpl = lshr i64 %i.lpe, 48
  %i.lpm = trunc i64 %i.lpl to i8
  store i8 %i.lpm, ptr %.neg13507.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15552 = getelementptr inbounds nuw i8, ptr %.327.lcssa, i64 3
  %.neg13507.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13506, ptr %.sroa.gep15552, ptr %.sroa.gep14591
  store i8 0, ptr %.neg13507.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lpn = and i64 %i.lpe, 71776119061217280
  %.not13508 = icmp eq i64 %i.lpn, 71776119061217280
  %.neg13509 = select i1 %.not13508, i64 2, i64 1
  %i.lpo = getelementptr inbounds nuw i8, ptr %.neg13507.sroa.sel, i64 %.neg13509 ; 4 uses
  %i.lpp = lshr i64 %i.lpe, 40
  %i.lpq = trunc i64 %i.lpp to i8
  store i8 %i.lpq, ptr %i.lpo, align 1, !tbaa !31
  %i.lpr = getelementptr inbounds nuw i8, ptr %i.lpo, i64 1 ; 2 uses
  store i8 0, ptr %i.lpr, align 1, !tbaa !31
  %i.lps = and i64 %i.lpe, 280375465082880
  %.not13510 = icmp eq i64 %i.lps, 280375465082880 ; 2 uses
  %.sroa.gep14593 = getelementptr inbounds nuw i8, ptr %i.lpo, i64 2 ; 2 uses
  %.neg13511.sroa.sel = select i1 %.not13510, ptr %.sroa.gep14593, ptr %i.lpr ; 2 uses
  %i.lpt = lshr i64 %i.lpe, 32
  %i.lpu = trunc i64 %i.lpt to i8
  store i8 %i.lpu, ptr %.neg13511.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15558 = getelementptr inbounds nuw i8, ptr %i.lpo, i64 3
  %.neg13511.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13510, ptr %.sroa.gep15558, ptr %.sroa.gep14593
  store i8 0, ptr %.neg13511.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lpv = and i64 %i.lpe, 1095216660480
  %.not13512 = icmp eq i64 %i.lpv, 1095216660480
  %.neg13513 = select i1 %.not13512, i64 2, i64 1
  %i.lpw = getelementptr inbounds nuw i8, ptr %.neg13511.sroa.sel, i64 %.neg13513 ; 4 uses
  %i.lpx = lshr i64 %i.lpe, 24
  %i.lpy = trunc i64 %i.lpx to i8
  store i8 %i.lpy, ptr %i.lpw, align 1, !tbaa !31
  %i.lpz = getelementptr inbounds nuw i8, ptr %i.lpw, i64 1 ; 2 uses
  store i8 0, ptr %i.lpz, align 1, !tbaa !31
  %i.lqa = and i64 %i.lpe, 4278190080
  %.not13514 = icmp eq i64 %i.lqa, 4278190080     ; 2 uses
  %.sroa.gep14595 = getelementptr inbounds nuw i8, ptr %i.lpw, i64 2 ; 2 uses
  %.neg13515.sroa.sel = select i1 %.not13514, ptr %.sroa.gep14595, ptr %i.lpz ; 2 uses
  %i.lqb = lshr i64 %i.lpe, 16
  %i.lqc = trunc i64 %i.lqb to i8
  store i8 %i.lqc, ptr %.neg13515.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15556 = getelementptr inbounds nuw i8, ptr %i.lpw, i64 3
  %.neg13515.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13514, ptr %.sroa.gep15556, ptr %.sroa.gep14595
  store i8 0, ptr %.neg13515.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lqd = and i64 %i.lpe, 16711680
  %.not13516 = icmp eq i64 %i.lqd, 16711680
  %.neg13517 = select i1 %.not13516, i64 2, i64 1
  %i.lqe = getelementptr inbounds nuw i8, ptr %.neg13515.sroa.sel, i64 %.neg13517 ; 4 uses
  %i.lqf = lshr i64 %i.lpe, 8
  %i.lqg = trunc i64 %i.lqf to i8
  store i8 %i.lqg, ptr %i.lqe, align 1, !tbaa !31
  %i.lqh = getelementptr inbounds nuw i8, ptr %i.lqe, i64 1 ; 2 uses
  store i8 0, ptr %i.lqh, align 1, !tbaa !31
  %i.lqi = and i64 %i.lpe, 65280
  %.not13518 = icmp eq i64 %i.lqi, 65280          ; 2 uses
  %.sroa.gep14597 = getelementptr inbounds nuw i8, ptr %i.lqe, i64 2 ; 2 uses
  %.neg13519.sroa.sel = select i1 %.not13518, ptr %.sroa.gep14597, ptr %i.lqh ; 2 uses
  %i.lqj = trunc i64 %i.lpe to i8
  store i8 %i.lqj, ptr %.neg13519.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15554 = getelementptr inbounds nuw i8, ptr %i.lqe, i64 3
  %.neg13519.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13518, ptr %.sroa.gep15554, ptr %.sroa.gep14597
  store i8 0, ptr %.neg13519.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lqk = and i64 %i.lpe, 255
  %.not13520 = icmp eq i64 %i.lqk, 255
  %.neg13521 = select i1 %.not13520, i64 2, i64 1
  %i.lql = getelementptr inbounds nuw i8, ptr %.neg13519.sroa.sel, i64 %.neg13521
  br label %bb.aeh

bb.aeg:                                           ; preds = %bb.aee
  %i.lqm = lshr i64 %i.lpe, 48
  %i.lqn = trunc i64 %i.lqm to i8
  %i.lqo = getelementptr inbounds nuw i8, ptr %.327.lcssa, i64 1
  store i8 %i.lqn, ptr %i.lqo, align 1, !tbaa !31
  %i.lqp = lshr i64 %i.lpe, 40
  %i.lqq = trunc i64 %i.lqp to i8
  %i.lqr = getelementptr inbounds nuw i8, ptr %.327.lcssa, i64 2
  store i8 %i.lqq, ptr %i.lqr, align 1, !tbaa !31
  %i.lqs = lshr i64 %i.lpe, 32
  %i.lqt = trunc i64 %i.lqs to i8
  %i.lqu = getelementptr inbounds nuw i8, ptr %.327.lcssa, i64 3
  store i8 %i.lqt, ptr %i.lqu, align 1, !tbaa !31
  %i.lqv = lshr i64 %i.lpe, 24
  %i.lqw = trunc i64 %i.lqv to i8
  %i.lqx = getelementptr inbounds nuw i8, ptr %.327.lcssa, i64 4
  store i8 %i.lqw, ptr %i.lqx, align 1, !tbaa !31
  %i.lqy = lshr i64 %i.lpe, 16
  %i.lqz = trunc i64 %i.lqy to i8
  %i.lra = getelementptr inbounds nuw i8, ptr %.327.lcssa, i64 5
  store i8 %i.lqz, ptr %i.lra, align 1, !tbaa !31
  %i.lrb = lshr i64 %i.lpe, 8
  %i.lrc = trunc i64 %i.lrb to i8
  %i.lrd = getelementptr inbounds nuw i8, ptr %.327.lcssa, i64 6
  store i8 %i.lrc, ptr %i.lrd, align 1, !tbaa !31
  %i.lre = trunc i64 %i.lpe to i8
  %i.lrf = getelementptr inbounds nuw i8, ptr %.327.lcssa, i64 7
  store i8 %i.lre, ptr %i.lrf, align 1, !tbaa !31
  %i.lrg = getelementptr inbounds nuw i8, ptr %.327.lcssa, i64 8
  br label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg, %bb.aef
  %.330 = phi ptr [ %i.lql, %bb.aef ], [ %i.lrg, %bb.aeg ]
  %i.lrh = add nsw i32 %i.lox, 64
  %i.lri = sext i32 %i.lor to i64
  br label %bb.aej

bb.aei:                                           ; preds = %._crit_edge15160
  %i.lrj = zext nneg i32 %i.low to i64
  %i.lrk = shl i64 %.21711260.lcssa, %i.lrj
  %i.lrl = sext i32 %i.lor to i64
  %i.lrm = or i64 %i.lrk, %i.lrl
  br label %bb.aej

bb.aej:                                           ; preds = %bb.aeh, %bb.aei, %bb.adt
  %.22011517 = phi i32 [ %.21611513, %bb.adt ], [ %i.lrh, %bb.aeh ], [ %i.lox, %bb.aei ] ; 3 uses
  %.22011263 = phi i64 [ %.21611259, %bb.adt ], [ %i.lri, %bb.aeh ], [ %i.lrm, %bb.aei ] ; 3 uses
  %.332 = phi ptr [ %.326, %bb.adt ], [ %.330, %bb.aeh ], [ %.327.lcssa, %bb.aei ] ; 3 uses
  %.109 = phi i32 [ %i.lkv, %bb.adt ], [ 0, %bb.aeh ], [ 0, %bb.aei ] ; 4 uses
  %i.lrn = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.lro = load i16, ptr %i.lrn, align 2, !tbaa !79 ; 2 uses
  %i.lrp = icmp eq i16 %i.lro, 0
  br i1 %i.lrp, label %bb.aek, label %bb.ael

bb.aek:                                           ; preds = %bb.aej
  %i.lrq = add nuw nsw i32 %.109, 16
  br label %bb.afa

bb.ael:                                           ; preds = %bb.aej
  %i.lrr = sext i16 %i.lro to i32                 ; 2 uses
  %i.lrs = ashr i32 %i.lrr, 31                    ; 2 uses
  %i.lrt = add nsw i32 %i.lrs, %i.lrr             ; 2 uses
  %i.lru = xor i32 %i.lrt, %i.lrs
  %i.lrv = sext i32 %i.lru to i64
  %i.lrw = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.lrv
  %i.lrx = load i8, ptr %i.lrw, align 1, !tbaa !31 ; 2 uses
  %i.lry = zext i8 %i.lrx to i32                  ; 4 uses
  %i.lrz = icmp slt i32 %i.f, %i.lry
  br i1 %i.lrz, label %bb.aem, label %bb.aen

bb.aem:                                           ; preds = %bb.ael
  %i.lsa = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.lsb = load ptr, ptr %i.lsa, align 8, !tbaa !7 ; 2 uses
  %i.lsc = getelementptr inbounds nuw i8, ptr %i.lsb, i64 40
  store i32 6, ptr %i.lsc, align 8, !tbaa !26
  %i.lsd = load ptr, ptr %i.lsb, align 8, !tbaa !32
  tail call void %i.lsd(ptr noundef nonnull %i.lsa) #7
  br label %bb.aen

bb.aen:                                           ; preds = %bb.aem, %bb.ael
  %i.lse = icmp samesign ugt i32 %.109, 255
  br i1 %i.lse, label %.lr.ph15170, label %._crit_edge15171

.lr.ph15170:                                      ; preds = %bb.aen
  %i.lsf = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.lsg = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.aeo

bb.aeo:                                           ; preds = %.lr.ph15170, %bb.aeu
  %.11015168 = phi i32 [ %.109, %.lr.ph15170 ], [ %i.lsh, %bb.aeu ] ; 2 uses
  %.33315167 = phi ptr [ %.332, %.lr.ph15170 ], [ %.335, %bb.aeu ] ; 13 uses
  %.2211126415166 = phi i64 [ %.22011263, %.lr.ph15170 ], [ %.22211265, %bb.aeu ] ; 2 uses
  %.2211151815165 = phi i32 [ %.22011517, %.lr.ph15170 ], [ %.22211519, %bb.aeu ] ; 2 uses
  %i.lsh = add nsw i32 %.11015168, -256           ; 2 uses
  %i.lsi = load i8, ptr %i.lsf, align 4, !tbaa !31
  %i.lsj = sext i8 %i.lsi to i32                  ; 2 uses
  %i.lsk = sub nsw i32 %.2211151815165, %i.lsj    ; 4 uses
  %i.lsl = icmp slt i32 %i.lsk, 0
  %i.lsm = load i32, ptr %i.lsg, align 4, !tbaa !3 ; 2 uses
  br i1 %i.lsl, label %bb.aep, label %bb.aet

bb.aep:                                           ; preds = %bb.aeo
  %i.lsn = zext nneg i32 %.2211151815165 to i64
  %i.lso = shl i64 %.2211126415166, %i.lsn        ; 11 uses
  %i.lsp = sub nsw i32 0, %i.lsk
  %i.lsq = lshr i32 %i.lsm, %i.lsp
  %i.lsr = zext nneg i32 %i.lsq to i64
  %i.lss = or i64 %i.lso, %i.lsr                  ; 14 uses
  %i.lst = and i64 %i.lss, -9187201950435737472
  %i.lsu = sub i64 -72340172838076674, %i.lss
  %i.lsv = and i64 %i.lst, %i.lsu
  %.not13557 = icmp eq i64 %i.lsv, 0
  %i.lsw = lshr i64 %i.lso, 56                    ; 2 uses
  %i.lsx = trunc nuw i64 %i.lsw to i8
  store i8 %i.lsx, ptr %.33315167, align 1, !tbaa !31
  br i1 %.not13557, label %bb.aer, label %bb.aeq

bb.aeq:                                           ; preds = %bb.aep
  %i.lsy = getelementptr inbounds nuw i8, ptr %.33315167, i64 1 ; 2 uses
  store i8 0, ptr %i.lsy, align 1, !tbaa !31
  %.not13558 = icmp eq i64 %i.lsw, 255            ; 2 uses
  %.sroa.gep14599 = getelementptr inbounds nuw i8, ptr %.33315167, i64 2 ; 2 uses
  %.neg13559.sroa.sel = select i1 %.not13558, ptr %.sroa.gep14599, ptr %i.lsy ; 2 uses
  %i.lsz = lshr i64 %i.lso, 48
  %i.lta = trunc i64 %i.lsz to i8
  store i8 %i.lta, ptr %.neg13559.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15528 = getelementptr inbounds nuw i8, ptr %.33315167, i64 3
  %.neg13559.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13558, ptr %.sroa.gep15528, ptr %.sroa.gep14599
  store i8 0, ptr %.neg13559.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ltb = and i64 %i.lso, 71776119061217280
  %.not13560 = icmp eq i64 %i.ltb, 71776119061217280
  %.neg13561 = select i1 %.not13560, i64 2, i64 1
  %i.ltc = getelementptr inbounds nuw i8, ptr %.neg13559.sroa.sel, i64 %.neg13561 ; 4 uses
  %i.ltd = lshr i64 %i.lso, 40
  %i.lte = trunc i64 %i.ltd to i8
  store i8 %i.lte, ptr %i.ltc, align 1, !tbaa !31
  %i.ltf = getelementptr inbounds nuw i8, ptr %i.ltc, i64 1 ; 2 uses
  store i8 0, ptr %i.ltf, align 1, !tbaa !31
  %i.ltg = and i64 %i.lso, 280375465082880
  %.not13562 = icmp eq i64 %i.ltg, 280375465082880 ; 2 uses
  %.sroa.gep14601 = getelementptr inbounds nuw i8, ptr %i.ltc, i64 2 ; 2 uses
  %.neg13563.sroa.sel = select i1 %.not13562, ptr %.sroa.gep14601, ptr %i.ltf ; 2 uses
  %i.lth = lshr i64 %i.lso, 32
  %i.lti = trunc i64 %i.lth to i8
  store i8 %i.lti, ptr %.neg13563.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15534 = getelementptr inbounds nuw i8, ptr %i.ltc, i64 3
  %.neg13563.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13562, ptr %.sroa.gep15534, ptr %.sroa.gep14601
  store i8 0, ptr %.neg13563.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ltj = and i64 %i.lso, 1095216660480
  %.not13564 = icmp eq i64 %i.ltj, 1095216660480
  %.neg13565 = select i1 %.not13564, i64 2, i64 1
  %i.ltk = getelementptr inbounds nuw i8, ptr %.neg13563.sroa.sel, i64 %.neg13565 ; 4 uses
  %i.ltl = lshr i64 %i.lss, 24
  %i.ltm = trunc i64 %i.ltl to i8
  store i8 %i.ltm, ptr %i.ltk, align 1, !tbaa !31
  %i.ltn = getelementptr inbounds nuw i8, ptr %i.ltk, i64 1 ; 2 uses
  store i8 0, ptr %i.ltn, align 1, !tbaa !31
  %i.lto = and i64 %i.lss, 4278190080
  %.not13566 = icmp eq i64 %i.lto, 4278190080     ; 2 uses
  %.sroa.gep14603 = getelementptr inbounds nuw i8, ptr %i.ltk, i64 2 ; 2 uses
  %.neg13567.sroa.sel = select i1 %.not13566, ptr %.sroa.gep14603, ptr %i.ltn ; 2 uses
  %i.ltp = lshr i64 %i.lss, 16
  %i.ltq = trunc i64 %i.ltp to i8
  store i8 %i.ltq, ptr %.neg13567.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15532 = getelementptr inbounds nuw i8, ptr %i.ltk, i64 3
  %.neg13567.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13566, ptr %.sroa.gep15532, ptr %.sroa.gep14603
  store i8 0, ptr %.neg13567.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ltr = and i64 %i.lss, 16711680
  %.not13568 = icmp eq i64 %i.ltr, 16711680
  %.neg13569 = select i1 %.not13568, i64 2, i64 1
  %i.lts = getelementptr inbounds nuw i8, ptr %.neg13567.sroa.sel, i64 %.neg13569 ; 4 uses
  %i.ltt = lshr i64 %i.lss, 8
  %i.ltu = trunc i64 %i.ltt to i8
  store i8 %i.ltu, ptr %i.lts, align 1, !tbaa !31
  %i.ltv = getelementptr inbounds nuw i8, ptr %i.lts, i64 1 ; 2 uses
  store i8 0, ptr %i.ltv, align 1, !tbaa !31
  %i.ltw = and i64 %i.lss, 65280
  %.not13570 = icmp eq i64 %i.ltw, 65280          ; 2 uses
  %.sroa.gep14605 = getelementptr inbounds nuw i8, ptr %i.lts, i64 2 ; 2 uses
  %.neg13571.sroa.sel = select i1 %.not13570, ptr %.sroa.gep14605, ptr %i.ltv ; 2 uses
  %i.ltx = trunc i64 %i.lss to i8
  store i8 %i.ltx, ptr %.neg13571.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15530 = getelementptr inbounds nuw i8, ptr %i.lts, i64 3
  %.neg13571.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13570, ptr %.sroa.gep15530, ptr %.sroa.gep14605
  store i8 0, ptr %.neg13571.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lty = and i64 %i.lss, 255
  %.not13572 = icmp eq i64 %i.lty, 255
  %.neg13573 = select i1 %.not13572, i64 2, i64 1
  %i.ltz = getelementptr inbounds nuw i8, ptr %.neg13571.sroa.sel, i64 %.neg13573
  br label %bb.aes

bb.aer:                                           ; preds = %bb.aep
  %i.lua = lshr i64 %i.lso, 48
  %i.lub = trunc i64 %i.lua to i8
  %i.luc = getelementptr inbounds nuw i8, ptr %.33315167, i64 1
  store i8 %i.lub, ptr %i.luc, align 1, !tbaa !31
  %i.lud = lshr i64 %i.lso, 40
  %i.lue = trunc i64 %i.lud to i8
  %i.luf = getelementptr inbounds nuw i8, ptr %.33315167, i64 2
  store i8 %i.lue, ptr %i.luf, align 1, !tbaa !31
  %i.lug = lshr i64 %i.lso, 32
  %i.luh = trunc i64 %i.lug to i8
  %i.lui = getelementptr inbounds nuw i8, ptr %.33315167, i64 3
  store i8 %i.luh, ptr %i.lui, align 1, !tbaa !31
  %i.luj = lshr i64 %i.lss, 24
  %i.luk = trunc i64 %i.luj to i8
  %i.lul = getelementptr inbounds nuw i8, ptr %.33315167, i64 4
  store i8 %i.luk, ptr %i.lul, align 1, !tbaa !31
  %i.lum = lshr i64 %i.lss, 16
  %i.lun = trunc i64 %i.lum to i8
  %i.luo = getelementptr inbounds nuw i8, ptr %.33315167, i64 5
  store i8 %i.lun, ptr %i.luo, align 1, !tbaa !31
  %i.lup = lshr i64 %i.lss, 8
  %i.luq = trunc i64 %i.lup to i8
  %i.lur = getelementptr inbounds nuw i8, ptr %.33315167, i64 6
  store i8 %i.luq, ptr %i.lur, align 1, !tbaa !31
  %i.lus = trunc i64 %i.lss to i8
  %i.lut = getelementptr inbounds nuw i8, ptr %.33315167, i64 7
  store i8 %i.lus, ptr %i.lut, align 1, !tbaa !31
  %i.luu = getelementptr inbounds nuw i8, ptr %.33315167, i64 8
  br label %bb.aes

bb.aes:                                           ; preds = %bb.aer, %bb.aeq
  %.334 = phi ptr [ %i.ltz, %bb.aeq ], [ %i.luu, %bb.aer ]
  %i.luv = add nsw i32 %i.lsk, 64
  %i.luw = load i32, ptr %i.lsg, align 4, !tbaa !3
  %i.lux = zext i32 %i.luw to i64
  br label %bb.aeu

bb.aet:                                           ; preds = %bb.aeo
  %i.luy = zext nneg i32 %i.lsj to i64
  %i.luz = shl i64 %.2211126415166, %i.luy
  %i.lva = zext i32 %i.lsm to i64
  %i.lvb = or i64 %i.luz, %i.lva
  br label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet, %bb.aes
  %.22211519 = phi i32 [ %i.luv, %bb.aes ], [ %i.lsk, %bb.aet ] ; 2 uses
  %.22211265 = phi i64 [ %i.lux, %bb.aes ], [ %i.lvb, %bb.aet ] ; 2 uses
  %.335 = phi ptr [ %.334, %bb.aes ], [ %.33315167, %bb.aet ] ; 2 uses
  %i.lvc = icmp samesign ugt i32 %.11015168, 511
  br i1 %i.lvc, label %bb.aeo, label %._crit_edge15171, !llvm.loop !128

._crit_edge15171:                                 ; preds = %bb.aeu, %bb.aen
  %.22111518.lcssa = phi i32 [ %.22011517, %bb.aen ], [ %.22211519, %bb.aeu ] ; 2 uses
  %.22111264.lcssa = phi i64 [ %.22011263, %bb.aen ], [ %.22211265, %bb.aeu ] ; 2 uses
  %.333.lcssa = phi ptr [ %.332, %bb.aen ], [ %.335, %bb.aeu ] ; 13 uses
  %.110.lcssa = phi i32 [ %.109, %bb.aen ], [ %i.lsh, %bb.aeu ]
  %i.lvd = add nuw nsw i32 %.110.lcssa, %i.lry
  %i.lve = zext nneg i8 %i.lrx to i64
  %notmask13539 = shl nsw i64 -1, %i.lve
  %i.lvf = trunc i64 %notmask13539 to i32
  %i.lvg = xor i32 %i.lvf, -1
  %i.lvh = and i32 %i.lrt, %i.lvg
  %i.lvi = zext nneg i32 %i.lvd to i64            ; 2 uses
  %i.lvj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.lvi
  %i.lvk = load i32, ptr %i.lvj, align 4, !tbaa !3
  %i.lvl = shl i32 %i.lvk, %i.lry
  %i.lvm = or i32 %i.lvl, %i.lvh                  ; 3 uses
  %i.lvn = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.lvo = getelementptr inbounds nuw i8, ptr %i.lvn, i64 %i.lvi
  %i.lvp = load i8, ptr %i.lvo, align 1, !tbaa !31
  %i.lvq = sext i8 %i.lvp to i32
  %i.lvr = add nsw i32 %i.lvq, %i.lry             ; 2 uses
  %i.lvs = sub nsw i32 %.22111518.lcssa, %i.lvr   ; 4 uses
  %i.lvt = icmp slt i32 %i.lvs, 0
  br i1 %i.lvt, label %bb.aev, label %bb.aez

bb.aev:                                           ; preds = %._crit_edge15171
  %i.lvu = zext nneg i32 %.22111518.lcssa to i64
  %i.lvv = shl i64 %.22111264.lcssa, %i.lvu
  %i.lvw = sub nsw i32 0, %i.lvs
  %i.lvx = ashr i32 %i.lvm, %i.lvw
  %i.lvy = sext i32 %i.lvx to i64
  %i.lvz = or i64 %i.lvv, %i.lvy                  ; 24 uses
  %i.lwa = and i64 %i.lvz, -9187201950435737472
  %i.lwb = sub i64 -72340172838076674, %i.lvz
  %i.lwc = and i64 %i.lwa, %i.lwb
  %.not13540 = icmp eq i64 %i.lwc, 0
  %i.lwd = lshr i64 %i.lvz, 56                    ; 2 uses
  %i.lwe = trunc nuw i64 %i.lwd to i8
  store i8 %i.lwe, ptr %.333.lcssa, align 1, !tbaa !31
  br i1 %.not13540, label %bb.aex, label %bb.aew

bb.aew:                                           ; preds = %bb.aev
  %i.lwf = getelementptr inbounds nuw i8, ptr %.333.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.lwf, align 1, !tbaa !31
  %.not13541 = icmp eq i64 %i.lwd, 255            ; 2 uses
  %.sroa.gep14607 = getelementptr inbounds nuw i8, ptr %.333.lcssa, i64 2 ; 2 uses
  %.neg13542.sroa.sel = select i1 %.not13541, ptr %.sroa.gep14607, ptr %i.lwf ; 2 uses
  %i.lwg = lshr i64 %i.lvz, 48
  %i.lwh = trunc i64 %i.lwg to i8
  store i8 %i.lwh, ptr %.neg13542.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15536 = getelementptr inbounds nuw i8, ptr %.333.lcssa, i64 3
  %.neg13542.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13541, ptr %.sroa.gep15536, ptr %.sroa.gep14607
  store i8 0, ptr %.neg13542.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lwi = and i64 %i.lvz, 71776119061217280
  %.not13543 = icmp eq i64 %i.lwi, 71776119061217280
  %.neg13544 = select i1 %.not13543, i64 2, i64 1
  %i.lwj = getelementptr inbounds nuw i8, ptr %.neg13542.sroa.sel, i64 %.neg13544 ; 4 uses
  %i.lwk = lshr i64 %i.lvz, 40
  %i.lwl = trunc i64 %i.lwk to i8
  store i8 %i.lwl, ptr %i.lwj, align 1, !tbaa !31
  %i.lwm = getelementptr inbounds nuw i8, ptr %i.lwj, i64 1 ; 2 uses
  store i8 0, ptr %i.lwm, align 1, !tbaa !31
  %i.lwn = and i64 %i.lvz, 280375465082880
  %.not13545 = icmp eq i64 %i.lwn, 280375465082880 ; 2 uses
  %.sroa.gep14609 = getelementptr inbounds nuw i8, ptr %i.lwj, i64 2 ; 2 uses
  %.neg13546.sroa.sel = select i1 %.not13545, ptr %.sroa.gep14609, ptr %i.lwm ; 2 uses
  %i.lwo = lshr i64 %i.lvz, 32
  %i.lwp = trunc i64 %i.lwo to i8
  store i8 %i.lwp, ptr %.neg13546.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15542 = getelementptr inbounds nuw i8, ptr %i.lwj, i64 3
  %.neg13546.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13545, ptr %.sroa.gep15542, ptr %.sroa.gep14609
  store i8 0, ptr %.neg13546.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lwq = and i64 %i.lvz, 1095216660480
  %.not13547 = icmp eq i64 %i.lwq, 1095216660480
  %.neg13548 = select i1 %.not13547, i64 2, i64 1
  %i.lwr = getelementptr inbounds nuw i8, ptr %.neg13546.sroa.sel, i64 %.neg13548 ; 4 uses
  %i.lws = lshr i64 %i.lvz, 24
  %i.lwt = trunc i64 %i.lws to i8
  store i8 %i.lwt, ptr %i.lwr, align 1, !tbaa !31
  %i.lwu = getelementptr inbounds nuw i8, ptr %i.lwr, i64 1 ; 2 uses
  store i8 0, ptr %i.lwu, align 1, !tbaa !31
  %i.lwv = and i64 %i.lvz, 4278190080
  %.not13549 = icmp eq i64 %i.lwv, 4278190080     ; 2 uses
  %.sroa.gep14611 = getelementptr inbounds nuw i8, ptr %i.lwr, i64 2 ; 2 uses
  %.neg13550.sroa.sel = select i1 %.not13549, ptr %.sroa.gep14611, ptr %i.lwu ; 2 uses
  %i.lww = lshr i64 %i.lvz, 16
  %i.lwx = trunc i64 %i.lww to i8
  store i8 %i.lwx, ptr %.neg13550.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15540 = getelementptr inbounds nuw i8, ptr %i.lwr, i64 3
  %.neg13550.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13549, ptr %.sroa.gep15540, ptr %.sroa.gep14611
  store i8 0, ptr %.neg13550.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lwy = and i64 %i.lvz, 16711680
  %.not13551 = icmp eq i64 %i.lwy, 16711680
  %.neg13552 = select i1 %.not13551, i64 2, i64 1
  %i.lwz = getelementptr inbounds nuw i8, ptr %.neg13550.sroa.sel, i64 %.neg13552 ; 4 uses
  %i.lxa = lshr i64 %i.lvz, 8
  %i.lxb = trunc i64 %i.lxa to i8
  store i8 %i.lxb, ptr %i.lwz, align 1, !tbaa !31
  %i.lxc = getelementptr inbounds nuw i8, ptr %i.lwz, i64 1 ; 2 uses
  store i8 0, ptr %i.lxc, align 1, !tbaa !31
  %i.lxd = and i64 %i.lvz, 65280
  %.not13553 = icmp eq i64 %i.lxd, 65280          ; 2 uses
  %.sroa.gep14613 = getelementptr inbounds nuw i8, ptr %i.lwz, i64 2 ; 2 uses
  %.neg13554.sroa.sel = select i1 %.not13553, ptr %.sroa.gep14613, ptr %i.lxc ; 2 uses
  %i.lxe = trunc i64 %i.lvz to i8
  store i8 %i.lxe, ptr %.neg13554.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15538 = getelementptr inbounds nuw i8, ptr %i.lwz, i64 3
  %.neg13554.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13553, ptr %.sroa.gep15538, ptr %.sroa.gep14613
  store i8 0, ptr %.neg13554.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lxf = and i64 %i.lvz, 255
  %.not13555 = icmp eq i64 %i.lxf, 255
  %.neg13556 = select i1 %.not13555, i64 2, i64 1
  %i.lxg = getelementptr inbounds nuw i8, ptr %.neg13554.sroa.sel, i64 %.neg13556
  br label %bb.aey

bb.aex:                                           ; preds = %bb.aev
  %i.lxh = lshr i64 %i.lvz, 48
  %i.lxi = trunc i64 %i.lxh to i8
  %i.lxj = getelementptr inbounds nuw i8, ptr %.333.lcssa, i64 1
  store i8 %i.lxi, ptr %i.lxj, align 1, !tbaa !31
  %i.lxk = lshr i64 %i.lvz, 40
  %i.lxl = trunc i64 %i.lxk to i8
  %i.lxm = getelementptr inbounds nuw i8, ptr %.333.lcssa, i64 2
  store i8 %i.lxl, ptr %i.lxm, align 1, !tbaa !31
  %i.lxn = lshr i64 %i.lvz, 32
  %i.lxo = trunc i64 %i.lxn to i8
  %i.lxp = getelementptr inbounds nuw i8, ptr %.333.lcssa, i64 3
  store i8 %i.lxo, ptr %i.lxp, align 1, !tbaa !31
  %i.lxq = lshr i64 %i.lvz, 24
  %i.lxr = trunc i64 %i.lxq to i8
  %i.lxs = getelementptr inbounds nuw i8, ptr %.333.lcssa, i64 4
  store i8 %i.lxr, ptr %i.lxs, align 1, !tbaa !31
  %i.lxt = lshr i64 %i.lvz, 16
  %i.lxu = trunc i64 %i.lxt to i8
  %i.lxv = getelementptr inbounds nuw i8, ptr %.333.lcssa, i64 5
  store i8 %i.lxu, ptr %i.lxv, align 1, !tbaa !31
  %i.lxw = lshr i64 %i.lvz, 8
  %i.lxx = trunc i64 %i.lxw to i8
  %i.lxy = getelementptr inbounds nuw i8, ptr %.333.lcssa, i64 6
  store i8 %i.lxx, ptr %i.lxy, align 1, !tbaa !31
  %i.lxz = trunc i64 %i.lvz to i8
  %i.lya = getelementptr inbounds nuw i8, ptr %.333.lcssa, i64 7
  store i8 %i.lxz, ptr %i.lya, align 1, !tbaa !31
  %i.lyb = getelementptr inbounds nuw i8, ptr %.333.lcssa, i64 8
  br label %bb.aey

bb.aey:                                           ; preds = %bb.aex, %bb.aew
  %.336 = phi ptr [ %i.lxg, %bb.aew ], [ %i.lyb, %bb.aex ]
  %i.lyc = add nsw i32 %i.lvs, 64
  %i.lyd = sext i32 %i.lvm to i64
  br label %bb.afa

bb.aez:                                           ; preds = %._crit_edge15171
  %i.lye = zext nneg i32 %i.lvr to i64
  %i.lyf = shl i64 %.22111264.lcssa, %i.lye
  %i.lyg = sext i32 %i.lvm to i64
  %i.lyh = or i64 %i.lyf, %i.lyg
  br label %bb.afa

bb.afa:                                           ; preds = %bb.aey, %bb.aez, %bb.aek
  %.22411521 = phi i32 [ %.22011517, %bb.aek ], [ %i.lyc, %bb.aey ], [ %i.lvs, %bb.aez ] ; 3 uses
  %.22411267 = phi i64 [ %.22011263, %bb.aek ], [ %i.lyd, %bb.aey ], [ %i.lyh, %bb.aez ] ; 3 uses
  %.338 = phi ptr [ %.332, %bb.aek ], [ %.336, %bb.aey ], [ %.333.lcssa, %bb.aez ] ; 3 uses
  %.111 = phi i32 [ %i.lrq, %bb.aek ], [ 0, %bb.aey ], [ 0, %bb.aez ] ; 4 uses
  %i.lyi = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.lyj = load i16, ptr %i.lyi, align 2, !tbaa !79 ; 2 uses
  %i.lyk = icmp eq i16 %i.lyj, 0
  br i1 %i.lyk, label %bb.afb, label %bb.afc

bb.afb:                                           ; preds = %bb.afa
  %i.lyl = add nuw nsw i32 %.111, 16
  br label %bb.afr

bb.afc:                                           ; preds = %bb.afa
  %i.lym = sext i16 %i.lyj to i32                 ; 2 uses
  %i.lyn = ashr i32 %i.lym, 31                    ; 2 uses
  %i.lyo = add nsw i32 %i.lyn, %i.lym             ; 2 uses
  %i.lyp = xor i32 %i.lyo, %i.lyn
  %i.lyq = sext i32 %i.lyp to i64
  %i.lyr = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.lyq
  %i.lys = load i8, ptr %i.lyr, align 1, !tbaa !31 ; 2 uses
  %i.lyt = zext i8 %i.lys to i32                  ; 4 uses
  %i.lyu = icmp slt i32 %i.f, %i.lyt
  br i1 %i.lyu, label %bb.afd, label %bb.afe

bb.afd:                                           ; preds = %bb.afc
  %i.lyv = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.lyw = load ptr, ptr %i.lyv, align 8, !tbaa !7 ; 2 uses
  %i.lyx = getelementptr inbounds nuw i8, ptr %i.lyw, i64 40
  store i32 6, ptr %i.lyx, align 8, !tbaa !26
  %i.lyy = load ptr, ptr %i.lyw, align 8, !tbaa !32
  tail call void %i.lyy(ptr noundef nonnull %i.lyv) #7
  br label %bb.afe

bb.afe:                                           ; preds = %bb.afd, %bb.afc
  %i.lyz = icmp samesign ugt i32 %.111, 255
  br i1 %i.lyz, label %.lr.ph15181, label %._crit_edge15182

.lr.ph15181:                                      ; preds = %bb.afe
  %i.lza = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.lzb = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.aff

bb.aff:                                           ; preds = %.lr.ph15181, %bb.afl
  %.11215179 = phi i32 [ %.111, %.lr.ph15181 ], [ %i.lzc, %bb.afl ] ; 2 uses
  %.33915178 = phi ptr [ %.338, %.lr.ph15181 ], [ %.341, %bb.afl ] ; 13 uses
  %.2251126815177 = phi i64 [ %.22411267, %.lr.ph15181 ], [ %.22611269, %bb.afl ] ; 2 uses
  %.2251152215176 = phi i32 [ %.22411521, %.lr.ph15181 ], [ %.22611523, %bb.afl ] ; 2 uses
  %i.lzc = add nsw i32 %.11215179, -256           ; 2 uses
  %i.lzd = load i8, ptr %i.lza, align 4, !tbaa !31
  %i.lze = sext i8 %i.lzd to i32                  ; 2 uses
  %i.lzf = sub nsw i32 %.2251152215176, %i.lze    ; 4 uses
  %i.lzg = icmp slt i32 %i.lzf, 0
  %i.lzh = load i32, ptr %i.lzb, align 4, !tbaa !3 ; 2 uses
  br i1 %i.lzg, label %bb.afg, label %bb.afk

bb.afg:                                           ; preds = %bb.aff
  %i.lzi = zext nneg i32 %.2251152215176 to i64
  %i.lzj = shl i64 %.2251126815177, %i.lzi        ; 11 uses
  %i.lzk = sub nsw i32 0, %i.lzf
  %i.lzl = lshr i32 %i.lzh, %i.lzk
  %i.lzm = zext nneg i32 %i.lzl to i64
  %i.lzn = or i64 %i.lzj, %i.lzm                  ; 14 uses
  %i.lzo = and i64 %i.lzn, -9187201950435737472
  %i.lzp = sub i64 -72340172838076674, %i.lzn
  %i.lzq = and i64 %i.lzo, %i.lzp
  %.not13592 = icmp eq i64 %i.lzq, 0
  %i.lzr = lshr i64 %i.lzj, 56                    ; 2 uses
  %i.lzs = trunc nuw i64 %i.lzr to i8
  store i8 %i.lzs, ptr %.33915178, align 1, !tbaa !31
  br i1 %.not13592, label %bb.afi, label %bb.afh

bb.afh:                                           ; preds = %bb.afg
  %i.lzt = getelementptr inbounds nuw i8, ptr %.33915178, i64 1 ; 2 uses
  store i8 0, ptr %i.lzt, align 1, !tbaa !31
  %.not13593 = icmp eq i64 %i.lzr, 255            ; 2 uses
  %.sroa.gep14615 = getelementptr inbounds nuw i8, ptr %.33915178, i64 2 ; 2 uses
  %.neg13594.sroa.sel = select i1 %.not13593, ptr %.sroa.gep14615, ptr %i.lzt ; 2 uses
  %i.lzu = lshr i64 %i.lzj, 48
  %i.lzv = trunc i64 %i.lzu to i8
  store i8 %i.lzv, ptr %.neg13594.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15512 = getelementptr inbounds nuw i8, ptr %.33915178, i64 3
  %.neg13594.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13593, ptr %.sroa.gep15512, ptr %.sroa.gep14615
  store i8 0, ptr %.neg13594.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.lzw = and i64 %i.lzj, 71776119061217280
  %.not13595 = icmp eq i64 %i.lzw, 71776119061217280
  %.neg13596 = select i1 %.not13595, i64 2, i64 1
  %i.lzx = getelementptr inbounds nuw i8, ptr %.neg13594.sroa.sel, i64 %.neg13596 ; 4 uses
  %i.lzy = lshr i64 %i.lzj, 40
  %i.lzz = trunc i64 %i.lzy to i8
  store i8 %i.lzz, ptr %i.lzx, align 1, !tbaa !31
  %i.maa = getelementptr inbounds nuw i8, ptr %i.lzx, i64 1 ; 2 uses
  store i8 0, ptr %i.maa, align 1, !tbaa !31
  %i.mab = and i64 %i.lzj, 280375465082880
  %.not13597 = icmp eq i64 %i.mab, 280375465082880 ; 2 uses
  %.sroa.gep14617 = getelementptr inbounds nuw i8, ptr %i.lzx, i64 2 ; 2 uses
  %.neg13598.sroa.sel = select i1 %.not13597, ptr %.sroa.gep14617, ptr %i.maa ; 2 uses
  %i.mac = lshr i64 %i.lzj, 32
  %i.mad = trunc i64 %i.mac to i8
  store i8 %i.mad, ptr %.neg13598.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15518 = getelementptr inbounds nuw i8, ptr %i.lzx, i64 3
  %.neg13598.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13597, ptr %.sroa.gep15518, ptr %.sroa.gep14617
  store i8 0, ptr %.neg13598.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mae = and i64 %i.lzj, 1095216660480
  %.not13599 = icmp eq i64 %i.mae, 1095216660480
  %.neg13600 = select i1 %.not13599, i64 2, i64 1
  %i.maf = getelementptr inbounds nuw i8, ptr %.neg13598.sroa.sel, i64 %.neg13600 ; 4 uses
  %i.mag = lshr i64 %i.lzn, 24
  %i.mah = trunc i64 %i.mag to i8
  store i8 %i.mah, ptr %i.maf, align 1, !tbaa !31
  %i.mai = getelementptr inbounds nuw i8, ptr %i.maf, i64 1 ; 2 uses
  store i8 0, ptr %i.mai, align 1, !tbaa !31
  %i.maj = and i64 %i.lzn, 4278190080
  %.not13601 = icmp eq i64 %i.maj, 4278190080     ; 2 uses
  %.sroa.gep14619 = getelementptr inbounds nuw i8, ptr %i.maf, i64 2 ; 2 uses
  %.neg13602.sroa.sel = select i1 %.not13601, ptr %.sroa.gep14619, ptr %i.mai ; 2 uses
  %i.mak = lshr i64 %i.lzn, 16
  %i.mal = trunc i64 %i.mak to i8
  store i8 %i.mal, ptr %.neg13602.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15516 = getelementptr inbounds nuw i8, ptr %i.maf, i64 3
  %.neg13602.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13601, ptr %.sroa.gep15516, ptr %.sroa.gep14619
  store i8 0, ptr %.neg13602.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mam = and i64 %i.lzn, 16711680
  %.not13603 = icmp eq i64 %i.mam, 16711680
  %.neg13604 = select i1 %.not13603, i64 2, i64 1
  %i.man = getelementptr inbounds nuw i8, ptr %.neg13602.sroa.sel, i64 %.neg13604 ; 4 uses
  %i.mao = lshr i64 %i.lzn, 8
  %i.map = trunc i64 %i.mao to i8
  store i8 %i.map, ptr %i.man, align 1, !tbaa !31
  %i.maq = getelementptr inbounds nuw i8, ptr %i.man, i64 1 ; 2 uses
  store i8 0, ptr %i.maq, align 1, !tbaa !31
  %i.mar = and i64 %i.lzn, 65280
  %.not13605 = icmp eq i64 %i.mar, 65280          ; 2 uses
  %.sroa.gep14621 = getelementptr inbounds nuw i8, ptr %i.man, i64 2 ; 2 uses
  %.neg13606.sroa.sel = select i1 %.not13605, ptr %.sroa.gep14621, ptr %i.maq ; 2 uses
  %i.mas = trunc i64 %i.lzn to i8
  store i8 %i.mas, ptr %.neg13606.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15514 = getelementptr inbounds nuw i8, ptr %i.man, i64 3
  %.neg13606.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13605, ptr %.sroa.gep15514, ptr %.sroa.gep14621
  store i8 0, ptr %.neg13606.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mat = and i64 %i.lzn, 255
  %.not13607 = icmp eq i64 %i.mat, 255
  %.neg13608 = select i1 %.not13607, i64 2, i64 1
  %i.mau = getelementptr inbounds nuw i8, ptr %.neg13606.sroa.sel, i64 %.neg13608
  br label %bb.afj

bb.afi:                                           ; preds = %bb.afg
  %i.mav = lshr i64 %i.lzj, 48
  %i.maw = trunc i64 %i.mav to i8
  %i.max = getelementptr inbounds nuw i8, ptr %.33915178, i64 1
  store i8 %i.maw, ptr %i.max, align 1, !tbaa !31
  %i.may = lshr i64 %i.lzj, 40
  %i.maz = trunc i64 %i.may to i8
  %i.mba = getelementptr inbounds nuw i8, ptr %.33915178, i64 2
  store i8 %i.maz, ptr %i.mba, align 1, !tbaa !31
  %i.mbb = lshr i64 %i.lzj, 32
  %i.mbc = trunc i64 %i.mbb to i8
  %i.mbd = getelementptr inbounds nuw i8, ptr %.33915178, i64 3
  store i8 %i.mbc, ptr %i.mbd, align 1, !tbaa !31
  %i.mbe = lshr i64 %i.lzn, 24
  %i.mbf = trunc i64 %i.mbe to i8
  %i.mbg = getelementptr inbounds nuw i8, ptr %.33915178, i64 4
  store i8 %i.mbf, ptr %i.mbg, align 1, !tbaa !31
  %i.mbh = lshr i64 %i.lzn, 16
  %i.mbi = trunc i64 %i.mbh to i8
  %i.mbj = getelementptr inbounds nuw i8, ptr %.33915178, i64 5
  store i8 %i.mbi, ptr %i.mbj, align 1, !tbaa !31
  %i.mbk = lshr i64 %i.lzn, 8
  %i.mbl = trunc i64 %i.mbk to i8
  %i.mbm = getelementptr inbounds nuw i8, ptr %.33915178, i64 6
  store i8 %i.mbl, ptr %i.mbm, align 1, !tbaa !31
  %i.mbn = trunc i64 %i.lzn to i8
  %i.mbo = getelementptr inbounds nuw i8, ptr %.33915178, i64 7
  store i8 %i.mbn, ptr %i.mbo, align 1, !tbaa !31
  %i.mbp = getelementptr inbounds nuw i8, ptr %.33915178, i64 8
  br label %bb.afj

bb.afj:                                           ; preds = %bb.afi, %bb.afh
  %.340 = phi ptr [ %i.mau, %bb.afh ], [ %i.mbp, %bb.afi ]
  %i.mbq = add nsw i32 %i.lzf, 64
  %i.mbr = load i32, ptr %i.lzb, align 4, !tbaa !3
  %i.mbs = zext i32 %i.mbr to i64
  br label %bb.afl

bb.afk:                                           ; preds = %bb.aff
  %i.mbt = zext nneg i32 %i.lze to i64
  %i.mbu = shl i64 %.2251126815177, %i.mbt
  %i.mbv = zext i32 %i.lzh to i64
  %i.mbw = or i64 %i.mbu, %i.mbv
  br label %bb.afl

bb.afl:                                           ; preds = %bb.afk, %bb.afj
  %.22611523 = phi i32 [ %i.mbq, %bb.afj ], [ %i.lzf, %bb.afk ] ; 2 uses
  %.22611269 = phi i64 [ %i.mbs, %bb.afj ], [ %i.mbw, %bb.afk ] ; 2 uses
  %.341 = phi ptr [ %.340, %bb.afj ], [ %.33915178, %bb.afk ] ; 2 uses
  %i.mbx = icmp samesign ugt i32 %.11215179, 511
  br i1 %i.mbx, label %bb.aff, label %._crit_edge15182, !llvm.loop !129

._crit_edge15182:                                 ; preds = %bb.afl, %bb.afe
  %.22511522.lcssa = phi i32 [ %.22411521, %bb.afe ], [ %.22611523, %bb.afl ] ; 2 uses
  %.22511268.lcssa = phi i64 [ %.22411267, %bb.afe ], [ %.22611269, %bb.afl ] ; 2 uses
  %.339.lcssa = phi ptr [ %.338, %bb.afe ], [ %.341, %bb.afl ] ; 13 uses
  %.112.lcssa = phi i32 [ %.111, %bb.afe ], [ %i.lzc, %bb.afl ]
  %i.mby = add nuw nsw i32 %.112.lcssa, %i.lyt
  %i.mbz = zext nneg i8 %i.lys to i64
  %notmask13574 = shl nsw i64 -1, %i.mbz
  %i.mca = trunc i64 %notmask13574 to i32
  %i.mcb = xor i32 %i.mca, -1
  %i.mcc = and i32 %i.lyo, %i.mcb
  %i.mcd = zext nneg i32 %i.mby to i64            ; 2 uses
  %i.mce = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.mcd
  %i.mcf = load i32, ptr %i.mce, align 4, !tbaa !3
  %i.mcg = shl i32 %i.mcf, %i.lyt
  %i.mch = or i32 %i.mcg, %i.mcc                  ; 3 uses
  %i.mci = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.mcj = getelementptr inbounds nuw i8, ptr %i.mci, i64 %i.mcd
  %i.mck = load i8, ptr %i.mcj, align 1, !tbaa !31
  %i.mcl = sext i8 %i.mck to i32
  %i.mcm = add nsw i32 %i.mcl, %i.lyt             ; 2 uses
  %i.mcn = sub nsw i32 %.22511522.lcssa, %i.mcm   ; 4 uses
  %i.mco = icmp slt i32 %i.mcn, 0
  br i1 %i.mco, label %bb.afm, label %bb.afq

bb.afm:                                           ; preds = %._crit_edge15182
  %i.mcp = zext nneg i32 %.22511522.lcssa to i64
  %i.mcq = shl i64 %.22511268.lcssa, %i.mcp
  %i.mcr = sub nsw i32 0, %i.mcn
  %i.mcs = ashr i32 %i.mch, %i.mcr
  %i.mct = sext i32 %i.mcs to i64
  %i.mcu = or i64 %i.mcq, %i.mct                  ; 24 uses
  %i.mcv = and i64 %i.mcu, -9187201950435737472
  %i.mcw = sub i64 -72340172838076674, %i.mcu
  %i.mcx = and i64 %i.mcv, %i.mcw
  %.not13575 = icmp eq i64 %i.mcx, 0
  %i.mcy = lshr i64 %i.mcu, 56                    ; 2 uses
  %i.mcz = trunc nuw i64 %i.mcy to i8
  store i8 %i.mcz, ptr %.339.lcssa, align 1, !tbaa !31
  br i1 %.not13575, label %bb.afo, label %bb.afn

bb.afn:                                           ; preds = %bb.afm
  %i.mda = getelementptr inbounds nuw i8, ptr %.339.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.mda, align 1, !tbaa !31
  %.not13576 = icmp eq i64 %i.mcy, 255            ; 2 uses
  %.sroa.gep14623 = getelementptr inbounds nuw i8, ptr %.339.lcssa, i64 2 ; 2 uses
  %.neg13577.sroa.sel = select i1 %.not13576, ptr %.sroa.gep14623, ptr %i.mda ; 2 uses
  %i.mdb = lshr i64 %i.mcu, 48
  %i.mdc = trunc i64 %i.mdb to i8
  store i8 %i.mdc, ptr %.neg13577.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15520 = getelementptr inbounds nuw i8, ptr %.339.lcssa, i64 3
  %.neg13577.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13576, ptr %.sroa.gep15520, ptr %.sroa.gep14623
  store i8 0, ptr %.neg13577.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mdd = and i64 %i.mcu, 71776119061217280
  %.not13578 = icmp eq i64 %i.mdd, 71776119061217280
  %.neg13579 = select i1 %.not13578, i64 2, i64 1
  %i.mde = getelementptr inbounds nuw i8, ptr %.neg13577.sroa.sel, i64 %.neg13579 ; 4 uses
  %i.mdf = lshr i64 %i.mcu, 40
  %i.mdg = trunc i64 %i.mdf to i8
  store i8 %i.mdg, ptr %i.mde, align 1, !tbaa !31
  %i.mdh = getelementptr inbounds nuw i8, ptr %i.mde, i64 1 ; 2 uses
  store i8 0, ptr %i.mdh, align 1, !tbaa !31
  %i.mdi = and i64 %i.mcu, 280375465082880
  %.not13580 = icmp eq i64 %i.mdi, 280375465082880 ; 2 uses
  %.sroa.gep14625 = getelementptr inbounds nuw i8, ptr %i.mde, i64 2 ; 2 uses
  %.neg13581.sroa.sel = select i1 %.not13580, ptr %.sroa.gep14625, ptr %i.mdh ; 2 uses
  %i.mdj = lshr i64 %i.mcu, 32
  %i.mdk = trunc i64 %i.mdj to i8
  store i8 %i.mdk, ptr %.neg13581.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15526 = getelementptr inbounds nuw i8, ptr %i.mde, i64 3
  %.neg13581.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13580, ptr %.sroa.gep15526, ptr %.sroa.gep14625
  store i8 0, ptr %.neg13581.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mdl = and i64 %i.mcu, 1095216660480
  %.not13582 = icmp eq i64 %i.mdl, 1095216660480
  %.neg13583 = select i1 %.not13582, i64 2, i64 1
  %i.mdm = getelementptr inbounds nuw i8, ptr %.neg13581.sroa.sel, i64 %.neg13583 ; 4 uses
  %i.mdn = lshr i64 %i.mcu, 24
  %i.mdo = trunc i64 %i.mdn to i8
  store i8 %i.mdo, ptr %i.mdm, align 1, !tbaa !31
  %i.mdp = getelementptr inbounds nuw i8, ptr %i.mdm, i64 1 ; 2 uses
  store i8 0, ptr %i.mdp, align 1, !tbaa !31
  %i.mdq = and i64 %i.mcu, 4278190080
  %.not13584 = icmp eq i64 %i.mdq, 4278190080     ; 2 uses
  %.sroa.gep14627 = getelementptr inbounds nuw i8, ptr %i.mdm, i64 2 ; 2 uses
  %.neg13585.sroa.sel = select i1 %.not13584, ptr %.sroa.gep14627, ptr %i.mdp ; 2 uses
  %i.mdr = lshr i64 %i.mcu, 16
  %i.mds = trunc i64 %i.mdr to i8
  store i8 %i.mds, ptr %.neg13585.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15524 = getelementptr inbounds nuw i8, ptr %i.mdm, i64 3
  %.neg13585.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13584, ptr %.sroa.gep15524, ptr %.sroa.gep14627
  store i8 0, ptr %.neg13585.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mdt = and i64 %i.mcu, 16711680
  %.not13586 = icmp eq i64 %i.mdt, 16711680
  %.neg13587 = select i1 %.not13586, i64 2, i64 1
  %i.mdu = getelementptr inbounds nuw i8, ptr %.neg13585.sroa.sel, i64 %.neg13587 ; 4 uses
  %i.mdv = lshr i64 %i.mcu, 8
  %i.mdw = trunc i64 %i.mdv to i8
  store i8 %i.mdw, ptr %i.mdu, align 1, !tbaa !31
  %i.mdx = getelementptr inbounds nuw i8, ptr %i.mdu, i64 1 ; 2 uses
  store i8 0, ptr %i.mdx, align 1, !tbaa !31
  %i.mdy = and i64 %i.mcu, 65280
  %.not13588 = icmp eq i64 %i.mdy, 65280          ; 2 uses
  %.sroa.gep14629 = getelementptr inbounds nuw i8, ptr %i.mdu, i64 2 ; 2 uses
  %.neg13589.sroa.sel = select i1 %.not13588, ptr %.sroa.gep14629, ptr %i.mdx ; 2 uses
  %i.mdz = trunc i64 %i.mcu to i8
  store i8 %i.mdz, ptr %.neg13589.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15522 = getelementptr inbounds nuw i8, ptr %i.mdu, i64 3
  %.neg13589.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13588, ptr %.sroa.gep15522, ptr %.sroa.gep14629
  store i8 0, ptr %.neg13589.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mea = and i64 %i.mcu, 255
  %.not13590 = icmp eq i64 %i.mea, 255
  %.neg13591 = select i1 %.not13590, i64 2, i64 1
  %i.meb = getelementptr inbounds nuw i8, ptr %.neg13589.sroa.sel, i64 %.neg13591
  br label %bb.afp

bb.afo:                                           ; preds = %bb.afm
  %i.mec = lshr i64 %i.mcu, 48
  %i.med = trunc i64 %i.mec to i8
  %i.mee = getelementptr inbounds nuw i8, ptr %.339.lcssa, i64 1
  store i8 %i.med, ptr %i.mee, align 1, !tbaa !31
  %i.mef = lshr i64 %i.mcu, 40
  %i.meg = trunc i64 %i.mef to i8
  %i.meh = getelementptr inbounds nuw i8, ptr %.339.lcssa, i64 2
  store i8 %i.meg, ptr %i.meh, align 1, !tbaa !31
  %i.mei = lshr i64 %i.mcu, 32
  %i.mej = trunc i64 %i.mei to i8
  %i.mek = getelementptr inbounds nuw i8, ptr %.339.lcssa, i64 3
  store i8 %i.mej, ptr %i.mek, align 1, !tbaa !31
  %i.mel = lshr i64 %i.mcu, 24
  %i.mem = trunc i64 %i.mel to i8
  %i.men = getelementptr inbounds nuw i8, ptr %.339.lcssa, i64 4
  store i8 %i.mem, ptr %i.men, align 1, !tbaa !31
  %i.meo = lshr i64 %i.mcu, 16
  %i.mep = trunc i64 %i.meo to i8
  %i.meq = getelementptr inbounds nuw i8, ptr %.339.lcssa, i64 5
  store i8 %i.mep, ptr %i.meq, align 1, !tbaa !31
  %i.mer = lshr i64 %i.mcu, 8
  %i.mes = trunc i64 %i.mer to i8
  %i.met = getelementptr inbounds nuw i8, ptr %.339.lcssa, i64 6
  store i8 %i.mes, ptr %i.met, align 1, !tbaa !31
  %i.meu = trunc i64 %i.mcu to i8
  %i.mev = getelementptr inbounds nuw i8, ptr %.339.lcssa, i64 7
  store i8 %i.meu, ptr %i.mev, align 1, !tbaa !31
  %i.mew = getelementptr inbounds nuw i8, ptr %.339.lcssa, i64 8
  br label %bb.afp

bb.afp:                                           ; preds = %bb.afo, %bb.afn
  %.342 = phi ptr [ %i.meb, %bb.afn ], [ %i.mew, %bb.afo ]
  %i.mex = add nsw i32 %i.mcn, 64
  %i.mey = sext i32 %i.mch to i64
  br label %bb.afr

bb.afq:                                           ; preds = %._crit_edge15182
  %i.mez = zext nneg i32 %i.mcm to i64
  %i.mfa = shl i64 %.22511268.lcssa, %i.mez
  %i.mfb = sext i32 %i.mch to i64
  %i.mfc = or i64 %i.mfa, %i.mfb
  br label %bb.afr

bb.afr:                                           ; preds = %bb.afp, %bb.afq, %bb.afb
  %.22811525 = phi i32 [ %.22411521, %bb.afb ], [ %i.mex, %bb.afp ], [ %i.mcn, %bb.afq ] ; 3 uses
  %.22811271 = phi i64 [ %.22411267, %bb.afb ], [ %i.mey, %bb.afp ], [ %i.mfc, %bb.afq ] ; 3 uses
  %.344 = phi ptr [ %.338, %bb.afb ], [ %.342, %bb.afp ], [ %.339.lcssa, %bb.afq ] ; 3 uses
  %.113 = phi i32 [ %i.lyl, %bb.afb ], [ 0, %bb.afp ], [ 0, %bb.afq ] ; 4 uses
  %i.mfd = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.mfe = load i16, ptr %i.mfd, align 2, !tbaa !79 ; 2 uses
  %i.mff = icmp eq i16 %i.mfe, 0
  br i1 %i.mff, label %bb.afs, label %bb.aft

bb.afs:                                           ; preds = %bb.afr
  %i.mfg = add nuw nsw i32 %.113, 16
  br label %bb.agi

bb.aft:                                           ; preds = %bb.afr
  %i.mfh = sext i16 %i.mfe to i32                 ; 2 uses
  %i.mfi = ashr i32 %i.mfh, 31                    ; 2 uses
  %i.mfj = add nsw i32 %i.mfi, %i.mfh             ; 2 uses
  %i.mfk = xor i32 %i.mfj, %i.mfi
  %i.mfl = sext i32 %i.mfk to i64
  %i.mfm = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.mfl
  %i.mfn = load i8, ptr %i.mfm, align 1, !tbaa !31 ; 2 uses
  %i.mfo = zext i8 %i.mfn to i32                  ; 4 uses
  %i.mfp = icmp slt i32 %i.f, %i.mfo
  br i1 %i.mfp, label %bb.afu, label %bb.afv

bb.afu:                                           ; preds = %bb.aft
  %i.mfq = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.mfr = load ptr, ptr %i.mfq, align 8, !tbaa !7 ; 2 uses
  %i.mfs = getelementptr inbounds nuw i8, ptr %i.mfr, i64 40
  store i32 6, ptr %i.mfs, align 8, !tbaa !26
  %i.mft = load ptr, ptr %i.mfr, align 8, !tbaa !32
  tail call void %i.mft(ptr noundef nonnull %i.mfq) #7
  br label %bb.afv

bb.afv:                                           ; preds = %bb.afu, %bb.aft
  %i.mfu = icmp samesign ugt i32 %.113, 255
  br i1 %i.mfu, label %.lr.ph15192, label %._crit_edge15193

.lr.ph15192:                                      ; preds = %bb.afv
  %i.mfv = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.mfw = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.afw

bb.afw:                                           ; preds = %.lr.ph15192, %bb.agc
  %.11415190 = phi i32 [ %.113, %.lr.ph15192 ], [ %i.mfx, %bb.agc ] ; 2 uses
  %.34515189 = phi ptr [ %.344, %.lr.ph15192 ], [ %.347, %bb.agc ] ; 13 uses
  %.2291127215188 = phi i64 [ %.22811271, %.lr.ph15192 ], [ %.23011273, %bb.agc ] ; 2 uses
  %.2291152615187 = phi i32 [ %.22811525, %.lr.ph15192 ], [ %.23011527, %bb.agc ] ; 2 uses
  %i.mfx = add nsw i32 %.11415190, -256           ; 2 uses
  %i.mfy = load i8, ptr %i.mfv, align 4, !tbaa !31
  %i.mfz = sext i8 %i.mfy to i32                  ; 2 uses
  %i.mga = sub nsw i32 %.2291152615187, %i.mfz    ; 4 uses
  %i.mgb = icmp slt i32 %i.mga, 0
  %i.mgc = load i32, ptr %i.mfw, align 4, !tbaa !3 ; 2 uses
  br i1 %i.mgb, label %bb.afx, label %bb.agb

bb.afx:                                           ; preds = %bb.afw
  %i.mgd = zext nneg i32 %.2291152615187 to i64
  %i.mge = shl i64 %.2291127215188, %i.mgd        ; 11 uses
  %i.mgf = sub nsw i32 0, %i.mga
  %i.mgg = lshr i32 %i.mgc, %i.mgf
  %i.mgh = zext nneg i32 %i.mgg to i64
  %i.mgi = or i64 %i.mge, %i.mgh                  ; 14 uses
  %i.mgj = and i64 %i.mgi, -9187201950435737472
  %i.mgk = sub i64 -72340172838076674, %i.mgi
  %i.mgl = and i64 %i.mgj, %i.mgk
  %.not13627 = icmp eq i64 %i.mgl, 0
  %i.mgm = lshr i64 %i.mge, 56                    ; 2 uses
  %i.mgn = trunc nuw i64 %i.mgm to i8
  store i8 %i.mgn, ptr %.34515189, align 1, !tbaa !31
  br i1 %.not13627, label %bb.afz, label %bb.afy

bb.afy:                                           ; preds = %bb.afx
  %i.mgo = getelementptr inbounds nuw i8, ptr %.34515189, i64 1 ; 2 uses
  store i8 0, ptr %i.mgo, align 1, !tbaa !31
  %.not13628 = icmp eq i64 %i.mgm, 255            ; 2 uses
  %.sroa.gep14631 = getelementptr inbounds nuw i8, ptr %.34515189, i64 2 ; 2 uses
  %.neg13629.sroa.sel = select i1 %.not13628, ptr %.sroa.gep14631, ptr %i.mgo ; 2 uses
  %i.mgp = lshr i64 %i.mge, 48
  %i.mgq = trunc i64 %i.mgp to i8
  store i8 %i.mgq, ptr %.neg13629.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15496 = getelementptr inbounds nuw i8, ptr %.34515189, i64 3
  %.neg13629.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13628, ptr %.sroa.gep15496, ptr %.sroa.gep14631
  store i8 0, ptr %.neg13629.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mgr = and i64 %i.mge, 71776119061217280
  %.not13630 = icmp eq i64 %i.mgr, 71776119061217280
  %.neg13631 = select i1 %.not13630, i64 2, i64 1
  %i.mgs = getelementptr inbounds nuw i8, ptr %.neg13629.sroa.sel, i64 %.neg13631 ; 4 uses
  %i.mgt = lshr i64 %i.mge, 40
  %i.mgu = trunc i64 %i.mgt to i8
  store i8 %i.mgu, ptr %i.mgs, align 1, !tbaa !31
  %i.mgv = getelementptr inbounds nuw i8, ptr %i.mgs, i64 1 ; 2 uses
  store i8 0, ptr %i.mgv, align 1, !tbaa !31
  %i.mgw = and i64 %i.mge, 280375465082880
  %.not13632 = icmp eq i64 %i.mgw, 280375465082880 ; 2 uses
  %.sroa.gep14633 = getelementptr inbounds nuw i8, ptr %i.mgs, i64 2 ; 2 uses
  %.neg13633.sroa.sel = select i1 %.not13632, ptr %.sroa.gep14633, ptr %i.mgv ; 2 uses
  %i.mgx = lshr i64 %i.mge, 32
  %i.mgy = trunc i64 %i.mgx to i8
  store i8 %i.mgy, ptr %.neg13633.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15502 = getelementptr inbounds nuw i8, ptr %i.mgs, i64 3
  %.neg13633.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13632, ptr %.sroa.gep15502, ptr %.sroa.gep14633
  store i8 0, ptr %.neg13633.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mgz = and i64 %i.mge, 1095216660480
  %.not13634 = icmp eq i64 %i.mgz, 1095216660480
  %.neg13635 = select i1 %.not13634, i64 2, i64 1
  %i.mha = getelementptr inbounds nuw i8, ptr %.neg13633.sroa.sel, i64 %.neg13635 ; 4 uses
  %i.mhb = lshr i64 %i.mgi, 24
  %i.mhc = trunc i64 %i.mhb to i8
  store i8 %i.mhc, ptr %i.mha, align 1, !tbaa !31
  %i.mhd = getelementptr inbounds nuw i8, ptr %i.mha, i64 1 ; 2 uses
  store i8 0, ptr %i.mhd, align 1, !tbaa !31
  %i.mhe = and i64 %i.mgi, 4278190080
  %.not13636 = icmp eq i64 %i.mhe, 4278190080     ; 2 uses
  %.sroa.gep14635 = getelementptr inbounds nuw i8, ptr %i.mha, i64 2 ; 2 uses
  %.neg13637.sroa.sel = select i1 %.not13636, ptr %.sroa.gep14635, ptr %i.mhd ; 2 uses
  %i.mhf = lshr i64 %i.mgi, 16
  %i.mhg = trunc i64 %i.mhf to i8
  store i8 %i.mhg, ptr %.neg13637.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15500 = getelementptr inbounds nuw i8, ptr %i.mha, i64 3
  %.neg13637.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13636, ptr %.sroa.gep15500, ptr %.sroa.gep14635
  store i8 0, ptr %.neg13637.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mhh = and i64 %i.mgi, 16711680
  %.not13638 = icmp eq i64 %i.mhh, 16711680
  %.neg13639 = select i1 %.not13638, i64 2, i64 1
  %i.mhi = getelementptr inbounds nuw i8, ptr %.neg13637.sroa.sel, i64 %.neg13639 ; 4 uses
  %i.mhj = lshr i64 %i.mgi, 8
  %i.mhk = trunc i64 %i.mhj to i8
  store i8 %i.mhk, ptr %i.mhi, align 1, !tbaa !31
  %i.mhl = getelementptr inbounds nuw i8, ptr %i.mhi, i64 1 ; 2 uses
  store i8 0, ptr %i.mhl, align 1, !tbaa !31
  %i.mhm = and i64 %i.mgi, 65280
  %.not13640 = icmp eq i64 %i.mhm, 65280          ; 2 uses
  %.sroa.gep14637 = getelementptr inbounds nuw i8, ptr %i.mhi, i64 2 ; 2 uses
  %.neg13641.sroa.sel = select i1 %.not13640, ptr %.sroa.gep14637, ptr %i.mhl ; 2 uses
  %i.mhn = trunc i64 %i.mgi to i8
  store i8 %i.mhn, ptr %.neg13641.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15498 = getelementptr inbounds nuw i8, ptr %i.mhi, i64 3
  %.neg13641.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13640, ptr %.sroa.gep15498, ptr %.sroa.gep14637
  store i8 0, ptr %.neg13641.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mho = and i64 %i.mgi, 255
  %.not13642 = icmp eq i64 %i.mho, 255
  %.neg13643 = select i1 %.not13642, i64 2, i64 1
  %i.mhp = getelementptr inbounds nuw i8, ptr %.neg13641.sroa.sel, i64 %.neg13643
  br label %bb.aga

bb.afz:                                           ; preds = %bb.afx
  %i.mhq = lshr i64 %i.mge, 48
  %i.mhr = trunc i64 %i.mhq to i8
  %i.mhs = getelementptr inbounds nuw i8, ptr %.34515189, i64 1
  store i8 %i.mhr, ptr %i.mhs, align 1, !tbaa !31
  %i.mht = lshr i64 %i.mge, 40
  %i.mhu = trunc i64 %i.mht to i8
  %i.mhv = getelementptr inbounds nuw i8, ptr %.34515189, i64 2
  store i8 %i.mhu, ptr %i.mhv, align 1, !tbaa !31
  %i.mhw = lshr i64 %i.mge, 32
  %i.mhx = trunc i64 %i.mhw to i8
  %i.mhy = getelementptr inbounds nuw i8, ptr %.34515189, i64 3
  store i8 %i.mhx, ptr %i.mhy, align 1, !tbaa !31
  %i.mhz = lshr i64 %i.mgi, 24
  %i.mia = trunc i64 %i.mhz to i8
  %i.mib = getelementptr inbounds nuw i8, ptr %.34515189, i64 4
  store i8 %i.mia, ptr %i.mib, align 1, !tbaa !31
  %i.mic = lshr i64 %i.mgi, 16
  %i.mid = trunc i64 %i.mic to i8
  %i.mie = getelementptr inbounds nuw i8, ptr %.34515189, i64 5
  store i8 %i.mid, ptr %i.mie, align 1, !tbaa !31
  %i.mif = lshr i64 %i.mgi, 8
  %i.mig = trunc i64 %i.mif to i8
  %i.mih = getelementptr inbounds nuw i8, ptr %.34515189, i64 6
  store i8 %i.mig, ptr %i.mih, align 1, !tbaa !31
  %i.mii = trunc i64 %i.mgi to i8
  %i.mij = getelementptr inbounds nuw i8, ptr %.34515189, i64 7
  store i8 %i.mii, ptr %i.mij, align 1, !tbaa !31
  %i.mik = getelementptr inbounds nuw i8, ptr %.34515189, i64 8
  br label %bb.aga

bb.aga:                                           ; preds = %bb.afz, %bb.afy
  %.346 = phi ptr [ %i.mhp, %bb.afy ], [ %i.mik, %bb.afz ]
  %i.mil = add nsw i32 %i.mga, 64
  %i.mim = load i32, ptr %i.mfw, align 4, !tbaa !3
  %i.min = zext i32 %i.mim to i64
  br label %bb.agc

bb.agb:                                           ; preds = %bb.afw
  %i.mio = zext nneg i32 %i.mfz to i64
  %i.mip = shl i64 %.2291127215188, %i.mio
  %i.miq = zext i32 %i.mgc to i64
  %i.mir = or i64 %i.mip, %i.miq
  br label %bb.agc

bb.agc:                                           ; preds = %bb.agb, %bb.aga
  %.23011527 = phi i32 [ %i.mil, %bb.aga ], [ %i.mga, %bb.agb ] ; 2 uses
  %.23011273 = phi i64 [ %i.min, %bb.aga ], [ %i.mir, %bb.agb ] ; 2 uses
  %.347 = phi ptr [ %.346, %bb.aga ], [ %.34515189, %bb.agb ] ; 2 uses
  %i.mis = icmp samesign ugt i32 %.11415190, 511
  br i1 %i.mis, label %bb.afw, label %._crit_edge15193, !llvm.loop !130

._crit_edge15193:                                 ; preds = %bb.agc, %bb.afv
  %.22911526.lcssa = phi i32 [ %.22811525, %bb.afv ], [ %.23011527, %bb.agc ] ; 2 uses
  %.22911272.lcssa = phi i64 [ %.22811271, %bb.afv ], [ %.23011273, %bb.agc ] ; 2 uses
  %.345.lcssa = phi ptr [ %.344, %bb.afv ], [ %.347, %bb.agc ] ; 13 uses
  %.114.lcssa = phi i32 [ %.113, %bb.afv ], [ %i.mfx, %bb.agc ]
  %i.mit = add nuw nsw i32 %.114.lcssa, %i.mfo
  %i.miu = zext nneg i8 %i.mfn to i64
  %notmask13609 = shl nsw i64 -1, %i.miu
  %i.miv = trunc i64 %notmask13609 to i32
  %i.miw = xor i32 %i.miv, -1
  %i.mix = and i32 %i.mfj, %i.miw
  %i.miy = zext nneg i32 %i.mit to i64            ; 2 uses
  %i.miz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.miy
  %i.mja = load i32, ptr %i.miz, align 4, !tbaa !3
  %i.mjb = shl i32 %i.mja, %i.mfo
  %i.mjc = or i32 %i.mjb, %i.mix                  ; 3 uses
  %i.mjd = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.mje = getelementptr inbounds nuw i8, ptr %i.mjd, i64 %i.miy
  %i.mjf = load i8, ptr %i.mje, align 1, !tbaa !31
  %i.mjg = sext i8 %i.mjf to i32
  %i.mjh = add nsw i32 %i.mjg, %i.mfo             ; 2 uses
  %i.mji = sub nsw i32 %.22911526.lcssa, %i.mjh   ; 4 uses
  %i.mjj = icmp slt i32 %i.mji, 0
  br i1 %i.mjj, label %bb.agd, label %bb.agh

bb.agd:                                           ; preds = %._crit_edge15193
  %i.mjk = zext nneg i32 %.22911526.lcssa to i64
  %i.mjl = shl i64 %.22911272.lcssa, %i.mjk
  %i.mjm = sub nsw i32 0, %i.mji
  %i.mjn = ashr i32 %i.mjc, %i.mjm
  %i.mjo = sext i32 %i.mjn to i64
  %i.mjp = or i64 %i.mjl, %i.mjo                  ; 24 uses
  %i.mjq = and i64 %i.mjp, -9187201950435737472
  %i.mjr = sub i64 -72340172838076674, %i.mjp
  %i.mjs = and i64 %i.mjq, %i.mjr
  %.not13610 = icmp eq i64 %i.mjs, 0
  %i.mjt = lshr i64 %i.mjp, 56                    ; 2 uses
  %i.mju = trunc nuw i64 %i.mjt to i8
  store i8 %i.mju, ptr %.345.lcssa, align 1, !tbaa !31
  br i1 %.not13610, label %bb.agf, label %bb.age

bb.age:                                           ; preds = %bb.agd
  %i.mjv = getelementptr inbounds nuw i8, ptr %.345.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.mjv, align 1, !tbaa !31
  %.not13611 = icmp eq i64 %i.mjt, 255            ; 2 uses
  %.sroa.gep14639 = getelementptr inbounds nuw i8, ptr %.345.lcssa, i64 2 ; 2 uses
  %.neg13612.sroa.sel = select i1 %.not13611, ptr %.sroa.gep14639, ptr %i.mjv ; 2 uses
  %i.mjw = lshr i64 %i.mjp, 48
  %i.mjx = trunc i64 %i.mjw to i8
  store i8 %i.mjx, ptr %.neg13612.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15504 = getelementptr inbounds nuw i8, ptr %.345.lcssa, i64 3
  %.neg13612.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13611, ptr %.sroa.gep15504, ptr %.sroa.gep14639
  store i8 0, ptr %.neg13612.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mjy = and i64 %i.mjp, 71776119061217280
  %.not13613 = icmp eq i64 %i.mjy, 71776119061217280
  %.neg13614 = select i1 %.not13613, i64 2, i64 1
  %i.mjz = getelementptr inbounds nuw i8, ptr %.neg13612.sroa.sel, i64 %.neg13614 ; 4 uses
  %i.mka = lshr i64 %i.mjp, 40
  %i.mkb = trunc i64 %i.mka to i8
  store i8 %i.mkb, ptr %i.mjz, align 1, !tbaa !31
  %i.mkc = getelementptr inbounds nuw i8, ptr %i.mjz, i64 1 ; 2 uses
  store i8 0, ptr %i.mkc, align 1, !tbaa !31
  %i.mkd = and i64 %i.mjp, 280375465082880
  %.not13615 = icmp eq i64 %i.mkd, 280375465082880 ; 2 uses
  %.sroa.gep14641 = getelementptr inbounds nuw i8, ptr %i.mjz, i64 2 ; 2 uses
  %.neg13616.sroa.sel = select i1 %.not13615, ptr %.sroa.gep14641, ptr %i.mkc ; 2 uses
  %i.mke = lshr i64 %i.mjp, 32
  %i.mkf = trunc i64 %i.mke to i8
  store i8 %i.mkf, ptr %.neg13616.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15510 = getelementptr inbounds nuw i8, ptr %i.mjz, i64 3
  %.neg13616.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13615, ptr %.sroa.gep15510, ptr %.sroa.gep14641
  store i8 0, ptr %.neg13616.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mkg = and i64 %i.mjp, 1095216660480
  %.not13617 = icmp eq i64 %i.mkg, 1095216660480
  %.neg13618 = select i1 %.not13617, i64 2, i64 1
  %i.mkh = getelementptr inbounds nuw i8, ptr %.neg13616.sroa.sel, i64 %.neg13618 ; 4 uses
  %i.mki = lshr i64 %i.mjp, 24
  %i.mkj = trunc i64 %i.mki to i8
  store i8 %i.mkj, ptr %i.mkh, align 1, !tbaa !31
  %i.mkk = getelementptr inbounds nuw i8, ptr %i.mkh, i64 1 ; 2 uses
  store i8 0, ptr %i.mkk, align 1, !tbaa !31
  %i.mkl = and i64 %i.mjp, 4278190080
  %.not13619 = icmp eq i64 %i.mkl, 4278190080     ; 2 uses
  %.sroa.gep14643 = getelementptr inbounds nuw i8, ptr %i.mkh, i64 2 ; 2 uses
  %.neg13620.sroa.sel = select i1 %.not13619, ptr %.sroa.gep14643, ptr %i.mkk ; 2 uses
  %i.mkm = lshr i64 %i.mjp, 16
  %i.mkn = trunc i64 %i.mkm to i8
  store i8 %i.mkn, ptr %.neg13620.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15508 = getelementptr inbounds nuw i8, ptr %i.mkh, i64 3
  %.neg13620.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13619, ptr %.sroa.gep15508, ptr %.sroa.gep14643
  store i8 0, ptr %.neg13620.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mko = and i64 %i.mjp, 16711680
  %.not13621 = icmp eq i64 %i.mko, 16711680
  %.neg13622 = select i1 %.not13621, i64 2, i64 1
  %i.mkp = getelementptr inbounds nuw i8, ptr %.neg13620.sroa.sel, i64 %.neg13622 ; 4 uses
  %i.mkq = lshr i64 %i.mjp, 8
  %i.mkr = trunc i64 %i.mkq to i8
  store i8 %i.mkr, ptr %i.mkp, align 1, !tbaa !31
  %i.mks = getelementptr inbounds nuw i8, ptr %i.mkp, i64 1 ; 2 uses
  store i8 0, ptr %i.mks, align 1, !tbaa !31
  %i.mkt = and i64 %i.mjp, 65280
  %.not13623 = icmp eq i64 %i.mkt, 65280          ; 2 uses
  %.sroa.gep14645 = getelementptr inbounds nuw i8, ptr %i.mkp, i64 2 ; 2 uses
  %.neg13624.sroa.sel = select i1 %.not13623, ptr %.sroa.gep14645, ptr %i.mks ; 2 uses
  %i.mku = trunc i64 %i.mjp to i8
  store i8 %i.mku, ptr %.neg13624.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15506 = getelementptr inbounds nuw i8, ptr %i.mkp, i64 3
  %.neg13624.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13623, ptr %.sroa.gep15506, ptr %.sroa.gep14645
  store i8 0, ptr %.neg13624.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mkv = and i64 %i.mjp, 255
  %.not13625 = icmp eq i64 %i.mkv, 255
  %.neg13626 = select i1 %.not13625, i64 2, i64 1
  %i.mkw = getelementptr inbounds nuw i8, ptr %.neg13624.sroa.sel, i64 %.neg13626
  br label %bb.agg

bb.agf:                                           ; preds = %bb.agd
  %i.mkx = lshr i64 %i.mjp, 48
  %i.mky = trunc i64 %i.mkx to i8
  %i.mkz = getelementptr inbounds nuw i8, ptr %.345.lcssa, i64 1
  store i8 %i.mky, ptr %i.mkz, align 1, !tbaa !31
  %i.mla = lshr i64 %i.mjp, 40
  %i.mlb = trunc i64 %i.mla to i8
  %i.mlc = getelementptr inbounds nuw i8, ptr %.345.lcssa, i64 2
  store i8 %i.mlb, ptr %i.mlc, align 1, !tbaa !31
  %i.mld = lshr i64 %i.mjp, 32
  %i.mle = trunc i64 %i.mld to i8
  %i.mlf = getelementptr inbounds nuw i8, ptr %.345.lcssa, i64 3
  store i8 %i.mle, ptr %i.mlf, align 1, !tbaa !31
  %i.mlg = lshr i64 %i.mjp, 24
  %i.mlh = trunc i64 %i.mlg to i8
  %i.mli = getelementptr inbounds nuw i8, ptr %.345.lcssa, i64 4
  store i8 %i.mlh, ptr %i.mli, align 1, !tbaa !31
  %i.mlj = lshr i64 %i.mjp, 16
  %i.mlk = trunc i64 %i.mlj to i8
  %i.mll = getelementptr inbounds nuw i8, ptr %.345.lcssa, i64 5
  store i8 %i.mlk, ptr %i.mll, align 1, !tbaa !31
  %i.mlm = lshr i64 %i.mjp, 8
  %i.mln = trunc i64 %i.mlm to i8
  %i.mlo = getelementptr inbounds nuw i8, ptr %.345.lcssa, i64 6
  store i8 %i.mln, ptr %i.mlo, align 1, !tbaa !31
  %i.mlp = trunc i64 %i.mjp to i8
  %i.mlq = getelementptr inbounds nuw i8, ptr %.345.lcssa, i64 7
  store i8 %i.mlp, ptr %i.mlq, align 1, !tbaa !31
  %i.mlr = getelementptr inbounds nuw i8, ptr %.345.lcssa, i64 8
  br label %bb.agg

bb.agg:                                           ; preds = %bb.agf, %bb.age
  %.348 = phi ptr [ %i.mkw, %bb.age ], [ %i.mlr, %bb.agf ]
  %i.mls = add nsw i32 %i.mji, 64
  %i.mlt = sext i32 %i.mjc to i64
  br label %bb.agi

bb.agh:                                           ; preds = %._crit_edge15193
  %i.mlu = zext nneg i32 %i.mjh to i64
  %i.mlv = shl i64 %.22911272.lcssa, %i.mlu
  %i.mlw = sext i32 %i.mjc to i64
  %i.mlx = or i64 %i.mlv, %i.mlw
  br label %bb.agi

bb.agi:                                           ; preds = %bb.agg, %bb.agh, %bb.afs
  %.23211529 = phi i32 [ %.22811525, %bb.afs ], [ %i.mls, %bb.agg ], [ %i.mji, %bb.agh ] ; 3 uses
  %.23211275 = phi i64 [ %.22811271, %bb.afs ], [ %i.mlt, %bb.agg ], [ %i.mlx, %bb.agh ] ; 3 uses
  %.350 = phi ptr [ %.344, %bb.afs ], [ %.348, %bb.agg ], [ %.345.lcssa, %bb.agh ] ; 3 uses
  %.115 = phi i32 [ %i.mfg, %bb.afs ], [ 0, %bb.agg ], [ 0, %bb.agh ] ; 4 uses
  %i.mly = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.mlz = load i16, ptr %i.mly, align 2, !tbaa !79 ; 2 uses
  %i.mma = icmp eq i16 %i.mlz, 0
  br i1 %i.mma, label %bb.agj, label %bb.agk

bb.agj:                                           ; preds = %bb.agi
  %i.mmb = add nuw nsw i32 %.115, 16
  br label %bb.agz

bb.agk:                                           ; preds = %bb.agi
  %i.mmc = sext i16 %i.mlz to i32                 ; 2 uses
  %i.mmd = ashr i32 %i.mmc, 31                    ; 2 uses
  %i.mme = add nsw i32 %i.mmd, %i.mmc             ; 2 uses
  %i.mmf = xor i32 %i.mme, %i.mmd
  %i.mmg = sext i32 %i.mmf to i64
  %i.mmh = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.mmg
  %i.mmi = load i8, ptr %i.mmh, align 1, !tbaa !31 ; 2 uses
  %i.mmj = zext i8 %i.mmi to i32                  ; 4 uses
  %i.mmk = icmp slt i32 %i.f, %i.mmj
  br i1 %i.mmk, label %bb.agl, label %bb.agm

bb.agl:                                           ; preds = %bb.agk
  %i.mml = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.mmm = load ptr, ptr %i.mml, align 8, !tbaa !7 ; 2 uses
  %i.mmn = getelementptr inbounds nuw i8, ptr %i.mmm, i64 40
  store i32 6, ptr %i.mmn, align 8, !tbaa !26
  %i.mmo = load ptr, ptr %i.mmm, align 8, !tbaa !32
  tail call void %i.mmo(ptr noundef nonnull %i.mml) #7
  br label %bb.agm

bb.agm:                                           ; preds = %bb.agl, %bb.agk
  %i.mmp = icmp samesign ugt i32 %.115, 255
  br i1 %i.mmp, label %.lr.ph15203, label %._crit_edge15204

.lr.ph15203:                                      ; preds = %bb.agm
  %i.mmq = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.mmr = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.agn

bb.agn:                                           ; preds = %.lr.ph15203, %bb.agt
  %.11615201 = phi i32 [ %.115, %.lr.ph15203 ], [ %i.mms, %bb.agt ] ; 2 uses
  %.35115200 = phi ptr [ %.350, %.lr.ph15203 ], [ %.353, %bb.agt ] ; 13 uses
  %.2331127615199 = phi i64 [ %.23211275, %.lr.ph15203 ], [ %.23411277, %bb.agt ] ; 2 uses
  %.2331153015198 = phi i32 [ %.23211529, %.lr.ph15203 ], [ %.23411531, %bb.agt ] ; 2 uses
  %i.mms = add nsw i32 %.11615201, -256           ; 2 uses
  %i.mmt = load i8, ptr %i.mmq, align 4, !tbaa !31
  %i.mmu = sext i8 %i.mmt to i32                  ; 2 uses
  %i.mmv = sub nsw i32 %.2331153015198, %i.mmu    ; 4 uses
  %i.mmw = icmp slt i32 %i.mmv, 0
  %i.mmx = load i32, ptr %i.mmr, align 4, !tbaa !3 ; 2 uses
  br i1 %i.mmw, label %bb.ago, label %bb.ags

bb.ago:                                           ; preds = %bb.agn
  %i.mmy = zext nneg i32 %.2331153015198 to i64
  %i.mmz = shl i64 %.2331127615199, %i.mmy        ; 11 uses
  %i.mna = sub nsw i32 0, %i.mmv
  %i.mnb = lshr i32 %i.mmx, %i.mna
  %i.mnc = zext nneg i32 %i.mnb to i64
  %i.mnd = or i64 %i.mmz, %i.mnc                  ; 14 uses
  %i.mne = and i64 %i.mnd, -9187201950435737472
  %i.mnf = sub i64 -72340172838076674, %i.mnd
  %i.mng = and i64 %i.mne, %i.mnf
  %.not13662 = icmp eq i64 %i.mng, 0
  %i.mnh = lshr i64 %i.mmz, 56                    ; 2 uses
  %i.mni = trunc nuw i64 %i.mnh to i8
  store i8 %i.mni, ptr %.35115200, align 1, !tbaa !31
  br i1 %.not13662, label %bb.agq, label %bb.agp

bb.agp:                                           ; preds = %bb.ago
  %i.mnj = getelementptr inbounds nuw i8, ptr %.35115200, i64 1 ; 2 uses
  store i8 0, ptr %i.mnj, align 1, !tbaa !31
  %.not13663 = icmp eq i64 %i.mnh, 255            ; 2 uses
  %.sroa.gep14647 = getelementptr inbounds nuw i8, ptr %.35115200, i64 2 ; 2 uses
  %.neg13664.sroa.sel = select i1 %.not13663, ptr %.sroa.gep14647, ptr %i.mnj ; 2 uses
  %i.mnk = lshr i64 %i.mmz, 48
  %i.mnl = trunc i64 %i.mnk to i8
  store i8 %i.mnl, ptr %.neg13664.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15480 = getelementptr inbounds nuw i8, ptr %.35115200, i64 3
  %.neg13664.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13663, ptr %.sroa.gep15480, ptr %.sroa.gep14647
  store i8 0, ptr %.neg13664.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mnm = and i64 %i.mmz, 71776119061217280
  %.not13665 = icmp eq i64 %i.mnm, 71776119061217280
  %.neg13666 = select i1 %.not13665, i64 2, i64 1
  %i.mnn = getelementptr inbounds nuw i8, ptr %.neg13664.sroa.sel, i64 %.neg13666 ; 4 uses
  %i.mno = lshr i64 %i.mmz, 40
  %i.mnp = trunc i64 %i.mno to i8
  store i8 %i.mnp, ptr %i.mnn, align 1, !tbaa !31
  %i.mnq = getelementptr inbounds nuw i8, ptr %i.mnn, i64 1 ; 2 uses
  store i8 0, ptr %i.mnq, align 1, !tbaa !31
  %i.mnr = and i64 %i.mmz, 280375465082880
  %.not13667 = icmp eq i64 %i.mnr, 280375465082880 ; 2 uses
  %.sroa.gep14649 = getelementptr inbounds nuw i8, ptr %i.mnn, i64 2 ; 2 uses
  %.neg13668.sroa.sel = select i1 %.not13667, ptr %.sroa.gep14649, ptr %i.mnq ; 2 uses
  %i.mns = lshr i64 %i.mmz, 32
  %i.mnt = trunc i64 %i.mns to i8
  store i8 %i.mnt, ptr %.neg13668.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15486 = getelementptr inbounds nuw i8, ptr %i.mnn, i64 3
  %.neg13668.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13667, ptr %.sroa.gep15486, ptr %.sroa.gep14649
  store i8 0, ptr %.neg13668.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mnu = and i64 %i.mmz, 1095216660480
  %.not13669 = icmp eq i64 %i.mnu, 1095216660480
  %.neg13670 = select i1 %.not13669, i64 2, i64 1
  %i.mnv = getelementptr inbounds nuw i8, ptr %.neg13668.sroa.sel, i64 %.neg13670 ; 4 uses
  %i.mnw = lshr i64 %i.mnd, 24
  %i.mnx = trunc i64 %i.mnw to i8
  store i8 %i.mnx, ptr %i.mnv, align 1, !tbaa !31
  %i.mny = getelementptr inbounds nuw i8, ptr %i.mnv, i64 1 ; 2 uses
  store i8 0, ptr %i.mny, align 1, !tbaa !31
  %i.mnz = and i64 %i.mnd, 4278190080
  %.not13671 = icmp eq i64 %i.mnz, 4278190080     ; 2 uses
  %.sroa.gep14651 = getelementptr inbounds nuw i8, ptr %i.mnv, i64 2 ; 2 uses
  %.neg13672.sroa.sel = select i1 %.not13671, ptr %.sroa.gep14651, ptr %i.mny ; 2 uses
  %i.moa = lshr i64 %i.mnd, 16
  %i.mob = trunc i64 %i.moa to i8
  store i8 %i.mob, ptr %.neg13672.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15484 = getelementptr inbounds nuw i8, ptr %i.mnv, i64 3
  %.neg13672.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13671, ptr %.sroa.gep15484, ptr %.sroa.gep14651
  store i8 0, ptr %.neg13672.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.moc = and i64 %i.mnd, 16711680
  %.not13673 = icmp eq i64 %i.moc, 16711680
  %.neg13674 = select i1 %.not13673, i64 2, i64 1
  %i.mod = getelementptr inbounds nuw i8, ptr %.neg13672.sroa.sel, i64 %.neg13674 ; 4 uses
  %i.moe = lshr i64 %i.mnd, 8
  %i.mof = trunc i64 %i.moe to i8
  store i8 %i.mof, ptr %i.mod, align 1, !tbaa !31
  %i.mog = getelementptr inbounds nuw i8, ptr %i.mod, i64 1 ; 2 uses
  store i8 0, ptr %i.mog, align 1, !tbaa !31
  %i.moh = and i64 %i.mnd, 65280
  %.not13675 = icmp eq i64 %i.moh, 65280          ; 2 uses
  %.sroa.gep14653 = getelementptr inbounds nuw i8, ptr %i.mod, i64 2 ; 2 uses
  %.neg13676.sroa.sel = select i1 %.not13675, ptr %.sroa.gep14653, ptr %i.mog ; 2 uses
  %i.moi = trunc i64 %i.mnd to i8
  store i8 %i.moi, ptr %.neg13676.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15482 = getelementptr inbounds nuw i8, ptr %i.mod, i64 3
  %.neg13676.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13675, ptr %.sroa.gep15482, ptr %.sroa.gep14653
  store i8 0, ptr %.neg13676.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.moj = and i64 %i.mnd, 255
  %.not13677 = icmp eq i64 %i.moj, 255
  %.neg13678 = select i1 %.not13677, i64 2, i64 1
  %i.mok = getelementptr inbounds nuw i8, ptr %.neg13676.sroa.sel, i64 %.neg13678
  br label %bb.agr

bb.agq:                                           ; preds = %bb.ago
  %i.mol = lshr i64 %i.mmz, 48
  %i.mom = trunc i64 %i.mol to i8
  %i.mon = getelementptr inbounds nuw i8, ptr %.35115200, i64 1
  store i8 %i.mom, ptr %i.mon, align 1, !tbaa !31
  %i.moo = lshr i64 %i.mmz, 40
  %i.mop = trunc i64 %i.moo to i8
  %i.moq = getelementptr inbounds nuw i8, ptr %.35115200, i64 2
  store i8 %i.mop, ptr %i.moq, align 1, !tbaa !31
  %i.mor = lshr i64 %i.mmz, 32
  %i.mos = trunc i64 %i.mor to i8
  %i.mot = getelementptr inbounds nuw i8, ptr %.35115200, i64 3
  store i8 %i.mos, ptr %i.mot, align 1, !tbaa !31
  %i.mou = lshr i64 %i.mnd, 24
  %i.mov = trunc i64 %i.mou to i8
  %i.mow = getelementptr inbounds nuw i8, ptr %.35115200, i64 4
  store i8 %i.mov, ptr %i.mow, align 1, !tbaa !31
  %i.mox = lshr i64 %i.mnd, 16
  %i.moy = trunc i64 %i.mox to i8
  %i.moz = getelementptr inbounds nuw i8, ptr %.35115200, i64 5
  store i8 %i.moy, ptr %i.moz, align 1, !tbaa !31
  %i.mpa = lshr i64 %i.mnd, 8
  %i.mpb = trunc i64 %i.mpa to i8
  %i.mpc = getelementptr inbounds nuw i8, ptr %.35115200, i64 6
  store i8 %i.mpb, ptr %i.mpc, align 1, !tbaa !31
  %i.mpd = trunc i64 %i.mnd to i8
  %i.mpe = getelementptr inbounds nuw i8, ptr %.35115200, i64 7
  store i8 %i.mpd, ptr %i.mpe, align 1, !tbaa !31
  %i.mpf = getelementptr inbounds nuw i8, ptr %.35115200, i64 8
  br label %bb.agr

bb.agr:                                           ; preds = %bb.agq, %bb.agp
  %.352 = phi ptr [ %i.mok, %bb.agp ], [ %i.mpf, %bb.agq ]
  %i.mpg = add nsw i32 %i.mmv, 64
  %i.mph = load i32, ptr %i.mmr, align 4, !tbaa !3
  %i.mpi = zext i32 %i.mph to i64
  br label %bb.agt

bb.ags:                                           ; preds = %bb.agn
  %i.mpj = zext nneg i32 %i.mmu to i64
  %i.mpk = shl i64 %.2331127615199, %i.mpj
  %i.mpl = zext i32 %i.mmx to i64
  %i.mpm = or i64 %i.mpk, %i.mpl
  br label %bb.agt

bb.agt:                                           ; preds = %bb.ags, %bb.agr
  %.23411531 = phi i32 [ %i.mpg, %bb.agr ], [ %i.mmv, %bb.ags ] ; 2 uses
  %.23411277 = phi i64 [ %i.mpi, %bb.agr ], [ %i.mpm, %bb.ags ] ; 2 uses
  %.353 = phi ptr [ %.352, %bb.agr ], [ %.35115200, %bb.ags ] ; 2 uses
  %i.mpn = icmp samesign ugt i32 %.11615201, 511
  br i1 %i.mpn, label %bb.agn, label %._crit_edge15204, !llvm.loop !131

._crit_edge15204:                                 ; preds = %bb.agt, %bb.agm
  %.23311530.lcssa = phi i32 [ %.23211529, %bb.agm ], [ %.23411531, %bb.agt ] ; 2 uses
  %.23311276.lcssa = phi i64 [ %.23211275, %bb.agm ], [ %.23411277, %bb.agt ] ; 2 uses
  %.351.lcssa = phi ptr [ %.350, %bb.agm ], [ %.353, %bb.agt ] ; 13 uses
  %.116.lcssa = phi i32 [ %.115, %bb.agm ], [ %i.mms, %bb.agt ]
  %i.mpo = add nuw nsw i32 %.116.lcssa, %i.mmj
  %i.mpp = zext nneg i8 %i.mmi to i64
  %notmask13644 = shl nsw i64 -1, %i.mpp
  %i.mpq = trunc i64 %notmask13644 to i32
  %i.mpr = xor i32 %i.mpq, -1
  %i.mps = and i32 %i.mme, %i.mpr
  %i.mpt = zext nneg i32 %i.mpo to i64            ; 2 uses
  %i.mpu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.mpt
  %i.mpv = load i32, ptr %i.mpu, align 4, !tbaa !3
  %i.mpw = shl i32 %i.mpv, %i.mmj
  %i.mpx = or i32 %i.mpw, %i.mps                  ; 3 uses
  %i.mpy = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.mpz = getelementptr inbounds nuw i8, ptr %i.mpy, i64 %i.mpt
  %i.mqa = load i8, ptr %i.mpz, align 1, !tbaa !31
  %i.mqb = sext i8 %i.mqa to i32
  %i.mqc = add nsw i32 %i.mqb, %i.mmj             ; 2 uses
  %i.mqd = sub nsw i32 %.23311530.lcssa, %i.mqc   ; 4 uses
  %i.mqe = icmp slt i32 %i.mqd, 0
  br i1 %i.mqe, label %bb.agu, label %bb.agy

bb.agu:                                           ; preds = %._crit_edge15204
  %i.mqf = zext nneg i32 %.23311530.lcssa to i64
  %i.mqg = shl i64 %.23311276.lcssa, %i.mqf
  %i.mqh = sub nsw i32 0, %i.mqd
  %i.mqi = ashr i32 %i.mpx, %i.mqh
  %i.mqj = sext i32 %i.mqi to i64
  %i.mqk = or i64 %i.mqg, %i.mqj                  ; 24 uses
  %i.mql = and i64 %i.mqk, -9187201950435737472
  %i.mqm = sub i64 -72340172838076674, %i.mqk
  %i.mqn = and i64 %i.mql, %i.mqm
  %.not13645 = icmp eq i64 %i.mqn, 0
  %i.mqo = lshr i64 %i.mqk, 56                    ; 2 uses
  %i.mqp = trunc nuw i64 %i.mqo to i8
  store i8 %i.mqp, ptr %.351.lcssa, align 1, !tbaa !31
  br i1 %.not13645, label %bb.agw, label %bb.agv

bb.agv:                                           ; preds = %bb.agu
  %i.mqq = getelementptr inbounds nuw i8, ptr %.351.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.mqq, align 1, !tbaa !31
  %.not13646 = icmp eq i64 %i.mqo, 255            ; 2 uses
  %.sroa.gep14655 = getelementptr inbounds nuw i8, ptr %.351.lcssa, i64 2 ; 2 uses
  %.neg13647.sroa.sel = select i1 %.not13646, ptr %.sroa.gep14655, ptr %i.mqq ; 2 uses
  %i.mqr = lshr i64 %i.mqk, 48
  %i.mqs = trunc i64 %i.mqr to i8
  store i8 %i.mqs, ptr %.neg13647.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15488 = getelementptr inbounds nuw i8, ptr %.351.lcssa, i64 3
  %.neg13647.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13646, ptr %.sroa.gep15488, ptr %.sroa.gep14655
  store i8 0, ptr %.neg13647.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mqt = and i64 %i.mqk, 71776119061217280
  %.not13648 = icmp eq i64 %i.mqt, 71776119061217280
  %.neg13649 = select i1 %.not13648, i64 2, i64 1
  %i.mqu = getelementptr inbounds nuw i8, ptr %.neg13647.sroa.sel, i64 %.neg13649 ; 4 uses
  %i.mqv = lshr i64 %i.mqk, 40
  %i.mqw = trunc i64 %i.mqv to i8
  store i8 %i.mqw, ptr %i.mqu, align 1, !tbaa !31
  %i.mqx = getelementptr inbounds nuw i8, ptr %i.mqu, i64 1 ; 2 uses
  store i8 0, ptr %i.mqx, align 1, !tbaa !31
  %i.mqy = and i64 %i.mqk, 280375465082880
  %.not13650 = icmp eq i64 %i.mqy, 280375465082880 ; 2 uses
  %.sroa.gep14657 = getelementptr inbounds nuw i8, ptr %i.mqu, i64 2 ; 2 uses
  %.neg13651.sroa.sel = select i1 %.not13650, ptr %.sroa.gep14657, ptr %i.mqx ; 2 uses
  %i.mqz = lshr i64 %i.mqk, 32
  %i.mra = trunc i64 %i.mqz to i8
  store i8 %i.mra, ptr %.neg13651.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15494 = getelementptr inbounds nuw i8, ptr %i.mqu, i64 3
  %.neg13651.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13650, ptr %.sroa.gep15494, ptr %.sroa.gep14657
  store i8 0, ptr %.neg13651.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mrb = and i64 %i.mqk, 1095216660480
  %.not13652 = icmp eq i64 %i.mrb, 1095216660480
  %.neg13653 = select i1 %.not13652, i64 2, i64 1
  %i.mrc = getelementptr inbounds nuw i8, ptr %.neg13651.sroa.sel, i64 %.neg13653 ; 4 uses
  %i.mrd = lshr i64 %i.mqk, 24
  %i.mre = trunc i64 %i.mrd to i8
  store i8 %i.mre, ptr %i.mrc, align 1, !tbaa !31
  %i.mrf = getelementptr inbounds nuw i8, ptr %i.mrc, i64 1 ; 2 uses
  store i8 0, ptr %i.mrf, align 1, !tbaa !31
  %i.mrg = and i64 %i.mqk, 4278190080
  %.not13654 = icmp eq i64 %i.mrg, 4278190080     ; 2 uses
  %.sroa.gep14659 = getelementptr inbounds nuw i8, ptr %i.mrc, i64 2 ; 2 uses
  %.neg13655.sroa.sel = select i1 %.not13654, ptr %.sroa.gep14659, ptr %i.mrf ; 2 uses
  %i.mrh = lshr i64 %i.mqk, 16
  %i.mri = trunc i64 %i.mrh to i8
  store i8 %i.mri, ptr %.neg13655.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15492 = getelementptr inbounds nuw i8, ptr %i.mrc, i64 3
  %.neg13655.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13654, ptr %.sroa.gep15492, ptr %.sroa.gep14659
  store i8 0, ptr %.neg13655.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mrj = and i64 %i.mqk, 16711680
  %.not13656 = icmp eq i64 %i.mrj, 16711680
  %.neg13657 = select i1 %.not13656, i64 2, i64 1
  %i.mrk = getelementptr inbounds nuw i8, ptr %.neg13655.sroa.sel, i64 %.neg13657 ; 4 uses
  %i.mrl = lshr i64 %i.mqk, 8
  %i.mrm = trunc i64 %i.mrl to i8
  store i8 %i.mrm, ptr %i.mrk, align 1, !tbaa !31
  %i.mrn = getelementptr inbounds nuw i8, ptr %i.mrk, i64 1 ; 2 uses
  store i8 0, ptr %i.mrn, align 1, !tbaa !31
  %i.mro = and i64 %i.mqk, 65280
  %.not13658 = icmp eq i64 %i.mro, 65280          ; 2 uses
  %.sroa.gep14661 = getelementptr inbounds nuw i8, ptr %i.mrk, i64 2 ; 2 uses
  %.neg13659.sroa.sel = select i1 %.not13658, ptr %.sroa.gep14661, ptr %i.mrn ; 2 uses
  %i.mrp = trunc i64 %i.mqk to i8
  store i8 %i.mrp, ptr %.neg13659.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15490 = getelementptr inbounds nuw i8, ptr %i.mrk, i64 3
  %.neg13659.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13658, ptr %.sroa.gep15490, ptr %.sroa.gep14661
  store i8 0, ptr %.neg13659.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mrq = and i64 %i.mqk, 255
  %.not13660 = icmp eq i64 %i.mrq, 255
  %.neg13661 = select i1 %.not13660, i64 2, i64 1
  %i.mrr = getelementptr inbounds nuw i8, ptr %.neg13659.sroa.sel, i64 %.neg13661
  br label %bb.agx

bb.agw:                                           ; preds = %bb.agu
  %i.mrs = lshr i64 %i.mqk, 48
  %i.mrt = trunc i64 %i.mrs to i8
  %i.mru = getelementptr inbounds nuw i8, ptr %.351.lcssa, i64 1
  store i8 %i.mrt, ptr %i.mru, align 1, !tbaa !31
  %i.mrv = lshr i64 %i.mqk, 40
  %i.mrw = trunc i64 %i.mrv to i8
  %i.mrx = getelementptr inbounds nuw i8, ptr %.351.lcssa, i64 2
  store i8 %i.mrw, ptr %i.mrx, align 1, !tbaa !31
  %i.mry = lshr i64 %i.mqk, 32
  %i.mrz = trunc i64 %i.mry to i8
  %i.msa = getelementptr inbounds nuw i8, ptr %.351.lcssa, i64 3
  store i8 %i.mrz, ptr %i.msa, align 1, !tbaa !31
  %i.msb = lshr i64 %i.mqk, 24
  %i.msc = trunc i64 %i.msb to i8
  %i.msd = getelementptr inbounds nuw i8, ptr %.351.lcssa, i64 4
  store i8 %i.msc, ptr %i.msd, align 1, !tbaa !31
  %i.mse = lshr i64 %i.mqk, 16
  %i.msf = trunc i64 %i.mse to i8
  %i.msg = getelementptr inbounds nuw i8, ptr %.351.lcssa, i64 5
  store i8 %i.msf, ptr %i.msg, align 1, !tbaa !31
  %i.msh = lshr i64 %i.mqk, 8
  %i.msi = trunc i64 %i.msh to i8
  %i.msj = getelementptr inbounds nuw i8, ptr %.351.lcssa, i64 6
  store i8 %i.msi, ptr %i.msj, align 1, !tbaa !31
  %i.msk = trunc i64 %i.mqk to i8
  %i.msl = getelementptr inbounds nuw i8, ptr %.351.lcssa, i64 7
  store i8 %i.msk, ptr %i.msl, align 1, !tbaa !31
  %i.msm = getelementptr inbounds nuw i8, ptr %.351.lcssa, i64 8
  br label %bb.agx

bb.agx:                                           ; preds = %bb.agw, %bb.agv
  %.354 = phi ptr [ %i.mrr, %bb.agv ], [ %i.msm, %bb.agw ]
  %i.msn = add nsw i32 %i.mqd, 64
  %i.mso = sext i32 %i.mpx to i64
  br label %bb.agz

bb.agy:                                           ; preds = %._crit_edge15204
  %i.msp = zext nneg i32 %i.mqc to i64
  %i.msq = shl i64 %.23311276.lcssa, %i.msp
  %i.msr = sext i32 %i.mpx to i64
  %i.mss = or i64 %i.msq, %i.msr
  br label %bb.agz

bb.agz:                                           ; preds = %bb.agx, %bb.agy, %bb.agj
  %.23611533 = phi i32 [ %.23211529, %bb.agj ], [ %i.msn, %bb.agx ], [ %i.mqd, %bb.agy ] ; 3 uses
  %.23611279 = phi i64 [ %.23211275, %bb.agj ], [ %i.mso, %bb.agx ], [ %i.mss, %bb.agy ] ; 3 uses
  %.356 = phi ptr [ %.350, %bb.agj ], [ %.354, %bb.agx ], [ %.351.lcssa, %bb.agy ] ; 3 uses
  %.117 = phi i32 [ %i.mmb, %bb.agj ], [ 0, %bb.agx ], [ 0, %bb.agy ] ; 4 uses
  %i.mst = getelementptr inbounds nuw i8, ptr %1, i64 94
  %i.msu = load i16, ptr %i.mst, align 2, !tbaa !79 ; 2 uses
  %i.msv = icmp eq i16 %i.msu, 0
  br i1 %i.msv, label %bb.aha, label %bb.ahb

bb.aha:                                           ; preds = %bb.agz
  %i.msw = add nuw nsw i32 %.117, 16
  br label %bb.ahq

bb.ahb:                                           ; preds = %bb.agz
  %i.msx = sext i16 %i.msu to i32                 ; 2 uses
  %i.msy = ashr i32 %i.msx, 31                    ; 2 uses
  %i.msz = add nsw i32 %i.msy, %i.msx             ; 2 uses
  %i.mta = xor i32 %i.msz, %i.msy
  %i.mtb = sext i32 %i.mta to i64
  %i.mtc = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.mtb
  %i.mtd = load i8, ptr %i.mtc, align 1, !tbaa !31 ; 2 uses
  %i.mte = zext i8 %i.mtd to i32                  ; 4 uses
  %i.mtf = icmp slt i32 %i.f, %i.mte
  br i1 %i.mtf, label %bb.ahc, label %bb.ahd

bb.ahc:                                           ; preds = %bb.ahb
  %i.mtg = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.mth = load ptr, ptr %i.mtg, align 8, !tbaa !7 ; 2 uses
  %i.mti = getelementptr inbounds nuw i8, ptr %i.mth, i64 40
  store i32 6, ptr %i.mti, align 8, !tbaa !26
  %i.mtj = load ptr, ptr %i.mth, align 8, !tbaa !32
  tail call void %i.mtj(ptr noundef nonnull %i.mtg) #7
  br label %bb.ahd

bb.ahd:                                           ; preds = %bb.ahc, %bb.ahb
  %i.mtk = icmp samesign ugt i32 %.117, 255
  br i1 %i.mtk, label %.lr.ph15214, label %._crit_edge15215

.lr.ph15214:                                      ; preds = %bb.ahd
  %i.mtl = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.mtm = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.ahe

bb.ahe:                                           ; preds = %.lr.ph15214, %bb.ahk
  %.11815212 = phi i32 [ %.117, %.lr.ph15214 ], [ %i.mtn, %bb.ahk ] ; 2 uses
  %.35715211 = phi ptr [ %.356, %.lr.ph15214 ], [ %.359, %bb.ahk ] ; 13 uses
  %.2371128015210 = phi i64 [ %.23611279, %.lr.ph15214 ], [ %.23811281, %bb.ahk ] ; 2 uses
  %.2371153415209 = phi i32 [ %.23611533, %.lr.ph15214 ], [ %.23811535, %bb.ahk ] ; 2 uses
  %i.mtn = add nsw i32 %.11815212, -256           ; 2 uses
  %i.mto = load i8, ptr %i.mtl, align 4, !tbaa !31
  %i.mtp = sext i8 %i.mto to i32                  ; 2 uses
  %i.mtq = sub nsw i32 %.2371153415209, %i.mtp    ; 4 uses
  %i.mtr = icmp slt i32 %i.mtq, 0
  %i.mts = load i32, ptr %i.mtm, align 4, !tbaa !3 ; 2 uses
  br i1 %i.mtr, label %bb.ahf, label %bb.ahj

bb.ahf:                                           ; preds = %bb.ahe
  %i.mtt = zext nneg i32 %.2371153415209 to i64
  %i.mtu = shl i64 %.2371128015210, %i.mtt        ; 11 uses
  %i.mtv = sub nsw i32 0, %i.mtq
  %i.mtw = lshr i32 %i.mts, %i.mtv
  %i.mtx = zext nneg i32 %i.mtw to i64
  %i.mty = or i64 %i.mtu, %i.mtx                  ; 14 uses
  %i.mtz = and i64 %i.mty, -9187201950435737472
  %i.mua = sub i64 -72340172838076674, %i.mty
  %i.mub = and i64 %i.mtz, %i.mua
  %.not13697 = icmp eq i64 %i.mub, 0
  %i.muc = lshr i64 %i.mtu, 56                    ; 2 uses
  %i.mud = trunc nuw i64 %i.muc to i8
  store i8 %i.mud, ptr %.35715211, align 1, !tbaa !31
  br i1 %.not13697, label %bb.ahh, label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf
  %i.mue = getelementptr inbounds nuw i8, ptr %.35715211, i64 1 ; 2 uses
  store i8 0, ptr %i.mue, align 1, !tbaa !31
  %.not13698 = icmp eq i64 %i.muc, 255            ; 2 uses
  %.sroa.gep14663 = getelementptr inbounds nuw i8, ptr %.35715211, i64 2 ; 2 uses
  %.neg13699.sroa.sel = select i1 %.not13698, ptr %.sroa.gep14663, ptr %i.mue ; 2 uses
  %i.muf = lshr i64 %i.mtu, 48
  %i.mug = trunc i64 %i.muf to i8
  store i8 %i.mug, ptr %.neg13699.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15464 = getelementptr inbounds nuw i8, ptr %.35715211, i64 3
  %.neg13699.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13698, ptr %.sroa.gep15464, ptr %.sroa.gep14663
  store i8 0, ptr %.neg13699.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.muh = and i64 %i.mtu, 71776119061217280
  %.not13700 = icmp eq i64 %i.muh, 71776119061217280
  %.neg13701 = select i1 %.not13700, i64 2, i64 1
  %i.mui = getelementptr inbounds nuw i8, ptr %.neg13699.sroa.sel, i64 %.neg13701 ; 4 uses
  %i.muj = lshr i64 %i.mtu, 40
  %i.muk = trunc i64 %i.muj to i8
  store i8 %i.muk, ptr %i.mui, align 1, !tbaa !31
  %i.mul = getelementptr inbounds nuw i8, ptr %i.mui, i64 1 ; 2 uses
  store i8 0, ptr %i.mul, align 1, !tbaa !31
  %i.mum = and i64 %i.mtu, 280375465082880
  %.not13702 = icmp eq i64 %i.mum, 280375465082880 ; 2 uses
  %.sroa.gep14665 = getelementptr inbounds nuw i8, ptr %i.mui, i64 2 ; 2 uses
  %.neg13703.sroa.sel = select i1 %.not13702, ptr %.sroa.gep14665, ptr %i.mul ; 2 uses
  %i.mun = lshr i64 %i.mtu, 32
  %i.muo = trunc i64 %i.mun to i8
  store i8 %i.muo, ptr %.neg13703.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15470 = getelementptr inbounds nuw i8, ptr %i.mui, i64 3
  %.neg13703.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13702, ptr %.sroa.gep15470, ptr %.sroa.gep14665
  store i8 0, ptr %.neg13703.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mup = and i64 %i.mtu, 1095216660480
  %.not13704 = icmp eq i64 %i.mup, 1095216660480
  %.neg13705 = select i1 %.not13704, i64 2, i64 1
  %i.muq = getelementptr inbounds nuw i8, ptr %.neg13703.sroa.sel, i64 %.neg13705 ; 4 uses
  %i.mur = lshr i64 %i.mty, 24
  %i.mus = trunc i64 %i.mur to i8
  store i8 %i.mus, ptr %i.muq, align 1, !tbaa !31
  %i.mut = getelementptr inbounds nuw i8, ptr %i.muq, i64 1 ; 2 uses
  store i8 0, ptr %i.mut, align 1, !tbaa !31
  %i.muu = and i64 %i.mty, 4278190080
  %.not13706 = icmp eq i64 %i.muu, 4278190080     ; 2 uses
  %.sroa.gep14667 = getelementptr inbounds nuw i8, ptr %i.muq, i64 2 ; 2 uses
  %.neg13707.sroa.sel = select i1 %.not13706, ptr %.sroa.gep14667, ptr %i.mut ; 2 uses
  %i.muv = lshr i64 %i.mty, 16
  %i.muw = trunc i64 %i.muv to i8
  store i8 %i.muw, ptr %.neg13707.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15468 = getelementptr inbounds nuw i8, ptr %i.muq, i64 3
  %.neg13707.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13706, ptr %.sroa.gep15468, ptr %.sroa.gep14667
  store i8 0, ptr %.neg13707.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mux = and i64 %i.mty, 16711680
  %.not13708 = icmp eq i64 %i.mux, 16711680
  %.neg13709 = select i1 %.not13708, i64 2, i64 1
  %i.muy = getelementptr inbounds nuw i8, ptr %.neg13707.sroa.sel, i64 %.neg13709 ; 4 uses
  %i.muz = lshr i64 %i.mty, 8
  %i.mva = trunc i64 %i.muz to i8
  store i8 %i.mva, ptr %i.muy, align 1, !tbaa !31
  %i.mvb = getelementptr inbounds nuw i8, ptr %i.muy, i64 1 ; 2 uses
  store i8 0, ptr %i.mvb, align 1, !tbaa !31
  %i.mvc = and i64 %i.mty, 65280
  %.not13710 = icmp eq i64 %i.mvc, 65280          ; 2 uses
  %.sroa.gep14669 = getelementptr inbounds nuw i8, ptr %i.muy, i64 2 ; 2 uses
  %.neg13711.sroa.sel = select i1 %.not13710, ptr %.sroa.gep14669, ptr %i.mvb ; 2 uses
  %i.mvd = trunc i64 %i.mty to i8
  store i8 %i.mvd, ptr %.neg13711.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15466 = getelementptr inbounds nuw i8, ptr %i.muy, i64 3
  %.neg13711.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13710, ptr %.sroa.gep15466, ptr %.sroa.gep14669
  store i8 0, ptr %.neg13711.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mve = and i64 %i.mty, 255
  %.not13712 = icmp eq i64 %i.mve, 255
  %.neg13713 = select i1 %.not13712, i64 2, i64 1
  %i.mvf = getelementptr inbounds nuw i8, ptr %.neg13711.sroa.sel, i64 %.neg13713
  br label %bb.ahi

bb.ahh:                                           ; preds = %bb.ahf
  %i.mvg = lshr i64 %i.mtu, 48
  %i.mvh = trunc i64 %i.mvg to i8
  %i.mvi = getelementptr inbounds nuw i8, ptr %.35715211, i64 1
  store i8 %i.mvh, ptr %i.mvi, align 1, !tbaa !31
  %i.mvj = lshr i64 %i.mtu, 40
  %i.mvk = trunc i64 %i.mvj to i8
  %i.mvl = getelementptr inbounds nuw i8, ptr %.35715211, i64 2
  store i8 %i.mvk, ptr %i.mvl, align 1, !tbaa !31
  %i.mvm = lshr i64 %i.mtu, 32
  %i.mvn = trunc i64 %i.mvm to i8
  %i.mvo = getelementptr inbounds nuw i8, ptr %.35715211, i64 3
  store i8 %i.mvn, ptr %i.mvo, align 1, !tbaa !31
  %i.mvp = lshr i64 %i.mty, 24
  %i.mvq = trunc i64 %i.mvp to i8
  %i.mvr = getelementptr inbounds nuw i8, ptr %.35715211, i64 4
  store i8 %i.mvq, ptr %i.mvr, align 1, !tbaa !31
  %i.mvs = lshr i64 %i.mty, 16
  %i.mvt = trunc i64 %i.mvs to i8
  %i.mvu = getelementptr inbounds nuw i8, ptr %.35715211, i64 5
  store i8 %i.mvt, ptr %i.mvu, align 1, !tbaa !31
  %i.mvv = lshr i64 %i.mty, 8
  %i.mvw = trunc i64 %i.mvv to i8
  %i.mvx = getelementptr inbounds nuw i8, ptr %.35715211, i64 6
  store i8 %i.mvw, ptr %i.mvx, align 1, !tbaa !31
  %i.mvy = trunc i64 %i.mty to i8
  %i.mvz = getelementptr inbounds nuw i8, ptr %.35715211, i64 7
  store i8 %i.mvy, ptr %i.mvz, align 1, !tbaa !31
  %i.mwa = getelementptr inbounds nuw i8, ptr %.35715211, i64 8
  br label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahh, %bb.ahg
  %.358 = phi ptr [ %i.mvf, %bb.ahg ], [ %i.mwa, %bb.ahh ]
  %i.mwb = add nsw i32 %i.mtq, 64
  %i.mwc = load i32, ptr %i.mtm, align 4, !tbaa !3
  %i.mwd = zext i32 %i.mwc to i64
  br label %bb.ahk

bb.ahj:                                           ; preds = %bb.ahe
  %i.mwe = zext nneg i32 %i.mtp to i64
  %i.mwf = shl i64 %.2371128015210, %i.mwe
  %i.mwg = zext i32 %i.mts to i64
  %i.mwh = or i64 %i.mwf, %i.mwg
  br label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj, %bb.ahi
  %.23811535 = phi i32 [ %i.mwb, %bb.ahi ], [ %i.mtq, %bb.ahj ] ; 2 uses
  %.23811281 = phi i64 [ %i.mwd, %bb.ahi ], [ %i.mwh, %bb.ahj ] ; 2 uses
  %.359 = phi ptr [ %.358, %bb.ahi ], [ %.35715211, %bb.ahj ] ; 2 uses
  %i.mwi = icmp samesign ugt i32 %.11815212, 511
  br i1 %i.mwi, label %bb.ahe, label %._crit_edge15215, !llvm.loop !132

._crit_edge15215:                                 ; preds = %bb.ahk, %bb.ahd
  %.23711534.lcssa = phi i32 [ %.23611533, %bb.ahd ], [ %.23811535, %bb.ahk ] ; 2 uses
  %.23711280.lcssa = phi i64 [ %.23611279, %bb.ahd ], [ %.23811281, %bb.ahk ] ; 2 uses
  %.357.lcssa = phi ptr [ %.356, %bb.ahd ], [ %.359, %bb.ahk ] ; 13 uses
  %.118.lcssa = phi i32 [ %.117, %bb.ahd ], [ %i.mtn, %bb.ahk ]
  %i.mwj = add nuw nsw i32 %.118.lcssa, %i.mte
  %i.mwk = zext nneg i8 %i.mtd to i64
  %notmask13679 = shl nsw i64 -1, %i.mwk
  %i.mwl = trunc i64 %notmask13679 to i32
  %i.mwm = xor i32 %i.mwl, -1
  %i.mwn = and i32 %i.msz, %i.mwm
  %i.mwo = zext nneg i32 %i.mwj to i64            ; 2 uses
  %i.mwp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.mwo
  %i.mwq = load i32, ptr %i.mwp, align 4, !tbaa !3
  %i.mwr = shl i32 %i.mwq, %i.mte
  %i.mws = or i32 %i.mwr, %i.mwn                  ; 3 uses
  %i.mwt = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.mwu = getelementptr inbounds nuw i8, ptr %i.mwt, i64 %i.mwo
  %i.mwv = load i8, ptr %i.mwu, align 1, !tbaa !31
  %i.mww = sext i8 %i.mwv to i32
  %i.mwx = add nsw i32 %i.mww, %i.mte             ; 2 uses
  %i.mwy = sub nsw i32 %.23711534.lcssa, %i.mwx   ; 4 uses
  %i.mwz = icmp slt i32 %i.mwy, 0
  br i1 %i.mwz, label %bb.ahl, label %bb.ahp

bb.ahl:                                           ; preds = %._crit_edge15215
  %i.mxa = zext nneg i32 %.23711534.lcssa to i64
  %i.mxb = shl i64 %.23711280.lcssa, %i.mxa
  %i.mxc = sub nsw i32 0, %i.mwy
  %i.mxd = ashr i32 %i.mws, %i.mxc
  %i.mxe = sext i32 %i.mxd to i64
  %i.mxf = or i64 %i.mxb, %i.mxe                  ; 24 uses
  %i.mxg = and i64 %i.mxf, -9187201950435737472
  %i.mxh = sub i64 -72340172838076674, %i.mxf
  %i.mxi = and i64 %i.mxg, %i.mxh
  %.not13680 = icmp eq i64 %i.mxi, 0
  %i.mxj = lshr i64 %i.mxf, 56                    ; 2 uses
  %i.mxk = trunc nuw i64 %i.mxj to i8
  store i8 %i.mxk, ptr %.357.lcssa, align 1, !tbaa !31
  br i1 %.not13680, label %bb.ahn, label %bb.ahm

bb.ahm:                                           ; preds = %bb.ahl
  %i.mxl = getelementptr inbounds nuw i8, ptr %.357.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.mxl, align 1, !tbaa !31
  %.not13681 = icmp eq i64 %i.mxj, 255            ; 2 uses
  %.sroa.gep14671 = getelementptr inbounds nuw i8, ptr %.357.lcssa, i64 2 ; 2 uses
  %.neg13682.sroa.sel = select i1 %.not13681, ptr %.sroa.gep14671, ptr %i.mxl ; 2 uses
  %i.mxm = lshr i64 %i.mxf, 48
  %i.mxn = trunc i64 %i.mxm to i8
  store i8 %i.mxn, ptr %.neg13682.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15472 = getelementptr inbounds nuw i8, ptr %.357.lcssa, i64 3
  %.neg13682.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13681, ptr %.sroa.gep15472, ptr %.sroa.gep14671
  store i8 0, ptr %.neg13682.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mxo = and i64 %i.mxf, 71776119061217280
  %.not13683 = icmp eq i64 %i.mxo, 71776119061217280
  %.neg13684 = select i1 %.not13683, i64 2, i64 1
  %i.mxp = getelementptr inbounds nuw i8, ptr %.neg13682.sroa.sel, i64 %.neg13684 ; 4 uses
  %i.mxq = lshr i64 %i.mxf, 40
  %i.mxr = trunc i64 %i.mxq to i8
  store i8 %i.mxr, ptr %i.mxp, align 1, !tbaa !31
  %i.mxs = getelementptr inbounds nuw i8, ptr %i.mxp, i64 1 ; 2 uses
  store i8 0, ptr %i.mxs, align 1, !tbaa !31
  %i.mxt = and i64 %i.mxf, 280375465082880
  %.not13685 = icmp eq i64 %i.mxt, 280375465082880 ; 2 uses
  %.sroa.gep14673 = getelementptr inbounds nuw i8, ptr %i.mxp, i64 2 ; 2 uses
  %.neg13686.sroa.sel = select i1 %.not13685, ptr %.sroa.gep14673, ptr %i.mxs ; 2 uses
  %i.mxu = lshr i64 %i.mxf, 32
  %i.mxv = trunc i64 %i.mxu to i8
  store i8 %i.mxv, ptr %.neg13686.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15478 = getelementptr inbounds nuw i8, ptr %i.mxp, i64 3
  %.neg13686.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13685, ptr %.sroa.gep15478, ptr %.sroa.gep14673
  store i8 0, ptr %.neg13686.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mxw = and i64 %i.mxf, 1095216660480
  %.not13687 = icmp eq i64 %i.mxw, 1095216660480
  %.neg13688 = select i1 %.not13687, i64 2, i64 1
  %i.mxx = getelementptr inbounds nuw i8, ptr %.neg13686.sroa.sel, i64 %.neg13688 ; 4 uses
  %i.mxy = lshr i64 %i.mxf, 24
  %i.mxz = trunc i64 %i.mxy to i8
  store i8 %i.mxz, ptr %i.mxx, align 1, !tbaa !31
  %i.mya = getelementptr inbounds nuw i8, ptr %i.mxx, i64 1 ; 2 uses
  store i8 0, ptr %i.mya, align 1, !tbaa !31
  %i.myb = and i64 %i.mxf, 4278190080
  %.not13689 = icmp eq i64 %i.myb, 4278190080     ; 2 uses
  %.sroa.gep14675 = getelementptr inbounds nuw i8, ptr %i.mxx, i64 2 ; 2 uses
  %.neg13690.sroa.sel = select i1 %.not13689, ptr %.sroa.gep14675, ptr %i.mya ; 2 uses
  %i.myc = lshr i64 %i.mxf, 16
  %i.myd = trunc i64 %i.myc to i8
  store i8 %i.myd, ptr %.neg13690.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15476 = getelementptr inbounds nuw i8, ptr %i.mxx, i64 3
  %.neg13690.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13689, ptr %.sroa.gep15476, ptr %.sroa.gep14675
  store i8 0, ptr %.neg13690.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.mye = and i64 %i.mxf, 16711680
  %.not13691 = icmp eq i64 %i.mye, 16711680
  %.neg13692 = select i1 %.not13691, i64 2, i64 1
  %i.myf = getelementptr inbounds nuw i8, ptr %.neg13690.sroa.sel, i64 %.neg13692 ; 4 uses
  %i.myg = lshr i64 %i.mxf, 8
  %i.myh = trunc i64 %i.myg to i8
  store i8 %i.myh, ptr %i.myf, align 1, !tbaa !31
  %i.myi = getelementptr inbounds nuw i8, ptr %i.myf, i64 1 ; 2 uses
  store i8 0, ptr %i.myi, align 1, !tbaa !31
  %i.myj = and i64 %i.mxf, 65280
  %.not13693 = icmp eq i64 %i.myj, 65280          ; 2 uses
  %.sroa.gep14677 = getelementptr inbounds nuw i8, ptr %i.myf, i64 2 ; 2 uses
  %.neg13694.sroa.sel = select i1 %.not13693, ptr %.sroa.gep14677, ptr %i.myi ; 2 uses
  %i.myk = trunc i64 %i.mxf to i8
  store i8 %i.myk, ptr %.neg13694.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15474 = getelementptr inbounds nuw i8, ptr %i.myf, i64 3
  %.neg13694.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13693, ptr %.sroa.gep15474, ptr %.sroa.gep14677
  store i8 0, ptr %.neg13694.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.myl = and i64 %i.mxf, 255
  %.not13695 = icmp eq i64 %i.myl, 255
  %.neg13696 = select i1 %.not13695, i64 2, i64 1
  %i.mym = getelementptr inbounds nuw i8, ptr %.neg13694.sroa.sel, i64 %.neg13696
  br label %bb.aho

bb.ahn:                                           ; preds = %bb.ahl
  %i.myn = lshr i64 %i.mxf, 48
  %i.myo = trunc i64 %i.myn to i8
  %i.myp = getelementptr inbounds nuw i8, ptr %.357.lcssa, i64 1
  store i8 %i.myo, ptr %i.myp, align 1, !tbaa !31
  %i.myq = lshr i64 %i.mxf, 40
  %i.myr = trunc i64 %i.myq to i8
  %i.mys = getelementptr inbounds nuw i8, ptr %.357.lcssa, i64 2
  store i8 %i.myr, ptr %i.mys, align 1, !tbaa !31
  %i.myt = lshr i64 %i.mxf, 32
  %i.myu = trunc i64 %i.myt to i8
  %i.myv = getelementptr inbounds nuw i8, ptr %.357.lcssa, i64 3
  store i8 %i.myu, ptr %i.myv, align 1, !tbaa !31
  %i.myw = lshr i64 %i.mxf, 24
  %i.myx = trunc i64 %i.myw to i8
  %i.myy = getelementptr inbounds nuw i8, ptr %.357.lcssa, i64 4
  store i8 %i.myx, ptr %i.myy, align 1, !tbaa !31
  %i.myz = lshr i64 %i.mxf, 16
  %i.mza = trunc i64 %i.myz to i8
  %i.mzb = getelementptr inbounds nuw i8, ptr %.357.lcssa, i64 5
  store i8 %i.mza, ptr %i.mzb, align 1, !tbaa !31
  %i.mzc = lshr i64 %i.mxf, 8
  %i.mzd = trunc i64 %i.mzc to i8
  %i.mze = getelementptr inbounds nuw i8, ptr %.357.lcssa, i64 6
  store i8 %i.mzd, ptr %i.mze, align 1, !tbaa !31
  %i.mzf = trunc i64 %i.mxf to i8
  %i.mzg = getelementptr inbounds nuw i8, ptr %.357.lcssa, i64 7
  store i8 %i.mzf, ptr %i.mzg, align 1, !tbaa !31
  %i.mzh = getelementptr inbounds nuw i8, ptr %.357.lcssa, i64 8
  br label %bb.aho

bb.aho:                                           ; preds = %bb.ahn, %bb.ahm
  %.360 = phi ptr [ %i.mym, %bb.ahm ], [ %i.mzh, %bb.ahn ]
  %i.mzi = add nsw i32 %i.mwy, 64
  %i.mzj = sext i32 %i.mws to i64
  br label %bb.ahq

bb.ahp:                                           ; preds = %._crit_edge15215
  %i.mzk = zext nneg i32 %i.mwx to i64
  %i.mzl = shl i64 %.23711280.lcssa, %i.mzk
  %i.mzm = sext i32 %i.mws to i64
  %i.mzn = or i64 %i.mzl, %i.mzm
  br label %bb.ahq

bb.ahq:                                           ; preds = %bb.aho, %bb.ahp, %bb.aha
  %.24011537 = phi i32 [ %.23611533, %bb.aha ], [ %i.mzi, %bb.aho ], [ %i.mwy, %bb.ahp ] ; 3 uses
  %.24011283 = phi i64 [ %.23611279, %bb.aha ], [ %i.mzj, %bb.aho ], [ %i.mzn, %bb.ahp ] ; 3 uses
  %.362 = phi ptr [ %.356, %bb.aha ], [ %.360, %bb.aho ], [ %.357.lcssa, %bb.ahp ] ; 3 uses
  %.119 = phi i32 [ %i.msw, %bb.aha ], [ 0, %bb.aho ], [ 0, %bb.ahp ] ; 4 uses
  %i.mzo = getelementptr inbounds nuw i8, ptr %1, i64 110
  %i.mzp = load i16, ptr %i.mzo, align 2, !tbaa !79 ; 2 uses
  %i.mzq = icmp eq i16 %i.mzp, 0
  br i1 %i.mzq, label %bb.ahr, label %bb.ahs

bb.ahr:                                           ; preds = %bb.ahq
  %i.mzr = add nuw nsw i32 %.119, 16
  br label %bb.aih

bb.ahs:                                           ; preds = %bb.ahq
  %i.mzs = sext i16 %i.mzp to i32                 ; 2 uses
  %i.mzt = ashr i32 %i.mzs, 31                    ; 2 uses
  %i.mzu = add nsw i32 %i.mzt, %i.mzs             ; 2 uses
  %i.mzv = xor i32 %i.mzu, %i.mzt
  %i.mzw = sext i32 %i.mzv to i64
  %i.mzx = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.mzw
  %i.mzy = load i8, ptr %i.mzx, align 1, !tbaa !31 ; 2 uses
  %i.mzz = zext i8 %i.mzy to i32                  ; 4 uses
  %i.naa = icmp slt i32 %i.f, %i.mzz
  br i1 %i.naa, label %bb.aht, label %bb.ahu

bb.aht:                                           ; preds = %bb.ahs
  %i.nab = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.nac = load ptr, ptr %i.nab, align 8, !tbaa !7 ; 2 uses
  %i.nad = getelementptr inbounds nuw i8, ptr %i.nac, i64 40
  store i32 6, ptr %i.nad, align 8, !tbaa !26
  %i.nae = load ptr, ptr %i.nac, align 8, !tbaa !32
  tail call void %i.nae(ptr noundef nonnull %i.nab) #7
  br label %bb.ahu

bb.ahu:                                           ; preds = %bb.aht, %bb.ahs
  %i.naf = icmp samesign ugt i32 %.119, 255
  br i1 %i.naf, label %.lr.ph15225, label %._crit_edge15226

.lr.ph15225:                                      ; preds = %bb.ahu
  %i.nag = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.nah = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.ahv

bb.ahv:                                           ; preds = %.lr.ph15225, %bb.aib
  %.12015223 = phi i32 [ %.119, %.lr.ph15225 ], [ %i.nai, %bb.aib ] ; 2 uses
  %.36315222 = phi ptr [ %.362, %.lr.ph15225 ], [ %.365, %bb.aib ] ; 13 uses
  %.2411128415221 = phi i64 [ %.24011283, %.lr.ph15225 ], [ %.24211285, %bb.aib ] ; 2 uses
  %.2411153815220 = phi i32 [ %.24011537, %.lr.ph15225 ], [ %.24211539, %bb.aib ] ; 2 uses
  %i.nai = add nsw i32 %.12015223, -256           ; 2 uses
  %i.naj = load i8, ptr %i.nag, align 4, !tbaa !31
  %i.nak = sext i8 %i.naj to i32                  ; 2 uses
  %i.nal = sub nsw i32 %.2411153815220, %i.nak    ; 4 uses
  %i.nam = icmp slt i32 %i.nal, 0
  %i.nan = load i32, ptr %i.nah, align 4, !tbaa !3 ; 2 uses
  br i1 %i.nam, label %bb.ahw, label %bb.aia

bb.ahw:                                           ; preds = %bb.ahv
  %i.nao = zext nneg i32 %.2411153815220 to i64
  %i.nap = shl i64 %.2411128415221, %i.nao        ; 11 uses
  %i.naq = sub nsw i32 0, %i.nal
  %i.nar = lshr i32 %i.nan, %i.naq
  %i.nas = zext nneg i32 %i.nar to i64
  %i.nat = or i64 %i.nap, %i.nas                  ; 14 uses
  %i.nau = and i64 %i.nat, -9187201950435737472
  %i.nav = sub i64 -72340172838076674, %i.nat
  %i.naw = and i64 %i.nau, %i.nav
  %.not13732 = icmp eq i64 %i.naw, 0
  %i.nax = lshr i64 %i.nap, 56                    ; 2 uses
  %i.nay = trunc nuw i64 %i.nax to i8
  store i8 %i.nay, ptr %.36315222, align 1, !tbaa !31
  br i1 %.not13732, label %bb.ahy, label %bb.ahx

bb.ahx:                                           ; preds = %bb.ahw
  %i.naz = getelementptr inbounds nuw i8, ptr %.36315222, i64 1 ; 2 uses
  store i8 0, ptr %i.naz, align 1, !tbaa !31
  %.not13733 = icmp eq i64 %i.nax, 255            ; 2 uses
  %.sroa.gep14679 = getelementptr inbounds nuw i8, ptr %.36315222, i64 2 ; 2 uses
  %.neg13734.sroa.sel = select i1 %.not13733, ptr %.sroa.gep14679, ptr %i.naz ; 2 uses
  %i.nba = lshr i64 %i.nap, 48
  %i.nbb = trunc i64 %i.nba to i8
  store i8 %i.nbb, ptr %.neg13734.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15448 = getelementptr inbounds nuw i8, ptr %.36315222, i64 3
  %.neg13734.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13733, ptr %.sroa.gep15448, ptr %.sroa.gep14679
  store i8 0, ptr %.neg13734.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nbc = and i64 %i.nap, 71776119061217280
  %.not13735 = icmp eq i64 %i.nbc, 71776119061217280
  %.neg13736 = select i1 %.not13735, i64 2, i64 1
  %i.nbd = getelementptr inbounds nuw i8, ptr %.neg13734.sroa.sel, i64 %.neg13736 ; 4 uses
  %i.nbe = lshr i64 %i.nap, 40
  %i.nbf = trunc i64 %i.nbe to i8
  store i8 %i.nbf, ptr %i.nbd, align 1, !tbaa !31
  %i.nbg = getelementptr inbounds nuw i8, ptr %i.nbd, i64 1 ; 2 uses
  store i8 0, ptr %i.nbg, align 1, !tbaa !31
  %i.nbh = and i64 %i.nap, 280375465082880
  %.not13737 = icmp eq i64 %i.nbh, 280375465082880 ; 2 uses
  %.sroa.gep14681 = getelementptr inbounds nuw i8, ptr %i.nbd, i64 2 ; 2 uses
  %.neg13738.sroa.sel = select i1 %.not13737, ptr %.sroa.gep14681, ptr %i.nbg ; 2 uses
  %i.nbi = lshr i64 %i.nap, 32
  %i.nbj = trunc i64 %i.nbi to i8
  store i8 %i.nbj, ptr %.neg13738.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15454 = getelementptr inbounds nuw i8, ptr %i.nbd, i64 3
  %.neg13738.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13737, ptr %.sroa.gep15454, ptr %.sroa.gep14681
  store i8 0, ptr %.neg13738.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nbk = and i64 %i.nap, 1095216660480
  %.not13739 = icmp eq i64 %i.nbk, 1095216660480
  %.neg13740 = select i1 %.not13739, i64 2, i64 1
  %i.nbl = getelementptr inbounds nuw i8, ptr %.neg13738.sroa.sel, i64 %.neg13740 ; 4 uses
  %i.nbm = lshr i64 %i.nat, 24
  %i.nbn = trunc i64 %i.nbm to i8
  store i8 %i.nbn, ptr %i.nbl, align 1, !tbaa !31
  %i.nbo = getelementptr inbounds nuw i8, ptr %i.nbl, i64 1 ; 2 uses
  store i8 0, ptr %i.nbo, align 1, !tbaa !31
  %i.nbp = and i64 %i.nat, 4278190080
  %.not13741 = icmp eq i64 %i.nbp, 4278190080     ; 2 uses
  %.sroa.gep14683 = getelementptr inbounds nuw i8, ptr %i.nbl, i64 2 ; 2 uses
  %.neg13742.sroa.sel = select i1 %.not13741, ptr %.sroa.gep14683, ptr %i.nbo ; 2 uses
  %i.nbq = lshr i64 %i.nat, 16
  %i.nbr = trunc i64 %i.nbq to i8
  store i8 %i.nbr, ptr %.neg13742.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15452 = getelementptr inbounds nuw i8, ptr %i.nbl, i64 3
  %.neg13742.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13741, ptr %.sroa.gep15452, ptr %.sroa.gep14683
  store i8 0, ptr %.neg13742.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nbs = and i64 %i.nat, 16711680
  %.not13743 = icmp eq i64 %i.nbs, 16711680
  %.neg13744 = select i1 %.not13743, i64 2, i64 1
  %i.nbt = getelementptr inbounds nuw i8, ptr %.neg13742.sroa.sel, i64 %.neg13744 ; 4 uses
  %i.nbu = lshr i64 %i.nat, 8
  %i.nbv = trunc i64 %i.nbu to i8
  store i8 %i.nbv, ptr %i.nbt, align 1, !tbaa !31
  %i.nbw = getelementptr inbounds nuw i8, ptr %i.nbt, i64 1 ; 2 uses
  store i8 0, ptr %i.nbw, align 1, !tbaa !31
  %i.nbx = and i64 %i.nat, 65280
  %.not13745 = icmp eq i64 %i.nbx, 65280          ; 2 uses
  %.sroa.gep14685 = getelementptr inbounds nuw i8, ptr %i.nbt, i64 2 ; 2 uses
  %.neg13746.sroa.sel = select i1 %.not13745, ptr %.sroa.gep14685, ptr %i.nbw ; 2 uses
  %i.nby = trunc i64 %i.nat to i8
  store i8 %i.nby, ptr %.neg13746.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15450 = getelementptr inbounds nuw i8, ptr %i.nbt, i64 3
  %.neg13746.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13745, ptr %.sroa.gep15450, ptr %.sroa.gep14685
  store i8 0, ptr %.neg13746.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nbz = and i64 %i.nat, 255
  %.not13747 = icmp eq i64 %i.nbz, 255
  %.neg13748 = select i1 %.not13747, i64 2, i64 1
  %i.nca = getelementptr inbounds nuw i8, ptr %.neg13746.sroa.sel, i64 %.neg13748
  br label %bb.ahz

bb.ahy:                                           ; preds = %bb.ahw
  %i.ncb = lshr i64 %i.nap, 48
  %i.ncc = trunc i64 %i.ncb to i8
  %i.ncd = getelementptr inbounds nuw i8, ptr %.36315222, i64 1
  store i8 %i.ncc, ptr %i.ncd, align 1, !tbaa !31
  %i.nce = lshr i64 %i.nap, 40
  %i.ncf = trunc i64 %i.nce to i8
  %i.ncg = getelementptr inbounds nuw i8, ptr %.36315222, i64 2
  store i8 %i.ncf, ptr %i.ncg, align 1, !tbaa !31
  %i.nch = lshr i64 %i.nap, 32
  %i.nci = trunc i64 %i.nch to i8
  %i.ncj = getelementptr inbounds nuw i8, ptr %.36315222, i64 3
  store i8 %i.nci, ptr %i.ncj, align 1, !tbaa !31
  %i.nck = lshr i64 %i.nat, 24
  %i.ncl = trunc i64 %i.nck to i8
  %i.ncm = getelementptr inbounds nuw i8, ptr %.36315222, i64 4
  store i8 %i.ncl, ptr %i.ncm, align 1, !tbaa !31
  %i.ncn = lshr i64 %i.nat, 16
  %i.nco = trunc i64 %i.ncn to i8
  %i.ncp = getelementptr inbounds nuw i8, ptr %.36315222, i64 5
  store i8 %i.nco, ptr %i.ncp, align 1, !tbaa !31
  %i.ncq = lshr i64 %i.nat, 8
  %i.ncr = trunc i64 %i.ncq to i8
  %i.ncs = getelementptr inbounds nuw i8, ptr %.36315222, i64 6
  store i8 %i.ncr, ptr %i.ncs, align 1, !tbaa !31
  %i.nct = trunc i64 %i.nat to i8
  %i.ncu = getelementptr inbounds nuw i8, ptr %.36315222, i64 7
  store i8 %i.nct, ptr %i.ncu, align 1, !tbaa !31
  %i.ncv = getelementptr inbounds nuw i8, ptr %.36315222, i64 8
  br label %bb.ahz

bb.ahz:                                           ; preds = %bb.ahy, %bb.ahx
  %.364 = phi ptr [ %i.nca, %bb.ahx ], [ %i.ncv, %bb.ahy ]
  %i.ncw = add nsw i32 %i.nal, 64
  %i.ncx = load i32, ptr %i.nah, align 4, !tbaa !3
  %i.ncy = zext i32 %i.ncx to i64
  br label %bb.aib

bb.aia:                                           ; preds = %bb.ahv
  %i.ncz = zext nneg i32 %i.nak to i64
  %i.nda = shl i64 %.2411128415221, %i.ncz
  %i.ndb = zext i32 %i.nan to i64
  %i.ndc = or i64 %i.nda, %i.ndb
  br label %bb.aib

bb.aib:                                           ; preds = %bb.aia, %bb.ahz
  %.24211539 = phi i32 [ %i.ncw, %bb.ahz ], [ %i.nal, %bb.aia ] ; 2 uses
  %.24211285 = phi i64 [ %i.ncy, %bb.ahz ], [ %i.ndc, %bb.aia ] ; 2 uses
  %.365 = phi ptr [ %.364, %bb.ahz ], [ %.36315222, %bb.aia ] ; 2 uses
  %i.ndd = icmp samesign ugt i32 %.12015223, 511
  br i1 %i.ndd, label %bb.ahv, label %._crit_edge15226, !llvm.loop !133

._crit_edge15226:                                 ; preds = %bb.aib, %bb.ahu
  %.24111538.lcssa = phi i32 [ %.24011537, %bb.ahu ], [ %.24211539, %bb.aib ] ; 2 uses
  %.24111284.lcssa = phi i64 [ %.24011283, %bb.ahu ], [ %.24211285, %bb.aib ] ; 2 uses
  %.363.lcssa = phi ptr [ %.362, %bb.ahu ], [ %.365, %bb.aib ] ; 13 uses
  %.120.lcssa = phi i32 [ %.119, %bb.ahu ], [ %i.nai, %bb.aib ]
  %i.nde = add nuw nsw i32 %.120.lcssa, %i.mzz
  %i.ndf = zext nneg i8 %i.mzy to i64
  %notmask13714 = shl nsw i64 -1, %i.ndf
  %i.ndg = trunc i64 %notmask13714 to i32
  %i.ndh = xor i32 %i.ndg, -1
  %i.ndi = and i32 %i.mzu, %i.ndh
  %i.ndj = zext nneg i32 %i.nde to i64            ; 2 uses
  %i.ndk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ndj
  %i.ndl = load i32, ptr %i.ndk, align 4, !tbaa !3
  %i.ndm = shl i32 %i.ndl, %i.mzz
  %i.ndn = or i32 %i.ndm, %i.ndi                  ; 3 uses
  %i.ndo = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.ndp = getelementptr inbounds nuw i8, ptr %i.ndo, i64 %i.ndj
  %i.ndq = load i8, ptr %i.ndp, align 1, !tbaa !31
  %i.ndr = sext i8 %i.ndq to i32
  %i.nds = add nsw i32 %i.ndr, %i.mzz             ; 2 uses
  %i.ndt = sub nsw i32 %.24111538.lcssa, %i.nds   ; 4 uses
  %i.ndu = icmp slt i32 %i.ndt, 0
  br i1 %i.ndu, label %bb.aic, label %bb.aig

bb.aic:                                           ; preds = %._crit_edge15226
  %i.ndv = zext nneg i32 %.24111538.lcssa to i64
  %i.ndw = shl i64 %.24111284.lcssa, %i.ndv
  %i.ndx = sub nsw i32 0, %i.ndt
  %i.ndy = ashr i32 %i.ndn, %i.ndx
  %i.ndz = sext i32 %i.ndy to i64
  %i.nea = or i64 %i.ndw, %i.ndz                  ; 24 uses
  %i.neb = and i64 %i.nea, -9187201950435737472
  %i.nec = sub i64 -72340172838076674, %i.nea
  %i.ned = and i64 %i.neb, %i.nec
  %.not13715 = icmp eq i64 %i.ned, 0
  %i.nee = lshr i64 %i.nea, 56                    ; 2 uses
  %i.nef = trunc nuw i64 %i.nee to i8
  store i8 %i.nef, ptr %.363.lcssa, align 1, !tbaa !31
  br i1 %.not13715, label %bb.aie, label %bb.aid

bb.aid:                                           ; preds = %bb.aic
  %i.neg = getelementptr inbounds nuw i8, ptr %.363.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.neg, align 1, !tbaa !31
  %.not13716 = icmp eq i64 %i.nee, 255            ; 2 uses
  %.sroa.gep14687 = getelementptr inbounds nuw i8, ptr %.363.lcssa, i64 2 ; 2 uses
  %.neg13717.sroa.sel = select i1 %.not13716, ptr %.sroa.gep14687, ptr %i.neg ; 2 uses
  %i.neh = lshr i64 %i.nea, 48
  %i.nei = trunc i64 %i.neh to i8
  store i8 %i.nei, ptr %.neg13717.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15456 = getelementptr inbounds nuw i8, ptr %.363.lcssa, i64 3
  %.neg13717.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13716, ptr %.sroa.gep15456, ptr %.sroa.gep14687
  store i8 0, ptr %.neg13717.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nej = and i64 %i.nea, 71776119061217280
  %.not13718 = icmp eq i64 %i.nej, 71776119061217280
  %.neg13719 = select i1 %.not13718, i64 2, i64 1
  %i.nek = getelementptr inbounds nuw i8, ptr %.neg13717.sroa.sel, i64 %.neg13719 ; 4 uses
  %i.nel = lshr i64 %i.nea, 40
  %i.nem = trunc i64 %i.nel to i8
  store i8 %i.nem, ptr %i.nek, align 1, !tbaa !31
  %i.nen = getelementptr inbounds nuw i8, ptr %i.nek, i64 1 ; 2 uses
  store i8 0, ptr %i.nen, align 1, !tbaa !31
  %i.neo = and i64 %i.nea, 280375465082880
  %.not13720 = icmp eq i64 %i.neo, 280375465082880 ; 2 uses
  %.sroa.gep14689 = getelementptr inbounds nuw i8, ptr %i.nek, i64 2 ; 2 uses
  %.neg13721.sroa.sel = select i1 %.not13720, ptr %.sroa.gep14689, ptr %i.nen ; 2 uses
  %i.nep = lshr i64 %i.nea, 32
  %i.neq = trunc i64 %i.nep to i8
  store i8 %i.neq, ptr %.neg13721.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15462 = getelementptr inbounds nuw i8, ptr %i.nek, i64 3
  %.neg13721.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13720, ptr %.sroa.gep15462, ptr %.sroa.gep14689
  store i8 0, ptr %.neg13721.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.ner = and i64 %i.nea, 1095216660480
  %.not13722 = icmp eq i64 %i.ner, 1095216660480
  %.neg13723 = select i1 %.not13722, i64 2, i64 1
  %i.nes = getelementptr inbounds nuw i8, ptr %.neg13721.sroa.sel, i64 %.neg13723 ; 4 uses
  %i.net = lshr i64 %i.nea, 24
  %i.neu = trunc i64 %i.net to i8
  store i8 %i.neu, ptr %i.nes, align 1, !tbaa !31
  %i.nev = getelementptr inbounds nuw i8, ptr %i.nes, i64 1 ; 2 uses
  store i8 0, ptr %i.nev, align 1, !tbaa !31
  %i.new = and i64 %i.nea, 4278190080
  %.not13724 = icmp eq i64 %i.new, 4278190080     ; 2 uses
  %.sroa.gep14691 = getelementptr inbounds nuw i8, ptr %i.nes, i64 2 ; 2 uses
  %.neg13725.sroa.sel = select i1 %.not13724, ptr %.sroa.gep14691, ptr %i.nev ; 2 uses
  %i.nex = lshr i64 %i.nea, 16
  %i.ney = trunc i64 %i.nex to i8
  store i8 %i.ney, ptr %.neg13725.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15460 = getelementptr inbounds nuw i8, ptr %i.nes, i64 3
  %.neg13725.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13724, ptr %.sroa.gep15460, ptr %.sroa.gep14691
  store i8 0, ptr %.neg13725.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nez = and i64 %i.nea, 16711680
  %.not13726 = icmp eq i64 %i.nez, 16711680
  %.neg13727 = select i1 %.not13726, i64 2, i64 1
  %i.nfa = getelementptr inbounds nuw i8, ptr %.neg13725.sroa.sel, i64 %.neg13727 ; 4 uses
  %i.nfb = lshr i64 %i.nea, 8
  %i.nfc = trunc i64 %i.nfb to i8
  store i8 %i.nfc, ptr %i.nfa, align 1, !tbaa !31
  %i.nfd = getelementptr inbounds nuw i8, ptr %i.nfa, i64 1 ; 2 uses
  store i8 0, ptr %i.nfd, align 1, !tbaa !31
  %i.nfe = and i64 %i.nea, 65280
  %.not13728 = icmp eq i64 %i.nfe, 65280          ; 2 uses
  %.sroa.gep14693 = getelementptr inbounds nuw i8, ptr %i.nfa, i64 2 ; 2 uses
  %.neg13729.sroa.sel = select i1 %.not13728, ptr %.sroa.gep14693, ptr %i.nfd ; 2 uses
  %i.nff = trunc i64 %i.nea to i8
  store i8 %i.nff, ptr %.neg13729.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15458 = getelementptr inbounds nuw i8, ptr %i.nfa, i64 3
  %.neg13729.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13728, ptr %.sroa.gep15458, ptr %.sroa.gep14693
  store i8 0, ptr %.neg13729.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nfg = and i64 %i.nea, 255
  %.not13730 = icmp eq i64 %i.nfg, 255
  %.neg13731 = select i1 %.not13730, i64 2, i64 1
  %i.nfh = getelementptr inbounds nuw i8, ptr %.neg13729.sroa.sel, i64 %.neg13731
  br label %bb.aif

bb.aie:                                           ; preds = %bb.aic
  %i.nfi = lshr i64 %i.nea, 48
  %i.nfj = trunc i64 %i.nfi to i8
  %i.nfk = getelementptr inbounds nuw i8, ptr %.363.lcssa, i64 1
  store i8 %i.nfj, ptr %i.nfk, align 1, !tbaa !31
  %i.nfl = lshr i64 %i.nea, 40
  %i.nfm = trunc i64 %i.nfl to i8
  %i.nfn = getelementptr inbounds nuw i8, ptr %.363.lcssa, i64 2
  store i8 %i.nfm, ptr %i.nfn, align 1, !tbaa !31
  %i.nfo = lshr i64 %i.nea, 32
  %i.nfp = trunc i64 %i.nfo to i8
  %i.nfq = getelementptr inbounds nuw i8, ptr %.363.lcssa, i64 3
  store i8 %i.nfp, ptr %i.nfq, align 1, !tbaa !31
  %i.nfr = lshr i64 %i.nea, 24
  %i.nfs = trunc i64 %i.nfr to i8
  %i.nft = getelementptr inbounds nuw i8, ptr %.363.lcssa, i64 4
  store i8 %i.nfs, ptr %i.nft, align 1, !tbaa !31
  %i.nfu = lshr i64 %i.nea, 16
  %i.nfv = trunc i64 %i.nfu to i8
  %i.nfw = getelementptr inbounds nuw i8, ptr %.363.lcssa, i64 5
  store i8 %i.nfv, ptr %i.nfw, align 1, !tbaa !31
  %i.nfx = lshr i64 %i.nea, 8
  %i.nfy = trunc i64 %i.nfx to i8
  %i.nfz = getelementptr inbounds nuw i8, ptr %.363.lcssa, i64 6
  store i8 %i.nfy, ptr %i.nfz, align 1, !tbaa !31
  %i.nga = trunc i64 %i.nea to i8
  %i.ngb = getelementptr inbounds nuw i8, ptr %.363.lcssa, i64 7
  store i8 %i.nga, ptr %i.ngb, align 1, !tbaa !31
  %i.ngc = getelementptr inbounds nuw i8, ptr %.363.lcssa, i64 8
  br label %bb.aif

bb.aif:                                           ; preds = %bb.aie, %bb.aid
  %.366 = phi ptr [ %i.nfh, %bb.aid ], [ %i.ngc, %bb.aie ]
  %i.ngd = add nsw i32 %i.ndt, 64
  %i.nge = sext i32 %i.ndn to i64
  br label %bb.aih

bb.aig:                                           ; preds = %._crit_edge15226
  %i.ngf = zext nneg i32 %i.nds to i64
  %i.ngg = shl i64 %.24111284.lcssa, %i.ngf
  %i.ngh = sext i32 %i.ndn to i64
  %i.ngi = or i64 %i.ngg, %i.ngh
  br label %bb.aih

bb.aih:                                           ; preds = %bb.aif, %bb.aig, %bb.ahr
  %.24411541 = phi i32 [ %.24011537, %bb.ahr ], [ %i.ngd, %bb.aif ], [ %i.ndt, %bb.aig ] ; 3 uses
  %.24411287 = phi i64 [ %.24011283, %bb.ahr ], [ %i.nge, %bb.aif ], [ %i.ngi, %bb.aig ] ; 3 uses
  %.368 = phi ptr [ %.362, %bb.ahr ], [ %.366, %bb.aif ], [ %.363.lcssa, %bb.aig ] ; 3 uses
  %.121 = phi i32 [ %i.mzr, %bb.ahr ], [ 0, %bb.aif ], [ 0, %bb.aig ] ; 4 uses
  %i.ngj = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ngk = load i16, ptr %i.ngj, align 2, !tbaa !79 ; 2 uses
  %i.ngl = icmp eq i16 %i.ngk, 0
  br i1 %i.ngl, label %bb.aii, label %bb.aij

bb.aii:                                           ; preds = %bb.aih
  %i.ngm = add nuw nsw i32 %.121, 16
  br label %bb.aiy

bb.aij:                                           ; preds = %bb.aih
  %i.ngn = sext i16 %i.ngk to i32                 ; 2 uses
  %i.ngo = ashr i32 %i.ngn, 31                    ; 2 uses
  %i.ngp = add nsw i32 %i.ngo, %i.ngn             ; 2 uses
  %i.ngq = xor i32 %i.ngp, %i.ngo
  %i.ngr = sext i32 %i.ngq to i64
  %i.ngs = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.ngr
  %i.ngt = load i8, ptr %i.ngs, align 1, !tbaa !31 ; 2 uses
  %i.ngu = zext i8 %i.ngt to i32                  ; 4 uses
  %i.ngv = icmp slt i32 %i.f, %i.ngu
  br i1 %i.ngv, label %bb.aik, label %bb.ail

bb.aik:                                           ; preds = %bb.aij
  %i.ngw = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.ngx = load ptr, ptr %i.ngw, align 8, !tbaa !7 ; 2 uses
  %i.ngy = getelementptr inbounds nuw i8, ptr %i.ngx, i64 40
  store i32 6, ptr %i.ngy, align 8, !tbaa !26
  %i.ngz = load ptr, ptr %i.ngx, align 8, !tbaa !32
  tail call void %i.ngz(ptr noundef nonnull %i.ngw) #7
  br label %bb.ail

bb.ail:                                           ; preds = %bb.aik, %bb.aij
  %i.nha = icmp samesign ugt i32 %.121, 255
  br i1 %i.nha, label %.lr.ph15236, label %._crit_edge15237

.lr.ph15236:                                      ; preds = %bb.ail
  %i.nhb = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.nhc = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.aim

bb.aim:                                           ; preds = %.lr.ph15236, %bb.ais
  %.12215234 = phi i32 [ %.121, %.lr.ph15236 ], [ %i.nhd, %bb.ais ] ; 2 uses
  %.36915233 = phi ptr [ %.368, %.lr.ph15236 ], [ %.371, %bb.ais ] ; 13 uses
  %.2451128815232 = phi i64 [ %.24411287, %.lr.ph15236 ], [ %.24611289, %bb.ais ] ; 2 uses
  %.2451154215231 = phi i32 [ %.24411541, %.lr.ph15236 ], [ %.24611543, %bb.ais ] ; 2 uses
  %i.nhd = add nsw i32 %.12215234, -256           ; 2 uses
  %i.nhe = load i8, ptr %i.nhb, align 4, !tbaa !31
  %i.nhf = sext i8 %i.nhe to i32                  ; 2 uses
  %i.nhg = sub nsw i32 %.2451154215231, %i.nhf    ; 4 uses
  %i.nhh = icmp slt i32 %i.nhg, 0
  %i.nhi = load i32, ptr %i.nhc, align 4, !tbaa !3 ; 2 uses
  br i1 %i.nhh, label %bb.ain, label %bb.air

bb.ain:                                           ; preds = %bb.aim
  %i.nhj = zext nneg i32 %.2451154215231 to i64
  %i.nhk = shl i64 %.2451128815232, %i.nhj        ; 11 uses
  %i.nhl = sub nsw i32 0, %i.nhg
  %i.nhm = lshr i32 %i.nhi, %i.nhl
  %i.nhn = zext nneg i32 %i.nhm to i64
  %i.nho = or i64 %i.nhk, %i.nhn                  ; 14 uses
  %i.nhp = and i64 %i.nho, -9187201950435737472
  %i.nhq = sub i64 -72340172838076674, %i.nho
  %i.nhr = and i64 %i.nhp, %i.nhq
  %.not13767 = icmp eq i64 %i.nhr, 0
  %i.nhs = lshr i64 %i.nhk, 56                    ; 2 uses
  %i.nht = trunc nuw i64 %i.nhs to i8
  store i8 %i.nht, ptr %.36915233, align 1, !tbaa !31
  br i1 %.not13767, label %bb.aip, label %bb.aio

bb.aio:                                           ; preds = %bb.ain
  %i.nhu = getelementptr inbounds nuw i8, ptr %.36915233, i64 1 ; 2 uses
  store i8 0, ptr %i.nhu, align 1, !tbaa !31
  %.not13768 = icmp eq i64 %i.nhs, 255            ; 2 uses
  %.sroa.gep14695 = getelementptr inbounds nuw i8, ptr %.36915233, i64 2 ; 2 uses
  %.neg13769.sroa.sel = select i1 %.not13768, ptr %.sroa.gep14695, ptr %i.nhu ; 2 uses
  %i.nhv = lshr i64 %i.nhk, 48
  %i.nhw = trunc i64 %i.nhv to i8
  store i8 %i.nhw, ptr %.neg13769.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15432 = getelementptr inbounds nuw i8, ptr %.36915233, i64 3
  %.neg13769.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13768, ptr %.sroa.gep15432, ptr %.sroa.gep14695
  store i8 0, ptr %.neg13769.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nhx = and i64 %i.nhk, 71776119061217280
  %.not13770 = icmp eq i64 %i.nhx, 71776119061217280
  %.neg13771 = select i1 %.not13770, i64 2, i64 1
  %i.nhy = getelementptr inbounds nuw i8, ptr %.neg13769.sroa.sel, i64 %.neg13771 ; 4 uses
  %i.nhz = lshr i64 %i.nhk, 40
  %i.nia = trunc i64 %i.nhz to i8
  store i8 %i.nia, ptr %i.nhy, align 1, !tbaa !31
  %i.nib = getelementptr inbounds nuw i8, ptr %i.nhy, i64 1 ; 2 uses
  store i8 0, ptr %i.nib, align 1, !tbaa !31
  %i.nic = and i64 %i.nhk, 280375465082880
  %.not13772 = icmp eq i64 %i.nic, 280375465082880 ; 2 uses
  %.sroa.gep14697 = getelementptr inbounds nuw i8, ptr %i.nhy, i64 2 ; 2 uses
  %.neg13773.sroa.sel = select i1 %.not13772, ptr %.sroa.gep14697, ptr %i.nib ; 2 uses
  %i.nid = lshr i64 %i.nhk, 32
  %i.nie = trunc i64 %i.nid to i8
  store i8 %i.nie, ptr %.neg13773.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15438 = getelementptr inbounds nuw i8, ptr %i.nhy, i64 3
  %.neg13773.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13772, ptr %.sroa.gep15438, ptr %.sroa.gep14697
  store i8 0, ptr %.neg13773.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nif = and i64 %i.nhk, 1095216660480
  %.not13774 = icmp eq i64 %i.nif, 1095216660480
  %.neg13775 = select i1 %.not13774, i64 2, i64 1
  %i.nig = getelementptr inbounds nuw i8, ptr %.neg13773.sroa.sel, i64 %.neg13775 ; 4 uses
  %i.nih = lshr i64 %i.nho, 24
  %i.nii = trunc i64 %i.nih to i8
  store i8 %i.nii, ptr %i.nig, align 1, !tbaa !31
  %i.nij = getelementptr inbounds nuw i8, ptr %i.nig, i64 1 ; 2 uses
  store i8 0, ptr %i.nij, align 1, !tbaa !31
  %i.nik = and i64 %i.nho, 4278190080
  %.not13776 = icmp eq i64 %i.nik, 4278190080     ; 2 uses
  %.sroa.gep14699 = getelementptr inbounds nuw i8, ptr %i.nig, i64 2 ; 2 uses
  %.neg13777.sroa.sel = select i1 %.not13776, ptr %.sroa.gep14699, ptr %i.nij ; 2 uses
  %i.nil = lshr i64 %i.nho, 16
  %i.nim = trunc i64 %i.nil to i8
  store i8 %i.nim, ptr %.neg13777.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15436 = getelementptr inbounds nuw i8, ptr %i.nig, i64 3
  %.neg13777.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13776, ptr %.sroa.gep15436, ptr %.sroa.gep14699
  store i8 0, ptr %.neg13777.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nin = and i64 %i.nho, 16711680
  %.not13778 = icmp eq i64 %i.nin, 16711680
  %.neg13779 = select i1 %.not13778, i64 2, i64 1
  %i.nio = getelementptr inbounds nuw i8, ptr %.neg13777.sroa.sel, i64 %.neg13779 ; 4 uses
  %i.nip = lshr i64 %i.nho, 8
  %i.niq = trunc i64 %i.nip to i8
  store i8 %i.niq, ptr %i.nio, align 1, !tbaa !31
  %i.nir = getelementptr inbounds nuw i8, ptr %i.nio, i64 1 ; 2 uses
  store i8 0, ptr %i.nir, align 1, !tbaa !31
  %i.nis = and i64 %i.nho, 65280
  %.not13780 = icmp eq i64 %i.nis, 65280          ; 2 uses
  %.sroa.gep14701 = getelementptr inbounds nuw i8, ptr %i.nio, i64 2 ; 2 uses
  %.neg13781.sroa.sel = select i1 %.not13780, ptr %.sroa.gep14701, ptr %i.nir ; 2 uses
  %i.nit = trunc i64 %i.nho to i8
  store i8 %i.nit, ptr %.neg13781.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15434 = getelementptr inbounds nuw i8, ptr %i.nio, i64 3
  %.neg13781.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13780, ptr %.sroa.gep15434, ptr %.sroa.gep14701
  store i8 0, ptr %.neg13781.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.niu = and i64 %i.nho, 255
  %.not13782 = icmp eq i64 %i.niu, 255
  %.neg13783 = select i1 %.not13782, i64 2, i64 1
  %i.niv = getelementptr inbounds nuw i8, ptr %.neg13781.sroa.sel, i64 %.neg13783
  br label %bb.aiq

bb.aip:                                           ; preds = %bb.ain
  %i.niw = lshr i64 %i.nhk, 48
  %i.nix = trunc i64 %i.niw to i8
  %i.niy = getelementptr inbounds nuw i8, ptr %.36915233, i64 1
  store i8 %i.nix, ptr %i.niy, align 1, !tbaa !31
  %i.niz = lshr i64 %i.nhk, 40
  %i.nja = trunc i64 %i.niz to i8
  %i.njb = getelementptr inbounds nuw i8, ptr %.36915233, i64 2
  store i8 %i.nja, ptr %i.njb, align 1, !tbaa !31
  %i.njc = lshr i64 %i.nhk, 32
  %i.njd = trunc i64 %i.njc to i8
  %i.nje = getelementptr inbounds nuw i8, ptr %.36915233, i64 3
  store i8 %i.njd, ptr %i.nje, align 1, !tbaa !31
  %i.njf = lshr i64 %i.nho, 24
  %i.njg = trunc i64 %i.njf to i8
  %i.njh = getelementptr inbounds nuw i8, ptr %.36915233, i64 4
  store i8 %i.njg, ptr %i.njh, align 1, !tbaa !31
  %i.nji = lshr i64 %i.nho, 16
  %i.njj = trunc i64 %i.nji to i8
  %i.njk = getelementptr inbounds nuw i8, ptr %.36915233, i64 5
  store i8 %i.njj, ptr %i.njk, align 1, !tbaa !31
  %i.njl = lshr i64 %i.nho, 8
  %i.njm = trunc i64 %i.njl to i8
  %i.njn = getelementptr inbounds nuw i8, ptr %.36915233, i64 6
  store i8 %i.njm, ptr %i.njn, align 1, !tbaa !31
  %i.njo = trunc i64 %i.nho to i8
  %i.njp = getelementptr inbounds nuw i8, ptr %.36915233, i64 7
  store i8 %i.njo, ptr %i.njp, align 1, !tbaa !31
  %i.njq = getelementptr inbounds nuw i8, ptr %.36915233, i64 8
  br label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip, %bb.aio
  %.370 = phi ptr [ %i.niv, %bb.aio ], [ %i.njq, %bb.aip ]
  %i.njr = add nsw i32 %i.nhg, 64
  %i.njs = load i32, ptr %i.nhc, align 4, !tbaa !3
  %i.njt = zext i32 %i.njs to i64
  br label %bb.ais

bb.air:                                           ; preds = %bb.aim
  %i.nju = zext nneg i32 %i.nhf to i64
  %i.njv = shl i64 %.2451128815232, %i.nju
  %i.njw = zext i32 %i.nhi to i64
  %i.njx = or i64 %i.njv, %i.njw
  br label %bb.ais

bb.ais:                                           ; preds = %bb.air, %bb.aiq
  %.24611543 = phi i32 [ %i.njr, %bb.aiq ], [ %i.nhg, %bb.air ] ; 2 uses
  %.24611289 = phi i64 [ %i.njt, %bb.aiq ], [ %i.njx, %bb.air ] ; 2 uses
  %.371 = phi ptr [ %.370, %bb.aiq ], [ %.36915233, %bb.air ] ; 2 uses
  %i.njy = icmp samesign ugt i32 %.12215234, 511
  br i1 %i.njy, label %bb.aim, label %._crit_edge15237, !llvm.loop !134

._crit_edge15237:                                 ; preds = %bb.ais, %bb.ail
  %.24511542.lcssa = phi i32 [ %.24411541, %bb.ail ], [ %.24611543, %bb.ais ] ; 2 uses
  %.24511288.lcssa = phi i64 [ %.24411287, %bb.ail ], [ %.24611289, %bb.ais ] ; 2 uses
  %.369.lcssa = phi ptr [ %.368, %bb.ail ], [ %.371, %bb.ais ] ; 13 uses
  %.122.lcssa = phi i32 [ %.121, %bb.ail ], [ %i.nhd, %bb.ais ]
  %i.njz = add nuw nsw i32 %.122.lcssa, %i.ngu
  %i.nka = zext nneg i8 %i.ngt to i64
  %notmask13749 = shl nsw i64 -1, %i.nka
  %i.nkb = trunc i64 %notmask13749 to i32
  %i.nkc = xor i32 %i.nkb, -1
  %i.nkd = and i32 %i.ngp, %i.nkc
  %i.nke = zext nneg i32 %i.njz to i64            ; 2 uses
  %i.nkf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.nke
  %i.nkg = load i32, ptr %i.nkf, align 4, !tbaa !3
  %i.nkh = shl i32 %i.nkg, %i.ngu
  %i.nki = or i32 %i.nkh, %i.nkd                  ; 3 uses
  %i.nkj = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.nkk = getelementptr inbounds nuw i8, ptr %i.nkj, i64 %i.nke
  %i.nkl = load i8, ptr %i.nkk, align 1, !tbaa !31
  %i.nkm = sext i8 %i.nkl to i32
  %i.nkn = add nsw i32 %i.nkm, %i.ngu             ; 2 uses
  %i.nko = sub nsw i32 %.24511542.lcssa, %i.nkn   ; 4 uses
  %i.nkp = icmp slt i32 %i.nko, 0
  br i1 %i.nkp, label %bb.ait, label %bb.aix

bb.ait:                                           ; preds = %._crit_edge15237
  %i.nkq = zext nneg i32 %.24511542.lcssa to i64
  %i.nkr = shl i64 %.24511288.lcssa, %i.nkq
  %i.nks = sub nsw i32 0, %i.nko
  %i.nkt = ashr i32 %i.nki, %i.nks
  %i.nku = sext i32 %i.nkt to i64
  %i.nkv = or i64 %i.nkr, %i.nku                  ; 24 uses
  %i.nkw = and i64 %i.nkv, -9187201950435737472
  %i.nkx = sub i64 -72340172838076674, %i.nkv
  %i.nky = and i64 %i.nkw, %i.nkx
  %.not13750 = icmp eq i64 %i.nky, 0
  %i.nkz = lshr i64 %i.nkv, 56                    ; 2 uses
  %i.nla = trunc nuw i64 %i.nkz to i8
  store i8 %i.nla, ptr %.369.lcssa, align 1, !tbaa !31
  br i1 %.not13750, label %bb.aiv, label %bb.aiu

bb.aiu:                                           ; preds = %bb.ait
  %i.nlb = getelementptr inbounds nuw i8, ptr %.369.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.nlb, align 1, !tbaa !31
  %.not13751 = icmp eq i64 %i.nkz, 255            ; 2 uses
  %.sroa.gep14703 = getelementptr inbounds nuw i8, ptr %.369.lcssa, i64 2 ; 2 uses
  %.neg13752.sroa.sel = select i1 %.not13751, ptr %.sroa.gep14703, ptr %i.nlb ; 2 uses
  %i.nlc = lshr i64 %i.nkv, 48
  %i.nld = trunc i64 %i.nlc to i8
  store i8 %i.nld, ptr %.neg13752.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15440 = getelementptr inbounds nuw i8, ptr %.369.lcssa, i64 3
  %.neg13752.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13751, ptr %.sroa.gep15440, ptr %.sroa.gep14703
  store i8 0, ptr %.neg13752.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nle = and i64 %i.nkv, 71776119061217280
  %.not13753 = icmp eq i64 %i.nle, 71776119061217280
  %.neg13754 = select i1 %.not13753, i64 2, i64 1
  %i.nlf = getelementptr inbounds nuw i8, ptr %.neg13752.sroa.sel, i64 %.neg13754 ; 4 uses
  %i.nlg = lshr i64 %i.nkv, 40
  %i.nlh = trunc i64 %i.nlg to i8
  store i8 %i.nlh, ptr %i.nlf, align 1, !tbaa !31
  %i.nli = getelementptr inbounds nuw i8, ptr %i.nlf, i64 1 ; 2 uses
  store i8 0, ptr %i.nli, align 1, !tbaa !31
  %i.nlj = and i64 %i.nkv, 280375465082880
  %.not13755 = icmp eq i64 %i.nlj, 280375465082880 ; 2 uses
  %.sroa.gep14705 = getelementptr inbounds nuw i8, ptr %i.nlf, i64 2 ; 2 uses
  %.neg13756.sroa.sel = select i1 %.not13755, ptr %.sroa.gep14705, ptr %i.nli ; 2 uses
  %i.nlk = lshr i64 %i.nkv, 32
  %i.nll = trunc i64 %i.nlk to i8
  store i8 %i.nll, ptr %.neg13756.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15446 = getelementptr inbounds nuw i8, ptr %i.nlf, i64 3
  %.neg13756.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13755, ptr %.sroa.gep15446, ptr %.sroa.gep14705
  store i8 0, ptr %.neg13756.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nlm = and i64 %i.nkv, 1095216660480
  %.not13757 = icmp eq i64 %i.nlm, 1095216660480
  %.neg13758 = select i1 %.not13757, i64 2, i64 1
  %i.nln = getelementptr inbounds nuw i8, ptr %.neg13756.sroa.sel, i64 %.neg13758 ; 4 uses
  %i.nlo = lshr i64 %i.nkv, 24
  %i.nlp = trunc i64 %i.nlo to i8
  store i8 %i.nlp, ptr %i.nln, align 1, !tbaa !31
  %i.nlq = getelementptr inbounds nuw i8, ptr %i.nln, i64 1 ; 2 uses
  store i8 0, ptr %i.nlq, align 1, !tbaa !31
  %i.nlr = and i64 %i.nkv, 4278190080
  %.not13759 = icmp eq i64 %i.nlr, 4278190080     ; 2 uses
  %.sroa.gep14707 = getelementptr inbounds nuw i8, ptr %i.nln, i64 2 ; 2 uses
  %.neg13760.sroa.sel = select i1 %.not13759, ptr %.sroa.gep14707, ptr %i.nlq ; 2 uses
  %i.nls = lshr i64 %i.nkv, 16
  %i.nlt = trunc i64 %i.nls to i8
  store i8 %i.nlt, ptr %.neg13760.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15444 = getelementptr inbounds nuw i8, ptr %i.nln, i64 3
  %.neg13760.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13759, ptr %.sroa.gep15444, ptr %.sroa.gep14707
  store i8 0, ptr %.neg13760.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nlu = and i64 %i.nkv, 16711680
  %.not13761 = icmp eq i64 %i.nlu, 16711680
  %.neg13762 = select i1 %.not13761, i64 2, i64 1
  %i.nlv = getelementptr inbounds nuw i8, ptr %.neg13760.sroa.sel, i64 %.neg13762 ; 4 uses
  %i.nlw = lshr i64 %i.nkv, 8
  %i.nlx = trunc i64 %i.nlw to i8
  store i8 %i.nlx, ptr %i.nlv, align 1, !tbaa !31
  %i.nly = getelementptr inbounds nuw i8, ptr %i.nlv, i64 1 ; 2 uses
  store i8 0, ptr %i.nly, align 1, !tbaa !31
  %i.nlz = and i64 %i.nkv, 65280
  %.not13763 = icmp eq i64 %i.nlz, 65280          ; 2 uses
  %.sroa.gep14709 = getelementptr inbounds nuw i8, ptr %i.nlv, i64 2 ; 2 uses
  %.neg13764.sroa.sel = select i1 %.not13763, ptr %.sroa.gep14709, ptr %i.nly ; 2 uses
  %i.nma = trunc i64 %i.nkv to i8
  store i8 %i.nma, ptr %.neg13764.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15442 = getelementptr inbounds nuw i8, ptr %i.nlv, i64 3
  %.neg13764.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13763, ptr %.sroa.gep15442, ptr %.sroa.gep14709
  store i8 0, ptr %.neg13764.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nmb = and i64 %i.nkv, 255
  %.not13765 = icmp eq i64 %i.nmb, 255
  %.neg13766 = select i1 %.not13765, i64 2, i64 1
  %i.nmc = getelementptr inbounds nuw i8, ptr %.neg13764.sroa.sel, i64 %.neg13766
  br label %bb.aiw

bb.aiv:                                           ; preds = %bb.ait
  %i.nmd = lshr i64 %i.nkv, 48
  %i.nme = trunc i64 %i.nmd to i8
  %i.nmf = getelementptr inbounds nuw i8, ptr %.369.lcssa, i64 1
  store i8 %i.nme, ptr %i.nmf, align 1, !tbaa !31
  %i.nmg = lshr i64 %i.nkv, 40
  %i.nmh = trunc i64 %i.nmg to i8
  %i.nmi = getelementptr inbounds nuw i8, ptr %.369.lcssa, i64 2
  store i8 %i.nmh, ptr %i.nmi, align 1, !tbaa !31
  %i.nmj = lshr i64 %i.nkv, 32
  %i.nmk = trunc i64 %i.nmj to i8
  %i.nml = getelementptr inbounds nuw i8, ptr %.369.lcssa, i64 3
  store i8 %i.nmk, ptr %i.nml, align 1, !tbaa !31
  %i.nmm = lshr i64 %i.nkv, 24
  %i.nmn = trunc i64 %i.nmm to i8
  %i.nmo = getelementptr inbounds nuw i8, ptr %.369.lcssa, i64 4
  store i8 %i.nmn, ptr %i.nmo, align 1, !tbaa !31
  %i.nmp = lshr i64 %i.nkv, 16
  %i.nmq = trunc i64 %i.nmp to i8
  %i.nmr = getelementptr inbounds nuw i8, ptr %.369.lcssa, i64 5
  store i8 %i.nmq, ptr %i.nmr, align 1, !tbaa !31
  %i.nms = lshr i64 %i.nkv, 8
  %i.nmt = trunc i64 %i.nms to i8
  %i.nmu = getelementptr inbounds nuw i8, ptr %.369.lcssa, i64 6
  store i8 %i.nmt, ptr %i.nmu, align 1, !tbaa !31
  %i.nmv = trunc i64 %i.nkv to i8
  %i.nmw = getelementptr inbounds nuw i8, ptr %.369.lcssa, i64 7
  store i8 %i.nmv, ptr %i.nmw, align 1, !tbaa !31
  %i.nmx = getelementptr inbounds nuw i8, ptr %.369.lcssa, i64 8
  br label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv, %bb.aiu
  %.372 = phi ptr [ %i.nmc, %bb.aiu ], [ %i.nmx, %bb.aiv ]
  %i.nmy = add nsw i32 %i.nko, 64
  %i.nmz = sext i32 %i.nki to i64
  br label %bb.aiy

bb.aix:                                           ; preds = %._crit_edge15237
  %i.nna = zext nneg i32 %i.nkn to i64
  %i.nnb = shl i64 %.24511288.lcssa, %i.nna
  %i.nnc = sext i32 %i.nki to i64
  %i.nnd = or i64 %i.nnb, %i.nnc
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aiw, %bb.aix, %bb.aii
  %.24811545 = phi i32 [ %.24411541, %bb.aii ], [ %i.nmy, %bb.aiw ], [ %i.nko, %bb.aix ] ; 4 uses
  %.24811291 = phi i64 [ %.24411287, %bb.aii ], [ %i.nmz, %bb.aiw ], [ %i.nnd, %bb.aix ] ; 4 uses
  %.374 = phi ptr [ %.368, %bb.aii ], [ %.372, %bb.aiw ], [ %.369.lcssa, %bb.aix ] ; 15 uses
  %.123 = phi i32 [ %i.ngm, %bb.aii ], [ 0, %bb.aiw ], [ 0, %bb.aix ] ; 3 uses
  %i.nne = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.nnf = load i16, ptr %i.nne, align 2, !tbaa !79 ; 2 uses
  %i.nng = icmp eq i16 %i.nnf, 0
  br i1 %i.nng, label %bb.ajo, label %bb.aiz

bb.aiz:                                           ; preds = %bb.aiy
  %i.nnh = sext i16 %i.nnf to i32                 ; 2 uses
  %i.nni = ashr i32 %i.nnh, 31                    ; 2 uses
  %i.nnj = add nsw i32 %i.nni, %i.nnh             ; 2 uses
  %i.nnk = xor i32 %i.nnj, %i.nni
  %i.nnl = sext i32 %i.nnk to i64
  %i.nnm = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.nnl
  %i.nnn = load i8, ptr %i.nnm, align 1, !tbaa !31 ; 2 uses
  %i.nno = zext i8 %i.nnn to i32                  ; 4 uses
  %i.nnp = icmp slt i32 %i.f, %i.nno
  br i1 %i.nnp, label %bb.aja, label %bb.ajb

bb.aja:                                           ; preds = %bb.aiz
  %i.nnq = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.nnr = load ptr, ptr %i.nnq, align 8, !tbaa !7 ; 2 uses
  %i.nns = getelementptr inbounds nuw i8, ptr %i.nnr, i64 40
  store i32 6, ptr %i.nns, align 8, !tbaa !26
  %i.nnt = load ptr, ptr %i.nnr, align 8, !tbaa !32
  tail call void %i.nnt(ptr noundef nonnull %i.nnq) #7
  br label %bb.ajb

bb.ajb:                                           ; preds = %bb.aja, %bb.aiz
  %i.nnu = icmp samesign ugt i32 %.123, 255
  br i1 %i.nnu, label %.lr.ph15247, label %._crit_edge15248

.lr.ph15247:                                      ; preds = %bb.ajb
  %i.nnv = getelementptr inbounds nuw i8, ptr %4, i64 1264
  %i.nnw = getelementptr inbounds nuw i8, ptr %4, i64 960 ; 2 uses
  br label %bb.ajc

bb.ajc:                                           ; preds = %.lr.ph15247, %bb.aji
  %.12415245 = phi i32 [ %.123, %.lr.ph15247 ], [ %i.nnx, %bb.aji ] ; 2 uses
  %.37515244 = phi ptr [ %.374, %.lr.ph15247 ], [ %.377, %bb.aji ] ; 13 uses
  %.2491129215243 = phi i64 [ %.24811291, %.lr.ph15247 ], [ %.25011293, %bb.aji ] ; 2 uses
  %.2491154615242 = phi i32 [ %.24811545, %.lr.ph15247 ], [ %.25011547, %bb.aji ] ; 2 uses
  %i.nnx = add nsw i32 %.12415245, -256           ; 2 uses
  %i.nny = load i8, ptr %i.nnv, align 4, !tbaa !31
  %i.nnz = sext i8 %i.nny to i32                  ; 2 uses
  %i.noa = sub nsw i32 %.2491154615242, %i.nnz    ; 4 uses
  %i.nob = icmp slt i32 %i.noa, 0
  %i.noc = load i32, ptr %i.nnw, align 4, !tbaa !3 ; 2 uses
  br i1 %i.nob, label %bb.ajd, label %bb.ajh

bb.ajd:                                           ; preds = %bb.ajc
  %i.nod = zext nneg i32 %.2491154615242 to i64
  %i.noe = shl i64 %.2491129215243, %i.nod        ; 11 uses
  %i.nof = sub nsw i32 0, %i.noa
  %i.nog = lshr i32 %i.noc, %i.nof
  %i.noh = zext nneg i32 %i.nog to i64
  %i.noi = or i64 %i.noe, %i.noh                  ; 14 uses
  %i.noj = and i64 %i.noi, -9187201950435737472
  %i.nok = sub i64 -72340172838076674, %i.noi
  %i.nol = and i64 %i.noj, %i.nok
  %.not13802 = icmp eq i64 %i.nol, 0
  %i.nom = lshr i64 %i.noe, 56                    ; 2 uses
  %i.non = trunc nuw i64 %i.nom to i8
  store i8 %i.non, ptr %.37515244, align 1, !tbaa !31
  br i1 %.not13802, label %bb.ajf, label %bb.aje

bb.aje:                                           ; preds = %bb.ajd
  %i.noo = getelementptr inbounds nuw i8, ptr %.37515244, i64 1 ; 2 uses
  store i8 0, ptr %i.noo, align 1, !tbaa !31
  %.not13803 = icmp eq i64 %i.nom, 255            ; 2 uses
  %.sroa.gep14711 = getelementptr inbounds nuw i8, ptr %.37515244, i64 2 ; 2 uses
  %.neg13804.sroa.sel = select i1 %.not13803, ptr %.sroa.gep14711, ptr %i.noo ; 2 uses
  %i.nop = lshr i64 %i.noe, 48
  %i.noq = trunc i64 %i.nop to i8
  store i8 %i.noq, ptr %.neg13804.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15416 = getelementptr inbounds nuw i8, ptr %.37515244, i64 3
  %.neg13804.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13803, ptr %.sroa.gep15416, ptr %.sroa.gep14711
  store i8 0, ptr %.neg13804.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nor = and i64 %i.noe, 71776119061217280
  %.not13805 = icmp eq i64 %i.nor, 71776119061217280
  %.neg13806 = select i1 %.not13805, i64 2, i64 1
  %i.nos = getelementptr inbounds nuw i8, ptr %.neg13804.sroa.sel, i64 %.neg13806 ; 4 uses
  %i.not = lshr i64 %i.noe, 40
  %i.nou = trunc i64 %i.not to i8
  store i8 %i.nou, ptr %i.nos, align 1, !tbaa !31
  %i.nov = getelementptr inbounds nuw i8, ptr %i.nos, i64 1 ; 2 uses
  store i8 0, ptr %i.nov, align 1, !tbaa !31
  %i.now = and i64 %i.noe, 280375465082880
  %.not13807 = icmp eq i64 %i.now, 280375465082880 ; 2 uses
  %.sroa.gep14713 = getelementptr inbounds nuw i8, ptr %i.nos, i64 2 ; 2 uses
  %.neg13808.sroa.sel = select i1 %.not13807, ptr %.sroa.gep14713, ptr %i.nov ; 2 uses
  %i.nox = lshr i64 %i.noe, 32
  %i.noy = trunc i64 %i.nox to i8
  store i8 %i.noy, ptr %.neg13808.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15422 = getelementptr inbounds nuw i8, ptr %i.nos, i64 3
  %.neg13808.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13807, ptr %.sroa.gep15422, ptr %.sroa.gep14713
  store i8 0, ptr %.neg13808.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.noz = and i64 %i.noe, 1095216660480
  %.not13809 = icmp eq i64 %i.noz, 1095216660480
  %.neg13810 = select i1 %.not13809, i64 2, i64 1
  %i.npa = getelementptr inbounds nuw i8, ptr %.neg13808.sroa.sel, i64 %.neg13810 ; 4 uses
  %i.npb = lshr i64 %i.noi, 24
  %i.npc = trunc i64 %i.npb to i8
  store i8 %i.npc, ptr %i.npa, align 1, !tbaa !31
  %i.npd = getelementptr inbounds nuw i8, ptr %i.npa, i64 1 ; 2 uses
  store i8 0, ptr %i.npd, align 1, !tbaa !31
  %i.npe = and i64 %i.noi, 4278190080
  %.not13811 = icmp eq i64 %i.npe, 4278190080     ; 2 uses
  %.sroa.gep14715 = getelementptr inbounds nuw i8, ptr %i.npa, i64 2 ; 2 uses
  %.neg13812.sroa.sel = select i1 %.not13811, ptr %.sroa.gep14715, ptr %i.npd ; 2 uses
  %i.npf = lshr i64 %i.noi, 16
  %i.npg = trunc i64 %i.npf to i8
  store i8 %i.npg, ptr %.neg13812.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15420 = getelementptr inbounds nuw i8, ptr %i.npa, i64 3
  %.neg13812.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13811, ptr %.sroa.gep15420, ptr %.sroa.gep14715
  store i8 0, ptr %.neg13812.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nph = and i64 %i.noi, 16711680
  %.not13813 = icmp eq i64 %i.nph, 16711680
  %.neg13814 = select i1 %.not13813, i64 2, i64 1
  %i.npi = getelementptr inbounds nuw i8, ptr %.neg13812.sroa.sel, i64 %.neg13814 ; 4 uses
  %i.npj = lshr i64 %i.noi, 8
  %i.npk = trunc i64 %i.npj to i8
  store i8 %i.npk, ptr %i.npi, align 1, !tbaa !31
  %i.npl = getelementptr inbounds nuw i8, ptr %i.npi, i64 1 ; 2 uses
  store i8 0, ptr %i.npl, align 1, !tbaa !31
  %i.npm = and i64 %i.noi, 65280
  %.not13815 = icmp eq i64 %i.npm, 65280          ; 2 uses
  %.sroa.gep14717 = getelementptr inbounds nuw i8, ptr %i.npi, i64 2 ; 2 uses
  %.neg13816.sroa.sel = select i1 %.not13815, ptr %.sroa.gep14717, ptr %i.npl ; 2 uses
  %i.npn = trunc i64 %i.noi to i8
  store i8 %i.npn, ptr %.neg13816.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15418 = getelementptr inbounds nuw i8, ptr %i.npi, i64 3
  %.neg13816.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13815, ptr %.sroa.gep15418, ptr %.sroa.gep14717
  store i8 0, ptr %.neg13816.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.npo = and i64 %i.noi, 255
  %.not13817 = icmp eq i64 %i.npo, 255
  %.neg13818 = select i1 %.not13817, i64 2, i64 1
  %i.npp = getelementptr inbounds nuw i8, ptr %.neg13816.sroa.sel, i64 %.neg13818
  br label %bb.ajg

bb.ajf:                                           ; preds = %bb.ajd
  %i.npq = lshr i64 %i.noe, 48
  %i.npr = trunc i64 %i.npq to i8
  %i.nps = getelementptr inbounds nuw i8, ptr %.37515244, i64 1
  store i8 %i.npr, ptr %i.nps, align 1, !tbaa !31
  %i.npt = lshr i64 %i.noe, 40
  %i.npu = trunc i64 %i.npt to i8
  %i.npv = getelementptr inbounds nuw i8, ptr %.37515244, i64 2
  store i8 %i.npu, ptr %i.npv, align 1, !tbaa !31
  %i.npw = lshr i64 %i.noe, 32
  %i.npx = trunc i64 %i.npw to i8
  %i.npy = getelementptr inbounds nuw i8, ptr %.37515244, i64 3
  store i8 %i.npx, ptr %i.npy, align 1, !tbaa !31
  %i.npz = lshr i64 %i.noi, 24
  %i.nqa = trunc i64 %i.npz to i8
  %i.nqb = getelementptr inbounds nuw i8, ptr %.37515244, i64 4
  store i8 %i.nqa, ptr %i.nqb, align 1, !tbaa !31
  %i.nqc = lshr i64 %i.noi, 16
  %i.nqd = trunc i64 %i.nqc to i8
  %i.nqe = getelementptr inbounds nuw i8, ptr %.37515244, i64 5
  store i8 %i.nqd, ptr %i.nqe, align 1, !tbaa !31
  %i.nqf = lshr i64 %i.noi, 8
  %i.nqg = trunc i64 %i.nqf to i8
  %i.nqh = getelementptr inbounds nuw i8, ptr %.37515244, i64 6
  store i8 %i.nqg, ptr %i.nqh, align 1, !tbaa !31
  %i.nqi = trunc i64 %i.noi to i8
  %i.nqj = getelementptr inbounds nuw i8, ptr %.37515244, i64 7
  store i8 %i.nqi, ptr %i.nqj, align 1, !tbaa !31
  %i.nqk = getelementptr inbounds nuw i8, ptr %.37515244, i64 8
  br label %bb.ajg

bb.ajg:                                           ; preds = %bb.ajf, %bb.aje
  %.376 = phi ptr [ %i.npp, %bb.aje ], [ %i.nqk, %bb.ajf ]
  %i.nql = add nsw i32 %i.noa, 64
  %i.nqm = load i32, ptr %i.nnw, align 4, !tbaa !3
  %i.nqn = zext i32 %i.nqm to i64
  br label %bb.aji

bb.ajh:                                           ; preds = %bb.ajc
  %i.nqo = zext nneg i32 %i.nnz to i64
  %i.nqp = shl i64 %.2491129215243, %i.nqo
  %i.nqq = zext i32 %i.noc to i64
  %i.nqr = or i64 %i.nqp, %i.nqq
  br label %bb.aji

bb.aji:                                           ; preds = %bb.ajh, %bb.ajg
  %.25011547 = phi i32 [ %i.nql, %bb.ajg ], [ %i.noa, %bb.ajh ] ; 2 uses
  %.25011293 = phi i64 [ %i.nqn, %bb.ajg ], [ %i.nqr, %bb.ajh ] ; 2 uses
  %.377 = phi ptr [ %.376, %bb.ajg ], [ %.37515244, %bb.ajh ] ; 2 uses
  %i.nqs = icmp samesign ugt i32 %.12415245, 511
  br i1 %i.nqs, label %bb.ajc, label %._crit_edge15248, !llvm.loop !135

._crit_edge15248:                                 ; preds = %bb.aji, %bb.ajb
  %.24911546.lcssa = phi i32 [ %.24811545, %bb.ajb ], [ %.25011547, %bb.aji ] ; 2 uses
  %.24911292.lcssa = phi i64 [ %.24811291, %bb.ajb ], [ %.25011293, %bb.aji ] ; 2 uses
  %.375.lcssa = phi ptr [ %.374, %bb.ajb ], [ %.377, %bb.aji ] ; 13 uses
  %.124.lcssa = phi i32 [ %.123, %bb.ajb ], [ %i.nnx, %bb.aji ]
  %i.nqt = add nuw nsw i32 %.124.lcssa, %i.nno
  %i.nqu = zext nneg i8 %i.nnn to i64
  %notmask13784 = shl nsw i64 -1, %i.nqu
  %i.nqv = trunc i64 %notmask13784 to i32
  %i.nqw = xor i32 %i.nqv, -1
  %i.nqx = and i32 %i.nnj, %i.nqw
  %i.nqy = zext nneg i32 %i.nqt to i64            ; 2 uses
  %i.nqz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.nqy
  %i.nra = load i32, ptr %i.nqz, align 4, !tbaa !3
  %i.nrb = shl i32 %i.nra, %i.nno
  %i.nrc = or i32 %i.nrb, %i.nqx                  ; 3 uses
  %i.nrd = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.nre = getelementptr inbounds nuw i8, ptr %i.nrd, i64 %i.nqy
  %i.nrf = load i8, ptr %i.nre, align 1, !tbaa !31
  %i.nrg = sext i8 %i.nrf to i32
  %i.nrh = add nsw i32 %i.nrg, %i.nno             ; 2 uses
  %i.nri = sub nsw i32 %.24911546.lcssa, %i.nrh   ; 4 uses
  %i.nrj = icmp slt i32 %i.nri, 0
  br i1 %i.nrj, label %bb.ajj, label %bb.ajn

bb.ajj:                                           ; preds = %._crit_edge15248
  %i.nrk = zext nneg i32 %.24911546.lcssa to i64
  %i.nrl = shl i64 %.24911292.lcssa, %i.nrk
  %i.nrm = sub nsw i32 0, %i.nri
  %i.nrn = ashr i32 %i.nrc, %i.nrm
  %i.nro = sext i32 %i.nrn to i64
  %i.nrp = or i64 %i.nrl, %i.nro                  ; 24 uses
  %i.nrq = and i64 %i.nrp, -9187201950435737472
  %i.nrr = sub i64 -72340172838076674, %i.nrp
  %i.nrs = and i64 %i.nrq, %i.nrr
  %.not13785 = icmp eq i64 %i.nrs, 0
  %i.nrt = lshr i64 %i.nrp, 56                    ; 2 uses
  %i.nru = trunc nuw i64 %i.nrt to i8
  store i8 %i.nru, ptr %.375.lcssa, align 1, !tbaa !31
  br i1 %.not13785, label %bb.ajl, label %bb.ajk

bb.ajk:                                           ; preds = %bb.ajj
  %i.nrv = getelementptr inbounds nuw i8, ptr %.375.lcssa, i64 1 ; 2 uses
  store i8 0, ptr %i.nrv, align 1, !tbaa !31
  %.not13786 = icmp eq i64 %i.nrt, 255            ; 2 uses
  %.sroa.gep14719 = getelementptr inbounds nuw i8, ptr %.375.lcssa, i64 2 ; 2 uses
  %.neg13787.sroa.sel = select i1 %.not13786, ptr %.sroa.gep14719, ptr %i.nrv ; 2 uses
  %i.nrw = lshr i64 %i.nrp, 48
  %i.nrx = trunc i64 %i.nrw to i8
  store i8 %i.nrx, ptr %.neg13787.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15424 = getelementptr inbounds nuw i8, ptr %.375.lcssa, i64 3
  %.neg13787.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13786, ptr %.sroa.gep15424, ptr %.sroa.gep14719
  store i8 0, ptr %.neg13787.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nry = and i64 %i.nrp, 71776119061217280
  %.not13788 = icmp eq i64 %i.nry, 71776119061217280
  %.neg13789 = select i1 %.not13788, i64 2, i64 1
  %i.nrz = getelementptr inbounds nuw i8, ptr %.neg13787.sroa.sel, i64 %.neg13789 ; 4 uses
  %i.nsa = lshr i64 %i.nrp, 40
  %i.nsb = trunc i64 %i.nsa to i8
  store i8 %i.nsb, ptr %i.nrz, align 1, !tbaa !31
  %i.nsc = getelementptr inbounds nuw i8, ptr %i.nrz, i64 1 ; 2 uses
  store i8 0, ptr %i.nsc, align 1, !tbaa !31
  %i.nsd = and i64 %i.nrp, 280375465082880
  %.not13790 = icmp eq i64 %i.nsd, 280375465082880 ; 2 uses
  %.sroa.gep14721 = getelementptr inbounds nuw i8, ptr %i.nrz, i64 2 ; 2 uses
  %.neg13791.sroa.sel = select i1 %.not13790, ptr %.sroa.gep14721, ptr %i.nsc ; 2 uses
  %i.nse = lshr i64 %i.nrp, 32
  %i.nsf = trunc i64 %i.nse to i8
  store i8 %i.nsf, ptr %.neg13791.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15430 = getelementptr inbounds nuw i8, ptr %i.nrz, i64 3
  %.neg13791.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13790, ptr %.sroa.gep15430, ptr %.sroa.gep14721
  store i8 0, ptr %.neg13791.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nsg = and i64 %i.nrp, 1095216660480
  %.not13792 = icmp eq i64 %i.nsg, 1095216660480
  %.neg13793 = select i1 %.not13792, i64 2, i64 1
  %i.nsh = getelementptr inbounds nuw i8, ptr %.neg13791.sroa.sel, i64 %.neg13793 ; 4 uses
  %i.nsi = lshr i64 %i.nrp, 24
  %i.nsj = trunc i64 %i.nsi to i8
  store i8 %i.nsj, ptr %i.nsh, align 1, !tbaa !31
  %i.nsk = getelementptr inbounds nuw i8, ptr %i.nsh, i64 1 ; 2 uses
  store i8 0, ptr %i.nsk, align 1, !tbaa !31
  %i.nsl = and i64 %i.nrp, 4278190080
  %.not13794 = icmp eq i64 %i.nsl, 4278190080     ; 2 uses
  %.sroa.gep14723 = getelementptr inbounds nuw i8, ptr %i.nsh, i64 2 ; 2 uses
  %.neg13795.sroa.sel = select i1 %.not13794, ptr %.sroa.gep14723, ptr %i.nsk ; 2 uses
  %i.nsm = lshr i64 %i.nrp, 16
  %i.nsn = trunc i64 %i.nsm to i8
  store i8 %i.nsn, ptr %.neg13795.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15428 = getelementptr inbounds nuw i8, ptr %i.nsh, i64 3
  %.neg13795.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13794, ptr %.sroa.gep15428, ptr %.sroa.gep14723
  store i8 0, ptr %.neg13795.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nso = and i64 %i.nrp, 16711680
  %.not13796 = icmp eq i64 %i.nso, 16711680
  %.neg13797 = select i1 %.not13796, i64 2, i64 1
  %i.nsp = getelementptr inbounds nuw i8, ptr %.neg13795.sroa.sel, i64 %.neg13797 ; 4 uses
  %i.nsq = lshr i64 %i.nrp, 8
  %i.nsr = trunc i64 %i.nsq to i8
  store i8 %i.nsr, ptr %i.nsp, align 1, !tbaa !31
  %i.nss = getelementptr inbounds nuw i8, ptr %i.nsp, i64 1 ; 2 uses
  store i8 0, ptr %i.nss, align 1, !tbaa !31
  %i.nst = and i64 %i.nrp, 65280
  %.not13798 = icmp eq i64 %i.nst, 65280          ; 2 uses
  %.sroa.gep14725 = getelementptr inbounds nuw i8, ptr %i.nsp, i64 2 ; 2 uses
  %.neg13799.sroa.sel = select i1 %.not13798, ptr %.sroa.gep14725, ptr %i.nss ; 2 uses
  %i.nsu = trunc i64 %i.nrp to i8
  store i8 %i.nsu, ptr %.neg13799.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15426 = getelementptr inbounds nuw i8, ptr %i.nsp, i64 3
  %.neg13799.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13798, ptr %.sroa.gep15426, ptr %.sroa.gep14725
  store i8 0, ptr %.neg13799.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nsv = and i64 %i.nrp, 255
  %.not13800 = icmp eq i64 %i.nsv, 255
  %.neg13801 = select i1 %.not13800, i64 2, i64 1
  %i.nsw = getelementptr inbounds nuw i8, ptr %.neg13799.sroa.sel, i64 %.neg13801
  br label %bb.ajm

bb.ajl:                                           ; preds = %bb.ajj
  %i.nsx = lshr i64 %i.nrp, 48
  %i.nsy = trunc i64 %i.nsx to i8
  %i.nsz = getelementptr inbounds nuw i8, ptr %.375.lcssa, i64 1
  store i8 %i.nsy, ptr %i.nsz, align 1, !tbaa !31
  %i.nta = lshr i64 %i.nrp, 40
  %i.ntb = trunc i64 %i.nta to i8
  %i.ntc = getelementptr inbounds nuw i8, ptr %.375.lcssa, i64 2
  store i8 %i.ntb, ptr %i.ntc, align 1, !tbaa !31
  %i.ntd = lshr i64 %i.nrp, 32
  %i.nte = trunc i64 %i.ntd to i8
  %i.ntf = getelementptr inbounds nuw i8, ptr %.375.lcssa, i64 3
  store i8 %i.nte, ptr %i.ntf, align 1, !tbaa !31
  %i.ntg = lshr i64 %i.nrp, 24
  %i.nth = trunc i64 %i.ntg to i8
  %i.nti = getelementptr inbounds nuw i8, ptr %.375.lcssa, i64 4
  store i8 %i.nth, ptr %i.nti, align 1, !tbaa !31
  %i.ntj = lshr i64 %i.nrp, 16
  %i.ntk = trunc i64 %i.ntj to i8
  %i.ntl = getelementptr inbounds nuw i8, ptr %.375.lcssa, i64 5
  store i8 %i.ntk, ptr %i.ntl, align 1, !tbaa !31
  %i.ntm = lshr i64 %i.nrp, 8
  %i.ntn = trunc i64 %i.ntm to i8
  %i.nto = getelementptr inbounds nuw i8, ptr %.375.lcssa, i64 6
  store i8 %i.ntn, ptr %i.nto, align 1, !tbaa !31
  %i.ntp = trunc i64 %i.nrp to i8
  %i.ntq = getelementptr inbounds nuw i8, ptr %.375.lcssa, i64 7
  store i8 %i.ntp, ptr %i.ntq, align 1, !tbaa !31
  %i.ntr = getelementptr inbounds nuw i8, ptr %.375.lcssa, i64 8
  br label %bb.ajm

bb.ajm:                                           ; preds = %bb.ajl, %bb.ajk
  %.378 = phi ptr [ %i.nsw, %bb.ajk ], [ %i.ntr, %bb.ajl ]
  %i.nts = add nsw i32 %i.nri, 64
  %i.ntt = sext i32 %i.nrc to i64
  br label %.thread

bb.ajn:                                           ; preds = %._crit_edge15248
  %i.ntu = zext nneg i32 %i.nrh to i64
  %i.ntv = shl i64 %.24911292.lcssa, %i.ntu
  %i.ntw = sext i32 %i.nrc to i64
  %i.ntx = or i64 %i.ntv, %i.ntw
  br label %.thread

bb.ajo:                                           ; preds = %bb.aiy
  %i.nty = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %i.ntz = load i8, ptr %i.nty, align 4, !tbaa !31
  %i.nua = sext i8 %i.ntz to i32                  ; 2 uses
  %i.nub = sub nsw i32 %.24811545, %i.nua         ; 4 uses
  %i.nuc = icmp slt i32 %i.nub, 0
  %i.nud = load i32, ptr %4, align 4, !tbaa !3    ; 2 uses
  br i1 %i.nuc, label %bb.ajp, label %bb.ajt

bb.ajp:                                           ; preds = %bb.ajo
  %i.nue = zext nneg i32 %.24811545 to i64
  %i.nuf = shl i64 %.24811291, %i.nue             ; 11 uses
  %i.nug = sub nsw i32 0, %i.nub
  %i.nuh = lshr i32 %i.nud, %i.nug
  %i.nui = zext nneg i32 %i.nuh to i64
  %i.nuj = or i64 %i.nuf, %i.nui                  ; 14 uses
  %i.nuk = and i64 %i.nuj, -9187201950435737472
  %i.nul = sub i64 -72340172838076674, %i.nuj
  %i.num = and i64 %i.nuk, %i.nul
  %.not13819 = icmp eq i64 %i.num, 0
  %i.nun = lshr i64 %i.nuf, 56                    ; 2 uses
  %i.nuo = trunc nuw i64 %i.nun to i8
  store i8 %i.nuo, ptr %.374, align 1, !tbaa !31
  br i1 %.not13819, label %bb.ajr, label %bb.ajq

bb.ajq:                                           ; preds = %bb.ajp
  %i.nup = getelementptr inbounds nuw i8, ptr %.374, i64 1 ; 2 uses
  store i8 0, ptr %i.nup, align 1, !tbaa !31
  %.not13820 = icmp eq i64 %i.nun, 255            ; 2 uses
  %.sroa.gep14727 = getelementptr inbounds nuw i8, ptr %.374, i64 2 ; 2 uses
  %.neg13821.sroa.sel = select i1 %.not13820, ptr %.sroa.gep14727, ptr %i.nup ; 2 uses
  %i.nuq = lshr i64 %i.nuf, 48
  %i.nur = trunc i64 %i.nuq to i8
  store i8 %i.nur, ptr %.neg13821.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15414 = getelementptr inbounds nuw i8, ptr %.374, i64 3
  %.neg13821.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13820, ptr %.sroa.gep15414, ptr %.sroa.gep14727
  store i8 0, ptr %.neg13821.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nus = and i64 %i.nuf, 71776119061217280
  %.not13822 = icmp eq i64 %i.nus, 71776119061217280
  %.neg13823 = select i1 %.not13822, i64 2, i64 1
  %i.nut = getelementptr inbounds nuw i8, ptr %.neg13821.sroa.sel, i64 %.neg13823 ; 4 uses
  %i.nuu = lshr i64 %i.nuf, 40
  %i.nuv = trunc i64 %i.nuu to i8
  store i8 %i.nuv, ptr %i.nut, align 1, !tbaa !31
  %i.nuw = getelementptr inbounds nuw i8, ptr %i.nut, i64 1 ; 2 uses
  store i8 0, ptr %i.nuw, align 1, !tbaa !31
  %i.nux = and i64 %i.nuf, 280375465082880
  %.not13824 = icmp eq i64 %i.nux, 280375465082880 ; 2 uses
  %.sroa.gep14729 = getelementptr inbounds nuw i8, ptr %i.nut, i64 2 ; 2 uses
  %.neg13825.sroa.sel = select i1 %.not13824, ptr %.sroa.gep14729, ptr %i.nuw ; 2 uses
  %i.nuy = lshr i64 %i.nuf, 32
  %i.nuz = trunc i64 %i.nuy to i8
  store i8 %i.nuz, ptr %.neg13825.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15412 = getelementptr inbounds nuw i8, ptr %i.nut, i64 3
  %.neg13825.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13824, ptr %.sroa.gep15412, ptr %.sroa.gep14729
  store i8 0, ptr %.neg13825.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nva = and i64 %i.nuf, 1095216660480
  %.not13826 = icmp eq i64 %i.nva, 1095216660480
  %.neg13827 = select i1 %.not13826, i64 2, i64 1
  %i.nvb = getelementptr inbounds nuw i8, ptr %.neg13825.sroa.sel, i64 %.neg13827 ; 4 uses
  %i.nvc = lshr i64 %i.nuj, 24
  %i.nvd = trunc i64 %i.nvc to i8
  store i8 %i.nvd, ptr %i.nvb, align 1, !tbaa !31
  %i.nve = getelementptr inbounds nuw i8, ptr %i.nvb, i64 1 ; 2 uses
  store i8 0, ptr %i.nve, align 1, !tbaa !31
  %i.nvf = and i64 %i.nuj, 4278190080
  %.not13828 = icmp eq i64 %i.nvf, 4278190080     ; 2 uses
  %.sroa.gep14731 = getelementptr inbounds nuw i8, ptr %i.nvb, i64 2 ; 2 uses
  %.neg13829.sroa.sel = select i1 %.not13828, ptr %.sroa.gep14731, ptr %i.nve ; 2 uses
  %i.nvg = lshr i64 %i.nuj, 16
  %i.nvh = trunc i64 %i.nvg to i8
  store i8 %i.nvh, ptr %.neg13829.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15410 = getelementptr inbounds nuw i8, ptr %i.nvb, i64 3
  %.neg13829.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13828, ptr %.sroa.gep15410, ptr %.sroa.gep14731
  store i8 0, ptr %.neg13829.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nvi = and i64 %i.nuj, 16711680
  %.not13830 = icmp eq i64 %i.nvi, 16711680
  %.neg13831 = select i1 %.not13830, i64 2, i64 1
  %i.nvj = getelementptr inbounds nuw i8, ptr %.neg13829.sroa.sel, i64 %.neg13831 ; 4 uses
  %i.nvk = lshr i64 %i.nuj, 8
  %i.nvl = trunc i64 %i.nvk to i8
  store i8 %i.nvl, ptr %i.nvj, align 1, !tbaa !31
  %i.nvm = getelementptr inbounds nuw i8, ptr %i.nvj, i64 1 ; 2 uses
  store i8 0, ptr %i.nvm, align 1, !tbaa !31
  %i.nvn = and i64 %i.nuj, 65280
  %.not13832 = icmp eq i64 %i.nvn, 65280          ; 2 uses
  %.sroa.gep14733 = getelementptr inbounds nuw i8, ptr %i.nvj, i64 2 ; 2 uses
  %.neg13833.sroa.sel = select i1 %.not13832, ptr %.sroa.gep14733, ptr %i.nvm ; 2 uses
  %i.nvo = trunc i64 %i.nuj to i8
  store i8 %i.nvo, ptr %.neg13833.sroa.sel, align 1, !tbaa !31
  %.sroa.gep15408 = getelementptr inbounds nuw i8, ptr %i.nvj, i64 3
  %.neg13833.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not13832, ptr %.sroa.gep15408, ptr %.sroa.gep14733
  store i8 0, ptr %.neg13833.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !31
  %i.nvp = and i64 %i.nuj, 255
  %.not13834 = icmp eq i64 %i.nvp, 255
  %.neg13835 = select i1 %.not13834, i64 2, i64 1
  %i.nvq = getelementptr inbounds nuw i8, ptr %.neg13833.sroa.sel, i64 %.neg13835
  br label %bb.ajs

bb.ajr:                                           ; preds = %bb.ajp
  %i.nvr = lshr i64 %i.nuf, 48
  %i.nvs = trunc i64 %i.nvr to i8
  %i.nvt = getelementptr inbounds nuw i8, ptr %.374, i64 1
  store i8 %i.nvs, ptr %i.nvt, align 1, !tbaa !31
  %i.nvu = lshr i64 %i.nuf, 40
  %i.nvv = trunc i64 %i.nvu to i8
  %i.nvw = getelementptr inbounds nuw i8, ptr %.374, i64 2
  store i8 %i.nvv, ptr %i.nvw, align 1, !tbaa !31
  %i.nvx = lshr i64 %i.nuf, 32
  %i.nvy = trunc i64 %i.nvx to i8
  %i.nvz = getelementptr inbounds nuw i8, ptr %.374, i64 3
  store i8 %i.nvy, ptr %i.nvz, align 1, !tbaa !31
  %i.nwa = lshr i64 %i.nuj, 24
  %i.nwb = trunc i64 %i.nwa to i8
  %i.nwc = getelementptr inbounds nuw i8, ptr %.374, i64 4
  store i8 %i.nwb, ptr %i.nwc, align 1, !tbaa !31
  %i.nwd = lshr i64 %i.nuj, 16
  %i.nwe = trunc i64 %i.nwd to i8
  %i.nwf = getelementptr inbounds nuw i8, ptr %.374, i64 5
  store i8 %i.nwe, ptr %i.nwf, align 1, !tbaa !31
  %i.nwg = lshr i64 %i.nuj, 8
  %i.nwh = trunc i64 %i.nwg to i8
  %i.nwi = getelementptr inbounds nuw i8, ptr %.374, i64 6
  store i8 %i.nwh, ptr %i.nwi, align 1, !tbaa !31
  %i.nwj = trunc i64 %i.nuj to i8
  %i.nwk = getelementptr inbounds nuw i8, ptr %.374, i64 7
  store i8 %i.nwj, ptr %i.nwk, align 1, !tbaa !31
  %i.nwl = getelementptr inbounds nuw i8, ptr %.374, i64 8
  br label %bb.ajs

bb.ajs:                                           ; preds = %bb.ajr, %bb.ajq
  %.381 = phi ptr [ %i.nvq, %bb.ajq ], [ %i.nwl, %bb.ajr ]
  %i.nwm = add nsw i32 %i.nub, 64
  %i.nwn = load i32, ptr %4, align 4, !tbaa !3
  %i.nwo = zext i32 %i.nwn to i64
  br label %.thread

bb.ajt:                                           ; preds = %bb.ajo
  %i.nwp = zext nneg i32 %i.nua to i64
  %i.nwq = shl i64 %.24811291, %i.nwp
  %i.nwr = zext i32 %i.nud to i64
  %i.nws = or i64 %i.nwq, %i.nwr
  br label %.thread

.thread:                                          ; preds = %bb.ajm, %bb.ajn, %bb.ajs, %bb.ajt
  %.25311550 = phi i32 [ %i.nwm, %bb.ajs ], [ %i.nub, %bb.ajt ], [ %i.nri, %bb.ajn ], [ %i.nts, %bb.ajm ]
  %.25311296 = phi i64 [ %i.nwo, %bb.ajs ], [ %i.nws, %bb.ajt ], [ %i.ntx, %bb.ajn ], [ %i.ntt, %bb.ajm ]
  %.382 = phi ptr [ %.381, %bb.ajs ], [ %.374, %bb.ajt ], [ %.375.lcssa, %bb.ajn ], [ %.378, %bb.ajm ] ; 3 uses
  store i64 %.25311296, ptr %i.g, align 8, !tbaa !31
  store i32 %.25311550, ptr %i.h, align 8, !tbaa !96
  br i1 %i.m, label %bb.ajx, label %bb.aju

bb.aju:                                           ; preds = %.thread
  %i.nwt = ptrtoint ptr %.382 to i64
  %i.nwu = ptrtoint ptr %i.a to i64
  %i.nwv = sub i64 %i.nwt, %i.nwu                 ; 2 uses
  %.not1383815253 = icmp eq i64 %i.nwv, 0
  br i1 %.not1383815253, label %.critedge, label %.lr.ph15257.preheader

.lr.ph15257.preheader:                            ; preds = %bb.aju
  %.pre = load i64, ptr %i.k, align 8, !tbaa !93
  %.pre16202 = load ptr, ptr %0, align 8, !tbaa !89
  br label %.lr.ph15257

.lr.ph15257:                                      ; preds = %.lr.ph15257.preheader, %bb.ajw
  %i.nww = phi ptr [ %i.nxn, %bb.ajw ], [ %.pre16202, %.lr.ph15257.preheader ]
  %i.nwx = phi i64 [ %i.nxo, %bb.ajw ], [ %.pre, %.lr.ph15257.preheader ]
  %.01091315255 = phi i64 [ %i.nxp, %bb.ajw ], [ %i.nwv, %.lr.ph15257.preheader ] ; 2 uses
  %.38315254 = phi ptr [ %i.nxa, %bb.ajw ], [ %i.a, %.lr.ph15257.preheader ] ; 2 uses
  %.010913. = call i64 @llvm.umin.i64(i64 %.01091315255, i64 %i.nwx) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nww, ptr align 1 %.38315254, i64 %.010913., i1 false)
  %i.nwy = load ptr, ptr %0, align 8, !tbaa !89
  %i.nwz = getelementptr inbounds nuw i8, ptr %i.nwy, i64 %.010913. ; 2 uses
  store ptr %i.nwz, ptr %0, align 8, !tbaa !89
  %i.nxa = getelementptr inbounds nuw i8, ptr %.38315254, i64 %.010913.
  %i.nxb = load i64, ptr %i.k, align 8, !tbaa !93 ; 2 uses
  %i.nxc = sub i64 %i.nxb, %.010913.              ; 2 uses
  store i64 %i.nxc, ptr %i.k, align 8, !tbaa !93
  %i.nxd = icmp eq i64 %i.nxb, %.010913.
  br i1 %i.nxd, label %bb.ajv, label %bb.ajw

bb.ajv:                                           ; preds = %.lr.ph15257
  %i.nxe = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %i.nxf = getelementptr inbounds nuw i8, ptr %i.nxe, i64 40
  %i.nxg = load ptr, ptr %i.nxf, align 8, !tbaa !85 ; 3 uses
  %i.nxh = getelementptr inbounds nuw i8, ptr %i.nxg, i64 24
  %i.nxi = load ptr, ptr %i.nxh, align 8, !tbaa !98
  %i.nxj = call i32 %i.nxi(ptr noundef %i.nxe) #7, !inline_history !136
  %.not.i = icmp eq i32 %i.nxj, 0
  br i1 %.not.i, label %.critedge, label %dump_buffer.exit

dump_buffer.exit:                                 ; preds = %bb.ajv
  %i.nxk = load ptr, ptr %i.nxg, align 8, !tbaa !86 ; 2 uses
  store ptr %i.nxk, ptr %0, align 8, !tbaa !89
  %i.nxl = getelementptr inbounds nuw i8, ptr %i.nxg, i64 8
  %i.nxm = load i64, ptr %i.nxl, align 8, !tbaa !92 ; 2 uses
  store i64 %i.nxm, ptr %i.k, align 8, !tbaa !93
  br label %bb.ajw

bb.ajw:                                           ; preds = %dump_buffer.exit, %.lr.ph15257
  %i.nxn = phi ptr [ %i.nxk, %dump_buffer.exit ], [ %i.nwz, %.lr.ph15257 ]
  %i.nxo = phi i64 [ %i.nxm, %dump_buffer.exit ], [ %i.nxc, %.lr.ph15257 ]
  %i.nxp = sub i64 %.01091315255, %.010913.       ; 2 uses
  %.not13838 = icmp eq i64 %i.nxp, 0
  br i1 %.not13838, label %.critedge, label %.lr.ph15257, !llvm.loop !137

bb.ajx:                                           ; preds = %.thread
  %i.nxq = load ptr, ptr %0, align 8, !tbaa !89
  %i.nxr = ptrtoint ptr %.382 to i64
  %i.nxs = ptrtoint ptr %i.nxq to i64
  %.neg13837 = sub i64 %i.nxs, %i.nxr
  %i.nxt = load i64, ptr %i.k, align 8, !tbaa !93
  %i.nxu = add i64 %.neg13837, %i.nxt
  store i64 %i.nxu, ptr %i.k, align 8, !tbaa !93
  store ptr %.382, ptr %0, align 8, !tbaa !89
  br label %.critedge

.critedge:                                        ; preds = %bb.ajv, %bb.ajw, %bb.aju, %bb.ajx
  %.1 = phi i32 [ 1, %bb.ajx ], [ 1, %bb.aju ], [ 0, %bb.ajv ], [ 1, %bb.ajw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"jpeg_compress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !14, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !10, i64 104, !5, i64 112, !5, i64 144, !5, i64 160, !5, i64 192, !5, i64 224, !5, i64 240, !5, i64 256, !4, i64 272, !10, i64 280, !4, i64 288, !4, i64 292, !4, i64 296, !4, i64 300, !4, i64 304, !4, i64 308, !4, i64 312, !4, i64 316, !4, i64 320, !4, i64 324, !5, i64 328, !5, i64 329, !5, i64 330, !15, i64 332, !15, i64 334, !4, i64 336, !4, i64 340, !4, i64 344, !4, i64 348, !4, i64 352, !4, i64 356, !4, i64 360, !4, i64 364, !4, i64 368, !5, i64 376, !4, i64 408, !4, i64 412, !4, i64 416, !5, i64 420, !4, i64 460, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !16, i64 480, !4, i64 488, !17, i64 496, !18, i64 504, !19, i64 512, !20, i64 520, !21, i64 528, !22, i64 536, !23, i64 544, !24, i64 552, !25, i64 560, !10, i64 568, !4, i64 576}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS20jpeg_destination_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"short", !5, i64 0}
!16 = !{!"p1 int", !10, i64 0}
!17 = !{!"p1 _ZTS16jpeg_comp_master", !10, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_main_controller", !10, i64 0}
!19 = !{!"p1 _ZTS22jpeg_c_prep_controller", !10, i64 0}
!20 = !{!"p1 _ZTS22jpeg_c_coef_controller", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_marker_writer", !10, i64 0}
!22 = !{!"p1 _ZTS20jpeg_color_converter", !10, i64 0}
!23 = !{!"p1 _ZTS16jpeg_downsampler", !10, i64 0}
!24 = !{!"p1 _ZTS16jpeg_forward_dct", !10, i64 0}
!25 = !{!"p1 _ZTS20jpeg_entropy_encoder", !10, i64 0}
!26 = !{!27, !4, i64 40}
!27 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !28, i64 128, !29, i64 136, !4, i64 144, !29, i64 152, !4, i64 160, !4, i64 164}
!28 = !{!"long", !5, i64 0}
!29 = !{!"p2 omnipotent char", !30, i64 0}
!30 = !{!"any p2 pointer", !10, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!27, !10, i64 0}
!33 = !{!10, !10, i64 0}
!34 = !{!8, !11, i64 8}
!35 = !{!36, !10, i64 0}
!36 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !28, i64 88, !28, i64 96}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = !{!8, !17, i64 496}
!41 = !{!42, !4, i64 32}
!42 = !{!"jpeg_comp_master", !10, i64 0, !10, i64 8, !10, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!43 = distinct !{!43, !38}
!44 = !{!28, !28, i64 0}
!45 = distinct !{!45, !38}
!46 = distinct !{!46, !38}
!47 = distinct !{!47, !38}
!48 = distinct !{!48, !38}
!49 = distinct !{!49, !38}
!50 = distinct !{!50, !38}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !38}
!53 = distinct !{!53, !38}
!54 = !{!55, !4, i64 276}
!55 = !{!"", !5, i64 0, !5, i64 17, !4, i64 276}
!56 = !{!8, !25, i64 560}
!57 = !{!58, !10, i64 0}
!58 = !{!"", !59, i64 0, !60, i64 32, !4, i64 64, !4, i64 68, !5, i64 72, !5, i64 104, !5, i64 136, !5, i64 168}
!59 = !{!"jpeg_entropy_encoder", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!60 = !{!"", !5, i64 0, !4, i64 8, !5, i64 12}
!61 = !{!58, !10, i64 8}
!62 = !{!58, !10, i64 24}
!63 = !{!8, !4, i64 368}
!64 = !{!65, !4, i64 20}
!65 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!66 = !{!65, !4, i64 24}
!67 = distinct !{!67, !38}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 long", !10, i64 0}
!70 = !{!58, !4, i64 40}
!71 = !{!8, !4, i64 316}
!72 = !{!58, !4, i64 64}
!73 = !{!58, !4, i64 68}
!74 = distinct !{!74, !38}
!75 = !{!8, !4, i64 416}
!76 = !{!77, !77, i64 0}
!77 = !{!"p1 short", !10, i64 0}
!78 = !{!8, !4, i64 88}
!79 = !{!15, !15, i64 0}
!80 = distinct !{!80, !38}
!81 = distinct !{null}
!82 = distinct !{!82, !38}
!83 = distinct !{!83, !38}
!84 = distinct !{!84, !38}
!85 = !{!8, !13, i64 40}
!86 = !{!87, !88, i64 0}
!87 = !{!"jpeg_destination_mgr", !88, i64 0, !28, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!88 = !{!"p1 omnipotent char", !10, i64 0}
!89 = !{!90, !88, i64 0}
!90 = !{!"", !88, i64 0, !28, i64 8, !60, i64 16, !91, i64 48}
!91 = !{!"p1 _ZTS20jpeg_compress_struct", !10, i64 0}
!92 = !{!87, !28, i64 8}
!93 = !{!90, !28, i64 8}
!94 = !{i64 0, i64 8, !31, i64 8, i64 4, !3, i64 12, i64 16, !31}
!95 = !{!90, !91, i64 48}
!96 = !{!90, !4, i64 24}
!97 = distinct !{!97, !38}
!98 = !{!87, !10, i64 24}
!99 = distinct !{null, null, null}
!100 = distinct !{!100, !38}
!101 = distinct !{null, null}
!102 = !{!88, !88, i64 0}
!103 = distinct !{!103, !38}
!104 = distinct !{null, null}
!105 = distinct !{!105, !38}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !38}
!109 = distinct !{!109, !38}
!110 = distinct !{!110, !38}
!111 = distinct !{!111, !38}
!112 = distinct !{!112, !38}
!113 = distinct !{!113, !38}
!114 = distinct !{!114, !38}
!115 = distinct !{!115, !38}
!116 = distinct !{!116, !38}
!117 = distinct !{!117, !38}
!118 = distinct !{!118, !38}
!119 = distinct !{!119, !38}
!120 = distinct !{!120, !38}
!121 = distinct !{!121, !38}
!122 = distinct !{!122, !38}
!123 = distinct !{!123, !38}
!124 = distinct !{!124, !38}
!125 = distinct !{!125, !38}
!126 = distinct !{!126, !38}
!127 = distinct !{!127, !38}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38}
!130 = distinct !{!130, !38}
!131 = distinct !{!131, !38}
!132 = distinct !{!132, !38}
!133 = distinct !{!133, !38}
!134 = distinct !{!134, !38}
!135 = distinct !{!135, !38}
!136 = distinct !{null}
!137 = distinct !{!137, !38}
end_hunk_1
