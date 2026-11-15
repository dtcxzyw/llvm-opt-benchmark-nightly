Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_lookahead?download=true
inline.NumInlined: 2556
inline.NumDeleted: 652
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN3sat9lookahead14try_add_binaryENS_7literalES1_:bb.a
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit9.i75

_ZN3sat9lookahead13update_prefixENS_7literalE.exit._ZNK6vectorIjLb0EjE4sizeEv.exit.i73_crit_edge: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %bb.v
  store i32 %i.gg, ptr %i.ga, align 4, !tbaa !135
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !131 ; 2 uses
  %i.hc = trunc i64 %i.hb to i32
  store i32 %i.hc, ptr %i.fy, align 4, !tbaa !134
  %i.hd = lshr i32 %2, 1
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.he ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !135 ; 2 uses
  %.sroa.speculated.i72 = tail call i32 @llvm.umin.i32(i32 %i.hh, i32 31)
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.gd, i64 -4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !107
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i73

_ZNK6vectorIjLb0EjE4sizeEv.exit.i73:              ; preds = %_ZN3sat9lookahead13update_prefixENS_7literalE.exit._ZNK6vectorIjLb0EjE4sizeEv.exit.i73_crit_edge, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit.thread
  %i.hi = phi i64 [ %i.gl, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit.thread ], [ %i.hb, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit._ZNK6vectorIjLb0EjE4sizeEv.exit.i73_crit_edge ] ; 3 uses
  %i.hj = phi i32 [ %i.gg, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit.thread ], [ %.pre, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit._ZNK6vectorIjLb0EjE4sizeEv.exit.i73_crit_edge ] ; 3 uses
  %.sroa.speculated.i7281 = phi i32 [ %.sroa.speculated.i7280, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit.thread ], [ %.sroa.speculated.i72, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit._ZNK6vectorIjLb0EjE4sizeEv.exit.i73_crit_edge ]
  %i.hk = phi i32 [ %i.gs, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit.thread ], [ %i.hh, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit._ZNK6vectorIjLb0EjE4sizeEv.exit.i73_crit_edge ]
  %i.hl = phi ptr [ %i.gr, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit.thread ], [ %i.hg, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit._ZNK6vectorIjLb0EjE4sizeEv.exit.i73_crit_edge ] ; 2 uses
  %i.hm = phi ptr [ %i.gq, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit.thread ], [ %i.hf, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit._ZNK6vectorIjLb0EjE4sizeEv.exit.i73_crit_edge ] ; 3 uses
  %.not.i74 = icmp ult i32 %i.hk, %i.hj
  br i1 %.not.i74, label %bb.w, label %_ZNK6vectorIjLb0EjE4sizeEv.exit9.i75

bb.w:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i73
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !134
  %notmask.i77 = shl nsw i32 -1, %.sroa.speculated.i7281
  %i.ho = xor i32 %notmask.i77, -1                ; 2 uses
  %i.hp = and i32 %i.hn, %i.ho
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = zext nneg i32 %i.ho to i64
  %i.hs = and i64 %i.hi, %i.hr
  %.not7.i78 = icmp eq i64 %i.hs, %i.hq
  br i1 %.not7.i78, label %_ZN3sat9lookahead13update_prefixENS_7literalE.exit79, label %_ZNK6vectorIjLb0EjE4sizeEv.exit9.i75

_ZNK6vectorIjLb0EjE4sizeEv.exit9.i75:             ; preds = %_ZN3sat9lookahead13update_prefixENS_7literalE.exit, %bb.w, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i73
  %i.ht = phi i64 [ %i.gu, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit ], [ %i.hi, %bb.w ], [ %i.hi, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i73 ]
  %i.hu = phi ptr [ %i.gz, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit ], [ %i.hl, %bb.w ], [ %i.hl, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i73 ]
  %i.hv = phi ptr [ %i.gy, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit ], [ %i.hm, %bb.w ], [ %i.hm, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i73 ]
  %.0.i8.i76 = phi i32 [ 0, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit ], [ %i.hj, %bb.w ], [ %i.hj, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i73 ]
  store i32 %.0.i8.i76, ptr %i.hu, align 4, !tbaa !135
  %i.hw = trunc i64 %i.ht to i32
  store i32 %i.hw, ptr %i.hv, align 4, !tbaa !134
  br label %_ZN3sat9lookahead13update_prefixENS_7literalE.exit79

_ZN3sat9lookahead13update_prefixENS_7literalE.exit79: ; preds = %bb.w, %_ZNK6vectorIjLb0EjE4sizeEv.exit9.i75
  tail call void @_ZN3sat9lookahead10add_binaryENS_7literalES1_(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %1, i32 %2)
  br label %bb.x

bb.x:                                             ; preds = %bb.p, %bb.q, %bb.t, %_ZN3sat9lookahead13update_prefixENS_7literalE.exit79, %bb.s, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead10pre_selectEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_Z19get_verbosity_levelv()
  %i.b = icmp ugt i32 %i.a, 9
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_Z12verbose_lockv()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.4, i64 noundef 25) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.g = load i32, ptr %i.f, align 8, !tbaa !264
  %i.h = zext i32 %i.g to i64
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.h)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  tail call void @_Z14verbose_unlockv()
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.4, i64 noundef 25) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.n = load i32, ptr %i.m, align 8, !tbaa !264
  %i.o = zext i32 %i.n to i64
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.o)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !265  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN6vectorIN3sat9lookahead14literal_offsetELb0EjE5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  store i32 0, ptr %i.t, align 4, !tbaa !107
  br label %_ZN6vectorIN3sat9lookahead14literal_offsetELb0EjE5resetEv.exit

_ZN6vectorIN3sat9lookahead14literal_offsetELb0EjE5resetEv.exit: ; preds = %bb.e, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !112  ; 3 uses
  %i.x = load i32, ptr %i.u, align 8, !tbaa !264  ; 2 uses
  %i.y = zext i32 %i.x to i64
  %.idx = shl nuw nsw i64 %i.y, 2                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not17 = icmp eq i32 %i.x, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIN3sat9lookahead14literal_offsetELb0EjE5resetEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !112 ; 5 uses
  %i.ac = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.018.prol = phi ptr [ %i.aj, %.prol.preheader ], [ %i.w, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.af = load i32, ptr %.018.prol, align 4, !tbaa !107
  %i.ag = and i32 %i.af, 2147483647
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ah
  store i32 0, ptr %i.ai, align 4, !tbaa !107
  %i.aj = getelementptr inbounds nuw i8, ptr %.018.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !377

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.018.unr = phi ptr [ %i.w, %.lr.ph ], [ %i.aj, %.prol.preheader ]
  %i.ak = icmp ult i64 %i.ac, 12
  br i1 %i.ak, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %_ZN6vectorIN3sat9lookahead14literal_offsetELb0EjE5resetEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZNK3sat9lookahead9scope_lvlEv.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !107
  br label %_ZNK3sat9lookahead9scope_lvlEv.exit

_ZNK3sat9lookahead9scope_lvlEv.exit:              ; preds = %._crit_edge, %bb.g
  %.0.i.i = phi i32 [ %i.ap, %bb.g ], [ 0, %._crit_edge ]
  %i.aq = tail call noundef zeroext i1 @_ZN3sat9lookahead6selectEj(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 noundef %.0.i.i)
  br i1 %i.aq, label %bb.h, label %bb.u

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.018 = phi ptr [ %i.bk, %.lr.ph.new ], [ %.018.unr, %.prol.loopexit ] ; 5 uses
  %i.ar = load i32, ptr %.018, align 4, !tbaa !107
  %i.as = and i32 %i.ar, 2147483647
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.at
  store i32 0, ptr %i.au, align 4, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %.018, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !107
  %i.ax = and i32 %i.aw, 2147483647
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ay
  store i32 0, ptr %i.az, align 4, !tbaa !107
  %i.ba = getelementptr inbounds nuw i8, ptr %.018, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !107
  %i.bc = and i32 %i.bb, 2147483647
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bd
  store i32 0, ptr %i.be, align 4, !tbaa !107
  %i.bf = getelementptr inbounds nuw i8, ptr %.018, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !107
  %i.bh = and i32 %i.bg, 2147483647
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !107
  %i.bk = getelementptr inbounds nuw i8, ptr %.018, i64 16 ; 2 uses
  %.not.3 = icmp eq ptr %i.bk, %i.z
  br i1 %.not.3, label %._crit_edge, label %.lr.ph.new

bb.h:                                             ; preds = %_ZNK3sat9lookahead9scope_lvlEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !266 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread.i, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread.i: ; preds = %bb.h
  tail call void @_ZN3sat9lookahead8init_sccEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br label %_ZN3sat9lookahead7get_sccEv.exit

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.i: ; preds = %bb.h
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !107 ; 2 uses
  tail call void @_ZN3sat9lookahead8init_sccEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %.not.i9 = icmp eq i32 %i.bp, 0
  br i1 %.not.i9, label %_ZN3sat9lookahead7get_sccEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %wide.trip.count.i = zext i32 %i.bp to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 2 uses
  %i.br = load i8, ptr %1, align 8, !tbaa !114, !range !256, !noundef !99
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN3sat9lookahead7get_sccEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !266
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %indvars.iv.i
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !268
  %i.bw = shl i32 %i.bv, 1                        ; 3 uses
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !269 ; 2 uses
  %i.by = zext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !272
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3sat9lookahead7get_sccENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %i.bw)
  %.pre.i = load ptr, ptr %i.bq, align 8, !tbaa !269
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cc = phi ptr [ %.pre.i, %bb.k ], [ %i.bx, %bb.j ]
  %i.cd = or disjoint i32 %i.bw, 1                ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !272
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN3sat9lookahead7get_sccENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %i.cd)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN3sat9lookahead7get_sccEv.exit, label %bb.i, !llvm.loop !1

