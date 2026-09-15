Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/printf-test?download=true
inline.NumInlined: 26200
inline.NumDeleted: 1767
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.026.i.i.i = phi i64 [ %i.bd, %bb.i ], [ %i.ax, %bb.h ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bg, %bb.i ], [ %gepdiff.i, %bb.h ] ; 13 uses
  %i.bh = load ptr, ptr %.sroa.09.0, align 8, !tbaa !118 ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bk = add i64 %.026.i.i.i, %i.bi
  %i.bl = add i64 %.02732.i.i.idx.i, %i.at
  %i.bm = sub i64 %i.bl, %i.bk
  %diff.check = icmp ugt i64 %i.bm, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <16 x i8>, ptr %i.bo, align 1, !tbaa !90
  %wide.load36 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !90
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load, ptr %i.bq, align 1, !tbaa !90
  store <16 x i8> %wide.load36, ptr %i.br, align 1, !tbaa !90
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !18056

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !176

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !90
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bu, align 1, !tbaa !90
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18057

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %.030.i.i.i.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !90
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !90
  %i.bz = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !18058

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.prol ]
  %i.ca = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.au, align 8, !tbaa !120
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.j
  %i.cc = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.j ]
  %i.cd = add i64 %i.cc, %.025.i.i.i              ; 2 uses
  store i64 %i.cd, ptr %i.au, align 8, !tbaa !120
  %.02732.i.i.add.i = add nuw nsw i64 %.025.i.i.i, %.02732.i.i.idx.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.02732.i.i.add.i, 3
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit, label %bb.h, !llvm.loop !15

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %.030.i.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !90
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !90
  %i.ch = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !90
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !90
  %i.cl = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !90
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !90
  %i.cp = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !90
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !90
  %i.ct = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ct, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !18059

