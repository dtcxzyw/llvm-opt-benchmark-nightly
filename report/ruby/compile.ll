inline.NumInlined: 6676
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@append_compile_error:ISEQ_COMPILE_DATA.exit

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @iseq_add_getlocal(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %.not13.i = icmp eq i32 %4, 0
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i32 %4, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01015.i.prol = phi i32 [ %i.e, %.lr.ph.i.prol ], [ %4, %.lr.ph.i.preheader ]
  %.01114.i.prol = phi ptr [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.a = getelementptr i8, ptr %.01114.i.prol, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 3 uses
  %i.e = add i32 %.01015.i.prol, -1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !276

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %.01015.i.unr = phi i32 [ %4, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.prol ]
  %.01114.i.unr = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.f = icmp ult i32 %4, 8
  br i1 %i.f, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01015.i = phi i32 [ %i.am, %.lr.ph.i ], [ %.01015.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01114.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.01114.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.g = getelementptr i8, ptr %.01114.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr i8, ptr %i.h, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !170
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr i8, ptr %i.l, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !170
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr i8, ptr %i.p, i64 168
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !170
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr i8, ptr %i.x, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !170
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = getelementptr i8, ptr %i.ab, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !170
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = getelementptr i8, ptr %i.af, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !170
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.ak = getelementptr i8, ptr %i.aj, i64 168
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !170 ; 2 uses
  %i.am = add i32 %.01015.i, -8                   ; 2 uses
  %.not.i.7 = icmp eq i32 %i.am, 0
  br i1 %.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !277

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.011.lcssa.i = phi ptr [ %0, %bb.a ], [ %.lcssa41.unr, %.lr.ph.i.prol.loopexit ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %i.an = getelementptr i8, ptr %.011.lcssa.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43 ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !275
  %i.ar = icmp eq ptr %i.aq, %.011.lcssa.i
  br i1 %i.ar, label %bb.b, label %bb.e

bb.b:                                             ; preds = %._crit_edge.i
  %i.as = getelementptr i8, ptr %i.ao, i64 16
  %i.at = load i16, ptr %i.as, align 8
  %i.au = and i16 %i.at, 64
  %.not12.i = icmp eq i16 %i.au, 0
  br i1 %.not12.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr i8, ptr %i.ao, i64 240
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !175
  %i.ax = getelementptr i8, ptr %i.ao, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !231
  %i.az = sub i32 %i.aw, %i.ay
  %i.ba = icmp eq i32 %i.az, %3
  br i1 %i.ba, label %iseq_local_block_param_p.exit, label %bb.e

iseq_local_block_param_p.exit:                    ; preds = %bb.c
  %.not.i20 = icmp eq ptr %2, null
  br i1 %.not.i20, label %nd_line.exit, label %bb.d

bb.d:                                             ; preds = %iseq_local_block_param_p.exit
  %i.bb = load i64, ptr %2, align 8, !tbaa !176
  %i.bc = lshr i64 %i.bb, 15
  %i.bd = trunc i64 %i.bc to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %iseq_local_block_param_p.exit, %bb.d
  %.0.i21 = phi i32 [ %i.bd, %bb.d ], [ -1, %iseq_local_block_param_p.exit ]
  %i.be = getelementptr i8, ptr %2, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !278
  %i.bg = add i32 %3, 2
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 1
  %i.bj = or disjoint i64 %i.bi, 1
  %i.bk = sext i32 %4 to i64
  %i.bl = shl nsw i64 %i.bk, 1
  %i.bm = or disjoint i64 %i.bl, 1
  %i.bn = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %.0.i21, i32 noundef %i.bf, i32 noundef 3, i32 noundef 2, i64 noundef %i.bj, i64 noundef %i.bm)
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge.i, %bb.b, %bb.c
  %.not.i22 = icmp eq ptr %2, null
  br i1 %.not.i22, label %nd_line.exit24, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = load i64, ptr %2, align 8, !tbaa !176
  %i.bp = lshr i64 %i.bo, 15
  %i.bq = trunc i64 %i.bp to i32
  br label %nd_line.exit24

nd_line.exit24:                                   ; preds = %bb.e, %bb.f
  %.0.i23 = phi i32 [ %i.bq, %bb.f ], [ -1, %bb.e ]
  %i.br = getelementptr i8, ptr %2, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !278
  %i.bt = add i32 %3, 2
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 1
  %i.bw = or disjoint i64 %i.bv, 1
  %i.bx = sext i32 %4 to i64
  %i.by = shl nsw i64 %i.bx, 1
  %i.bz = or disjoint i64 %i.by, 1
  %i.ca = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %.0.i23, i32 noundef %i.bs, i32 noundef 1, i32 noundef 2, i64 noundef %i.bw, i64 noundef %i.bz)
  br label %bb.g

bb.g:                                             ; preds = %nd_line.exit24, %nd_line.exit
  %.sink38 = phi ptr [ %i.ca, %nd_line.exit24 ], [ %i.bn, %nd_line.exit ] ; 3 uses
  %i.cb = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !11 ; 2 uses
  %i.cd = getelementptr i8, ptr %.sink38, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !34
  %i.ce = getelementptr i8, ptr %i.cc, i64 8
  store ptr %.sink38, ptr %i.ce, align 8, !tbaa !35
  store ptr %.sink38, ptr %i.cb, align 8, !tbaa !11
  %i.cf = icmp sgt i32 %4, 0
  br i1 %i.cf, label %.preheader.preheader, label %bb.h

.preheader.preheader:                             ; preds = %bb.g
  %xtraiter42 = and i32 %4, 7                     ; 3 uses
  %i.cg = icmp ult i32 %4, 8
  br i1 %i.cg, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %4, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.09.i = phi ptr [ %0, %.preheader.preheader.new ], [ %i.dm, %.preheader ]
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.ch = getelementptr i8, ptr %.09.i, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !43
  %i.cj = getelementptr i8, ptr %i.ci, i64 168
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !170
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !43
  %i.cn = getelementptr i8, ptr %i.cm, i64 168
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !170
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43
  %i.cr = getelementptr i8, ptr %i.cq, i64 168
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !170
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !43
  %i.cv = getelementptr i8, ptr %i.cu, i64 168
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !170
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !43
  %i.cz = getelementptr i8, ptr %i.cy, i64 168
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !170
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !43
  %i.dd = getelementptr i8, ptr %i.dc, i64 168
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !170
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !43
  %i.dh = getelementptr i8, ptr %i.dg, i64 168
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !170
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !43
  %i.dl = getelementptr i8, ptr %i.dk, i64 168
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !170 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %iseq_lvar_id.exit.unr-lcssa, label %.preheader, !llvm.loop !279

iseq_lvar_id.exit.unr-lcssa:                      ; preds = %.preheader
  %lcmp.mod43.not = icmp eq i32 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %iseq_lvar_id.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %iseq_lvar_id.exit.unr-lcssa, %.preheader.preheader
  %.09.i.epil.init = phi ptr [ %0, %.preheader.preheader ], [ %i.dm, %iseq_lvar_id.exit.unr-lcssa ]
  %lcmp.mod45 = icmp ne i32 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.09.i.epil = phi ptr [ %i.dq, %.preheader.epil ], [ %.09.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.dn = getelementptr i8, ptr %.09.i.epil, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !43
  %i.dp = getelementptr i8, ptr %i.do, i64 168
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !170 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter42
  br i1 %epil.iter.cmp.not, label %iseq_lvar_id.exit, label %.preheader.epil, !llvm.loop !280

iseq_lvar_id.exit:                                ; preds = %.preheader.epil, %iseq_lvar_id.exit.unr-lcssa
  %.lcssa = phi ptr [ %i.dm, %iseq_lvar_id.exit.unr-lcssa ], [ %i.dq, %.preheader.epil ]
  %i.dr = getelementptr i8, ptr %.lcssa, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !43 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 144
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !188
  %i.dv = getelementptr i8, ptr %i.ds, i64 240
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !175
  %i.dx = sub i32 %i.dw, %3
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr [8 x i8], ptr %i.du, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !36
  tail call fastcc void @access_outer_variables(ptr noundef %0, i32 noundef %4, i64 noundef %i.ea, i1 noundef zeroext false)
  br label %bb.h

bb.h:                                             ; preds = %iseq_lvar_id.exit, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull ptr @rb_iseq_original_iseq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.b = getelementptr i8, ptr %.val19, i64 232
  %.val19.val = load ptr, ptr %i.b, align 8, !tbaa !281 ; 2 uses
  %.not = icmp eq ptr %.val19.val, null
  br i1 %.not, label %rbimpl_size_mul_or_raise.exit, label %.loopexit

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val19, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !145
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef range(i64 0, 4294967296) %i.e, i64 noundef 8) #39 ; 5 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 232
  store ptr %i.f, ptr %i.h, align 8, !tbaa !281
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !145  ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %rbimpl_size_mul_or_raise.exit
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !144
  %i.m = zext i32 %i.j to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.f, ptr noundef nonnull readonly align 1 %i.l, i64 noundef range(i64 1, 0) %i.n, i1 noundef false) #37
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01820 = phi i32 [ %i.x, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.o = zext i32 %.01820 to i64
  %i.p = getelementptr [8 x i8], ptr %i.f, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = tail call i32 @rb_vm_insn_addr2insn(ptr noundef %i.r) #37
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  store i64 %i.t, ptr %i.p, align 8, !tbaa !36
  %i.u = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %i.w = zext i8 %i.v to i32
  %i.x = add i32 %.01820, %i.w                    ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !145
  %i.ab = icmp ult i32 %i.x, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !llvm.loop !282

.loopexit:                                        ; preds = %.lr.ph, %rbimpl_size_mul_or_raise.exit, %bb.a
  %.0 = phi ptr [ %.val19.val, %bb.a ], [ %i.f, %rbimpl_size_mul_or_raise.exit ], [ %i.f, %.lr.ph ]
  ret ptr %.0
}

declare i32 @rb_vm_insn_addr2insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_iseq_cdhash_cmp(i64 noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %common.ret56, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  %i.c = and i64 %1, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %common.ret56, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %0, 0
  %i.k = and i64 %0, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %common.ret56, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !74
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 31
  %.not = icmp eq i32 %i.i, %i.q
  br i1 %.not, label %bb.e, label %common.ret56

bb.e:                                             ; preds = %bb.d
  switch i32 %i.i, label %bb.m [
    i32 20, label %common.ret56
    i32 5, label %bb.f
    i32 10, label %bb.g
    i32 4, label %bb.h
    i32 15, label %bb.i
    i32 14, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @rb_str_hash_cmp(i64 noundef %1, i64 noundef %0) #37
  br label %common.ret56

bb.g:                                             ; preds = %bb.e
  %i.s = tail call i64 @rb_big_cmp(i64 noundef %1, i64 noundef %0) #37
  %i.t = lshr i64 %i.s, 1
  %i.u = trunc i64 %i.t to i32
  br label %common.ret56

bb.h:                                             ; preds = %bb.e
  %i.v = tail call i32 @rb_float_cmp(i64 noundef %1, i64 noundef %0) #37
  br label %common.ret56

bb.i:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.n, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !283
  %i.y = getelementptr i8, ptr %i.f, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !283
  %i.aa = tail call i32 @rb_iseq_cdhash_cmp(i64 noundef %i.x, i64 noundef %i.z)
  %.not50 = icmp eq i32 %i.aa, 0
  br i1 %.not50, label %bb.j, label %common.ret56

common.ret56:                                     ; preds = %bb.c, %bb.b, %bb.k, %bb.e, %bb.i, %bb.d, %bb.a, %bb.m, %bb.h, %bb.g, %bb.f, %bb.l, %bb.j
  %common.ret56.op = phi i32 [ %i.at, %bb.l ], [ %i.ah, %bb.j ], [ 1, %bb.i ], [ 1, %bb.b ], [ %i.aw, %bb.m ], [ 0, %bb.a ], [ -1, %bb.c ], [ -1, %bb.d ], [ 1, %bb.k ], [ %i.r, %bb.f ], [ %i.u, %bb.g ], [ %i.v, %bb.h ], [ 1, %bb.e ]
  ret i32 %common.ret56.op

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %i.n, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !285
  %i.ad = getelementptr i8, ptr %i.f, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !285
  %i.af = tail call i32 @rb_iseq_cdhash_cmp(i64 noundef %i.ac, i64 noundef %i.ae)
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  br label %common.ret56

bb.k:                                             ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %i.n, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !286
  %i.ak = getelementptr i8, ptr %i.f, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !286
  %i.am = tail call i32 @rb_iseq_cdhash_cmp(i64 noundef %i.aj, i64 noundef %i.al)
  %.not49 = icmp eq i32 %i.am, 0
  br i1 %.not49, label %bb.l, label %common.ret56

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr i8, ptr %i.n, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !288
  %i.ap = getelementptr i8, ptr %i.f, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !288
  %i.ar = tail call i32 @rb_iseq_cdhash_cmp(i64 noundef %i.ao, i64 noundef %i.aq)
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  br label %common.ret56

bb.m:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %i.i, 6
end_hunk_0
begin_hunk_1_@iseq_add_setlocal:bb.a
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr i8, ptr %i.l, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !170
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr i8, ptr %i.p, i64 168
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !170
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr i8, ptr %i.x, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !170
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = getelementptr i8, ptr %i.ab, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !170
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = getelementptr i8, ptr %i.af, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !170
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.ak = getelementptr i8, ptr %i.aj, i64 168
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !170 ; 2 uses
  %i.am = add i32 %.01015.i, -8                   ; 2 uses
  %.not.i.7 = icmp eq i32 %i.am, 0
  br i1 %.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !277

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.011.lcssa.i = phi ptr [ %0, %bb.a ], [ %.lcssa52.unr, %.lr.ph.i.prol.loopexit ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %i.an = getelementptr i8, ptr %.011.lcssa.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43 ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !275
  %i.ar = icmp eq ptr %i.aq, %.011.lcssa.i
  br i1 %i.ar, label %bb.b, label %bb.e

bb.b:                                             ; preds = %._crit_edge.i
  %i.as = getelementptr i8, ptr %i.ao, i64 16
  %i.at = load i16, ptr %i.as, align 8
  %i.au = and i16 %i.at, 64
  %.not12.i = icmp eq i16 %i.au, 0
  br i1 %.not12.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr i8, ptr %i.ao, i64 240
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !175
  %i.ax = getelementptr i8, ptr %i.ao, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !231
  %i.az = sub i32 %i.aw, %i.ay
  %i.ba = icmp eq i32 %i.az, %3
  br i1 %i.ba, label %iseq_local_block_param_p.exit, label %bb.e

iseq_local_block_param_p.exit:                    ; preds = %bb.c
  %.not.i23 = icmp eq ptr %2, null
  br i1 %.not.i23, label %nd_line.exit, label %bb.d

bb.d:                                             ; preds = %iseq_local_block_param_p.exit
  %i.bb = load i64, ptr %2, align 8, !tbaa !176
  %i.bc = lshr i64 %i.bb, 15
  %i.bd = trunc i64 %i.bc to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %iseq_local_block_param_p.exit, %bb.d
  %.0.i24 = phi i32 [ %i.bd, %bb.d ], [ -1, %iseq_local_block_param_p.exit ]
  %i.be = getelementptr i8, ptr %2, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !278
  %i.bg = add i32 %3, 2
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 1
  %i.bj = or disjoint i64 %i.bi, 1
  %i.bk = sext i32 %4 to i64
  %i.bl = shl nsw i64 %i.bk, 1
  %i.bm = or disjoint i64 %i.bl, 1
  %i.bn = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %.0.i24, i32 noundef %i.bf, i32 noundef 4, i32 noundef 2, i64 noundef %i.bj, i64 noundef %i.bm)
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge.i, %bb.b, %bb.c
  %.not.i25 = icmp eq ptr %2, null
  br i1 %.not.i25, label %nd_line.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = load i64, ptr %2, align 8, !tbaa !176
  %i.bp = lshr i64 %i.bo, 15
  %i.bq = trunc i64 %i.bp to i32
  br label %nd_line.exit27

nd_line.exit27:                                   ; preds = %bb.e, %bb.f
  %.0.i26 = phi i32 [ %i.bq, %bb.f ], [ -1, %bb.e ]
  %i.br = getelementptr i8, ptr %2, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !278
  %i.bt = add i32 %3, 2
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 1
  %i.bw = or disjoint i64 %i.bv, 1
  %i.bx = sext i32 %4 to i64
  %i.by = shl nsw i64 %i.bx, 1
  %i.bz = or disjoint i64 %i.by, 1
  %i.ca = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %.0.i26, i32 noundef %i.bs, i32 noundef 2, i32 noundef 2, i64 noundef %i.bw, i64 noundef %i.bz)
  br label %bb.g

bb.g:                                             ; preds = %nd_line.exit27, %nd_line.exit
  %.sink47 = phi ptr [ %i.ca, %nd_line.exit27 ], [ %i.bn, %nd_line.exit ] ; 3 uses
  %i.cb = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !11 ; 2 uses
  %i.cd = getelementptr i8, ptr %.sink47, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !34
  %i.ce = getelementptr i8, ptr %i.cc, i64 8
  store ptr %.sink47, ptr %i.ce, align 8, !tbaa !35
  store ptr %.sink47, ptr %i.cb, align 8, !tbaa !11
  %i.cf = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.cf, label %.lr.ph.i29.preheader, label %._crit_edge.i28

.lr.ph.i29.preheader:                             ; preds = %bb.g
  %xtraiter53 = and i32 %4, 7                     ; 3 uses
  %i.cg = icmp ult i32 %4, 8
  br i1 %i.cg, label %.lr.ph.i29.epil.preheader, label %.lr.ph.i29.preheader.new

.lr.ph.i29.preheader.new:                         ; preds = %.lr.ph.i29.preheader
  %unroll_iter = and i32 %4, 2147483640
  br label %.lr.ph.i29

._crit_edge.i28.loopexit.unr-lcssa:               ; preds = %.lr.ph.i29
  %lcmp.mod54.not = icmp eq i32 %xtraiter53, 0
  br i1 %lcmp.mod54.not, label %._crit_edge.i28, label %.lr.ph.i29.epil.preheader

.lr.ph.i29.epil.preheader:                        ; preds = %._crit_edge.i28.loopexit.unr-lcssa, %.lr.ph.i29.preheader
  %.014.i.epil.init = phi ptr [ %0, %.lr.ph.i29.preheader ], [ %i.ea, %._crit_edge.i28.loopexit.unr-lcssa ]
  %lcmp.mod56 = icmp ne i32 %xtraiter53, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph.i29.epil

.lr.ph.i29.epil:                                  ; preds = %.lr.ph.i29.epil, %.lr.ph.i29.epil.preheader
  %.014.i.epil = phi ptr [ %i.ck, %.lr.ph.i29.epil ], [ %.014.i.epil.init, %.lr.ph.i29.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i29.epil ], [ 0, %.lr.ph.i29.epil.preheader ]
  %i.ch = getelementptr i8, ptr %.014.i.epil, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !43
  %i.cj = getelementptr i8, ptr %i.ci, i64 168
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !170 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter53
  br i1 %epil.iter.cmp.not, label %._crit_edge.i28, label %.lr.ph.i29.epil, !llvm.loop !1029

._crit_edge.i28:                                  ; preds = %._crit_edge.i28.loopexit.unr-lcssa, %.lr.ph.i29.epil, %bb.g
  %.0.lcssa.i = phi ptr [ %0, %bb.g ], [ %i.ea, %._crit_edge.i28.loopexit.unr-lcssa ], [ %i.ck, %.lr.ph.i29.epil ]
  %i.cl = getelementptr i8, ptr %.0.lcssa.i, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !43 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 152
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !189
  %i.cp = getelementptr i8, ptr %i.cm, i64 240
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !175
  %i.cr = sub i32 %i.cq, %3
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [4 x i8], ptr %i.co, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !7
  switch i32 %i.cu, label %bb.i [
    i32 0, label %.sink.split.i
    i32 1, label %bb.h
    i32 2, label %update_lvar_state.exit
  ]

.lr.ph.i29:                                       ; preds = %.lr.ph.i29, %.lr.ph.i29.preheader.new
  %.014.i = phi ptr [ %0, %.lr.ph.i29.preheader.new ], [ %i.ea, %.lr.ph.i29 ]
  %niter = phi i32 [ 0, %.lr.ph.i29.preheader.new ], [ %niter.next.7, %.lr.ph.i29 ]
  %i.cv = getelementptr i8, ptr %.014.i, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.cx = getelementptr i8, ptr %i.cw, i64 168
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !170
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !43
  %i.db = getelementptr i8, ptr %i.da, i64 168
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !170
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !43
  %i.df = getelementptr i8, ptr %i.de, i64 168
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !170
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !43
  %i.dj = getelementptr i8, ptr %i.di, i64 168
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !170
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !43
  %i.dn = getelementptr i8, ptr %i.dm, i64 168
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !170
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !43
  %i.dr = getelementptr i8, ptr %i.dq, i64 168
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !170
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !43
  %i.dv = getelementptr i8, ptr %i.du, i64 168
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !170
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !43
  %i.dz = getelementptr i8, ptr %i.dy, i64 168
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !170 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i28.loopexit.unr-lcssa, label %.lr.ph.i29, !llvm.loop !1030

bb.h:                                             ; preds = %._crit_edge.i28
  br label %.sink.split.i

bb.i:                                             ; preds = %._crit_edge.i28
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.29) #38
  unreachable

.sink.split.i:                                    ; preds = %bb.h, %._crit_edge.i28
  %.sink.i = phi i32 [ 2, %bb.h ], [ 1, %._crit_edge.i28 ]
  store i32 %.sink.i, ptr %i.ct, align 4, !tbaa !7
  br label %update_lvar_state.exit

update_lvar_state.exit:                           ; preds = %._crit_edge.i28, %.sink.split.i
  br i1 %i.cf, label %.preheader.preheader, label %bb.j

.preheader.preheader:                             ; preds = %update_lvar_state.exit
  %xtraiter57 = and i32 %4, 7                     ; 3 uses
  %i.eb = icmp ult i32 %4, 8
  br i1 %i.eb, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter62 = and i32 %4, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.09.i = phi ptr [ %0, %.preheader.preheader.new ], [ %i.fh, %.preheader ]
  %niter63 = phi i32 [ 0, %.preheader.preheader.new ], [ %niter63.next.7, %.preheader ]
  %i.ec = getelementptr i8, ptr %.09.i, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !43
  %i.ee = getelementptr i8, ptr %i.ed, i64 168
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !170
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !43
  %i.ei = getelementptr i8, ptr %i.eh, i64 168
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !170
  %i.ek = getelementptr i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !43
  %i.em = getelementptr i8, ptr %i.el, i64 168
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !170
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !43
  %i.eq = getelementptr i8, ptr %i.ep, i64 168
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !170
  %i.es = getelementptr i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !43
  %i.eu = getelementptr i8, ptr %i.et, i64 168
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !170
  %i.ew = getelementptr i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !43
  %i.ey = getelementptr i8, ptr %i.ex, i64 168
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !170
  %i.fa = getelementptr i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !43
  %i.fc = getelementptr i8, ptr %i.fb, i64 168
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !170
  %i.fe = getelementptr i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !43
  %i.fg = getelementptr i8, ptr %i.ff, i64 168
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !170 ; 3 uses
  %niter63.next.7 = add i32 %niter63, 8           ; 2 uses
  %niter63.ncmp.7 = icmp eq i32 %niter63.next.7, %unroll_iter62
  br i1 %niter63.ncmp.7, label %iseq_lvar_id.exit.unr-lcssa, label %.preheader, !llvm.loop !279

iseq_lvar_id.exit.unr-lcssa:                      ; preds = %.preheader
  %lcmp.mod59.not = icmp eq i32 %xtraiter57, 0
  br i1 %lcmp.mod59.not, label %iseq_lvar_id.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %iseq_lvar_id.exit.unr-lcssa, %.preheader.preheader
  %.09.i.epil.init = phi ptr [ %0, %.preheader.preheader ], [ %i.fh, %iseq_lvar_id.exit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i32 %xtraiter57, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.09.i.epil = phi ptr [ %i.fl, %.preheader.epil ], [ %.09.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter58 = phi i32 [ %epil.iter58.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.fi = getelementptr i8, ptr %.09.i.epil, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !43
  %i.fk = getelementptr i8, ptr %i.fj, i64 168
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !170 ; 2 uses
  %epil.iter58.next = add i32 %epil.iter58, 1     ; 2 uses
  %epil.iter58.cmp.not = icmp eq i32 %epil.iter58.next, %xtraiter57
  br i1 %epil.iter58.cmp.not, label %iseq_lvar_id.exit, label %.preheader.epil, !llvm.loop !1031

iseq_lvar_id.exit:                                ; preds = %.preheader.epil, %iseq_lvar_id.exit.unr-lcssa
  %.lcssa = phi ptr [ %i.fh, %iseq_lvar_id.exit.unr-lcssa ], [ %i.fl, %.preheader.epil ]
  %i.fm = getelementptr i8, ptr %.lcssa, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !43 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 144
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !188
  %i.fq = getelementptr i8, ptr %i.fn, i64 240
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !175
  %i.fs = sub i32 %i.fr, %3
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr [8 x i8], ptr %i.fp, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !36
  tail call fastcc void @access_outer_variables(ptr noundef %0, i32 noundef %4, i64 noundef %i.fv, i1 noundef zeroext true)
  br label %bb.j

bb.j:                                             ; preds = %iseq_lvar_id.exit, %update_lvar_state.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @get_dyna_var_idx(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %.not30 = icmp eq ptr %0, null
  br i1 %.not30, label %ISEQ_COMPILE_DATA.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %get_dyna_var_idx_at_raw.exit.thread
  %.032 = phi ptr [ %i.m, %get_dyna_var_idx_at_raw.exit.thread ], [ %0, %bb.a ]
  %.01531 = phi i32 [ %i.n, %get_dyna_var_idx_at_raw.exit.thread ], [ 0, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.032, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 240
  %i.d = load i32, ptr %i.c, align 8, !tbaa !175  ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %get_dyna_var_idx_at_raw.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.e = getelementptr i8, ptr %i.b, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !188
  %wide.trip.count.i = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %get_dyna_var_idx_at_raw.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %get_dyna_var_idx_at_raw.exit.thread, label %bb.b, !llvm.loop !1027

get_dyna_var_idx_at_raw.exit:                     ; preds = %bb.b
  %i.j = trunc nuw i64 %indvars.iv.i to i32       ; 3 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %.loopexit, label %get_dyna_var_idx_at_raw.exit.thread

get_dyna_var_idx_at_raw.exit.thread:              ; preds = %bb.c, %.lr.ph, %get_dyna_var_idx_at_raw.exit
  %.07.i20 = phi i32 [ %i.j, %get_dyna_var_idx_at_raw.exit ], [ -1, %.lr.ph ], [ -1, %bb.c ]
  %i.l = getelementptr i8, ptr %i.b, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !170  ; 2 uses
  %i.n = add i32 %.01531, 1                       ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %ISEQ_COMPILE_DATA.exit, label %.lr.ph, !llvm.loop !1032

ISEQ_COMPILE_DATA.exit:                           ; preds = %get_dyna_var_idx_at_raw.exit.thread, %bb.a
  %.015.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %get_dyna_var_idx_at_raw.exit.thread ]
  %.014.lcssa = phi i32 [ -1, %bb.a ], [ %.07.i20, %get_dyna_var_idx_at_raw.exit.thread ]
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = getelementptr i8, ptr %i.p, i64 128
  %i.r = load i32, ptr %i.q, align 8, !tbaa !21
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.r, ptr noundef nonnull @.str.147)
  %.pre = load ptr, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %get_dyna_var_idx_at_raw.exit, %ISEQ_COMPILE_DATA.exit
  %i.s = phi ptr [ %.pre, %ISEQ_COMPILE_DATA.exit ], [ %i.b, %get_dyna_var_idx_at_raw.exit ]
  %.01529 = phi i32 [ %.015.lcssa, %ISEQ_COMPILE_DATA.exit ], [ %.01531, %get_dyna_var_idx_at_raw.exit ]
  %.122 = phi i32 [ %.014.lcssa, %ISEQ_COMPILE_DATA.exit ], [ %i.j, %get_dyna_var_idx_at_raw.exit ]
  store i32 %.01529, ptr %2, align 4, !tbaa !7
  %i.t = getelementptr i8, ptr %i.s, i64 240
  %i.u = load i32, ptr %i.t, align 8, !tbaa !175
  store i32 %i.u, ptr %3, align 4, !tbaa !7
  ret i32 %.122
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_shareable_constant_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  switch i32 %2, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.g
    i32 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %4, null
  br i1 %i.e, label %ISEQ_COMPILE_DATA.exit.i, label %iseq_compile_each.exit

ISEQ_COMPILE_DATA.exit.i:                         ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr i8, ptr %i.g, i64 128
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %iseq_compile_each.exit.thread

bb.c:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i
  %i.k = call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !174
  %i.l = call i64 @rb_fix2int(i64 noundef %i.k) #37, !inline_history !174
  %i.m = trunc i64 %i.l to i32
  br label %iseq_compile_each.exit.thread

iseq_compile_each.exit.thread:                    ; preds = %ISEQ_COMPILE_DATA.exit.i, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ %i.i, %ISEQ_COMPILE_DATA.exit.i ]
  %i.n = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !174 ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.n, ptr %i.r, align 8, !tbaa !35
  store ptr %i.n, ptr %i.o, align 8, !tbaa !11
  br label %APPEND_LIST.exit

iseq_compile_each.exit:                           ; preds = %bb.b
  %i.s = call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %4, i32 noundef 0), !inline_history !174
  %.fr = freeze i32 %i.s
  %.not22 = icmp ne i32 %.fr, 0
  %spec.select = zext i1 %.not22 to i32
  br label %APPEND_LIST.exit

bb.d:                                             ; preds = %bb.a
  %i.t = call fastcc i32 @compile_shareable_literal_constant(ptr noundef %0, ptr noundef %5, i32 noundef 1, ptr noundef %3, ptr noundef %4, i64 noundef 0, ptr noundef %i.b, ptr noundef %i.a)
  %.not21 = icmp eq i32 %i.t, 0
  br i1 %.not21, label %APPEND_LIST.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %APPEND_LIST.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11   ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.u, ptr %i.x, align 8, !tbaa !35
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store ptr %i.w, ptr %i.z, align 8, !tbaa !34
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !11
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !11
  br label %APPEND_LIST.exit

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.ab = call fastcc i32 @compile_shareable_literal_constant(ptr noundef %0, ptr noundef %5, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 0, ptr noundef %i.b, ptr noundef %i.a)
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %APPEND_LIST.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !7
  %.not20 = icmp eq i32 %i.ac, 0
end_hunk_1
begin_hunk_2_@pm_compile_array_node:bb.a
  br i1 %i.ej, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.ek = trunc nuw i8 %.0213273 to i1
  %i.el = load i32, ptr %3, align 4, !tbaa !553   ; 2 uses
  %i.em = load i32, ptr %i.g, align 4, !tbaa !556 ; 2 uses
  %i.en = shl nuw i32 %i.ei, 1
  %i.eo = or disjoint i32 %i.en, 1
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  br i1 %i.ek, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eq = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.el, i32 noundef %i.em, i32 noundef 27, i32 noundef 1, i64 noundef %i.ep)
  br label %.sink.split375

bb.ai:                                            ; preds = %bb.ag
  %i.er = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.el, i32 noundef %i.em, i32 noundef 34, i32 noundef 1, i64 noundef %i.ep)
  br label %.sink.split375

