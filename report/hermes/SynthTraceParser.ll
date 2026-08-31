Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SynthTraceParser?download=true
inline.NumInlined: 2499
inline.NumDeleted: 1012
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i:bb.a
  %i.o = uitofp nneg i8 %.sink42.i to double
  %i.p = fadd double %i.n, %i.o                   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01731.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.a
  br i1 %.not.i, label %bb.f, label %bb.b, !llvm.loop !1037

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp oge double %i.p, f0x4340000000000000
  %.not.i56 = icmp ne i32 %2, 0
  %or.cond72.not74 = and i1 %.not.i56, %i.r
  %i.s = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %2)
  %.not3.i = icmp samesign ult i32 %i.s, 2
  %or.cond73 = select i1 %or.cond72.not74, i1 %.not3.i, i1 false
  br i1 %or.cond73, label %.preheader, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit

.preheader:                                       ; preds = %bb.f
  %i.t = lshr i32 %2, 1
  %i.u = zext nneg i32 %i.t to i64                ; 7 uses
  %i.v = load i8, ptr %0, align 1, !tbaa !124     ; 3 uses
  %i.w = or i8 %i.v, 32
  %i.x = add i8 %i.v, -48
  %or.cond = icmp ult i8 %i.x, 10
  %i.y = and i8 %i.v, 15
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = sext i8 %i.w to i64
  %i.ab = add nsw i64 %i.aa, -87
  %.147 = select i1 %or.cond, i64 %i.z, i64 %i.ab ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ad = and i64 %.147, %i.u
  %.not216 = icmp eq i64 %i.ad, 0
  %i.ae = lshr i64 %i.u, 1                        ; 2 uses
  br i1 %.not216, label %.lr.ph, label %._crit_edge.preheader

.preheader202:                                    ; preds = %.split, %bb.r
  %i.af = phi i64 [ %i.ca, %bb.r ], [ %i.cd, %.split ] ; 2 uses
  %.139122 = phi ptr [ %.139.jt4, %bb.r ], [ %.139.jt3, %.split ] ; 3 uses
  %.150.jt4 = phi double [ %i.cb, %bb.r ], [ %i.ce, %.split ] ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.r

spec.select.si.unfold.false.jt3:                  ; preds = %.split, %bb.s
  %i.ah = phi i64 [ %i.ch, %bb.s ], [ %i.cd, %.split ] ; 2 uses
  %.139123 = phi ptr [ %.139.jt2, %bb.s ], [ %.139.jt3, %.split ] ; 4 uses
  %.248115 = phi i64 [ %.248.jt2, %bb.s ], [ %.248.jt3, %.split ]
  %.150.jt3 = phi double [ 2.000000e+00, %bb.s ], [ %i.ce, %.split ] ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %.split

bb.g:                                             ; preds = %bb.u
  %i.aj = icmp eq i64 %i.cm, 0
  br i1 %i.aj, label %bb.j, label %bb.s

.lr.ph:                                           ; preds = %.preheader, %bb.t
  %i.ak = phi i64 [ %i.cj, %bb.t ], [ %i.ae, %.preheader ] ; 2 uses
  %.248110218 = phi i64 [ %.248.jt0, %bb.t ], [ %.147, %.preheader ]
  %.139118217 = phi ptr [ %.139.jt0, %bb.t ], [ %i.ac, %.preheader ] ; 4 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.k, label %bb.t

._crit_edge:                                      ; preds = %._crit_edge.preheader, %bb.u
  %i.am = phi i64 [ %i.cm, %bb.u ], [ %.ph, %._crit_edge.preheader ] ; 2 uses
  %.139124 = phi ptr [ %.139.jt1, %bb.u ], [ %.139124.ph, %._crit_edge.preheader ] ; 4 uses
  %.248116 = phi i64 [ %.248.jt1, %bb.u ], [ %.248116.ph, %._crit_edge.preheader ]
  %.166.jt1 = phi double [ %i.cp, %bb.u ], [ 1.000000e+00, %._crit_edge.preheader ] ; 2 uses
  %.152.jt1 = phi i64 [ %i.cq, %bb.u ], [ 52, %._crit_edge.preheader ]
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.l, label %bb.u

bb.h:                                             ; preds = %.preheader202
  %i.ao = icmp eq ptr %.139122, %i.a
  br i1 %i.ao, label %.thread130, label %bb.m

