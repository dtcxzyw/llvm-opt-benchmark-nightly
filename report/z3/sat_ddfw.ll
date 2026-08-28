Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_ddfw?download=true
inline.NumInlined: 927
inline.NumDeleted: 339
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN3sat4ddfw4flipEj:bb.a
  %.0.i16.i.i.i.ph = phi i32 [ %i.fe, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i11.i ] ; 2 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i:           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i.backedge, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i.preheader
  %i.fg = phi ptr [ %.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i.preheader ], [ %.be, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i.backedge ] ; 7 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.o, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i7.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i7.i:       ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 -8
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !15
  %i.fk = icmp ugt i32 %i.fa, %i.fj
  br i1 %i.fk, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i9.i, label %bb.x

bb.o:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i
  %i.fl = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.fl, align 4, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 0, ptr %i.fm, align 4, !tbaa !15
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  store ptr %i.fn, ptr %i.am, align 8, !tbaa !126
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i.backedge

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i9.i: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i7.i
  %i.fo = getelementptr inbounds i8, ptr %i.fg, i64 -8 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !15 ; 3 uses
  %i.fq = mul i32 %i.fp, 3
  %i.fr = add i32 %i.fq, 1
  %i.fs = lshr i32 %i.fr, 1                       ; 3 uses
  %i.ft = shl i32 %i.fs, 2
  %i.fu = add i32 %i.ft, 8                        ; 2 uses
  %.not.i86 = icmp ugt i32 %i.fs, %i.fp
  br i1 %.not.i86, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i9.i
  %i.fv = shl i32 %i.fp, 2
  %i.fw = add i32 %i.fv, 8
  %.not27.i = icmp ugt i32 %i.fu, %i.fw
  br i1 %.not27.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i9.i
  %i.fx = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.fx, align 8, !tbaa !95
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 3 uses
  store ptr %i.fz, ptr %i.fy, align 8, !tbaa !157
  %i.ga = load ptr, ptr %4, align 8, !tbaa !159   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !161 ; 3 uses
  %i.gf = icmp ult i64 %i.ge, 16
  call void @llvm.assume(i1 %i.gf)
  %i.gg = add nuw nsw i64 %i.ge, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fz, ptr noundef nonnull align 8 dereferenceable(1) %i.gb, i64 %i.gg, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !159
  %i.gh = load i64, ptr %i.gb, align 8, !tbaa !162
  store i64 %i.gh, ptr %i.fz, align 8, !tbaa !162
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !161
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.s
  %i.gi = phi i64 [ %i.ge, %bb.s ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 %i.gi, ptr %i.gk, align 8, !tbaa !161
  store ptr %i.gb, ptr %4, align 8, !tbaa !159
  store i64 0, ptr %i.gj, align 8, !tbaa !161
  store i8 0, ptr %i.gb, align 8, !tbaa !162
  invoke void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.w unwind label %bb.t

bb.t:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load ptr, ptr %4, align 8, !tbaa !159   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.gb
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.t
  %i.go = load i64, ptr %i.gb, align 8, !tbaa !162
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

bb.u:                                             ; preds = %bb.q
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @__cxa_free_exception(ptr %i.fx) #24
  br label %common.resume

bb.v:                                             ; preds = %bb.p
  %i.gr = zext i32 %i.fu to i64
  %i.gs = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fo, i64 noundef %i.gr) ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  store ptr %i.gt, ptr %i.am, align 8, !tbaa !126
  store i32 %i.fs, ptr %i.gs, align 4, !tbaa !15
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i.backedge

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i.backedge:  ; preds = %bb.v, %bb.o
  %.be = phi ptr [ %i.fn, %bb.o ], [ %i.gt, %bb.v ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i, !llvm.loop !164

bb.w:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.x:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i7.i
  %i.gu = getelementptr inbounds i8, ptr %i.fg, i64 -4
  store i32 %i.fa, ptr %i.gu, align 4, !tbaa !15
  %.not1218.i.i.i = icmp eq i32 %.0.i16.i.i.i.ph, %i.fa
  br i1 %.not1218.i.i.i, label %_ZN16indexed_uint_set12insert_freshEj.exit, label %.lr.ph.preheader.i.i8.i

.lr.ph.preheader.i.i8.i:                          ; preds = %bb.x
  %i.gv = zext i32 %i.fa to i64
  %i.gw = zext i32 %.0.i16.i.i.i.ph to i64        ; 2 uses
  %i.gx = getelementptr [4 x i8], ptr %i.fg, i64 %i.gw
  %i.gy = sub nsw i64 %i.gv, %i.gw
  %i.gz = shl nsw i64 %i.gy, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gx, i8 0, i64 %i.gz, i1 false), !tbaa !15
  br label %_ZN16indexed_uint_set12insert_freshEj.exit