bb.aj:                                            ; preds = %bb.y
  call fastcc void @pm_compile_node(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6)
  %i.es = add i32 %.0274, 1                       ; 3 uses
  %i.et = icmp sgt i32 %i.es, 255
  br i1 %i.et, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.eu = trunc nuw i8 %.0213273 to i1
  %i.ev = load i32, ptr %3, align 4, !tbaa !553   ; 2 uses
  %i.ew = load i32, ptr %i.g, align 4, !tbaa !556 ; 2 uses
  %i.ex = shl nuw i32 %i.es, 1
  %i.ey = or disjoint i32 %i.ex, 1
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  br i1 %i.eu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fa = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ev, i32 noundef %i.ew, i32 noundef 27, i32 noundef 1, i64 noundef %i.ez)
  br label %.sink.split375

bb.am:                                            ; preds = %bb.ak
  %i.fb = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ev, i32 noundef %i.ew, i32 noundef 34, i32 noundef 1, i64 noundef %i.ez)
  br label %.sink.split375

.sink.split375:                                   ; preds = %bb.o, %bb.n, %.critedge.thread, %bb.ai, %bb.ah, %bb.ae, %.thread, %bb.al, %bb.am
  %.sink382 = phi ptr [ %i.fb, %bb.am ], [ %i.fa, %bb.al ], [ %i.eh, %.thread ], [ %i.dy, %bb.ae ], [ %i.eq, %bb.ah ], [ %i.er, %bb.ai ], [ %i.cg, %.critedge.thread ], [ %i.bd, %bb.n ], [ %i.be, %bb.o ] ; 3 uses
  %.3228.ph = phi i64 [ %.0225271, %bb.am ], [ %.0225271, %bb.al ], [ %.1226269, %.thread ], [ %.1226269, %bb.ae ], [ %.0225271, %bb.ah ], [ %.0225271, %bb.ai ], [ %.0225271, %.critedge.thread ], [ %.0225271, %bb.n ], [ %.0225271, %bb.o ]
  %.2224.ph = phi i1 [ false, %bb.am ], [ false, %bb.al ], [ false, %.thread ], [ false, %bb.ae ], [ true, %bb.ah ], [ true, %bb.ai ], [ %.0222272.ph, %.critedge.thread ], [ false, %bb.n ], [ false, %bb.o ]
  %.9.ph = phi i8 [ 0, %bb.am ], [ 0, %bb.al ], [ 0, %.thread ], [ 0, %bb.ae ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ %.3216, %.critedge.thread ], [ 0, %bb.n ], [ 0, %bb.o ]
  %i.fc = load ptr, ptr %i.h, align 8, !tbaa !11  ; 2 uses
  %i.fd = getelementptr i8, ptr %.sink382, i64 16
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !34
  %i.fe = getelementptr i8, ptr %i.fc, i64 8
  store ptr %.sink382, ptr %i.fe, align 8, !tbaa !35
  store ptr %.sink382, ptr %i.h, align 8, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %.sink.split375, %bb.aj, %bb.af
  %.3228 = phi i64 [ %.0225271, %bb.af ], [ %.0225271, %bb.aj ], [ %.3228.ph, %.sink.split375 ]
  %.2224 = phi i1 [ true, %bb.af ], [ false, %bb.aj ], [ %.2224.ph, %.sink.split375 ]
  %.9 = phi i8 [ %.0213273, %bb.af ], [ %.0213273, %bb.aj ], [ %.9.ph, %.sink.split375 ] ; 2 uses
  %.8 = phi i32 [ %i.ei, %bb.af ], [ %i.es, %bb.aj ], [ 0, %.sink.split375 ] ; 4 uses
  %i.ff = add i64 %.3228, 1                       ; 2 uses
  %i.fg = load i64, ptr %2, align 8, !tbaa !563   ; 2 uses
  %i.fh = icmp ult i64 %i.ff, %i.fg
  br i1 %i.fh, label %.outer, label %._crit_edge, !llvm.loop !1256

.outer:                                           ; preds = %bb.an, %.lr.ph275
  %.ph = phi i64 [ %i.fg, %bb.an ], [ %i.e, %.lr.ph275 ]
  %.0274.ph = phi i32 [ %.8, %bb.an ], [ 0, %.lr.ph275 ]
  %.0213273.ph = phi i8 [ %.9, %bb.an ], [ 1, %.lr.ph275 ]
  %.0222272.ph = phi i1 [ %.2224, %bb.an ], [ false, %.lr.ph275 ] ; 2 uses
  %.0225271.ph = phi i64 [ %i.ff, %bb.an ], [ 0, %.lr.ph275 ]
  br label %bb.f

.thread296:                                       ; preds = %.critedge
  %i.fi = add i64 %.0225271, 1                    ; 2 uses
  %i.fj = load i64, ptr %2, align 8, !tbaa !563   ; 2 uses
  %i.fk = icmp ult i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.f, label %._crit_edge.thread303, !llvm.loop !1256

._crit_edge.thread303:                            ; preds = %.thread296
  %i.fl = trunc nuw i8 %.3216 to i1
  br i1 %i.fl, label %._crit_edge.thread.sink.split, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge
  %i.fm = trunc nuw i8 %.9 to i1
  br i1 %i.fm, label %._crit_edge.thread.sink.split, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.thread303, %bb.ao
  %.8302307312 = phi i32 [ 1, %._crit_edge.thread303 ], [ %.8, %bb.ao ]
  br label %._crit_edge.thread.sink.split

._crit_edge.thread.sink.split:                    ; preds = %bb.ao, %._crit_edge.thread303, %bb.ap
  %.8302307311.sink = phi i32 [ %.8302307312, %bb.ap ], [ 1, %._crit_edge.thread303 ], [ %.8, %bb.ao ]
  %.sink394 = phi i32 [ 34, %bb.ap ], [ 27, %._crit_edge.thread303 ], [ 27, %bb.ao ]
  %i.fn = load i32, ptr %3, align 4, !tbaa !553
  %i.fo = getelementptr i8, ptr %3, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !556
  %i.fq = sext i32 %.8302307311.sink to i64
  %i.fr = shl nsw i64 %i.fq, 1
  %i.fs = or disjoint i64 %i.fr, 1
  %i.ft = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.fn, i32 noundef %i.fp, i32 noundef %.sink394, i32 noundef 1, i64 noundef %i.fs) ; 3 uses
  %i.fu = getelementptr i8, ptr %4, i64 24        ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !11 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.ft, i64 16
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !34
  %i.fx = getelementptr i8, ptr %i.fv, i64 8
  store ptr %i.ft, ptr %i.fx, align 8, !tbaa !35
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !11
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge.thread.sink.split, %.preheader258, %._crit_edge
  br i1 %5, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.thread
  %i.fy = load i32, ptr %3, align 4, !tbaa !553
  %i.fz = getelementptr i8, ptr %3, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !556
  %i.gb = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.fy, i32 noundef %i.ga, i32 noundef 39, i32 noundef 0, ptr noundef null)
  br label %.sink.split399