_ZN3sat9lookahead7get_sccEv.exit:                 ; preds = %bb.i, %bb.n, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread.i, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !114, !range !256, !noundef !99
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.u, label %bb.o

bb.o:                                             ; preds = %_ZN3sat9lookahead7get_sccEv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  store i32 -2, ptr %i.cl, align 8, !tbaa !107
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %storemerge.in.sroa.speculate.load..i = load i32, ptr %i.cm, align 4, !tbaa !107 ; 2 uses
  %.not5561.i = icmp eq i32 %storemerge.in.sroa.speculate.load..i, -2
  br i1 %.not5561.i, label %_ZN3sat9lookahead12find_heightsEv.exit, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !269 ; 5 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32.i, %.lr.ph67.i
  %.065.i = phi i32 [ 0, %.lr.ph67.i ], [ %.2.lcssa.i, %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32.i ]
  %storemerge.in.sroa.speculated64.i = phi i32 [ %storemerge.in.sroa.speculate.load..i, %.lr.ph67.i ], [ %.sroa.0.0.copyload.i.i, %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32.i ] ; 5 uses
  %.sroa.051.063.i = phi i32 [ -2, %.lr.ph67.i ], [ %.sroa.051.2.lcssa.i, %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32.i ]
  %.sroa.053.062.i = phi i32 [ -2, %.lr.ph67.i ], [ %.sroa.0.0.copyload.i29.i, %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32.i ]
  %i.cp = zext i32 %storemerge.in.sroa.speculated64.i to i64
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.co, i64 %i.cp ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 28 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.cr, align 4, !tbaa !107 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.0.0.copyload.i29.i = load i32, ptr %i.cs, align 8, !tbaa !107 ; 4 uses
  %.not56.i = icmp eq i32 %.sroa.0.0.copyload.i29.i, %.sroa.053.062.i ; 2 uses
  %.sroa.051.1.i = select i1 %.not56.i, i32 %.sroa.051.063.i, i32 -2 ; 3 uses
  %.1.i = select i1 %.not56.i, i32 %.065.i, i32 0 ; 3 uses
  %i.ct = xor i32 %storemerge.in.sroa.speculated64.i, 1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %i.co, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !106 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %._crit_edge.i, label %_ZNK3sat9lookahead8num_nextENS_7literalE.exit.i

_ZNK3sat9lookahead8num_nextENS_7literalE.exit.i:  ; preds = %bb.p
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !107 ; 2 uses
  %.not69.i = icmp eq i32 %i.da, 0
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK3sat9lookahead8num_nextENS_7literalE.exit.i
  %wide.trip.count.i10 = zext i32 %i.da to i64
  br label %.lr.ph.i11

._crit_edge.i:                                    ; preds = %bb.r, %_ZNK3sat9lookahead8num_nextENS_7literalE.exit.i, %bb.p
  %.sroa.051.2.lcssa.i = phi i32 [ %.sroa.051.1.i, %_ZNK3sat9lookahead8num_nextENS_7literalE.exit.i ], [ %.sroa.051.1.i, %bb.p ], [ %.sroa.051.3.i, %bb.r ] ; 3 uses
  %.2.lcssa.i = phi i32 [ %.1.i, %_ZNK3sat9lookahead8num_nextENS_7literalE.exit.i ], [ %.1.i, %bb.p ], [ %.4.i, %bb.r ] ; 2 uses
  %i.db = icmp eq i32 %.sroa.0.0.copyload.i29.i, %storemerge.in.sroa.speculated64.i
  br i1 %i.db, label %_ZN3sat9lookahead9set_childENS_7literalES1_.exit.i, label %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32.i

