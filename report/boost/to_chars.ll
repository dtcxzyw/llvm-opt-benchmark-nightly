inline.NumInlined: 709
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost8charconv6detail3ryuL16generic_to_charsENS2_20floating_decimal_128EPclNS0_12chars_formatEi:bb.a
  br label %.lr.ph.i.preheader

bb.ab:                                            ; preds = %.loopexit
  %i.ce = add nsw i32 %i.bz, -1                   ; 2 uses
  store i8 43, ptr %i.cc, align 1, !tbaa !25
  %.not5.i = icmp eq i32 %i.ce, 0
  br i1 %.not5.i, label %bb.af, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread, %bb.ab
  %.0113187 = phi i32 [ %i.cd, %.thread ], [ %i.ce, %bb.ab ] ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi i32 [ %i.cg, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.046.i = phi i32 [ %i.cf, %.lr.ph.i ], [ %.0113187, %.lr.ph.i.preheader ] ; 2 uses
  %i.cf = udiv i32 %.046.i, 10
  %i.cg = add nuw nsw i32 %.07.i, 1               ; 3 uses
  %i.ch = icmp ult i32 %.046.i, 10
  br i1 %i.ch, label %.lr.ph157, label %.lr.ph.i, !llvm.loop !32

.lr.ph157:                                        ; preds = %.lr.ph.i
  %i.ci = icmp eq i32 %.07.i, 0
  %i.cj = zext nneg i32 %i.cg to i64              ; 2 uses
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.cj
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph157, %bb.ae
  %indvars.iv167 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next168, %bb.ae ] ; 3 uses
  %.1114155 = phi i32 [ %.0113187, %.lr.ph157 ], [ %i.co, %bb.ae ] ; 2 uses
  %.6154 = phi i64 [ %.5185, %.lr.ph157 ], [ %.7, %bb.ae ] ; 3 uses
  br i1 %i.ci, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ck = sub i64 %.6154, %indvars.iv167
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  store i8 48, ptr %i.cl, align 1, !tbaa !25
  %i.cm = add i64 %.6154, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.7 = phi i64 [ %i.cm, %bb.ad ], [ %.6154, %bb.ac ] ; 3 uses
  %i.cn = urem i32 %.1114155, 10
  %i.co = udiv i32 %.1114155, 10
  %i.cp = trunc nuw nsw i32 %i.cn to i8
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = xor i64 %indvars.iv167, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.7
  %i.cs = getelementptr i8, ptr %gep, i64 %i.cr
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !25
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %i.cj
  br i1 %exitcond171.not, label %._crit_edge158, label %bb.ac, !llvm.loop !33

bb.af:                                            ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %.5185 ; 2 uses
  store i8 48, ptr %i.ct, align 1, !tbaa !25
  %i.cu = add i64 %.4, 4
  %i.cv = getelementptr i8, ptr %i.ct, i64 1
  store i8 48, ptr %i.cv, align 1, !tbaa !25
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %bb.ae, %bb.af
  %.0.lcssa.i195200 = phi i32 [ 0, %bb.af ], [ %i.cg, %bb.ae ]
  %.8 = phi i64 [ %i.cu, %bb.af ], [ %.7, %bb.ae ]
  %i.cw = trunc i64 %.8 to i32
  %i.cx = add i32 %.0.lcssa.i195200, %i.cw
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit204: ; preds = %.lr.ph211
  %i.cy = trunc nuw nsw i64 %indvars.iv210 to i32
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit: ; preds = %.preheader151, %.preheader151.preheader, %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit204, %bb.q, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.aa, %bb.t, %bb.s, %._crit_edge158
  %.3 = phi i32 [ -1, %bb.aa ], [ %i.r, %bb.q ], [ -2, %bb.t ], [ -75, %bb.s ], [ %i.cx, %._crit_edge158 ], [ 10, %bb.e ], [ -1, %bb.j ], [ 9, %bb.g ], [ -1, %bb.d ], [ 9, %bb.i ], [ -1, %bb.f ], [ 3, %bb.k ], [ -1, %bb.h ], [ %i.k, %bb.m ], [ -1, %bb.l ], [ %i.r, %bb.p ], [ %i.cy, %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit204 ], [ 1, %.preheader151.preheader ], [ 1, %.preheader151 ]
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
  br i1 %or.cond, label %bb.u, label %bb.b

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
  br i1 %i.ae, label %bb.u, label %bb.g