.sink.split399:                                   ; preds = %bb.d, %bb.e, %bb.aq
  %.sink407 = phi ptr [ %i.gb, %bb.aq ], [ %i.t, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.gc = getelementptr i8, ptr %4, i64 24        ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !11 ; 2 uses
  %i.ge = getelementptr i8, ptr %.sink407, i64 16
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !34
  %i.gf = getelementptr i8, ptr %i.gd, i64 8
  store ptr %.sink407, ptr %i.gf, align 8, !tbaa !35
  store ptr %.sink407, ptr %i.gc, align 8, !tbaa !11
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split399, %._crit_edge.thread, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @pm_lookup_local_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %2, 7                       ; 3 uses
  %i.c = icmp ult i32 %2, 8
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %2, 2147483640
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0113.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.y, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0113.epil = phi ptr [ %i.e, %.lr.ph.epil ], [ %.0113.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.d = getelementptr i8, ptr %.0113.epil, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !497  ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !1257

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.011.lcssa = phi ptr [ %0, %bb.a ], [ %i.y, %.preheader.loopexit.unr-lcssa ], [ %i.e, %.lr.ph.epil ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %2, %.lr.ph.epil ], [ %2, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %i.f = zext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr i8, ptr %.011.lcssa, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !536
  %i.i = call i32 @rb_st_lookup(ptr noundef %i.h, i64 noundef %i.f, ptr noundef nonnull %i.a) #37
  %.not6 = icmp eq i32 %i.i, 0
  br i1 %.not6, label %.lr.ph9, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0113 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.j = getelementptr i8, ptr %.0113, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !497
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !497
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !497
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !497
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !497
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !497
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !497
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !497  ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1258

.lr.ph9:                                          ; preds = %.preheader, %bb.b
  %.18 = phi i32 [ %i.ab, %bb.b ], [ %.0.lcssa, %.preheader ]
  %.1127 = phi ptr [ %i.aa, %bb.b ], [ %.011.lcssa, %.preheader ]
  %i.z = getelementptr i8, ptr %.1127, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !497 ; 4 uses
  %.not14 = icmp eq ptr %i.aa, null
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph9
  %i.ab = add i32 %.18, 1                         ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !536
  %i.ae = call i32 @rb_st_lookup(ptr noundef %i.ad, i64 noundef %i.f, ptr noundef nonnull %i.a) #37
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %.lr.ph9, label %._crit_edge, !llvm.loop !1249

bb.c:                                             ; preds = %.lr.ph9
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.262, i32 noundef %1) #38
  unreachable

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.112.lcssa = phi ptr [ %.011.lcssa, %.preheader ], [ %i.aa, %bb.b ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %i.ab, %bb.b ]
  %i.af = getelementptr i8, ptr %.112.lcssa, i64 112
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !676
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !36
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = sub i32 %i.ag, %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.sroa.3.0.insert.ext = zext i32 %.1.lcssa to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.aj to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_iseq_add_getlocal(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %.not13.i = icmp eq i32 %5, 0
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i32 %5, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01015.i.prol = phi i32 [ %i.e, %.lr.ph.i.prol ], [ %5, %.lr.ph.i.preheader ]
  %.01114.i.prol = phi ptr [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.a = getelementptr i8, ptr %.01114.i.prol, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 3 uses
  %i.e = add i32 %.01015.i.prol, -1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1259

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa40.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %.01015.i.unr = phi i32 [ %5, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.prol ]
  %.01114.i.unr = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.f = icmp ult i32 %5, 8
  br i1 %i.f, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01015.i = phi i32 [ %i.am, %.lr.ph.i ], [ %.01015.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01114.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.01114.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.g = getelementptr i8, ptr %.01114.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr i8, ptr %i.h, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !170
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr i8, ptr %i.l, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !170
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr i8, ptr %i.p, i64 168
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !170
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr i8, ptr %i.x, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !170
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = getelementptr i8, ptr %i.ab, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !170
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = getelementptr i8, ptr %i.af, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !170
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.ak = getelementptr i8, ptr %i.aj, i64 168
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !170 ; 2 uses
  %i.am = add i32 %.01015.i, -8                   ; 2 uses
  %.not.i.7 = icmp eq i32 %i.am, 0
  br i1 %.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !277

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.011.lcssa.i = phi ptr [ %0, %bb.a ], [ %.lcssa40.unr, %.lr.ph.i.prol.loopexit ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %i.an = getelementptr i8, ptr %.011.lcssa.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43 ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !275
  %i.ar = icmp eq ptr %i.aq, %.011.lcssa.i
  br i1 %i.ar, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge.i
  %i.as = getelementptr i8, ptr %i.ao, i64 16
  %i.at = load i16, ptr %i.as, align 8
  %i.au = and i16 %i.at, 64
  %.not12.i = icmp eq i16 %i.au, 0
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr i8, ptr %i.ao, i64 240
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !175
  %i.ax = getelementptr i8, ptr %i.ao, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !231
  %i.az = sub i32 %i.aw, %i.ay
  %i.ba = icmp eq i32 %i.az, %4
  br i1 %i.ba, label %iseq_local_block_param_p.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %bb.b, %bb.c
  br label %iseq_local_block_param_p.exit

iseq_local_block_param_p.exit:                    ; preds = %bb.c, %bb.d
  %.sink34 = phi i32 [ 1, %bb.d ], [ 3, %bb.c ]
  %i.bb = add i32 %4, 2
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 1
  %i.be = or disjoint i64 %i.bd, 1
  %i.bf = sext i32 %5 to i64
  %i.bg = shl nsw i64 %i.bf, 1
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %.sink34, i32 noundef 2, i64 noundef %i.be, i64 noundef %i.bh) ; 3 uses
  %i.bj = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 16
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !34
  %i.bm = getelementptr i8, ptr %i.bk, i64 8
  store ptr %i.bi, ptr %i.bm, align 8, !tbaa !35
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !11
  %i.bn = icmp sgt i32 %5, 0
  br i1 %i.bn, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %iseq_local_block_param_p.exit
  %xtraiter41 = and i32 %5, 7                     ; 3 uses
  %i.bo = icmp ult i32 %5, 8
  br i1 %i.bo, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %5, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.09.i = phi ptr [ %0, %.preheader.preheader.new ], [ %i.cu, %.preheader ]
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.bp = getelementptr i8, ptr %.09.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !43
  %i.br = getelementptr i8, ptr %i.bq, i64 168
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !170
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !43
  %i.bv = getelementptr i8, ptr %i.bu, i64 168
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !170
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43
  %i.bz = getelementptr i8, ptr %i.by, i64 168
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !170
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !43
  %i.cd = getelementptr i8, ptr %i.cc, i64 168
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !170
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !43
  %i.ch = getelementptr i8, ptr %i.cg, i64 168
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !170
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !43
  %i.cl = getelementptr i8, ptr %i.ck, i64 168
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !170
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !43
  %i.cp = getelementptr i8, ptr %i.co, i64 168
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !170
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !43
  %i.ct = getelementptr i8, ptr %i.cs, i64 168
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !170 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %iseq_lvar_id.exit.unr-lcssa, label %.preheader, !llvm.loop !279

iseq_lvar_id.exit.unr-lcssa:                      ; preds = %.preheader
  %lcmp.mod42.not = icmp eq i32 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %iseq_lvar_id.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %iseq_lvar_id.exit.unr-lcssa, %.preheader.preheader
  %.09.i.epil.init = phi ptr [ %0, %.preheader.preheader ], [ %i.cu, %iseq_lvar_id.exit.unr-lcssa ]
  %lcmp.mod44 = icmp ne i32 %xtraiter41, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.09.i.epil = phi ptr [ %i.cy, %.preheader.epil ], [ %.09.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.cv = getelementptr i8, ptr %.09.i.epil, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.cx = getelementptr i8, ptr %i.cw, i64 168
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !170 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter41
  br i1 %epil.iter.cmp.not, label %iseq_lvar_id.exit, label %.preheader.epil, !llvm.loop !1260

iseq_lvar_id.exit:                                ; preds = %.preheader.epil, %iseq_lvar_id.exit.unr-lcssa
  %.lcssa = phi ptr [ %i.cu, %iseq_lvar_id.exit.unr-lcssa ], [ %i.cy, %.preheader.epil ]
  %i.cz = getelementptr i8, ptr %.lcssa, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !43 ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 144
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !188
  %i.dd = getelementptr i8, ptr %i.da, i64 240
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !175
  %i.df = sub i32 %i.de, %4
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr %i.dc, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !36
  tail call fastcc void @access_outer_variables(ptr noundef %0, i32 noundef %5, i64 noundef %i.di, i1 noundef zeroext false)
  br label %bb.e

bb.e:                                             ; preds = %iseq_lvar_id.exit, %iseq_local_block_param_p.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_compile_ensure(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.ensure_range, align 8       ; 6 uses
  %7 = alloca %struct.iseq_compile_data_ensure_node_stack, align 8 ; 6 uses
  %8 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 7 uses
  %9 = alloca %struct.pm_scope_node, align 8      ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 64         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !572
  %i.d = getelementptr i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !512  ; 3 uses
  %.not102 = icmp eq ptr %i.e, null               ; 2 uses
  br i1 %.not102, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %5, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !538  ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 600
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !539
  %i.k = getelementptr i8, ptr %i.g, i64 664
  %i.l = load i32, ptr %i.k, align 8, !tbaa !540
  %i.m = tail call i32 @pm_newline_list_line(ptr noundef %i.h, ptr noundef %i.j, i32 noundef %i.l) #37
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.031.0.copyload = load i32, ptr %2, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.031.0 = phi i32 [ %i.m, %bb.b ], [ %.sroa.031.0.copyload, %bb.c ]
  %i.n = getelementptr i8, ptr %0, i64 24         ; 14 uses
  %.val13.i = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37   ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !7    ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = add nuw nsw i64 %i.s, 48
  %i.u = getelementptr i8, ptr %i.p, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 4 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, %i.w
  br i1 %i.x, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %bb.d
  %i.y = icmp ult i32 %i.v, 48
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.f
  %.027.i.i.i.i = phi i32 [ %i.aa, %bb.f ], [ %i.v, %.preheader.i.i.i.i ] ; 3 uses
  %i.z = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.ab = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.f
  %i.ac = zext nneg i32 %i.aa to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.v, %.preheader.i.i.i.i ], [ %i.aa, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.w, %.preheader.i.i.i.i ], [ %i.ac, %._crit_edge.i.i.loopexit.i.i ]
  %i.ad = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.ae = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ad, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ae, ptr %i.p, align 8, !tbaa !37
  store ptr %i.ae, ptr %i.o, align 8, !tbaa !37
  store ptr null, ptr %i.ae, align 8, !tbaa !37
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  store i32 0, ptr %i.af, align 8, !tbaa !7
  %i.ag = getelementptr i8, ptr %i.ae, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ag, align 4, !tbaa !7
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %bb.d, %._crit_edge.i.i.i.i
  %i.ah = phi i32 [ %i.r, %bb.d ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.ae, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.aj = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.ak = zext i32 %i.ah to i64
  %i.al = getelementptr i8, ptr %i.ai, i64 %i.ak  ; 9 uses
  %i.am = add i32 %i.ah, 48
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !7
  store i32 1, ptr %i.al, align 8, !tbaa !193
  %i.an = getelementptr i8, ptr %i.al, i64 8      ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !194
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.ap = getelementptr i8, ptr %i.ao, i64 132    ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !195 ; 2 uses
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !195
  %i.as = getelementptr i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.as, align 8, !tbaa !94
  %i.at = getelementptr i8, ptr %i.al, i64 44     ; 2 uses
  %i.au = load i8, ptr %i.at, align 4
  %i.av = and i8 %i.au, -16
  store i8 %i.av, ptr %i.at, align 4
  %i.aw = getelementptr i8, ptr %i.al, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.aw, align 4, !tbaa !7
  %.val13.i107 = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.ax = getelementptr i8, ptr %.val13.i107, i64 96 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37 ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !7  ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.bb, 48
  %i.bd = getelementptr i8, ptr %i.ay, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7  ; 4 uses
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp samesign ugt i64 %i.bc, %i.bf
  br i1 %i.bg, label %.preheader.i.i.i.i110, label %new_label_body.exit119

.preheader.i.i.i.i110:                            ; preds = %new_label_body.exit
  %i.bh = icmp ult i32 %i.be, 48
  br i1 %i.bh, label %.lr.ph.i.i.i.i116, label %._crit_edge.i.i.i.i111

.lr.ph.i.i.i.i116:                                ; preds = %.preheader.i.i.i.i110, %bb.h
  %.027.i.i.i.i117 = phi i32 [ %i.bj, %bb.h ], [ %i.be, %.preheader.i.i.i.i110 ] ; 3 uses
  %i.bi = icmp samesign ugt i32 %.027.i.i.i.i117, 1073741822
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i116
  tail call void @rb_memerror() #38
  unreachable

bb.h:                                             ; preds = %.lr.ph.i.i.i.i116
  %i.bj = shl nuw nsw i32 %.027.i.i.i.i117, 1     ; 3 uses
  %i.bk = icmp samesign ult i32 %.027.i.i.i.i117, 24
  br i1 %i.bk, label %.lr.ph.i.i.i.i116, label %._crit_edge.i.i.loopexit.i.i118, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i118:                  ; preds = %bb.h
  %i.bl = zext nneg i32 %i.bj to i64
  br label %._crit_edge.i.i.i.i111

._crit_edge.i.i.i.i111:                           ; preds = %._crit_edge.i.i.loopexit.i.i118, %.preheader.i.i.i.i110
  %.0.lcssa.i.i.i.i112 = phi i32 [ %i.be, %.preheader.i.i.i.i110 ], [ %i.bj, %._crit_edge.i.i.loopexit.i.i118 ]
  %.lcssa.i.i.i.i113 = phi i64 [ %i.bf, %.preheader.i.i.i.i110 ], [ %i.bl, %._crit_edge.i.i.loopexit.i.i118 ]
  %i.bm = add nuw nsw i64 %.lcssa.i.i.i.i113, 16
  %i.bn = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bm, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bn, ptr %i.ay, align 8, !tbaa !37
  store ptr %i.bn, ptr %i.ax, align 8, !tbaa !37
  store ptr null, ptr %i.bn, align 8, !tbaa !37
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  store i32 0, ptr %i.bo, align 8, !tbaa !7
  %i.bp = getelementptr i8, ptr %i.bn, i64 12
  store i32 %.0.lcssa.i.i.i.i112, ptr %i.bp, align 4, !tbaa !7
  br label %new_label_body.exit119

new_label_body.exit119:                           ; preds = %new_label_body.exit, %._crit_edge.i.i.i.i111
end_hunk_2
begin_hunk_3_@pm_iseq_add_setlocal
define internal fastcc void @pm_iseq_add_setlocal(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %.not13.i = icmp eq i32 %5, 0
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i32 %5, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01015.i.prol = phi i32 [ %i.e, %.lr.ph.i.prol ], [ %5, %.lr.ph.i.preheader ]
  %.01114.i.prol = phi ptr [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.a = getelementptr i8, ptr %.01114.i.prol, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 3 uses
  %i.e = add i32 %.01015.i.prol, -1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1358

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa51.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %.01015.i.unr = phi i32 [ %5, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.prol ]
  %.01114.i.unr = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.f = icmp ult i32 %5, 8
  br i1 %i.f, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01015.i = phi i32 [ %i.am, %.lr.ph.i ], [ %.01015.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01114.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.01114.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.g = getelementptr i8, ptr %.01114.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr i8, ptr %i.h, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !170
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr i8, ptr %i.l, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !170
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr i8, ptr %i.p, i64 168
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !170
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr i8, ptr %i.x, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !170
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = getelementptr i8, ptr %i.ab, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !170
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = getelementptr i8, ptr %i.af, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !170
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.ak = getelementptr i8, ptr %i.aj, i64 168
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !170 ; 2 uses
  %i.am = add i32 %.01015.i, -8                   ; 2 uses
  %.not.i.7 = icmp eq i32 %i.am, 0
  br i1 %.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !277

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.011.lcssa.i = phi ptr [ %0, %bb.a ], [ %.lcssa51.unr, %.lr.ph.i.prol.loopexit ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %i.an = getelementptr i8, ptr %.011.lcssa.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43 ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !275
  %i.ar = icmp eq ptr %i.aq, %.011.lcssa.i
  br i1 %i.ar, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge.i
  %i.as = getelementptr i8, ptr %i.ao, i64 16
  %i.at = load i16, ptr %i.as, align 8
  %i.au = and i16 %i.at, 64
  %.not12.i = icmp eq i16 %i.au, 0
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr i8, ptr %i.ao, i64 240
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !175
  %i.ax = getelementptr i8, ptr %i.ao, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !231
  %i.az = sub i32 %i.aw, %i.ay
  %i.ba = icmp eq i32 %i.az, %4
  br i1 %i.ba, label %iseq_local_block_param_p.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %bb.b, %bb.c
  br label %iseq_local_block_param_p.exit

iseq_local_block_param_p.exit:                    ; preds = %bb.c, %bb.d
  %.sink43 = phi i32 [ 2, %bb.d ], [ 4, %bb.c ]
  %i.bb = add i32 %4, 2
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 1
  %i.be = or disjoint i64 %i.bd, 1
  %i.bf = sext i32 %5 to i64
  %i.bg = shl nsw i64 %i.bf, 1
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %.sink43, i32 noundef 2, i64 noundef %i.be, i64 noundef %i.bh) ; 3 uses
  %i.bj = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 16
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !34
  %i.bm = getelementptr i8, ptr %i.bk, i64 8
  store ptr %i.bi, ptr %i.bm, align 8, !tbaa !35
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !11
  %i.bn = icmp sgt i32 %5, 0                      ; 2 uses
  br i1 %i.bn, label %.lr.ph.i24.preheader, label %._crit_edge.i23

.lr.ph.i24.preheader:                             ; preds = %iseq_local_block_param_p.exit
  %xtraiter52 = and i32 %5, 7                     ; 3 uses
  %i.bo = icmp ult i32 %5, 8
  br i1 %i.bo, label %.lr.ph.i24.epil.preheader, label %.lr.ph.i24.preheader.new

.lr.ph.i24.preheader.new:                         ; preds = %.lr.ph.i24.preheader
  %unroll_iter = and i32 %5, 2147483640
  br label %.lr.ph.i24

._crit_edge.i23.loopexit.unr-lcssa:               ; preds = %.lr.ph.i24
  %lcmp.mod53.not = icmp eq i32 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %._crit_edge.i23, label %.lr.ph.i24.epil.preheader

.lr.ph.i24.epil.preheader:                        ; preds = %._crit_edge.i23.loopexit.unr-lcssa, %.lr.ph.i24.preheader
  %.014.i.epil.init = phi ptr [ %0, %.lr.ph.i24.preheader ], [ %i.di, %._crit_edge.i23.loopexit.unr-lcssa ]
  %lcmp.mod55 = icmp ne i32 %xtraiter52, 0
  tail call void @llvm.assume(i1 %lcmp.mod55)
  br label %.lr.ph.i24.epil

.lr.ph.i24.epil:                                  ; preds = %.lr.ph.i24.epil, %.lr.ph.i24.epil.preheader
  %.014.i.epil = phi ptr [ %i.bs, %.lr.ph.i24.epil ], [ %.014.i.epil.init, %.lr.ph.i24.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i24.epil ], [ 0, %.lr.ph.i24.epil.preheader ]
  %i.bp = getelementptr i8, ptr %.014.i.epil, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !43
  %i.br = getelementptr i8, ptr %i.bq, i64 168
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !170 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter52
  br i1 %epil.iter.cmp.not, label %._crit_edge.i23, label %.lr.ph.i24.epil, !llvm.loop !1359

._crit_edge.i23:                                  ; preds = %._crit_edge.i23.loopexit.unr-lcssa, %.lr.ph.i24.epil, %iseq_local_block_param_p.exit
  %.0.lcssa.i = phi ptr [ %0, %iseq_local_block_param_p.exit ], [ %i.di, %._crit_edge.i23.loopexit.unr-lcssa ], [ %i.bs, %.lr.ph.i24.epil ]
  %i.bt = getelementptr i8, ptr %.0.lcssa.i, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !43 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 152
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !189
  %i.bx = getelementptr i8, ptr %i.bu, i64 240
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !175
  %i.bz = sub i32 %i.by, %4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [4 x i8], ptr %i.bw, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  switch i32 %i.cc, label %bb.f [
    i32 0, label %.sink.split.i
    i32 1, label %bb.e
    i32 2, label %update_lvar_state.exit
  ]

.lr.ph.i24:                                       ; preds = %.lr.ph.i24, %.lr.ph.i24.preheader.new
  %.014.i = phi ptr [ %0, %.lr.ph.i24.preheader.new ], [ %i.di, %.lr.ph.i24 ]
  %niter = phi i32 [ 0, %.lr.ph.i24.preheader.new ], [ %niter.next.7, %.lr.ph.i24 ]
  %i.cd = getelementptr i8, ptr %.014.i, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !43
  %i.cf = getelementptr i8, ptr %i.ce, i64 168
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !170
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !43
  %i.cj = getelementptr i8, ptr %i.ci, i64 168
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !170
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !43
  %i.cn = getelementptr i8, ptr %i.cm, i64 168
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !170
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43
  %i.cr = getelementptr i8, ptr %i.cq, i64 168
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !170
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !43
  %i.cv = getelementptr i8, ptr %i.cu, i64 168
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !170
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !43
  %i.cz = getelementptr i8, ptr %i.cy, i64 168
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !170
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !43
  %i.dd = getelementptr i8, ptr %i.dc, i64 168
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !170
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !43
  %i.dh = getelementptr i8, ptr %i.dg, i64 168
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !170 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i23.loopexit.unr-lcssa, label %.lr.ph.i24, !llvm.loop !1030

bb.e:                                             ; preds = %._crit_edge.i23
  br label %.sink.split.i

bb.f:                                             ; preds = %._crit_edge.i23
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.29) #38
  unreachable

.sink.split.i:                                    ; preds = %bb.e, %._crit_edge.i23
  %.sink.i = phi i32 [ 2, %bb.e ], [ 1, %._crit_edge.i23 ]
  store i32 %.sink.i, ptr %i.cb, align 4, !tbaa !7
  br label %update_lvar_state.exit

update_lvar_state.exit:                           ; preds = %._crit_edge.i23, %.sink.split.i
  br i1 %i.bn, label %.preheader.preheader, label %bb.g

.preheader.preheader:                             ; preds = %update_lvar_state.exit
  %xtraiter56 = and i32 %5, 7                     ; 3 uses
  %i.dj = icmp ult i32 %5, 8
  br i1 %i.dj, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter61 = and i32 %5, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.09.i = phi ptr [ %0, %.preheader.preheader.new ], [ %i.ep, %.preheader ]
  %niter62 = phi i32 [ 0, %.preheader.preheader.new ], [ %niter62.next.7, %.preheader ]
  %i.dk = getelementptr i8, ptr %.09.i, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !43
  %i.dm = getelementptr i8, ptr %i.dl, i64 168
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !170
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !43
  %i.dq = getelementptr i8, ptr %i.dp, i64 168
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !170
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !43
  %i.du = getelementptr i8, ptr %i.dt, i64 168
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !170
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !43
  %i.dy = getelementptr i8, ptr %i.dx, i64 168
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !170
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !43
  %i.ec = getelementptr i8, ptr %i.eb, i64 168
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !170
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !43
  %i.eg = getelementptr i8, ptr %i.ef, i64 168
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !170
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !43
  %i.ek = getelementptr i8, ptr %i.ej, i64 168
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !170
  %i.em = getelementptr i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !43
  %i.eo = getelementptr i8, ptr %i.en, i64 168
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !170 ; 3 uses
  %niter62.next.7 = add i32 %niter62, 8           ; 2 uses
  %niter62.ncmp.7 = icmp eq i32 %niter62.next.7, %unroll_iter61
  br i1 %niter62.ncmp.7, label %iseq_lvar_id.exit.unr-lcssa, label %.preheader, !llvm.loop !279

iseq_lvar_id.exit.unr-lcssa:                      ; preds = %.preheader
  %lcmp.mod58.not = icmp eq i32 %xtraiter56, 0
  br i1 %lcmp.mod58.not, label %iseq_lvar_id.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %iseq_lvar_id.exit.unr-lcssa, %.preheader.preheader
  %.09.i.epil.init = phi ptr [ %0, %.preheader.preheader ], [ %i.ep, %iseq_lvar_id.exit.unr-lcssa ]
  %lcmp.mod60 = icmp ne i32 %xtraiter56, 0
  tail call void @llvm.assume(i1 %lcmp.mod60)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.09.i.epil = phi ptr [ %i.et, %.preheader.epil ], [ %.09.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter57 = phi i32 [ %epil.iter57.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.eq = getelementptr i8, ptr %.09.i.epil, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !43
  %i.es = getelementptr i8, ptr %i.er, i64 168
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !170 ; 2 uses
  %epil.iter57.next = add i32 %epil.iter57, 1     ; 2 uses
  %epil.iter57.cmp.not = icmp eq i32 %epil.iter57.next, %xtraiter56
  br i1 %epil.iter57.cmp.not, label %iseq_lvar_id.exit, label %.preheader.epil, !llvm.loop !1360

iseq_lvar_id.exit:                                ; preds = %.preheader.epil, %iseq_lvar_id.exit.unr-lcssa
  %.lcssa = phi ptr [ %i.ep, %iseq_lvar_id.exit.unr-lcssa ], [ %i.et, %.preheader.epil ]
  %i.eu = getelementptr i8, ptr %.lcssa, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !43 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 144
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !188
  %i.ey = getelementptr i8, ptr %i.ev, i64 240
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !175
  %i.fa = sub i32 %i.ez, %4
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr [8 x i8], ptr %i.ex, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !36
  tail call fastcc void @access_outer_variables(ptr noundef %0, i32 noundef %5, i64 noundef %i.fd, i1 noundef zeroext true)
  br label %bb.g

bb.g:                                             ; preds = %iseq_lvar_id.exit, %update_lvar_state.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_compile_pattern(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i32 noundef %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %9 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 8 uses
  %i.b = getelementptr i8, ptr %1, i64 80         ; 13 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 50 uses
  %i.d = getelementptr i8, ptr %3, i64 24         ; 348 uses
  %i.e = add i32 %8, 1                            ; 9 uses
  %i.f = ptrtoint ptr %4 to i64                   ; 8 uses
  %i.g = getelementptr i8, ptr %4, i64 40         ; 16 uses
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %bb.ej, %bb.a
  %.tr1664.ph = phi ptr [ %i.btc, %bb.ej ], [ %2, %bb.a ]
  %.tr1669.ph = phi i1 [ true, %bb.ej ], [ %7, %bb.a ] ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse.outer
  %.tr1664 = phi ptr [ %.tr1664.ph, %tailrecurse.outer ], [ %.tr1664.be, %tailrecurse.backedge ] ; 67 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !538  ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 600
  %i.j = getelementptr i8, ptr %.tr1664, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !539
  %i.l = getelementptr i8, ptr %i.h, i64 664
  %i.m = load i32, ptr %i.l, align 8, !tbaa !540
  %i.n = tail call i32 @pm_newline_list_line(ptr noundef %i.i, ptr noundef %i.k, i32 noundef %i.m) #37 ; 171 uses
  %i.o = getelementptr i8, ptr %.tr1664, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !555  ; 171 uses
  %i.q = load i16, ptr %.tr1664, align 8, !tbaa !501 ; 2 uses
  switch i16 %i.q, label %bb.er [
    i16 7, label %bb.b
    i16 52, label %bb.al
    i16 66, label %bb.br
    i16 23, label %bb.dt
    i16 97, label %bb.dy
    i16 3, label %bb.eb
    i16 116, label %tailrecurse.backedge
    i16 117, label %bb.eg
    i16 6, label %.loopexit1675
    i16 30, label %.loopexit1675
    i16 37, label %.loopexit1675
    i16 42, label %.loopexit1675
    i16 51, label %.loopexit1675
    i16 54, label %.loopexit1675
    i16 62, label %.loopexit1675
    i16 68, label %.loopexit1675
    i16 79, label %.loopexit1675
    i16 88, label %.loopexit1675
    i16 82, label %.loopexit1675
    i16 84, label %.loopexit1675
    i16 85, label %.loopexit1675
    i16 86, label %.loopexit1675
    i16 87, label %.loopexit1675
    i16 92, label %.loopexit1675
    i16 96, label %.loopexit1675
    i16 108, label %.loopexit1675
    i16 136, label %.loopexit1675
    i16 137, label %.loopexit1675
    i16 138, label %.loopexit1675
    i16 122, label %.loopexit1675
    i16 123, label %.loopexit1675
    i16 125, label %.loopexit1675
    i16 133, label %.loopexit1675
    i16 141, label %.loopexit1675
    i16 143, label %.loopexit1675
    i16 144, label %.loopexit1675
    i16 150, label %.loopexit1675
    i16 118, label %bb.ej
    i16 67, label %bb.ek
    i16 146, label %bb.ek
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.r = getelementptr i8, ptr %.tr1664, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1361 ; 5 uses
  %i.t = getelementptr i8, ptr %.tr1664, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1363 ; 5 uses
  %i.v = add i64 %i.u, %i.s
  %i.w = getelementptr i8, ptr %.tr1664, i64 56   ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1364 ; 3 uses
  %.not1237 = icmp eq ptr %i.x, null
  br i1 %.not1237, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i16, ptr %i.x, align 8, !tbaa !501
  %i.z = icmp eq i16 %i.y, 139
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.x, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !732
  %i.ac = icmp ne ptr %i.ab, null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = phi i1 [ false, %bb.c ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ae = icmp ne i64 %i.u, 0
  %i.af = select i1 %i.ad, i1 true, i1 %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.01200 = phi i1 [ %i.af, %bb.e ], [ false, %bb.b ] ; 3 uses
  %.01197 = phi i1 [ %i.ad, %bb.e ], [ false, %bb.b ]
  %.val13.i = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.ag = getelementptr i8, ptr %.val13.i, i64 96 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !7  ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = add nuw nsw i64 %i.ak, 48
  %i.am = getelementptr i8, ptr %i.ah, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7  ; 4 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = icmp samesign ugt i64 %i.al, %i.ao
  br i1 %i.ap, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %bb.f
  %i.aq = icmp ult i32 %i.an, 48
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.h
  %.027.i.i.i.i = phi i32 [ %i.as, %bb.h ], [ %i.an, %.preheader.i.i.i.i ] ; 3 uses
  %i.ar = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.as = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.at = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.h
  %i.au = zext nneg i32 %i.as to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.an, %.preheader.i.i.i.i ], [ %i.as, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.ao, %.preheader.i.i.i.i ], [ %i.au, %._crit_edge.i.i.loopexit.i.i ]
  %i.av = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.aw = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.av, i64 noundef 1) #39 ; 6 uses
  store ptr %i.aw, ptr %i.ah, align 8, !tbaa !37
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !37
  store ptr null, ptr %i.aw, align 8, !tbaa !37
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !7
  %i.ay = getelementptr i8, ptr %i.aw, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ay, align 4, !tbaa !7
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %bb.f, %._crit_edge.i.i.i.i
  %i.az = phi i32 [ %i.aj, %bb.f ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %i.aw, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ba = getelementptr i8, ptr %.022.i.i.i.i, i64 16
end_hunk_3
begin_hunk_4_@pm_compile_pattern:bb.a
  %i.bjw = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.bjx = getelementptr i8, ptr %i.bjv, i64 16
  store ptr %i.bjw, ptr %i.bjx, align 8, !tbaa !34
  %i.bjy = getelementptr i8, ptr %i.bjw, i64 8
  store ptr %i.bjv, ptr %i.bjy, align 8, !tbaa !35
  store ptr %i.bjv, ptr %i.d, align 8, !tbaa !11
  %i.bjz = getelementptr i8, ptr %.tr1664, i64 24
  %i.bka = load ptr, ptr %i.bjz, align 8, !tbaa !1385 ; 2 uses
  %i.bkb = load ptr, ptr %i.b, align 8, !tbaa !538 ; 2 uses
  %i.bkc = getelementptr i8, ptr %i.bka, i64 8
  %.val.i1485 = load ptr, ptr %i.bkc, align 8, !tbaa !539
  %i.bkd = getelementptr i8, ptr %i.bkb, i64 600
  %i.bke = getelementptr i8, ptr %i.bkb, i64 664
  %i.bkf = load i32, ptr %i.bke, align 8, !tbaa !540
  %i.bkg = tail call i32 @pm_newline_list_line(ptr noundef %i.bkd, ptr noundef %.val.i1485, i32 noundef %i.bkf) #37 ; 0 uses
  %.val13.i1588 = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.bkh = getelementptr i8, ptr %.val13.i1588, i64 96 ; 2 uses
  %i.bki = load ptr, ptr %i.bkh, align 8, !tbaa !37 ; 4 uses
  %i.bkj = getelementptr i8, ptr %i.bki, i64 8
  %i.bkk = load i32, ptr %i.bkj, align 8, !tbaa !7 ; 2 uses
  %i.bkl = zext i32 %i.bkk to i64
  %i.bkm = add nuw nsw i64 %i.bkl, 48
  %i.bkn = getelementptr i8, ptr %i.bki, i64 12
  %i.bko = load i32, ptr %i.bkn, align 4, !tbaa !7 ; 4 uses
  %i.bkp = zext i32 %i.bko to i64                 ; 2 uses
  %i.bkq = icmp samesign ugt i64 %i.bkm, %i.bkp
  br i1 %i.bkq, label %.preheader.i.i.i.i1591, label %new_label_body.exit1600

.preheader.i.i.i.i1591:                           ; preds = %new_label_body.exit1483
  %i.bkr = icmp ult i32 %i.bko, 48
  br i1 %i.bkr, label %.lr.ph.i.i.i.i1597, label %._crit_edge.i.i.i.i1592

.lr.ph.i.i.i.i1597:                               ; preds = %.preheader.i.i.i.i1591, %bb.dx
  %.027.i.i.i.i1598 = phi i32 [ %i.bkt, %bb.dx ], [ %i.bko, %.preheader.i.i.i.i1591 ] ; 3 uses
  %i.bks = icmp samesign ugt i32 %.027.i.i.i.i1598, 1073741822
  br i1 %i.bks, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i1597
  tail call void @rb_memerror() #38
  unreachable

bb.dx:                                            ; preds = %.lr.ph.i.i.i.i1597
  %i.bkt = shl nuw nsw i32 %.027.i.i.i.i1598, 1   ; 3 uses
  %i.bku = icmp samesign ult i32 %.027.i.i.i.i1598, 24
  br i1 %i.bku, label %.lr.ph.i.i.i.i1597, label %._crit_edge.i.i.loopexit.i.i1599, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i1599:                 ; preds = %bb.dx
  %i.bkv = zext nneg i32 %i.bkt to i64
  br label %._crit_edge.i.i.i.i1592

._crit_edge.i.i.i.i1592:                          ; preds = %._crit_edge.i.i.loopexit.i.i1599, %.preheader.i.i.i.i1591
  %.0.lcssa.i.i.i.i1593 = phi i32 [ %i.bko, %.preheader.i.i.i.i1591 ], [ %i.bkt, %._crit_edge.i.i.loopexit.i.i1599 ]
  %.lcssa.i.i.i.i1594 = phi i64 [ %i.bkp, %.preheader.i.i.i.i1591 ], [ %i.bkv, %._crit_edge.i.i.loopexit.i.i1599 ]
  %i.bkw = add nuw nsw i64 %.lcssa.i.i.i.i1594, 16
  %i.bkx = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bkw, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bkx, ptr %i.bki, align 8, !tbaa !37
  store ptr %i.bkx, ptr %i.bkh, align 8, !tbaa !37
  store ptr null, ptr %i.bkx, align 8, !tbaa !37
  %i.bky = getelementptr i8, ptr %i.bkx, i64 8
  store i32 0, ptr %i.bky, align 8, !tbaa !7
  %i.bkz = getelementptr i8, ptr %i.bkx, i64 12
  store i32 %.0.lcssa.i.i.i.i1593, ptr %i.bkz, align 4, !tbaa !7
  br label %new_label_body.exit1600

common.ret274:                                    ; preds = %pm_lookup_local_index.exit, %bb.ei, %bb.ak, %bb.bq, %bb.ds, %bb.eq, %new_label_body.exit1600
  ret void

new_label_body.exit1600:                          ; preds = %new_label_body.exit1483, %._crit_edge.i.i.i.i1592
  %i.bla = phi i32 [ %i.bkk, %new_label_body.exit1483 ], [ 0, %._crit_edge.i.i.i.i1592 ] ; 2 uses
  %.022.i.i.i.i1590 = phi ptr [ %i.bki, %new_label_body.exit1483 ], [ %i.bkx, %._crit_edge.i.i.i.i1592 ] ; 2 uses
  %i.blb = getelementptr i8, ptr %.022.i.i.i.i1590, i64 16
  %i.blc = getelementptr i8, ptr %.022.i.i.i.i1590, i64 8
  %i.bld = zext i32 %i.bla to i64
  %i.ble = getelementptr i8, ptr %i.blb, i64 %i.bld ; 9 uses
  %i.blf = add i32 %i.bla, 48
  store i32 %i.blf, ptr %i.blc, align 8, !tbaa !7
  store i32 1, ptr %i.ble, align 8, !tbaa !193
  %i.blg = getelementptr i8, ptr %i.ble, i64 8
  store ptr null, ptr %i.blg, align 8, !tbaa !194
  %i.blh = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.bli = getelementptr i8, ptr %i.blh, i64 132  ; 2 uses
  %i.blj = load i32, ptr %i.bli, align 4, !tbaa !195 ; 2 uses
  %i.blk = add i32 %i.blj, 1
  store i32 %i.blk, ptr %i.bli, align 4, !tbaa !195
  %i.bll = getelementptr i8, ptr %i.ble, i64 24
  store i32 %i.blj, ptr %i.bll, align 8, !tbaa !94
  %i.blm = getelementptr i8, ptr %i.ble, i64 44   ; 2 uses
  %i.bln = load i8, ptr %i.blm, align 4
  %i.blo = and i8 %i.bln, -16
  store i8 %i.blo, ptr %i.blm, align 4
  %i.blp = getelementptr i8, ptr %i.ble, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.blp, align 4, !tbaa !7
  tail call fastcc void @pm_compile_pattern(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.bka, ptr noundef nonnull %3, ptr noundef nonnull %i.ble, ptr noundef nonnull %i.bjj, i1 noundef zeroext %6, i1 noundef zeroext %.tr1669.ph, i32 noundef %i.e)
  %i.blq = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.blr = getelementptr i8, ptr %i.ble, i64 16
  store ptr %i.blq, ptr %i.blr, align 8, !tbaa !34
  %i.bls = getelementptr i8, ptr %i.blq, i64 8
  store ptr %i.ble, ptr %i.bls, align 8, !tbaa !35
  store ptr %i.ble, ptr %i.d, align 8, !tbaa !11
  %i.blt = getelementptr i8, ptr %.tr1664, i64 32
  %i.blu = load ptr, ptr %i.blt, align 8, !tbaa !1388
  tail call fastcc void @pm_compile_pattern(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.blu, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.bjj, i1 noundef zeroext %6, i1 noundef zeroext false, i32 noundef %8)
  %i.blv = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %i.p, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.blw = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.blx = getelementptr i8, ptr %i.blv, i64 16
  store ptr %i.blw, ptr %i.blx, align 8, !tbaa !34
  %i.bly = getelementptr i8, ptr %i.blw, i64 8
  store ptr %i.blv, ptr %i.bly, align 8, !tbaa !35
  %i.blz = getelementptr i8, ptr %i.bjj, i64 16
  store ptr %i.blv, ptr %i.blz, align 8, !tbaa !34
  %i.bma = getelementptr i8, ptr %i.blv, i64 8
  store ptr %i.bjj, ptr %i.bma, align 8, !tbaa !35
  store ptr %i.bjj, ptr %i.d, align 8, !tbaa !11
  %i.bmb = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %i.p, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bmc = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.bmd = getelementptr i8, ptr %i.bmb, i64 16
  store ptr %i.bmc, ptr %i.bmd, align 8, !tbaa !34
  %i.bme = getelementptr i8, ptr %i.bmc, i64 8
  store ptr %i.bmb, ptr %i.bme, align 8, !tbaa !35
  store ptr %i.bmb, ptr %i.d, align 8, !tbaa !11
  %i.bmf = ptrtoint ptr %5 to i64
  %i.bmg = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %i.p, i32 noundef 72, i32 noundef 1, i64 noundef %i.bmf) ; 3 uses
  %i.bmh = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.bmi = getelementptr i8, ptr %i.bmg, i64 16
  store ptr %i.bmh, ptr %i.bmi, align 8, !tbaa !34
  %i.bmj = getelementptr i8, ptr %i.bmh, i64 8
  store ptr %i.bmg, ptr %i.bmj, align 8, !tbaa !35
  store ptr %i.bmg, ptr %i.d, align 8, !tbaa !11
  %i.bmk = getelementptr i8, ptr %5, i64 40       ; 2 uses
  %i.bml = load i32, ptr %i.bmk, align 8, !tbaa !273
  %i.bmm = add i32 %i.bml, 1
  store i32 %i.bmm, ptr %i.bmk, align 8, !tbaa !273
  br label %common.ret274

bb.dy:                                            ; preds = %tailrecurse
  %i.bmn = getelementptr i8, ptr %.tr1664, i64 24
  %i.bmo = load i32, ptr %i.bmn, align 8, !tbaa !1389 ; 2 uses
  %i.bmp = getelementptr i8, ptr %.tr1664, i64 28
  %i.bmq = load i32, ptr %i.bmp, align 4, !tbaa !1391 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.bmr = icmp sgt i32 %i.bmq, 0
  br i1 %i.bmr, label %.lr.ph.i1489.preheader, label %.preheader.i

.lr.ph.i1489.preheader:                           ; preds = %bb.dy
  %xtraiter = and i32 %i.bmq, 7                   ; 3 uses
  %i.bms = icmp ult i32 %i.bmq, 8
  br i1 %i.bms, label %.lr.ph.i1489.epil.preheader, label %.lr.ph.i1489.preheader.new

.lr.ph.i1489.preheader.new:                       ; preds = %.lr.ph.i1489.preheader
  %unroll_iter = and i32 %i.bmq, 2147483640
  br label %.lr.ph.i1489

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i1489
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i1489.epil.preheader

.lr.ph.i1489.epil.preheader:                      ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i1489.preheader
  %.0113.i.epil.init = phi ptr [ %1, %.lr.ph.i1489.preheader ], [ %i.bno, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod182 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod182)
  br label %.lr.ph.i1489.epil

.lr.ph.i1489.epil:                                ; preds = %.lr.ph.i1489.epil, %.lr.ph.i1489.epil.preheader
  %.0113.i.epil = phi ptr [ %i.bmu, %.lr.ph.i1489.epil ], [ %.0113.i.epil.init, %.lr.ph.i1489.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i1489.epil ], [ 0, %.lr.ph.i1489.epil.preheader ]
  %i.bmt = getelementptr i8, ptr %.0113.i.epil, i64 24
  %i.bmu = load ptr, ptr %i.bmt, align 8, !tbaa !497 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i1489.epil, !llvm.loop !1392

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i1489.epil, %bb.dy
  %.011.lcssa.i = phi ptr [ %1, %bb.dy ], [ %i.bno, %.preheader.i.loopexit.unr-lcssa ], [ %i.bmu, %.lr.ph.i1489.epil ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.dy ], [ %i.bmq, %.lr.ph.i1489.epil ], [ %i.bmq, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %i.bmv = zext i32 %i.bmo to i64                 ; 2 uses
  %i.bmw = getelementptr i8, ptr %.011.lcssa.i, i64 128
  %i.bmx = load ptr, ptr %i.bmw, align 8, !tbaa !536
  %i.bmy = call i32 @rb_st_lookup(ptr noundef %i.bmx, i64 noundef %i.bmv, ptr noundef nonnull %i.a) #37
  %.not6.i = icmp eq i32 %i.bmy, 0
  br i1 %.not6.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit

.lr.ph.i1489:                                     ; preds = %.lr.ph.i1489, %.lr.ph.i1489.preheader.new
  %.0113.i = phi ptr [ %1, %.lr.ph.i1489.preheader.new ], [ %i.bno, %.lr.ph.i1489 ]
  %niter = phi i32 [ 0, %.lr.ph.i1489.preheader.new ], [ %niter.next.7, %.lr.ph.i1489 ]
  %i.bmz = getelementptr i8, ptr %.0113.i, i64 24
  %i.bna = load ptr, ptr %i.bmz, align 8, !tbaa !497
  %i.bnb = getelementptr i8, ptr %i.bna, i64 24
  %i.bnc = load ptr, ptr %i.bnb, align 8, !tbaa !497
  %i.bnd = getelementptr i8, ptr %i.bnc, i64 24
  %i.bne = load ptr, ptr %i.bnd, align 8, !tbaa !497
  %i.bnf = getelementptr i8, ptr %i.bne, i64 24
  %i.bng = load ptr, ptr %i.bnf, align 8, !tbaa !497
  %i.bnh = getelementptr i8, ptr %i.bng, i64 24
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !497
  %i.bnj = getelementptr i8, ptr %i.bni, i64 24
  %i.bnk = load ptr, ptr %i.bnj, align 8, !tbaa !497
  %i.bnl = getelementptr i8, ptr %i.bnk, i64 24
  %i.bnm = load ptr, ptr %i.bnl, align 8, !tbaa !497
  %i.bnn = getelementptr i8, ptr %i.bnm, i64 24
  %i.bno = load ptr, ptr %i.bnn, align 8, !tbaa !497 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i1489, !llvm.loop !1258

.lr.ph9.i:                                        ; preds = %.preheader.i, %bb.dz
  %.18.i = phi i32 [ %i.bnr, %bb.dz ], [ %.0.lcssa.i, %.preheader.i ]
  %.1127.i = phi ptr [ %i.bnq, %bb.dz ], [ %.011.lcssa.i, %.preheader.i ]
  %i.bnp = getelementptr i8, ptr %.1127.i, i64 24
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !497 ; 4 uses
  %.not14.i = icmp eq ptr %i.bnq, null
  br i1 %.not14.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph9.i
  %i.bnr = add i32 %.18.i, 1                      ; 2 uses
  %i.bns = getelementptr i8, ptr %i.bnq, i64 128
  %i.bnt = load ptr, ptr %i.bns, align 8, !tbaa !536
  %i.bnu = call i32 @rb_st_lookup(ptr noundef %i.bnt, i64 noundef %i.bmv, ptr noundef nonnull %i.a) #37
  %.not.i1488 = icmp eq i32 %i.bnu, 0
  br i1 %.not.i1488, label %.lr.ph9.i, label %pm_lookup_local_index.exit, !llvm.loop !1249

bb.ea:                                            ; preds = %.lr.ph9.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.262, i32 noundef %i.bmo) #38
  unreachable

pm_lookup_local_index.exit:                       ; preds = %bb.dz, %.preheader.i
  %.112.lcssa.i = phi ptr [ %.011.lcssa.i, %.preheader.i ], [ %i.bnq, %bb.dz ]
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.bnr, %bb.dz ]
  %i.bnv = getelementptr i8, ptr %.112.lcssa.i, i64 112
  %i.bnw = load i32, ptr %i.bnv, align 8, !tbaa !676
  %i.bnx = load i64, ptr %i.a, align 8, !tbaa !36
  %i.bny = trunc i64 %i.bnx to i32
  %i.bnz = sub i32 %i.bnw, %i.bny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call fastcc void @pm_iseq_add_setlocal(ptr noundef %0, ptr noundef %3, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.bnz, i32 noundef %.1.lcssa.i)
  %i.boa = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.p, i32 noundef 72, i32 noundef 1, i64 noundef %i.f) ; 3 uses
  %i.bob = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.boc = getelementptr i8, ptr %i.boa, i64 16
  store ptr %i.bob, ptr %i.boc, align 8, !tbaa !34
  %i.bod = getelementptr i8, ptr %i.bob, i64 8
  store ptr %i.boa, ptr %i.bod, align 8, !tbaa !35
  store ptr %i.boa, ptr %i.d, align 8, !tbaa !11
  %i.boe = load i32, ptr %i.g, align 8, !tbaa !273
  %i.bof = add i32 %i.boe, 1
  store i32 %i.bof, ptr %i.g, align 8, !tbaa !273
  br label %common.ret274

bb.eb:                                            ; preds = %tailrecurse
  %.val13.i1490 = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.bog = getelementptr i8, ptr %.val13.i1490, i64 96 ; 2 uses
  %i.boh = load ptr, ptr %i.bog, align 8, !tbaa !37 ; 4 uses
  %i.boi = getelementptr i8, ptr %i.boh, i64 8
  %i.boj = load i32, ptr %i.boi, align 8, !tbaa !7 ; 2 uses
  %i.bok = zext i32 %i.boj to i64
  %i.bol = add nuw nsw i64 %i.bok, 48
  %i.bom = getelementptr i8, ptr %i.boh, i64 12
  %i.bon = load i32, ptr %i.bom, align 4, !tbaa !7 ; 4 uses
  %i.boo = zext i32 %i.bon to i64                 ; 2 uses
  %i.bop = icmp samesign ugt i64 %i.bol, %i.boo
  br i1 %i.bop, label %.preheader.i.i.i.i1493, label %new_label_body.exit1502

.preheader.i.i.i.i1493:                           ; preds = %bb.eb
  %i.boq = icmp ult i32 %i.bon, 48
  br i1 %i.boq, label %.lr.ph.i.i.i.i1499, label %._crit_edge.i.i.i.i1494

.lr.ph.i.i.i.i1499:                               ; preds = %.preheader.i.i.i.i1493, %bb.ed
  %.027.i.i.i.i1500 = phi i32 [ %i.bos, %bb.ed ], [ %i.bon, %.preheader.i.i.i.i1493 ] ; 3 uses
  %i.bor = icmp samesign ugt i32 %.027.i.i.i.i1500, 1073741822
  br i1 %i.bor, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %.lr.ph.i.i.i.i1499
  tail call void @rb_memerror() #38
  unreachable

bb.ed:                                            ; preds = %.lr.ph.i.i.i.i1499
  %i.bos = shl nuw nsw i32 %.027.i.i.i.i1500, 1   ; 3 uses
  %i.bot = icmp samesign ult i32 %.027.i.i.i.i1500, 24
  br i1 %i.bot, label %.lr.ph.i.i.i.i1499, label %._crit_edge.i.i.loopexit.i.i1501, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i1501:                 ; preds = %bb.ed
  %i.bou = zext nneg i32 %i.bos to i64
  br label %._crit_edge.i.i.i.i1494

._crit_edge.i.i.i.i1494:                          ; preds = %._crit_edge.i.i.loopexit.i.i1501, %.preheader.i.i.i.i1493
  %.0.lcssa.i.i.i.i1495 = phi i32 [ %i.bon, %.preheader.i.i.i.i1493 ], [ %i.bos, %._crit_edge.i.i.loopexit.i.i1501 ]
  %.lcssa.i.i.i.i1496 = phi i64 [ %i.boo, %.preheader.i.i.i.i1493 ], [ %i.bou, %._crit_edge.i.i.loopexit.i.i1501 ]
  %i.bov = add nuw nsw i64 %.lcssa.i.i.i.i1496, 16
  %i.bow = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bov, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bow, ptr %i.boh, align 8, !tbaa !37
  store ptr %i.bow, ptr %i.bog, align 8, !tbaa !37
  store ptr null, ptr %i.bow, align 8, !tbaa !37
  %i.box = getelementptr i8, ptr %i.bow, i64 8
  store i32 0, ptr %i.box, align 8, !tbaa !7
  %i.boy = getelementptr i8, ptr %i.bow, i64 12
  store i32 %.0.lcssa.i.i.i.i1495, ptr %i.boy, align 4, !tbaa !7
  br label %new_label_body.exit1502

new_label_body.exit1502:                          ; preds = %bb.eb, %._crit_edge.i.i.i.i1494
  %i.boz = phi i32 [ %i.boj, %bb.eb ], [ 0, %._crit_edge.i.i.i.i1494 ] ; 2 uses
  %.022.i.i.i.i1492 = phi ptr [ %i.boh, %bb.eb ], [ %i.bow, %._crit_edge.i.i.i.i1494 ] ; 2 uses
  %i.bpa = getelementptr i8, ptr %.022.i.i.i.i1492, i64 16
  %i.bpb = getelementptr i8, ptr %.022.i.i.i.i1492, i64 8
  %i.bpc = zext i32 %i.boz to i64
  %i.bpd = getelementptr i8, ptr %i.bpa, i64 %i.bpc ; 9 uses
  %i.bpe = add i32 %i.boz, 48
  store i32 %i.bpe, ptr %i.bpb, align 8, !tbaa !7
  store i32 1, ptr %i.bpd, align 8, !tbaa !193
  %i.bpf = getelementptr i8, ptr %i.bpd, i64 8
  store ptr null, ptr %i.bpf, align 8, !tbaa !194
  %i.bpg = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.bph = getelementptr i8, ptr %i.bpg, i64 132  ; 2 uses
  %i.bpi = load i32, ptr %i.bph, align 4, !tbaa !195 ; 2 uses
  %i.bpj = add i32 %i.bpi, 1
  store i32 %i.bpj, ptr %i.bph, align 4, !tbaa !195
  %i.bpk = getelementptr i8, ptr %i.bpd, i64 24
  store i32 %i.bpi, ptr %i.bpk, align 8, !tbaa !94
  %i.bpl = getelementptr i8, ptr %i.bpd, i64 44   ; 2 uses
  %i.bpm = load i8, ptr %i.bpl, align 4
  %i.bpn = and i8 %i.bpm, -16
  store i8 %i.bpn, ptr %i.bpl, align 4
  %i.bpo = getelementptr i8, ptr %i.bpd, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.bpo, align 4, !tbaa !7
  %.val13.i1503 = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.bpp = getelementptr i8, ptr %.val13.i1503, i64 96 ; 2 uses
  %i.bpq = load ptr, ptr %i.bpp, align 8, !tbaa !37 ; 4 uses
  %i.bpr = getelementptr i8, ptr %i.bpq, i64 8
  %i.bps = load i32, ptr %i.bpr, align 8, !tbaa !7 ; 2 uses
  %i.bpt = zext i32 %i.bps to i64
  %i.bpu = add nuw nsw i64 %i.bpt, 48
  %i.bpv = getelementptr i8, ptr %i.bpq, i64 12
  %i.bpw = load i32, ptr %i.bpv, align 4, !tbaa !7 ; 4 uses
  %i.bpx = zext i32 %i.bpw to i64                 ; 2 uses
  %i.bpy = icmp samesign ugt i64 %i.bpu, %i.bpx
  br i1 %i.bpy, label %.preheader.i.i.i.i1506, label %new_label_body.exit1515

.preheader.i.i.i.i1506:                           ; preds = %new_label_body.exit1502
  %i.bpz = icmp ult i32 %i.bpw, 48
  br i1 %i.bpz, label %.lr.ph.i.i.i.i1512, label %._crit_edge.i.i.i.i1507

.lr.ph.i.i.i.i1512:                               ; preds = %.preheader.i.i.i.i1506, %bb.ef
  %.027.i.i.i.i1513 = phi i32 [ %i.bqb, %bb.ef ], [ %i.bpw, %.preheader.i.i.i.i1506 ] ; 3 uses
  %i.bqa = icmp samesign ugt i32 %.027.i.i.i.i1513, 1073741822
  br i1 %i.bqa, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.lr.ph.i.i.i.i1512
  tail call void @rb_memerror() #38
  unreachable

bb.ef:                                            ; preds = %.lr.ph.i.i.i.i1512
  %i.bqb = shl nuw nsw i32 %.027.i.i.i.i1513, 1   ; 3 uses
  %i.bqc = icmp samesign ult i32 %.027.i.i.i.i1513, 24
  br i1 %i.bqc, label %.lr.ph.i.i.i.i1512, label %._crit_edge.i.i.loopexit.i.i1514, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i1514:                 ; preds = %bb.ef
  %i.bqd = zext nneg i32 %i.bqb to i64
  br label %._crit_edge.i.i.i.i1507

._crit_edge.i.i.i.i1507:                          ; preds = %._crit_edge.i.i.loopexit.i.i1514, %.preheader.i.i.i.i1506
  %.0.lcssa.i.i.i.i1508 = phi i32 [ %i.bpw, %.preheader.i.i.i.i1506 ], [ %i.bqb, %._crit_edge.i.i.loopexit.i.i1514 ]
  %.lcssa.i.i.i.i1509 = phi i64 [ %i.bpx, %.preheader.i.i.i.i1506 ], [ %i.bqd, %._crit_edge.i.i.loopexit.i.i1514 ]
  %i.bqe = add nuw nsw i64 %.lcssa.i.i.i.i1509, 16
  %i.bqf = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bqe, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bqf, ptr %i.bpq, align 8, !tbaa !37
  store ptr %i.bqf, ptr %i.bpp, align 8, !tbaa !37
  store ptr null, ptr %i.bqf, align 8, !tbaa !37
  %i.bqg = getelementptr i8, ptr %i.bqf, i64 8
  store i32 0, ptr %i.bqg, align 8, !tbaa !7
  %i.bqh = getelementptr i8, ptr %i.bqf, i64 12
  store i32 %.0.lcssa.i.i.i.i1508, ptr %i.bqh, align 4, !tbaa !7
  br label %new_label_body.exit1515

new_label_body.exit1515:                          ; preds = %new_label_body.exit1502, %._crit_edge.i.i.i.i1507
  %i.bqi = phi i32 [ %i.bps, %new_label_body.exit1502 ], [ 0, %._crit_edge.i.i.i.i1507 ] ; 2 uses
  %.022.i.i.i.i1505 = phi ptr [ %i.bpq, %new_label_body.exit1502 ], [ %i.bqf, %._crit_edge.i.i.i.i1507 ] ; 2 uses
  %i.bqj = getelementptr i8, ptr %.022.i.i.i.i1505, i64 16
  %i.bqk = getelementptr i8, ptr %.022.i.i.i.i1505, i64 8
  %i.bql = zext i32 %i.bqi to i64
  %i.bqm = getelementptr i8, ptr %i.bqj, i64 %i.bql ; 9 uses
  %i.bqn = add i32 %i.bqi, 48
  store i32 %i.bqn, ptr %i.bqk, align 8, !tbaa !7
  store i32 1, ptr %i.bqm, align 8, !tbaa !193
  %i.bqo = getelementptr i8, ptr %i.bqm, i64 8
  store ptr null, ptr %i.bqo, align 8, !tbaa !194
  %i.bqp = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.bqq = getelementptr i8, ptr %i.bqp, i64 132  ; 2 uses
  %i.bqr = load i32, ptr %i.bqq, align 4, !tbaa !195 ; 2 uses
  %i.bqs = add i32 %i.bqr, 1
  store i32 %i.bqs, ptr %i.bqq, align 4, !tbaa !195
  %i.bqt = getelementptr i8, ptr %i.bqm, i64 24
  store i32 %i.bqr, ptr %i.bqt, align 8, !tbaa !94
  %i.bqu = getelementptr i8, ptr %i.bqm, i64 44   ; 2 uses
  %i.bqv = load i8, ptr %i.bqu, align 4
  %i.bqw = and i8 %i.bqv, -16
  store i8 %i.bqw, ptr %i.bqu, align 4
  %i.bqx = getelementptr i8, ptr %i.bqm, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.bqx, align 4, !tbaa !7
  %i.bqy = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %i.p, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bqz = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.bra = getelementptr i8, ptr %i.bqy, i64 16
  store ptr %i.bqz, ptr %i.bra, align 8, !tbaa !34
  %i.brb = getelementptr i8, ptr %i.bqz, i64 8
  store ptr %i.bqy, ptr %i.brb, align 8, !tbaa !35
end_hunk_4
begin_hunk_5_@pm_compile_match_write_node:bb.a
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.ae = getelementptr i8, ptr %i.ad, i64 132    ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !195 ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !195
  %i.ah = getelementptr i8, ptr %i.aa, i64 24
  store i32 %i.af, ptr %i.ah, align 8, !tbaa !94
  %i.ai = getelementptr i8, ptr %i.aa, i64 40     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.aa, i64 44     ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = and i8 %i.ak, -16
  store i8 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr i8, ptr %i.aa, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.am, align 4, !tbaa !7
  %.val13.i113 = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.an = getelementptr i8, ptr %.val13.i113, i64 96 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37 ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !7  ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 48
  %i.at = getelementptr i8, ptr %i.ao, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7  ; 4 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = icmp samesign ugt i64 %i.as, %i.av
  br i1 %i.aw, label %.preheader.i.i.i.i116, label %new_label_body.exit125

.preheader.i.i.i.i116:                            ; preds = %new_label_body.exit
  %i.ax = icmp ult i32 %i.au, 48
  br i1 %i.ax, label %.lr.ph.i.i.i.i122, label %._crit_edge.i.i.i.i117

.lr.ph.i.i.i.i122:                                ; preds = %.preheader.i.i.i.i116, %bb.e
  %.027.i.i.i.i123 = phi i32 [ %i.az, %bb.e ], [ %i.au, %.preheader.i.i.i.i116 ] ; 3 uses
  %i.ay = icmp samesign ugt i32 %.027.i.i.i.i123, 1073741822
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i122
  tail call void @rb_memerror() #38
  unreachable

bb.e:                                             ; preds = %.lr.ph.i.i.i.i122
  %i.az = shl nuw nsw i32 %.027.i.i.i.i123, 1     ; 3 uses
  %i.ba = icmp samesign ult i32 %.027.i.i.i.i123, 24
  br i1 %i.ba, label %.lr.ph.i.i.i.i122, label %._crit_edge.i.i.loopexit.i.i124, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i124:                  ; preds = %bb.e
  %i.bb = zext nneg i32 %i.az to i64
  br label %._crit_edge.i.i.i.i117

._crit_edge.i.i.i.i117:                           ; preds = %._crit_edge.i.i.loopexit.i.i124, %.preheader.i.i.i.i116
  %.0.lcssa.i.i.i.i118 = phi i32 [ %i.au, %.preheader.i.i.i.i116 ], [ %i.az, %._crit_edge.i.i.loopexit.i.i124 ]
  %.lcssa.i.i.i.i119 = phi i64 [ %i.av, %.preheader.i.i.i.i116 ], [ %i.bb, %._crit_edge.i.i.loopexit.i.i124 ]
  %i.bc = add nuw nsw i64 %.lcssa.i.i.i.i119, 16
  %i.bd = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bc, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bd, ptr %i.ao, align 8, !tbaa !37
  store ptr %i.bd, ptr %i.an, align 8, !tbaa !37
  store ptr null, ptr %i.bd, align 8, !tbaa !37
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  store i32 0, ptr %i.be, align 8, !tbaa !7
  %i.bf = getelementptr i8, ptr %i.bd, i64 12
  store i32 %.0.lcssa.i.i.i.i118, ptr %i.bf, align 4, !tbaa !7
  br label %new_label_body.exit125

new_label_body.exit125:                           ; preds = %new_label_body.exit, %._crit_edge.i.i.i.i117
  %i.bg = phi i32 [ %i.aq, %new_label_body.exit ], [ 0, %._crit_edge.i.i.i.i117 ] ; 2 uses
  %.022.i.i.i.i115 = phi ptr [ %i.ao, %new_label_body.exit ], [ %i.bd, %._crit_edge.i.i.i.i117 ] ; 2 uses
  %i.bh = getelementptr i8, ptr %.022.i.i.i.i115, i64 16
  %i.bi = getelementptr i8, ptr %.022.i.i.i.i115, i64 8
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr i8, ptr %i.bh, i64 %i.bj  ; 10 uses
  %i.bl = add i32 %i.bg, 48
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !7
  store i32 1, ptr %i.bk, align 8, !tbaa !193
  %i.bm = getelementptr i8, ptr %i.bk, i64 8
  store ptr null, ptr %i.bm, align 8, !tbaa !194
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.bo = getelementptr i8, ptr %i.bn, i64 132    ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !195 ; 2 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !195
  %i.br = getelementptr i8, ptr %i.bk, i64 24
  store i32 %i.bp, ptr %i.br, align 8, !tbaa !94
  %i.bs = getelementptr i8, ptr %i.bk, i64 40     ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bk, i64 44     ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 4
  %i.bv = and i8 %i.bu, -16
  store i8 %i.bv, ptr %i.bt, align 4
  %i.bw = getelementptr i8, ptr %i.bk, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.bw, align 4, !tbaa !7
  %i.bx = getelementptr i8, ptr %1, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1403
  tail call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef %i.by, ptr noundef %3, i1 noundef zeroext false, ptr noundef %5)
  %i.bz = tail call i64 @rb_id2sym(i64 noundef 3975) #37
  %i.ca = load i32, ptr %2, align 4, !tbaa !553
  %i.cb = getelementptr i8, ptr %2, i64 4         ; 16 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.cd = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ca, i32 noundef %i.cc, i32 noundef 15, i32 noundef 1, i64 noundef %i.bz) ; 3 uses
  %i.ce = getelementptr i8, ptr %3, i64 24        ; 24 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cd, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !34
  %i.ch = getelementptr i8, ptr %i.cf, i64 8
  store ptr %i.cd, ptr %i.ch, align 8, !tbaa !35
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !11
  %i.ci = load i32, ptr %2, align 4, !tbaa !553
  %i.cj = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.ck = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ck, i64 16
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !34
  %i.cn = getelementptr i8, ptr %i.cl, i64 8
  store ptr %i.ck, ptr %i.cn, align 8, !tbaa !35
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !11
  %i.co = load i32, ptr %2, align 4, !tbaa !553
  %i.cp = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.cq = ptrtoint ptr %i.aa to i64
  %i.cr = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef 74, i32 noundef 1, i64 noundef %i.cq) ; 3 uses
  %i.cs = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !34
  %i.cu = getelementptr i8, ptr %i.cs, i64 8
  store ptr %i.cr, ptr %i.cu, align 8, !tbaa !35
  store ptr %i.cr, ptr %i.ce, align 8, !tbaa !11
  %i.cv = load i32, ptr %i.ai, align 8, !tbaa !273
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.ai, align 8, !tbaa !273
  %i.cx = getelementptr i8, ptr %1, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !1406 ; 4 uses
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.f, label %bb.l

bb.f:                                             ; preds = %new_label_body.exit125
  %i.da = getelementptr i8, ptr %1, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1407
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !511 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 24     ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !1389 ; 2 uses
  %i.df = getelementptr i8, ptr %i.dc, i64 28
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !1391 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.f
  %xtraiter232 = and i32 %i.dg, 7                 ; 3 uses
  %i.di = icmp ult i32 %i.dg, 8
  br i1 %i.di, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter237 = and i32 %i.dg, 2147483640
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod234.not = icmp eq i32 %xtraiter232, 0
  br i1 %lcmp.mod234.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.0113.i.epil.init = phi ptr [ %5, %.lr.ph.i.preheader ], [ %i.ee, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod236 = icmp ne i32 %xtraiter232, 0
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0113.i.epil = phi ptr [ %i.dk, %.lr.ph.i.epil ], [ %.0113.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter233 = phi i32 [ %epil.iter233.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.dj = getelementptr i8, ptr %.0113.i.epil, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !497 ; 2 uses
  %epil.iter233.next = add i32 %epil.iter233, 1   ; 2 uses
  %epil.iter233.cmp.not = icmp eq i32 %epil.iter233.next, %xtraiter232
  br i1 %epil.iter233.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !1408

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.f
  %.011.lcssa.i = phi ptr [ %5, %bb.f ], [ %i.ee, %.preheader.i.loopexit.unr-lcssa ], [ %i.dk, %.lr.ph.i.epil ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.dg, %.lr.ph.i.epil ], [ %i.dg, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %i.dl = zext i32 %i.de to i64                   ; 2 uses
  %i.dm = getelementptr i8, ptr %.011.lcssa.i, i64 128
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !536
  %i.do = call i32 @rb_st_lookup(ptr noundef %i.dn, i64 noundef %i.dl, ptr noundef nonnull %i.b) #37
  %.not6.i = icmp eq i32 %i.do, 0
  br i1 %.not6.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0113.i = phi ptr [ %5, %.lr.ph.i.preheader.new ], [ %i.ee, %.lr.ph.i ]
  %niter238 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter238.next.7, %.lr.ph.i ]
  %i.dp = getelementptr i8, ptr %.0113.i, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !497
  %i.dr = getelementptr i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !497
  %i.dt = getelementptr i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !497
  %i.dv = getelementptr i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !497
  %i.dx = getelementptr i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !497
  %i.dz = getelementptr i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !497
  %i.eb = getelementptr i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !497
  %i.ed = getelementptr i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !497 ; 3 uses
  %niter238.next.7 = add i32 %niter238, 8         ; 2 uses
  %niter238.ncmp.7 = icmp eq i32 %niter238.next.7, %unroll_iter237
  br i1 %niter238.ncmp.7, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1258

.lr.ph9.i:                                        ; preds = %.preheader.i, %bb.g
  %.18.i = phi i32 [ %i.eh, %bb.g ], [ %.0.lcssa.i, %.preheader.i ]
  %.1127.i = phi ptr [ %i.eg, %bb.g ], [ %.011.lcssa.i, %.preheader.i ]
  %i.ef = getelementptr i8, ptr %.1127.i, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !497 ; 4 uses
  %.not14.i = icmp eq ptr %i.eg, null
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph9.i
  %i.eh = add i32 %.18.i, 1                       ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eg, i64 128
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !536
  %i.ek = call i32 @rb_st_lookup(ptr noundef %i.ej, i64 noundef %i.dl, ptr noundef nonnull %i.b) #37
  %.not.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit, !llvm.loop !1249

bb.h:                                             ; preds = %.lr.ph9.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.262, i32 noundef %i.de) #38
  unreachable

pm_lookup_local_index.exit:                       ; preds = %bb.g, %.preheader.i
  %.112.lcssa.i = phi ptr [ %.011.lcssa.i, %.preheader.i ], [ %i.eg, %bb.g ]
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.eh, %bb.g ]
  %i.el = getelementptr i8, ptr %.112.lcssa.i, i64 112
  %i.em = load i32, ptr %i.el, align 8, !tbaa !676
  %i.en = load i64, ptr %i.b, align 8, !tbaa !36
  %i.eo = trunc i64 %i.en to i32
  %i.ep = sub i32 %i.em, %i.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.eq = load i32, ptr %i.dd, align 8, !tbaa !1389 ; 4 uses
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.j, label %bb.i

bb.i:                                             ; preds = %pm_lookup_local_index.exit
  %i.es = getelementptr i8, ptr %5, i64 80
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !538
  %i.eu = getelementptr i8, ptr %i.et, i64 592
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !793
  %i.ew = icmp ugt i32 %i.eq, %i.ev
  br i1 %i.ew, label %bb.j, label %pm_constant_id_lookup.exit

bb.j:                                             ; preds = %bb.i, %pm_lookup_local_index.exit
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.eq) #38
  unreachable

pm_constant_id_lookup.exit:                       ; preds = %bb.i
  %i.ex = getelementptr i8, ptr %5, i64 120
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !499
  %i.ez = add i32 %i.eq, -1
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr [8 x i8], ptr %i.ey, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !36
  %i.fd = call i64 @rb_id2sym(i64 noundef %i.fc) #37
  %i.fe = load i32, ptr %2, align 4, !tbaa !553
  %i.ff = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.fg = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.fe, i32 noundef %i.ff, i32 noundef 19, i32 noundef 1, i64 noundef %i.fd) ; 3 uses
  %i.fh = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fg, i64 16
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !34
  %i.fj = getelementptr i8, ptr %i.fh, i64 8
  store ptr %i.fg, ptr %i.fj, align 8, !tbaa !35
  store ptr %i.fg, ptr %i.ce, align 8, !tbaa !11
  %i.fk = load i32, ptr %2, align 4, !tbaa !553
  %i.fl = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.fm = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.fk, i32 noundef %i.fl, i64 noundef 145, i64 noundef 3, ptr noundef null, i64 noundef 1, ptr noundef null) ; 4 uses
  %i.fn = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fm, i64 16
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !34
  %i.fp = getelementptr i8, ptr %i.fn, i64 8
  store ptr %i.fm, ptr %i.fp, align 8, !tbaa !35
  %i.fq = getelementptr i8, ptr %i.aa, i64 16
  store ptr %i.fm, ptr %i.fq, align 8, !tbaa !34
  %i.fr = getelementptr i8, ptr %i.fm, i64 8
  store ptr %i.aa, ptr %i.fr, align 8, !tbaa !35
  store ptr %i.aa, ptr %i.ce, align 8, !tbaa !11
  %i.fs = load i32, ptr %2, align 4, !tbaa !553
  %i.ft = load i32, ptr %i.cb, align 4, !tbaa !556
  call fastcc void @pm_iseq_add_setlocal(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.ep, i32 noundef %.1.lcssa.i)
  br i1 %4, label %bb.k, label %bb.w

bb.k:                                             ; preds = %pm_constant_id_lookup.exit
  %i.fu = load i32, ptr %2, align 4, !tbaa !553
  %i.fv = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.fw = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fu, i32 noundef %i.fv, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.fx = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fw, i64 16
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !34
  %i.fz = getelementptr i8, ptr %i.fx, i64 8
  store ptr %i.fw, ptr %i.fz, align 8, !tbaa !35
  store ptr %i.fw, ptr %i.ce, align 8, !tbaa !11
  br label %bb.w

bb.l:                                             ; preds = %new_label_body.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %6, ptr %i.ga, align 8, !tbaa !11
  %.not = icmp eq i64 %i.cy, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.gb = getelementptr i8, ptr %1, i64 48
  %i.gc = add i64 %i.cy, -1
  %i.gd = getelementptr i8, ptr %5, i64 80
  %i.ge = getelementptr i8, ptr %5, i64 120
  br label %bb.n

._crit_edge:                                      ; preds = %pm_constant_id_lookup.exit147, %bb.l
  %i.gf = load i32, ptr %2, align 4, !tbaa !553
  %i.gg = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.gh = ptrtoint ptr %i.bk to i64
  %i.gi = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.gf, i32 noundef %i.gg, i32 noundef 72, i32 noundef 1, i64 noundef %i.gh) ; 4 uses
  %i.gj = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gi, i64 16
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !34
  %i.gl = getelementptr i8, ptr %i.gj, i64 8
  store ptr %i.gi, ptr %i.gl, align 8, !tbaa !35
  %i.gm = load i32, ptr %i.bs, align 8, !tbaa !273
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr %i.bs, align 8, !tbaa !273
  %i.go = getelementptr i8, ptr %i.aa, i64 16
  store ptr %i.gi, ptr %i.go, align 8, !tbaa !34
  %i.gp = getelementptr i8, ptr %i.gi, i64 8
  store ptr %i.aa, ptr %i.gp, align 8, !tbaa !35
  store ptr %i.aa, ptr %i.ce, align 8, !tbaa !11
  %i.gq = load i32, ptr %2, align 4, !tbaa !553
  %i.gr = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.gs = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.gq, i32 noundef %i.gr, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 5 uses
  %i.gt = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gs, i64 16
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !34
  %i.gv = getelementptr i8, ptr %i.gt, i64 8
  store ptr %i.gs, ptr %i.gv, align 8, !tbaa !35
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !62 ; 2 uses
  %.not.i126 = icmp eq ptr %i.gx, null
  br i1 %.not.i126, label %APPEND_LIST.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.gy = getelementptr i8, ptr %i.gs, i64 8
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !35
  %i.gz = load ptr, ptr %i.gw, align 8, !tbaa !62
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  store ptr %i.gs, ptr %i.ha, align 8, !tbaa !34
  %i.hb = load ptr, ptr %i.ga, align 8, !tbaa !11
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %._crit_edge, %bb.m
  %i.hc = phi ptr [ %i.gs, %._crit_edge ], [ %i.hb, %bb.m ] ; 2 uses
  %i.hd = getelementptr i8, ptr %i.bk, i64 16
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !34
  %i.he = getelementptr i8, ptr %i.hc, i64 8
  store ptr %i.bk, ptr %i.he, align 8, !tbaa !35
  store ptr %i.bk, ptr %i.ce, align 8, !tbaa !11
  br i1 %4, label %bb.u, label %bb.v

bb.n:                                             ; preds = %.lr.ph, %pm_constant_id_lookup.exit147
  %.0164 = phi i64 [ 0, %.lr.ph ], [ %i.kk, %pm_constant_id_lookup.exit147 ] ; 3 uses
  %i.hf = load ptr, ptr %i.gb, align 8, !tbaa !1407
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %.0164
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !511 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 24     ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !1389 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hh, i64 28
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !1391 ; 6 uses
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
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !497 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i127, label %.lr.ph.i142.epil, !llvm.loop !1409

.preheader.i127:                                  ; preds = %.preheader.i127.loopexit.unr-lcssa, %.lr.ph.i142.epil, %bb.n
  %.011.lcssa.i128 = phi ptr [ %5, %bb.n ], [ %i.ij, %.preheader.i127.loopexit.unr-lcssa ], [ %i.hp, %.lr.ph.i142.epil ] ; 3 uses
  %.0.lcssa.i129 = phi i32 [ 0, %bb.n ], [ %i.hl, %.lr.ph.i142.epil ], [ %i.hl, %.preheader.i127.loopexit.unr-lcssa ] ; 2 uses
  %i.hq = zext i32 %i.hj to i64                   ; 2 uses
  %i.hr = getelementptr i8, ptr %.011.lcssa.i128, i64 128
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !536
  %i.ht = call i32 @rb_st_lookup(ptr noundef %i.hs, i64 noundef %i.hq, ptr noundef nonnull %i.a) #37
  %.not6.i130 = icmp eq i32 %i.ht, 0
  br i1 %.not6.i130, label %.lr.ph9.i137, label %pm_lookup_local_index.exit146

.lr.ph.i142:                                      ; preds = %.lr.ph.i142, %.lr.ph.i142.preheader.new
  %.0113.i144 = phi ptr [ %5, %.lr.ph.i142.preheader.new ], [ %i.ij, %.lr.ph.i142 ]
  %niter = phi i32 [ 0, %.lr.ph.i142.preheader.new ], [ %niter.next.7, %.lr.ph.i142 ]
  %i.hu = getelementptr i8, ptr %.0113.i144, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !497
  %i.hw = getelementptr i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !497
  %i.hy = getelementptr i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !497
  %i.ia = getelementptr i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !497
  %i.ic = getelementptr i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !497
  %i.ie = getelementptr i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !497
  %i.ig = getelementptr i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !497
  %i.ii = getelementptr i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !497 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i127.loopexit.unr-lcssa, label %.lr.ph.i142, !llvm.loop !1258

.lr.ph9.i137:                                     ; preds = %.preheader.i127, %bb.o
  %.18.i138 = phi i32 [ %i.im, %bb.o ], [ %.0.lcssa.i129, %.preheader.i127 ]
  %.1127.i139 = phi ptr [ %i.il, %bb.o ], [ %.011.lcssa.i128, %.preheader.i127 ]
  %i.ik = getelementptr i8, ptr %.1127.i139, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !497 ; 4 uses
  %.not14.i140 = icmp eq ptr %i.il, null
  br i1 %.not14.i140, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph9.i137
  %i.im = add i32 %.18.i138, 1                    ; 2 uses
  %i.in = getelementptr i8, ptr %i.il, i64 128
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !536
  %i.ip = call i32 @rb_st_lookup(ptr noundef %i.io, i64 noundef %i.hq, ptr noundef nonnull %i.a) #37
  %.not.i141 = icmp eq i32 %i.ip, 0
  br i1 %.not.i141, label %.lr.ph9.i137, label %pm_lookup_local_index.exit146, !llvm.loop !1249

bb.p:                                             ; preds = %.lr.ph9.i137
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.262, i32 noundef %i.hj) #38
  unreachable

pm_lookup_local_index.exit146:                    ; preds = %bb.o, %.preheader.i127
  %.112.lcssa.i131 = phi ptr [ %.011.lcssa.i128, %.preheader.i127 ], [ %i.il, %bb.o ]
  %.1.lcssa.i132 = phi i32 [ %.0.lcssa.i129, %.preheader.i127 ], [ %i.im, %bb.o ] ; 2 uses
  %i.iq = getelementptr i8, ptr %.112.lcssa.i131, i64 112
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !676
  %i.is = load i64, ptr %i.a, align 8, !tbaa !36
  %i.it = trunc i64 %i.is to i32
  %i.iu = sub i32 %i.ir, %i.it                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.iv = icmp ult i64 %.0164, %i.gc
  br i1 %i.iv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %pm_lookup_local_index.exit146
  %i.iw = load i32, ptr %2, align 4, !tbaa !553
  %i.ix = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.iy = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.iw, i32 noundef %i.ix, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.iz = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iy, i64 16
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !34
  %i.jb = getelementptr i8, ptr %i.iz, i64 8
  store ptr %i.iy, ptr %i.jb, align 8, !tbaa !35
  store ptr %i.iy, ptr %i.ce, align 8, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %pm_lookup_local_index.exit146
  %i.jc = load i32, ptr %i.hi, align 8, !tbaa !1389 ; 4 uses
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.je = load ptr, ptr %i.gd, align 8, !tbaa !538
  %i.jf = getelementptr i8, ptr %i.je, i64 592
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !793
  %i.jh = icmp ugt i32 %i.jc, %i.jg
  br i1 %i.jh, label %bb.t, label %pm_constant_id_lookup.exit147

bb.t:                                             ; preds = %bb.s, %bb.r
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.jc) #38
  unreachable

pm_constant_id_lookup.exit147:                    ; preds = %bb.s
  %i.ji = load ptr, ptr %i.ge, align 8, !tbaa !499
  %i.jj = add i32 %i.jc, -1
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr [8 x i8], ptr %i.ji, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !36
  %i.jn = call i64 @rb_id2sym(i64 noundef %i.jm) #37
  %i.jo = load i32, ptr %2, align 4, !tbaa !553
  %i.jp = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.jq = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.jo, i32 noundef %i.jp, i32 noundef 19, i32 noundef 1, i64 noundef %i.jn) ; 3 uses
  %i.jr = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.js = getelementptr i8, ptr %i.jq, i64 16
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !34
  %i.jt = getelementptr i8, ptr %i.jr, i64 8
  store ptr %i.jq, ptr %i.jt, align 8, !tbaa !35
  store ptr %i.jq, ptr %i.ce, align 8, !tbaa !11
  %i.ju = load i32, ptr %2, align 4, !tbaa !553
  %i.jv = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.jw = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.ju, i32 noundef %i.jv, i64 noundef 145, i64 noundef 3, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.jx = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jw, i64 16
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !34
  %i.jz = getelementptr i8, ptr %i.jx, i64 8
  store ptr %i.jw, ptr %i.jz, align 8, !tbaa !35
  store ptr %i.jw, ptr %i.ce, align 8, !tbaa !11
  %i.ka = load i32, ptr %2, align 4, !tbaa !553
  %i.kb = load i32, ptr %i.cb, align 4, !tbaa !556
  call fastcc void @pm_iseq_add_setlocal(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %i.ka, i32 noundef %i.kb, i32 noundef %i.iu, i32 noundef %.1.lcssa.i132)
  %i.kc = load i32, ptr %2, align 4, !tbaa !553
  %i.kd = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.ke = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.kc, i32 noundef %i.kd, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.kf = load ptr, ptr %i.ga, align 8, !tbaa !11 ; 2 uses
  %i.kg = getelementptr i8, ptr %i.ke, i64 16
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !34
  %i.kh = getelementptr i8, ptr %i.kf, i64 8
  store ptr %i.ke, ptr %i.kh, align 8, !tbaa !35
  store ptr %i.ke, ptr %i.ga, align 8, !tbaa !11
  %i.ki = load i32, ptr %2, align 4, !tbaa !553
  %i.kj = load i32, ptr %i.cb, align 4, !tbaa !556
  call fastcc void @pm_iseq_add_setlocal(ptr noundef nonnull %0, ptr noundef %6, i32 noundef %i.ki, i32 noundef %i.kj, i32 noundef %i.iu, i32 noundef %.1.lcssa.i132)
  %i.kk = add nuw i64 %.0164, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.kk, %i.cy
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !1410

bb.u:                                             ; preds = %APPEND_LIST.exit
  %i.kl = load i32, ptr %2, align 4, !tbaa !553
  %i.km = load i32, ptr %i.cb, align 4, !tbaa !556
  %i.kn = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.kl, i32 noundef %i.km, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ko = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.kp = getelementptr i8, ptr %i.kn, i64 16
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !34
  %i.kq = getelementptr i8, ptr %i.ko, i64 8
  store ptr %i.kn, ptr %i.kq, align 8, !tbaa !35
  store ptr %i.kn, ptr %i.ce, align 8, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %APPEND_LIST.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.w

bb.w:                                             ; preds = %pm_constant_id_lookup.exit, %bb.k, %bb.v
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_compile_multi_target_node(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr noundef captures(none) %5, ptr nofree noundef captures(address_is_null) %6) unnamed_addr #1 {
bb.a:
  %7 = alloca %struct.pm_multi_target_state_t, align 8 ; 5 uses
  %i.a = getelementptr i8, ptr %5, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !538  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 600
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !539
  %i.f = getelementptr i8, ptr %i.b, i64 664
  %i.g = load i32, ptr %i.f, align 8, !tbaa !540
  %i.h = tail call i32 @pm_newline_list_line(ptr noundef %i.c, ptr noundef %i.e, i32 noundef %i.g) #37 ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !555  ; 3 uses
  %i.k = load i16, ptr %1, align 8, !tbaa !501    ; 2 uses
  %.off = add i16 %i.k, -105
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @pm_node_type_to_str(i16 noundef zeroext %i.k) #37
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.290, ptr noundef %i.l) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %.086 = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %.087.in = getelementptr i8, ptr %1, i64 48
  %.087 = load ptr, ptr %.087.in, align 8, !tbaa !511 ; 4 uses
  %.089 = getelementptr i8, ptr %1, i64 56        ; 5 uses
  %i.m = icmp eq ptr %.087, null                  ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i16, ptr %.087, align 8, !tbaa !501
  %i.o = icmp eq i16 %i.n, 139
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.087, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !732
  %i.r = icmp ne ptr %i.q, null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.s = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ %i.r, %bb.e ] ; 3 uses
  %i.t = load i64, ptr %.089, align 8, !tbaa !563
  %i.u = icmp ne i64 %i.t, 0                      ; 3 uses
  %i.v = load i64, ptr %.086, align 8, !tbaa !563
  %i.w = shl i64 %i.v, 1
  %i.x = or disjoint i64 %i.w, 1
  %i.y = select i1 %i.s, i1 true, i1 %i.u         ; 2 uses
  %i.z = select i1 %i.y, i64 3, i64 1
  %i.aa = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 31, i32 noundef 2, i64 noundef %i.x, i64 noundef %i.z) ; 3 uses
  %i.ab = getelementptr i8, ptr %3, i64 24        ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !34
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !35
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.af = icmp eq ptr %6, null                    ; 2 uses
  %spec.store.select = select i1 %i.af, ptr %7, ptr %6 ; 3 uses
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.af, ptr %7, ptr %6
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8 ; 4 uses
  %i.ag = load i64, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !706 ; 3 uses
  %i.ah = load i64, ptr %.086, align 8, !tbaa !563 ; 2 uses
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ai = zext i1 %i.y to i64
end_hunk_5
begin_hunk_6_@pm_compile_scope_node:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %new_trace_body.exit
  %i.ar = getelementptr i8, ptr %1, i64 40        ; 6 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508 ; 6 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %.thread24, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load i16, ptr %i.as, align 8, !tbaa !501 ; 2 uses
  switch i16 %i.at, label %bb.l [
    i16 16, label %bb.g
    i16 115, label %bb.m
    i16 110, label %bb.j
    i16 89, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr i8, ptr %i.as, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1433 ; 4 uses
  %i.aw = getelementptr i8, ptr %i.as, i64 32     ; 3 uses
  %.not878 = icmp eq ptr %i.av, null
  br i1 %.not878, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr i8, ptr %i.av, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1435 ; 2 uses
  %.not879 = icmp eq ptr %i.ay, null
  br i1 %.not879, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !501
  %i.ba = icmp eq i16 %i.az, 70
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.bb = getelementptr i8, ptr %i.as, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !1438 ; 2 uses
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr i8, ptr %i.f, i64 16      ; 2 uses
  %i.bf = getelementptr i8, ptr %i.f, i64 24
  store i32 %i.bd, ptr %i.bf, align 8, !tbaa !190
  %i.bg = icmp eq i8 %i.bc, 1
  %i.bh = load i16, ptr %i.be, align 8
  %i.bi = select i1 %i.bg, i16 128, i16 0
  %i.bj = and i16 %i.bh, -129
  %i.bk = or disjoint i16 %i.bj, %i.bi
  store i16 %i.bk, ptr %i.be, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.bl = getelementptr i8, ptr %i.f, i64 16      ; 2 uses
  %i.bm = getelementptr i8, ptr %i.f, i64 24
  store i32 1, ptr %i.bm, align 8, !tbaa !190
  %i.bn = load i16, ptr %i.bl, align 8
  %i.bo = or i16 %i.bn, 128
  store i16 %i.bo, ptr %i.bl, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.bp = tail call ptr @pm_node_type_to_str(i16 noundef zeroext %i.at) #37
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.292, ptr noundef %i.bp) #38
  unreachable