_ZN16indexed_uint_set12insert_freshEj.exit:       ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3.i, %bb.x, %.lr.ph.preheader.i.i8.i
  %i.ha = phi ptr [ %i.fg, %.lr.ph.preheader.i.i8.i ], [ %i.fb, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3.i ], [ %i.fg, %bb.x ]
  %i.hb = load i32, ptr %i.ak, align 8, !tbaa !84 ; 2 uses
  %i.hc = load ptr, ptr %i.al, align 8, !tbaa !126
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.cs
  store i32 %i.hb, ptr %i.hd, align 4, !tbaa !15
  %i.he = zext i32 %i.hb to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.he
  store i32 %i.cq, ptr %i.hf, align 4, !tbaa !15
  %i.hg = load i32, ptr %i.ak, align 8, !tbaa !84
  %i.hh = add i32 %i.hg, 1
  store i32 %i.hh, ptr %i.ak, align 8, !tbaa !84
  %i.hi = load ptr, ptr %i.an, align 8, !tbaa !8  ; 3 uses
  %.not.i = icmp eq ptr %i.hi, null
  br i1 %.not.i, label %_ZN3sat4ddfw8inc_makeENS_7literalE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN16indexed_uint_set12insert_freshEj.exit
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !95
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = tail call noundef zeroext i1 %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, i32 noundef %i.cq), !inline_history !165
  br i1 %i.hm, label %bb.z, label %_ZN3sat4ddfw8inc_makeENS_7literalE.exit

bb.z:                                             ; preds = %bb.y
  %i.hn = load i32, ptr %i.ao, align 8, !tbaa !166
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr %i.ao, align 8, !tbaa !166
  br label %_ZN3sat4ddfw8inc_makeENS_7literalE.exit

_ZN3sat4ddfw8inc_makeENS_7literalE.exit:          ; preds = %.lr.ph, %_ZN16indexed_uint_set12insert_freshEj.exit, %bb.y, %bb.z
  %i.hp = getelementptr inbounds nuw i8, ptr %.073107, i64 4 ; 2 uses
  %.not76 = icmp eq ptr %i.hp, %i.ck
  br i1 %.not76, label %._crit_edge, label %.lr.ph

bb.aa:                                            ; preds = %bb.b
  %i.hq = lshr i32 %i.bz, 1
  %i.hr = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.hs = zext nneg i32 %i.hq to i64
  %i.ht = getelementptr inbounds nuw [80 x i8], ptr %i.hr, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !130
  %i.hw = fsub double %i.hv, %i.ca
  store double %i.hw, ptr %i.hu, align 8, !tbaa !130
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %bb.aa, %._crit_edge
  %i.hx = getelementptr inbounds nuw i8, ptr %.0109, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.hx, %i.af
  br i1 %.not, label %._crit_edge112, label %bb.b