.lr.ph.i11:                                       ; preds = %bb.r, %.lr.ph.preheader.i
  %indvars.iv.i12 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i14, %bb.r ] ; 2 uses
  %.259.i = phi i32 [ %.1.i, %.lr.ph.preheader.i ], [ %.4.i, %bb.r ] ; 3 uses
  %.sroa.051.257.i = phi i32 [ %.sroa.051.1.i, %.lr.ph.preheader.i ], [ %.sroa.051.3.i, %bb.r ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i12
  %.sroa.0.0.copyload.i30.i = load i32, ptr %i.dc, align 4, !tbaa !107
  %i.dd = xor i32 %.sroa.0.0.copyload.i30.i, 1
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.co, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.0.0.copyload.i31.i = load i32, ptr %i.dg, align 8, !tbaa !107 ; 3 uses
  %i.dh = icmp eq i32 %.sroa.0.0.copyload.i31.i, %.sroa.0.0.copyload.i29.i
  br i1 %i.dh, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i11
  %i.di = zext i32 %.sroa.0.0.copyload.i31.i to i64
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.co, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !273 ; 2 uses
  %.not.i13 = icmp ult i32 %i.dl, %.259.i         ; 2 uses
  %i.dm = add i32 %i.dl, 1
  %spec.select.i = select i1 %.not.i13, i32 %.sroa.051.257.i, i32 %.sroa.0.0.copyload.i31.i
  %spec.select54.i = select i1 %.not.i13, i32 %.259.i, i32 %i.dm
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i11
  %.sroa.051.3.i = phi i32 [ %.sroa.051.257.i, %.lr.ph.i11 ], [ %spec.select.i, %bb.q ] ; 2 uses
  %.4.i = phi i32 [ %.259.i, %.lr.ph.i11 ], [ %spec.select54.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i12, 1 ; 2 uses
  %exitcond.not.i15 = icmp eq i64 %indvars.iv.next.i14, %wide.trip.count.i10
  br i1 %exitcond.not.i15, label %._crit_edge.i, label %.lr.ph.i11, !llvm.loop !2

_ZN3sat9lookahead9set_childENS_7literalES1_.exit.i: ; preds = %._crit_edge.i
  %i.dn = icmp eq i32 %.sroa.051.2.lcssa.i, -2    ; 2 uses
  %i.do = zext i32 %.sroa.051.2.lcssa.i to i64
  %i.dp = getelementptr inbounds nuw [40 x i8], ptr %i.co, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32 ; 2 uses
  %.sroa.0.0.in.i.i = select i1 %i.dn, ptr %i.cl, ptr %i.dq
  %.sroa.0.0.i.i = load i32, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !107
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 %.2.lcssa.i, ptr %i.dr, align 4, !tbaa !273
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i32 -2, ptr %i.ds, align 8, !tbaa !107
  store i32 %.sroa.0.0.i.i, ptr %i.cr, align 4, !tbaa !107
  br i1 %i.dn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN3sat9lookahead9set_childENS_7literalES1_.exit.i
  store i32 %storemerge.in.sroa.speculated64.i, ptr %i.cl, align 8, !tbaa !107
  br label %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32.i

bb.t:                                             ; preds = %_ZN3sat9lookahead9set_childENS_7literalES1_.exit.i
  store i32 %storemerge.in.sroa.speculated64.i, ptr %i.dq, align 8, !tbaa !107
  br label %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32.i

_ZN3sat9lookahead9set_childENS_7literalES1_.exit32.i: ; preds = %bb.t, %bb.s, %._crit_edge.i
  %.not55.i = icmp eq i32 %.sroa.0.0.copyload.i.i, -2
  br i1 %.not55.i, label %_ZN3sat9lookahead12find_heightsEv.exit, label %bb.p, !llvm.loop !3

_ZN3sat9lookahead12find_heightsEv.exit:           ; preds = %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32.i, %bb.o
  tail call void @_ZN3sat9lookahead25construct_lookahead_tableEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br label %bb.u

bb.u:                                             ; preds = %_ZN3sat9lookahead7get_sccEv.exit, %_ZN3sat9lookahead12find_heightsEv.exit, %_ZNK3sat9lookahead9scope_lvlEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sat9lookahead6selectEj(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN3sat9lookahead18init_pre_selectionEj(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.c = load i32, ptr %i.b, align 8, !tbaa !264  ; 3 uses
  %i.d = udiv i32 %i.c, 50
  %i.e = load i32, ptr %i.a, align 4, !tbaa !107
  %.sroa.speculated53 = tail call i32 @llvm.umax.i32(i32 %i.e, i32 %i.d)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.peel.begin, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !380, !range !256, !noundef !99
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.peel.begin

bb.c:                                             ; preds = %bb.b
  %i.i = udiv i32 %.sroa.speculated53, %1
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i32 [ %i.i, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load i32, ptr %i.k, align 4, !tbaa !107
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %i.j)
  %.sroa.speculated.fr = freeze i32 %.sroa.speculated ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 5 uses
  %i.n = tail call noundef double @_ZN3sat9lookahead15init_candidatesEjb(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 poison, i1 noundef zeroext false)
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !266  ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3sat9lookahead6selectEj:bb.a
  %i.u = tail call noundef double @_ZN3sat9lookahead15init_candidatesEjb(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 poison, i1 noundef zeroext true)
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !266  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.thread, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE5emptyEv.exit

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE5emptyEv.exit: ; preds = %.peel.next
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !107
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.thread, label %.critedge35.preheader

.critedge35.preheader:                            ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE5emptyEv.exit, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE5emptyEv.exit.peel
  %i.aa = phi ptr [ %i.o, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE5emptyEv.exit.peel ], [ %i.v, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE5emptyEv.exit ] ; 4 uses
  %.lcssa75 = phi double [ %i.n, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE5emptyEv.exit.peel ], [ %i.u, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE5emptyEv.exit ] ; 2 uses
  %.mask = and i32 %.sroa.speculated.fr, 2147483647
  %i.ab = shl i32 %.sroa.speculated.fr, 1         ; 4 uses
  %.not32.not = icmp eq i32 %.mask, 0
  br i1 %.not32.not, label %.critedge35.preheader.split.us, label %.critedge35.preheader.split

.critedge35.preheader.split.us:                   ; preds = %.critedge35.preheader, %.critedge3.us
  %i.ac = phi ptr [ %i.bf, %.critedge3.us ], [ %i.aa, %.critedge35.preheader ]
  %i.ad = phi ptr [ %i.bg, %.critedge3.us ], [ %i.aa, %.critedge35.preheader ] ; 3 uses
  %.02673.us = phi double [ %.127.lcssa.us, %.critedge3.us ], [ %.lcssa75, %.critedge35.preheader ]
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.critedge, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread.us

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread.us: ; preds = %.critedge35.preheader.split.us
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !107 ; 2 uses
  %.not3257.us = icmp ult i32 %i.ag, %i.ab
  br i1 %.not3257.us, label %.critedge, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us.preheader

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us.preheader: ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread.us
  %i.ah = uitofp i32 %i.ag to double
  %i.ai = fadd double %i.ah, 1.000000e-04
  %i.aj = fdiv double %.02673.us, %i.ai
  br label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us: ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us.preheader, %bb.f
  %i.ak = phi ptr [ %i.bd, %bb.f ], [ %i.ac, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us.preheader ] ; 2 uses
  %i.al = phi ptr [ %i.bd, %bb.f ], [ %i.ad, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us.preheader ] ; 4 uses
  %.067.us = phi i32 [ %.1.us, %bb.f ], [ 0, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us.preheader ] ; 4 uses
  %.12366.us = phi i1 [ %.2.us, %bb.f ], [ false, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us.preheader ] ; 2 uses
  %.12765.us = phi double [ %.228.us, %bb.f ], [ 0.000000e+00, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us.preheader ] ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !107 ; 3 uses
  %i.ao = icmp uge i32 %.067.us, %i.an
  %.not33.us = icmp ult i32 %i.an, %i.ab
  %or.cond = or i1 %i.ao, %.not33.us
  br i1 %or.cond, label %.critedge3.us, label %bb.d

bb.d:                                             ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us
  %i.ap = zext i32 %.067.us to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !274 ; 2 uses
  %i.at = fcmp ult double %i.as, %i.aj
  br i1 %i.at, label %_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = fadd double %.12765.us, %i.as
  %i.av = add nuw i32 %.067.us, 1
  br label %bb.f

_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit.us: ; preds = %bb.d
  %i.aw = add i32 %i.an, -1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !276
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !266 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !107
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !107
  br label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit.us, %bb.e
  %i.bd = phi ptr [ %i.ak, %bb.e ], [ %i.az, %_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit.us ] ; 3 uses
  %.228.us = phi double [ %i.au, %bb.e ], [ %.12765.us, %_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit.us ] ; 2 uses
  %.2.us = phi i1 [ %.12366.us, %bb.e ], [ true, %_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit.us ] ; 2 uses
  %.1.us = phi i32 [ %i.av, %bb.e ], [ %.067.us, %_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit.us ]
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.critedge3.us, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us, !llvm.loop !378

.critedge3.us:                                    ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us, %bb.f
  %i.bf = phi ptr [ %i.ak, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us ], [ null, %bb.f ]
  %i.bg = phi ptr [ %i.al, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us ], [ null, %bb.f ]
  %.127.lcssa.us = phi double [ %.12765.us, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us ], [ %.228.us, %bb.f ]
  %.123.lcssa.us = phi i1 [ %.12366.us, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.us ], [ %.2.us, %bb.f ]
  br i1 %.123.lcssa.us, label %.critedge35.preheader.split.us, label %.critedge, !llvm.loop !379

.critedge35.preheader.split:                      ; preds = %.critedge35.preheader, %.critedge3
  %i.bh = phi ptr [ %i.bu, %.critedge3 ], [ %i.aa, %.critedge35.preheader ]
  %i.bi = phi ptr [ %i.bv, %.critedge3 ], [ %i.aa, %.critedge35.preheader ] ; 3 uses
  %.02673 = phi double [ %.127.lcssa, %.critedge3 ], [ %.lcssa75, %.critedge35.preheader ]
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %.critedge, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread: ; preds = %.critedge35.preheader.split
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !107 ; 2 uses
  %.not3257 = icmp ult i32 %i.bl, %i.ab
  br i1 %.not3257, label %.critedge, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.preheader

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.preheader: ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread
  %i.bm = uitofp i32 %i.bl to double
  %i.bn = fadd double %i.bm, 1.000000e-04
  %i.bo = fdiv double %.02673, %i.bn
  br label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread: ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.preheader, %bb.i
  %i.bp = phi ptr [ %i.ck, %bb.i ], [ %i.bh, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.preheader ] ; 2 uses
  %i.bq = phi ptr [ %i.ck, %bb.i ], [ %i.bi, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.preheader ] ; 4 uses
  %.067 = phi i32 [ %.1, %bb.i ], [ 0, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.preheader ] ; 4 uses
  %.12366 = phi i1 [ %.2, %bb.i ], [ false, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.preheader ] ; 2 uses
  %.12765 = phi double [ %.228, %bb.i ], [ 0.000000e+00, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread.preheader ] ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !107 ; 3 uses
  %i.bt = icmp uge i32 %.067, %i.bs
  %.not33 = icmp ult i32 %i.bs, %i.ab
  %or.cond95 = or i1 %i.bt, %.not33
  br i1 %or.cond95, label %.critedge3, label %bb.g

.critedge3:                                       ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread, %bb.i
  %i.bu = phi ptr [ %i.bp, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread ], [ null, %bb.i ]
  %i.bv = phi ptr [ %i.bq, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread ], [ null, %bb.i ]
  %.127.lcssa = phi double [ %.12765, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread ], [ %.228, %bb.i ]
  %.123.lcssa = phi i1 [ %.12366, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread ], [ %.2, %bb.i ]
  br i1 %.123.lcssa, label %.critedge35.preheader.split, label %.critedge, !llvm.loop !379

bb.g:                                             ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread
  %i.bw = zext i32 %.067 to i64
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !274 ; 2 uses
  %i.ca = fcmp ult double %i.bz, %i.bo
  br i1 %i.ca, label %_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = fadd double %.12765, %i.bz
  %i.cc = add nuw i32 %.067, 1
  br label %bb.i

_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit: ; preds = %bb.g
  %i.cd = add i32 %i.bs, -1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false), !tbaa.struct !276
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !266 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !107
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !107
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit
  %i.ck = phi ptr [ %i.bp, %bb.h ], [ %i.cg, %_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit ] ; 3 uses
  %.228 = phi double [ %i.cb, %bb.h ], [ %.12765, %_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit ] ; 2 uses
  %.2 = phi i1 [ %.12366, %bb.h ], [ true, %_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit ] ; 2 uses
  %.1 = phi i32 [ %i.cc, %bb.h ], [ %.067, %_ZN6vectorIN3sat9lookahead9candidateELb0EjE4backEv.exit ]
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.critedge3, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit40.thread, !llvm.loop !378

.critedge:                                        ; preds = %.critedge35.preheader.split, %.critedge3, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread, %.critedge35.preheader.split.us, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread.us, %.critedge3.us
  tail call void @_ZN3sat9lookahead9heap_sortEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !266 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.thread, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.lr.ph

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.lr.ph: ; preds = %.critedge
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -4 ; 2 uses
  %.promoted = load i32, ptr %i.co, align 4, !tbaa !107
  %i.cp = icmp ugt i32 %.promoted, %.sroa.speculated.fr
  br i1 %i.cp, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.preheader, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.thread

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.preheader: ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.lr.ph
  store i32 %.sroa.speculated.fr, ptr %i.co, align 4, !tbaa !107
  br label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.thread

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.thread: ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE5emptyEv.exit.thread.peel, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE5emptyEv.exit, %.peel.next, %.critedge, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.lr.ph, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.preheader
  %.130 = phi i1 [ true, %.critedge ], [ true, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.preheader ], [ true, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit44.lr.ph ], [ false, %.peel.next ], [ false, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE5emptyEv.exit ], [ false, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE5emptyEv.exit.thread.peel ]
  ret i1 %.130
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead7get_sccEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread: ; preds = %bb.a
  tail call void @_ZN3sat9lookahead8init_sccEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br label %.critedge

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107  ; 2 uses
  tail call void @_ZN3sat9lookahead8init_sccEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.g = load i8, ptr %1, align 8, !tbaa !114, !range !256, !noundef !99
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b, %bb.g, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.thread, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 8, !tbaa !268
  %i.l = shl i32 %i.k, 1                          ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !269  ; 2 uses
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 8, !tbaa !272
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3sat9lookahead7get_sccENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %i.l)
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !269
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre, %bb.d ], [ %i.m, %bb.c ]
  %i.s = or disjoint i32 %i.l, 1                  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 8, !tbaa !272
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3sat9lookahead7get_sccENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %i.s)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3sat9lookahead12find_heightsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1160) initializes((1144, 1148)) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  store i32 -2, ptr %i.a, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %storemerge.in.sroa.speculate.load. = load i32, ptr %i.b, align 4, !tbaa !107 ; 2 uses
  %.not5561 = icmp eq i32 %storemerge.in.sroa.speculate.load., -2
  br i1 %.not5561, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !269  ; 5 uses
  br label %bb.b

._crit_edge68:                                    ; preds = %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph67, %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32
  %.065 = phi i32 [ 0, %.lr.ph67 ], [ %.2.lcssa, %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32 ]
  %storemerge.in.sroa.speculated64 = phi i32 [ %storemerge.in.sroa.speculate.load., %.lr.ph67 ], [ %.sroa.0.0.copyload.i, %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32 ] ; 5 uses
  %.sroa.051.063 = phi i32 [ -2, %.lr.ph67 ], [ %.sroa.051.2.lcssa, %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32 ]
  %.sroa.053.062 = phi i32 [ -2, %.lr.ph67 ], [ %.sroa.0.0.copyload.i29, %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32 ]
  %i.e = zext i32 %storemerge.in.sroa.speculated64 to i64
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 4, !tbaa !107 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i29 = load i32, ptr %i.h, align 8, !tbaa !107 ; 4 uses
  %.not56 = icmp eq i32 %.sroa.0.0.copyload.i29, %.sroa.053.062 ; 2 uses
  %.sroa.051.1 = select i1 %.not56, i32 %.sroa.051.063, i32 -2 ; 3 uses
  %.1 = select i1 %.not56, i32 %.065, i32 0       ; 3 uses
  %i.i = xor i32 %storemerge.in.sroa.speculated64, 1
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !106  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %._crit_edge, label %_ZNK3sat9lookahead8num_nextENS_7literalE.exit