bb.m:                                             ; preds = %bb.h, %bb.f, %bb.i
  %.1 = phi i1 [ %i.ba, %bb.i ], [ false, %bb.f ], [ false, %bb.h ]
  %.0790 = phi ptr [ %i.aw, %bb.i ], [ null, %bb.f ], [ %i.aw, %bb.h ]
  %.0 = phi ptr [ %i.av, %bb.i ], [ %i.as, %bb.f ], [ %i.av, %bb.h ] ; 5 uses
  %i.bq = getelementptr i8, ptr %.0, i64 48
  %i.br = getelementptr i8, ptr %.0, i64 24
  %i.bs = getelementptr i8, ptr %.0, i64 104
  %i.bt = getelementptr i8, ptr %.0, i64 80
  br label %bb.q

bb.n:                                             ; preds = %bb.g, %bb.j, %bb.k
  %.0790.ph.ph = phi ptr [ %i.aw, %bb.g ], [ null, %bb.j ], [ null, %bb.k ] ; 3 uses
  %.pr = load ptr, ptr %i.ar, align 8, !tbaa !508 ; 2 uses
  %.not881 = icmp eq ptr %.pr, null
  br i1 %.not881, label %.thread24, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = load i16, ptr %.pr, align 8, !tbaa !501
  switch i16 %i.bu, label %.thread24 [
    i16 110, label %bb.p
    i16 89, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.bv = getelementptr i8, ptr %i.f, i64 28
  store i32 0, ptr %i.bv, align 4, !tbaa !163
  br label %bb.q

.thread24:                                        ; preds = %bb.e, %bb.o, %bb.n
  %.0790.ph29 = phi ptr [ %.0790.ph.ph, %bb.n ], [ %.0790.ph.ph, %bb.o ], [ null, %bb.e ]
  %i.bw = getelementptr i8, ptr %i.f, i64 24
  store i32 0, ptr %i.bw, align 8, !tbaa !190
  %i.bx = getelementptr i8, ptr %i.f, i64 28
  store i32 0, ptr %i.bx, align 4, !tbaa !163
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread24, %bb.m
  %.not88022 = phi i1 [ false, %bb.m ], [ true, %bb.p ], [ true, %.thread24 ] ; 4 uses
  %.020 = phi ptr [ %.0, %bb.m ], [ null, %bb.p ], [ null, %.thread24 ] ; 6 uses
  %.079018 = phi ptr [ %.0790, %bb.m ], [ %.0790.ph.ph, %bb.p ], [ %.0790.ph29, %.thread24 ] ; 4 uses
  %.116 = phi i1 [ %.1, %bb.m ], [ false, %bb.p ], [ false, %.thread24 ]
  %.0789 = phi ptr [ %i.br, %bb.m ], [ null, %bb.p ], [ null, %.thread24 ] ; 14 uses
  %.0788 = phi ptr [ %i.bt, %bb.m ], [ null, %bb.p ], [ null, %.thread24 ] ; 13 uses
  %.0787 = phi ptr [ %i.bq, %bb.m ], [ null, %bb.p ], [ null, %.thread24 ] ; 13 uses
  %.0786 = phi ptr [ %i.bs, %bb.m ], [ null, %bb.p ], [ null, %.thread24 ] ; 15 uses
  %i.by = load i64, ptr %i.g, align 8, !tbaa !794
  %i.bz = tail call ptr @rb_st_init_numtable() #37 ; 21 uses
  %i.ca = trunc i64 %i.by to i32
  %i.cb = load ptr, ptr %i.h, align 8, !tbaa !498
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !501
  %i.cd = icmp eq i16 %i.cc, 55
  %i.ce = zext i1 %i.cd to i32
  %spec.select947 = add i32 %i.ce, %i.ca          ; 2 uses
  %.not882 = icmp eq ptr %.0786, null             ; 4 uses
  br i1 %.not882, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = load i64, ptr %.0786, align 8, !tbaa !563
  %.not883 = icmp ne i64 %i.cf, 0
  %i.cg = zext i1 %.not883 to i32
  %spec.select948 = add i32 %spec.select947, %i.cg
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1795 = phi i32 [ %spec.select947, %bb.q ], [ %spec.select948, %bb.r ] ; 4 uses
  %i.ch = icmp ne ptr %.0789, null                ; 5 uses
  br i1 %i.ch, label %.preheader78, label %.loopexit79

.preheader78:                                     ; preds = %bb.s
  %i.ci = load i64, ptr %.0789, align 8, !tbaa !563 ; 5 uses
  %.not201 = icmp eq i64 %i.ci, 0
  br i1 %.not201, label %.loopexit79, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader78
  %i.cj = getelementptr i8, ptr %.0789, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !564 ; 3 uses
  %xtraiter = and i64 %i.ci, 1
  %i.cl = icmp eq i64 %i.ci, 1
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ci, -2
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %.lr.ph.new
  %.2796135 = phi i32 [ %.1795, %.lr.ph.new ], [ %.3797.1, %bb.z ] ; 3 uses
  %.0799134 = phi i64 [ 0, %.lr.ph.new ], [ %i.df, %bb.z ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.z ]
  %i.cm = getelementptr [8 x i8], ptr %i.ck, i64 %.0799134
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !511 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !501
  switch i16 %i.co, label %bb.w [
    i16 105, label %bb.u
    i16 127, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.cp = add i32 %.2796135, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cq = getelementptr i8, ptr %i.cn, i64 2
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !562
  %i.cs = lshr i16 %i.cr, 2
  %i.ct = and i16 %i.cs, 1
  %i.cu = zext nneg i16 %i.ct to i32
  %spec.select949 = add i32 %.2796135, %i.cu
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.u
  %.3797 = phi i32 [ %i.cp, %bb.u ], [ %.2796135, %bb.t ], [ %spec.select949, %bb.v ] ; 3 uses
  %i.cv = getelementptr [8 x i8], ptr %i.ck, i64 %.0799134
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !511 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 8, !tbaa !501
  switch i16 %i.cy, label %bb.z [
    i16 105, label %bb.y
    i16 127, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr i8, ptr %i.cx, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !562
  %i.db = lshr i16 %i.da, 2
  %i.dc = and i16 %i.db, 1
  %i.dd = zext nneg i16 %i.dc to i32
  %spec.select949.1 = add i32 %.3797, %i.dd
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.de = add i32 %.3797, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.3797.1 = phi i32 [ %i.de, %bb.y ], [ %.3797, %bb.w ], [ %spec.select949.1, %bb.x ] ; 3 uses
  %i.df = add nuw i64 %.0799134, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit79.loopexit.unr-lcssa, label %bb.t, !llvm.loop !1440

.loopexit79.loopexit.unr-lcssa:                   ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit79, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit79.loopexit.unr-lcssa, %.lr.ph
  %.2796135.epil.init = phi i32 [ %.1795, %.lr.ph ], [ %.3797.1, %.loopexit79.loopexit.unr-lcssa ] ; 3 uses
  %.0799134.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.df, %.loopexit79.loopexit.unr-lcssa ]
  %lcmp.mod594 = trunc i64 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod594)
  %i.dg = getelementptr [8 x i8], ptr %i.ck, i64 %.0799134.epil.init
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !511 ; 2 uses
  %i.di = load i16, ptr %i.dh, align 8, !tbaa !501
  switch i16 %i.di, label %.loopexit79 [
    i16 105, label %bb.ab
    i16 127, label %bb.aa
  ]

bb.aa:                                            ; preds = %.epil.preheader
  %i.dj = getelementptr i8, ptr %i.dh, i64 2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !562
  %i.dl = lshr i16 %i.dk, 2
  %i.dm = and i16 %i.dl, 1
  %i.dn = zext nneg i16 %i.dm to i32
  %spec.select949.epil = add i32 %.2796135.epil.init, %i.dn
  br label %.loopexit79

bb.ab:                                            ; preds = %.epil.preheader
  %i.do = add i32 %.2796135.epil.init, 1
  br label %.loopexit79

.loopexit79:                                      ; preds = %.loopexit79.loopexit.unr-lcssa, %bb.ab, %bb.aa, %.epil.preheader, %.preheader78, %bb.s
  %.4798 = phi i32 [ %.1795, %bb.s ], [ %.1795, %.preheader78 ], [ %.3797.1, %.loopexit79.loopexit.unr-lcssa ], [ %i.do, %bb.ab ], [ %.2796135.epil.init, %.epil.preheader ], [ %spec.select949.epil, %bb.aa ] ; 2 uses
  %i.dp = load ptr, ptr %i.ar, align 8, !tbaa !508 ; 2 uses
  %.not884 = icmp eq ptr %i.dp, null
  br i1 %.not884, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.loopexit79
  %i.dq = load i16, ptr %i.dp, align 8, !tbaa !501
  %i.dr = icmp eq i16 %i.dq, 89
  %i.ds = zext i1 %i.dr to i32
  %spec.select950 = add i32 %.4798, %i.ds
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit79
  %.5 = phi i32 [ %.4798, %.loopexit79 ], [ %spec.select950, %bb.ac ] ; 4 uses
  %.not885 = icmp eq ptr %.0787, null             ; 3 uses
  br i1 %.not885, label %.loopexit77, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = load i64, ptr %.0787, align 8, !tbaa !563 ; 5 uses
  %.not886 = icmp eq i64 %i.dt, 0
  br i1 %.not886, label %.loopexit77, label %.preheader76

.preheader76:                                     ; preds = %bb.ae
  %i.du = getelementptr i8, ptr %.0787, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !564 ; 3 uses
  %xtraiter596 = and i64 %i.dt, 1
  %i.dw = icmp eq i64 %i.dt, 1
  br i1 %i.dw, label %.epil.preheader595, label %.preheader76.new

.preheader76.new:                                 ; preds = %.preheader76
  %unroll_iter600 = and i64 %i.dt, -2
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.preheader76.new
  %.6137 = phi i32 [ %.5, %.preheader76.new ], [ %spec.select951.1, %bb.af ]
  %.0800136 = phi i64 [ 0, %.preheader76.new ], [ %i.em, %bb.af ] ; 3 uses
  %niter601 = phi i64 [ 0, %.preheader76.new ], [ %niter601.next.1, %bb.af ]
  %i.dx = getelementptr [8 x i8], ptr %i.dv, i64 %.0800136
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !511
  %i.dz = getelementptr i8, ptr %i.dy, i64 2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !562
  %i.eb = lshr i16 %i.ea, 2
  %i.ec = and i16 %i.eb, 1
  %i.ed = zext nneg i16 %i.ec to i32
  %spec.select951 = add i32 %.6137, %i.ed
  %i.ee = getelementptr [8 x i8], ptr %i.dv, i64 %.0800136
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !511
  %i.eh = getelementptr i8, ptr %i.eg, i64 2
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !562
  %i.ej = lshr i16 %i.ei, 2
  %i.ek = and i16 %i.ej, 1
  %i.el = zext nneg i16 %i.ek to i32
  %spec.select951.1 = add i32 %spec.select951, %i.el ; 3 uses
  %i.em = add nuw i64 %.0800136, 2                ; 2 uses
  %niter601.next.1 = add i64 %niter601, 2         ; 2 uses
  %niter601.ncmp.1 = icmp eq i64 %niter601.next.1, %unroll_iter600
  br i1 %niter601.ncmp.1, label %.loopexit77.loopexit.unr-lcssa, label %bb.af, !llvm.loop !1441

.loopexit77.loopexit.unr-lcssa:                   ; preds = %bb.af
  %lcmp.mod597.not = icmp eq i64 %xtraiter596, 0
  br i1 %lcmp.mod597.not, label %.loopexit77, label %.epil.preheader595

.epil.preheader595:                               ; preds = %.loopexit77.loopexit.unr-lcssa, %.preheader76
  %.6137.epil.init = phi i32 [ %.5, %.preheader76 ], [ %spec.select951.1, %.loopexit77.loopexit.unr-lcssa ]
  %.0800136.epil.init = phi i64 [ 0, %.preheader76 ], [ %i.em, %.loopexit77.loopexit.unr-lcssa ]
  %lcmp.mod599 = trunc i64 %i.dt to i1
  tail call void @llvm.assume(i1 %lcmp.mod599)
  %i.en = getelementptr [8 x i8], ptr %i.dv, i64 %.0800136.epil.init
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !511
  %i.ep = getelementptr i8, ptr %i.eo, i64 2
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !562
  %i.er = lshr i16 %i.eq, 2
  %i.es = and i16 %i.er, 1
  %i.et = zext nneg i16 %i.es to i32
  %spec.select951.epil = add i32 %.6137.epil.init, %i.et
  br label %.loopexit77

.loopexit77:                                      ; preds = %.epil.preheader595, %.loopexit77.loopexit.unr-lcssa, %bb.ae, %bb.ad
  %.8 = phi i32 [ %.5, %bb.ad ], [ %.5, %bb.ae ], [ %spec.select951.1, %.loopexit77.loopexit.unr-lcssa ], [ %spec.select951.epil, %.epil.preheader595 ] ; 5 uses
  br i1 %.not88022, label %bb.av, label %bb.ag

bb.ag:                                            ; preds = %.loopexit77
  %i.eu = getelementptr i8, ptr %.020, i64 72
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1435 ; 4 uses
  %.not887 = icmp eq ptr %i.ev, null
  br i1 %.not887, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load i16, ptr %i.ev, align 8, !tbaa !501
  %i.ex = icmp eq i16 %i.ew, 70
  br i1 %i.ex, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ey = getelementptr i8, ptr %i.ev, i64 24
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !1442
  %.not888 = icmp eq i32 %i.ez, 0
  br i1 %.not888, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = getelementptr i8, ptr %i.ev, i64 2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !562
  %i.fc = and i16 %i.fb, 4
  %.not889 = icmp eq i16 %i.fc, 0
  br i1 %.not889, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fd = add i32 %.8, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.ak, %bb.aj, %bb.ag
  %.9 = phi i32 [ %.8, %bb.ah ], [ %i.fd, %bb.ak ], [ %.8, %bb.aj ], [ %.8, %bb.ag ] ; 5 uses
  %i.fe = getelementptr i8, ptr %.020, i64 128
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1444 ; 4 uses
  %.not890 = icmp eq ptr %i.ff, null
  br i1 %.not890, label %bb.av, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fg = load i16, ptr %i.ff, align 8, !tbaa !501
  %i.fh = icmp eq i16 %i.fg, 57
  br i1 %i.fh, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.fi = load i64, ptr %.0789, align 8, !tbaa !563
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.fk = load i64, ptr %.0787, align 8, !tbaa !563
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fm = load i64, ptr %.0786, align 8, !tbaa !563
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fo = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.fp = getelementptr i8, ptr %i.fo, i64 16     ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 8
  %i.fr = or i16 %i.fq, 4096
  store i16 %i.fr, ptr %i.fp, align 8
  %i.fs = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ft = getelementptr i8, ptr %i.fs, i64 16     ; 2 uses
  %i.fu = load i16, ptr %i.ft, align 8
  %i.fv = or i16 %i.fu, 8192
  store i16 %i.fv, ptr %i.ft, align 8
  %i.fw = add i32 %.9, 1
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.fx = add i32 %.9, 4
  br label %bb.av

bb.as:                                            ; preds = %bb.am
  %i.fy = getelementptr i8, ptr %i.ff, i64 24
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !1445
  %.not891 = icmp eq i32 %i.fz, 0
  br i1 %.not891, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ga = getelementptr i8, ptr %i.ff, i64 2
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !562
  %i.gc = and i16 %i.gb, 4
  %.not892 = icmp eq i16 %i.gc, 0
  br i1 %.not892, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gd = add i32 %.9, 1
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.al, %bb.aq, %bb.ar, %.loopexit77
  %.11 = phi i32 [ %i.fw, %bb.aq ], [ %i.fx, %bb.ar ], [ %.8, %.loopexit77 ], [ %.9, %bb.al ], [ %i.gd, %bb.au ], [ %.9, %bb.at ] ; 4 uses
  %.not893 = icmp eq ptr %.0788, null             ; 4 uses
  br i1 %.not893, label %.loopexit75, label %.preheader74

.preheader74:                                     ; preds = %bb.av
  %i.ge = load i64, ptr %.0788, align 8, !tbaa !563 ; 5 uses
  %.not202 = icmp eq i64 %i.ge, 0
  br i1 %.not202, label %.loopexit75, label %.lr.ph140

.lr.ph140:                                        ; preds = %.preheader74
  %i.gf = getelementptr i8, ptr %.0788, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !564 ; 3 uses
  %xtraiter603 = and i64 %i.ge, 1
  %i.gh = icmp eq i64 %i.ge, 1
  br i1 %i.gh, label %.epil.preheader602, label %.lr.ph140.new

.lr.ph140.new:                                    ; preds = %.lr.ph140
  %unroll_iter607 = and i64 %i.ge, -2
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bc, %.lr.ph140.new
  %.12139 = phi i32 [ %.11, %.lr.ph140.new ], [ %.13.1, %bb.bc ] ; 2 uses
  %.0801138 = phi i64 [ 0, %.lr.ph140.new ], [ %i.gz, %bb.bc ] ; 3 uses
  %niter608 = phi i64 [ 0, %.lr.ph140.new ], [ %niter608.next.1, %bb.bc ]
  %i.gi = getelementptr [8 x i8], ptr %i.gg, i64 %.0801138
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !511 ; 2 uses
  %i.gk = load i16, ptr %i.gj, align 8, !tbaa !501
  %i.gl = icmp eq i16 %i.gk, 105
  br i1 %i.gl, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gm = getelementptr i8, ptr %i.gj, i64 2
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !562
  %i.go = and i16 %i.gn, 4
  %.not944 = icmp eq i16 %i.go, 0
  br i1 %.not944, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gp = add i32 %.12139, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.13 = phi i32 [ %i.gp, %bb.ay ], [ %.12139, %bb.ax ] ; 2 uses
  %i.gq = getelementptr [8 x i8], ptr %i.gg, i64 %.0801138
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !511 ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 8, !tbaa !501
  %i.gu = icmp eq i16 %i.gt, 105
  br i1 %i.gu, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gv = getelementptr i8, ptr %i.gs, i64 2
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !562
  %i.gx = and i16 %i.gw, 4
  %.not944.1 = icmp eq i16 %i.gx, 0
  br i1 %.not944.1, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gy = add i32 %.13, 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.13.1 = phi i32 [ %i.gy, %bb.bb ], [ %.13, %bb.ba ] ; 3 uses
  %i.gz = add nuw i64 %.0801138, 2                ; 2 uses
  %niter608.next.1 = add i64 %niter608, 2         ; 2 uses
  %niter608.ncmp.1 = icmp eq i64 %niter608.next.1, %unroll_iter607
  br i1 %niter608.ncmp.1, label %.loopexit75.loopexit.unr-lcssa, label %bb.aw, !llvm.loop !1447

.loopexit75.loopexit.unr-lcssa:                   ; preds = %bb.bc
  %lcmp.mod604.not = icmp eq i64 %xtraiter603, 0
  br i1 %lcmp.mod604.not, label %.loopexit75, label %.epil.preheader602

.epil.preheader602:                               ; preds = %.loopexit75.loopexit.unr-lcssa, %.lr.ph140
  %.12139.epil.init = phi i32 [ %.11, %.lr.ph140 ], [ %.13.1, %.loopexit75.loopexit.unr-lcssa ] ; 2 uses
  %.0801138.epil.init = phi i64 [ 0, %.lr.ph140 ], [ %i.gz, %.loopexit75.loopexit.unr-lcssa ]
  %lcmp.mod606 = trunc i64 %i.ge to i1
  tail call void @llvm.assume(i1 %lcmp.mod606)
  %i.ha = getelementptr [8 x i8], ptr %i.gg, i64 %.0801138.epil.init
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !511 ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 8, !tbaa !501
  %i.hd = icmp eq i16 %i.hc, 105
  br i1 %i.hd, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.epil.preheader602
  %i.he = getelementptr i8, ptr %i.hb, i64 2
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !562
  %i.hg = and i16 %i.hf, 4
  %.not944.epil = icmp eq i16 %i.hg, 0
  br i1 %.not944.epil, label %.loopexit75, label %bb.be

bb.be:                                            ; preds = %bb.bd, %.epil.preheader602
  %i.hh = add i32 %.12139.epil.init, 1
  br label %.loopexit75

.loopexit75:                                      ; preds = %.loopexit75.loopexit.unr-lcssa, %bb.be, %bb.bd, %.preheader74, %bb.av
  %.14 = phi i32 [ %.11, %bb.av ], [ %.11, %.preheader74 ], [ %.13.1, %.loopexit75.loopexit.unr-lcssa ], [ %i.hh, %bb.be ], [ %.12139.epil.init, %bb.bd ] ; 4 uses
  br i1 %.not882, label %.loopexit73, label %bb.bf

bb.bf:                                            ; preds = %.loopexit75
  %i.hi = load i64, ptr %.0786, align 8, !tbaa !563 ; 5 uses
  %.not894 = icmp eq i64 %i.hi, 0
  br i1 %.not894, label %.loopexit73, label %.preheader72

.preheader72:                                     ; preds = %bb.bf
  %i.hj = getelementptr i8, ptr %.0786, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !564 ; 3 uses
  %xtraiter610 = and i64 %i.hi, 1
  %i.hl = icmp eq i64 %i.hi, 1
  br i1 %i.hl, label %.epil.preheader609, label %.preheader72.new

.preheader72.new:                                 ; preds = %.preheader72
  %unroll_iter614 = and i64 %i.hi, -2
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.preheader72.new
  %.15143 = phi i32 [ %.14, %.preheader72.new ], [ %spec.select952.1, %bb.bg ]
  %.0802142 = phi i64 [ 0, %.preheader72.new ], [ %i.ib, %bb.bg ] ; 3 uses
  %niter615 = phi i64 [ 0, %.preheader72.new ], [ %niter615.next.1, %bb.bg ]
  %i.hm = getelementptr [8 x i8], ptr %i.hk, i64 %.0802142
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !511
  %i.ho = getelementptr i8, ptr %i.hn, i64 2
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !562
  %i.hq = lshr i16 %i.hp, 2
  %i.hr = and i16 %i.hq, 1
  %i.hs = zext nneg i16 %i.hr to i32
  %spec.select952 = add i32 %.15143, %i.hs
  %i.ht = getelementptr [8 x i8], ptr %i.hk, i64 %.0802142
  %i.hu = getelementptr i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !511
  %i.hw = getelementptr i8, ptr %i.hv, i64 2
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !562
  %i.hy = lshr i16 %i.hx, 2
  %i.hz = and i16 %i.hy, 1
  %i.ia = zext nneg i16 %i.hz to i32
  %spec.select952.1 = add i32 %spec.select952, %i.ia ; 3 uses
  %i.ib = add nuw i64 %.0802142, 2                ; 2 uses
  %niter615.next.1 = add i64 %niter615, 2         ; 2 uses
  %niter615.ncmp.1 = icmp eq i64 %niter615.next.1, %unroll_iter614
  br i1 %niter615.ncmp.1, label %.loopexit73.loopexit.unr-lcssa, label %bb.bg, !llvm.loop !1448

.loopexit73.loopexit.unr-lcssa:                   ; preds = %bb.bg
  %lcmp.mod611.not = icmp eq i64 %xtraiter610, 0
  br i1 %lcmp.mod611.not, label %.loopexit73, label %.epil.preheader609

.epil.preheader609:                               ; preds = %.loopexit73.loopexit.unr-lcssa, %.preheader72
  %.15143.epil.init = phi i32 [ %.14, %.preheader72 ], [ %spec.select952.1, %.loopexit73.loopexit.unr-lcssa ]
  %.0802142.epil.init = phi i64 [ 0, %.preheader72 ], [ %i.ib, %.loopexit73.loopexit.unr-lcssa ]
  %lcmp.mod613 = trunc i64 %i.hi to i1
  tail call void @llvm.assume(i1 %lcmp.mod613)
  %i.ic = getelementptr [8 x i8], ptr %i.hk, i64 %.0802142.epil.init
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !511
  %i.ie = getelementptr i8, ptr %i.id, i64 2
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !562
  %i.ig = lshr i16 %i.if, 2
  %i.ih = and i16 %i.ig, 1
  %i.ii = zext nneg i16 %i.ih to i32
  %spec.select952.epil = add i32 %.15143.epil.init, %i.ii
  br label %.loopexit73

.loopexit73:                                      ; preds = %.epil.preheader609, %.loopexit73.loopexit.unr-lcssa, %bb.bf, %.loopexit75
  %.17 = phi i32 [ %.14, %.loopexit75 ], [ %.14, %bb.bf ], [ %spec.select952.1, %.loopexit73.loopexit.unr-lcssa ], [ %spec.select952.epil, %.epil.preheader609 ] ; 4 uses
  br i1 %.not88022, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %.loopexit73
  %i.ij = getelementptr i8, ptr %.020, i64 136
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !1449 ; 3 uses
  %.not895 = icmp eq ptr %i.ik, null
  br i1 %.not895, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.il = getelementptr i8, ptr %i.ik, i64 2
  %i.im = load i16, ptr %i.il, align 2, !tbaa !562
  %i.in = and i16 %i.im, 4
  %.not896 = icmp eq i16 %i.in, 0
  br i1 %.not896, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.io = getelementptr i8, ptr %i.ik, i64 24
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !1450
  %.not897 = icmp eq i32 %i.ip, 0
  br i1 %.not897, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.iq = add i32 %.17, 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk, %bb.bh, %.loopexit73
  %.19 = phi i32 [ %.17, %.loopexit73 ], [ %.17, %bb.bh ], [ %i.iq, %bb.bk ], [ %.17, %bb.bj ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i64 0, ptr %i.c, align 8, !tbaa !36
  %i.ir = sext i32 %.19 to i64
  %i.is = shl nsw i64 %i.ir, 3
  %i.it = add nsw i64 %i.is, 8                    ; 3 uses
  %i.iu = icmp ult i64 %i.it, 1024
  br i1 %i.iu, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.iv = alloca i8, i64 %i.it, align 16
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.iw = call noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef nonnull %i.c, i64 noundef %i.it) #48
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ix = phi ptr [ %i.iv, %bb.bm ], [ %i.iw, %bb.bn ] ; 28 uses
  store i32 %.19, ptr %i.ix, align 8, !tbaa !7
  br i1 %i.ch, label %bb.bp, label %bb.cb

bb.bp:                                            ; preds = %bb.bo
  %i.iy = load i64, ptr %.0789, align 8, !tbaa !563
  %.not898 = icmp eq i64 %i.iy, 0
  br i1 %.not898, label %bb.cb, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.bp
  %i.iz = getelementptr i8, ptr %.0789, i64 16
  %i.ja = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.jb = getelementptr i8, ptr %1, i64 120       ; 2 uses
  %i.jc = getelementptr i8, ptr %i.ix, i64 8      ; 3 uses
  br label %bb.bq

._crit_edge:                                      ; preds = %bb.ca
  %indvars.le = trunc i64 %i.ku to i32
  %i.jd = trunc i64 %i.kv to i32
  %i.je = getelementptr i8, ptr %i.f, i64 16      ; 2 uses
  %i.jf = getelementptr i8, ptr %i.f, i64 24
  store i32 %i.jd, ptr %i.jf, align 8, !tbaa !190
  %i.jg = load i16, ptr %i.je, align 8
  %i.jh = or i16 %i.jg, 1
  store i16 %i.jh, ptr %i.je, align 8
  br label %bb.cb

bb.bq:                                            ; preds = %.lr.ph146, %bb.ca
  %.0823144 = phi i64 [ 0, %.lr.ph146 ], [ %i.ku, %bb.ca ] ; 5 uses
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !564
  %i.jj = getelementptr [8 x i8], ptr %i.ji, i64 %.0823144
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !511 ; 3 uses
  %i.jl = load i16, ptr %i.jk, align 8, !tbaa !501 ; 2 uses
  switch i16 %i.jl, label %bb.bz [
    i16 105, label %bb.br
    i16 127, label %bb.bs
  ]

bb.br:                                            ; preds = %bb.bq
  %sext431 = shl i64 %.0823144, 32
  %i.jm = ashr exact i64 %sext431, 32             ; 2 uses
  %i.jn = call i64 @rb_make_temporary_id(i64 noundef %i.jm) #37
  %i.jo = getelementptr [8 x i8], ptr %i.jc, i64 %i.jm
  store i64 %i.jn, ptr %i.jo, align 8, !tbaa !36
  br label %bb.ca

bb.bs:                                            ; preds = %bb.bq
  %i.jp = getelementptr i8, ptr %i.jk, i64 2
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !562
  %i.jr = and i16 %i.jq, 4
  %.not942 = icmp eq i16 %i.jr, 0
  %i.js = getelementptr i8, ptr %i.jk, i64 24
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !704 ; 8 uses
  %i.ju = icmp eq i32 %i.jt, 0                    ; 2 uses
  br i1 %.not942, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.ju, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jv = load ptr, ptr %i.ja, align 8, !tbaa !538
  %i.jw = getelementptr i8, ptr %i.jv, i64 592
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !793
  %i.jy = icmp ugt i32 %i.jt, %i.jx
  br i1 %i.jy, label %bb.bv, label %pm_constant_id_lookup.exit

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.jt) #38
  unreachable

