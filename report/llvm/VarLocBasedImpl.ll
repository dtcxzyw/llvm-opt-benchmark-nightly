Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VarLocBasedImpl?download=true
inline.NumInlined: 6395
inline.NumDeleted: 2943
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_8LeafNodeImcLj11ENS_15IntervalMapInfoImEEEEEEvPPT_jPjPKj:bb.a
  %i.gz = add i32 %.015.i.i.i109, 2               ; 2 uses
  %indvars.iv.next.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i108, 2 ; 2 uses
  %niter190.next.1 = add i32 %niter190, 2         ; 2 uses
  %niter190.ncmp.1 = icmp eq i32 %niter190.next.1, %unroll_iter189
  br i1 %niter190.ncmp.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa, label %bb.g, !llvm.loop !7

.lr.ph.i.i24.i78:                                 ; preds = %.lr.ph153
  %i.ha = sub nsw i32 0, %i.ez
  %i.hb = sub i32 11, %i.er
  %i.hc = tail call i32 @llvm.umin.i32(i32 %i.ex, i32 %i.ha)
  %.sroa.speculated.i80 = tail call i32 @llvm.umin.i32(i32 %i.hb, i32 %i.hc) ; 10 uses
  %.not13.i.i29.i81 = icmp eq i32 %.sroa.speculated.i80, 0
  br i1 %.not13.i.i29.i81, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE4copyILj11EEEvRKNS1_IS3_cXT_EEEjjj.exit.i.i87, label %.lr.ph.i.i30.i82

.lr.ph.i.i30.i82:                                 ; preds = %.lr.ph.i.i24.i78
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ev, i64 176 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ey, i64 176 ; 3 uses
  %i.hf = zext nneg i32 %.sroa.speculated.i80 to i64 ; 2 uses
  %xtraiter170 = and i64 %i.hf, 1
  %i.hg = icmp eq i32 %.sroa.speculated.i80, 1
  br i1 %i.hg, label %.epil.preheader169, label %.lr.ph.i.i30.i82.new

.lr.ph.i.i30.i82.new:                             ; preds = %.lr.ph.i.i30.i82
  %unroll_iter173 = and i64 %i.hf, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i30.i82.new
  %indvars.iv.i31.i83 = phi i64 [ 0, %.lr.ph.i.i30.i82.new ], [ %indvars.iv.next.i32.i85.1, %bb.h ] ; 4 uses
  %.01214.i.i.i84 = phi i32 [ %i.er, %.lr.ph.i.i30.i82.new ], [ %i.hw, %bb.h ] ; 3 uses
  %niter174 = phi i64 [ 0, %.lr.ph.i.i30.i82.new ], [ %niter174.next.1, %bb.h ]
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i31.i83
  %i.hi = zext i32 %.01214.i.i.i84 to i64         ; 2 uses
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.hi
  %i.hk = load <2 x i64>, ptr %i.hh, align 8, !tbaa !357
  store <2 x i64> %i.hk, ptr %i.hj, align 8, !tbaa !357
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv.i31.i83
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !254
  %i.hn = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hi
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !254
  %indvars.iv.next.i32.i85 = or disjoint i64 %indvars.iv.i31.i83, 1 ; 2 uses
  %i.ho = add i32 %.01214.i.i.i84, 1
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.next.i32.i85
  %i.hq = zext i32 %i.ho to i64                   ; 2 uses
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.hq
  %i.hs = load <2 x i64>, ptr %i.hp, align 8, !tbaa !357
  store <2 x i64> %i.hs, ptr %i.hr, align 8, !tbaa !357
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv.next.i32.i85
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !254
  %i.hv = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hq
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !254
  %indvars.iv.next.i32.i85.1 = add nuw nsw i64 %indvars.iv.i31.i83, 2 ; 2 uses
  %i.hw = add i32 %.01214.i.i.i84, 2              ; 2 uses
  %niter174.next.1 = add i64 %niter174, 2         ; 2 uses
  %niter174.ncmp.1 = icmp eq i64 %niter174.next.1, %unroll_iter173
  br i1 %niter174.ncmp.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE4copyILj11EEEvRKNS1_IS3_cXT_EEEjjj.exit.i.i87.loopexit.unr-lcssa, label %bb.h, !llvm.loop !7

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE4copyILj11EEEvRKNS1_IS3_cXT_EEEjjj.exit.i.i87.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE4copyILj11EEEvRKNS1_IS3_cXT_EEEjjj.exit.i.i87, label %.epil.preheader169

.epil.preheader169:                               ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE4copyILj11EEEvRKNS1_IS3_cXT_EEEjjj.exit.i.i87.loopexit.unr-lcssa, %.lr.ph.i.i30.i82
  %indvars.iv.i31.i83.epil.init = phi i64 [ 0, %.lr.ph.i.i30.i82 ], [ %indvars.iv.next.i32.i85.1, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE4copyILj11EEEvRKNS1_IS3_cXT_EEEjjj.exit.i.i87.loopexit.unr-lcssa ] ; 2 uses
  %.01214.i.i.i84.epil.init = phi i32 [ %i.er, %.lr.ph.i.i30.i82 ], [ %i.hw, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE4copyILj11EEEvRKNS1_IS3_cXT_EEEjjj.exit.i.i87.loopexit.unr-lcssa ]
  %lcmp.mod172 = trunc i32 %.sroa.speculated.i80 to i1
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i31.i83.epil.init
  %i.hy = zext i32 %.01214.i.i.i84.epil.init to i64 ; 2 uses
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.hy
  %i.ia = load <2 x i64>, ptr %i.hx, align 8, !tbaa !357
  store <2 x i64> %i.ia, ptr %i.hz, align 8, !tbaa !357
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv.i31.i83.epil.init
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !254
  %i.id = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hy
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !254
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE4copyILj11EEEvRKNS1_IS3_cXT_EEEjjj.exit.i.i87

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE4copyILj11EEEvRKNS1_IS3_cXT_EEEjjj.exit.i.i87: ; preds = %.epil.preheader169, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE4copyILj11EEEvRKNS1_IS3_cXT_EEEjjj.exit.i.i87.loopexit.unr-lcssa, %.lr.ph.i.i24.i78
  %.not13.i.i.i.i.i88 = icmp eq i32 %i.ex, %.sroa.speculated.i80
  br i1 %.not13.i.i.i.i.i88, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17transferToLeftSibEjRS4_jj.exit.i94, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE4copyILj11EEEvRKNS1_IS3_cXT_EEEjjj.exit.i.i87
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ev, i64 176 ; 6 uses
  %i.if = sub i32 %i.ex, %.sroa.speculated.i80    ; 3 uses
  %.neg191 = add i32 %.sroa.speculated.i80, 1
  %xtraiter176 = and i32 %i.if, 1
  %i.ig = icmp eq i32 %i.ex, %.neg191
  br i1 %i.ig, label %.epil.preheader175, label %.lr.ph.i.i.i.i.i89.new

