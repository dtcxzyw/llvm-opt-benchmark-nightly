Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SSAFFormat?download=true
inline.NumInlined: 1855
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ey = icmp samesign ult i64 %.02328.i.i.i.i, 10000
  br i1 %i.ey, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ez = add i32 %.029.i.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.fa = udiv i64 %.02328.i.i.i.i, 10000
  %i.fb = add i32 %.029.i.i.i.i, 4                ; 2 uses
  %i.fc = icmp samesign ult i64 %.02328.i.i.i.i, 100000
  br i1 %i.fc, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !130

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ad, %._crit_edge110.i.i
  %.022.i.i.i.i = phi i32 [ %i.ez, %bb.ah ], [ %i.ev, %bb.ad ], [ %i.ex, %bb.af ], [ 1, %._crit_edge110.i.i ], [ %i.fb, %bb.ai ]
  %i.fd = zext i32 %.022.i.i.i.i to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 3 uses
  store ptr %i.fe, ptr %57, align 8, !tbaa !59, !alias.scope !226, !noalias !225
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %57, i64 noundef %i.fd, i8 noundef signext 0) #23, !noalias !225
  %i.ff = load ptr, ptr %57, align 8, !tbaa !29, !alias.scope !226, !noalias !225 ; 4 uses
  %i.fg = icmp ugt i32 %i.ee, 99
  br i1 %i.fg, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !60, !alias.scope !226, !noalias !225
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = add i32 %i.fj, -1
  br label %.lr.ph.i2.i.i.i

.lr.ph.i2.i.i.i:                                  ; preds = %.lr.ph.i2.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.020.i.i.i.i = phi i64 [ %i.fn, %.lr.ph.i2.i.i.i ], [ %i.er, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.01819.i.i.i.i = phi i32 [ %i.fx, %.lr.ph.i2.i.i.i ], [ %i.fk, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.fl = urem i64 %.020.i.i.i.i, 100
  %i.fm = shl nuw nsw i64 %i.fl, 1
  %i.fn = udiv i64 %.020.i.i.i.i, 100             ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.fm ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !30, !noalias !227
  %i.fr = zext i32 %.01819.i.i.i.i to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fr
  store i8 %i.fq, ptr %i.fs, align 1, !tbaa !30, !noalias !225
  %i.ft = load i8, ptr %i.fo, align 2, !tbaa !30, !noalias !227
  %i.fu = add i32 %.01819.i.i.i.i, -1
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fv
  store i8 %i.ft, ptr %i.fw, align 1, !tbaa !30, !noalias !225
  %i.fx = add i32 %.01819.i.i.i.i, -2
  %i.fy = icmp samesign ugt i64 %.020.i.i.i.i, 9999
  br i1 %i.fy, label %.lr.ph.i2.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !131

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i2.i.i.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %i.er, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i ], [ %i.fn, %.lr.ph.i2.i.i.i ] ; 3 uses
  %i.fz = icmp samesign ugt i64 %.0.lcssa.i.i.i.i, 9
  br i1 %i.fz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ga = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.gb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !30, !noalias !227
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !30, !noalias !225
  %i.gf = load i8, ptr %i.gb, align 2, !tbaa !30, !noalias !227
  br label %_ZNSt7__cxx119to_stringEm.exit.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  %i.gg = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.gh = or disjoint i8 %i.gg, 48
  br label %_ZNSt7__cxx119to_stringEm.exit.i.i

_ZNSt7__cxx119to_stringEm.exit.i.i:               ; preds = %bb.ak, %bb.aj
  %storemerge.i.i.i.i = phi i8 [ %i.gh, %bb.ak ], [ %i.gf, %bb.aj ]
  store i8 %storemerge.i.i.i.i, ptr %i.ff, align 1, !tbaa !30, !noalias !225
  %i.gi = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !60, !noalias !225 ; 2 uses
  %i.gk = load ptr, ptr %57, align 8, !tbaa !29, !noalias !225 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.fe
  br i1 %i.gl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i6.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit.i.i
  %i.gm = icmp ult i64 %i.gj, 16
  call void @llvm.assume(i1 %i.gm)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit.i.i
  %i.gn = load i64, ptr %i.fe, align 8, !tbaa !30, !noalias !225
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #24, !noalias !225
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #23, !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #23, !noalias !225
  %i.gp = load i32, ptr %i.p, align 8, !tbaa !56, !noalias !225 ; 3 uses
  %i.gq = zext i32 %i.gp to i64                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.gr = icmp ult i32 %i.gp, 10
  br i1 %i.gr, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i34.i.i, label %.lr.ph.i.i31.i.i

.lr.ph.i.i31.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i, %bb.aq
  %.029.i.i32.i.i = phi i32 [ %i.gz, %bb.aq ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i ] ; 4 uses
  %.02328.i.i33.i.i = phi i64 [ %i.gy, %bb.aq ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i ] ; 5 uses
  %i.gs = icmp samesign ult i64 %.02328.i.i33.i.i, 100
  br i1 %i.gs, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i31.i.i
  %i.gt = add i32 %.029.i.i32.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i34.i.i

bb.am:                                            ; preds = %.lr.ph.i.i31.i.i
  %i.gu = icmp samesign ult i64 %.02328.i.i33.i.i, 1000
  br i1 %i.gu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gv = add i32 %.029.i.i32.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i34.i.i

bb.ao:                                            ; preds = %bb.am
  %i.gw = icmp samesign ult i64 %.02328.i.i33.i.i, 10000
  br i1 %i.gw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gx = add i32 %.029.i.i32.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i34.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.gy = udiv i64 %.02328.i.i33.i.i, 10000
  %i.gz = add i32 %.029.i.i32.i.i, 4              ; 2 uses
  %i.ha = icmp samesign ult i64 %.02328.i.i33.i.i, 100000
  br i1 %i.ha, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i34.i.i, label %.lr.ph.i.i31.i.i, !llvm.loop !130

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i34.i.i: ; preds = %bb.aq, %bb.ap, %bb.an, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i
  %.022.i.i35.i.i = phi i32 [ %i.gx, %bb.ap ], [ %i.gt, %bb.al ], [ %i.gv, %bb.an ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i ], [ %i.gz, %bb.aq ]
  %i.hb = zext i32 %.022.i.i35.i.i to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 3 uses
  store ptr %i.hc, ptr %58, align 8, !tbaa !59, !alias.scope !228, !noalias !225
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %58, i64 noundef %i.hb, i8 noundef signext 0) #23, !noalias !225
  %i.hd = load ptr, ptr %58, align 8, !tbaa !29, !alias.scope !228, !noalias !225 ; 4 uses
  %i.he = icmp ugt i32 %i.gp, 99
  br i1 %i.he, label %.lr.ph.preheader.i.i39.i.i, label %._crit_edge.i.i36.i.i