pm_constant_id_lookup.exit:                       ; preds = %bb.bu
  %i.jz = load ptr, ptr %i.jb, align 8, !tbaa !499
  %i.ka = add i32 %i.jt, -1
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr [8 x i8], ptr %i.jz, i64 %i.kb
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !36
  %sext = shl i64 %.0823144, 32
  %i.ke = ashr exact i64 %sext, 29
  %i.kf = getelementptr i8, ptr %i.jc, i64 %i.ke
  store i64 %i.kd, ptr %i.kf, align 8, !tbaa !36
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bs
  br i1 %i.ju, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kg = load ptr, ptr %i.ja, align 8, !tbaa !538
  %i.kh = getelementptr i8, ptr %i.kg, i64 592
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !793
  %i.kj = icmp ugt i32 %i.jt, %i.ki
  br i1 %i.kj, label %bb.by, label %pm_insert_local_index.exit

bb.by:                                            ; preds = %bb.bx, %bb.bw
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.jt) #38
  unreachable

pm_insert_local_index.exit:                       ; preds = %bb.bx
  %i.kk = load ptr, ptr %i.jb, align 8, !tbaa !499
  %i.kl = add i32 %i.jt, -1
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr [8 x i8], ptr %i.kk, i64 %i.km
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !36
  %sext430 = shl i64 %.0823144, 32
  %i.kp = ashr exact i64 %sext430, 32             ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %i.jc, i64 %i.kp
  store i64 %i.ko, ptr %i.kq, align 8, !tbaa !36
  %i.kr = zext i32 %i.jt to i64
  %i.ks = call i32 @rb_st_insert(ptr noundef %i.bz, i64 noundef %i.kr, i64 noundef %i.kp) #37 ; 0 uses
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bq
  %i.kt = call ptr @pm_node_type_to_str(i16 noundef zeroext %i.jl) #37
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.293, ptr noundef %i.kt) #38
  unreachable

