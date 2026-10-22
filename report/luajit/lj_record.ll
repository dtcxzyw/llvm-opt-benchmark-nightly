Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_record?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@lj_record_idx:bb.a
  %spec.select = select i1 %i.ke, i32 %i.kg, i32 %.0215
  br label %lj_record_call.exit

bb.be:                                            ; preds = %bb.au
  %i.kh = load i64, ptr %1, align 8, !tbaa !9
  %i.ki = and i64 %i.kh, 140737488355327
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !9  ; 3 uses
  %i.km = inttoptr i64 %i.kl to ptr
  %i.kn = load i32, ptr %i.d, align 4, !tbaa !74  ; 2 uses
  %i.ko = icmp ult i32 %.mask, %.0265
  br i1 %i.ko, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @lj_ir_rollback(ptr noundef nonnull %0, i32 noundef %.0265) #8
  store i8 %.sroa.0.0, ptr %i.k, align 2, !tbaa !9
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.kp = load i64, ptr %i.ji, align 8, !tbaa !9
  %i.kq = icmp eq i64 %i.kp, -1
  br i1 %i.kq, label %bb.bh, label %bb.bx

bb.bh:                                            ; preds = %bb.bg
  %i.kr = load i32, ptr %i.n, align 4, !tbaa !76
  %i.ks = icmp ne i32 %i.kr, 0
  %i.kt = icmp ne i64 %i.kl, 0
  %or.cond = select i1 %i.ks, i1 %i.kt, i1 false
  br i1 %or.cond, label %bb.bi, label %.critedge

bb.bi:                                            ; preds = %bb.bh
  %i.ku = load i64, ptr %i.o, align 8, !tbaa !71
  %i.kv = inttoptr i64 %i.ku to ptr
  %i.kw = tail call ptr @lj_tab_getstr(ptr noundef nonnull %i.km, ptr noundef %i.kv) #8 ; 2 uses
  %.not237 = icmp eq ptr %i.kw, null
  br i1 %.not237, label %.critedge, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !9
  %.not239 = icmp eq i64 %i.kx, -1
  br i1 %.not239, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.tr = trunc nuw nsw i32 %i.jc to i16
  %i.ky = shl nuw nsw i16 %.tr, 8
  %i.kz = or disjoint i16 %i.ky, 128
  br label %.sink.split

.critedge:                                        ; preds = %bb.bh, %bb.bi, %bb.bj
  %i.la = icmp eq i8 %i.ja, 58
  br i1 %i.la, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.critedge
  %i.lb = icmp eq ptr %i.ji, %i.l
  %i.lc = select i1 %i.lb, i16 2185, i16 2441
  %i.ld = tail call i32 @lj_ir_kptr_(ptr noundef nonnull %0, i32 noundef 26, ptr noundef nonnull %i.l) #8
  %i.le = trunc i32 %i.ld to i16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bk, %bb.bl
  %.sink409 = phi i16 [ %i.lc, %bb.bl ], [ %i.kz, %bb.bk ]
  %.sink = phi i16 [ %i.le, %bb.bl ], [ 0, %bb.bk ]
  store i16 %.sink409, ptr %i.h, align 4, !tbaa !9
  store i16 %i.iw, ptr %i.g, align 8, !tbaa !9
  store i16 %.sink, ptr %i.i, align 2, !tbaa !9
  %i.lf = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split, %.critedge
  %i.lg = load i32, ptr %i.n, align 4, !tbaa !76
  %.not240 = icmp eq i32 %i.lg, 0
  br i1 %.not240, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lh = tail call i32 @lj_record_mm_lookup(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1)
  %.not241 = icmp eq i32 %i.lh, 0
  br i1 %.not241, label %bb.bo, label %.thread

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.li = lshr i32 %i.kn, 24
  %i.lj = and i32 %i.li, 31
  %i.lk = add nsw i32 %i.lj, -4
  %i.ll = icmp ult i32 %i.lk, 9
  %i.lm = and i32 %i.jj, 520093696
  %i.ln = icmp ne i32 %i.lm, 0
  %narrow.le = and i1 %i.ln, %i.ll
  %i.lo = icmp eq ptr %i.ji, %i.l
  br i1 %i.lo, label %bb.bp, label %.thread271

bb.bp:                                            ; preds = %bb.bo
  %i.lp = load i32, ptr %i.d, align 4, !tbaa !74  ; 8 uses
  %i.lq = lshr i32 %i.lp, 24
  %i.lr = and i32 %i.lq, 31
  %i.ls = add nsw i32 %i.lr, -15
  %i.lt = icmp ult i32 %i.ls, 5
  br i1 %i.lt, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lu = trunc i32 %i.lp to i16
  store i16 23310, ptr %i.h, align 4, !tbaa !9
  store i16 %i.lu, ptr %i.g, align 8, !tbaa !9
  store i16 467, ptr %i.i, align 2, !tbaa !9
  %i.lv = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.bw