.lr.ph.preheader.i.i39.i.i:                       ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i34.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !60, !alias.scope !228, !noalias !225
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = add i32 %i.hh, -1
  br label %.lr.ph.i2.i40.i.i

.lr.ph.i2.i40.i.i:                                ; preds = %.lr.ph.i2.i40.i.i, %.lr.ph.preheader.i.i39.i.i
  %.020.i.i41.i.i = phi i64 [ %i.hl, %.lr.ph.i2.i40.i.i ], [ %i.gq, %.lr.ph.preheader.i.i39.i.i ] ; 3 uses
  %.01819.i.i42.i.i = phi i32 [ %i.hv, %.lr.ph.i2.i40.i.i ], [ %i.hi, %.lr.ph.preheader.i.i39.i.i ] ; 3 uses
  %i.hj = urem i64 %.020.i.i41.i.i, 100
  %i.hk = shl nuw nsw i64 %i.hj, 1
  %i.hl = udiv i64 %.020.i.i41.i.i, 100           ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.hk ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !30, !noalias !229
  %i.hp = zext i32 %.01819.i.i42.i.i to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hp
  store i8 %i.ho, ptr %i.hq, align 1, !tbaa !30, !noalias !225
  %i.hr = load i8, ptr %i.hm, align 2, !tbaa !30, !noalias !229
  %i.hs = add i32 %.01819.i.i42.i.i, -1
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.ht
  store i8 %i.hr, ptr %i.hu, align 1, !tbaa !30, !noalias !225
  %i.hv = add i32 %.01819.i.i42.i.i, -2
  %i.hw = icmp samesign ugt i64 %.020.i.i41.i.i, 9999
  br i1 %i.hw, label %.lr.ph.i2.i40.i.i, label %._crit_edge.i.i36.i.i, !llvm.loop !131