_ZNK3sat9lookahead8num_nextENS_7literalE.exit:    ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !107  ; 2 uses
  %.not69 = icmp eq i32 %i.p, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK3sat9lookahead8num_nextENS_7literalE.exit
  %wide.trip.count = zext i32 %i.p to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.b, %_ZNK3sat9lookahead8num_nextENS_7literalE.exit
  %.sroa.051.2.lcssa = phi i32 [ %.sroa.051.1, %_ZNK3sat9lookahead8num_nextENS_7literalE.exit ], [ %.sroa.051.1, %bb.b ], [ %.sroa.051.3, %bb.d ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1, %_ZNK3sat9lookahead8num_nextENS_7literalE.exit ], [ %.1, %bb.b ], [ %.4, %bb.d ] ; 2 uses
  %i.q = icmp eq i32 %.sroa.0.0.copyload.i29, %storemerge.in.sroa.speculated64
  br i1 %i.q, label %_ZN3sat9lookahead9set_childENS_7literalES1_.exit, label %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.259 = phi i32 [ %.1, %.lr.ph.preheader ], [ %.4, %bb.d ] ; 3 uses
  %.sroa.051.257 = phi i32 [ %.sroa.051.1, %.lr.ph.preheader ], [ %.sroa.051.3, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.r, align 4, !tbaa !107
  %i.s = xor i32 %.sroa.0.0.copyload.i30, 1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.v, align 8, !tbaa !107 ; 3 uses
  %i.w = icmp eq i32 %.sroa.0.0.copyload.i31, %.sroa.0.0.copyload.i29
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.x = zext i32 %.sroa.0.0.copyload.i31 to i64
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !273 ; 2 uses
  %.not = icmp ult i32 %i.aa, %.259               ; 2 uses
  %i.ab = add i32 %i.aa, 1
  %spec.select = select i1 %.not, i32 %.sroa.051.257, i32 %.sroa.0.0.copyload.i31
  %spec.select54 = select i1 %.not, i32 %.259, i32 %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.sroa.051.3 = phi i32 [ %.sroa.051.257, %.lr.ph ], [ %spec.select, %bb.c ] ; 2 uses
  %.4 = phi i32 [ %.259, %.lr.ph ], [ %spec.select54, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

_ZN3sat9lookahead9set_childENS_7literalES1_.exit: ; preds = %._crit_edge
  %i.ac = icmp eq i32 %.sroa.051.2.lcssa, -2      ; 2 uses
  %i.ad = zext i32 %.sroa.051.2.lcssa to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %.sroa.0.0.in.i = select i1 %i.ac, ptr %i.a, ptr %i.af
  %.sroa.0.0.i = load i32, ptr %.sroa.0.0.in.i, align 8, !tbaa !107
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %.2.lcssa, ptr %i.ag, align 4, !tbaa !273
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 -2, ptr %i.ah, align 8, !tbaa !107
  store i32 %.sroa.0.0.i, ptr %i.g, align 4, !tbaa !107
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3sat9lookahead9set_childENS_7literalES1_.exit
  store i32 %storemerge.in.sroa.speculated64, ptr %i.a, align 8, !tbaa !107
  br label %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32

bb.f:                                             ; preds = %_ZN3sat9lookahead9set_childENS_7literalES1_.exit
  store i32 %storemerge.in.sroa.speculated64, ptr %i.af, align 8, !tbaa !107
  br label %_ZN3sat9lookahead9set_childENS_7literalES1_.exit32

_ZN3sat9lookahead9set_childENS_7literalES1_.exit32: ; preds = %bb.f, %bb.e, %._crit_edge
  %.not55 = icmp eq i32 %.sroa.0.0.copyload.i, -2
  br i1 %.not55, label %._crit_edge68, label %bb.b, !llvm.loop !3
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead25construct_lookahead_tableEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 4 uses
  %.sroa.0.0.i = load i32, ptr %i.a, align 8, !tbaa !107 ; 2 uses
  %.not57 = icmp eq i32 %.sroa.0.0.i, -2
  br i1 %.not57, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !265 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.thread47
  %i.d = phi ptr [ %.pre, %.lr.ph61 ], [ %i.u, %.thread47 ]
  %i.e = phi ptr [ %.pre, %.lr.ph61 ], [ %i.bi, %.thread47 ] ; 4 uses
  %.060 = phi i32 [ 0, %.lr.ph61 ], [ %.2, %.thread47 ] ; 3 uses
  %.sroa.030.059 = phi i32 [ %.sroa.0.0.i, %.lr.ph61 ], [ %.sroa.030.2, %.thread47 ] ; 4 uses
  %.sroa.024.058 = phi i32 [ -2, %.lr.ph61 ], [ %.sroa.024.2, %.thread47 ] ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit.thread, label %bb.c

_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit.thread: ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !269
  %i.h = zext i32 %.sroa.030.059 to i64           ; 2 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.h ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !272
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %.sroa.0.0.copyload.i41 = load i32, ptr %i.j, align 4, !tbaa !107
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !107  ; 3 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !269
end_hunk_1
begin_hunk_2_@_ZN3sat9lookahead7l_scoreENS_7literalERK7svectorIdjEddd:bb.a

bb.e:                                             ; preds = %bb.d
  %i.bj = zext i32 %i.be to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !275
  %i.bm = fadd double %.139, %i.bl
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.139.1 = phi double [ %i.bm, %bb.e ], [ %.139, %bb.d ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02843, i64 8 ; 2 uses
  %.not.1 = icmp eq ptr %i.bn, %i.k
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.new

bb.g:                                             ; preds = %.lr.ph50, %bb.g
  %.02549 = phi ptr [ %i.am, %.lr.ph50 ], [ %i.bz, %bb.g ] ; 3 uses
  %.02648 = phi double [ 0.000000e+00, %.lr.ph50 ], [ %i.by, %bb.g ]
  %.02747 = phi i32 [ %i.ai, %.lr.ph50 ], [ %i.bo, %bb.g ]
  %i.bo = add i32 %.02747, -1                     ; 2 uses
  %i.bp = load i32, ptr %.02549, align 4, !tbaa !122
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !275
  %i.bt = getelementptr inbounds nuw i8, ptr %.02549, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !122
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !275
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bx, double %.02648) ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.02549, i64 8 ; 2 uses
  %.not29 = icmp eq ptr %i.bz, %i.as
  %.not30 = icmp eq i32 %i.bo, 0
  %or.cond = select i1 %.not29, i1 true, i1 %.not30
  br i1 %or.cond, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.g, %._crit_edge, %_ZN6vectorIN3sat9lookahead6binaryELb0EjE3endEv.exit
  %.026.lcssa = phi double [ 0.000000e+00, %_ZN6vectorIN3sat9lookahead6binaryELb0EjE3endEv.exit ], [ 0.000000e+00, %._crit_edge ], [ %i.by, %bb.g ]
  %i.ca = tail call double @llvm.fmuladd.f64(double %5, double %.0.lcssa, double 1.000000e-01)
  %i.cb = tail call double @llvm.fmuladd.f64(double %4, double %.026.lcssa, double %i.ca) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !275 ; 2 uses
  %i.ce = fcmp olt double %i.cb, %i.cd
  %.sroa.speculated = select i1 %i.ce, double %i.cb, double %i.cd
  ret double %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead8init_sccEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !258
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN3sat9lookahead10inc_bstampEv.exit

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !258
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN3sat9lookahead10inc_bstampEv.exit, label %_ZN6vectorIjLb0EjE3endEv.exit.i.i

_ZN6vectorIjLb0EjE3endEv.exit.i.i:                ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !107  ; 2 uses
  %.not6.i.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i.i, label %_ZN3sat9lookahead10inc_bstampEv.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN6vectorIjLb0EjE3endEv.exit.i.i
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.k, i1 false), !tbaa !107
  br label %_ZN3sat9lookahead10inc_bstampEv.exit

_ZN3sat9lookahead10inc_bstampEv.exit:             ; preds = %bb.a, %bb.b, %_ZN6vectorIjLb0EjE3endEv.exit.i.i, %.lr.ph.i.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !266  ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge19, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.lr.ph: ; preds = %_ZN3sat9lookahead10inc_bstampEv.exit
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load i32, ptr %i.o, align 4, !tbaa !107
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.lr.ph, %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit13
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit13 ], [ 0, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 8, !tbaa !268
  %i.w = shl i32 %i.v, 1                          ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.x ; 5 uses
  store i32 0, ptr %i.y, align 8, !tbaa !272
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !273
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 -2, ptr %i.aa, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i32 0, ptr %i.ad, align 4, !tbaa !107
  br label %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit

_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit: ; preds = %.lr.ph, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store <4 x i32> <i32 0, i32 -2, i32 -2, i32 -2>, ptr %i.ae, align 8, !tbaa !107
  %i.af = load i32, ptr %i.a, align 8, !tbaa !258
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.x
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !107
  %i.ah = or disjoint i32 %i.w, 1
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.ai ; 5 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !272
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.ak, align 4, !tbaa !273
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 -2, ptr %i.al, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i12, label %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit13, label %bb.d

bb.d:                                             ; preds = %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  store i32 0, ptr %i.ao, align 4, !tbaa !107
  br label %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit13

_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit13: ; preds = %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store <4 x i32> <i32 0, i32 -2, i32 -2, i32 -2>, ptr %i.ap, align 8, !tbaa !107
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !258
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ai
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !107
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.o, align 4, !tbaa !107
  %i.at = zext i32 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %.lr.ph, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15.preheader

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15.preheader: ; preds = %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit13, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.lr.ph
  br label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15: ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15.preheader, %.critedge
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %.critedge ], [ 0, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15.preheader ] ; 3 uses
  %i.av = phi ptr [ %i.bf, %.critedge ], [ %i.m, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !107
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv24, %i.ay
  br i1 %i.az, label %.critedge, label %.critedge19

.critedge19:                                      ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15, %.critedge, %_ZN3sat9lookahead10inc_bstampEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store <4 x i32> <i32 -2, i32 0, i32 -1, i32 -2>, ptr %i.ba, align 8, !tbaa !107
  ret void

.critedge:                                        ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !268
  %i.bd = shl i32 %i.bc, 1                        ; 2 uses
  tail call void @_ZN3sat9lookahead9init_arcsENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %i.bd)
  %i.be = or disjoint i32 %i.bd, 1
  tail call void @_ZN3sat9lookahead9init_arcsENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %i.be)
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !266 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.critedge19, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15, !llvm.loop !393
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3sat9lookahead7get_sccENS_7literalE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1160) %0, i32 %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269  ; 10 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -2, ptr %i.e, align 8, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !291
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !291
  store i32 %i.h, ptr %i.d, align 8, !tbaa !272
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 6 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.i, align 8, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %.sroa.02.0.copyload.i, ptr %i.j, align 4, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %1, ptr %i.k, align 8, !tbaa !107
  store i32 %1, ptr %i.i, align 8, !tbaa !107
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1132 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN3sat9lookahead9found_sccENS_7literalE.exit, %bb.a
  %.sroa.033.0 = phi i32 [ %1, %bb.a ], [ %.sroa.033.1, %_ZN3sat9lookahead9found_sccENS_7literalE.exit ] ; 14 uses
  %i.p = zext i32 %.sroa.033.0 to i64
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.p ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.r, align 8, !tbaa !107 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !106  ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZNK3sat9lookahead7has_arcENS_7literalE.exit.thread, label %_ZNK3sat9lookahead7has_arcENS_7literalE.exit