bb.g:                                             ; preds = %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit
  %i.af = icmp slt i32 %spec.select, 15
  br i1 %i.af, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ag = shl i32 %spec.select, 2                 ; 2 uses
  %i.ah = sub i32 60, %i.ag                       ; 2 uses
  %i.ai = shl i64 %.sroa.0.0.extract.trunc.i, 1   ; 2 uses
  %i.aj = add i64 %i.ai, -2
  %i.ak = or i64 %i.aj, %.sroa.0.0.extract.trunc.i
  %i.al = icmp sgt i32 %i.ah, 63
  br i1 %i.al, label %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp eq i32 %i.ag, 60
  br i1 %i.am, label %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = zext nneg i32 %i.ah to i64
  %i.ao = shl nuw i64 1, %i.an
  br label %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit

_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit:  ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.4.0.i = phi i64 [ 1, %bb.i ], [ %i.ao, %bb.j ], [ 0, %bb.h ]
  %i.ap = and i64 %i.ak, %.sroa.4.0.i
  %i.aq = and i64 %i.ap, %i.ai
  %i.ar = add i64 %i.aq, %.sroa.0.0.extract.trunc.i
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit, %bb.g
  %.sroa.14.1 = phi i64 [ %i.ar, %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit ], [ %.sroa.0.0.extract.trunc.i, %bb.g ] ; 15 uses
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi ptr [ %i.as, %bb.l ], [ %0, %bb.k ]   ; 18 uses
  %i.at = lshr i64 %.sroa.0.0.extract.trunc.i, 60
  %i.au = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.av, ptr %.0, align 1, !tbaa !25
  %i.ax = icmp sgt i32 %spec.select, 0
  br i1 %i.ax, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit, label %.thread

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit:  ; preds = %bb.m
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 46, ptr %i.aw, align 1, !tbaa !25
  %i.ay = lshr i64 %.sroa.14.1, 56
  %i.az = and i64 %i.ay, 15
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %.0, i64 3 ; 2 uses
  store i8 %i.bb, ptr %4, align 1, !tbaa !25
  %i.bd = icmp eq i32 %spec.select, 1
  br i1 %i.bd, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit
  %i.be = lshr i64 %.sroa.14.1, 52
  %i.bf = and i64 %i.be, 15
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 2 uses
  store i8 %i.bh, ptr %i.bc, align 1, !tbaa !25
  %i.bj = icmp eq i32 %spec.select, 2
  br i1 %i.bj, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2

5:                                                ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.thread
  br i1 %.not, label %.preheader.preheader, label %.thread.thread