._crit_edge.i.i36.i.i:                            ; preds = %.lr.ph.i2.i40.i.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i34.i.i
  %.0.lcssa.i.i37.i.i = phi i64 [ %i.gq, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i34.i.i ], [ %i.hl, %.lr.ph.i2.i40.i.i ] ; 3 uses
  %i.hx = icmp samesign ugt i64 %.0.lcssa.i.i37.i.i, 9
  br i1 %i.hx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i36.i.i
  %i.hy = shl nuw nsw i64 %.0.lcssa.i.i37.i.i, 1
  %i.hz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !30, !noalias !229
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !30, !noalias !225
  %i.id = load i8, ptr %i.hz, align 2, !tbaa !30, !noalias !229
  br label %_ZNSt7__cxx119to_stringEm.exit43.i.i

bb.as:                                            ; preds = %._crit_edge.i.i36.i.i
  %i.ie = trunc nuw nsw i64 %.0.lcssa.i.i37.i.i to i8
  %i.if = or disjoint i8 %i.ie, 48
  br label %_ZNSt7__cxx119to_stringEm.exit43.i.i

_ZNSt7__cxx119to_stringEm.exit43.i.i:             ; preds = %bb.as, %bb.ar
  %storemerge.i.i38.i.i = phi i8 [ %i.if, %bb.as ], [ %i.id, %bb.ar ]
  store i8 %storemerge.i.i38.i.i, ptr %i.hd, align 1, !tbaa !30, !noalias !225
  %i.ig = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !60, !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23, !noalias !225
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.ii = icmp samesign ult i64 %.sroa.speculated67.i.i, 10
  br i1 %i.ii, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i47.i.i, label %.lr.ph.i.i44.i.i

.lr.ph.i.i44.i.i:                                 ; preds = %_ZNSt7__cxx119to_stringEm.exit43.i.i, %bb.ay
  %.029.i.i45.i.i = phi i32 [ %i.iq, %bb.ay ], [ 1, %_ZNSt7__cxx119to_stringEm.exit43.i.i ] ; 4 uses
  %.02328.i.i46.i.i = phi i64 [ %i.ip, %bb.ay ], [ %.sroa.speculated67.i.i, %_ZNSt7__cxx119to_stringEm.exit43.i.i ] ; 5 uses
  %i.ij = icmp samesign ult i64 %.02328.i.i46.i.i, 100
  br i1 %i.ij, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i.i44.i.i
  %i.ik = add i32 %.029.i.i45.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i47.i.i

bb.au:                                            ; preds = %.lr.ph.i.i44.i.i
  %i.il = icmp samesign ult i64 %.02328.i.i46.i.i, 1000
  br i1 %i.il, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.im = add i32 %.029.i.i45.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i47.i.i

bb.aw:                                            ; preds = %bb.au
  %i.in = icmp samesign ult i64 %.02328.i.i46.i.i, 10000
  br i1 %i.in, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.io = add i32 %.029.i.i45.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i47.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.ip = udiv i64 %.02328.i.i46.i.i, 10000
  %i.iq = add i32 %.029.i.i45.i.i, 4              ; 2 uses
  %i.ir = icmp samesign ult i64 %.02328.i.i46.i.i, 100000
  br i1 %i.ir, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i47.i.i, label %.lr.ph.i.i44.i.i, !llvm.loop !130

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i47.i.i: ; preds = %bb.ay, %bb.ax, %bb.av, %bb.at, %_ZNSt7__cxx119to_stringEm.exit43.i.i
  %.022.i.i48.i.i = phi i32 [ %i.io, %bb.ax ], [ %i.ik, %bb.at ], [ %i.im, %bb.av ], [ 1, %_ZNSt7__cxx119to_stringEm.exit43.i.i ], [ %i.iq, %bb.ay ]
  %i.is = zext i32 %.022.i.i48.i.i to i64
  %i.it = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 3 uses
  store ptr %i.it, ptr %59, align 8, !tbaa !59, !alias.scope !230, !noalias !225
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %59, i64 noundef %i.is, i8 noundef signext 0) #23, !noalias !225
  %i.iu = load ptr, ptr %59, align 8, !tbaa !29, !alias.scope !230, !noalias !225 ; 4 uses
  %i.iv = icmp samesign ugt i64 %.sroa.speculated67.i.i, 99
  br i1 %i.iv, label %.lr.ph.preheader.i.i52.i.i, label %._crit_edge.i.i49.i.i

.lr.ph.preheader.i.i52.i.i:                       ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i47.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !60, !alias.scope !230, !noalias !225
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = add i32 %i.iy, -1
  br label %.lr.ph.i2.i53.i.i

