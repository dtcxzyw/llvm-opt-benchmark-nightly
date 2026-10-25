Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/to_chars?download=true
inline.NumInlined: 709
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost8charconv6detail3ryuL16generic_to_charsENS2_20floating_decimal_128EPclNS0_12chars_formatEi:bb.a
.thread:                                          ; preds = %.loopexit
  %i.cd = sub nsw i32 1, %i.bz
  store i8 45, ptr %i.cc, align 1, !tbaa !20
  br label %.lr.ph.i.preheader

bb.ab:                                            ; preds = %.loopexit
  %i.ce = add nsw i32 %i.bz, -1                   ; 2 uses
  store i8 43, ptr %i.cc, align 1, !tbaa !20
  %.not5.i = icmp eq i32 %i.ce, 0
  br i1 %.not5.i, label %._crit_edge158, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread, %bb.ab
  %.0113192 = phi i32 [ %i.cd, %.thread ], [ %i.ce, %bb.ab ] ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %.lr.ph.i ] ; 2 uses
  %.07.i = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.cg, %.lr.ph.i ] ; 2 uses
  %.046.i = phi i32 [ %.0113192, %.lr.ph.i.preheader ], [ %i.cf, %.lr.ph.i ] ; 2 uses
  %i.cf = udiv i32 %.046.i, 10
  %i.cg = add nuw i32 %.07.i, 1                   ; 5 uses
  %i.ch = icmp ult i32 %.046.i, 10
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ch, label %.lr.ph157, label %.lr.ph.i, !llvm.loop !0

.lr.ph157:                                        ; preds = %.lr.ph.i
  %i.ci = icmp eq i32 %.07.i, 0
  %i.cj = zext i32 %i.cg to i64                   ; 4 uses
  br i1 %i.ci, label %._crit_edge158.loopexit, label %.lr.ph157.split

.lr.ph157.split:                                  ; preds = %.lr.ph157
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.cj
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.5190 ; 3 uses
  %xtraiter = and i64 %i.cj, 1
  %i.ck = icmp eq i64 %indvar, 0
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph157.split.new

.lr.ph157.split.new:                              ; preds = %.lr.ph157.split
  %unroll_iter = and i64 %i.cj, 4294967294
  br label %bb.ac

._crit_edge158.loopexit:                          ; preds = %.lr.ph157
  %i.cl = getelementptr i8, ptr %1, i64 %.4
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.cj
  %scevgep = getelementptr i8, ptr %i.cm, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %.5190
  store i8 48, ptr %i.cn, align 1, !tbaa !20
  %i.co = urem i32 %.0113192, 10
  %i.cp = trunc nuw nsw i32 %i.co to i8
  %i.cq = or disjoint i8 %i.cp, 48
  store i8 %i.cq, ptr %scevgep, align 1, !tbaa !20
  %i.cr = add i64 %.4, 3
  br label %._crit_edge158.thread

bb.ac:                                            ; preds = %bb.ac, %.lr.ph157.split.new
  %indvars.iv169 = phi i64 [ 0, %.lr.ph157.split.new ], [ %indvars.iv.next170.1, %bb.ac ] ; 3 uses
  %.1114155 = phi i32 [ %.0113192, %.lr.ph157.split.new ], [ %i.cz, %bb.ac ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph157.split.new ], [ %niter.next.1, %bb.ac ]
  %i.cs = urem i32 %.1114155, 10
  %i.ct = udiv i32 %.1114155, 10
  %i.cu = trunc nuw nsw i32 %i.cs to i8
  %i.cv = or disjoint i8 %i.cu, 48
  %i.cw = xor i64 %indvars.iv169, -1
  %i.cx = getelementptr i8, ptr %gep, i64 %i.cw
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !20
  %i.cy = urem i32 %i.ct, 10
  %i.cz = udiv i32 %.1114155, 100                 ; 2 uses
  %i.da = trunc nuw nsw i32 %i.cy to i8
  %i.db = or disjoint i8 %i.da, 48
  %i.dc = xor i64 %indvars.iv169, -2
  %i.dd = getelementptr i8, ptr %gep, i64 %i.dc
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !20
  %indvars.iv.next170.1 = add nuw nsw i64 %indvars.iv169, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge158.thread.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !36