_ZNK3sat9lookahead7has_arcENS_7literalE.exit:     ; preds = %bb.b
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !107
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !395  ; 3 uses
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %_ZNK3sat9lookahead7has_arcENS_7literalE.exit.thread

bb.c:                                             ; preds = %_ZNK3sat9lookahead7has_arcENS_7literalE.exit
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !395
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ab
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !107 ; 5 uses
  %i.ad = zext i32 %.sroa.0.0.copyload.i26 to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.ad ; 5 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !272 ; 2 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !272
  %i.aj = icmp ult i32 %i.af, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN3sat9lookahead9found_sccENS_7literalE.exit

bb.e:                                             ; preds = %bb.d
  store i32 %.sroa.0.0.copyload.i26, ptr %i.r, align 8, !tbaa !107
  br label %_ZN3sat9lookahead9found_sccENS_7literalE.exit

bb.f:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %.sroa.033.0, ptr %i.ak, align 8, !tbaa !107
  %i.al = load i32, ptr %i.f, align 4, !tbaa !291
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.f, align 4, !tbaa !291
  store i32 %i.am, ptr %i.ae, align 8, !tbaa !272
  %.sroa.02.0.copyload.i27 = load i32, ptr %i.i, align 8, !tbaa !107
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  store i32 %.sroa.02.0.copyload.i27, ptr %i.an, align 4, !tbaa !107
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i32 %.sroa.0.0.copyload.i26, ptr %i.ao, align 8, !tbaa !107
  store i32 %.sroa.0.0.copyload.i26, ptr %i.i, align 8, !tbaa !107
  br label %_ZN3sat9lookahead9found_sccENS_7literalE.exit

_ZNK3sat9lookahead7has_arcENS_7literalE.exit.thread: ; preds = %bb.b, %_ZNK3sat9lookahead7has_arcENS_7literalE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.ap, align 8, !tbaa !107 ; 5 uses
  %i.aq = icmp eq i32 %.sroa.033.0, %.sroa.0.0.copyload.i
  br i1 %i.aq, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNK3sat9lookahead7has_arcENS_7literalE.exit.thread
  %i.ar = load i32, ptr %i.i, align 8, !tbaa !107 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 28 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.as, align 4, !tbaa !107
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.i, align 8, !tbaa !107
  %i.at = lshr i32 %.sroa.033.0, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !275
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !292
  store i32 %i.ax, ptr %i.q, align 8, !tbaa !272
  %.sroa.020.0.copyload.i = load i32, ptr %i.o, align 4, !tbaa !107
  store i32 %.sroa.020.0.copyload.i, ptr %i.as, align 4, !tbaa !107
  store i32 %i.ar, ptr %i.o, align 4, !tbaa !107
  %.not55.i = icmp eq i32 %i.ar, %.sroa.033.0
  br i1 %.not55.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.sroa.025.058.i = phi i32 [ %.sroa.025.1.i, %bb.i ], [ %.sroa.033.0, %bb.g ] ; 2 uses
  %.057.i = phi double [ %.1.i, %bb.i ], [ %i.aw, %bb.g ] ; 2 uses
  %.sroa.034.056.i = phi i32 [ %.sroa.0.0.copyload.i31.i, %bb.i ], [ %i.ar, %bb.g ] ; 4 uses
  %i.ay = xor i32 %.sroa.034.056.i, %.sroa.033.0
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  store i8 1, ptr %2, align 8, !tbaa !114
  br label %.loopexit.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ba = load i32, ptr %i.n, align 8, !tbaa !292
  %i.bb = zext i32 %.sroa.034.056.i to i64
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.bb ; 3 uses
  store i32 %i.ba, ptr %i.bc, align 8, !tbaa !272
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %.sroa.033.0, ptr %i.bd, align 8, !tbaa !107
  %i.be = lshr i32 %.sroa.034.056.i, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !275 ; 2 uses
  %i.bi = fcmp ogt double %i.bh, %.057.i          ; 2 uses
  %.1.i = select i1 %i.bi, double %i.bh, double %.057.i
  %.sroa.025.1.i = select i1 %i.bi, i32 %.sroa.034.056.i, i32 %.sroa.025.058.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %.sroa.0.0.copyload.i31.i = load i32, ptr %i.bj, align 4, !tbaa !107 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i31.i, %.sroa.033.0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !6

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.025.054.i = phi i32 [ %.sroa.025.058.i, %bb.h ], [ %.sroa.033.0, %bb.g ], [ %.sroa.025.1.i, %bb.i ]
  store i32 %.sroa.033.0, ptr %i.ap, align 8, !tbaa !107
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 36 ; 2 uses
  store i32 %.sroa.025.054.i, ptr %i.bk, align 4, !tbaa !107
  %i.bl = xor i32 %.sroa.033.0, 1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !272
  %i.bp = load i32, ptr %i.n, align 8, !tbaa !292
  %.not52.i = icmp ult i32 %i.bo, %i.bp
  br i1 %.not52.i, label %_ZN3sat9lookahead9found_sccENS_7literalE.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.0.0.copyload.i32.i = load i32, ptr %i.bq, align 8, !tbaa !107
  %i.br = zext i32 %.sroa.0.0.copyload.i32.i to i64
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 36
  %.sroa.0.0.copyload.i33.i = load i32, ptr %i.bt, align 4, !tbaa !107
  %i.bu = xor i32 %.sroa.0.0.copyload.i33.i, 1
  store i32 %i.bu, ptr %i.bk, align 4, !tbaa !107
  br label %_ZN3sat9lookahead9found_sccENS_7literalE.exit

bb.k:                                             ; preds = %_ZNK3sat9lookahead7has_arcENS_7literalE.exit.thread
  %i.bv = zext i32 %.sroa.0.0.copyload.i to i64
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !272
  %i.by = zext i32 %.sroa.0.0.copyload.i28 to i64
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i29 = load i32, ptr %i.ca, align 8, !tbaa !107
  %i.cb = zext i32 %.sroa.0.0.copyload.i29 to i64
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !272
  %i.ce = icmp ult i32 %i.bx, %i.cd
  br i1 %i.ce, label %bb.l, label %_ZN3sat9lookahead9found_sccENS_7literalE.exit

bb.l:                                             ; preds = %bb.k
  store i32 %.sroa.0.0.copyload.i, ptr %i.ca, align 8, !tbaa !107
  br label %_ZN3sat9lookahead9found_sccENS_7literalE.exit

_ZN3sat9lookahead9found_sccENS_7literalE.exit:    ; preds = %bb.l, %bb.k, %.loopexit.i, %bb.j, %bb.f, %bb.e, %bb.d
  %.sroa.033.1 = phi i32 [ %.sroa.0.0.copyload.i26, %bb.f ], [ %.sroa.033.0, %bb.e ], [ %.sroa.033.0, %bb.d ], [ %.sroa.0.0.copyload.i28, %bb.j ], [ %.sroa.0.0.copyload.i28, %.loopexit.i ], [ %.sroa.0.0.copyload.i28, %bb.k ], [ %.sroa.0.0.copyload.i28, %bb.l ] ; 2 uses
  %.not44 = icmp eq i32 %.sroa.033.1, -2
  %i.cf = load i8, ptr %2, align 8, !range !256
  %i.cg = trunc nuw i8 %i.cf to i1
  %or.cond = select i1 %.not44, i1 true, i1 %i.cg
  br i1 %or.cond, label %.critedge, label %bb.b, !llvm.loop !394

.critedge:                                        ; preds = %_ZN3sat9lookahead9found_sccENS_7literalE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3sat9lookahead13init_dfs_infoENS_7literalE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1160) %0, i32 %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.c ; 5 uses
  store i32 0, ptr %i.d, align 8, !tbaa !272
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !273
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -2, ptr %i.f, align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN3sat9lookahead8dfs_info5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -4
  store i32 0, ptr %i.i, align 4, !tbaa !107
  br label %_ZN3sat9lookahead8dfs_info5resetEv.exit