.lr.ph.i2.i53.i.i:                                ; preds = %.lr.ph.i2.i53.i.i, %.lr.ph.preheader.i.i52.i.i
  %.020.i.i54.i.i = phi i64 [ %i.jc, %.lr.ph.i2.i53.i.i ], [ %.sroa.speculated67.i.i, %.lr.ph.preheader.i.i52.i.i ] ; 3 uses
  %.01819.i.i55.i.i = phi i32 [ %i.jm, %.lr.ph.i2.i53.i.i ], [ %i.iz, %.lr.ph.preheader.i.i52.i.i ] ; 3 uses
  %i.ja = urem i64 %.020.i.i54.i.i, 100
  %i.jb = shl nuw nsw i64 %i.ja, 1
  %i.jc = udiv i64 %.020.i.i54.i.i, 100           ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.jb ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !30, !noalias !231
  %i.jg = zext i32 %.01819.i.i55.i.i to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.jg
  store i8 %i.jf, ptr %i.jh, align 1, !tbaa !30, !noalias !225
  %i.ji = load i8, ptr %i.jd, align 2, !tbaa !30, !noalias !231
  %i.jj = add i32 %.01819.i.i55.i.i, -1
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.jk
  store i8 %i.ji, ptr %i.jl, align 1, !tbaa !30, !noalias !225
  %i.jm = add i32 %.01819.i.i55.i.i, -2
  %i.jn = icmp samesign ugt i64 %.020.i.i54.i.i, 9999
  br i1 %i.jn, label %.lr.ph.i2.i53.i.i, label %._crit_edge.i.i49.i.i, !llvm.loop !131

._crit_edge.i.i49.i.i:                            ; preds = %.lr.ph.i2.i53.i.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i47.i.i
  %.0.lcssa.i.i50.i.i = phi i64 [ %.sroa.speculated67.i.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i47.i.i ], [ %i.jc, %.lr.ph.i2.i53.i.i ] ; 3 uses
  %i.jo = icmp samesign ugt i64 %.0.lcssa.i.i50.i.i, 9
  br i1 %i.jo, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %._crit_edge.i.i49.i.i
  %i.jp = shl nuw nsw i64 %.0.lcssa.i.i50.i.i, 1
  %i.jq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !30, !noalias !231
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iu, i64 1
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !30, !noalias !225
  %i.ju = load i8, ptr %i.jq, align 2, !tbaa !30, !noalias !231
  br label %_ZNSt7__cxx119to_stringEm.exit56.i.i

bb.ba:                                            ; preds = %._crit_edge.i.i49.i.i
  %i.jv = trunc nuw nsw i64 %.0.lcssa.i.i50.i.i to i8
  %i.jw = or disjoint i8 %i.jv, 48
  br label %_ZNSt7__cxx119to_stringEm.exit56.i.i

_ZNSt7__cxx119to_stringEm.exit56.i.i:             ; preds = %bb.ba, %bb.az
  %storemerge.i.i51.i.i = phi i8 [ %i.jw, %bb.ba ], [ %i.ju, %bb.az ]
  store i8 %storemerge.i.i51.i.i, ptr %i.iu, align 1, !tbaa !30, !noalias !225
  %i.jx = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !60, !noalias !225 ; 2 uses
  %i.jz = load ptr, ptr %59, align 8, !tbaa !29, !noalias !225 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.it
  br i1 %i.ka, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit56.i.i
  %i.kb = icmp ult i64 %i.jy, 16
  call void @llvm.assume(i1 %i.kb)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit56.i.i
  %i.kc = load i64, ptr %i.it, align 8, !tbaa !30, !noalias !225
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kd) #24, !noalias !225
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23, !noalias !225
  %i.ke = load ptr, ptr %58, align 8, !tbaa !29, !noalias !225 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.hc
  br i1 %i.kf, label %_ZN12_GLOBAL__N_118computePrintLayoutERKN4llvm11SmallVectorINS_10FormatDataELj1EEE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i
  %i.kg = load i64, ptr %i.hc, align 8, !tbaa !30, !noalias !225
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #24, !noalias !225
  br label %_ZN12_GLOBAL__N_118computePrintLayoutERKN4llvm11SmallVectorINS_10FormatDataELj1EEE.exit.i