._crit_edge158:                                   ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %.5190 ; 2 uses
  store i8 48, ptr %i.de, align 1, !tbaa !20
  %i.df = add i64 %.4, 4
  %i.dg = getelementptr i8, ptr %i.de, i64 1
  store i8 48, ptr %i.dg, align 1, !tbaa !20
  br label %._crit_edge158.thread

._crit_edge158.thread.loopexit.unr-lcssa:         ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge158.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge158.thread.loopexit.unr-lcssa, %.lr.ph157.split
  %indvars.iv169.epil.init = phi i64 [ 0, %.lr.ph157.split ], [ %indvars.iv.next170.1, %._crit_edge158.thread.loopexit.unr-lcssa ]
  %.1114155.epil.init = phi i32 [ %.0113192, %.lr.ph157.split ], [ %i.cz, %._crit_edge158.thread.loopexit.unr-lcssa ]
  %lcmp.mod218 = trunc i32 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.dh = urem i32 %.1114155.epil.init, 10
  %i.di = trunc nuw nsw i32 %i.dh to i8
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = xor i64 %indvars.iv169.epil.init, -1
  %i.dl = getelementptr i8, ptr %gep, i64 %i.dk
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !20
  br label %._crit_edge158.thread

._crit_edge158.thread:                            ; preds = %.epil.preheader, %._crit_edge158.thread.loopexit.unr-lcssa, %._crit_edge158.loopexit, %._crit_edge158
  %.0.lcssa.i200205 = phi i32 [ 0, %._crit_edge158 ], [ 1, %._crit_edge158.loopexit ], [ %i.cg, %._crit_edge158.thread.loopexit.unr-lcssa ], [ %i.cg, %.epil.preheader ]
  %.8 = phi i64 [ %i.df, %._crit_edge158 ], [ %i.cr, %._crit_edge158.loopexit ], [ %.5190, %._crit_edge158.thread.loopexit.unr-lcssa ], [ %.5190, %.epil.preheader ]
  %i.dm = trunc i64 %.8 to i32
  %i.dn = add i32 %.0.lcssa.i200205, %i.dm
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit207: ; preds = %.lr.ph214
  %i.do = trunc nuw nsw i64 %indvars.iv213 to i32
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit: ; preds = %.preheader151, %.preheader151.preheader, %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit207, %bb.q, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.aa, %bb.t, %bb.s, %._crit_edge158.thread
  %.3 = phi i32 [ -1, %bb.aa ], [ %i.r, %bb.q ], [ -2, %bb.t ], [ -75, %bb.s ], [ %i.dn, %._crit_edge158.thread ], [ 10, %bb.e ], [ -1, %bb.j ], [ 9, %bb.g ], [ -1, %bb.d ], [ 9, %bb.i ], [ -1, %bb.f ], [ 3, %bb.k ], [ -1, %bb.h ], [ %i.k, %bb.m ], [ -1, %bb.l ], [ %i.r, %bb.p ], [ %i.do, %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit207 ], [ 1, %.preheader151.preheader ], [ 1, %.preheader151 ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail12to_chars_hexIeEENS0_15to_chars_resultEPcS4_T_i(ptr noundef %0, ptr noundef %1, x86_fp80 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i8], align 2                ; 8 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %.not = icmp eq i32 %3, -1                      ; 3 uses
  %spec.select = select i1 %.not, i32 18, i32 %3  ; 20 uses
  %i.e = sext i32 %spec.select to i64
  %i.f = icmp slt i64 %i.d, %i.e
  %i.g = icmp ugt ptr %0, %1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = bitcast x86_fp80 %2 to i80               ; 2 uses
  %.sroa.0.8.extract.shift.i = lshr i80 %i.h, 64
  %.sroa.0.8.extract.trunc.i = trunc nuw nsw i80 %.sroa.0.8.extract.shift.i to i64
  %.sroa.0.0.extract.trunc.i = trunc i80 %i.h to i64 ; 6 uses
  %i.i = and i64 %.sroa.0.8.extract.trunc.i, 32767 ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  %.not226 = icmp eq i64 %.sroa.0.0.extract.trunc.i, 0
  %or.cond227 = or i1 %.not226, %i.j
  %i.k = add nsw i64 %i.i, -16383
  %.0123 = select i1 %or.cond227, i64 %i.k, i64 -16382 ; 3 uses
  %i.l = add nsw i64 %.0123, 32767
  %smin = tail call i64 @llvm.smin.i64(i64 %.0123, i64 16383)
  %i.m = sub nsw i64 %i.l, %smin
  %i.n = and i64 %i.m, -32768
  %i.o = sub nsw i64 %.0123, %i.n                 ; 2 uses
  %i.p = icmp slt i64 %i.o, 3                     ; 2 uses
  %i.q = trunc nsw i64 %i.o to i32                ; 2 uses
  %i.r = sub nsw i32 3, %i.q
  %i.s = add nsw i32 %i.q, -3
  %i.t = select i1 %i.p, i32 %i.r, i32 %i.s       ; 10 uses
  %i.u = fcmp olt x86_fp80 %2, 0.000000e+00       ; 2 uses
  %i.v = icmp ugt i32 %i.t, 9999                  ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = icmp ugt i32 %i.t, 9999999
  %spec.select225 = select i1 %i.w, i32 10, i32 5
  br label %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit

bb.d:                                             ; preds = %bb.b
  %i.x = icmp samesign ugt i32 %i.t, 99
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = icmp samesign ugt i32 %i.t, 999
  %.12.i.i = select i1 %i.y, i32 4, i32 3
  br label %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit

bb.f:                                             ; preds = %bb.d
  %i.z = icmp samesign ugt i32 %i.t, 9
  %.13.i.i = select i1 %i.z, i32 2, i32 1
  br label %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit

_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i = phi i32 [ %spec.select225, %bb.c ], [ %.12.i.i, %bb.e ], [ %.13.i.i, %bb.f ]
  %i.aa = select i1 %i.u, i32 4, i32 3
  %i.ab = add i32 %i.aa, %spec.select
  %i.ac = add nsw i32 %i.ab, %.0.i.i
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %i.d, %i.ad
  br i1 %i.ae, label %bb.t, label %bb.g

bb.g:                                             ; preds = %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit
  %i.af = icmp slt i32 %spec.select, 15
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = shl i32 %spec.select, 2                 ; 2 uses
  %i.ah = sub i32 60, %i.ag                       ; 2 uses
  %i.ai = shl i64 %.sroa.0.0.extract.trunc.i, 1   ; 2 uses
  %i.aj = add i64 %i.ai, -2
  %i.ak = or i64 %i.aj, %.sroa.0.0.extract.trunc.i
  %i.al = icmp sgt i32 %i.ah, 63
  br i1 %i.al, label %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit, label %4

4:                                                ; preds = %bb.h
  %5 = icmp eq i32 %i.ag, 60
  br i1 %5, label %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit, label %6

6:                                                ; preds = %4
  %7 = zext nneg i32 %i.ah to i64
  %8 = shl nuw i64 1, %7
  br label %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit

_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit:  ; preds = %bb.h, %4, %6
  %.sroa.4.0.i = phi i64 [ 1, %4 ], [ %8, %6 ], [ 0, %bb.h ]
  %9 = and i64 %i.ak, %.sroa.4.0.i
  %10 = and i64 %9, %i.ai
  %11 = add i64 %10, %.sroa.0.0.extract.trunc.i
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit, %bb.g
  %.sroa.14.1 = phi i64 [ %11, %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit ], [ %.sroa.0.0.extract.trunc.i, %bb.g ] ; 15 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.am, %bb.j ], [ %0, %bb.i ]   ; 18 uses
  %i.an = lshr i64 %.sroa.0.0.extract.trunc.i, 60
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.ap, ptr %.0, align 1, !tbaa !20
  %i.ar = icmp sgt i32 %spec.select, 0
  br i1 %i.ar, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit, label %.thread

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit:  ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 46, ptr %i.aq, align 1, !tbaa !20
  %i.at = lshr i64 %.sroa.14.1, 56
  %i.au = and i64 %i.at, 15
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %.0, i64 3 ; 2 uses
  store i8 %i.aw, ptr %i.as, align 1, !tbaa !20
  %i.ay = icmp eq i32 %spec.select, 1
  br i1 %i.ay, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit
  %i.az = lshr i64 %.sroa.14.1, 52
  %i.ba = and i64 %i.az, 15
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 2 uses
  store i8 %i.bc, ptr %i.ax, align 1, !tbaa !20
  %i.be = icmp eq i32 %spec.select, 2
  br i1 %i.be, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2