_ZN3sat9lookahead8dfs_info5resetEv.exit:          ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store <4 x i32> <i32 0, i32 -2, i32 -2, i32 -2>, ptr %i.j, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.l = load i32, ptr %i.k, align 8, !tbaa !258
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.c
  store i32 %i.l, ptr %i.o, align 4, !tbaa !107
  ret void
}
end_hunk_2
begin_hunk_3_@_ZN3sat9lookahead6assignENS_7literalE:bb.a
  %i.dh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.35, i64 noundef 18) ; 0 uses
  %i.di = icmp eq i32 %1, -2
  br i1 %i.di, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.72, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit18

bb.w:                                             ; preds = %bb.u
  %i.dk = trunc i32 %1 to i1
  %i.dl = select i1 %i.dk, ptr @.str.73, ptr @.str.74
  %i.dm = zext nneg i32 %i.i to i64
  %i.dn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull %i.dl, i64 noundef %i.dm) ; 0 uses
  %i.do = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, i64 noundef %i.f) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit18

_ZN3satlsERSoNS_7literalE.exit18:                 ; preds = %bb.v, %bb.w
  %i.dp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.36, i64 noundef 13) ; 0 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !98, !nonnull !99, !align !100
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 3312
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !301
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.f
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !302, !range !256, !noundef !99
  %i.dv = trunc nuw i8 %i.du to i1
  %i.dw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, i1 noundef zeroext %i.dv)
  %i.dx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZN3satlsERSoNS_7literalE.exit18, %_ZN3satlsERSoNS_7literalE.exit16, %_ZNK16indexed_uint_set8containsEj.exit
  %i.dy = load ptr, ptr %i.af, align 8, !tbaa !112 ; 4 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_ZN16indexed_uint_set6removeEj.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i19

_ZNK6vectorIjLb0EjE4sizeEv.exit.i19:              ; preds = %bb.x
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 -4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !107
  %i.ec = icmp ult i32 %i.d, %i.eb
  br i1 %i.ec, label %bb.y, label %_ZN16indexed_uint_set6removeEj.exit

bb.y:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i19
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.f ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !107 ; 2 uses
  %i.ef = load i32, ptr %i.ae, align 8, !tbaa !264 ; 2 uses
  %i.eg = icmp ult i32 %i.ee, %i.ef
  br i1 %i.eg, label %_ZNK16indexed_uint_set8containsEj.exit20, label %_ZN16indexed_uint_set6removeEj.exit

_ZNK16indexed_uint_set8containsEj.exit20:         ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !112 ; 4 uses
  %i.ej = zext i32 %i.ee to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !107
  %i.em = icmp eq i32 %i.el, %i.d
  br i1 %i.em, label %bb.z, label %_ZN16indexed_uint_set6removeEj.exit

bb.z:                                             ; preds = %_ZNK16indexed_uint_set8containsEj.exit20
  %i.en = add i32 %i.ef, -1                       ; 2 uses
  store i32 %i.en, ptr %i.ae, align 8, !tbaa !264
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !107 ; 3 uses
  %.not.i21 = icmp eq i32 %i.d, %i.eq
  br i1 %.not.i21, label %_ZN16indexed_uint_set6removeEj.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = load i32, ptr %i.ed, align 4, !tbaa !107 ; 2 uses
  %i.es = zext i32 %i.eq to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.es
  store i32 %i.er, ptr %i.et, align 4, !tbaa !107
  %i.eu = zext i32 %i.er to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eu
  store i32 %i.eq, ptr %i.ev, align 4, !tbaa !107
  %i.ew = load i32, ptr %i.ae, align 8, !tbaa !264 ; 2 uses
  store i32 %i.ew, ptr %i.ed, align 4, !tbaa !107
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ex
  store i32 %i.d, ptr %i.ey, align 4, !tbaa !107
  br label %_ZN16indexed_uint_set6removeEj.exit

_ZN16indexed_uint_set6removeEj.exit:              ; preds = %bb.x, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i19, %bb.y, %bb.aa, %bb.z, %_ZNK16indexed_uint_set8containsEj.exit20
  %i.ez = load ptr, ptr %0, align 8, !tbaa !98, !nonnull !99, !align !100 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 344
  %i.fb = load i8, ptr %i.fa, align 8, !tbaa !255, !range !256, !noundef !99
  %i.fc = trunc nuw i8 %i.fb to i1
  %i.fd = load i32, ptr %i.y, align 4
  %i.fe = icmp eq i32 %i.fd, 0
  %or.cond.i = select i1 %i.fc, i1 %i.fe, i1 false
  br i1 %or.cond.i, label %bb.ab, label %_ZN3sat9lookahead15validate_assignENS_7literalE.exit

bb.ab:                                            ; preds = %_ZN16indexed_uint_set6removeEj.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !106 ; 4 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 -4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !107 ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 -8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !107
  %i.fm = icmp eq i32 %i.fj, %i.fl
  br i1 %i.fm, label %bb.ad, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ff)
  %.pre.i.i = load ptr, ptr %i.ff, align 8, !tbaa !106 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !107
  %.pre.i22 = load ptr, ptr %0, align 8, !tbaa !98
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i: ; preds = %bb.ad, %bb.ac
  %i.fn = phi ptr [ %.pre.i22, %bb.ad ], [ %i.ez, %bb.ac ]
  %i.fo = phi i32 [ %.pre2.i.i, %bb.ad ], [ %i.fj, %bb.ac ] ; 2 uses
  %i.fp = phi ptr [ %.pre.i.i, %bb.ad ], [ %i.fg, %bb.ac ] ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -4
  %i.fr = zext i32 %i.fo to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fr
  store i32 %1, ptr %i.fs, align 4, !tbaa !107
  %i.ft = add i32 %i.fo, 1
  store i32 %i.ft, ptr %i.fq, align 4, !tbaa !107
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 536
  tail call void @_ZN3sat4drat3addERK7svectorINS_7literalEjE(ptr noundef nonnull align 8 dereferenceable(664) %i.fu, ptr noundef nonnull align 8 dereferenceable(8) %i.ff)
  %i.fv = load ptr, ptr %i.ff, align 8, !tbaa !106
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -4 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !107
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !107
  br label %_ZN3sat9lookahead15validate_assignENS_7literalE.exit

bb.ae:                                            ; preds = %bb.a
  %i.fz = xor i32 %i.h, %1
  %i.ga = trunc i32 %i.fz to i1
  br i1 %i.ga, label %bb.af, label %_ZN3sat9lookahead15validate_assignENS_7literalE.exit

bb.af:                                            ; preds = %bb.ae
  %i.gb = load ptr, ptr %0, align 8, !tbaa !98, !nonnull !99, !align !100 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 344
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !255, !range !256, !noundef !99
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 988
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = icmp eq i32 %i.gg, 0
  %or.cond.i23 = select i1 %i.ge, i1 %i.gh, i1 false
  br i1 %or.cond.i23, label %bb.ag, label %_ZN3sat9lookahead15validate_assignENS_7literalE.exit29

bb.ag:                                            ; preds = %bb.af
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !106 ; 4 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gl = getelementptr inbounds i8, ptr %i.gj, i64 -4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !107 ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gj, i64 -8
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !107
  %i.gp = icmp eq i32 %i.gm, %i.go
  br i1 %i.gp, label %bb.ai, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i24

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gi)
  %.pre.i.i25 = load ptr, ptr %i.gi, align 8, !tbaa !106 ; 2 uses
  %.phi.trans.insert.i.i26 = getelementptr inbounds i8, ptr %.pre.i.i25, i64 -4
  %.pre2.i.i27 = load i32, ptr %.phi.trans.insert.i.i26, align 4, !tbaa !107
  %.pre.i28 = load ptr, ptr %0, align 8, !tbaa !98
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i24

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i24: ; preds = %bb.ai, %bb.ah
  %i.gq = phi ptr [ %.pre.i28, %bb.ai ], [ %i.gb, %bb.ah ]
  %i.gr = phi i32 [ %.pre2.i.i27, %bb.ai ], [ %i.gm, %bb.ah ] ; 2 uses
  %i.gs = phi ptr [ %.pre.i.i25, %bb.ai ], [ %i.gj, %bb.ah ] ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -4
  %i.gu = zext i32 %i.gr to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gu
  store i32 %1, ptr %i.gv, align 4, !tbaa !107
  %i.gw = add i32 %i.gr, 1
  store i32 %i.gw, ptr %i.gt, align 4, !tbaa !107
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 536
  tail call void @_ZN3sat4drat3addERK7svectorINS_7literalEjE(ptr noundef nonnull align 8 dereferenceable(664) %i.gx, ptr noundef nonnull align 8 dereferenceable(8) %i.gi)
  %i.gy = load ptr, ptr %i.gi, align 8, !tbaa !106
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -4 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !107
  %i.hb = add i32 %i.ha, -1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !107
  br label %_ZN3sat9lookahead15validate_assignENS_7literalE.exit29

_ZN3sat9lookahead15validate_assignENS_7literalE.exit29: ; preds = %bb.af, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i24
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i8 1, ptr %i.hc, align 8, !tbaa !114
  br label %_ZN3sat9lookahead15validate_assignENS_7literalE.exit