bb.br:                                            ; preds = %bb.bp
  %i.lw = and i32 %i.lp, 520093696
  %i.lx = icmp eq i32 %i.lw, 234881024
  br i1 %i.lx, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.ly = and i32 %i.lp, 32768
  %.not242.not = icmp eq i32 %i.ly, 0
  br i1 %.not242.not, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.lz = load i64, ptr %i.c, align 8, !tbaa !9
  %i.ma = icmp eq i64 %i.lz, -9223372036854775808
  br i1 %i.ma, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.mb = tail call i32 @lj_ir_knum_u64(ptr noundef nonnull %0, i64 noundef 0) #8
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bs
  %i.mc = trunc i32 %i.lp to i16                  ; 2 uses
  store i16 2190, ptr %i.h, align 4, !tbaa !9
  store i16 %i.mc, ptr %i.g, align 8, !tbaa !9
  store i16 %i.mc, ptr %i.i, align 2, !tbaa !9
  %i.md = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.br, %bb.bt, %bb.bu, %bb.bv, %bb.bq
  %.0210 = phi i32 [ %i.lv, %bb.bq ], [ %i.mb, %bb.bu ], [ %i.lp, %bb.bt ], [ %i.lp, %bb.bv ], [ %i.lp, %bb.br ]
  %i.me = load i32, ptr %i.a, align 8, !tbaa !49
  %i.mf = trunc i32 %i.me to i16
  %i.mg = trunc i32 %.0210 to i16
  store i16 15113, ptr %i.h, align 4, !tbaa !9
  store i16 %i.mf, ptr %i.g, align 8, !tbaa !9
  store i16 %i.mg, ptr %i.i, align 2, !tbaa !9
  %i.mh = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %.thread271

bb.bx:                                            ; preds = %bb.bg
  %i.mi = lshr i32 %i.kn, 24
  %i.mj = and i32 %i.mi, 31
  %i.mk = add nsw i32 %i.mj, -4
  %i.ml = icmp ult i32 %i.mk, 9
  %i.mm = and i32 %i.jj, 520093696
  %i.mn = icmp ne i32 %i.mm, 0
  %narrow.le332 = and i1 %i.mn, %i.ml             ; 3 uses
  %i.mo = trunc nuw nsw i32 %i.jc to i16
  %i.mp = tail call i32 @lj_opt_fwd_wasnonnil(ptr noundef nonnull %0, i16 noundef zeroext %i.mo, i32 noundef %.mask) #8
  %.not234 = icmp eq i32 %i.mp, 0
  br i1 %.not234, label %bb.by, label %.thread271

bb.by:                                            ; preds = %bb.bx
  %i.mq = icmp eq i8 %i.ja, 58
  br i1 %i.mq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.mr = tail call i32 @lj_ir_kptr_(ptr noundef nonnull %0, i32 noundef 26, ptr noundef nonnull %i.l) #8
  %i.ms = trunc i32 %i.mr to i16
  store i16 2441, ptr %i.h, align 4, !tbaa !9
  store i16 %i.iw, ptr %i.g, align 8, !tbaa !9
  store i16 %i.ms, ptr %i.i, align 2, !tbaa !9
  %i.mt = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.mu = load i32, ptr %i.n, align 4, !tbaa !76
  %.not235 = icmp eq i32 %i.mu, 0
  br i1 %.not235, label %.thread271, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not236 = icmp eq i64 %i.kl, 0
  br i1 %.not236, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.mv = load i32, ptr %i.a, align 8, !tbaa !49
  %i.mw = trunc i32 %i.mv to i16
  store i16 17675, ptr %i.h, align 4, !tbaa !9
  store i16 %i.mw, ptr %i.g, align 8, !tbaa !9
  store i16 5, ptr %i.i, align 2, !tbaa !9
  %i.mx = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.my = trunc i32 %i.mx to i16
  %i.mz = tail call i32 @lj_ir_knull(ptr noundef nonnull %0, i32 noundef 11) #8
  %i.na = trunc i32 %i.mz to i16
  store i16 2187, ptr %i.h, align 4, !tbaa !9
  store i16 %i.my, ptr %i.g, align 8, !tbaa !9
  store i16 %i.na, ptr %i.i, align 2, !tbaa !9
  %i.nb = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %.thread271