bb.i:                                             ; preds = %spec.select.si.unfold.false.jt3
  %i.ap = icmp eq ptr %.139123, %i.a
  br i1 %i.ap, label %.thread139, label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.aq = icmp eq ptr %.139.jt1, %i.a
  br i1 %i.aq, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit, label %bb.o

bb.k:                                             ; preds = %.lr.ph
  %i.ar = icmp eq ptr %.139118217, %i.a
  br i1 %i.ar, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit, label %bb.p

bb.l:                                             ; preds = %._crit_edge
  %i.as = icmp eq ptr %.139124, %i.a
  br i1 %i.as, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit, label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.139122, i64 1
  br label %bb.r

bb.n:                                             ; preds = %bb.i
  %i.au = load i8, ptr %.139123, align 1, !tbaa !124 ; 3 uses
  %i.av = or i8 %i.au, 32
  %i.aw = add i8 %i.au, -48
  %or.cond.jt3 = icmp ult i8 %i.aw, 10
  %i.ax = and i8 %i.au, 15
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = sext i8 %i.av to i64
  %i.ba = add nsw i64 %i.az, -87
  %.147.jt3 = select i1 %or.cond.jt3, i64 %i.ay, i64 %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %.139123, i64 1
  br label %.split

bb.o:                                             ; preds = %bb.j
  %i.bc = load i8, ptr %.139.jt1, align 1, !tbaa !124 ; 3 uses
  %i.bd = or i8 %i.bc, 32
  %i.be = add i8 %i.bc, -48
  %or.cond.jt2 = icmp ult i8 %i.be, 10
  %i.bf = and i8 %i.bc, 15
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = sext i8 %i.bd to i64
  %i.bi = add nsw i64 %i.bh, -87
  %.147.jt2 = select i1 %or.cond.jt2, i64 %i.bg, i64 %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %.139.jt1, i64 1
  br label %bb.s

bb.p:                                             ; preds = %bb.k
  %i.bk = load i8, ptr %.139118217, align 1, !tbaa !124 ; 3 uses
  %i.bl = or i8 %i.bk, 32
  %i.bm = add i8 %i.bk, -48
  %or.cond.jt0 = icmp ult i8 %i.bm, 10
  %i.bn = and i8 %i.bk, 15
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = sext i8 %i.bl to i64
  %i.bq = add nsw i64 %i.bp, -87
  %.147.jt0 = select i1 %or.cond.jt0, i64 %i.bo, i64 %i.bq
  %i.br = getelementptr inbounds nuw i8, ptr %.139118217, i64 1
  br label %bb.t

bb.q:                                             ; preds = %bb.l
  %i.bs = load i8, ptr %.139124, align 1, !tbaa !124 ; 3 uses
  %i.bt = or i8 %i.bs, 32
  %i.bu = add i8 %i.bs, -48
  %or.cond.jt1 = icmp ult i8 %i.bu, 10
  %i.bv = and i8 %i.bs, 15
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = sext i8 %i.bt to i64
  %i.by = add nsw i64 %i.bx, -87
  %.147.jt1 = select i1 %or.cond.jt1, i64 %i.bw, i64 %i.by
  %i.bz = getelementptr inbounds nuw i8, ptr %.139124, i64 1
  br label %bb.u

bb.r:                                             ; preds = %.preheader202, %bb.m
  %.139.jt4 = phi ptr [ %.139122, %.preheader202 ], [ %i.at, %bb.m ]
  %.1.jt4 = phi i64 [ %i.af, %.preheader202 ], [ %i.u, %bb.m ]
  %i.ca = lshr i64 %.1.jt4, 1
  %i.cb = fmul double %.150.jt4, 2.000000e+00
  br label %.preheader202

.split:                                           ; preds = %spec.select.si.unfold.false.jt3, %bb.n
  %.248.jt3 = phi i64 [ %.248115, %spec.select.si.unfold.false.jt3 ], [ %.147.jt3, %bb.n ] ; 2 uses
  %.139.jt3 = phi ptr [ %.139123, %spec.select.si.unfold.false.jt3 ], [ %i.bb, %bb.n ] ; 2 uses
  %.1.jt3 = phi i64 [ %i.ah, %spec.select.si.unfold.false.jt3 ], [ %i.u, %bb.n ] ; 2 uses
  %i.cc = and i64 %.1.jt3, %.248.jt3
  %.not201 = icmp eq i64 %i.cc, 0
  %i.cd = lshr i64 %.1.jt3, 1                     ; 2 uses
  %i.ce = fmul double %.150.jt3, 2.000000e+00     ; 2 uses
  br i1 %.not201, label %spec.select.si.unfold.false.jt3, label %.preheader202