.thread.thread:                                   ; preds = %5
  %6 = zext nneg i32 %i.ei to i64                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.eh, i8 48, i64 %6, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %i.eh, i64 %6
  br label %.loopexit

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1
  %i.bk = lshr i64 %.sroa.14.1, 48
  %i.bl = and i64 %i.bk, 15
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %.0, i64 5 ; 2 uses
  store i8 %i.bn, ptr %i.bi, align 1, !tbaa !25
  %i.bp = icmp eq i32 %spec.select, 3
  br i1 %i.bp, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2
  %i.bq = lshr i64 %.sroa.14.1, 44
  %i.br = and i64 %i.bq, 15
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %.0, i64 6 ; 2 uses
  store i8 %i.bt, ptr %i.bo, align 1, !tbaa !25
  %i.bv = icmp eq i32 %spec.select, 4
  br i1 %i.bv, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3
  %i.bw = lshr i64 %.sroa.14.1, 40
  %i.bx = and i64 %i.bw, 15
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %.0, i64 7 ; 2 uses
  store i8 %i.bz, ptr %i.bu, align 1, !tbaa !25
  %i.cb = icmp eq i32 %spec.select, 5
  br i1 %i.cb, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.5

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.5: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4
  %i.cc = lshr i64 %.sroa.14.1, 36
  %i.cd = and i64 %i.cc, 15
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !25
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  store i8 %i.cf, ptr %i.ca, align 1, !tbaa !25
  %i.ch = icmp eq i32 %spec.select, 6
  br i1 %i.ch, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.6

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.6: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.5
  %i.ci = lshr i64 %.sroa.14.1, 32
  %i.cj = and i64 %i.ci, 15
  %i.ck = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %.0, i64 9 ; 2 uses
  store i8 %i.cl, ptr %i.cg, align 1, !tbaa !25
  %i.cn = icmp eq i32 %spec.select, 7
  br i1 %i.cn, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.7

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.7: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.6
  %i.co = lshr i64 %.sroa.14.1, 28
  %i.cp = and i64 %i.co, 15
  %i.cq = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !25
  %i.cs = getelementptr inbounds nuw i8, ptr %.0, i64 10 ; 2 uses
  store i8 %i.cr, ptr %i.cm, align 1, !tbaa !25
  %i.ct = icmp eq i32 %spec.select, 8
  br i1 %i.ct, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.8

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.8: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.7
  %i.cu = lshr i64 %.sroa.14.1, 24
  %i.cv = and i64 %i.cu, 15
  %i.cw = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %.0, i64 11 ; 2 uses
  store i8 %i.cx, ptr %i.cs, align 1, !tbaa !25
  %i.cz = icmp eq i32 %spec.select, 9
  br i1 %i.cz, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.9

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.9: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.8
  %i.da = lshr i64 %.sroa.14.1, 20
  %i.db = and i64 %i.da, 15
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %.0, i64 12 ; 2 uses
  store i8 %i.dd, ptr %i.cy, align 1, !tbaa !25
  %i.df = icmp eq i32 %spec.select, 10
  br i1 %i.df, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.10

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.10: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.9
  %i.dg = lshr i64 %.sroa.14.1, 16
  %i.dh = and i64 %i.dg, 15
  %i.di = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %.0, i64 13 ; 2 uses
  store i8 %i.dj, ptr %i.de, align 1, !tbaa !25
  %i.dl = icmp eq i32 %spec.select, 11
  br i1 %i.dl, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.11

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.11: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.10
  %i.dm = lshr i64 %.sroa.14.1, 12
  %i.dn = and i64 %i.dm, 15
  %i.do = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %.0, i64 14 ; 2 uses
  store i8 %i.dp, ptr %i.dk, align 1, !tbaa !25
  %i.dr = icmp eq i32 %spec.select, 12
  br i1 %i.dr, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.12

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.12: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.11
  %i.ds = lshr i64 %.sroa.14.1, 8
  %i.dt = and i64 %i.ds, 15
  %i.du = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !25
  %i.dw = getelementptr inbounds nuw i8, ptr %.0, i64 15 ; 2 uses
  store i8 %i.dv, ptr %i.dq, align 1, !tbaa !25
  %i.dx = icmp eq i32 %spec.select, 13
  br i1 %i.dx, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.13

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.13: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.12
  %i.dy = lshr i64 %.sroa.14.1, 4
  %i.dz = and i64 %i.dy, 15
  %i.ea = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !25
  %i.ec = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  store i8 %i.eb, ptr %i.dw, align 1, !tbaa !25
  %i.ed = icmp eq i32 %spec.select, 14
  br i1 %i.ed, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.thread

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.thread: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.13
  %i.ee = and i64 %.sroa.14.1, 15
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !25
  %i.eh = getelementptr inbounds nuw i8, ptr %.0, i64 17 ; 4 uses
  store i8 %i.eg, ptr %i.ec, align 1, !tbaa !25
  %i.ei = add nsw i32 %spec.select, -15           ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %.thread, label %5