.lr.ph.i.i.i.i.i89.new:                           ; preds = %.lr.ph.i.i.i.i.i89
  %unroll_iter179 = and i32 %i.if, -2
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i89.new
  %indvars.iv6.i.i90 = phi i64 [ 0, %.lr.ph.i.i.i.i.i89.new ], [ %indvars.iv.next7.i.i92.1, %bb.i ] ; 4 uses
  %.015.i.i.i.i.i91 = phi i32 [ %.sroa.speculated.i80, %.lr.ph.i.i.i.i.i89.new ], [ %i.iw, %bb.i ] ; 3 uses
  %niter180 = phi i32 [ 0, %.lr.ph.i.i.i.i.i89.new ], [ %niter180.next.1, %bb.i ]
  %i.ih = zext i32 %.015.i.i.i.i.i91 to i64       ; 2 uses
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.ih
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv6.i.i90
  %i.ik = load <2 x i64>, ptr %i.ii, align 8, !tbaa !357
  store <2 x i64> %i.ik, ptr %i.ij, align 8, !tbaa !357
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ih
  %i.im = load i8, ptr %i.il, align 1, !tbaa !254
  %i.in = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv6.i.i90
  store i8 %i.im, ptr %i.in, align 1, !tbaa !254
  %i.io = add i32 %.015.i.i.i.i.i91, 1
  %indvars.iv.next7.i.i92 = or disjoint i64 %indvars.iv6.i.i90, 1 ; 2 uses
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.ip
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.next7.i.i92
  %i.is = load <2 x i64>, ptr %i.iq, align 8, !tbaa !357
  store <2 x i64> %i.is, ptr %i.ir, align 8, !tbaa !357
  %i.it = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ip
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !254
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv.next7.i.i92
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !254
  %i.iw = add i32 %.015.i.i.i.i.i91, 2            ; 2 uses
  %indvars.iv.next7.i.i92.1 = add nuw nsw i64 %indvars.iv6.i.i90, 2 ; 2 uses
  %niter180.next.1 = add i32 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i32 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17transferToLeftSibEjRS4_jj.exit.i94.loopexit.unr-lcssa, label %bb.i, !llvm.loop !7

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17transferToLeftSibEjRS4_jj.exit.i94.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod177.not = icmp eq i32 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17transferToLeftSibEjRS4_jj.exit.i94, label %.epil.preheader175

.epil.preheader175:                               ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17transferToLeftSibEjRS4_jj.exit.i94.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i89
  %indvars.iv6.i.i90.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i89 ], [ %indvars.iv.next7.i.i92.1, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17transferToLeftSibEjRS4_jj.exit.i94.loopexit.unr-lcssa ] ; 2 uses
  %.015.i.i.i.i.i91.epil.init = phi i32 [ %.sroa.speculated.i80, %.lr.ph.i.i.i.i.i89 ], [ %i.iw, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17transferToLeftSibEjRS4_jj.exit.i94.loopexit.unr-lcssa ]
  %lcmp.mod178 = trunc i32 %i.if to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.ix = zext i32 %.015.i.i.i.i.i91.epil.init to i64 ; 2 uses
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.ix
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv6.i.i90.epil.init
  %i.ja = load <2 x i64>, ptr %i.iy, align 8, !tbaa !357
  store <2 x i64> %i.ja, ptr %i.iz, align 8, !tbaa !357
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ix
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !254
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv6.i.i90.epil.init
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !254
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17transferToLeftSibEjRS4_jj.exit.i94

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17transferToLeftSibEjRS4_jj.exit.i94: ; preds = %.epil.preheader175, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17transferToLeftSibEjRS4_jj.exit.i94.loopexit.unr-lcssa, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE4copyILj11EEEvRKNS1_IS3_cXT_EEEjjj.exit.i.i87
  %i.je = sub nsw i32 0, %.sroa.speculated.i80
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod187.not = icmp eq i32 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112, label %.epil.preheader185

.epil.preheader185:                               ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa, %.lr.ph.i7.i.i107
  %indvars.iv.i.i108.epil.init = phi i64 [ 0, %.lr.ph.i7.i.i107 ], [ %indvars.iv.next.i.i110.1, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa ] ; 2 uses
  %.015.i.i.i109.epil.init = phi i32 [ %i.gg, %.lr.ph.i7.i.i107 ], [ %i.gz, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa ]
  %lcmp.mod188 = trunc i32 %.sroa.speculated46.i98 to i1
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.jf = zext i32 %.015.i.i.i109.epil.init to i64 ; 2 uses
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.jf
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i.i108.epil.init
  %i.ji = load <2 x i64>, ptr %i.jg, align 8, !tbaa !357
  store <2 x i64> %i.ji, ptr %i.jh, align 8, !tbaa !357
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.jf
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !254
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv.i.i108.epil.init
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !254
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112: ; preds = %.epil.preheader185, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE9moveRightEjjj.exit.i.i105, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17transferToLeftSibEjRS4_jj.exit.i94
  %.0.i95 = phi i32 [ %i.je, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17transferToLeftSibEjRS4_jj.exit.i94 ], [ 0, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE9moveRightEjjj.exit.i.i105 ], [ %.sroa.speculated46.i98, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa ], [ %.sroa.speculated46.i98, %.epil.preheader185 ] ; 2 uses
  %i.jm = load i32, ptr %i.ew, align 4, !tbaa !317
  %i.jn = add i32 %i.jm, %.0.i95
  store i32 %i.jn, ptr %i.ew, align 4, !tbaa !317
  %i.jo = load i32, ptr %i.ek, align 4, !tbaa !317
  %i.jp = sub i32 %i.jo, %.0.i95                  ; 3 uses
  store i32 %i.jp, ptr %i.ek, align 4, !tbaa !317
  %i.jq = load i32, ptr %i.em, align 4, !tbaa !317 ; 2 uses
  %.not75 = icmp ult i32 %i.jp, %i.jq
  br i1 %.not75, label %bb.f, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112..loopexit.loopexit_crit_edge, !llvm.loop !1159

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112..loopexit.loopexit_crit_edge: ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112
  br label %.loopexit, !llvm.loop !1159