bb.s:                                             ; preds = %bb.g, %bb.o
  %.248.jt2 = phi i64 [ %.248.jt1, %bb.g ], [ %.147.jt2, %bb.o ] ; 2 uses
  %.139.jt2 = phi ptr [ %.139.jt1, %bb.g ], [ %i.bj, %bb.o ]
  %.1.jt2 = phi i64 [ %i.cm, %bb.g ], [ %i.u, %bb.o ] ; 2 uses
  %i.cf = and i64 %.1.jt2, %.248.jt2
  %i.cg = icmp ne i64 %i.cf, 0                    ; 2 uses
  %i.ch = lshr i64 %.1.jt2, 1
  br label %spec.select.si.unfold.false.jt3

bb.t:                                             ; preds = %.lr.ph, %bb.p
  %.248.jt0 = phi i64 [ %.248110218, %.lr.ph ], [ %.147.jt0, %bb.p ] ; 3 uses
  %.139.jt0 = phi ptr [ %.139118217, %.lr.ph ], [ %i.br, %bb.p ] ; 2 uses
  %.1.jt0 = phi i64 [ %i.ak, %.lr.ph ], [ %i.u, %bb.p ] ; 2 uses
  %i.ci = and i64 %.1.jt0, %.248.jt0
  %.not = icmp eq i64 %i.ci, 0
  %i.cj = lshr i64 %.1.jt0, 1                     ; 2 uses
  br i1 %.not, label %.lr.ph, label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %bb.t, %.preheader
  %.ph = phi i64 [ %i.ae, %.preheader ], [ %i.cj, %bb.t ]
  %.139124.ph = phi ptr [ %i.ac, %.preheader ], [ %.139.jt0, %bb.t ]
  %.248116.ph = phi i64 [ %.147, %.preheader ], [ %.248.jt0, %bb.t ]
  br label %._crit_edge

bb.u:                                             ; preds = %._crit_edge, %bb.q
  %.248.jt1 = phi i64 [ %.248116, %._crit_edge ], [ %.147.jt1, %bb.q ] ; 3 uses
  %.139.jt1 = phi ptr [ %.139124, %._crit_edge ], [ %i.bz, %bb.q ] ; 5 uses
  %.1.jt1 = phi i64 [ %i.am, %._crit_edge ], [ %i.u, %bb.q ] ; 2 uses
  %i.ck = and i64 %.1.jt1, %.248.jt1
  %i.cl = icmp ne i64 %i.ck, 0                    ; 2 uses
  %i.cm = lshr i64 %.1.jt1, 1                     ; 3 uses
  %i.cn = fmul double %.166.jt1, 2.000000e+00
  %i.co = uitofp i1 %i.cl to double
  %i.cp = fadd double %i.cn, %i.co                ; 4 uses
  %i.cq = add i64 %.152.jt1, -1                   ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.g, label %._crit_edge

.thread139:                                       ; preds = %bb.i
  %narrow = select i1 %i.cg, i1 %i.cl, i1 false
  %3 = uitofp i1 %narrow to double
  %i.cs = fadd double %i.cp, %3
  %i.ct = fmul double %.150.jt3, %i.cs
  br label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit

.thread130:                                       ; preds = %bb.h
  %i.cu = uitofp i1 %i.cg to double
  %i.cv = fadd double %i.cp, %i.cu
  %i.cw = fmul double %.150.jt4, %i.cv
  br label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit

_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit: ; preds = %bb.c, %bb.k, %bb.l, %bb.j, %bb.a, %bb.f, %.thread130, %.thread139
  %.sroa.063.0 = phi double [ 0.000000e+00, %bb.a ], [ %i.p, %bb.f ], [ 0.000000e+00, %bb.k ], [ %i.cw, %.thread130 ], [ %i.ct, %.thread139 ], [ %.166.jt1, %bb.l ], [ %i.cp, %bb.j ], [ 0.000000e+00, %bb.c ]
  %.sroa.364.0 = phi i8 [ 1, %bb.a ], [ 1, %bb.f ], [ 1, %bb.k ], [ 1, %.thread130 ], [ 1, %.thread139 ], [ 1, %bb.l ], [ 1, %bb.j ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { double, i8 } poison, double %.sroa.063.0, 0
  %.fca.1.insert = insertvalue { double, i8 } %.fca.0.insert, i8 %.sroa.364.0, 1
  ret { double, i8 } %.fca.1.insert
}