bb.ca:                                            ; preds = %pm_constant_id_lookup.exit, %pm_insert_local_index.exit, %bb.br
  %i.ku = add nuw i64 %.0823144, 1                ; 3 uses
  %i.kv = load i64, ptr %.0789, align 8, !tbaa !563 ; 2 uses
  %i.kw = icmp ult i64 %i.ku, %i.kv
  br i1 %i.kw, label %bb.bq, label %._crit_edge, !llvm.loop !1452

bb.cb:                                            ; preds = %._crit_edge, %bb.bp, %bb.bo
  %.1804 = phi i32 [ %indvars.le, %._crit_edge ], [ 0, %bb.bp ], [ 0, %bb.bo ] ; 4 uses
  %i.kx = load ptr, ptr %i.ar, align 8, !tbaa !508 ; 2 uses
  %.not899 = icmp eq ptr %i.kx, null
  br i1 %.not899, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ky = load i16, ptr %i.kx, align 8, !tbaa !501
  %i.kz = icmp eq i16 %i.ky, 89
  br i1 %i.kz, label %bb.cd, label %bb.ce

end_hunk_6
begin_hunk_7_@pm_compile_pattern_eqq_error:bb.a
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 16
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !34
  %i.bn = getelementptr i8, ptr %i.bl, i64 8
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !35
  store ptr %i.bk, ptr %i.au, align 8, !tbaa !11
  %i.bo = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 44, i32 noundef 1, i64 noundef 7) ; 3 uses
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bo, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !34
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !35
  store ptr %i.bo, ptr %i.au, align 8, !tbaa !11
  %i.bs = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 44, i32 noundef 1, i64 noundef 11) ; 3 uses
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !34
  %i.bv = getelementptr i8, ptr %i.bt, i64 8
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !35
  store ptr %i.bs, ptr %i.au, align 8, !tbaa !11
  %i.bw = tail call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i64 noundef 170, i64 noundef 7, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.bx = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bw, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !34
  %i.bz = getelementptr i8, ptr %i.bx, i64 8
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !35
  store ptr %i.bw, ptr %i.au, align 8, !tbaa !11
  %i.ca = add i32 %3, 2
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 1
  %i.cd = or disjoint i64 %i.cc, 1
  %i.ce = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 45, i32 noundef 1, i64 noundef %i.cd) ; 3 uses
  %i.cf = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !34
  %i.ch = getelementptr i8, ptr %i.cf, i64 8
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !35
  store ptr %i.ce, ptr %i.au, align 8, !tbaa !11
  %i.ci = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 19, i32 noundef 1, i64 noundef 0) ; 3 uses
  %i.cj = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 16
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !34
  %i.cl = getelementptr i8, ptr %i.cj, i64 8
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !35
  store ptr %i.ci, ptr %i.au, align 8, !tbaa !11
  %i.cm = add i32 %3, 4
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 1
  %i.cp = or disjoint i64 %i.co, 1
  %i.cq = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 45, i32 noundef 1, i64 noundef %i.cp) ; 3 uses
  %i.cr = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cq, i64 16
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !34
  %i.ct = getelementptr i8, ptr %i.cr, i64 8
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !35
  store ptr %i.cq, ptr %i.au, align 8, !tbaa !11
  %i.cu = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.cv = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 16
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !34
  %i.cx = getelementptr i8, ptr %i.cv, i64 8
  store ptr %i.cu, ptr %i.cx, align 8, !tbaa !35
  store ptr %i.cu, ptr %i.au, align 8, !tbaa !11
  %i.cy = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.cz = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !34
  %i.db = getelementptr i8, ptr %i.cz, i64 8
  store ptr %i.cy, ptr %i.db, align 8, !tbaa !35
  %i.dc = getelementptr i8, ptr %i.ag, i64 16
  store ptr %i.cy, ptr %i.dc, align 8, !tbaa !34
  %i.dd = getelementptr i8, ptr %i.cy, i64 8
  store ptr %i.ag, ptr %i.dd, align 8, !tbaa !35
  store ptr %i.ag, ptr %i.au, align 8, !tbaa !11
  %i.de = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 45, i32 noundef 1, i64 noundef 5) ; 3 uses
  %i.df = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.de, i64 16
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !34
  %i.dh = getelementptr i8, ptr %i.df, i64 8
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !35
  store ptr %i.de, ptr %i.au, align 8, !tbaa !11
  %i.di = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.dj = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.di, i64 16
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !34
  %i.dl = getelementptr i8, ptr %i.dj, i64 8
  store ptr %i.di, ptr %i.dl, align 8, !tbaa !35
  store ptr %i.di, ptr %i.au, align 8, !tbaa !11
  %i.dm = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.dn = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.do = getelementptr i8, ptr %i.dm, i64 16
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !34
  %i.dp = getelementptr i8, ptr %i.dn, i64 8
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !35
  store ptr %i.dm, ptr %i.au, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_compile_target_node(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr noundef captures(none) %5, ptr nofree noundef captures(address_is_null) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %struct.pm_node_location_t, align 4 ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.e = getelementptr i8, ptr %5, i64 80         ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !538  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 600
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !539
  %i.j = getelementptr i8, ptr %i.f, i64 664
  %i.k = load i32, ptr %i.j, align 8, !tbaa !540
  %i.l = tail call i32 @pm_newline_list_line(ptr noundef %i.g, ptr noundef %i.i, i32 noundef %i.k) #37 ; 29 uses
  store i32 %i.l, ptr %7, align 4, !tbaa !553
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !555  ; 29 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !556
  %i.p = load i16, ptr %1, align 8, !tbaa !501    ; 2 uses
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
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1389 ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !1391 ; 6 uses
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
  %lcmp.mod310 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod310)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0113.i.epil = phi ptr [ %i.x, %.lr.ph.i.epil ], [ %.0113.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.w = getelementptr i8, ptr %.0113.i.epil, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !497  ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !1532

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %.011.lcssa.i = phi ptr [ %5, %bb.b ], [ %i.ar, %.preheader.i.loopexit.unr-lcssa ], [ %i.x, %.lr.ph.i.epil ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.t, %.lr.ph.i.epil ], [ %i.t, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %i.y = zext i32 %i.r to i64                     ; 2 uses
  %i.z = getelementptr i8, ptr %.011.lcssa.i, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !536
  %i.ab = call i32 @rb_st_lookup(ptr noundef %i.aa, i64 noundef %i.y, ptr noundef nonnull %i.b) #37
  %.not6.i = icmp eq i32 %i.ab, 0
  br i1 %.not6.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0113.i = phi ptr [ %5, %.lr.ph.i.preheader.new ], [ %i.ar, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr i8, ptr %.0113.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !497
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !497
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !497
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !497
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !497
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !497
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !497
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !497 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1258

.lr.ph9.i:                                        ; preds = %.preheader.i, %bb.c
  %.18.i = phi i32 [ %i.au, %bb.c ], [ %.0.lcssa.i, %.preheader.i ]
  %.1127.i = phi ptr [ %i.at, %bb.c ], [ %.011.lcssa.i, %.preheader.i ]
  %i.as = getelementptr i8, ptr %.1127.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !497 ; 4 uses
  %.not14.i = icmp eq ptr %i.at, null
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph9.i
  %i.au = add i32 %.18.i, 1                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.at, i64 128
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !536
  %i.ax = call i32 @rb_st_lookup(ptr noundef %i.aw, i64 noundef %i.y, ptr noundef nonnull %i.b) #37
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit, !llvm.loop !1249

bb.d:                                             ; preds = %.lr.ph9.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.262, i32 noundef %i.r) #38
  unreachable

pm_lookup_local_index.exit:                       ; preds = %bb.c, %.preheader.i
  %.112.lcssa.i = phi ptr [ %.011.lcssa.i, %.preheader.i ], [ %i.at, %bb.c ]
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.au, %bb.c ]
  %i.ay = getelementptr i8, ptr %.112.lcssa.i, i64 112
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !676
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !36
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = sub i32 %i.az, %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call fastcc void @pm_iseq_add_setlocal(ptr noundef %0, ptr noundef %3, i32 noundef %i.l, i32 noundef %i.o, i32 noundef %i.bc, i32 noundef %.1.lcssa.i)
  br label %bb.bi

bb.e:                                             ; preds = %bb.a
  %i.bd = getelementptr i8, ptr %1, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1533 ; 4 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !538
  %i.bh = getelementptr i8, ptr %i.bg, i64 592
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !793
  %i.bj = icmp ugt i32 %i.be, %i.bi
  br i1 %i.bj, label %bb.g, label %pm_constant_id_lookup.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.be) #38
  unreachable