.loopexit:                                        ; preds = %bb.f, %.preheader, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairImmEcLj11EE17adjustFromLeftSibEjRS4_ji.exit112..loopexit.loopexit_crit_edge, %.lr.ph121
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %.not73 = icmp eq i64 %indvars.iv.next127, %i.c
  br i1 %.not73, label %.loopexit114, label %.lr.ph121, !llvm.loop !1160

.loopexit114:                                     ; preds = %.loopexit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE8iterator10insertNodeEjNS_15IntervalMapImpl7NodeRefEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !379    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = icmp eq i32 %1, 1                        ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 196 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !228  ; 8 uses
  %i.f = icmp ult i32 %i.e, 11
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !317  ; 14 uses
  %.not9.i.i.i = icmp eq i32 %i.e, %i.j
  br i1 %.not9.i.i.i, label %_ZN4llvm15IntervalMapImpl10BranchNodeImcLj11ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.k = sub i32 %i.e, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 8 uses
  %i.m = zext i32 %i.k to i64                     ; 5 uses
  %4 = add nsw i32 %i.e, -1                       ; 2 uses
  %5 = sub i32 %4, %i.j                           ; 2 uses
  %i.n = zext i32 %5 to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check92 = icmp ult i32 %5, 27
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.scevcheck84

vector.scevcheck84:                               ; preds = %.lr.ph.i.i.i
  %i.p = add nsw i32 %i.e, -1                     ; 2 uses
  %.neg105 = sub i32 %i.j, %i.p
  %i.q = add i32 %.neg105, %i.e
  %i.r = icmp ugt i32 %i.q, %i.e
  %i.s = icmp ugt i32 %i.j, %i.p
  %i.t = or i1 %i.r, %i.s
  br i1 %i.t, label %scalar.ph91.preheader, label %vector.memcheck85

vector.memcheck85:                                ; preds = %vector.scevcheck84
  %i.u = zext i32 %4 to i64
  %i.v = shl nuw nsw i64 %i.u, 3                  ; 3 uses
  %i.w = shl nuw nsw i32 %i.e, 3
  %i.x = zext nneg i32 %i.w to i64                ; 3 uses
  %i.y = sub nsw i64 %i.x, %i.v
  %diff.check86 = icmp ugt i64 %i.y, -32
  %i.z = sub nsw i64 %i.x, %i.v
  %i.aa = add nsw i64 %i.z, -89
  %diff.check87 = icmp ult i64 %i.aa, 31
  %conflict.rdx88 = or i1 %diff.check86, %diff.check87
  %i.ab = sub nsw i64 %i.v, %i.x
  %i.ac = add nsw i64 %i.ab, -89
  %diff.check89 = icmp ult i64 %i.ac, 31
  %conflict.rdx90 = or i1 %conflict.rdx88, %diff.check89
  br i1 %conflict.rdx90, label %scalar.ph91.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck85
  %n.vec94 = and i64 %i.o, 8589934588             ; 3 uses
  %i.ad = sub nsw i64 %i.m, %n.vec94
  %invariant.op108 = add i32 -1, %i.j
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next101, %vector.body95 ] ; 2 uses
  %i.ae = sub i64 %i.m, %index96                  ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  %.reass109 = add i32 %i.af, %invariant.op108
  %i.ag = zext i32 %.reass109 to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ag ; 2 uses
  %i.ai = trunc nuw i64 %i.ae to i32
  %i.aj = add i32 %i.j, %i.ai
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 -24
  %wide.load97 = load <2 x i64>, ptr %i.am, align 8, !tbaa !254
  %wide.load98 = load <2 x i64>, ptr %i.an, align 8, !tbaa !254
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 -24
  store <2 x i64> %wide.load97, ptr %i.ao, align 8, !tbaa !254
  store <2 x i64> %wide.load98, ptr %i.ap, align 8, !tbaa !254
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ag ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -24
  %wide.load99 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !357
  %wide.load100 = load <2 x i64>, ptr %i.as, align 8, !tbaa !357
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ak ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -24
  store <2 x i64> %wide.load99, ptr %i.au, align 8, !tbaa !357
  store <2 x i64> %wide.load100, ptr %i.av, align 8, !tbaa !357
  %index.next101 = add nuw i64 %index96, 4        ; 2 uses
  %i.aw = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.aw, label %middle.block102, label %vector.body95, !llvm.loop !1161

middle.block102:                                  ; preds = %vector.body95
  %cmp.n103 = icmp eq i64 %i.o, %n.vec94
  br i1 %cmp.n103, label %_ZN4llvm15IntervalMapImpl10BranchNodeImcLj11ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit, label %scalar.ph91.preheader

scalar.ph91.preheader:                            ; preds = %vector.memcheck85, %vector.scevcheck84, %.lr.ph.i.i.i, %middle.block102
  %indvars.iv.i.i.ph = phi i64 [ %i.m, %vector.memcheck85 ], [ %i.m, %vector.scevcheck84 ], [ %i.m, %.lr.ph.i.i.i ], [ %i.ad, %middle.block102 ] ; 4 uses
  %i.ax = trunc i64 %indvars.iv.i.i.ph to i32     ; 2 uses
  %xtraiter106 = and i32 %i.ax, 1
  %lcmp.mod107.not = icmp eq i32 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %scalar.ph91.prol.loopexit, label %scalar.ph91.prol