._crit_edge121:                                   ; preds = %bb.ao, %._crit_edge112
  %i.hy = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.hz = getelementptr inbounds nuw [80 x i8], ptr %i.hy, i64 %i.f ; 8 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !77, !range !70, !noundef !71
  %i.ib = xor i8 %i.ia, 1
  store i8 %i.ib, ptr %i.hz, align 1, !tbaa !77
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ie = load double, ptr %i.id, align 8, !tbaa !130
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 56 ; 3 uses
  %i.ig = load double, ptr %i.if, align 8, !tbaa !167 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 64 ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !168 ; 2 uses
  %i.ij = fsub double %i.ie, %i.ii
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.ij, double %i.ii)
  store double %i.ik, ptr %i.ih, align 8, !tbaa !168
  %i.il = load double, ptr %i.ic, align 8, !tbaa !169 ; 3 uses
  %i.im = fcmp ugt double %i.ig, %i.il
  br i1 %i.im, label %bb.ac, label %_ZN3sat4ddfw17update_reward_avgEj.exit

bb.ac:                                            ; preds = %._crit_edge121
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 76 ; 3 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !170 ; 2 uses
  %i.ip = add i32 %i.io, -1
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !170
  %.not.i.i = icmp eq i32 %i.io, 0
  br i1 %.not.i.i, label %bb.ad, label %_ZN3sat4ddfw17update_reward_avgEj.exit

bb.ad:                                            ; preds = %bb.ac
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hz, i64 72 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !171
  %i.is = shl i32 %i.ir, 1
  %i.it = or disjoint i32 %i.is, 1                ; 2 uses
  store i32 %i.it, ptr %i.iq, align 8, !tbaa !171
  store i32 %i.it, ptr %i.in, align 4, !tbaa !170
  %i.iu = fmul double %i.ig, 5.000000e-01         ; 2 uses
  store double %i.iu, ptr %i.if, align 8, !tbaa !167
  %6 = fcmp olt double %i.iu, %i.il
  br i1 %6, label %7, label %_ZN3sat4ddfw17update_reward_avgEj.exit

7:                                                ; preds = %bb.ad
  store double %i.il, ptr %i.if, align 8, !tbaa !167
  br label %_ZN3sat4ddfw17update_reward_avgEj.exit

_ZN3sat4ddfw17update_reward_avgEj.exit:           ; preds = %._crit_edge121, %bb.ac, %bb.ad, %7
  ret void

bb.ae:                                            ; preds = %.lr.ph120, %bb.ao
  %.072118 = phi ptr [ %i.be, %.lr.ph120 ], [ %i.mm, %bb.ao ] ; 2 uses
  %i.iv = load i32, ptr %.072118, align 4, !tbaa !15 ; 3 uses
  %i.iw = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.ix = zext i32 %i.iv to i64                   ; 2 uses
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.iw, i64 %i.ix ; 5 uses
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !87 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 12 ; 3 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !92 ; 2 uses
  switch i32 %i.jb, label %bb.ao [
    i32 0, label %bb.af
    i32 1, label %bb.an
  ]

bb.af:                                            ; preds = %bb.ae
  %i.jc = load i32, ptr %i.bg, align 8, !tbaa !84
  %i.jd = add i32 %i.jc, -1                       ; 2 uses
  store i32 %i.jd, ptr %i.bg, align 8, !tbaa !84
  %i.je = load ptr, ptr %i.bh, align 8, !tbaa !126 ; 3 uses
  %i.jf = zext i32 %i.jd to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !15 ; 3 uses
  %.not.i79 = icmp eq i32 %i.iv, %i.jh
  br i1 %.not.i79, label %_ZN16indexed_uint_set6removeEj.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ji = load ptr, ptr %i.bi, align 8, !tbaa !126 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.ix ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !15 ; 2 uses
  %i.jl = zext i32 %i.jh to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jl
  store i32 %i.jk, ptr %i.jm, align 4, !tbaa !15
  %i.jn = zext i32 %i.jk to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jn
  store i32 %i.jh, ptr %i.jo, align 4, !tbaa !15
  %i.jp = load i32, ptr %i.bg, align 8, !tbaa !84 ; 2 uses
  store i32 %i.jp, ptr %i.jj, align 4, !tbaa !15
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jq
  store i32 %i.iv, ptr %i.jr, align 4, !tbaa !15
  br label %_ZN16indexed_uint_set6removeEj.exit