declare void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !570    ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !123  ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !153  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !124
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.b
  %i.m = phi ptr [ %.pre.i, %bb.b ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  store i8 %i.b, ptr %i.n, align 1, !tbaa !124
  store i64 %i.e, ptr %i.c, align 8, !tbaa !123
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !153
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.e
  store i8 0, ptr %i.p, align 1, !tbaa !124
  ret ptr %0
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 2 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 2 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !230    ; 10 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !124   ; 2 uses
  %i.e = sext i8 %i.d to i32                      ; 6 uses
  %i.f = and i32 %i.e, 224
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.b, label %bb.c, !prof !569

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !124
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 192
  %.not79 = icmp eq i32 %i.k, 128
  tail call void @llvm.assume(i1 %.not79)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.l, ptr %0, align 8, !tbaa !230
  %i.m = shl nsw i32 %i.e, 6
  %i.n = and i32 %i.m, 1984
  %i.o = and i32 %i.j, 63
  %i.p = or disjoint i32 %i.o, %i.n
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.e, 240
  %i.r = icmp eq i32 %i.q, 224
  br i1 %i.r, label %bb.d, label %bb.e, !prof !569

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !124   ; 2 uses
  %.not77 = icmp slt i8 %i.t, -64
  tail call void @llvm.assume(i1 %.not77)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !124   ; 2 uses
  %.not78 = icmp slt i8 %i.v, -64
  tail call void @llvm.assume(i1 %.not78)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store ptr %i.w, ptr %0, align 8, !tbaa !230
  %i.x = shl nsw i32 %i.e, 12
  %i.y = and i32 %i.x, 61440
  %i.z = and i8 %i.t, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = or disjoint i32 %i.ab, %i.y
  %i.ad = and i8 %i.v, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.ag = and i32 %i.e, 248
  %i.ah = icmp eq i32 %i.ag, 240
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !124 ; 2 uses
  %.not = icmp slt i8 %i.aj, -64
  tail call void @llvm.assume(i1 %.not)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !124 ; 2 uses
  %.not75 = icmp slt i8 %i.al, -64
  tail call void @llvm.assume(i1 %.not75)
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !124 ; 2 uses
  %.not76 = icmp slt i8 %i.an, -64
  tail call void @llvm.assume(i1 %.not76)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.ao, ptr %0, align 8, !tbaa !230
  %i.ap = shl nsw i32 %i.e, 18
  %i.aq = and i32 %i.ap, 1835008
  %i.ar = and i8 %i.aj, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 12
  %i.au = or disjoint i32 %i.at, %i.aq            ; 3 uses
  %i.av = and i8 %i.al, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 6
  %i.ay = and i8 %i.an, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.au            ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.au, 65535
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp samesign ugt i32 %i.au, 1114111
  br i1 %i.bd, label %bb.g, label %.critedge, !prof !223

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.bf, align 1, !tbaa !348
  store ptr @.str.95, ptr %2, align 8, !tbaa !124
  store i8 3, ptr %i.be, align 8, !tbaa !345
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bg = zext nneg i32 %i.bb to i64
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !152
  store ptr %i.a, ptr %3, align 8, !tbaa !124, !alias.scope !1038
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !124, !alias.scope !1038
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 15, ptr %i.bi, align 8, !tbaa !345, !alias.scope !1038
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.bj, align 1, !tbaa !348, !alias.scope !1038
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %1, ptr noundef nonnull align 8 dereferenceable(18) %2, ptr noundef nonnull align 8 dereferenceable(18) %3)
  unreachable

bb.h:                                             ; preds = %bb.e
  store ptr %i.ai, ptr %0, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.bl, align 1, !tbaa !348
  store ptr @.str.96, ptr %5, align 8, !tbaa !124
  store i8 3, ptr %i.bk, align 8, !tbaa !345
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bm = zext i8 %i.d to i64
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !152
end_hunk_0