pm_constant_id_lookup.exit:                       ; preds = %bb.f
  %i.bk = getelementptr i8, ptr %5, i64 120
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !499
  %i.bm = add i32 %i.be, -1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !36 ; 3 uses
  %i.bq = tail call i64 @rb_id2sym(i64 noundef %i.bp) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.br = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !20
  %i.bt = getelementptr i8, ptr %i.bs, i64 160
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1035 ; 3 uses
  %.not.i207 = icmp eq ptr %i.bu, null
  br i1 %.not.i207, label %ISEQ_COMPILE_DATA.exit14.i, label %bb.h

bb.h:                                             ; preds = %pm_constant_id_lookup.exit
  %i.bv = call i32 @rb_id_table_lookup(ptr noundef nonnull %i.bu, i64 noundef %i.bp, ptr noundef nonnull %i.a) #37
  %.not11.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i, label %bb.i, label %get_cvar_ic_value.exit

ISEQ_COMPILE_DATA.exit14.i:                       ; preds = %pm_constant_id_lookup.exit
  %i.bw = tail call ptr @rb_id_table_create(i64 noundef 1) #37 ; 2 uses
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !20
  %i.by = getelementptr i8, ptr %i.bx, i64 160
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !1035
  br label %bb.i

bb.i:                                             ; preds = %ISEQ_COMPILE_DATA.exit14.i, %bb.h
  %.0.i = phi ptr [ %i.bu, %bb.h ], [ %i.bw, %ISEQ_COMPILE_DATA.exit14.i ]
  %i.bz = getelementptr i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43
  %i.cb = getelementptr i8, ptr %i.ca, i64 256    ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !122 ; 2 uses
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !122
  %i.ce = zext i32 %i.cc to i64
  %i.cf = shl nuw nsw i64 %i.ce, 1
  %i.cg = or disjoint i64 %i.cf, 1                ; 2 uses
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !36
  %i.ch = call i32 @rb_id_table_insert(ptr noundef %.0.i, i64 noundef %i.bp, i64 noundef %i.cg) #37 ; 0 uses
  br label %get_cvar_ic_value.exit