scalar.ph91.prol:                                 ; preds = %scalar.ph91.preheader
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.ph, -1 ; 2 uses
  %indvars.i.i.prol = trunc i64 %indvars.iv.next.i.i.prol to i32
  %i.ay = add i32 %i.j, %indvars.i.i.prol
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.az
  %i.bb = trunc nuw i64 %indvars.iv.i.i.ph to i32
  %i.bc = add i32 %i.j, %i.bb
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bd
  %i.bf = load i64, ptr %i.ba, align 8, !tbaa !254
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !254
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.az
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !357
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bd
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !357
  br label %scalar.ph91.prol.loopexit

scalar.ph91.prol.loopexit:                        ; preds = %scalar.ph91.prol, %scalar.ph91.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph91.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph91.prol ]
  %i.bj = icmp eq i32 %i.ax, 1
  br i1 %i.bj, label %_ZN4llvm15IntervalMapImpl10BranchNodeImcLj11ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit, label %scalar.ph91

scalar.ph91:                                      ; preds = %scalar.ph91.prol.loopexit, %scalar.ph91
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph91 ], [ %indvars.iv.i.i.unr, %scalar.ph91.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %i.bk = add i32 %i.j, %indvars.i.i
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bl
  %i.bn = trunc nuw i64 %indvars.iv.i.i to i32
  %i.bo = add i32 %i.j, %i.bn
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bp
  %i.br = load i64, ptr %i.bm, align 8, !tbaa !254
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !254
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bl
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !357
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bp
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !357
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %indvars.i.i.1 = trunc i64 %indvars.iv.next.i.i.1 to i32 ; 2 uses
  %i.bv = add i32 %i.j, %indvars.i.i.1
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bw
  %i.by = trunc nuw i64 %indvars.iv.next.i.i to i32
  %i.bz = add i32 %i.j, %i.by
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ca
  %i.cc = load i64, ptr %i.bx, align 8, !tbaa !254
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !254
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bw
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !357
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ca
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !357
  %.not.i.i.i.1 = icmp eq i32 %indvars.i.i.1, 0
  br i1 %.not.i.i.i.1, label %_ZN4llvm15IntervalMapImpl10BranchNodeImcLj11ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit, label %scalar.ph91, !llvm.loop !1162

_ZN4llvm15IntervalMapImpl10BranchNodeImcLj11ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit: ; preds = %scalar.ph91.prol.loopexit, %scalar.ph91, %middle.block102, %bb.c
  %i.cg = zext i32 %i.j to i64                    ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cg
  store i64 %2, ptr %i.ch, align 8, !tbaa !254
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store i64 %3, ptr %i.cj, align 8, !tbaa !357
  %i.ck = load i32, ptr %i.d, align 4, !tbaa !228
  %i.cl = add i32 %i.ck, 1                        ; 2 uses
  store i32 %i.cl, ptr %i.d, align 4, !tbaa !228
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !42  ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 %i.cl, ptr %i.cn, align 8, !tbaa !383
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !381
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !382
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr
  %.sroa.0.0.copyload.i = load i64, ptr %i.cs, align 8, !tbaa !254 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cu = and i64 %.sroa.0.0.copyload.i, -64
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.cx = and i32 %i.cw, 63
  %i.cy = add nuw nsw i32 %i.cx, 1
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !360
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store i32 %i.cy, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !317
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !317
  %i.dc = tail call i64 @_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE9splitRootEj(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i32 noundef %i.db)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.de = load i32, ptr %i.d, align 4, !tbaa !228
  tail call void @_ZN4llvm15IntervalMapImpl4Path11replaceRootEPvjSt4pairIjjE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull %i.dd, i32 noundef %i.de, i64 %i.dc) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.048 = phi i32 [ 2, %bb.d ], [ %1, %bb.a ]
  %i.df = add i32 %.048, -1                       ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !43
  %.not.i.i.i53 = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i53, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i:   ; preds = %bb.e
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !381
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !383
  %i.dn = icmp ult i32 %i.dk, %i.dm
  br i1 %i.dn, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge: ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i
  %.pre66 = zext i32 %i.df to i64
  br label %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i: ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i, %bb.e
  tail call void @_ZN4llvm15IntervalMapImpl4Path8moveLeftEj(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %i.df) #21
  %i.do = zext i32 %i.df to i64                   ; 2 uses
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.do
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !381
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !381
  br label %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit

_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit: ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i
  %.pre-phi67 = phi i64 [ %.pre66, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge ], [ %i.do, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i ] ; 2 uses
  %i.du = phi ptr [ %i.di, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge ], [ %i.dp, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %.pre-phi67
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !383 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 12
  br i1 %i.dy, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit
  %i.dz = tail call noundef zeroext i1 @_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeImcLj12ES2_EEEEbj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.df) ; 2 uses
  %i.ea = zext i1 %i.dz to i32
  %i.eb = add i32 %i.df, %i.ea                    ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %.pre63 = zext i32 %i.eb to i64                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.pre63
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre65 = load i32, ptr %.phi.trans.insert64, align 8, !tbaa !383
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit
  %i.ec = phi i32 [ %.pre65, %bb.f ], [ %i.dx, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 7 uses
  %.pre-phi = phi i64 [ %.pre63, %bb.f ], [ %.pre-phi67, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 4 uses
  %i.ed = phi ptr [ %.pre, %bb.f ], [ %i.du, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ]
  %.150 = phi i1 [ %i.dz, %bb.f ], [ %i.c, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ]
  %.1 = phi i32 [ %i.eb, %bb.f ], [ %i.df, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %.pre-phi ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !382 ; 11 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !317 ; 14 uses
  %.not9.i.i.i54 = icmp eq i32 %i.ec, %i.eh
  br i1 %.not9.i.i.i54, label %_ZN4llvm15IntervalMapImpl10BranchNodeImcLj12ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit, label %.lr.ph.i.i.i55

.lr.ph.i.i.i55:                                   ; preds = %bb.g
  %i.ei = sub i32 %i.ec, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 96 ; 8 uses
  %i.ek = zext i32 %i.ei to i64                   ; 5 uses
  %6 = add i32 %i.ec, -1                          ; 2 uses
  %7 = sub i32 %6, %i.eh                          ; 2 uses
  %i.el = zext i32 %7 to i64
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %7, 27
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i55
  %i.en = add i32 %i.ec, -1                       ; 2 uses
  %.neg = sub i32 %i.eh, %i.en
  %i.eo = add i32 %.neg, %i.ec
  %i.ep = icmp ugt i32 %i.eo, %i.ec
  %i.eq = icmp ugt i32 %i.eh, %i.en
  %i.er = or i1 %i.ep, %i.eq
  br i1 %i.er, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.es = zext i32 %6 to i64
  %i.et = shl nuw nsw i64 %i.es, 3                ; 3 uses
  %i.eu = zext i32 %i.ec to i64
  %i.ev = shl nuw nsw i64 %i.eu, 3                ; 3 uses
  %i.ew = sub nsw i64 %i.ev, %i.et
  %diff.check = icmp ugt i64 %i.ew, -32
  %i.ex = sub nsw i64 %i.ev, %i.et
  %i.ey = add nsw i64 %i.ex, -97
  %diff.check78 = icmp ult i64 %i.ey, 31
  %conflict.rdx = or i1 %diff.check, %diff.check78
  %i.ez = sub nsw i64 %i.et, %i.ev
  %i.fa = add nsw i64 %i.ez, -97
  %diff.check79 = icmp ult i64 %i.fa, 31
  %conflict.rdx80 = or i1 %conflict.rdx, %diff.check79
  br i1 %conflict.rdx80, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.em, 8589934588              ; 3 uses
  %i.fb = sub nsw i64 %i.ek, %n.vec
  %invariant.op = add i32 -1, %i.eh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fc = sub i64 %i.ek, %index                   ; 2 uses
  %i.fd = trunc i64 %i.fc to i32
  %.reass = add i32 %i.fd, %invariant.op
  %i.fe = zext i32 %.reass to i64                 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fe ; 2 uses
  %i.fg = trunc nuw i64 %i.fc to i32
  %i.fh = add i32 %i.eh, %i.fg
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.ff, i64 -8
  %i.fl = getelementptr inbounds i8, ptr %i.ff, i64 -24
  %wide.load = load <2 x i64>, ptr %i.fk, align 8, !tbaa !254
  %wide.load81 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !254
  %i.fm = getelementptr inbounds i8, ptr %i.fj, i64 -8
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 -24
  store <2 x i64> %wide.load, ptr %i.fm, align 8, !tbaa !254
  store <2 x i64> %wide.load81, ptr %i.fn, align 8, !tbaa !254
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fe ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -8
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 -24
  %wide.load82 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !357
  %wide.load83 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !357
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fi ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -8
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 -24
  store <2 x i64> %wide.load82, ptr %i.fs, align 8, !tbaa !357
  store <2 x i64> %wide.load83, ptr %i.ft, align 8, !tbaa !357
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !1163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.em, %n.vec
  br i1 %cmp.n, label %_ZN4llvm15IntervalMapImpl10BranchNodeImcLj12ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i.i55, %middle.block
  %indvars.iv.i.i56.ph = phi i64 [ %i.ek, %vector.memcheck ], [ %i.ek, %vector.scevcheck ], [ %i.ek, %.lr.ph.i.i.i55 ], [ %i.fb, %middle.block ] ; 4 uses
  %i.fv = trunc i64 %indvars.iv.i.i56.ph to i32   ; 2 uses
  %xtraiter = and i32 %i.fv, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %indvars.iv.next.i.i57.prol = add nsw i64 %indvars.iv.i.i56.ph, -1 ; 2 uses
  %indvars.i.i58.prol = trunc i64 %indvars.iv.next.i.i57.prol to i32
  %i.fw = add i32 %i.eh, %indvars.i.i58.prol
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fx
  %i.fz = trunc nuw i64 %indvars.iv.i.i56.ph to i32
  %i.ga = add i32 %i.eh, %i.fz
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.gb
  %i.gd = load i64, ptr %i.fy, align 8, !tbaa !254
  store i64 %i.gd, ptr %i.gc, align 8, !tbaa !254
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fx
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !357
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.gb
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !357
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i56.unr = phi i64 [ %indvars.iv.i.i56.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i57.prol, %scalar.ph.prol ]
  %i.gh = icmp eq i32 %i.fv, 1
  br i1 %i.gh, label %_ZN4llvm15IntervalMapImpl10BranchNodeImcLj12ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i56 = phi i64 [ %indvars.iv.next.i.i57.1, %scalar.ph ], [ %indvars.iv.i.i56.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i.i57 = add nsw i64 %indvars.iv.i.i56, -1 ; 2 uses
  %indvars.i.i58 = trunc i64 %indvars.iv.next.i.i57 to i32
  %i.gi = add i32 %i.eh, %indvars.i.i58
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.gj
  %i.gl = trunc nuw i64 %indvars.iv.i.i56 to i32
  %i.gm = add i32 %i.eh, %i.gl
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.gn
  %i.gp = load i64, ptr %i.gk, align 8, !tbaa !254
  store i64 %i.gp, ptr %i.go, align 8, !tbaa !254
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.gj
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !357
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.gn
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !357
  %indvars.iv.next.i.i57.1 = add nsw i64 %indvars.iv.i.i56, -2 ; 2 uses
  %indvars.i.i58.1 = trunc i64 %indvars.iv.next.i.i57.1 to i32 ; 2 uses
  %i.gt = add i32 %i.eh, %indvars.i.i58.1
  %i.gu = zext i32 %i.gt to i64                   ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.gu
  %i.gw = trunc nuw i64 %indvars.iv.next.i.i57 to i32
  %i.gx = add i32 %i.eh, %i.gw
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.gy
  %i.ha = load i64, ptr %i.gv, align 8, !tbaa !254
  store i64 %i.ha, ptr %i.gz, align 8, !tbaa !254
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.gu
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !357
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.gy
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !357
  %.not.i.i.i59.1 = icmp eq i32 %indvars.i.i58.1, 0
  br i1 %.not.i.i.i59.1, label %_ZN4llvm15IntervalMapImpl10BranchNodeImcLj12ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit, label %scalar.ph, !llvm.loop !1164

_ZN4llvm15IntervalMapImpl10BranchNodeImcLj12ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.g
  %i.he = zext i32 %i.eh to i64                   ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.he
  store i64 %2, ptr %i.hf, align 8, !tbaa !254
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ef, i64 96
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.he
  store i64 %3, ptr %i.hh, align 8, !tbaa !357
  %i.hi = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %.pre-phi ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !383 ; 2 uses
  %i.hm = add i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 8, !tbaa !383
  %.not.i = icmp eq i32 %.1, 0
  br i1 %.not.i, label %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit, label %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread

_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit:   ; preds = %_ZN4llvm15IntervalMapImpl10BranchNodeImcLj12ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !381
  br label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit

_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread: ; preds = %_ZN4llvm15IntervalMapImpl10BranchNodeImcLj12ENS_15IntervalMapInfoImEEE6insertEjjNS0_7NodeRefEm.exit
  %i.hp = add i32 %.1, -1
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %i.hq ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !381
  %i.hu = load ptr, ptr %i.hr, align 8, !tbaa !382
  %i.hv = zext i32 %i.ht to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hv ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.hw, align 8
  %i.hx = zext i32 %i.hl to i64
  %i.hy = and i64 %.0.copyload.i.i.i.i.i, -64
  %i.hz = or i64 %i.hy, %i.hx
  store i64 %i.hz, ptr %i.hw, align 8
  %i.ia = load ptr, ptr %i.b, align 8, !tbaa !42  ; 7 uses
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %.pre-phi ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !381 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !383
  %i.ig = add i32 %i.if, -1
  %i.ih = icmp eq i32 %i.id, %i.ig
  br i1 %i.ih, label %.preheader.preheader, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit

.preheader.preheader:                             ; preds = %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread
  %i.ii = add nsw i64 %.pre-phi, -1               ; 2 uses
  %.not16.wide.i77 = icmp eq i64 %i.ii, 0
  br i1 %.not16.wide.i77, label %.preheader._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.ij = add nsw i64 %i.ik, -1                   ; 2 uses
  %.not16.wide.i = icmp eq i64 %i.ij, 0
  br i1 %.not16.wide.i, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !23

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %i.ik = phi i64 [ %i.ij, %.preheader ], [ %i.ii, %.preheader.preheader ] ; 2 uses
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %i.ik ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !382
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.io = load i32, ptr %i.in, align 4, !tbaa !317 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 96
  %i.iq = zext i32 %i.io to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.iq
  store i64 %3, ptr %i.ir, align 8, !tbaa !357
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.it = load i32, ptr %i.is, align 8, !tbaa !383
  %i.iu = add i32 %i.it, -1
  %i.iv = icmp eq i32 %i.io, %i.iu
  br i1 %i.iv, label %.preheader, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit, !llvm.loop !23

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.iw = load ptr, ptr %i.ia, align 8, !tbaa !382
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !317
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 88
  %i.ja = zext i32 %i.iy to i64
end_hunk_0
begin_hunk_1_@_ZNK4llvm19CoalescingBitVectorImE4findEm:bb.a

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorC2ERKS4_.exit.i: ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorC2ERKS4_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread.i.i

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i: ; preds = %_ZSt4copyIPKN4llvm15IntervalMapImpl4Path5EntryEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKN4llvm15IntervalMapImpl4Path5EntryEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !42 ; 3 uses
  %.phi.trans.insert4.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre5.i = load i32, ptr %.phi.trans.insert4.i, align 8, !tbaa !383
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 12
  %.pre3.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !381
  %i.bs = icmp ult i32 %.pre3.i, %.pre5.i
  br i1 %i.bs, label %bb.j, label %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread.i.i

bb.j:                                             ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.bq, align 8, !tbaa !388
  %i.bu = zext i32 %i.bg to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !382
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !381
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.ca ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !357
  store i64 %i.cc, ptr %i.br, align 8, !tbaa !389
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !357
  store i64 %i.ce, ptr %i.bt, align 8, !tbaa !390
  br label %_ZN4llvm19CoalescingBitVectorImE14const_iteratorC2ENS_11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorE.exit

_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread.i.i: ; preds = %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorC2ERKS4_.exit.i
  %i.cf = phi ptr [ %i.br, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i ], [ %i.bp, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorC2ERKS4_.exit.i ]
  %i.cg = phi ptr [ %i.bq, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.i.i ], [ %i.bo, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorC2ERKS4_.exit.i ]
  store i32 -1, ptr %i.cg, align 8, !tbaa !388
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  br label %_ZN4llvm19CoalescingBitVectorImE14const_iteratorC2ENS_11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorE.exit

_ZN4llvm19CoalescingBitVectorImE14const_iteratorC2ENS_11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorE.exit: ; preds = %bb.j, %_ZNK4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iterator5validEv.exit.thread.i.i
  %i.ch = load ptr, ptr %i.as, align 8, !tbaa !42 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.at
  br i1 %i.ci, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit7, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm19CoalescingBitVectorImE14const_iteratorC2ENS_11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorE.exit
  call void @free(ptr noundef %i.ch) #21
  br label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit7

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit7: ; preds = %_ZN4llvm19CoalescingBitVectorImE14const_iteratorC2ENS_11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorE.exit, %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !389 ; 2 uses
  %i.cl = icmp ult i64 %2, %i.ck
  br i1 %i.cl, label %_ZN4llvm19CoalescingBitVectorImE14const_iterator9advanceToEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit7
  %i.cm = sub nuw i64 %2, %i.ck
  %i.cn = trunc i64 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.cn, ptr %i.co, align 8, !tbaa !388
  br label %_ZN4llvm19CoalescingBitVectorImE14const_iterator9advanceToEm.exit

_ZN4llvm19CoalescingBitVectorImE14const_iterator9advanceToEm.exit: ; preds = %bb.l, %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit7, %bb.g
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.c
  br i1 %i.cq, label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit8, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm19CoalescingBitVectorImE14const_iterator9advanceToEm.exit
  call void @free(ptr noundef %i.cp) #21
  br label %_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit8

_ZN4llvm11IntervalMapImcLj11ENS_15IntervalMapInfoImEEE14const_iteratorD2Ev.exit8: ; preds = %_ZN4llvm19CoalescingBitVectorImE14const_iterator9advanceToEm.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplINS_8RegisterEE6insertIPKS1_vEEPS1_S6_T_S7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.l = sub i64 %i.j, %i.k                       ; 8 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = ashr exact i64 %i.l, 2                   ; 2 uses
  %i.n = add nsw i64 %i.m, %i.g                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.n, i64 noundef 4) #21
  %.pre8.pre.i = load i32, ptr %i.e, align 8, !tbaa !43
  %.pre61.pre = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %.pre61 = phi ptr [ %i.a, %bb.b ], [ %.pre61.pre, %bb.c ] ; 2 uses
  %.pre8.i = phi i32 [ %i.f, %bb.b ], [ %.pre8.pre.i, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %2, %3
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPKS1_vEEvT_S6_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i
  %i.t = zext i32 %.pre8.i to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.pre61, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 4 %2, i64 %i.l, i1 false)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !43
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPKS1_vEEvT_S6_.exit

_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPKS1_vEEvT_S6_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i, %bb.d
  %i.v = phi ptr [ %.pre61, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i ], [ %.pre60, %bb.d ]
  %i.w = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i ], [ %.pre.i, %bb.d ]
  %i.x = trunc i64 %i.m to i32
  %i.y = add i32 %i.w, %i.x
  store i32 %i.y, ptr %i.e, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.d
  br label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.a
  %.idx52 = sub i64 0, %i.l
  %i.aa = ashr exact i64 %i.l, 2                  ; 5 uses
  %i.ab = add nsw i64 %i.aa, %i.g                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !44
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.f, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ag, i64 noundef %i.ab, i64 noundef 4) #21
  %.pre = load ptr, ptr %0, align 8, !tbaa !42
  %.pre59 = load i32, ptr %i.e, align 8, !tbaa !43 ; 2 uses
  %.pre63 = zext i32 %.pre59 to i64
  br label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit

_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit: ; preds = %bb.e, %bb.f
  %.pre-phi = phi i64 [ %i.g, %bb.e ], [ %.pre63, %bb.f ] ; 3 uses
  %i.ah = phi i32 [ %i.f, %bb.e ], [ %.pre59, %bb.f ] ; 2 uses
  %i.ai = phi ptr [ %i.a, %bb.e ], [ %.pre, %bb.f ] ; 4 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.d ; 14 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 2            ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 5 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.am = ashr exact i64 %gepdiff, 2              ; 8 uses
  %.not = icmp ult i64 %i.am, %i.aa
  br i1 %.not, label %bb.o, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %.idx52 ; 4 uses
  %i.ao = add nsw i64 %i.aa, %.pre-phi            ; 2 uses
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !44
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i46

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.as, i64 noundef %i.ao, i64 noundef 4) #21
  %.pre.i47 = load i32, ptr %i.e, align 8, !tbaa !43 ; 2 uses
  %.pre12.i = zext i32 %.pre.i47 to i64
  br label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i46