bb.cd:                                            ; preds = %bb.cb
  %i.nc = load i64, ptr %i.ji, align 8, !tbaa !9
  %i.nd = ashr i64 %i.nc, 47                      ; 2 uses
  %i.ne = icmp ult i64 %i.nd, -14
  %i.nf = trunc nsw i64 %i.nd to i32
  %i.ng = shl nuw nsw i32 %i.jc, 8
  %2 = xor i32 %i.nf, 48511
  %i.nh = select i1 %i.ne, i32 142, i32 %2
  %3 = or i32 %i.nh, %i.ng
  %i.ni = trunc i32 %3 to i16
  store i16 %i.ni, ptr %i.h, align 4, !tbaa !9
  store i16 %i.iw, ptr %i.g, align 8, !tbaa !9
  store i16 0, ptr %i.i, align 2, !tbaa !9
  %i.nj = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %.thread271

.thread271:                                       ; preds = %bb.bo, %bb.bw, %bb.bx, %bb.cc, %bb.cd, %bb.ca
  %.2214.shrunk = phi i1 [ false, %bb.bx ], [ %narrow.le332, %bb.ca ], [ %narrow.le332, %bb.cd ], [ %narrow.le332, %bb.cc ], [ %narrow.le, %bb.bo ], [ false, %bb.bw ]
  %.2209 = phi i32 [ %.5.i, %bb.bx ], [ %.5.i, %bb.ca ], [ %.5.i, %bb.cd ], [ %.5.i, %bb.cc ], [ %.5.i, %bb.bo ], [ %i.mh, %bb.bw ]
  %i.nk = load i32, ptr %i.b, align 8, !tbaa !75  ; 3 uses
  %i.nl = lshr i32 %i.nk, 24
  %i.nm = and i32 %i.nl, 31                       ; 2 uses
  %i.nn = add nsw i32 %i.nm, -15
  %i.no = icmp ult i32 %i.nn, 5
  br i1 %i.no, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.thread271
  %i.np = trunc i32 %i.nk to i16
  store i16 23310, ptr %i.h, align 4, !tbaa !9
  store i16 %i.np, ptr %i.g, align 8, !tbaa !9
  store i16 467, ptr %i.i, align 2, !tbaa !9
  %i.nq = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 3 uses
  store i32 %i.nq, ptr %i.b, align 8, !tbaa !75
  %.pre369 = lshr i32 %i.nq, 24
  %.pre370 = and i32 %.pre369, 31
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.thread271
  %.pre-phi371 = phi i32 [ %.pre370, %bb.ce ], [ %i.nm, %.thread271 ]
  %i.nr = phi i32 [ %i.nq, %bb.ce ], [ %i.nk, %.thread271 ]
  %i.ns = shl nuw nsw i32 %i.jc, 8
  %i.nt = or disjoint i32 %.pre-phi371, %i.ns
  %i.nu = trunc nuw nsw i32 %i.nt to i16
  %i.nv = or disjoint i16 %i.nu, 2048
  %i.nw = trunc i32 %.2209 to i16
  %i.nx = trunc i32 %i.nr to i16
  store i16 %i.nv, ptr %i.h, align 4, !tbaa !9
  store i16 %i.nw, ptr %i.g, align 8, !tbaa !9
  store i16 %i.nx, ptr %i.i, align 2, !tbaa !9
  %i.ny = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br i1 %.2214.shrunk, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nz = load i32, ptr %i.b, align 8, !tbaa !75
  %i.oa = lshr i32 %i.nz, 24
  %i.ob = and i32 %i.oa, 31
  %i.oc = add nsw i32 %i.ob, -4
  %i.od = icmp ult i32 %i.oc, 9
  br i1 %i.od, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.oe = load i32, ptr %i.a, align 8, !tbaa !49
  %i.of = trunc i32 %i.oe to i16
  store i16 22528, ptr %i.h, align 4, !tbaa !9
  store i16 %i.of, ptr %i.g, align 8, !tbaa !9
  store i16 0, ptr %i.i, align 2, !tbaa !9
  %i.og = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.oh = load i32, ptr %i.d, align 4, !tbaa !74  ; 3 uses
  %i.oi = and i32 %i.oh, 520093696
  %i.oj = icmp eq i32 %i.oi, 67108864
  br i1 %i.oj, label %bb.cj, label %nommstr.exit.thread278

bb.cj:                                            ; preds = %bb.ci
  %i.ok = and i32 %i.oh, 32768
  %.not.not.i262 = icmp eq i32 %i.ok, 0
  br i1 %.not.not.i262, label %bb.ck, label %nommstr.exit.thread