bb.l:                                             ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.14
  br i1 %.not, label %.preheader.preheader, label %.thread.thread

.thread.thread:                                   ; preds = %bb.l
  %i.bf = zext nneg i32 %i.ef to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ee, i8 48, i64 %i.bf, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.bf
  br label %.loopexit

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1
  %i.bh = lshr i64 %.sroa.14.1, 48
  %i.bi = and i64 %i.bh, 15
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %.0, i64 5 ; 2 uses
  store i8 %i.bk, ptr %i.bd, align 1, !tbaa !20
  %i.bm = icmp eq i32 %spec.select, 3
  br i1 %i.bm, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2
  %i.bn = lshr i64 %.sroa.14.1, 44
  %i.bo = and i64 %i.bn, 15
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %.0, i64 6 ; 2 uses
  store i8 %i.bq, ptr %i.bl, align 1, !tbaa !20
  %i.bs = icmp eq i32 %spec.select, 4
  br i1 %i.bs, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3
  %i.bt = lshr i64 %.sroa.14.1, 40
  %i.bu = and i64 %i.bt, 15
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %.0, i64 7 ; 2 uses
  store i8 %i.bw, ptr %i.br, align 1, !tbaa !20
  %i.by = icmp eq i32 %spec.select, 5
  br i1 %i.by, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.5

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.5: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4
  %i.bz = lshr i64 %.sroa.14.1, 36
  %i.ca = and i64 %i.bz, 15
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  store i8 %i.cc, ptr %i.bx, align 1, !tbaa !20
  %i.ce = icmp eq i32 %spec.select, 6
  br i1 %i.ce, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.6

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.6: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.5
  %i.cf = lshr i64 %.sroa.14.1, 32
  %i.cg = and i64 %i.cf, 15
  %i.ch = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 9 ; 2 uses
  store i8 %i.ci, ptr %i.cd, align 1, !tbaa !20
  %i.ck = icmp eq i32 %spec.select, 7
  br i1 %i.ck, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.7

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.7: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.6
  %i.cl = lshr i64 %.sroa.14.1, 28
  %i.cm = and i64 %i.cl, 15
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !20
  %i.cp = getelementptr inbounds nuw i8, ptr %.0, i64 10 ; 2 uses
  store i8 %i.co, ptr %i.cj, align 1, !tbaa !20
  %i.cq = icmp eq i32 %spec.select, 8
  br i1 %i.cq, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.8

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.8: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.7
  %i.cr = lshr i64 %.sroa.14.1, 24
  %i.cs = and i64 %i.cr, 15
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %.0, i64 11 ; 2 uses
  store i8 %i.cu, ptr %i.cp, align 1, !tbaa !20
  %i.cw = icmp eq i32 %spec.select, 9
  br i1 %i.cw, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.9

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.9: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.8
  %i.cx = lshr i64 %.sroa.14.1, 20
  %i.cy = and i64 %i.cx, 15
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %.0, i64 12 ; 2 uses
  store i8 %i.da, ptr %i.cv, align 1, !tbaa !20
  %i.dc = icmp eq i32 %spec.select, 10
  br i1 %i.dc, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.10

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.10: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.9
  %i.dd = lshr i64 %.sroa.14.1, 16
  %i.de = and i64 %i.dd, 15
  %i.df = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %.0, i64 13 ; 2 uses
  store i8 %i.dg, ptr %i.db, align 1, !tbaa !20
  %i.di = icmp eq i32 %spec.select, 11
  br i1 %i.di, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.11

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.11: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.10
  %i.dj = lshr i64 %.sroa.14.1, 12
  %i.dk = and i64 %i.dj, 15
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %.0, i64 14 ; 2 uses
  store i8 %i.dm, ptr %i.dh, align 1, !tbaa !20
  %i.do = icmp eq i32 %spec.select, 12
  br i1 %i.do, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.12

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.12: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.11
  %i.dp = lshr i64 %.sroa.14.1, 8
  %i.dq = and i64 %i.dp, 15
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !20
  %i.dt = getelementptr inbounds nuw i8, ptr %.0, i64 15 ; 2 uses
  store i8 %i.ds, ptr %i.dn, align 1, !tbaa !20
  %i.du = icmp eq i32 %spec.select, 13
  br i1 %i.du, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.13

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.13: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.12
  %i.dv = lshr i64 %.sroa.14.1, 4
  %i.dw = and i64 %i.dv, 15
  %i.dx = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !20
  %i.ea = icmp eq i32 %spec.select, 14
  br i1 %i.ea, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.14

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.14: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.13
  %i.eb = and i64 %.sroa.14.1, 15
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !20
  %i.ee = getelementptr inbounds nuw i8, ptr %.0, i64 17 ; 4 uses
  store i8 %i.ed, ptr %i.dz, align 1, !tbaa !20
  %i.ef = add nsw i32 %spec.select, -15           ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.5, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.6, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.7, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.8, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.9, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.10, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.11, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.12, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.13, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.14, %bb.k
  %.4 = phi ptr [ %i.aq, %bb.k ], [ %i.ee, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.14 ], [ %i.ax, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit ], [ %i.bd, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1 ], [ %i.bl, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2 ], [ %i.br, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3 ], [ %i.bx, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4 ], [ %i.cd, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.5 ], [ %i.cj, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.6 ], [ %i.cp, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.7 ], [ %i.cv, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.8 ], [ %i.db, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.9 ], [ %i.dh, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.10 ], [ %i.dn, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.11 ], [ %i.dt, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.12 ], [ %i.dz, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.13 ] ; 2 uses
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.l, %.thread
  %.4.pn.ph = phi ptr [ %i.ee, %bb.l ], [ %.4, %.thread ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.4.pn = phi ptr [ %.5, %.preheader ], [ %.4.pn.ph, %.preheader.preheader ] ; 2 uses
  %.5 = getelementptr inbounds i8, ptr %.4.pn, i64 -1 ; 3 uses
  %i.eh = load i8, ptr %.5, align 1, !tbaa !20
  switch i8 %i.eh, label %.loopexit [
    i8 48, label %.preheader
    i8 46, label %.loopexit.loopexit
  ]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit.loopexit, %.thread.thread, %.thread
  %.6 = phi ptr [ %.5, %.loopexit.loopexit ], [ %i.bg, %.thread.thread ], [ %.4, %.thread ], [ %.4.pn, %.preheader ] ; 3 uses
end_hunk_0