.lr.ph109.i.i:                                    ; preds = %._crit_edge.i.i, %bb.ac
  %.0107.i.i = phi ptr [ %i.kw, %._crit_edge.i.i ], [ %.val28.i.i, %bb.ac ] ; 4 uses
  %.083106.i.i = phi i64 [ %.sroa.speculated71.i.i, %._crit_edge.i.i ], [ 0, %bb.ac ]
  %.084105.i.i = phi i64 [ %.sroa.speculated67.i.i, %._crit_edge.i.i ], [ 0, %bb.ac ]
  %.085104.i.i = phi i64 [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %bb.ac ] ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.0107.i.i, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !60, !noalias !225
  %.sroa.speculated71.i.i = call i64 @llvm.umax.i64(i64 %.083106.i.i, i64 %i.kj) ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.0107.i.i, i64 64
  %i.kl = getelementptr inbounds nuw i8, ptr %.0107.i.i, i64 72
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !56, !noalias !225 ; 2 uses
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %.sroa.speculated67.i.i = call i64 @llvm.umax.i64(i64 %.084105.i.i, i64 %i.kn) ; 6 uses
  %.val.i.i = load ptr, ptr %i.kk, align 8, !tbaa !45, !noalias !225 ; 3 uses
  %.idx114.i.i = shl nuw nsw i64 %i.kn, 6         ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx114.i.i
  %.not25100.i.i = icmp eq i32 %i.km, 0
  br i1 %.not25100.i.i, label %._crit_edge.i.i, label %.lr.ph.i2.i.preheader

.lr.ph.i2.i.preheader:                            ; preds = %.lr.ph109.i.i
  %i.kp = add nsw i64 %.idx114.i.i, -64           ; 2 uses
  %i.kq = lshr exact i64 %i.kp, 6
  %i.kr = add nuw nsw i64 %i.kq, 1
  %xtraiter = and i64 %i.kr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i2.i.prol.loopexit, label %.lr.ph.i2.i.prol

.lr.ph.i2.i.prol:                                 ; preds = %.lr.ph.i2.i.preheader, %.lr.ph.i2.i.prol
  %.024102.i.i.prol = phi ptr [ %i.ku, %.lr.ph.i2.i.prol ], [ %.val.i.i, %.lr.ph.i2.i.preheader ] ; 2 uses
  %.1101.i.i.prol = phi i64 [ %.sroa.speculated.i.i.prol, %.lr.ph.i2.i.prol ], [ %.085104.i.i, %.lr.ph.i2.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i2.i.prol ], [ 0, %.lr.ph.i2.i.preheader ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.024102.i.i.prol, i64 8
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !60, !noalias !225
  %.sroa.speculated.i.i.prol = call i64 @llvm.umax.i64(i64 %.1101.i.i.prol, i64 %i.kt) ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.024102.i.i.prol, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i2.i.prol.loopexit, label %.lr.ph.i2.i.prol, !llvm.loop !136

.lr.ph.i2.i.prol.loopexit:                        ; preds = %.lr.ph.i2.i.prol, %.lr.ph.i2.i.preheader
  %.sroa.speculated.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i2.i.preheader ], [ %.sroa.speculated.i.i.prol, %.lr.ph.i2.i.prol ]
  %.024102.i.i.unr = phi ptr [ %.val.i.i, %.lr.ph.i2.i.preheader ], [ %i.ku, %.lr.ph.i2.i.prol ]
  %.1101.i.i.unr = phi i64 [ %.085104.i.i, %.lr.ph.i2.i.preheader ], [ %.sroa.speculated.i.i.prol, %.lr.ph.i2.i.prol ]
  %i.kv = icmp ult i64 %i.kp, 448
  br i1 %i.kv, label %._crit_edge.i.i, label %.lr.ph.i2.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i.prol.loopexit, %.lr.ph.i2.i, %.lr.ph109.i.i
  %.1.lcssa.i.i = phi i64 [ %.085104.i.i, %.lr.ph109.i.i ], [ %.sroa.speculated.i.i.lcssa.unr, %.lr.ph.i2.i.prol.loopexit ], [ %.sroa.speculated.i.i.7, %.lr.ph.i2.i ] ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.0107.i.i, i64 144 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.kw, %i.es
  br i1 %.not.i3.i, label %._crit_edge110.i.i, label %.lr.ph109.i.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i.prol.loopexit, %.lr.ph.i2.i
  %.024102.i.i = phi ptr [ %i.ln, %.lr.ph.i2.i ], [ %.024102.i.i.unr, %.lr.ph.i2.i.prol.loopexit ] ; 9 uses
  %.1101.i.i = phi i64 [ %.sroa.speculated.i.i.7, %.lr.ph.i2.i ], [ %.1101.i.i.unr, %.lr.ph.i2.i.prol.loopexit ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.024102.i.i, i64 8
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !60, !noalias !225
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %.1101.i.i, i64 %i.ky)
  %i.kz = getelementptr inbounds nuw i8, ptr %.024102.i.i, i64 72
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !60, !noalias !225
  %.sroa.speculated.i.i.1 = call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.i, i64 %i.la)
  %i.lb = getelementptr inbounds nuw i8, ptr %.024102.i.i, i64 136
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !60, !noalias !225
  %.sroa.speculated.i.i.2 = call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.i.1, i64 %i.lc)
  %i.ld = getelementptr inbounds nuw i8, ptr %.024102.i.i, i64 200
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !60, !noalias !225
  %.sroa.speculated.i.i.3 = call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.i.2, i64 %i.le)
  %i.lf = getelementptr inbounds nuw i8, ptr %.024102.i.i, i64 264
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !60, !noalias !225
  %.sroa.speculated.i.i.4 = call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.i.3, i64 %i.lg)
  %i.lh = getelementptr inbounds nuw i8, ptr %.024102.i.i, i64 328
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !60, !noalias !225
  %.sroa.speculated.i.i.5 = call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.i.4, i64 %i.li)
  %i.lj = getelementptr inbounds nuw i8, ptr %.024102.i.i, i64 392
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !60, !noalias !225
  %.sroa.speculated.i.i.6 = call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.i.5, i64 %i.lk)
  %i.ll = getelementptr inbounds nuw i8, ptr %.024102.i.i, i64 456
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !60, !noalias !225
  %.sroa.speculated.i.i.7 = call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.i.6, i64 %i.lm) ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.024102.i.i, i64 512 ; 2 uses
  %.not25.i.i.7 = icmp eq ptr %i.ln, %i.ko
  br i1 %.not25.i.i.7, label %._crit_edge.i.i, label %.lr.ph.i2.i