.thread:                                          ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.5, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.6, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.7, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.8, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.9, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.10, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.11, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.12, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.13, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.thread, %bb.m
  %.4 = phi ptr [ %i.aw, %bb.m ], [ %i.eh, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.thread ], [ %i.bc, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit ], [ %i.bi, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1 ], [ %i.bo, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2 ], [ %i.bu, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3 ], [ %i.ca, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4 ], [ %i.cg, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.5 ], [ %i.cm, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.6 ], [ %i.cs, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.7 ], [ %i.cy, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.8 ], [ %i.de, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.9 ], [ %i.dk, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.10 ], [ %i.dq, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.11 ], [ %i.dw, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.12 ], [ %i.ec, %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.13 ] ; 2 uses
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %5, %.thread
  %.4.pn.ph = phi ptr [ %i.eh, %5 ], [ %.4, %.thread ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.4.pn = phi ptr [ %.5, %.preheader ], [ %.4.pn.ph, %.preheader.preheader ] ; 2 uses
  %.5 = getelementptr inbounds i8, ptr %.4.pn, i64 -1 ; 3 uses
  %i.ek = load i8, ptr %.5, align 1, !tbaa !25
  switch i8 %i.ek, label %.loopexit [
    i8 48, label %.preheader
    i8 46, label %.loopexit.loopexit
  ]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit.loopexit, %.thread.thread, %.thread
  %.6 = phi ptr [ %.5, %.loopexit.loopexit ], [ %7, %.thread.thread ], [ %.4, %.thread ], [ %.4.pn, %.preheader ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.6, i64 1
  store i8 112, ptr %.6, align 1, !tbaa !25
  %. = select i1 %i.p, i8 45, i8 43
  %.7 = getelementptr inbounds nuw i8, ptr %.6, i64 2 ; 4 uses
  store i8 %., ptr %i.el, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.em = icmp ugt ptr %.7, %1
  br i1 %i.em, label %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.en = ptrtoint ptr %.7 to i64
  %i.eo = sub i64 %i.b, %i.en
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ep = icmp ugt i32 %i.t, 9999999
  %spec.select259 = select i1 %i.ep, i64 10, i64 5
  br label %_ZN5boost8charconv6detail10num_digitsIjEEiT_.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.eq = icmp samesign ugt i32 %i.t, 99
  br i1 %i.eq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.er = icmp samesign ugt i32 %i.t, 999
  %.12.i.i.i = select i1 %i.er, i64 4, i64 3
  br label %_ZN5boost8charconv6detail10num_digitsIjEEiT_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.es = icmp samesign ugt i32 %i.t, 9
  %.13.i.i.i = select i1 %i.es, i64 2, i64 1
  br label %_ZN5boost8charconv6detail10num_digitsIjEEiT_.exit.i.i

_ZN5boost8charconv6detail10num_digitsIjEEiT_.exit.i.i: ; preds = %bb.o, %bb.r, %bb.q
  %.0.i.i.i = phi i64 [ %spec.select259, %bb.o ], [ %.12.i.i.i, %bb.q ], [ %.13.i.i.i, %bb.r ] ; 4 uses
  %.not.i.i = icmp slt i64 %i.eo, %.0.i.i.i       ; 2 uses
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN5boost8charconv6detail10num_digitsIjEEiT_.exit.i.i
  %i.et = zext i32 %i.t to i64
  %i.eu = mul nuw nsw i64 %i.et, 1441151881       ; 2 uses
  %i.ev = lshr i64 %i.eu, 56
  %i.ew = and i64 %i.ev, 126
  %i.ex = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2
  store i16 %i.ey, ptr %i.a, align 2
  %i.ez = and i64 %i.eu, 144115188075855871
  %i.fa = mul nuw i64 %i.ez, 100                  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.fc = lshr i64 %i.fa, 56
  %i.fd = and i64 %i.fc, 254
  %i.fe = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2
  store i16 %i.ff, ptr %i.fb, align 2
  %i.fg = and i64 %i.fa, 144115188075855868
  %i.fh = mul nuw i64 %i.fg, 100                  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fj = lshr i64 %i.fh, 56
  %i.fk = and i64 %i.fj, 254
  %i.fl = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2
  store i16 %i.fm, ptr %i.fi, align 2
  %i.fn = and i64 %i.fh, 144115188075855856
  %i.fo = mul nuw i64 %i.fn, 100                  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.fq = lshr i64 %i.fo, 56
  %i.fr = and i64 %i.fq, 254
  %i.fs = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2
  store i16 %i.ft, ptr %i.fp, align 2
  %i.fu = and i64 %i.fo, 144115188075855808
  %i.fv = mul nuw i64 %i.fu, 100
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fx = lshr i64 %i.fv, 56
  %i.fy = and i64 %i.fx, 254
  %i.fz = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.fy
  %i.ga = load i16, ptr %i.fz, align 2
  store i16 %i.ga, ptr %i.fw, align 2
  %i.gb = sub nuw nsw i64 10, %.0.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.7, ptr noundef nonnull align 1 dereferenceable(1) %i.gc, i64 %.0.i.i.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN5boost8charconv6detail10num_digitsIjEEiT_.exit.i.i
  %spec.select25.i.i = phi i32 [ 75, %_ZN5boost8charconv6detail10num_digitsIjEEiT_.exit.i.i ], [ 0, %bb.s ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.7, i64 %.0.i.i.i
  %spec.select.i.i184 = select i1 %.not.i.i, ptr %1, ptr %i.gd
  br label %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit

_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit: ; preds = %.loopexit, %bb.t
  %.sroa.0.2.i.i = phi ptr [ %spec.select.i.i184, %bb.t ], [ %1, %.loopexit ]
  %.sroa.4.2.i.i = phi i32 [ %spec.select25.i.i, %bb.t ], [ 22, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.u

bb.u:                                             ; preds = %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit, %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit, %bb.a
  %.sroa.0117.1 = phi ptr [ %1, %bb.a ], [ %.sroa.0.2.i.i, %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit ], [ %1, %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit ]
  %.sroa.4118.1 = phi i32 [ 75, %bb.a ], [ %.sroa.4.2.i.i, %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit ], [ 75, %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0117.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4118.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN5boost8charconv6detail3ryuL22generic_to_chars_fixedENS2_20floating_decimal_128EPcli(ptr nofree noundef readonly byval(%"struct.boost::charconv::detail::ryu::floating_decimal_128") align 16 captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !15  ; 14 uses
  %i.c = icmp eq i32 %i.b, 2147483647
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i128, ptr %0, align 16, !tbaa !23 ; 2 uses
  %.sroa.2111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.2111.0.copyload = load i8, ptr %.sroa.2111.0..sroa_idx, align 4, !tbaa !24 ; 2 uses
  %i.d = trunc nuw i8 %.sroa.2111.0.copyload to i1
  br i1 %i.d, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  store i8 45, ptr %1, align 1, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  switch i128 %.sroa.0.0.copyload, label %bb.f [
    i128 0, label %bb.l
    i128 1298074214633706907132624082305024, label %bb.d
    i128 6917529027641081856, label %bb.d
    i128 2305843009213693952, label %bb.d
  ]

.thread.i:                                        ; preds = %bb.b
  switch i128 %.sroa.0.0.copyload, label %bb.j [
    i128 0, label %bb.l
    i128 1298074214633706907132624082305024, label %bb.h
    i128 6917529027641081856, label %bb.h
    i128 2305843009213693952, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.f = icmp sgt i64 %2, 9
  br i1 %i.f, label %bb.e, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.e, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.f:                                             ; preds = %bb.c
  %i.g = icmp sgt i64 %2, 8
  br i1 %i.g, label %bb.g, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.g:                                             ; preds = %bb.f
  store i64 2982630251155054958, ptr %i.e, align 1
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.h:                                             ; preds = %.thread.i, %.thread.i, %.thread.i
  %i.h = icmp sgt i64 %2, 8
  br i1 %i.h, label %bb.i, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.j:                                             ; preds = %.thread.i
  %i.i = icmp sgt i64 %2, 2
  br i1 %i.i, label %bb.k, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.l:                                             ; preds = %.thread.i, %bb.c
  %.0234.i = phi ptr [ %1, %.thread.i ], [ %i.e, %bb.c ]
  %narrow.i = add nuw nsw i8 %.sroa.2111.0.copyload, 3 ; 2 uses
  %i.j = zext nneg i8 %narrow.i to i64
  %.not25.i = icmp slt i64 %2, %i.j
  br i1 %.not25.i, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0234.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.k = zext nneg i8 %narrow.i to i32
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.n:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i8, ptr %i.l, align 4, !tbaa !22, !range !27, !noundef !28 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.096 = phi ptr [ %i.o, %bb.o ], [ %1, %bb.n ]  ; 15 uses
  %i.p = load i128, ptr %0, align 16, !tbaa !11
  %i.q = getelementptr inbounds i8, ptr %.096, i64 %2
  %i.r = tail call { ptr, i32 } @_ZN5boost8charconv6detail24to_chars_128integer_implIooEENS0_15to_chars_resultEPcS4_T_(ptr noundef %.096, ptr noundef %i.q, i128 noundef %i.p) #14 ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.r, label %bb.q
end_hunk_0