bb.ck:                                            ; preds = %bb.cj
  %i.ol = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.om = and i32 %i.oh, 32767
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !9  ; 6 uses
  %i.or = getelementptr inbounds i8, ptr %0, i64 -312
  %i.os = load i64, ptr %i.or, align 8, !tbaa !71
  %i.ot = icmp eq i64 %i.os, %i.oq
  br i1 %i.ot, label %nommstr.exit.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ou = load i64, ptr %i.o, align 8, !tbaa !71
  %i.ov = icmp eq i64 %i.ou, %i.oq
  br i1 %i.ov, label %nommstr.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ow = getelementptr inbounds i8, ptr %0, i64 -296
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !71
  %i.oy = icmp eq i64 %i.ox, %i.oq
  br i1 %i.oy, label %nommstr.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.oz = getelementptr inbounds i8, ptr %0, i64 -288
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !71
  %i.pb = icmp eq i64 %i.pa, %i.oq
  br i1 %i.pb, label %nommstr.exit.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pc = getelementptr inbounds i8, ptr %0, i64 -280
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !71
  %i.pe = icmp eq i64 %i.pd, %i.oq
  br i1 %i.pe, label %nommstr.exit.thread, label %nommstr.exit

nommstr.exit:                                     ; preds = %bb.co
  %i.pf = getelementptr inbounds i8, ptr %0, i64 -272
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !71
  %.not285 = icmp eq i64 %i.pg, %i.oq
  br i1 %.not285, label %nommstr.exit.thread, label %nommstr.exit.thread278

nommstr.exit.thread:                              ; preds = %bb.co, %bb.cm, %bb.cl, %bb.cn, %bb.ck, %bb.cj, %nommstr.exit
  %i.ph = load i32, ptr %i.a, align 8, !tbaa !49
  %i.pi = trunc i32 %i.ph to i16
  store i16 15881, ptr %i.h, align 4, !tbaa !9
  store i16 %i.pi, ptr %i.g, align 8, !tbaa !9
  store i16 10, ptr %i.i, align 2, !tbaa !9
  %i.pj = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.pk = trunc i32 %i.pj to i16
  %i.pl = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 0) #8
  %i.pm = trunc i32 %i.pl to i16
  store i16 19728, ptr %i.h, align 4, !tbaa !9
  store i16 %i.pk, ptr %i.g, align 8, !tbaa !9
  store i16 %i.pm, ptr %i.i, align 2, !tbaa !9
  %i.pn = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %nommstr.exit.thread278

nommstr.exit.thread278:                           ; preds = %bb.ci, %nommstr.exit, %nommstr.exit.thread
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 1, ptr %i.po, align 1, !tbaa !40
  br label %lj_record_call.exit

lj_record_call.exit:                              ; preds = %bb.bc, %bb.bb, %bb.aa, %bb.ab, %lj_record_constify.exit, %bb.bd, %nommstr.exit.thread278, %bb.h, %bb.f
  %.7 = phi i32 [ 0, %nommstr.exit.thread278 ], [ 0, %bb.f ], [ 0, %bb.h ], [ %spec.select, %bb.bd ], [ 32767, %bb.ab ], [ 32767, %bb.bc ], [ 32767, %bb.bb ], [ 32767, %bb.aa ], [ %.0.i260, %lj_record_constify.exit ]
  ret i32 %.7
}

declare hidden void @lj_ir_rollback(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare hidden i32 @lj_ir_knum_u64(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @lj_opt_fwd_wasnonnil(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 1, 3) i32 @lj_record_next(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = and i64 %i.a, 140737488355327
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !9    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !79   ; 4 uses
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !126
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = zext i32 %i.e to i64
  %wide.trip.count.i = zext i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.l, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 2 uses
  %.not24.not.i = icmp eq i64 %i.n, -1
  br i1 %.not24.not.i, label %bb.d, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.o = ashr i64 %i.n, 47                        ; 2 uses
  %i.p = icmp ult i64 %i.o, -14
  %i.q = trunc nsw i64 %i.o to i32
  %i.r = xor i32 %i.q, -1
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = or disjoint i32 %i.s, 14
  %i.u = select i1 %i.p, i32 3598, i32 %i.t
  br label %rec_next_types.exit

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !124

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  %.019.lcssa.i = phi i32 [ %i.e, %bb.a ], [ %i.g, %bb.d ]
  %i.v = sub nuw i32 %.019.lcssa.i, %i.g          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !80   ; 2 uses
  %.not40.i = icmp ugt i32 %i.v, %i.x
  br i1 %.not40.i, label %rec_next_types.exit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %._crit_edge.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !81
end_hunk_0