_ZN12_GLOBAL__N_118computePrintLayoutERKN4llvm11SmallVectorINS_10FormatDataELj1EEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i
  %i.lo = add i64 %i.ih, 2
  %i.lp = add i64 %i.lo, %i.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23, !noalias !225
  %i.lq = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #23 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !223
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 32 ; 3 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !224 ; 2 uses
  %i.lv = ptrtoint ptr %i.ls to i64
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = sub i64 %i.lv, %i.lw
  %i.ly = icmp ult i64 %i.lx, 34
  br i1 %i.ly, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN12_GLOBAL__N_118computePrintLayoutERKN4llvm11SmallVectorINS_10FormatDataELj1EEE.exit.i
  %i.lz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.lq, ptr noundef nonnull @.str.42, i64 noundef 34) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.bc:                                            ; preds = %_ZN12_GLOBAL__N_118computePrintLayoutERKN4llvm11SmallVectorINS_10FormatDataELj1EEE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.lu, ptr noundef nonnull align 1 dereferenceable(34) @.str.42, i64 34, i1 false)
  %i.ma = load ptr, ptr %i.lt, align 8, !tbaa !224
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 34
  store ptr %i.mb, ptr %i.lt, align 8, !tbaa !224
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.bc, %bb.bb
  %i.mc = load i32, ptr %i.p, align 8, !tbaa !56
  %.not.i7.i = icmp eq i32 %i.mc, 0
  br i1 %.not.i7.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.mi = getelementptr inbounds nuw i8, ptr %55, i64 20
  %.sroa.2.0..sroa_idx.i.i11.i.i.i = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.mk = getelementptr inbounds nuw i8, ptr %56, i64 20
  %i.ml = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 7 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 8 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 5 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.mv = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.mw = getelementptr inbounds nuw i8, ptr %51, i64 20
  %.sroa.2.0..sroa_idx.i.i37.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.my = getelementptr inbounds nuw i8, ptr %52, i64 20
  %i.mz = trunc i64 %i.gj to i32                  ; 3 uses
  %i.na = add i32 %i.mz, 1
  %i.nb = trunc i64 %.sroa.speculated71.i.i to i32
  %i.nc = add i32 %i.mz, 6
  %i.nd = add i32 %i.mz, 10
end_hunk_0