_ZN16indexed_uint_set6removeEj.exit:              ; preds = %bb.af, %bb.ag
  %i.js = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !12 ; 4 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %._crit_edge116, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit81

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit81:    ; preds = %_ZN16indexed_uint_set6removeEj.exit
  %i.jv = getelementptr inbounds i8, ptr %i.jt, i64 -4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !15 ; 2 uses
  %i.jx = zext i32 %i.jw to i64
  %i.jy = shl nuw nsw i64 %i.jx, 2
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jy
  %.not75113 = icmp eq i32 %i.jw, 0
  br i1 %.not75113, label %._crit_edge116, label %.lr.ph115

._crit_edge116:                                   ; preds = %_ZN3sat4ddfw8dec_makeENS_7literalE.exit, %_ZN16indexed_uint_set6removeEj.exit, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit81
  %i.ka = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.kb = getelementptr inbounds nuw [80 x i8], ptr %i.ka, i64 %i.bp
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 2 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !130
  %i.ke = fsub double %i.kd, %i.iz
  store double %i.ke, ptr %i.kc, align 8, !tbaa !130
  %.pre = load i32, ptr %i.ja, align 4, !tbaa !92
  br label %bb.ao

.lr.ph115:                                        ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit81, %_ZN3sat4ddfw8dec_makeENS_7literalE.exit
  %.071114 = phi ptr [ %i.lx, %_ZN3sat4ddfw8dec_makeENS_7literalE.exit ], [ %i.jt, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit81 ] ; 2 uses
  %.sroa.05.0.copyload = load i32, ptr %.071114, align 4, !tbaa !15
  %i.kf = lshr i32 %.sroa.05.0.copyload, 1        ; 6 uses
  %i.kg = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.kh = zext nneg i32 %i.kf to i64              ; 2 uses
  %i.ki = getelementptr inbounds nuw [80 x i8], ptr %i.kg, i64 %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !130
  %i.kl = fsub double %i.kk, %i.iz
  store double %i.kl, ptr %i.kj, align 8, !tbaa !130
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 24 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !15
  %i.ko = add i32 %i.kn, -1                       ; 2 uses
  store i32 %i.ko, ptr %i.km, align 8, !tbaa !15
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.ah, label %_ZN3sat4ddfw8dec_makeENS_7literalE.exit

bb.ah:                                            ; preds = %.lr.ph115
  %i.kq = load ptr, ptr %i.bk, align 8, !tbaa !126 ; 4 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %_ZN3sat4ddfw8dec_makeENS_7literalE.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.ah
  %i.ks = getelementptr inbounds i8, ptr %i.kq, i64 -4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !15
  %i.ku = icmp ult i32 %i.kf, %i.kt
  br i1 %i.ku, label %bb.ai, label %_ZN3sat4ddfw8dec_makeENS_7literalE.exit

bb.ai:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.kh ; 3 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !15 ; 2 uses
  %i.kx = load i32, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %i.ky = icmp ult i32 %i.kw, %i.kx
  br i1 %i.ky, label %_ZNK16indexed_uint_set8containsEj.exit.i, label %_ZN3sat4ddfw8dec_makeENS_7literalE.exit

_ZNK16indexed_uint_set8containsEj.exit.i:         ; preds = %bb.ai
  %i.kz = load ptr, ptr %i.bl, align 8, !tbaa !126 ; 4 uses
  %i.la = zext i32 %i.kw to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !15
  %i.ld = icmp eq i32 %i.lc, %i.kf
  br i1 %i.ld, label %bb.aj, label %_ZN3sat4ddfw8dec_makeENS_7literalE.exit