_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i46: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre-phi, %bb.g ], [ %.pre12.i, %bb.h ] ; 2 uses
  %i.at = phi i32 [ %i.ah, %bb.g ], [ %.pre.i47, %bb.h ]
  %.not7.i.i.i.i.i = icmp eq ptr %3, %2
  br i1 %.not7.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendISt13move_iteratorIPS1_EvEEvT_S7_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i46
  %i.au = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.pre-phi.i ; 4 uses
  %i.aw = add i64 %i.j, -4
  %i.ax = sub i64 %i.aw, %i.k                     ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.ba = ptrtoaddr ptr %i.au to i64
  %4 = shl nuw nsw i64 %.pre-phi.i, 2
  %5 = add i64 %i.ba, %i.j
  %i.bb = add i64 %5, %4
  %i.bc = add i64 %i.aj, %i.k
  %i.bd = add i64 %i.bc, %.idx
  %i.be = sub i64 %i.bd, %i.bb
  %diff.check = icmp ugt i64 %i.be, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.bf = shl i64 %n.vec, 2                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.an, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bi ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.an, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep73, align 4, !tbaa !317
  %wide.load74 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !317
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !317
  store <4 x i32> %wide.load74, ptr %i.bk, align 4, !tbaa !317
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !1345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE18uninitialized_copyISt13move_iteratorIPS1_ES5_EEvT_S7_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.preheader.i ], [ %i.bg, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.preheader.i ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.bm = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !317
  store i32 %i.bm, ptr %.09.i.i.i.i.i, align 4, !tbaa !317
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE18uninitialized_copyISt13move_iteratorIPS1_ES5_EEvT_S7_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1346

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE18uninitialized_copyISt13move_iteratorIPS1_ES5_EEvT_S7_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.pre11.i = load i32, ptr %i.e, align 8, !tbaa !43
  br label %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendISt13move_iteratorIPS1_EvEEvT_S7_.exit

_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendISt13move_iteratorIPS1_EvEEvT_S7_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i46, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE18uninitialized_copyISt13move_iteratorIPS1_ES5_EEvT_S7_T0_.exit.loopexit.i
  %i.bp = phi i32 [ %.pre11.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE18uninitialized_copyISt13move_iteratorIPS1_ES5_EEvT_S7_T0_.exit.loopexit.i ], [ %i.at, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i46 ]
  %i.bq = trunc i64 %i.aa to i32
  %i.br = add i32 %i.bp, %i.bq
  store i32 %i.br, ptr %i.e, align 8, !tbaa !43
  %i.bs = add i64 %i.d, %i.l
  %gepdiff53 = sub i64 %.idx, %i.bs               ; 3 uses
  %i.bt = ashr exact i64 %gepdiff53, 2            ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.i, label %bb.j, !prof !343

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendISt13move_iteratorIPS1_EvEEvT_S7_.exit
  %i.bv = sub nsw i64 0, %i.bt
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.bv
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr align 4 %i.ak, i64 %gepdiff53, i1 false)
  br label %_ZSt13move_backwardIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendISt13move_iteratorIPS1_EvEEvT_S7_.exit
  %i.bx = icmp eq i64 %gepdiff53, 4
  br i1 %i.bx, label %bb.k, label %_ZSt13move_backwardIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.bz = load i32, ptr %i.ak, align 4, !tbaa !317
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !317
  br label %_ZSt13move_backwardIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.ca = icmp sgt i64 %i.l, 4
  br i1 %i.ca, label %bb.l, label %bb.m, !prof !343