_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %i.cu = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cu, %bb.k ], [ %.sroa.09.0, %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !155    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZN3fmt3v126detail18decimal_point_implIcEET_NS0_10locale_refE(ptr %5)
  %.pre = load i32, ptr %2, align 4, !tbaa !155
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.e = phi i8 [ %i.c, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !202    ; 2 uses
  %i.g = or i32 %i.f, 1
  %i.h = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.i = xor i32 %i.h, 31
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !107
  %i.m = zext i32 %i.f to i64
  %i.n = add i64 %i.l, %i.m
  %i.o = lshr i64 %i.n, 32                        ; 3 uses
  %i.p = trunc nuw i64 %i.o to i32                ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !203
  %i.s = add nsw i32 %i.r, %i.p                   ; 3 uses
  %i.t = add nsw i32 %i.s, -1                     ; 3 uses
  %i.u = trunc i32 %i.d to i8
  %i.v = and i8 %i.u, 7
  switch i8 %i.v, label %bb.d [
    i8 2, label %bb.e
    i8 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !154  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  %. = select i1 %i.y, i32 %i.x, i32 %4
  %i.z = icmp sgt i32 %i.s, -4
  %i.aa = icmp sle i32 %i.s, %.
  %i.ab = and i1 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ac = ptrtoint ptr %5 to i64
  %i.ad = tail call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %i.p, i8 noundef signext %i.e, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.ac)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

bb.f:                                             ; preds = %bb.c, %bb.d
  %.not51 = icmp ne i32 %3, 0
  %i.ae = zext i1 %.not51 to i64
  %i.af = add nuw nsw i64 %i.o, %i.ae
  %sext = shl i64 %i.af, 32
  %i.ag = ashr exact i64 %sext, 32                ; 2 uses
  %i.ah = and i32 %i.d, 8192
  %.not80 = icmp eq i32 %i.ah, 0
  br i1 %.not80, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !154
  %i.ak = sub nsw i32 %i.aj, %i.p
  %i.al = tail call noundef i32 @llvm.smax.i32(i32 %i.ak, i32 0) ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add nsw i64 %i.ag, %i.am
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = icmp eq i64 %i.o, 1
  %spec.select = select i1 %i.ao, i8 0, i8 %i.e
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.049 = phi i32 [ %i.al, %bb.g ], [ 0, %bb.h ]  ; 4 uses
  %.048 = phi i64 [ %i.an, %bb.g ], [ %i.ag, %bb.h ]
  %.0 = phi i8 [ %i.e, %bb.g ], [ %spec.select, %bb.h ] ; 3 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.ap = zext i1 %.not52 to i64
  %i.aq = tail call i32 @llvm.abs.i32(i32 %i.t, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, 100
  %i.as = icmp samesign ugt i32 %i.aq, 999
  %i.at = select i1 %i.as, i64 6, i64 5
  %.0.i = select i1 %i.ar, i64 4, i64 %i.at
  %i.au = add nsw i64 %.048, %.0.i
  %i.av = add nsw i64 %i.au, %i.ap                ; 3 uses
  %i.aw = and i32 %i.d, 4096
  %.not81 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not81, i8 101, i8 69        ; 2 uses
  %i.ay = load i64, ptr %1, align 4               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !173 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = tail call i64 @llvm.usub.sat.i64(i64 %i.bc, i64 %i.av) ; 4 uses
  %i.be = lshr i32 %i.d, 3
  %i.bf = and i32 %i.be, 7
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @.str.830, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !90
  %i.bj = sext i8 %i.bi to i64
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = lshr i64 %i.bd, %i.bk                   ; 4 uses
  %i.bm = sub nsw i64 %i.bd, %i.bl
  %i.bn = lshr i32 %i.d, 15
  %i.bo = and i32 %i.bn, 7
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = mul nuw nsw i64 %i.bd, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !120
  %i.bt = add nsw i64 %i.bq, %i.av
  %i.bu = add i64 %i.bt, %i.bs                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !119
  %i.bx = icmp ugt i64 %i.bu, %i.bw
  br i1 %i.bx, label %bb.k, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !117
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bu), !inline_history !18060
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.k, %bb.j
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.ca = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.bl, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.ca, %bb.l ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ] ; 6 uses
  %.not.i53 = icmp eq i32 %3, 0
  br i1 %.not.i53, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = shl nsw i32 %3, 3
  %i.cc = lshr i32 539700480, %i.cb
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !120 ; 2 uses
  %i.cg = add i64 %i.cf, 1                        ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !119
  %i.cj = icmp ugt i64 %i.cg, %i.ci
  br i1 %i.cj, label %bb.o, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i54

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !117
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0.i.i, i64 noundef %i.cg), !inline_history !18061
  %.pre.i.i.i67 = load i64, ptr %i.ce, align 8, !tbaa !120 ; 2 uses
  %.pre2.i.i.i68 = add i64 %.pre.i.i.i67, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i54

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i54:      ; preds = %bb.o, %bb.n
  %.pre-phi.i.i.i55 = phi i64 [ %i.cg, %bb.n ], [ %.pre2.i.i.i68, %bb.o ]
  %i.cm = phi i64 [ %i.cf, %bb.n ], [ %.pre.i.i.i67, %bb.o ]
  %i.cn = load ptr, ptr %.sroa.09.0.i.i, align 8, !tbaa !118
  store i64 %.pre-phi.i.i.i55, ptr %i.ce, align 8, !tbaa !120
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 %i.cd, ptr %i.co, align 1, !tbaa !90
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i54, %bb.m
  %.sroa.5.4.extract.trunc72 = trunc i64 %i.ay to i32
  %i.cp = tail call ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_(ptr %.sroa.09.0.i.i, i32 noundef %.sroa.5.4.extract.trunc72, i32 noundef %i.p, i32 noundef 1, i8 noundef signext %.0) ; 11 uses
  %.not83 = icmp eq i32 %.049, 0
  br i1 %.not83, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56, label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62, %.lr.ph.i.i60
  %.04.i.i61 = phi i32 [ 0, %.lr.ph.i.i60 ], [ %i.db, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62 ]
  %i.ct = load i64, ptr %i.cq, align 8, !tbaa !120 ; 2 uses
  %i.cu = add i64 %i.ct, 1                        ; 3 uses
  %i.cv = load i64, ptr %i.cr, align 8, !tbaa !119
  %i.cw = icmp ugt i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.r, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62