bb.aj:                                            ; preds = %_ZNK16indexed_uint_set8containsEj.exit.i
  %i.le = add i32 %i.kx, -1                       ; 2 uses
  store i32 %i.le, ptr %i.bj, align 8, !tbaa !84
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !15 ; 3 uses
  %.not.i.i82 = icmp eq i32 %i.kf, %i.lh
  br i1 %.not.i.i82, label %_ZN16indexed_uint_set6removeEj.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.li = load i32, ptr %i.kv, align 4, !tbaa !15 ; 2 uses
  %i.lj = zext i32 %i.lh to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.lj
  store i32 %i.li, ptr %i.lk, align 4, !tbaa !15
  %i.ll = zext i32 %i.li to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.ll
  store i32 %i.lh, ptr %i.lm, align 4, !tbaa !15
  %i.ln = load i32, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  store i32 %i.ln, ptr %i.kv, align 4, !tbaa !15
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.lo
  store i32 %i.kf, ptr %i.lp, align 4, !tbaa !15
  br label %_ZN16indexed_uint_set6removeEj.exit.i

_ZN16indexed_uint_set6removeEj.exit.i:            ; preds = %bb.ak, %bb.aj
  %i.lq = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 3 uses
  %.not.i83 = icmp eq ptr %i.lq, null
  br i1 %.not.i83, label %_ZN3sat4ddfw8dec_makeENS_7literalE.exit, label %bb.al

bb.al:                                            ; preds = %_ZN16indexed_uint_set6removeEj.exit.i
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !95
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 40
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = tail call noundef zeroext i1 %i.lt(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, i32 noundef %i.kf), !inline_history !172
  br i1 %i.lu, label %bb.am, label %_ZN3sat4ddfw8dec_makeENS_7literalE.exit

bb.am:                                            ; preds = %bb.al
  %i.lv = load i32, ptr %i.bn, align 8, !tbaa !166
  %i.lw = add i32 %i.lv, -1
  store i32 %i.lw, ptr %i.bn, align 8, !tbaa !166
  br label %_ZN3sat4ddfw8dec_makeENS_7literalE.exit

_ZN3sat4ddfw8dec_makeENS_7literalE.exit:          ; preds = %.lr.ph115, %bb.ah, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %bb.ai, %_ZNK16indexed_uint_set8containsEj.exit.i, %_ZN16indexed_uint_set6removeEj.exit.i, %bb.al, %bb.am
  %i.lx = getelementptr inbounds nuw i8, ptr %.071114, i64 4 ; 2 uses
  %.not75 = icmp eq ptr %i.lx, %i.jz
  br i1 %.not75, label %._crit_edge116, label %.lr.ph115

bb.an:                                            ; preds = %bb.ae
  %i.ly = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !132
  %i.ma = lshr i32 %i.lz, 1
  %i.mb = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.mc = zext nneg i32 %i.ma to i64
  %i.md = getelementptr inbounds nuw [80 x i8], ptr %i.mb, i64 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mf = load double, ptr %i.me, align 8, !tbaa !130
  %i.mg = fadd double %i.iz, %i.mf
  store double %i.mg, ptr %i.me, align 8, !tbaa !130
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ae, %bb.an, %._crit_edge116
  %i.mh = phi i32 [ %i.jb, %bb.ae ], [ 1, %bb.an ], [ %.pre, %._crit_edge116 ]
  %i.mi = add i32 %i.mh, 1
  store i32 %i.mi, ptr %i.ja, align 4, !tbaa !92
  %i.mj = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !132
  %i.ml = add i32 %i.mk, %i.r
  store i32 %i.ml, ptr %i.mj, align 8, !tbaa !132
  %i.mm = getelementptr inbounds nuw i8, ptr %.072118, i64 4 ; 2 uses
  %.not74 = icmp eq ptr %i.mm, %i.bc
  br i1 %.not74, label %._crit_edge121, label %bb.ae
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat4ddfw3addEjPKNS_7literalE(ptr noundef nonnull align 8 dereferenceable(434) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"struct.sat::clause_info", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIN3sat11clause_infoELb1EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
end_hunk_0