_ZN3sat9lookahead15validate_assignENS_7literalE.exit: ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i, %_ZN16indexed_uint_set6removeEj.exit, %bb.ae, %_ZN3sat9lookahead15validate_assignENS_7literalE.exit29, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead9propagateEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 3 uses
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge2, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph: ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !116
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = zext i32 %i.e to i64
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph, %_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit
  %i.h = phi ptr [ %i.c, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph ], [ %i.ac, %_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit ] ; 5 uses
  %indvars.iv = phi i64 [ %i.g, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !107
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv, %i.k
  br i1 %i.l, label %bb.b, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8.lr.ph

bb.b:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.m = load i8, ptr %1, align 8, !tbaa !114, !range !256, !noundef !99
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %.sroa.04.0.copyload = load i32, ptr %i.o, align 4, !tbaa !107
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.q = zext i32 %.sroa.04.0.copyload to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i:    ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !107  ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  %.not10.i = icmp eq i32 %i.v, 0
  br i1 %.not10.i, label %_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i, %bb.d
  %.0911.i = phi ptr [ %i.ab, %bb.d ], [ %i.s, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i ] ; 2 uses
  %i.z = load i8, ptr %1, align 8, !tbaa !114, !range !256, !noundef !99
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.sroa.01.0.copyload.i = load i32, ptr %.0911.i, align 4, !tbaa !107
  tail call void @_ZN3sat9lookahead6assignENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %.sroa.01.0.copyload.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.y
  br i1 %.not.i, label %_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit.loopexit, label %.lr.ph.i

_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit.loopexit: ; preds = %bb.d, %.lr.ph.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !106
  br label %_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit

_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit: ; preds = %_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit.loopexit, %bb.c, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i
  %i.ac = phi ptr [ %.pre, %_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit.loopexit ], [ %i.h, %bb.c ], [ %i.h, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.critedge2, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, !llvm.loop !419

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8.lr.ph: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 988
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8:    ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8.lr.ph, %_ZN3sat9lookahead17propagate_clausesENS_7literalE.exit
  %i.af = phi ptr [ %i.h, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8.lr.ph ], [ %i.aq, %_ZN3sat9lookahead17propagate_clausesENS_7literalE.exit ] ; 2 uses
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !116 ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !107
  %i.aj = icmp ult i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8
  %i.ak = load i8, ptr %1, align 8, !tbaa !114, !range !256, !noundef !99
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = add nuw i32 %i.ag, 1
  store i32 %i.am, ptr %i.a, align 8, !tbaa !116
  %i.an = zext i32 %i.ag to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.an
  %.sroa.0.0.copyload = load i32, ptr %i.ao, align 4, !tbaa !107 ; 4 uses
  tail call void @_ZN3sat9lookahead17propagate_ternaryENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %.sroa.0.0.copyload)
  %i.ap = load i32, ptr %i.ae, align 4, !tbaa !257
  %cond.i = icmp eq i32 %i.ap, 0
  br i1 %cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN3sat9lookahead27propagate_clauses_searchingENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %.sroa.0.0.copyload)
  br label %_ZN3sat9lookahead17propagate_clausesENS_7literalE.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN3sat9lookahead27propagate_clauses_lookaheadENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %.sroa.0.0.copyload)
  br label %_ZN3sat9lookahead17propagate_clausesENS_7literalE.exit

_ZN3sat9lookahead17propagate_clausesENS_7literalE.exit: ; preds = %bb.g, %bb.h
  tail call void @_ZN3sat9lookahead18propagate_externalENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %.sroa.0.0.copyload)
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !106 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.critedge2, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8, !llvm.loop !420

.critedge2:                                       ; preds = %_ZN3sat9lookahead16propagate_binaryENS_7literalE.exit, %bb.e, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8, %_ZN3sat9lookahead17propagate_clausesENS_7literalE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead11add_ternaryENS_7literalES1_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1160) %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.c = zext i32 %1 to i64                       ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !107  ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !107
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIN3sat9lookahead6binaryELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !121 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !107
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !118
  br label %_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit

_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.m = phi i32 [ %.pre2.i, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %.pre.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.p = zext i32 %i.m to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %.sroa.417.0.insert.ext = zext i32 %3 to i64    ; 4 uses
  %.sroa.417.0.insert.shift = shl nuw i64 %.sroa.417.0.insert.ext, 32
  %.sroa.016.0.insert.ext = zext i32 %2 to i64    ; 4 uses
  %.sroa.016.0.insert.insert = or disjoint i64 %.sroa.417.0.insert.shift, %.sroa.016.0.insert.ext
  store i64 %.sroa.016.0.insert.insert, ptr %i.q, align 4, !tbaa !107
  %i.r = add i32 %i.m, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !107
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.016.0.insert.ext ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !121  ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !107  ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !107
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit9

bb.e:                                             ; preds = %bb.d, %_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit
  tail call void @_ZN6vectorIN3sat9lookahead6binaryELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %.pre.i6 = load ptr, ptr %i.s, align 8, !tbaa !121 ; 2 uses
  %.phi.trans.insert.i7 = getelementptr inbounds i8, ptr %.pre.i6, i64 -4
  %.pre2.i8 = load i32, ptr %.phi.trans.insert.i7, align 4, !tbaa !107
  %.pre30 = load ptr, ptr %i.a, align 8, !tbaa !118
  br label %_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit9

_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit9: ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %.pre30, %bb.e ], [ %i.l, %bb.d ]
  %i.ab = phi i32 [ %.pre2.i8, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %.pre.i6, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %.sroa.415.0.insert.shift = shl nuw i64 %i.c, 32
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.415.0.insert.shift, %.sroa.417.0.insert.ext
  store i64 %.sroa.014.0.insert.insert, ptr %i.af, align 4, !tbaa !107
  %i.ag = add i32 %i.ab, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !107
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.417.0.insert.ext ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !121 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit9
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !107 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !107
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.g, label %_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit13

bb.g:                                             ; preds = %bb.f, %_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit9
  tail call void @_ZN6vectorIN3sat9lookahead6binaryELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %.pre.i10 = load ptr, ptr %i.ah, align 8, !tbaa !121 ; 2 uses
  %.phi.trans.insert.i11 = getelementptr inbounds i8, ptr %.pre.i10, i64 -4
  %.pre2.i12 = load i32, ptr %.phi.trans.insert.i11, align 4, !tbaa !107
  br label %_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit13

_ZN6vectorIN3sat9lookahead6binaryELb0EjE9push_backEOS2_.exit13: ; preds = %bb.f, %bb.g
  %i.ap = phi i32 [ %.pre2.i12, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %i.aq = phi ptr [ %.pre.i10, %bb.g ], [ %i.ai, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.as = zext i32 %i.ap to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.016.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %i.c
  store i64 %.sroa.0.0.insert.insert, ptr %i.at, align 4, !tbaa !107
  %i.au = add i32 %i.ap, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !112 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.c ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !107
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !107
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.016.0.insert.ext ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !107
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !107
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.417.0.insert.ext ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !107
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !107
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead10add_clauseERKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !310
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = add nuw nsw i64 %i.e, 24
  %i.g = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.a, i64 noundef %i.f) ; 7 uses
  %i.h = load i32, ptr %i.b, align 4, !tbaa !310  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 9 uses
  store i32 %i.h, ptr %i.g, align 8, !tbaa !128
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = zext i32 %i.h to i64                     ; 6 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 24
  store i64 %i.m, ptr %i.j, align 8, !tbaa !129
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i32 -2, ptr %i.n, align 8, !tbaa !122
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN3sat9lookahead4naryC2EjPKNS_7literalE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = ptrtoaddr ptr %i.g to i64
  %i.p = ptrtoaddr ptr %1 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 6 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  %i.r = sub i64 %i.p, %i.o
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.k, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !107
  %wide.load24 = load <4 x i32>, ptr %i.u, align 4, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load, ptr %i.t, align 4, !tbaa !107
end_hunk_3
begin_hunk_4_@_ZN3sat9lookahead11get_clausesER7svectorINS_7literalEjEj:bb.a
bb.aw:                                            ; preds = %bb.as
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @__cxa_free_exception(ptr %i.jb) #28
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i149, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.aw
  %common.resume.op = phi { ptr, i32 } [ %i.ju, %bb.aw ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.lg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i149 ], [ %i.ll, %bb.bg ]
  resume { ptr, i32 } %common.resume.op

bb.ax:                                            ; preds = %bb.ar
  %i.jv = zext i32 %i.iy to i64
  %i.jw = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.io, i64 noundef %i.jv) ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  store ptr %i.jx, ptr %1, align 8, !tbaa !106
  store i32 %i.iw, ptr %i.jw, align 4, !tbaa !107
  br label %_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit

bb.ay:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit: ; preds = %bb.ap, %bb.ax
  %.pre.i129 = phi ptr [ %i.it, %bb.ap ], [ %i.jx, %bb.ax ] ; 2 uses
  %.phi.trans.insert.i130 = getelementptr inbounds i8, ptr %.pre.i129, i64 -4
  %.pre2.i131 = load i32, ptr %.phi.trans.insert.i130, align 4, !tbaa !107
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit132

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit132: ; preds = %bb.ao, %_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit
  %i.jy = phi ptr [ %.pre.i129, %_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit ], [ %i.hx, %bb.ao ] ; 3 uses
  %i.jz = phi i32 [ %.pre2.i131, %_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit ], [ %i.in, %bb.ao ] ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 -4
  %i.kb = zext i32 %i.jz to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.kb
  store i32 %i.hy, ptr %i.kc, align 4, !tbaa !107
  %i.kd = add i32 %i.jz, 1
  store i32 %i.kd, ptr %i.ka, align 4, !tbaa !107
  br label %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit

_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit:    ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit132, %bb.am
  %i.ke = phi ptr [ %i.jy, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit132 ], [ %i.hx, %bb.am ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.085203, i64 4 ; 2 uses
  %.not95 = icmp eq ptr %i.kf, %i.hw
  br i1 %.not95, label %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit.thread, label %.lr.ph204

_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit.thread: ; preds = %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit, %bb.ak
  %.pr = phi ptr [ %i.hm, %bb.ak ], [ %i.ke, %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit ] ; 4 uses
  %i.kg = icmp eq ptr %.pr, null
  br i1 %i.kg, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit134.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit134

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit134:  ; preds = %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit.thread
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pr, i64 -4
  %.pre233 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !107 ; 6 uses
  %i.kh = icmp ugt i32 %.pre233, %.0.i
  br i1 %i.kh, label %bb.az, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit134.thread

bb.az:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit134
  %i.ki = getelementptr inbounds i8, ptr %.pr, i64 -8 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !107
  %i.kk = icmp eq i32 %.pre233, %i.kj
  br i1 %i.kk, label %bb.ba, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit138

bb.ba:                                            ; preds = %bb.az
  %i.kl = mul i32 %.pre233, 3
  %i.km = add i32 %i.kl, 1
  %i.kn = lshr i32 %i.km, 1                       ; 3 uses
  %i.ko = shl i32 %i.kn, 2
  %i.kp = add i32 %i.ko, 8                        ; 2 uses
  %.not.i142 = icmp ugt i32 %i.kn, %.pre233
  br i1 %.not.i142, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kq = shl i32 %.pre233, 2
  %i.kr = add i32 %i.kq, 8
  %.not27.i151 = icmp ugt i32 %i.kp, %i.kr
  br i1 %.not27.i151, label %_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit152, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ks = tail call ptr @__cxa_allocate_exception(i64 40) #28 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ks, align 8, !tbaa !105
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 24 ; 3 uses
  store ptr %i.ku, ptr %i.kt, align 8, !tbaa !288
  %i.kv = load ptr, ptr %3, align 8, !tbaa !289   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144

bb.be:                                            ; preds = %bb.bd
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !290 ; 3 uses
  %i.la = icmp ult i64 %i.kz, 16
  call void @llvm.assume(i1 %i.la)
  %i.lb = add nuw nsw i64 %i.kz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ku, ptr noundef nonnull align 8 dereferenceable(1) %i.kw, i64 %i.lb, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144: ; preds = %bb.bd
  store ptr %i.kv, ptr %i.kt, align 8, !tbaa !289
  %i.lc = load i64, ptr %i.kw, align 8, !tbaa !285
  store i64 %i.lc, ptr %i.ku, align 8, !tbaa !285
  %.phi.trans.insert.i145 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i146 = load i64, ptr %.phi.trans.insert.i145, align 8, !tbaa !290
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i147

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i147: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144, %bb.be
  %i.ld = phi i64 [ %i.kz, %bb.be ], [ %.pre.i146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144 ]
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store i64 %i.ld, ptr %i.lf, align 8, !tbaa !290
  store ptr %i.kw, ptr %3, align 8, !tbaa !289
  store i64 0, ptr %i.le, align 8, !tbaa !290
  store i8 0, ptr %i.kw, align 8, !tbaa !285
  invoke void @__cxa_throw(ptr nonnull %i.ks, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.bh unwind label %bb.bf

bb.bf:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i147
  %i.lg = landingpad { ptr, i32 }
          cleanup
  %i.lh = load ptr, ptr %3, align 8, !tbaa !289   ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.kw
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i148: ; preds = %bb.bf
  %i.lj = load i64, ptr %i.kw, align 8, !tbaa !285
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.lk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i149: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

bb.bg:                                            ; preds = %bb.bc
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @__cxa_free_exception(ptr %i.ks) #28
  br label %common.resume

bb.bh:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i147
  unreachable

_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit152: ; preds = %bb.bb
  %i.lm = zext i32 %i.kp to i64
  %i.ln = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ki, i64 noundef %i.lm) ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 2 uses
  store ptr %i.lo, ptr %1, align 8, !tbaa !106
  store i32 %i.kn, ptr %i.ln, align 4, !tbaa !107
  %.phi.trans.insert.i136 = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %.pre2.i137 = load i32, ptr %.phi.trans.insert.i136, align 4, !tbaa !107
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit138

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit138: ; preds = %bb.az, %_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit152
  %i.lp = phi i32 [ %.pre2.i137, %_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit152 ], [ %.pre233, %bb.az ] ; 2 uses
  %i.lq = phi ptr [ %i.lo, %_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit152 ], [ %.pr, %bb.az ] ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 -4
  %i.ls = zext i32 %i.lp to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.ls
  store i32 -2, ptr %i.lt, align 4, !tbaa !107
  %i.lu = add i32 %i.lp, 1
  store i32 %i.lu, ptr %i.lr, align 4, !tbaa !107
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit134.thread

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit134.thread: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit134.thread291, %bb.al, %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit.thread, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit138, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit134
  %i.lv = getelementptr inbounds nuw i8, ptr %.086207, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.lv, %i.hf
  br i1 %.not, label %._crit_edge, label %.lr.ph208

._crit_edge:                                      ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit134.thread, %.lr.ph208, %bb.ah, %_ZN6vectorIPN3sat9lookahead4naryELb0EjE3endEv.exit
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next223, %wide.trip.count225
  br i1 %exitcond226.not, label %._crit_edge212, label %bb.ah, !llvm.loop !430
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead16propagate_binaryENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit:      ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !107  ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 832
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit, %bb.c
  %.0911 = phi ptr [ %i.n, %bb.c ], [ %i.e, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit ] ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !114, !range !256, !noundef !99
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.01.0.copyload = load i32, ptr %.0911, align 4, !tbaa !107
  tail call void @_ZN3sat9lookahead6assignENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %.sroa.01.0.copyload)
  %i.n = getelementptr inbounds nuw i8, ptr %.0911, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.n, %2
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead24compute_lookahead_rewardEv(ptr noundef nonnull align 8 dereferenceable(1160) initializes((176, 184), (1088, 1092)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %1 = alloca %class.svector.1, align 8           ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load double, ptr %i.b, align 8, !tbaa !433
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !265  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !107
  %i.i = uitofp i32 %i.h to double
  br label %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi double [ %i.i, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.j = fdiv double 1.000000e+00, %.0.i
  %i.k = tail call double @pow(double noundef %i.c, double noundef %i.j) #28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store double %i.k, ptr %i.l, align 8, !tbaa !315
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  store i32 100000, ptr %i.m, align 8, !tbaa !434
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 892 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 876 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 988 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit, %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit135
  %.0277 = phi i32 [ 2, %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit ], [ %i.ox, %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit135 ] ; 2 uses
  %.062276 = phi i32 [ 0, %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit ], [ %.264198, %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit135 ] ; 3 uses
  %.sroa.0174.0275 = phi i32 [ -2, %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit ], [ %.sroa.0174.1236, %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit135 ] ; 2 uses
  %i.al = load i8, ptr %i.n, align 8, !tbaa !114, !range !256, !noundef !99
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load i32, ptr %i.m, align 8, !tbaa !434
  %i.ao = icmp ult i32 %.062276, %i.an
  br i1 %i.ao, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ap = call noundef i32 @_Z19get_verbosity_levelv()
  %i.aq = icmp ugt i32 %i.ap, 9
  br i1 %i.aq, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ar = call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.ar, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @_Z12verbose_lockv()
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.29, i64 noundef 31) ; 0 uses
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !265 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit80, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !107
  %i.ay = zext i32 %i.ax to i64
  br label %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit80

_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit80: ; preds = %bb.g, %bb.h
  %.0.i79 = phi i64 [ %i.ay, %bb.h ], [ 0, %bb.g ]
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef %.0.i79)
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  call void @_Z14verbose_unlockv()
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.29, i64 noundef 31) ; 0 uses
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !265 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit82, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !107
  %i.bh = zext i32 %i.bg to i64
  br label %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit82

_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit82: ; preds = %bb.i, %bb.j
  %.0.i81 = phi i64 [ %i.bh, %bb.j ], [ 0, %bb.i ]
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef %.0.i81)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit80, %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit82, %bb.e
  %i.bk = load i8, ptr %i.n, align 8, !tbaa !114, !range !256, !noundef !99
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.critedge2, label %.lr.ph257

.lr.ph257:                                        ; preds = %bb.k, %bb.bq
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bq ], [ 0, %bb.k ] ; 4 uses
  %.1255 = phi i32 [ %.4, %bb.bq ], [ %.0277, %bb.k ] ; 10 uses
  %.156254 = phi i1 [ %.459, %bb.bq ], [ false, %bb.k ] ; 10 uses
  %.163253 = phi i32 [ %i.cf, %bb.bq ], [ %.062276, %bb.k ] ; 5 uses
  %.sroa.0174.1251 = phi i32 [ %.sroa.0174.3, %bb.bq ], [ %.sroa.0174.0275, %bb.k ] ; 11 uses
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !265 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.critedge2.thread361, label %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit84

.critedge2.thread361:                             ; preds = %.lr.ph257
  %i.bo = load i32, ptr %i.r, align 4, !tbaa !111
  br label %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit133

_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit84: ; preds = %.lr.ph257
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !107
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp samesign ult i64 %indvars.iv, %i.br
  br i1 %i.bs, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE4sizeEv.exit84
  %i.bt = load i32, ptr %i.m, align 8, !tbaa !434
  %i.bu = icmp ult i32 %.163253, %i.bt
  br i1 %i.bu, label %bb.m, label %.critedge2

bb.m:                                             ; preds = %bb.l
  %i.bv = call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.o)
  br i1 %i.bv, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  invoke void @_ZN3sat16solver_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTIN3sat16solver_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #29
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %bb.m
  %i.by = call noundef i64 @_ZN6memory19get_allocation_sizeEv()
  %i.bz = load ptr, ptr %0, align 8, !tbaa !98, !nonnull !99, !align !100
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !316
  %i.cc = icmp ugt i64 %i.by, %i.cb
  br i1 %i.cc, label %bb.r, label %_ZN3sat9lookahead10checkpointEv.exit

bb.r:                                             ; preds = %bb.q
  %i.cd = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  invoke void @_ZN3sat16solver_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, ptr noundef nonnull @_ZN11common_msgs16g_max_memory_msgE)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTIN3sat16solver_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #29
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.u ], [ %lpad.loopexit.split-lp443, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.t, %bb.p
  %.sink.i = phi ptr [ %i.cd, %bb.t ], [ %i.bw, %bb.p ]
  %.pn.i = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.bx, %bb.p ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i) #28
  br label %common.resume
end_hunk_4