bb.l:                                             ; preds = %_ZSt13move_backwardIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ak, ptr align 4 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %_ZSt13move_backwardIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit
  %i.cb = icmp eq i64 %i.l, 4
  br i1 %i.cb, label %bb.n, label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.cc = load i32, ptr %2, align 4, !tbaa !317
  store i32 %i.cc, ptr %i.ak, align 4, !tbaa !317
  br label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit

bb.o:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit
  %i.cd = trunc i64 %i.aa to i32
  %i.ce = add i32 %i.ah, %i.cd                    ; 2 uses
  store i32 %i.ce, ptr %i.e, align 8, !tbaa !43
  %.not.i.i48 = icmp eq i64 %i.d, %.idx
  br i1 %.not.i.i48, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cf
  %i.ch = sub nsw i64 0, %i.am
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr align 4 %i.ak, i64 %gepdiff, i1 false)
  %min.iters.check79 = icmp ult i64 %i.am, 16
  br i1 %min.iters.check79, label %.lr.ph.preheader94, label %vector.memcheck76

vector.memcheck76:                                ; preds = %.lr.ph.preheader
  %i.cj = add i64 %i.aj, %i.b
  %i.ck = add i64 %i.c, %i.k
  %i.cl = sub i64 %i.ck, %i.cj
  %diff.check77 = icmp ugt i64 %i.cl, -32
  br i1 %diff.check77, label %.lr.ph.preheader94, label %vector.ph80