get_cvar_ic_value.exit:                           ; preds = %bb.h, %bb.i
  %.09.i = load i64, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ci = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %i.o, i32 noundef 11, i32 noundef 2, i64 noundef %i.bq, i64 noundef %.09.i) ; 3 uses
  %i.cj = getelementptr i8, ptr %3, i64 24        ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !34
  %i.cm = getelementptr i8, ptr %i.ck, i64 8
  store ptr %i.ci, ptr %i.cm, align 8, !tbaa !35
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !11
  br label %bb.bi

bb.j:                                             ; preds = %bb.a
  %i.cn = getelementptr i8, ptr %1, i64 24
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !1535 ; 4 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = load ptr, ptr %i.e, align 8, !tbaa !538
  %i.cr = getelementptr i8, ptr %i.cq, i64 592
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !793
  %i.ct = icmp ugt i32 %i.co, %i.cs
  br i1 %i.ct, label %bb.l, label %pm_constant_id_lookup.exit208

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.co) #38
  unreachable

pm_constant_id_lookup.exit208:                    ; preds = %bb.k
  %i.cu = getelementptr i8, ptr %5, i64 120
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !499
  %i.cw = add i32 %i.co, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr [8 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !36
  %i.da = tail call i64 @rb_id2sym(i64 noundef %i.cz) #37
  %i.db = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.l, i32 noundef %i.o, i32 noundef 20, i32 noundef 1, i64 noundef 7) ; 3 uses
  %i.dc = getelementptr i8, ptr %3, i64 24        ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !11 ; 2 uses
  %i.de = getelementptr i8, ptr %i.db, i64 16
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !34
  %i.df = getelementptr i8, ptr %i.dd, i64 8
  store ptr %i.db, ptr %i.df, align 8, !tbaa !35
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !11
  %i.dg = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.l, i32 noundef %i.o, i32 noundef 14, i32 noundef 1, i64 noundef %i.da) ; 3 uses
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !11 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dg, i64 16
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !34
  %i.dj = getelementptr i8, ptr %i.dh, i64 8
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !35
  store ptr %i.dg, ptr %i.dc, align 8, !tbaa !11
  br label %bb.bi

bb.m:                                             ; preds = %bb.a
  %i.dk = getelementptr i8, ptr %1, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !1537 ; 4 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !538
  %i.do = getelementptr i8, ptr %i.dn, i64 592
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !793
  %i.dq = icmp ugt i32 %i.dl, %i.dp
  br i1 %i.dq, label %bb.o, label %pm_constant_id_lookup.exit209

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.dl) #38
  unreachable

pm_constant_id_lookup.exit209:                    ; preds = %bb.n
  %i.dr = getelementptr i8, ptr %5, i64 120
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !499
  %i.dt = add i32 %i.dl, -1
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr [8 x i8], ptr %i.ds, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !36
  %i.dx = tail call i64 @rb_id2sym(i64 noundef %i.dw) #37
  %i.dy = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.l, i32 noundef %i.o, i32 noundef 16, i32 noundef 1, i64 noundef %i.dx) ; 3 uses
  %i.dz = getelementptr i8, ptr %3, i64 24        ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !11 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dy, i64 16
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !34
  %i.ec = getelementptr i8, ptr %i.ea, i64 8
  store ptr %i.dy, ptr %i.ec, align 8, !tbaa !35
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !11
  br label %bb.bi

bb.p:                                             ; preds = %bb.a
  %i.ed = getelementptr i8, ptr %1, i64 24
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !1539 ; 4 uses
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !538
  %i.eh = getelementptr i8, ptr %i.eg, i64 592
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !793
  %i.ej = icmp ugt i32 %i.ee, %i.ei
  br i1 %i.ej, label %bb.r, label %pm_constant_id_lookup.exit210

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.ee) #38
end_hunk_7