bb.r:                                             ; preds = %bb.q
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !117
  tail call void %i.cx(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 noundef %i.cu), !inline_history !18062
  %.pre.i.i.i.i65 = load i64, ptr %i.cq, align 8, !tbaa !120 ; 2 uses
  %.pre2.i.i.i.i66 = add i64 %.pre.i.i.i.i65, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62:    ; preds = %bb.r, %bb.q
  %.pre-phi.i.i.i.i63 = phi i64 [ %i.cu, %bb.q ], [ %.pre2.i.i.i.i66, %bb.r ]
  %i.cy = phi i64 [ %i.ct, %bb.q ], [ %.pre.i.i.i.i65, %bb.r ]
  %i.cz = load ptr, ptr %i.cp, align 8, !tbaa !118
  store i64 %.pre-phi.i.i.i.i63, ptr %i.cq, align 8, !tbaa !120
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store i8 48, ptr %i.da, align 1, !tbaa !90
  %i.db = add nuw nsw i32 %.04.i.i61, 1           ; 2 uses
  %exitcond.not.i.i64 = icmp eq i32 %i.db, %.049
  br i1 %exitcond.not.i.i64, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56, label %bb.q, !llvm.loop !29

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62, %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !120 ; 2 uses
  %i.de = add i64 %i.dd, 1                        ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !119
  %i.dh = icmp ugt i64 %i.de, %i.dg
  br i1 %i.dh, label %bb.s, label %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69

bb.s:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !117
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 noundef %i.de), !inline_history !18061
  %.pre.i.i9.i58 = load i64, ptr %i.dc, align 8, !tbaa !120 ; 2 uses
  %.pre2.i.i10.i59 = add i64 %.pre.i.i9.i58, 1
  br label %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69

_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69: ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56, %bb.s
  %.pre-phi.i.i8.i57 = phi i64 [ %i.de, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56 ], [ %.pre2.i.i10.i59, %bb.s ]
  %i.dk = phi i64 [ %i.dd, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56 ], [ %.pre.i.i9.i58, %bb.s ]
  %i.dl = load ptr, ptr %i.cp, align 8, !tbaa !118
  store i64 %.pre-phi.i.i8.i57, ptr %i.dc, align 8, !tbaa !120
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store i8 %i.ax, ptr %i.dm, align 1, !tbaa !90
  %i.dn = tail call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.t, ptr nonnull %i.cp) ; 2 uses
  %.not31.i.i = icmp eq i64 %i.bd, %i.bl
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, label %bb.t

bb.t:                                             ; preds = %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69
  %i.do = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.dn, i64 noundef %i.bm, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

bb.u:                                             ; preds = %bb.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !120
  %i.dr = add i64 %i.dq, %i.av                    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !119
  %i.du = icmp ugt i64 %i.dr, %i.dt
  br i1 %i.du, label %bb.v, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !117
  tail call void %i.dw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dr), !inline_history !18
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.u, %bb.v
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.dx = shl nsw i32 %3, 3
  %i.dy = lshr i32 539700480, %i.dx
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = load i64, ptr %i.dp, align 8, !tbaa !120 ; 2 uses
  %i.eb = add i64 %i.ea, 1                        ; 3 uses
  %i.ec = load i64, ptr %i.ds, align 8, !tbaa !119
  %i.ed = icmp ugt i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.x, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !117
  tail call void %i.ef(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eb), !inline_history !18061
  %.pre.i.i.i = load i64, ptr %i.dp, align 8, !tbaa !120 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.x, %bb.w
  %.pre-phi.i.i.i = phi i64 [ %i.eb, %bb.w ], [ %.pre2.i.i.i, %bb.x ]
  %i.eg = phi i64 [ %i.ea, %bb.w ], [ %.pre.i.i.i, %bb.x ]
  %i.eh = load ptr, ptr %0, align 8, !tbaa !118
  store i64 %.pre-phi.i.i.i, ptr %i.dp, align 8, !tbaa !120
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  store i8 %i.dz, ptr %i.ei, align 1, !tbaa !90
  br label %bb.y

bb.y:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.5.4.extract.trunc = trunc i64 %i.ay to i32
  %i.ej = tail call ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_(ptr nonnull %0, i32 noundef %.sroa.5.4.extract.trunc, i32 noundef %i.p, i32 noundef 1, i8 noundef signext %.0) ; 11 uses
  %.not82 = icmp eq i32 %.049, 0
  br i1 %.not82, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  br label %bb.z