vector.ph80:                                      ; preds = %vector.memcheck76
  %n.vec81 = and i64 %i.am, -8                    ; 3 uses
  %i.cm = shl nsw i64 %n.vec81, 2                 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ak, i64 %i.cm
  %i.co = and i64 %i.am, 7
  %i.cp = getelementptr i8, ptr %2, i64 %i.cm     ; 2 uses
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 2 uses
  %i.cq = shl i64 %index83, 2                     ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.ak, i64 %i.cq ; 2 uses
  %next.gep85 = getelementptr i8, ptr %2, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep85, i64 16
  %wide.load86 = load <4 x i32>, ptr %next.gep85, align 4, !tbaa !317
  %wide.load87 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !317
  %i.cs = getelementptr i8, ptr %next.gep84, i64 16
  store <4 x i32> %wide.load86, ptr %next.gep84, align 4, !tbaa !317
  store <4 x i32> %wide.load87, ptr %i.cs, align 4, !tbaa !317
  %index.next88 = add nuw i64 %index83, 8         ; 2 uses
  %i.ct = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.ct, label %middle.block89, label %vector.body82, !llvm.loop !1347

middle.block89:                                   ; preds = %vector.body82
  %cmp.n90 = icmp eq i64 %i.am, %n.vec81
  br i1 %cmp.n90, label %._crit_edge, label %.lr.ph.preheader94

.lr.ph.preheader94:                               ; preds = %vector.memcheck76, %.lr.ph.preheader, %middle.block89
  %.058.ph = phi ptr [ %i.ak, %vector.memcheck76 ], [ %i.ak, %.lr.ph.preheader ], [ %i.cn, %middle.block89 ] ; 2 uses
  %.04057.ph = phi i64 [ %i.am, %vector.memcheck76 ], [ %i.am, %.lr.ph.preheader ], [ %i.co, %middle.block89 ] ; 4 uses
  %.04256.ph = phi ptr [ %2, %vector.memcheck76 ], [ %2, %.lr.ph.preheader ], [ %i.cp, %middle.block89 ] ; 2 uses
  %i.cu = add nsw i64 %.04057.ph, -1
  %xtraiter = and i64 %.04057.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader94, %.lr.ph.prol
  %.058.prol = phi ptr [ %i.cw, %.lr.ph.prol ], [ %.058.ph, %.lr.ph.preheader94 ] ; 2 uses
  %.04057.prol = phi i64 [ %i.cy, %.lr.ph.prol ], [ %.04057.ph, %.lr.ph.preheader94 ]
  %.04256.prol = phi ptr [ %i.cx, %.lr.ph.prol ], [ %.04256.ph, %.lr.ph.preheader94 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader94 ]
  %i.cv = load i32, ptr %.04256.prol, align 4, !tbaa !317
  store i32 %i.cv, ptr %.058.prol, align 4, !tbaa !317
  %i.cw = getelementptr inbounds nuw i8, ptr %.058.prol, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.04256.prol, i64 4 ; 3 uses
  %i.cy = add i64 %.04057.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1348

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader94
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader94 ], [ %i.cx, %.lr.ph.prol ]
  %.058.unr = phi ptr [ %.058.ph, %.lr.ph.preheader94 ], [ %i.cw, %.lr.ph.prol ]
  %.04057.unr = phi i64 [ %.04057.ph, %.lr.ph.preheader94 ], [ %i.cy, %.lr.ph.prol ]
  %.04256.unr = phi ptr [ %.04256.ph, %.lr.ph.preheader94 ], [ %i.cx, %.lr.ph.prol ]
  %i.cz = icmp ult i64 %i.cu, 7
  br i1 %i.cz, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block89, %bb.o
  %.042.lcssa = phi ptr [ %2, %bb.o ], [ %i.cp, %middle.block89 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.dz, %.lr.ph ] ; 3 uses
  %.not.i = icmp eq ptr %.042.lcssa, %3
  br i1 %.not.i, label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.da = ptrtoint ptr %.042.lcssa to i64
  %i.db = sub i64 %i.j, %i.da
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 4 %.042.lcssa, i64 %i.db, i1 false)
  br label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.058 = phi ptr [ %i.dy, %.lr.ph ], [ %.058.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04057 = phi i64 [ %i.ea, %.lr.ph ], [ %.04057.unr, %.lr.ph.prol.loopexit ]
  %.04256 = phi ptr [ %i.dz, %.lr.ph ], [ %.04256.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.dc = load i32, ptr %.04256, align 4, !tbaa !317
  store i32 %i.dc, ptr %.058, align 4, !tbaa !317
  %i.dd = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %.04256, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !317
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !317
  %i.dg = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.04256, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !317
end_hunk_1