bb.z:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ev, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.en = load i64, ptr %i.ek, align 8, !tbaa !120 ; 2 uses
  %i.eo = add i64 %i.en, 1                        ; 3 uses
  %i.ep = load i64, ptr %i.el, align 8, !tbaa !119
  %i.eq = icmp ugt i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.aa, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !117
  tail call void %i.er(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, i64 noundef %i.eo), !inline_history !18062
  %.pre.i.i.i.i = load i64, ptr %i.ek, align 8, !tbaa !120 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.aa, %bb.z
  %.pre-phi.i.i.i.i = phi i64 [ %i.eo, %bb.z ], [ %.pre2.i.i.i.i, %bb.aa ]
  %i.es = phi i64 [ %i.en, %bb.z ], [ %.pre.i.i.i.i, %bb.aa ]
  %i.et = load ptr, ptr %i.ej, align 8, !tbaa !118
  store i64 %.pre-phi.i.i.i.i, ptr %i.ek, align 8, !tbaa !120
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.es
  store i8 48, ptr %i.eu, align 1, !tbaa !90
  %i.ev = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ev, %.049
  br i1 %exitcond.not.i.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i, label %bb.z, !llvm.loop !29

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %bb.y
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 3 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !120 ; 2 uses
  %i.ey = add i64 %i.ex, 1                        ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !119
  %i.fb = icmp ugt i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.ab, label %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit

bb.ab:                                            ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !117
  tail call void %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, i64 noundef %i.ey), !inline_history !18061
  %.pre.i.i9.i = load i64, ptr %i.ew, align 8, !tbaa !120 ; 2 uses
  %.pre2.i.i10.i = add i64 %.pre.i.i9.i, 1
  br label %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit

_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit: ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i, %bb.ab
  %.pre-phi.i.i8.i = phi i64 [ %i.ey, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i ], [ %.pre2.i.i10.i, %bb.ab ]
  %i.fe = phi i64 [ %i.ex, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i ], [ %.pre.i.i9.i, %bb.ab ]
  %i.ff = load ptr, ptr %i.ej, align 8, !tbaa !118
  store i64 %.pre-phi.i.i8.i, ptr %i.ew, align 8, !tbaa !120
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fe
  store i8 %i.ax, ptr %i.fg, align 1, !tbaa !90
  %i.fh = tail call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.t, ptr nonnull %i.ej)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit: ; preds = %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit, %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69, %bb.t, %bb.e
  %.sroa.047.1 = phi ptr [ %i.ad, %bb.e ], [ %i.fh, %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit ], [ %i.do, %bb.t ], [ %i.dn, %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69 ]
  ret ptr %.sroa.047.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 13 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 13 uses
  %9 = alloca %class.anon.157, align 8            ; 11 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %10 = alloca %class.anon.158, align 8           ; 9 uses
  %i.h = inttoptr i64 %6 to ptr                   ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !121
  store i8 %3, ptr %i.b, align 1, !tbaa !90
  store i32 %5, ptr %i.c, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !203  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 6 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !121
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !154
  %i.t = sub nsw i32 %i.s, %i.k                   ; 5 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !155    ; 3 uses
  %i.v = and i32 %i.u, 8192
  %.not98 = icmp eq i32 %i.v, 0
  br i1 %.not98, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 2 uses
  %i.x = icmp slt i32 %i.t, 1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.u, 7
  %.not48 = icmp eq i32 %i.y, 2
  %spec.select = select i1 %.not48, i32 %i.t, i32 0
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ %i.t, %bb.e ], [ %i.t, %bb.b ], [ %spec.select, %bb.d ] ; 2 uses
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.q, %bb.b ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ab = and i32 %i.u, 16384
  %i.ac = icmp ne i32 %i.ab, 0
  call void @_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr %i.h, i1 noundef zeroext %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !88
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread
  %i.ag = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !88
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %.08.i = phi i32 [ 0, %.lr.ph.i ], [ %i.as, %bb.i ] ; 2 uses
  %.sroa.0.07.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.i ] ; 3 uses
  %.sroa.5.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aq, %bb.i ]
  %i.al = icmp eq ptr %.sroa.0.07.i, %i.aj
  br i1 %i.al, label %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i, label %bb.g

._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i: ; preds = %bb.f
  %.sink.i.pre.i = load i8, ptr %i.ak, align 1, !tbaa !90
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !90 ; 2 uses
  %i.an = add i8 %i.am, -127
  %or.cond.i.i = icmp ult i8 %i.an, -126
  br i1 %or.cond.i.i, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i: ; preds = %bb.h, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i
  %.sink.i.i = phi i8 [ %i.am, %bb.h ], [ %.sink.i.pre.i, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %.sroa.0.1.i = phi ptr [ %i.ao, %bb.h ], [ %i.aj, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %i.ap = sext i8 %.sink.i.i to i32
end_hunk_0
