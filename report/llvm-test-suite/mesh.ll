inline.NumInlined: 2154
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4MeshC2Eiiiiddiii:.preheader217
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 2                 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, %i.dk
  br i1 %i.fh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit85
  %i.fi = sub nuw nsw i64 %i.dk, %i.fg
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.fi)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit89 unwind label %bb.x

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit85
  %i.fj = icmp ugt i64 %i.fg, %i.dk
  br i1 %i.fj, label %bb.q, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit89

bb.q:                                             ; preds = %bb.p
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.dk ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.fb, %i.fk
  br i1 %.not.i.i86, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit89, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i87

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i87:      ; preds = %bb.q
  store ptr %i.fk, ptr %i.fa, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit89

_ZNSt6vectorIiSaIiEE6resizeEm.exit89:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i87, %bb.q, %bb.p, %bb.o
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !70 ; 2 uses
  %i.fn = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 3                 ; 3 uses
  %i.fs = icmp ult i64 %i.fr, %i.dk
  br i1 %i.fs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit89
  %i.ft = sub nuw nsw i64 %i.dk, %i.fr
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.ft)
          to label %_ZNSt6vectorIdSaIdEE6resizeEm.exit unwind label %bb.x

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit89
  %i.fu = icmp ugt i64 %i.fr, %i.dk
  br i1 %i.fu, label %bb.t, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.dk ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.fm, %i.fv
  br i1 %.not.i.i90, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.t
  store ptr %i.fv, ptr %i.fl, align 8, !tbaa !70
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %bb.t, %bb.s, %bb.r
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !70 ; 2 uses
  %i.fy = load ptr, ptr %i.aj, align 8, !tbaa !48 ; 5 uses
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = ashr exact i64 %i.gb, 3                 ; 3 uses
  %i.gd = icmp ult i64 %i.gc, %i.dk
  br i1 %i.gd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.ge = sub nuw nsw i64 %i.dk, %i.gc
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef %i.ge)
          to label %._ZNSt6vectorIdSaIdEE6resizeEm.exit95_crit_edge unwind label %bb.x

._ZNSt6vectorIdSaIdEE6resizeEm.exit95_crit_edge:  ; preds = %bb.u
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !48
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit95

bb.v:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.gf = icmp ugt i64 %i.gc, %i.dk
  br i1 %i.gf, label %bb.w, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit95

bb.w:                                             ; preds = %bb.v
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.dk ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.fx, %i.gg
  br i1 %.not.i.i92, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit95, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i93

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i93:      ; preds = %bb.w
  store ptr %i.gg, ptr %i.fw, align 8, !tbaa !70
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit95

_ZNSt6vectorIdSaIdEE6resizeEm.exit95:             ; preds = %._ZNSt6vectorIdSaIdEE6resizeEm.exit95_crit_edge, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i93, %bb.w, %bb.v
  %i.gh = phi ptr [ %.pre, %._ZNSt6vectorIdSaIdEE6resizeEm.exit95_crit_edge ], [ %i.fy, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i93 ], [ %i.fy, %bb.w ], [ %i.fy, %bb.v ] ; 3 uses
  %i.gi = load i32, ptr %i.cn, align 4, !tbaa !103
  %i.gj = add nsw i32 %i.gi, 1
  %i.gk = load ptr, ptr %i.ab, align 8, !tbaa !63 ; 3 uses
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !4
  %i.gl = load i32, ptr %i.cq, align 8, !tbaa !105
  %i.gm = add nsw i32 %i.gl, -1
  %i.gn = load ptr, ptr %i.ac, align 8, !tbaa !63 ; 3 uses
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !4
  %i.go = load i32, ptr %i.co, align 4, !tbaa !104
  %i.gp = add nsw i32 %i.go, 1
  %i.gq = load ptr, ptr %i.ad, align 8, !tbaa !63 ; 3 uses
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !4
  %i.gr = load i32, ptr %i.cs, align 8, !tbaa !106
  %i.gs = add nsw i32 %i.gr, -1
  %i.gt = load ptr, ptr %i.ae, align 8, !tbaa !63 ; 3 uses
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !4
  %i.gu = load double, ptr %i.ck, align 8, !tbaa !101
  %i.gv = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 3 uses
  store double %i.gu, ptr %i.gv, align 8, !tbaa !49
  %i.gw = load double, ptr %i.cl, align 8, !tbaa !102
  store double %i.gw, ptr %i.gh, align 8, !tbaa !49
  %i.gx = load i32, ptr %i.bz, align 8, !tbaa !94 ; 2 uses
  %.not71220 = icmp slt i32 %i.gx, 1
  br i1 %.not71220, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE6resizeEm.exit95
  %.pre240242 = phi i32 [ %i.gx, %_ZNSt6vectorIdSaIdEE6resizeEm.exit95 ], [ %i.ib, %.lr.ph ]
  %.not233 = icmp eq i32 %i.dj, 0
  br i1 %.not233, label %._crit_edge, label %.lr.ph223

.lr.ph223:                                        ; preds = %.preheader
  %i.gy = load ptr, ptr %i.ah, align 8, !tbaa !63
  br label %bb.y

bb.x:                                             ; preds = %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit95, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %_ZNSt6vectorIdSaIdEE6resizeEm.exit95 ] ; 9 uses
  %i.ha = add nsw i64 %indvars.iv, -1             ; 6 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4
  %i.hd = shl nsw i32 %i.hc, 1
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !4
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.ha
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !4
  %i.hh = shl nsw i32 %i.hg, 1
  %i.hi = or disjoint i32 %i.hh, 1
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !4
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.ha
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !4
  %i.hm = shl nsw i32 %i.hl, 1
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !4
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.ha
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !4
  %i.hq = shl nsw i32 %i.hp, 1
  %i.hr = or disjoint i32 %i.hq, 1
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !4
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.ha
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !49
  %i.hv = fmul double %i.hu, 5.000000e-01
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv
  store double %i.hv, ptr %i.hw, align 8, !tbaa !49
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.ha
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !49
  %i.hz = fmul double %i.hy, 5.000000e-01
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv
  store double %i.hz, ptr %i.ia, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ib = load i32, ptr %i.bz, align 8, !tbaa !94 ; 2 uses
  %i.ic = sext i32 %i.ib to i64
  %.not71.not = icmp slt i64 %indvars.iv, %i.ic
  br i1 %.not71.not, label %.lr.ph, label %.preheader, !llvm.loop !107

._crit_edge.loopexit:                             ; preds = %bb.y
  %.pre240.pre = load i32, ptr %i.bz, align 8, !tbaa !94
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre240 = phi i32 [ %.pre240.pre, %._crit_edge.loopexit ], [ %.pre240242, %.preheader ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i32 0, ptr %i.id, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 16, !tbaa !4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.ie, align 4, !tbaa !4
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ig = load i32, ptr %i.cq, align 8, !tbaa !105 ; 2 uses
  store i32 %i.ig, ptr %i.if, align 8, !tbaa !4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 16, !tbaa !4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ij = load i32, ptr %i.cs, align 8, !tbaa !106 ; 2 uses
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.ik, align 8, !tbaa !4
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.ij, ptr %i.il, align 4, !tbaa !4
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  br label %bb.aa

bb.y:                                             ; preds = %.lr.ph223, %bb.y
  %i.iq = phi i64 [ 0, %.lr.ph223 ], [ %11, %bb.y ]
  %.063222 = phi i32 [ 0, %.lr.ph223 ], [ %10, %bb.y ] ; 2 uses
  %i.ir = shl i32 2, %.063222
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.iq
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !4
  %10 = add i32 %.063222, 1                       ; 2 uses
  %11 = zext i32 %10 to i64                       ; 2 uses
  %i.it = icmp ult i64 %11, %i.dk
  br i1 %i.it, label %bb.y, label %._crit_edge.loopexit, !llvm.loop !108

bb.z:                                             ; preds = %._crit_edge231
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i8 1, ptr %i.iu, align 8, !tbaa !109
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 617
  store i8 1, ptr %i.iv, align 1, !tbaa !110
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iw, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.aa:                                            ; preds = %._crit_edge, %._crit_edge231
  %i.ix = phi i32 [ %.pre240, %._crit_edge ], [ %i.ji, %._crit_edge231 ] ; 2 uses
  %i.iy = phi i32 [ %.pre240, %._crit_edge ], [ %i.jj, %._crit_edge231 ] ; 3 uses
  %indvars.iv237 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next238.a, %._crit_edge231 ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv237
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !4  ; 2 uses
  %i.jb = shl i32 2, %i.iy                        ; 3 uses
  %i.jc = add nsw i32 %i.ja, 1
  %i.jd = icmp sgt i32 %i.jb, 0
  br i1 %i.jd, label %.lr.ph230, label %._crit_edge231

.lr.ph230:                                        ; preds = %bb.aa
  %i.je = mul nsw i32 %i.jb, %i.ja
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv237
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !4  ; 2 uses
  %i.jh = add nsw i32 %i.jg, 1                    ; 2 uses
  br label %bb.ab

._crit_edge231:                                   ; preds = %._crit_edge227, %bb.aa
  %i.ji = phi i32 [ %i.ix, %bb.aa ], [ %i.jr, %._crit_edge227 ]
  %i.jj = phi i32 [ %i.iy, %bb.aa ], [ %i.jr, %._crit_edge227 ]
  %indvars.iv.next238.a = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next238.a, 4
  br i1 %exitcond.not, label %bb.z, label %bb.aa, !llvm.loop !111

bb.ab:                                            ; preds = %.lr.ph230, %._crit_edge227
  %i.jk = phi i32 [ %i.ix, %.lr.ph230 ], [ %i.jr, %._crit_edge227 ] ; 2 uses
  %i.jl = phi i32 [ %i.iy, %.lr.ph230 ], [ %i.jr, %._crit_edge227 ]
  %i.jm = phi i32 [ %i.jb, %.lr.ph230 ], [ %.pre-phi, %._crit_edge227 ]
  %storemerge228 = phi i32 [ %i.je, %.lr.ph230 ], [ %i.js, %._crit_edge227 ] ; 3 uses
  %i.jn = mul nsw i32 %i.jg, %i.jm                ; 2 uses
  %i.jo = shl i32 2, %i.jl
  %i.jp = mul nsw i32 %i.jo, %i.jh
  %i.jq = icmp slt i32 %i.jn, %i.jp
  br i1 %i.jq, label %.lr.ph226, label %.._crit_edge227_crit_edge

.._crit_edge227_crit_edge:                        ; preds = %bb.ab
  %.pre243 = shl i32 2, %i.jk
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107, %.._crit_edge227_crit_edge
  %.pre-phi = phi i32 [ %.pre243, %.._crit_edge227_crit_edge ], [ %i.lj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107 ] ; 2 uses
  %i.jr = phi i32 [ %i.jk, %.._crit_edge227_crit_edge ], [ %i.li, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107 ] ; 4 uses
  %i.js = add nsw i32 %storemerge228, 1           ; 2 uses
  %i.jt = mul nsw i32 %.pre-phi, %i.jc
  %i.ju = icmp slt i32 %i.js, %i.jt
  br i1 %i.ju, label %bb.ab, label %._crit_edge231, !llvm.loop !112

.lr.ph226:                                        ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107
  %storemerge72224 = phi i32 [ %i.lh, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107 ], [ %i.jn, %bb.ab ] ; 3 uses
  %i.jv = load ptr, ptr %i.im, align 8, !tbaa !62 ; 4 uses
  %i.jw = load ptr, ptr %i.in, align 8, !tbaa !68
  %.not.i = icmp eq ptr %i.jv, %i.jw
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph226
  store i32 %storemerge72224, ptr %i.jv, align 4, !tbaa !4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store ptr %i.jx, ptr %i.im, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ad:                                            ; preds = %.lr.ph226
  %i.jy = load ptr, ptr %i.w, align 8, !tbaa !63  ; 4 uses
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka                    ; 6 uses
  %i.kc = icmp eq i64 %i.kb, 9223372036854775804
  br i1 %i.kc, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ah, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.kd = ashr exact i64 %i.kb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.kd, i64 1)
  %i.ke = add nsw i64 %.sroa.speculated.i.i.i, %i.kd ; 2 uses
  %i.kf = icmp ult i64 %i.ke, %i.kd
  %i.kg = tail call i64 @llvm.umin.i64(i64 %i.ke, i64 2305843009213693951)
  %i.kh = select i1 %i.kf, i64 2305843009213693951, i64 %i.kg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.kh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ki = shl nuw nsw i64 %i.kh, 2
  %i.kj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ki) #33
          to label %.noexc97 unwind label %.loopexit ; 4 uses

.noexc97:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 %i.kb ; 2 uses
  store i32 %storemerge72224, ptr %i.kk, align 4, !tbaa !4
  %i.kl = icmp sgt i64 %i.kb, 0
  br i1 %i.kl, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ae:                                            ; preds = %.noexc97
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kj, ptr align 4 %i.jy, i64 %i.kb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ae, %.noexc97
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %.not.i17.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %i.kb) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.kj, ptr %i.w, align 8, !tbaa !63
  store ptr %i.km, ptr %i.im, align 8, !tbaa !62
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.kh
  store ptr %i.kn, ptr %i.in, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ac
  %i.ko = load ptr, ptr %i.io, align 8, !tbaa !62 ; 4 uses
  %i.kp = load ptr, ptr %i.ip, align 8, !tbaa !68
  %.not.i98 = icmp eq ptr %i.ko, %i.kp
  br i1 %.not.i98, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %storemerge228, ptr %i.ko, align 4, !tbaa !4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  store ptr %i.kq, ptr %i.io, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.kr = load ptr, ptr %i.x, align 8, !tbaa !63  ; 4 uses
  %i.ks = ptrtoint ptr %i.ko to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt                    ; 6 uses
  %i.kv = icmp eq i64 %i.ku, 9223372036854775804
  br i1 %i.kv, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i99

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i99: ; preds = %bb.ah
  %i.kw = ashr exact i64 %i.ku, 2                 ; 3 uses
  %.sroa.speculated.i.i.i100 = tail call i64 @llvm.umax.i64(i64 %i.kw, i64 1)
  %i.kx = add nsw i64 %.sroa.speculated.i.i.i100, %i.kw ; 2 uses
  %i.ky = icmp ult i64 %i.kx, %i.kw
  %i.kz = tail call i64 @llvm.umin.i64(i64 %i.kx, i64 2305843009213693951)
  %i.la = select i1 %i.ky, i64 2305843009213693951, i64 %i.kz ; 3 uses
  %.not.i.i.i101 = icmp ne i64 %i.la, 0
  tail call void @llvm.assume(i1 %.not.i.i.i101)
  %i.lb = shl nuw nsw i64 %i.la, 2
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #33
          to label %.noexc106 unwind label %.loopexit ; 4 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i99
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 %i.ku ; 2 uses
  store i32 %storemerge228, ptr %i.ld, align 4, !tbaa !4
  %i.le = icmp sgt i64 %i.ku, 0
  br i1 %i.le, label %bb.ai, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i102

bb.ai:                                            ; preds = %.noexc106
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lc, ptr align 4 %i.kr, i64 %i.ku, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i102

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i102: ; preds = %bb.ai, %.noexc106
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %.not.i17.i.i103 = icmp eq ptr %i.kr, null
  br i1 %.not.i17.i.i103, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i104, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i102
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef %i.ku) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i104

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i104: ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i102
  store ptr %i.lc, ptr %i.x, align 8, !tbaa !63
  store ptr %i.lf, ptr %i.io, align 8, !tbaa !62
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.la
  store ptr %i.lg, ptr %i.ip, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107

_ZNSt6vectorIiSaIiEE9push_backERKi.exit107:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i104, %bb.ag
  %i.lh = add nsw i32 %storemerge72224, 1         ; 2 uses
  %i.li = load i32, ptr %i.bz, align 8, !tbaa !94 ; 2 uses
  %i.lj = shl i32 2, %i.li                        ; 2 uses
  %i.lk = mul nsw i32 %i.lj, %i.jh
  %i.ll = icmp slt i32 %i.lh, %i.lk
  br i1 %i.ll, label %.lr.ph226, label %._crit_edge227, !llvm.loop !113

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i99
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak
end_hunk_0
begin_hunk_1_@_ZN4Mesh4initEiid16partition_methodi:bb.a
.._crit_edge250_crit_edge:                        ; preds = %bb.by
  %.pre320 = shl i32 2, %i.nh
  br label %._crit_edge250

._crit_edge250:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit170, %.._crit_edge250_crit_edge
  %.pre-phi321 = phi i32 [ %.pre320, %.._crit_edge250_crit_edge ], [ %i.pg, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit170 ] ; 2 uses
  %i.no = phi i32 [ %i.nh, %.._crit_edge250_crit_edge ], [ %i.pf, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit170 ] ; 4 uses
  %i.np = add nsw i32 %storemerge118251, 1        ; 2 uses
  %i.nq = mul nsw i32 %.pre-phi321, %i.mz
  %i.nr = icmp slt i32 %i.np, %i.nq
  br i1 %i.nr, label %bb.by, label %._crit_edge254, !llvm.loop !129

.lr.ph249:                                        ; preds = %bb.by, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit170
  %storemerge119247 = phi i32 [ %i.pe, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit170 ], [ %i.nk, %bb.by ] ; 3 uses
  %i.ns = load ptr, ptr %i.mp, align 8, !tbaa !62 ; 4 uses
  %i.nt = load ptr, ptr %i.mq, align 8, !tbaa !68
  %.not.i161 = icmp eq ptr %i.ns, %i.nt
  br i1 %.not.i161, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph249
  store i32 %storemerge119247, ptr %i.ns, align 4, !tbaa !4
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  store ptr %i.nu, ptr %i.mp, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ca:                                            ; preds = %.lr.ph249
  %i.nv = load ptr, ptr %i.mo, align 8, !tbaa !63 ; 4 uses
  %i.nw = ptrtoint ptr %i.ns to i64
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = sub i64 %i.nw, %i.nx                    ; 6 uses
  %i.nz = icmp eq i64 %i.ny, 9223372036854775804
  br i1 %i.nz, label %bb.cb, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.cb:                                            ; preds = %bb.ca
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ca
  %i.oa = ashr exact i64 %i.ny, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.oa, i64 1)
  %i.ob = add nsw i64 %.sroa.speculated.i.i.i, %i.oa ; 2 uses
  %i.oc = icmp ult i64 %i.ob, %i.oa
  %i.od = call i64 @llvm.umin.i64(i64 %i.ob, i64 2305843009213693951)
  %i.oe = select i1 %i.oc, i64 2305843009213693951, i64 %i.od ; 3 uses
  %.not.i.i.i162 = icmp ne i64 %i.oe, 0
  call void @llvm.assume(i1 %.not.i.i.i162)
  %i.of = shl nuw nsw i64 %i.oe, 2
  %i.og = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.of) #33 ; 4 uses
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 %i.ny ; 2 uses
  store i32 %storemerge119247, ptr %i.oh, align 4, !tbaa !4
  %i.oi = icmp sgt i64 %i.ny, 0
  br i1 %i.oi, label %bb.cc, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.cc:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.og, ptr align 4 %i.nv, i64 %i.ny, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.cc, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %.not.i17.i.i = icmp eq ptr %i.nv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nv, i64 noundef %i.ny) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.cd, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.og, ptr %i.mo, align 8, !tbaa !63
  store ptr %i.oj, ptr %i.mp, align 8, !tbaa !62
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.oe
  store ptr %i.ok, ptr %i.mq, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.bz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ol = load ptr, ptr %i.ms, align 8, !tbaa !62 ; 4 uses
  %i.om = load ptr, ptr %i.mt, align 8, !tbaa !68
  %.not.i163 = icmp eq ptr %i.ol, %i.om
  br i1 %.not.i163, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %storemerge118251, ptr %i.ol, align 4, !tbaa !4
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  store ptr %i.on, ptr %i.ms, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit170

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.oo = load ptr, ptr %i.mr, align 8, !tbaa !63 ; 4 uses
  %i.op = ptrtoint ptr %i.ol to i64
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = sub i64 %i.op, %i.oq                    ; 6 uses
  %i.os = icmp eq i64 %i.or, 9223372036854775804
  br i1 %i.os, label %bb.cg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i164

bb.cg:                                            ; preds = %bb.cf
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i164: ; preds = %bb.cf
  %i.ot = ashr exact i64 %i.or, 2                 ; 3 uses
  %.sroa.speculated.i.i.i165 = call i64 @llvm.umax.i64(i64 %i.ot, i64 1)
  %i.ou = add nsw i64 %.sroa.speculated.i.i.i165, %i.ot ; 2 uses
  %i.ov = icmp ult i64 %i.ou, %i.ot
  %i.ow = call i64 @llvm.umin.i64(i64 %i.ou, i64 2305843009213693951)
  %i.ox = select i1 %i.ov, i64 2305843009213693951, i64 %i.ow ; 3 uses
  %.not.i.i.i166 = icmp ne i64 %i.ox, 0
  call void @llvm.assume(i1 %.not.i.i.i166)
  %i.oy = shl nuw nsw i64 %i.ox, 2
  %i.oz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oy) #33 ; 4 uses
  %i.pa = getelementptr inbounds i8, ptr %i.oz, i64 %i.or ; 2 uses
  store i32 %storemerge118251, ptr %i.pa, align 4, !tbaa !4
  %i.pb = icmp sgt i64 %i.or, 0
  br i1 %i.pb, label %bb.ch, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i167

bb.ch:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i164
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.oz, ptr align 4 %i.oo, i64 %i.or, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i167

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i167: ; preds = %bb.ch, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i164
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %.not.i17.i.i168 = icmp eq ptr %i.oo, null
  br i1 %.not.i17.i.i168, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i169, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i167
  call void @_ZdlPvm(ptr noundef nonnull %i.oo, i64 noundef %i.or) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i169

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i169: ; preds = %bb.ci, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i167
  store ptr %i.oz, ptr %i.mr, align 8, !tbaa !63
  store ptr %i.pc, ptr %i.ms, align 8, !tbaa !62
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.ox
  store ptr %i.pd, ptr %i.mt, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit170

_ZNSt6vectorIiSaIiEE9push_backERKi.exit170:       ; preds = %bb.ce, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i169
  %i.pe = add nsw i32 %storemerge119247, 1        ; 2 uses
  %i.pf = load i32, ptr %i.mn, align 8, !tbaa !94 ; 2 uses
  %i.pg = shl i32 2, %i.pf                        ; 2 uses
  %i.ph = mul nsw i32 %i.pg, %i.ne
  %i.pi = icmp slt i32 %i.pe, %i.ph
  br i1 %i.pi, label %.lr.ph249, label %._crit_edge250, !llvm.loop !130
}

declare void @_ZN4Mesh17calc_distributionEi(ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh13calc_celltypeEm(ptr noundef nonnull align 8 dereferenceable(2288) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = tail call noundef i64 @_ZN10MallocPlus15get_memory_sizeEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %i.b)
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %.pr)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !88
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 noundef %1, i64 noundef 4, ptr noundef nonnull @.str.49, i32 noundef 0)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !88
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.b
  %.not28 = icmp eq i64 %1, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  br label %bb.f

._crit_edge:                                      ; preds = %bb.n, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.n
  %i.y = phi i64 [ 0, %.lr.ph ], [ %5, %bb.n ]
  %.027 = phi i32 [ 0, %.lr.ph ], [ %4, %bb.n ]   ; 2 uses
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y ; 5 uses
  store i32 1, ptr %2, align 4, !tbaa !4
  %3 = sext i32 %.027 to i64                      ; 3 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.l, i64 %3 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4   ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.o, i64 %3 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %.not23 = icmp slt i32 %i.aa, %i.af
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -1, ptr %2, align 4, !tbaa !4
  %.pre = load i32, ptr %i.z, align 4, !tbaa !4
  %.pre29 = load i32, ptr %i.ab, align 4, !tbaa !4
  %.pre33 = sext i32 %.pre29 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi = phi i64 [ %.pre33, %bb.g ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ag = phi i32 [ %.pre, %bb.g ], [ %i.aa, %bb.f ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.pre-phi
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %.not24 = icmp sgt i32 %i.ag, %i.ai
  br i1 %.not24, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -2, ptr %2, align 4, !tbaa !4
  %.pre30 = load i32, ptr %i.ab, align 4, !tbaa !4
  %.pre34 = sext i32 %.pre30 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi35 = phi i64 [ %.pre34, %bb.i ], [ %.pre-phi, %bb.h ] ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.t, i64 %3 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.pre-phi35
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %.not25 = icmp slt i32 %i.ak, %i.am
  br i1 %.not25, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 -3, ptr %2, align 4, !tbaa !4
  %.pre31 = load i32, ptr %i.aj, align 4, !tbaa !4
  %.pre32 = load i32, ptr %i.ab, align 4, !tbaa !4
  %.pre36 = sext i32 %.pre32 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi37 = phi i64 [ %.pre36, %bb.k ], [ %.pre-phi35, %bb.j ]
  %i.an = phi i32 [ %.pre31, %bb.k ], [ %i.ak, %bb.j ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.pre-phi37
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %.not26 = icmp sgt i32 %i.an, %i.ap
  br i1 %.not26, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 -4, ptr %2, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %4 = add i32 %.027, 1                           ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.aq = icmp ugt i64 %1, %5
  br i1 %i.aq, label %bb.f, label %._crit_edge, !llvm.loop !131
}

declare void @_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method(ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh20calc_neighbors_localEv(ptr noundef nonnull align 8 dereferenceable(2288) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.TBounds, align 8            ; 7 uses
  %2 = alloca %struct.timeval, align 8            ; 6 uses
  %3 = alloca %struct.timeval, align 8            ; 8 uses
  %4 = alloca %struct.timeval, align 8            ; 8 uses
  %5 = alloca %struct.TBounds, align 8            ; 14 uses
  %i.a = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @cpu_timer_start(ptr noundef nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.c = load i8, ptr %i.b, align 8, !tbaa !109, !range !132, !noundef !133
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.cx

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 8 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = call noundef i64 @_ZN10MallocPlus15get_memory_sizeEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 21 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull %i.o)
  store ptr %i.p, ptr %i.i, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  %.not402 = icmp eq ptr %i.r, null
  br i1 %.not402, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull %i.r)
  store ptr %i.s, ptr %i.q, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 2 uses
  %.not403 = icmp eq ptr %i.u, null
  br i1 %.not403, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull %i.u)
  store ptr %i.v, ptr %i.t, align 8, !tbaa !78
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !79   ; 2 uses
  %.not404 = icmp eq ptr %i.x, null
  br i1 %.not404, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull %i.x)
  store ptr %i.y, ptr %i.w, align 8, !tbaa !79
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = load i64, ptr %i.l, align 8, !tbaa !47
  %i.aa = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 noundef %i.z, i64 noundef 4, ptr noundef nonnull @.str.42, i32 noundef 4)
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !76
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !47
  %i.ac = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 noundef %i.ab, i64 noundef 4, ptr noundef nonnull @.str.43, i32 noundef 4)
  store ptr %i.ac, ptr %i.q, align 8, !tbaa !77
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !47
  %i.ae = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 noundef %i.ad, i64 noundef 4, ptr noundef nonnull @.str.44, i32 noundef 4)
  store ptr %i.ae, ptr %i.t, align 8, !tbaa !78
  %i.af = load i64, ptr %i.l, align 8, !tbaa !47
  %i.ag = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 noundef %i.af, i64 noundef 4, ptr noundef nonnull @.str.45, i32 noundef 4)
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !79
  %.pre = load i64, ptr %i.l, align 8, !tbaa !47
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %i.ah = phi i64 [ %.pre, %bb.k ], [ %i.m, %bb.b ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !71 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #31 ; 2 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !71
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.am = phi ptr [ %i.al, %bb.m ], [ %i.aj, %bb.l ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !72 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.o, label %_ZN4Mesh10set_boundsEi.exit

bb.o:                                             ; preds = %bb.n
  %i.aq = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #31 ; 2 uses
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !72
  br label %_ZN4Mesh10set_boundsEi.exit

_ZN4Mesh10set_boundsEi.exit:                      ; preds = %bb.n, %bb.o
  %i.ar = phi ptr [ %i.aq, %bb.o ], [ %i.ao, %bb.n ]
  %i.as = trunc i64 %i.ah to i32                  ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !4
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !4
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4Mesh10set_boundsEi.exit
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !76  ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !77 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !78 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !79 ; 5 uses
  %wide.trip.count = and i64 %i.ah, 2147483647    ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bb = ptrtoaddr ptr %i.ba to i64              ; 3 uses
  %i.bc = ptrtoaddr ptr %i.ay to i64              ; 3 uses
  %i.bd = ptrtoaddr ptr %i.aw to i64              ; 3 uses
  %i.be = ptrtoaddr ptr %i.au to i64              ; 3 uses
  %i.bf = sub i64 %i.be, %i.bd
  %diff.check = icmp ugt i64 %i.bf, -32
  %i.bg = sub i64 %i.be, %i.bc
  %diff.check579 = icmp ugt i64 %i.bg, -32
  %conflict.rdx = or i1 %diff.check, %diff.check579
  %i.bh = sub i64 %i.be, %i.bb
  %diff.check580 = icmp ugt i64 %i.bh, -32
  %conflict.rdx581 = or i1 %conflict.rdx, %diff.check580
  %i.bi = sub i64 %i.bd, %i.bc
  %diff.check582 = icmp ugt i64 %i.bi, -32
  %conflict.rdx583 = or i1 %conflict.rdx581, %diff.check582
  %i.bj = sub i64 %i.bd, %i.bb
  %diff.check584 = icmp ugt i64 %i.bj, -32
  %conflict.rdx585 = or i1 %conflict.rdx583, %diff.check584
  %i.bk = sub i64 %i.bc, %i.bb
  %diff.check586 = icmp ugt i64 %i.bk, -32
  %conflict.rdx587 = or i1 %conflict.rdx585, %diff.check586
  br i1 %conflict.rdx587, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x i32> splat (i32 -98), ptr %i.bl, align 4, !tbaa !4
  store <4 x i32> splat (i32 -98), ptr %i.bm, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <4 x i32> splat (i32 -98), ptr %i.bn, align 4, !tbaa !4
  store <4 x i32> splat (i32 -98), ptr %i.bo, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <4 x i32> splat (i32 -98), ptr %i.bp, align 4, !tbaa !4
  store <4 x i32> splat (i32 -98), ptr %i.bq, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <4 x i32> splat (i32 -98), ptr %i.br, align 4, !tbaa !4
  store <4 x i32> splat (i32 -98), ptr %i.bs, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg635 = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.ah, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.ph
  store i32 -98, ptr %i.bu, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.ph
  store i32 -98, ptr %i.bv, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.ph
  store i32 -98, ptr %i.bw, align 4, !tbaa !4
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.ph
  store i32 -98, ptr %i.bx, align 4, !tbaa !4
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.by = icmp eq i64 %wide.trip.count, %.neg635
  br i1 %i.by, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4Mesh10set_boundsEi.exit
  %i.bz = load i32, ptr @calc_neighbor_type, align 4, !tbaa !4
  switch i32 %i.bz, label %bb.cx [
    i32 0, label %bb.p
    i32 1, label %bb.cb
  ]

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  store i32 -98, ptr %i.ca, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  store i32 -98, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  store i32 -98, ptr %i.cc, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  store i32 -98, ptr %i.cd, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next
  store i32 -98, ptr %i.ce, align 4, !tbaa !4
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next
  store i32 -98, ptr %i.cf, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next
  store i32 -98, ptr %i.cg, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next
  store i32 -98, ptr %i.ch, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !137

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @cpu_timer_start(ptr noundef nonnull %3)
  %i.ci = load i64, ptr %i.l, align 8, !tbaa !47  ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !81
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !106
  %i.cm = add nsw i32 %i.cl, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 6 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !94 ; 5 uses
  %i.cp = shl i32 2, %i.co                        ; 2 uses
  %i.cq = mul nsw i32 %i.cp, %i.cm                ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !105
  %i.ct = add nsw i32 %i.cs, 1
  %i.cu = mul nsw i32 %i.ct, %i.cp                ; 6 uses
  %.not533 = icmp eq i64 %i.ci, 0
  br i1 %.not533, label %.thread577, label %.lr.ph519

.lr.ph519:                                        ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !66 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !65 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !64 ; 2 uses
  %min.iters.check589 = icmp ult i64 %i.ci, 8
  br i1 %min.iters.check589, label %scalar.ph588.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph519
  %i.db = add i64 %i.ci, -1                       ; 2 uses
  %i.dc = and i64 %i.db, 4294967295
  %i.dd = icmp eq i64 %i.dc, 4294967295
  %i.de = icmp ugt i64 %i.db, 4294967295
  %i.df = or i1 %i.dd, %i.de
  br i1 %i.df, label %scalar.ph588.preheader, label %vector.ph590

vector.ph590:                                     ; preds = %vector.scevcheck
  %n.vec592 = and i64 %i.ci, 8589934584           ; 4 uses
  %6 = trunc i64 %n.vec592 to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert593 = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %broadcast.splat594 = shufflevector <4 x i32> %broadcast.splatinsert593, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert595 = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat596 = shufflevector <4 x i32> %broadcast.splatinsert595, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body597

vector.body597:                                   ; preds = %vector.body597, %vector.ph590
  %index598 = phi i64 [ 0, %vector.ph590 ], [ %index.next611, %vector.body597 ] ; 4 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat594, %vector.ph590 ], [ %i.dq, %vector.body597 ]
  %vec.phi599 = phi <4 x i32> [ %broadcast.splat594, %vector.ph590 ], [ %i.dr, %vector.body597 ]
  %vec.phi600 = phi <4 x i32> [ %broadcast.splat596, %vector.ph590 ], [ %i.ee, %vector.body597 ]
  %vec.phi601 = phi <4 x i32> [ %broadcast.splat596, %vector.ph590 ], [ %i.ef, %vector.body597 ]
  %vec.phi602 = phi <4 x i32> [ zeroinitializer, %vector.ph590 ], [ %i.dy, %vector.body597 ]
  %vec.phi603 = phi <4 x i32> [ zeroinitializer, %vector.ph590 ], [ %i.dz, %vector.body597 ]
  %vec.phi604 = phi <4 x i32> [ zeroinitializer, %vector.ph590 ], [ %i.em, %vector.body597 ]
  %vec.phi605 = phi <4 x i32> [ zeroinitializer, %vector.ph590 ], [ %i.en, %vector.body597 ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index598 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <4 x i32>, ptr %i.dg, align 4, !tbaa !4
  %wide.load606 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index598 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load607 = load <4 x i32>, ptr %i.di, align 4, !tbaa !4 ; 2 uses
  %wide.load608 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !4 ; 2 uses
  %i.dk = sub nsw <4 x i32> %broadcast.splat, %wide.load
  %i.dl = sub nsw <4 x i32> %broadcast.splat, %wide.load606
  %i.dm = shl <4 x i32> splat (i32 2), %i.dk      ; 4 uses
  %i.dn = shl <4 x i32> splat (i32 2), %i.dl      ; 4 uses
  %i.do = mul nsw <4 x i32> %wide.load607, %i.dm
  %i.dp = mul nsw <4 x i32> %wide.load608, %i.dn
  %i.dq = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.do, <4 x i32> %vec.phi) ; 2 uses
  %i.dr = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.dp, <4 x i32> %vec.phi599) ; 2 uses
  %i.ds = add nsw <4 x i32> %wide.load607, splat (i32 1)
  %i.dt = add nsw <4 x i32> %wide.load608, splat (i32 1)
  %i.du = mul nsw <4 x i32> %i.ds, %i.dm
  %i.dv = mul nsw <4 x i32> %i.dt, %i.dn
  %i.dw = add nsw <4 x i32> %i.du, splat (i32 -1)
  %i.dx = add nsw <4 x i32> %i.dv, splat (i32 -1)
  %i.dy = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dw, <4 x i32> %vec.phi602) ; 2 uses
  %i.dz = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dx, <4 x i32> %vec.phi603) ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index598 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load609 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !4 ; 2 uses
  %wide.load610 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !4 ; 2 uses
  %i.ec = mul nsw <4 x i32> %wide.load609, %i.dm
  %i.ed = mul nsw <4 x i32> %wide.load610, %i.dn
  %i.ee = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ec, <4 x i32> %vec.phi600) ; 2 uses
  %i.ef = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ed, <4 x i32> %vec.phi601) ; 2 uses
  %i.eg = add nsw <4 x i32> %wide.load609, splat (i32 1)
  %i.eh = add nsw <4 x i32> %wide.load610, splat (i32 1)
  %i.ei = mul nsw <4 x i32> %i.eg, %i.dm
  %i.ej = mul nsw <4 x i32> %i.eh, %i.dn
  %i.ek = add nsw <4 x i32> %i.ei, splat (i32 -1)
  %i.el = add nsw <4 x i32> %i.ej, splat (i32 -1)
  %i.em = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ek, <4 x i32> %vec.phi604) ; 2 uses
  %i.en = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.el, <4 x i32> %vec.phi605) ; 2 uses
  %index.next611 = add nuw i64 %index598, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next611, %n.vec592
  br i1 %i.eo, label %middle.block612, label %vector.body597, !llvm.loop !138

middle.block612:                                  ; preds = %vector.body597
  %rdx.minmax = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.dq, <4 x i32> %i.dr)
  %i.ep = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax613 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ee, <4 x i32> %i.ef)
  %i.eq = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax613) ; 2 uses
  %rdx.minmax614 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dy, <4 x i32> %i.dz)
  %i.er = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax614) ; 2 uses
  %rdx.minmax615 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.em, <4 x i32> %i.en)
  %i.es = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax615) ; 2 uses
  %cmp.n616 = icmp eq i64 %i.ci, %n.vec592
  br i1 %cmp.n616, label %._crit_edge520, label %scalar.ph588.preheader

scalar.ph588.preheader:                           ; preds = %vector.scevcheck, %.lr.ph519, %middle.block612
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph519 ], [ %n.vec592, %middle.block612 ]
  %.0332517.ph = phi i32 [ %i.cq, %vector.scevcheck ], [ %i.cq, %.lr.ph519 ], [ %i.ep, %middle.block612 ]
  %.0333516.ph = phi i32 [ %i.cu, %vector.scevcheck ], [ %i.cu, %.lr.ph519 ], [ %i.eq, %middle.block612 ]
  %.0335515.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph519 ], [ %i.er, %middle.block612 ]
  %.0338514.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph519 ], [ %i.es, %middle.block612 ]
  %.0340513.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph519 ], [ %6, %middle.block612 ]
  br label %scalar.ph588

._crit_edge520:                                   ; preds = %scalar.ph588, %middle.block612
  %spec.select.lcssa = phi i32 [ %i.ep, %middle.block612 ], [ %spec.select, %scalar.ph588 ]
  %.1336.lcssa = phi i32 [ %i.er, %middle.block612 ], [ %.1336, %scalar.ph588 ]
  %.1334.lcssa = phi i32 [ %i.eq, %middle.block612 ], [ %.1334, %scalar.ph588 ]
  %.1339.lcssa = phi i32 [ %i.es, %middle.block612 ], [ %.1339, %scalar.ph588 ]
  %spec.select622 = call i32 @llvm.smin.i32(i32 %spec.select.lcssa, i32 %i.cq)
  %i.et = call i32 @llvm.smin.i32(i32 %.1334.lcssa, i32 %i.cu)
  %i.eu = call i32 @llvm.smax.i32(i32 %.1336.lcssa, i32 0)
  %spec.select623 = call i32 @llvm.smax.i32(i32 %.1339.lcssa, i32 0)
  br label %.thread577

scalar.ph588:                                     ; preds = %scalar.ph588.preheader, %scalar.ph588
  %i.ev = phi i64 [ %8, %scalar.ph588 ], [ %.ph, %scalar.ph588.preheader ] ; 3 uses
  %.0332517 = phi i32 [ %spec.select, %scalar.ph588 ], [ %.0332517.ph, %scalar.ph588.preheader ]
  %.0333516.a = phi i32 [ %.1334, %scalar.ph588 ], [ %.0333516.ph, %scalar.ph588.preheader ]
  %.0335515.a = phi i32 [ %.1336, %scalar.ph588 ], [ %.0335515.ph, %scalar.ph588.preheader ]
  %.0338514.a = phi i32 [ %.1339, %scalar.ph588 ], [ %.0338514.ph, %scalar.ph588.preheader ]
  %.0340513 = phi i32 [ %7, %scalar.ph588 ], [ %.0340513.ph, %scalar.ph588.preheader ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.ev
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !4  ; 2 uses
  %i.fa = sub nsw i32 %i.co, %i.ex
  %i.fb = shl i32 2, %i.fa                        ; 4 uses
  %i.fc = mul nsw i32 %i.ez, %i.fb
  %spec.select = call i32 @llvm.smin.i32(i32 %i.fc, i32 %.0332517) ; 2 uses
  %i.fd = add nsw i32 %i.ez, 1
  %i.fe = mul nsw i32 %i.fd, %i.fb
  %i.ff = add nsw i32 %i.fe, -1
  %.1336 = call i32 @llvm.smax.i32(i32 %i.ff, i32 %.0335515.a) ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ev
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !4  ; 2 uses
  %i.fi = mul nsw i32 %i.fh, %i.fb
  %.1334 = call i32 @llvm.smin.i32(i32 %i.fi, i32 %.0333516.a) ; 2 uses
  %i.fj = add nsw i32 %i.fh, 1
  %i.fk = mul nsw i32 %i.fj, %i.fb
  %i.fl = add nsw i32 %i.fk, -1
  %.1339 = call i32 @llvm.smax.i32(i32 %i.fl, i32 %.0338514.a) ; 2 uses
  %7 = add i32 %.0340513, 1                       ; 2 uses
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.fm = icmp ugt i64 %i.ci, %8
  br i1 %i.fm, label %scalar.ph588, label %._crit_edge520, !llvm.loop !139

.thread577:                                       ; preds = %._crit_edge520, %bb.p
  %i.fn = phi i32 [ 0, %bb.p ], [ %i.eu, %._crit_edge520 ]
  %i.fo = phi i32 [ %i.cq, %bb.p ], [ %spec.select622, %._crit_edge520 ]
  %i.fp = phi i32 [ %i.cu, %bb.p ], [ %i.et, %._crit_edge520 ]
  %i.fq = phi i32 [ 0, %bb.p ], [ %spec.select623, %._crit_edge520 ]
  %.neg = shl i32 -4, %i.co                       ; 2 uses
  %i.fr = add i32 %i.fo, %.neg
  %.sroa.speculated483 = call i32 @llvm.smax.i32(i32 %i.fr, i32 0) ; 8 uses
  %i.fs = shl i32 4, %i.co                        ; 2 uses
  %i.ft = add nuw nsw i32 %i.fn, %i.fs
  %.sroa.speculated478 = call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.ft)
  %i.fu = add i32 %i.fp, %.neg
  %.sroa.speculated473 = call i32 @llvm.smax.i32(i32 %i.fu, i32 0) ; 8 uses
  %i.fv = add nuw nsw i32 %i.fq, %i.fs
  %.sroa.speculated468 = call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.fv)
  %i.fw = trunc nuw i64 %i.ci to i32
  %i.fx = sub nsw i32 %.sroa.speculated468, %.sroa.speculated473 ; 16 uses
  %i.fy = sub nsw i32 %.sroa.speculated478, %.sroa.speculated483
  %i.fz = call ptr @compact_hash_init(i32 noundef %i.fw, i32 noundef %i.fx, i32 noundef %i.fy, i32 noundef 0)
  store ptr %i.fz, ptr @_ZZN4Mesh20calc_neighbors_localEvE4hash, align 8, !tbaa !140
  %i.ga = load i64, ptr %i.l, align 8, !tbaa !47
  %.not534 = icmp eq i64 %i.ga, 0
  br i1 %.not534, label %._crit_edge527, label %.lr.ph526

.lr.ph526:                                        ; preds = %.thread577
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1336
  br label %bb.q

._crit_edge527:                                   ; preds = %bb.q, %.thread577
  %.sroa.0214.0.copyload = load i64, ptr %3, align 8, !tbaa !60
  %.sroa.2215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.2215.0.copyload = load i64, ptr %.sroa.2215.0..sroa_idx, align 8, !tbaa !60
  %i.gf = call double @cpu_timer_stop(i64 %.sroa.0214.0.copyload, i64 %.sroa.2215.0.copyload)
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !49
  %i.gi = fadd double %i.gf, %i.gh
  store double %i.gi, ptr %i.gg, align 8, !tbaa !49
  call void @cpu_timer_start(ptr noundef nonnull %3)
  %i.gj = load i32, ptr %i.ck, align 8, !tbaa !106
  %i.gk = add nsw i32 %i.gj, 1
  %i.gl = load i32, ptr %i.cn, align 8, !tbaa !94
  %i.gm = shl i32 2, %i.gl                        ; 2 uses
  %i.gn = mul nsw i32 %i.gm, %i.gk
  store i32 %i.gn, ptr @_ZZN4Mesh20calc_neighbors_localEvE8jmaxcalc, align 4, !tbaa !4
  %i.go = load i32, ptr %i.cr, align 8, !tbaa !105
  %i.gp = add nsw i32 %i.go, 1
  %i.gq = mul nsw i32 %i.gp, %i.gm
  store i32 %i.gq, ptr @_ZZN4Mesh20calc_neighbors_localEvE8imaxcalc, align 4, !tbaa !4
  %i.gr = load i64, ptr %i.l, align 8, !tbaa !47
  %.not535 = icmp eq i64 %i.gr, 0
  br i1 %.not535, label %._crit_edge531, label %.lr.ph530

.lr.ph530:                                        ; preds = %._crit_edge527
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 7 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 8 uses
  %i.gw = xor i32 %.sroa.speculated473, -1
  %i.gx = xor i32 %.sroa.speculated483, -1
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1392
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph526, %bb.q
  %i.hb = phi i64 [ 0, %.lr.ph526 ], [ %i.ia, %bb.q ] ; 3 uses
  %.0345524 = phi i32 [ 0, %.lr.ph526 ], [ %i.hz, %bb.q ] ; 2 uses
  %i.hc = load i32, ptr %i.gb, align 4, !tbaa !84
  %i.hd = add i32 %i.hc, %.0345524
  %i.he = load ptr, ptr %i.gc, align 8, !tbaa !66
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hb
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !4
  %i.hh = load i32, ptr %i.cn, align 8, !tbaa !94
  %i.hi = sub nsw i32 %i.hh, %i.hg
  %i.hj = shl i32 2, %i.hi                        ; 2 uses
  %i.hk = load ptr, ptr %i.gd, align 8, !tbaa !64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hb
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !4
  %i.hn = mul nsw i32 %i.hm, %i.hj
  %i.ho = sub i32 %i.hn, %.sroa.speculated473
  %i.hp = load ptr, ptr %i.ge, align 8, !tbaa !65
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hb
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !4
  %i.hs = mul nsw i32 %i.hr, %i.hj
  %i.ht = sub nsw i32 %i.hs, %.sroa.speculated483
  %i.hu = load ptr, ptr @write_hash, align 8, !tbaa !141
  %i.hv = mul nsw i32 %i.ht, %i.fx
  %i.hw = add nsw i32 %i.ho, %i.hv
  %i.hx = sext i32 %i.hw to i64
  %i.hy = load ptr, ptr @_ZZN4Mesh20calc_neighbors_localEvE4hash, align 8, !tbaa !140
  call void %i.hu(i32 noundef %i.hd, i64 noundef %i.hx, ptr noundef %i.hy)
  %i.hz = add i32 %.0345524, 1                    ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = load i64, ptr %i.l, align 8, !tbaa !47
  %i.ic = icmp ugt i64 %i.ib, %i.ia
  br i1 %i.ic, label %bb.q, label %._crit_edge527, !llvm.loop !142

._crit_edge531:                                   ; preds = %bb.ca, %._crit_edge527
  %.sroa.051.0.copyload = load i64, ptr %3, align 8, !tbaa !60
  %.sroa.252.0.copyload = load i64, ptr %.sroa.2215.0..sroa_idx, align 8, !tbaa !60
  %i.id = call double @cpu_timer_stop(i64 %.sroa.051.0.copyload, i64 %.sroa.252.0.copyload)
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !49
  %i.ig = fadd double %i.id, %i.if
  store double %i.ig, ptr %i.ie, align 8, !tbaa !49
  call void @cpu_timer_start(ptr noundef nonnull %3)
  call void @write_hash_collision_report()
  call void @read_hash_collision_report()
  %i.ih = load ptr, ptr @_ZZN4Mesh20calc_neighbors_localEvE4hash, align 8, !tbaa !140
  call void @compact_hash_delete(ptr noundef %i.ih)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.cx

bb.r:                                             ; preds = %.lr.ph530, %bb.ca
  %i.ii = phi i64 [ 0, %.lr.ph530 ], [ %i.sr, %bb.ca ] ; 7 uses
  %.0346528 = phi i32 [ 0, %.lr.ph530 ], [ %i.sq, %bb.ca ] ; 9 uses
  %i.ij = load ptr, ptr %i.gs, align 8, !tbaa !64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.ii
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !4  ; 5 uses
  %i.im = load ptr, ptr %i.gt, align 8, !tbaa !65
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.ii
  %i.io = load i32, ptr %i.in, align 4, !tbaa !4  ; 5 uses
  %i.ip = load ptr, ptr %i.gu, align 8, !tbaa !66
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.ii
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4  ; 10 uses
  %i.is = load i32, ptr %i.cn, align 8, !tbaa !94 ; 3 uses
  %i.it = sub nsw i32 %i.is, %i.ir
  %i.iu = shl i32 2, %i.it                        ; 10 uses
  %i.iv = mul nsw i32 %i.iu, %i.il                ; 4 uses
  %i.iw = sub nsw i32 %i.iv, %.sroa.speculated473 ; 12 uses
  %i.ix = add nsw i32 %i.il, -1
  %i.iy = mul nsw i32 %i.iu, %i.ix
  %.sroa.speculated463 = call i32 @llvm.smax.i32(i32 %i.iy, i32 0)
  %i.iz = sub nsw i32 %.sroa.speculated463, %.sroa.speculated473 ; 4 uses
  %i.ja = add nsw i32 %i.il, 1
  %i.jb = mul nsw i32 %i.iu, %i.ja
  %i.jc = load i32, ptr @_ZZN4Mesh20calc_neighbors_localEvE8imaxcalc, align 4, !tbaa !4
  %i.jd = add nsw i32 %i.jc, -1
  %.sroa.speculated458 = call i32 @llvm.smin.i32(i32 %i.jd, i32 %i.jb) ; 2 uses
  %i.je = sub nsw i32 %.sroa.speculated458, %.sroa.speculated473 ; 5 uses
  %i.jf = mul nsw i32 %i.iu, %i.io                ; 4 uses
  %i.jg = sub nsw i32 %i.jf, %.sroa.speculated483 ; 12 uses
  %i.jh = add nsw i32 %i.io, -1
  %i.ji = mul nsw i32 %i.iu, %i.jh
  %.sroa.speculated453 = call i32 @llvm.smax.i32(i32 %i.ji, i32 0)
  %i.jj = sub nsw i32 %.sroa.speculated453, %.sroa.speculated483 ; 4 uses
  %i.jk = add nsw i32 %i.io, 1
  %i.jl = mul nsw i32 %i.iu, %i.jk
  %i.jm = load i32, ptr @_ZZN4Mesh20calc_neighbors_localEvE8jmaxcalc, align 4, !tbaa !4
  %i.jn = add nsw i32 %i.jm, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.jn, i32 %i.jl) ; 2 uses
  %i.jo = sub nsw i32 %.sroa.speculated, %.sroa.speculated483 ; 5 uses
  %i.jp = shl i32 2, %i.is                        ; 6 uses
  %i.jq = icmp sge i32 %i.iv, %i.jp               ; 2 uses
  br i1 %i.jq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jr = load i32, ptr %i.gv, align 4, !tbaa !84
  %i.js = add i32 %i.jr, %.0346528
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0347 = phi i32 [ %i.js, %bb.s ], [ -1, %bb.r ]
  %i.jt = icmp sge i32 %i.jf, %i.jp               ; 2 uses
  br i1 %i.jt, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ju = load i32, ptr %i.gv, align 4, !tbaa !84
  %i.jv = add i32 %i.ju, %.0346528
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0358 = phi i32 [ %i.jv, %bb.u ], [ -1, %bb.t ]
  %i.jw = load i32, ptr %i.cr, align 8, !tbaa !105
  %i.jx = mul nsw i32 %i.jw, %i.jp                ; 3 uses
  %i.jy = add i32 %i.jx, %i.gw
  %i.jz = icmp sgt i32 %i.iw, %i.jy
  br i1 %i.jz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ka = load i32, ptr %i.gv, align 4, !tbaa !84
  %i.kb = add i32 %i.ka, %.0346528
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0349 = phi i32 [ %i.kb, %bb.w ], [ -1, %bb.v ]
  %i.kc = load i32, ptr %i.ck, align 8, !tbaa !106
  %i.kd = mul nsw i32 %i.kc, %i.jp                ; 3 uses
  %i.ke = add i32 %i.kd, %i.gx
  %i.kf = icmp sgt i32 %i.jg, %i.ke
  br i1 %i.kf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.kg = load i32, ptr %i.gv, align 4, !tbaa !84
  %i.kh = add i32 %i.kg, %.0346528
end_hunk_1
begin_hunk_2_@_ZN4Mesh20calc_neighbors_localEv:bb.a
  %.sroa.01.0.copyload = load i64, ptr %4, align 8, !tbaa !60
  %.sroa.22.0.copyload = load i64, ptr %.sroa.249.0..sroa_idx, align 8, !tbaa !60
  %i.zx = invoke double @cpu_timer_stop(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload)
          to label %bb.ct unwind label %.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.zz = load double, ptr %i.zy, align 8, !tbaa !49
  %i.aaa = fadd double %i.zx, %i.zz
  store double %i.aaa, ptr %i.zy, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not.i.i.i = icmp eq ptr %.sroa.0439.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aab = ptrtoint ptr %.sroa.0439.0 to i64
  %i.aac = sub i64 %.sroa.17.0, %i.aab
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0439.0, i64 noundef %i.aac) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ct, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.cx

.loopexit:                                        ; preds = %bb.cd
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.loopexit.split-lp:                               ; preds = %bb.cc, %bb.cs, %._crit_edge512, %bb.ce, %.loopexit508, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not.i.i.i437 = icmp eq ptr %.sroa.0439.0, null
  br i1 %.not.i.i.i437, label %_ZNSt6vectorIiSaIiEED2Ev.exit438, label %bb.cw

bb.cw:                                            ; preds = %.thread, %bb.cv
  %.pn492 = phi { ptr, i32 } [ %i.wd, %.thread ], [ %lpad.phi, %bb.cv ]
  %i.aad = ptrtoint ptr %.sroa.0439.0 to i64
  %i.aae = sub i64 %.sroa.17.0, %i.aad
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0439.0, i64 noundef %i.aae) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit438

_ZNSt6vectorIiSaIiEED2Ev.exit438:                 ; preds = %bb.cw, %bb.cv
  %.pn.pn = phi { ptr, i32 } [ %.pn492, %bb.cw ], [ %lpad.phi, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn

bb.cx:                                            ; preds = %._crit_edge531, %_ZNSt6vectorIiSaIiEED2Ev.exit, %._crit_edge, %bb.a
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !tbaa !60
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !60
  %i.aaf = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.aah = load double, ptr %i.aag, align 8, !tbaa !49
  %i.aai = fadd double %i.aaf, %i.aah
  store double %i.aai, ptr %i.aag, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh12kdtree_setupEv(ptr noundef nonnull align 8 dereferenceable(2288) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %struct.TBounds, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  tail call void @KDTree_Initialize(ptr noundef nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !47
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.b ] ; 4 uses
  %.09 = phi i32 [ 0, %.lr.ph ], [ %i.z, %bb.b ]
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load double, ptr %i.m, align 8, !tbaa !49 ; 2 uses
  store double %i.n, ptr %1, align 8, !tbaa !119
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.k
  %i.q = load double, ptr %i.p, align 8, !tbaa !49
  %i.r = fadd double %i.n, %i.q
  store double %i.r, ptr %i.f, align 8, !tbaa !120
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.k
  %i.u = load double, ptr %i.t, align 8, !tbaa !49 ; 2 uses
  store double %i.u, ptr %i.h, align 8, !tbaa !121
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.k
  %i.x = load double, ptr %i.w, align 8, !tbaa !49
  %i.y = fadd double %i.u, %i.x
  store double %i.y, ptr %i.j, align 8, !tbaa !122
  call void @KDTree_AddElement(ptr noundef nonnull %i.a, ptr noundef nonnull %1)
  %i.z = add i32 %.09, 1                          ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !47
  %i.ac = icmp ugt i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !123
}

declare void @KDTree_QueryCircleIntersect_Double(ptr noundef, ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @KDTree_Destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i64 -2147483648, 2147483648) i64 @_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_(ptr nofree noundef nonnull align 8 dereferenceable(2288) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.timeval, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !63     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !125

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f ; 2 uses
  %i.j = icmp samesign ugt i64 %i.f, 4
  br i1 %i.j, label %bb.c, label %bb.d, !prof !126

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %i.k = icmp eq i64 %i.f, 4
  br i1 %i.k, label %bb.e, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.c, align 4, !tbaa !4
  store i32 %i.l, ptr %i.h, align 4, !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.e, %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %.thread528, label %.lr.ph.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread:         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !47   ; 2 uses
  %.not.i532 = icmp eq i64 %i.q, 0
  br i1 %.not.i532, label %.thread533, label %.lr.ph.i

.thread533:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread
  store i32 0, ptr %2, align 4, !tbaa !4
  store i32 0, ptr %3, align 4, !tbaa !4
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.r = phi i64 [ %i.q, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread ], [ %i.n, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
  %i.s = phi ptr [ %i.p, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread ], [ %i.m, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
  %i.t = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread ], [ %i.h, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %i.u = phi ptr [ %i.o, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread ], [ %i.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.aa = load ptr, ptr %i.z, align 8
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %.lr.ph.i
  %i.ab = phi i64 [ 0, %.lr.ph.i ], [ %6, %.thread.i ] ; 5 uses
  %.038.i = phi i32 [ 0, %.lr.ph.i ], [ %5, %.thread.i ]
  %.02237.i = phi i32 [ 0, %.lr.ph.i ], [ %.130.i, %.thread.i ] ; 6 uses
  %.02336.i = phi i32 [ 0, %.lr.ph.i ], [ %.124.i, %.thread.i ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4  ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ab
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = icmp eq i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ab
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4  ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 3 uses
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = trunc i32 %i.aj to i1
  %i.an = and i32 %i.al, 1
  %i.ao = sub nsw i32 0, %i.an
  %i.ap = select i1 %i.am, i32 -1, i32 %i.ao
  %spec.select.i = add nsw i32 %i.ap, %.02237.i
  br label %.thread.i

bb.i:                                             ; preds = %bb.g
  %i.aq = and i32 %i.aj, -2147483647
  %i.ar = icmp ne i32 %i.aq, 1
  %i.as = and i32 %i.al, -2147483647
  %i.at = icmp ne i32 %i.as, 1
  %narrow.i.not.i = or i1 %i.ar, %i.at
  br i1 %narrow.i.not.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.au = or i32 %i.al, %i.aj
  %i.av = and i32 %i.au, 1
  %spec.select28.i = sub nsw i32 %.02237.i, %i.av
  br label %.thread.i

bb.k:                                             ; preds = %bb.f
  %.not31.i = icmp eq i32 %i.ad, 0
  br i1 %.not31.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ab
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = add nsw i32 %.02336.i, 3
  br label %.thread.i

bb.n:                                             ; preds = %bb.l
  %i.ba = add nsw i32 %.02336.i, 1
  br label %.thread.i

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h
  %.130.i = phi i32 [ %.02237.i, %bb.m ], [ %.02237.i, %bb.n ], [ %.02237.i, %bb.k ], [ %spec.select28.i, %bb.j ], [ %.02237.i, %bb.i ], [ %spec.select.i, %bb.h ] ; 2 uses
  %.124.i = phi i32 [ %i.az, %bb.m ], [ %i.ba, %bb.n ], [ %.02336.i, %bb.k ], [ %.02336.i, %bb.j ], [ %.02336.i, %bb.i ], [ %.02336.i, %bb.h ] ; 2 uses
  %5 = add i32 %.038.i, 1                         ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.bb = icmp ugt i64 %i.r, %6
  br i1 %i.bb, label %bb.f, label %.thread528, !llvm.loop !145

.thread528:                                       ; preds = %.thread.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %storemerge639 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %.124.i, %.thread.i ]
  %storemerge = phi i32 [ 0, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %.130.i, %.thread.i ]
  %i.bc = phi ptr [ %i.m, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.s, %.thread.i ]
  %i.bd = phi ptr [ %i.h, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.t, %.thread.i ] ; 2 uses
  %i.be = phi ptr [ %i.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.u, %.thread.i ]
  store i32 %storemerge639, ptr %2, align 4, !tbaa !4
  store i32 %storemerge, ptr %3, align 4, !tbaa !4
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.thread533, %.thread528
  %i.bi = phi ptr [ %i.p, %.thread533 ], [ %i.bc, %.thread528 ] ; 3 uses
  %i.bj = load i32, ptr %2, align 4, !tbaa !4
  call void @cpu_timer_start(ptr noundef nonnull %4)
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.o, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !94
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.p, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !98
  %.not = icmp eq i32 %i.bp, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 5 uses
  %spec.select = select i1 %.not, ptr %i.bi, ptr %i.bq
  %.0311 = load i64, ptr %spec.select, align 8, !tbaa !60 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !4
  %.not640 = icmp eq i64 %.0311, 0
  br i1 %.not640, label %.lr.ph654, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = icmp ugt i64 %.0311, 2305843009213693951
  br i1 %i.bu, label %.noexc447, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

.noexc447:                                        ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.141) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.q
  %i.bv = shl nuw nsw i64 %.0311, 2
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #33 ; 4 uses
  store i32 0, ptr %i.bw, align 4, !tbaa !4
  %i.bx = add nsw i64 %.0311, -1                  ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.noexc405, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.bz = getelementptr i8, ptr %i.bw, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.bx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bz, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !4
  br label %.noexc405

.noexc405:                                        ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.0311
  br label %.lr.ph654

.lr.ph654:                                        ; preds = %.noexc405, %bb.p
  %.sroa.67.4 = phi ptr [ %i.ca, %.noexc405 ], [ null, %bb.p ] ; 2 uses
  %.sroa.0475.4 = phi ptr [ %i.bw, %.noexc405 ], [ null, %bb.p ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1384
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph654, %._crit_edge
  %.0313653 = phi i32 [ 1, %.lr.ph654 ], [ %i.cj, %._crit_edge ] ; 2 uses
  %.sroa.0475.1652 = phi ptr [ %.sroa.0475.4, %.lr.ph654 ], [ %i.ck, %._crit_edge ] ; 3 uses
  %.sroa.49.0651 = phi ptr [ %.sroa.67.4, %.lr.ph654 ], [ %i.cl, %._crit_edge ] ; 2 uses
  %.sroa.67.1650 = phi ptr [ %.sroa.67.4, %.lr.ph654 ], [ %i.cm, %._crit_edge ] ; 2 uses
  %i.ch = load i32, ptr %i.bl, align 8, !tbaa !94
  %i.ci = icmp slt i32 %.0313653, %i.ch
  br i1 %i.ci, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.cj = add nuw nsw i32 %.0313653, 1
  %i.ck = load ptr, ptr %1, align 8, !tbaa !63    ; 12 uses
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !62  ; 3 uses
  %i.cm = load ptr, ptr %i.cb, align 8, !tbaa !68 ; 3 uses
  store ptr %.sroa.0475.1652, ptr %1, align 8, !tbaa !63
  store ptr %.sroa.49.0651, ptr %i.a, align 8, !tbaa !62
  store ptr %.sroa.67.1650, ptr %i.cb, align 8, !tbaa !68
  %i.cn = load i64, ptr %i.bi, align 8, !tbaa !47 ; 2 uses
  %.not672 = icmp eq i64 %i.cn, 0
  br i1 %.not672, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.co = load ptr, ptr %i.cc, align 8, !tbaa !66 ; 9 uses
  br label %bb.t

._crit_edge:                                      ; preds = %bb.ap
  %i.cp = load i32, ptr %2, align 4, !tbaa !4
  %i.cq = add nsw i32 %i.cp, %.29
  store i32 %i.cq, ptr %2, align 4, !tbaa !4
  %i.cr = icmp sgt i32 %.29, 0
  br i1 %i.cr, label %bb.r, label %.critedge, !llvm.loop !146

bb.t:                                             ; preds = %.lr.ph, %bb.ap
  %i.cs = phi i64 [ 0, %.lr.ph ], [ %8, %bb.ap ]  ; 7 uses
  %.0315649 = phi i32 [ 0, %.lr.ph ], [ %.29, %bb.ap ] ; 7 uses
  %.0317648 = phi i32 [ 0, %.lr.ph ], [ %7, %bb.ap ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4  ; 12 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cs
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4  ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0475.1652, i64 %i.cs ; 2 uses
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !4
  %i.cy = icmp sgt i32 %i.cw, 0
  br i1 %i.cy, label %bb.ap, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cd, align 8, !tbaa !76
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cs
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4  ; 3 uses
  %i.dc = icmp sgt i32 %i.db, -1
  br i1 %i.dc, label %bb.v, label %.thread537

bb.v:                                             ; preds = %bb.u
  %i.dd = load i64, ptr %i.bq, align 8, !tbaa !81
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = icmp slt i32 %i.db, %i.de
  br i1 %i.df, label %bb.w, label %.thread537

bb.w:                                             ; preds = %bb.v
  %i.dg = zext nneg i32 %i.db to i64              ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4  ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dg
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = icmp sgt i32 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  %spec.select380 = sub i32 %i.di, %i.cu
  %i.dn = add i32 %spec.select380, %i.dm
  %i.do = icmp sgt i32 %i.dn, 1
  br i1 %i.do, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = icmp sgt i32 %i.di, %i.cu
  br i1 %i.dp, label %bb.y, label %.thread537

bb.y:                                             ; preds = %bb.x
  %i.dq = load ptr, ptr %i.ce, align 8, !tbaa !79
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dg
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4  ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, -1
  %i.du = icmp samesign ult i32 %i.ds, %i.de
  %or.cond627 = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond627, label %bb.z, label %.thread537

bb.z:                                             ; preds = %bb.y
  %i.dv = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dv
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  %i.ea = icmp sgt i32 %i.dz, 0
  %i.eb = zext i1 %i.ea to i32
  %spec.select381 = sub i32 %i.dx, %i.cu
  %i.ec = add i32 %spec.select381, %i.eb
  %i.ed = icmp slt i32 %i.ec, 2
  br i1 %i.ed, label %.thread537, label %.sink.split

.thread537:                                       ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.u
  %i.ee = load ptr, ptr %i.cf, align 8, !tbaa !77 ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.cs
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4  ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, -1
  br i1 %i.eh, label %bb.aa, label %.thread547

bb.aa:                                            ; preds = %.thread537
  %i.ei = load i64, ptr %i.bq, align 8, !tbaa !81
  %i.ej = trunc i64 %i.ei to i32                  ; 2 uses
  %i.ek = icmp slt i32 %i.eg, %i.ej
  br i1 %i.ek, label %bb.ab, label %.thread547

bb.ab:                                            ; preds = %bb.aa
  %i.el = zext nneg i32 %i.eg to i64              ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !4  ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.el
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !4
  %i.eq = icmp sgt i32 %i.ep, 0
  %i.er = zext i1 %i.eq to i32
  %spec.select382 = sub i32 %i.en, %i.cu
  %i.es = add i32 %spec.select382, %i.er
  %i.et = icmp sgt i32 %i.es, 1
  br i1 %i.et, label %.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eu = icmp sgt i32 %i.en, %i.cu
  br i1 %i.eu, label %bb.ad, label %.thread547

bb.ad:                                            ; preds = %bb.ac
  %i.ev = load ptr, ptr %i.ce, align 8, !tbaa !79
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.el
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4  ; 3 uses
  %i.ey = icmp sgt i32 %i.ex, -1
  %i.ez = icmp samesign ult i32 %i.ex, %i.ej
  %or.cond628 = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %or.cond628, label %bb.ae, label %.thread547

bb.ae:                                            ; preds = %bb.ad
  %i.fa = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.fa
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !4
  %i.ff = icmp sgt i32 %i.fe, 0
  %i.fg = zext i1 %i.ff to i32
  %spec.select383 = sub i32 %i.fc, %i.cu
  %i.fh = add i32 %spec.select383, %i.fg
  %i.fi = icmp slt i32 %i.fh, 2
  br i1 %i.fi, label %.thread547, label %.sink.split

.thread547:                                       ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %.thread537
  %i.fj = load ptr, ptr %i.ce, align 8, !tbaa !79
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.cs
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4  ; 3 uses
  %i.fm = icmp sgt i32 %i.fl, -1
  br i1 %i.fm, label %bb.af, label %.thread559

bb.af:                                            ; preds = %.thread547
  %i.fn = load i64, ptr %i.bq, align 8, !tbaa !81
  %i.fo = trunc i64 %i.fn to i32                  ; 2 uses
  %i.fp = icmp slt i32 %i.fl, %i.fo
  br i1 %i.fp, label %bb.ag, label %.thread559

bb.ag:                                            ; preds = %bb.af
  %i.fq = zext nneg i32 %i.fl to i64              ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !4  ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.fq
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.fv = icmp sgt i32 %i.fu, 0
  %i.fw = zext i1 %i.fv to i32
  %spec.select384 = sub i32 %i.fs, %i.cu
  %i.fx = add i32 %spec.select384, %i.fw
  %i.fy = icmp sgt i32 %i.fx, 1
  br i1 %i.fy, label %.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fz = icmp sgt i32 %i.fs, %i.cu
  br i1 %i.fz, label %bb.ai, label %.thread559

bb.ai:                                            ; preds = %bb.ah
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.fq
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4  ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, -1
  %i.gd = icmp samesign ult i32 %i.gb, %i.fo
  %or.cond629 = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond629, label %bb.aj, label %.thread559

bb.aj:                                            ; preds = %bb.ai
  %i.ge = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !4
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ge
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.gj = icmp sgt i32 %i.gi, 0
  %i.gk = zext i1 %i.gj to i32
  %spec.select385 = sub i32 %i.gg, %i.cu
  %i.gl = add i32 %spec.select385, %i.gk
  %i.gm = icmp slt i32 %i.gl, 2
  br i1 %i.gm, label %.thread559, label %.sink.split

.thread559:                                       ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %.thread547
  %i.gn = load ptr, ptr %i.cg, align 8, !tbaa !78
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.cs
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !4  ; 3 uses
  %i.gq = icmp sgt i32 %i.gp, -1
  br i1 %i.gq, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.thread559
  %i.gr = load i64, ptr %i.bq, align 8, !tbaa !81
  %i.gs = trunc i64 %i.gr to i32                  ; 2 uses
  %i.gt = icmp slt i32 %i.gp, %i.gs
  br i1 %i.gt, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.gu = zext nneg i32 %i.gp to i64              ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !4  ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.gu
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %i.gz = icmp sgt i32 %i.gy, 0
  %i.ha = zext i1 %i.gz to i32
  %spec.select386 = sub i32 %i.gw, %i.cu
  %i.hb = add i32 %spec.select386, %i.ha
  %i.hc = icmp sgt i32 %i.hb, 1
  br i1 %i.hc, label %.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hd = icmp sgt i32 %i.gw, %i.cu
  br i1 %i.hd, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.gu
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !4  ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, -1
  %i.hh = icmp samesign ult i32 %i.hf, %i.gs
  %or.cond630 = select i1 %i.hg, i1 %i.hh, i1 false
  br i1 %or.cond630, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hi = zext nneg i32 %i.hf to i64              ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !4
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.hi
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !4
  %i.hn = icmp sgt i32 %i.hm, 0
  %i.ho = zext i1 %i.hn to i32
  %spec.select387 = sub i32 %i.hk, %i.cu
  %i.hp = add i32 %spec.select387, %i.ho
  %i.hq = icmp slt i32 %i.hp, 2
  br i1 %i.hq, label %bb.ap, label %.sink.split

.sink.split:                                      ; preds = %bb.ao, %bb.al, %bb.aj, %bb.ag, %bb.ae, %bb.ab, %bb.z, %bb.w
  store i32 1, ptr %i.cx, align 4, !tbaa !4
  %i.hr = add nsw i32 %.0315649, 1
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %bb.ao, %bb.an, %bb.am, %.thread559, %bb.ak, %bb.t
  %.29 = phi i32 [ %.0315649, %bb.t ], [ %.0315649, %bb.ao ], [ %.0315649, %bb.am ], [ %.0315649, %bb.an ], [ %.0315649, %.thread559 ], [ %.0315649, %bb.ak ], [ %i.hr, %.sink.split ] ; 3 uses
  %7 = add i32 %.0317648, 1                       ; 2 uses
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.hs = icmp ugt i64 %i.cn, %8
  br i1 %i.hs, label %bb.t, label %._crit_edge, !llvm.loop !147

.critedge:                                        ; preds = %._crit_edge, %bb.r, %bb.s
  %.sroa.67.1.lcssa.ph = phi ptr [ %i.cm, %bb.s ], [ %.sroa.67.1650, %bb.r ], [ %i.cm, %._crit_edge ]
  %.sroa.49.0.lcssa.ph = phi ptr [ %i.cl, %bb.s ], [ %.sroa.49.0651, %bb.r ], [ %i.cl, %._crit_edge ] ; 2 uses
  %.sroa.0475.1.lcssa.ph = phi ptr [ %i.ck, %bb.s ], [ %.sroa.0475.1652, %bb.r ], [ %i.ck, %._crit_edge ] ; 3 uses
  %.not.i.i408 = icmp eq ptr %.sroa.49.0.lcssa.ph, %.sroa.0475.1.lcssa.ph
  %spec.select631 = select i1 %.not.i.i408, ptr %.sroa.49.0.lcssa.ph, ptr %.sroa.0475.1.lcssa.ph
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %.critedge, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.o
  %.sroa.0475.2576 = phi ptr [ %.sroa.0475.1.lcssa.ph, %.critedge ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ null, %bb.o ] ; 11 uses
  %.sroa.67.2575 = phi ptr [ %.sroa.67.1.lcssa.ph, %.critedge ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ null, %bb.o ] ; 7 uses
  %.sroa.49.3 = phi ptr [ %spec.select631, %.critedge ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ null, %bb.o ] ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !81 ; 4 uses
  %i.hv = ptrtoint ptr %.sroa.49.3 to i64         ; 2 uses
  %i.hw = ptrtoint ptr %.sroa.0475.2576 to i64    ; 2 uses
  %i.hx = sub i64 %i.hv, %i.hw                    ; 4 uses
  %i.hy = ashr exact i64 %i.hx, 2                 ; 7 uses
  %i.hz = icmp ugt i64 %i.hu, %i.hy
  br i1 %i.hz, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ia = sub nuw i64 %i.hu, %i.hy                ; 6 uses
  %i.ib = ptrtoint ptr %.sroa.67.2575 to i64      ; 2 uses
  %i.ic = sub i64 %i.ib, %i.hv
  %i.id = ashr exact i64 %i.ic, 2                 ; 2 uses
  %i.ie = icmp ult i64 %i.hy, 2305843009213693952
  call void @llvm.assume(i1 %i.ie)
  %i.if = xor i64 %i.hy, 2305843009213693951      ; 2 uses
  %i.ig = icmp ule i64 %i.id, %i.if
  call void @llvm.assume(i1 %i.ig)
  %.not28.i450 = icmp ult i64 %i.id, %i.ia
  br i1 %.not28.i450, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %.sroa.49.3, align 4, !tbaa !4
  %i.ih = getelementptr i8, ptr %.sroa.49.3, i64 4 ; 3 uses
  %i.ii = add nsw i64 %i.ia, -1                   ; 2 uses
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit413, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i451

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i451: ; preds = %bb.ar
  %.idx.i.i.i.i.i.i452 = shl nuw nsw i64 %i.ii, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ih, i8 0, i64 %.idx.i.i.i.i.i.i452, i1 false), !tbaa !4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx.i.i.i.i.i.i452
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit413

bb.as:                                            ; preds = %bb.aq
  %i.il = icmp ult i64 %i.if, %i.ia
  br i1 %i.il, label %bb.at, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i455

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.141) #34
          to label %.noexc463 unwind label %bb.cp

.noexc463:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i455: ; preds = %bb.as
  %.sroa.speculated.i.i456 = call i64 @llvm.umax.i64(i64 %i.hy, i64 %i.ia)
  %i.im = add nuw nsw i64 %.sroa.speculated.i.i456, %i.hy
  %i.in = call i64 @llvm.umin.i64(i64 %i.im, i64 2305843009213693951) ; 2 uses
  %i.io = shl nuw nsw i64 %i.in, 2
  %i.ip = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.io) #33
          to label %.noexc464 unwind label %bb.cp ; 4 uses

.noexc464:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i455
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.hx ; 3 uses
  store i32 0, ptr %i.iq, align 4, !tbaa !4
  %i.ir = add nsw i64 %i.ia, -1                   ; 2 uses
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i459, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i457

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i457: ; preds = %.noexc464
  %i.it = getelementptr i8, ptr %i.iq, i64 4
  %.idx.i.i.i.i.i31.i458 = shl nuw nsw i64 %i.ir, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.it, i8 0, i64 %.idx.i.i.i.i.i31.i458, i1 false), !tbaa !4
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i459

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i459: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i457, %.noexc464
  %i.iu = icmp sgt i64 %i.hx, 0
  br i1 %i.iu, label %bb.au, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i460

bb.au:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i459
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ip, ptr align 4 %.sroa.0475.2576, i64 %i.hx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i460

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i460: ; preds = %bb.au, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i459
  %.not.i35.i461 = icmp eq ptr %.sroa.0475.2576, null
  br i1 %.not.i35.i461, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i462, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i460
  %i.iv = sub i64 %i.ib, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0475.2576, i64 noundef %i.iv) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i462

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i462: ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i460
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ia
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.in
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit413

bb.aw:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.iy = icmp ult i64 %i.hu, %i.hy
  br i1 %i.iy, label %bb.ax, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit413

bb.ax:                                            ; preds = %bb.aw
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0475.2576, i64 %i.hu ; 2 uses
  %.not.i.i410 = icmp eq ptr %.sroa.49.3, %i.iz
  %spec.select632 = select i1 %.not.i.i410, ptr %.sroa.49.3, ptr %i.iz
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit413

_ZNSt6vectorIiSaIiEE6resizeEm.exit413:            ; preds = %bb.ax, %bb.aw, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i462, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i451, %bb.ar
  %.sroa.67.5 = phi ptr [ %.sroa.67.2575, %bb.aw ], [ %.sroa.67.2575, %bb.ax ], [ %.sroa.67.2575, %bb.ar ], [ %.sroa.67.2575, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i451 ], [ %i.ix, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i462 ] ; 5 uses
  %.sroa.49.4 = phi ptr [ %.sroa.49.3, %bb.aw ], [ %spec.select632, %bb.ax ], [ %i.ih, %bb.ar ], [ %i.ik, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i451 ], [ %i.iw, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i462 ]
  %.sroa.0475.5 = phi ptr [ %.sroa.0475.2576, %bb.aw ], [ %.sroa.0475.2576, %bb.ax ], [ %.sroa.0475.2576, %bb.ar ], [ %.sroa.0475.2576, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i451 ], [ %i.ip, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i462 ] ; 12 uses
  %i.ja = load ptr, ptr %1, align 8, !tbaa !63    ; 20 uses
  %i.jb = load ptr, ptr %i.a, align 8, !tbaa !62  ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !68 ; 2 uses
  store ptr %.sroa.0475.5, ptr %1, align 8, !tbaa !63
  store ptr %.sroa.49.4, ptr %i.a, align 8, !tbaa !62
  store ptr %.sroa.67.5, ptr %i.jc, align 8, !tbaa !68
  %i.je = load i64, ptr %i.bi, align 8, !tbaa !47 ; 6 uses
  %.not673 = icmp eq i64 %i.je, 0                 ; 2 uses
  br i1 %.not673, label %._crit_edge671.thread, label %.lr.ph663

.lr.ph663:                                        ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit413
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  br label %bb.ay

.lr.ph668:                                        ; preds = %bb.bh
  store ptr %i.ja, ptr %1, align 8, !tbaa !63
  store ptr %i.jb, ptr %i.a, align 8, !tbaa !62
  store ptr %i.jd, ptr %i.jc, align 8, !tbaa !68
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 1352
  br label %bb.bi

bb.ay:                                            ; preds = %.lr.ph663, %bb.bh
  %i.jt = phi i64 [ 0, %.lr.ph663 ], [ %10, %bb.bh ] ; 16 uses
  %.0333662 = phi i32 [ 0, %.lr.ph663 ], [ %9, %bb.bh ]
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !4  ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0475.5, i64 %i.jt ; 2 uses
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !4
  %or.cond633 = icmp ult i32 %i.jv, -999999
  br i1 %or.cond633, label %bb.bh, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jx = load ptr, ptr %i.jf, align 8, !tbaa !64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.jt
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !4  ; 2 uses
  %i.ka = load ptr, ptr %i.jg, align 8, !tbaa !65
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.jt
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !4  ; 2 uses
  %i.kd = and i32 %i.jz, -2147483647
  %i.ke = icmp eq i32 %i.kd, 1                    ; 2 uses
  %i.kf = and i32 %i.kc, -2147483647
  %i.kg = icmp eq i32 %i.kf, 1                    ; 2 uses
  %narrow.i = and i1 %i.ke, %i.kg
  br i1 %narrow.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kh = load ptr, ptr %i.jh, align 8, !tbaa !77
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.jt
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !4
  %i.kk = load ptr, ptr %i.ji, align 8, !tbaa !66 ; 3 uses
  %i.kl = sext i32 %i.kj to i64                   ; 2 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !4
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.kl
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !4
  %i.kq = icmp sgt i32 %i.kp, 0
  %i.kr = zext i1 %i.kq to i32
  %spec.select388 = add nsw i32 %i.kn, %i.kr
  %i.ks = load ptr, ptr %i.jl, align 8, !tbaa !79
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.jt
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !4
  %i.kv = sext i32 %i.ku to i64                   ; 2 uses
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !4
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.kv
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !4
  %i.la = icmp sgt i32 %i.kz, 0
  %i.lb = zext i1 %i.la to i32
  %.0318 = add nsw i32 %i.kx, %i.lb
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.jt
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !4  ; 2 uses
  %i.le = icmp sgt i32 %spec.select388, %i.ld
  %i.lf = icmp sgt i32 %.0318, %i.ld
  %or.cond = select i1 %i.le, i1 true, i1 %i.lf
  br i1 %or.cond, label %.sink.split721, label %bb.bh

bb.bb:                                            ; preds = %bb.az
  %i.lg = and i32 %i.jz, 1
  %i.lh = icmp eq i32 %i.lg, 0                    ; 2 uses
  %narrow.i414 = and i1 %i.lh, %i.kg
  br i1 %narrow.i414, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.li = load ptr, ptr %i.jk, align 8, !tbaa !76
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.jt
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !4
  %i.ll = load ptr, ptr %i.ji, align 8, !tbaa !66 ; 3 uses
  %i.lm = sext i32 %i.lk to i64                   ; 2 uses
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.lm
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !4
  %i.lr = icmp sgt i32 %i.lq, 0
  %i.ls = zext i1 %i.lr to i32
  %spec.select389 = add nsw i32 %i.lo, %i.ls
  %i.lt = load ptr, ptr %i.jl, align 8, !tbaa !79
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.jt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !4
  %i.lw = sext i32 %i.lv to i64                   ; 2 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !4
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.lw
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !4
  %i.mb = icmp sgt i32 %i.ma, 0
  %i.mc = zext i1 %i.mb to i32
  %.0314 = add nsw i32 %i.ly, %i.mc
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.jt
  %i.me = load i32, ptr %i.md, align 4, !tbaa !4  ; 2 uses
  %i.mf = icmp sgt i32 %spec.select389, %i.me
  %i.mg = icmp sgt i32 %.0314, %i.me
  %or.cond390 = select i1 %i.mf, i1 true, i1 %i.mg
  br i1 %or.cond390, label %.sink.split721, label %bb.bh

bb.bd:                                            ; preds = %bb.bb
  %.not378644 = trunc i32 %i.kc to i1             ; 2 uses
  %not.645 = xor i1 %i.ke, true
  %.not378 = or i1 %not.645, %.not378644
  br i1 %.not378, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mh = load ptr, ptr %i.jh, align 8, !tbaa !77
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.jt
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !4
  %i.mk = load ptr, ptr %i.ji, align 8, !tbaa !66 ; 3 uses
  %i.ml = sext i32 %i.mj to i64                   ; 2 uses
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.mk, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !4
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.ml
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !4
  %i.mq = icmp sgt i32 %i.mp, 0
  %i.mr = zext i1 %i.mq to i32
  %spec.select391 = add nsw i32 %i.mn, %i.mr
  %i.ms = load ptr, ptr %i.jj, align 8, !tbaa !78
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.jt
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !4
  %i.mv = sext i32 %i.mu to i64                   ; 2 uses
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mk, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !4
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.mv
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !4
  %i.na = icmp sgt i32 %i.mz, 0
  %i.nb = zext i1 %i.na to i32
  %.0310 = add nsw i32 %i.mx, %i.nb
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.jt
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !4  ; 2 uses
  %i.ne = icmp sgt i32 %spec.select391, %i.nd
  %i.nf = icmp sgt i32 %.0310, %i.nd
  %or.cond392 = select i1 %i.ne, i1 true, i1 %i.nf
  br i1 %or.cond392, label %.sink.split721, label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  %not.647 = xor i1 %i.lh, true
  %.not379 = or i1 %not.647, %.not378644
  br i1 %.not379, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ng = load ptr, ptr %i.jk, align 8, !tbaa !76
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.jt
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !4
  %i.nj = load ptr, ptr %i.ji, align 8, !tbaa !66 ; 3 uses
  %i.nk = sext i32 %i.ni to i64                   ; 2 uses
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !4
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.nk
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !4
  %i.np = icmp sgt i32 %i.no, 0
  %i.nq = zext i1 %i.np to i32
  %spec.select393 = add nsw i32 %i.nm, %i.nq
  %i.nr = load ptr, ptr %i.jj, align 8, !tbaa !78
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.jt
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !4
  %i.nu = sext i32 %i.nt to i64                   ; 2 uses
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !4
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.nu
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !4
  %i.nz = icmp sgt i32 %i.ny, 0
  %i.oa = zext i1 %i.nz to i32
  %.0306 = add nsw i32 %i.nw, %i.oa
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.jt
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !4  ; 2 uses
  %i.od = icmp sgt i32 %spec.select393, %i.oc
  %i.oe = icmp sgt i32 %.0306, %i.oc
  %or.cond394 = select i1 %i.od, i1 true, i1 %i.oe
  br i1 %or.cond394, label %.sink.split721, label %bb.bh

.sink.split721:                                   ; preds = %bb.bg, %bb.be, %bb.bc, %bb.ba
  store i32 0, ptr %i.jw, align 4, !tbaa !4
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split721, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.bf, %bb.ay
  %9 = add i32 %.0333662, 1                       ; 2 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %i.of = icmp ugt i64 %i.je, %10
  br i1 %i.of, label %bb.ay, label %.lr.ph668, !llvm.loop !148

.lr.ph670:                                        ; preds = %bb.bp
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !88
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 1376
  br label %bb.bu

bb.bi:                                            ; preds = %.lr.ph668, %bb.bp
  %i.om = phi i64 [ 0, %.lr.ph668 ], [ %12, %bb.bp ] ; 7 uses
  %.0305666 = phi i32 [ 0, %.lr.ph668 ], [ %11, %bb.bp ]
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0475.5, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !4  ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.om ; 2 uses
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !4
  %or.cond634 = icmp ult i32 %i.oo, -999999
  br i1 %or.cond634, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.oq = load ptr, ptr %i.jm, align 8, !tbaa !64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.om
  %i.os = load i32, ptr %i.or, align 4, !tbaa !4  ; 2 uses
  %i.ot = load ptr, ptr %i.jn, align 8, !tbaa !65
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.om
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !4  ; 2 uses
  %i.ow = and i32 %i.os, -2147483647
  %i.ox = icmp eq i32 %i.ow, 1                    ; 2 uses
  %i.oy = and i32 %i.ov, -2147483647
  %i.oz = icmp eq i32 %i.oy, 1                    ; 2 uses
  %narrow.i415 = and i1 %i.ox, %i.oz
  br i1 %narrow.i415, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pa = and i32 %i.os, 1
  %i.pb = icmp eq i32 %i.pa, 0                    ; 2 uses
  %narrow.i416 = and i1 %i.pb, %i.oz
  br i1 %narrow.i416, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not368641 = trunc i32 %i.ov to i1             ; 2 uses
  %not. = xor i1 %i.ox, true
  %.not368 = or i1 %not., %.not368641
  br i1 %.not368, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %not.643 = xor i1 %i.pb, true
  %.not369 = or i1 %not.643, %.not368641
  br i1 %.not369, label %.thread577, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.sink.in = phi ptr [ %i.jr, %bb.bj ], [ %i.jo, %bb.bl ], [ %i.jr, %bb.bk ], [ %i.jo, %bb.bm ]
  %.sink724.in = phi ptr [ %i.jp, %bb.bj ], [ %i.jp, %bb.bl ], [ %i.jq, %bb.bk ], [ %i.jq, %bb.bm ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !140
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %i.om
  %.sink723 = load i32, ptr %i.pc, align 4, !tbaa !4 ; 2 uses
  %.sink724 = load ptr, ptr %.sink724.in, align 8, !tbaa !140 ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.sink724, i64 %i.om
  %i.pe = sext i32 %.sink723 to i64
  %i.pf = getelementptr inbounds [4 x i8], ptr %.sink724, i64 %i.pe
  %.0302 = load i32, ptr %i.pf, align 4, !tbaa !4 ; 2 uses
  %.0303 = load i32, ptr %i.pd, align 4, !tbaa !4
  %i.pg = icmp slt i32 %.0302, 0
  br i1 %i.pg, label %.sink.split725, label %.thread577

.thread577:                                       ; preds = %bb.bm, %bb.bn
  %.0302583 = phi i32 [ %.0302, %bb.bn ], [ 0, %bb.bm ]
  %.0303582 = phi i32 [ %.0303, %bb.bn ], [ 0, %bb.bm ]
  %.0304581 = phi i32 [ %.sink723, %bb.bn ], [ 0, %bb.bm ]
  %i.ph = sext i32 %.0304581 to i64               ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0475.5, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !4
  %.not370 = icmp eq i32 %i.pj, -1
  br i1 %.not370, label %bb.bo, label %.sink.split725

bb.bo:                                            ; preds = %.thread577
  %i.pk = zext nneg i32 %.0302583 to i64          ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0475.5, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !4
  %i.pn = sext i32 %.0303582 to i64               ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0475.5, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !4
  %i.pq = load ptr, ptr %i.js, align 8, !tbaa !66 ; 4 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.pk
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !4
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.pq, i64 %i.pn
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !4
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.pq, i64 %i.ph
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !4
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.om
  %i.py = load i32, ptr %i.px, align 4, !tbaa !4  ; 3 uses
  %.not371 = icmp eq i32 %i.pw, %i.py
  %.not372 = icmp eq i32 %i.pp, -1
  %or.cond635 = select i1 %.not371, i1 %.not372, i1 false
  %.not373 = icmp eq i32 %i.pu, %i.py
  %or.cond636 = select i1 %or.cond635, i1 %.not373, i1 false
  %.not374 = icmp eq i32 %i.pm, -1
  %or.cond637 = select i1 %or.cond636, i1 %.not374, i1 false
  %.not375 = icmp eq i32 %i.ps, %i.py
  %or.cond638 = select i1 %or.cond637, i1 %.not375, i1 false
  br i1 %or.cond638, label %bb.bp, label %.sink.split725

.sink.split725:                                   ; preds = %.thread577, %bb.bo, %bb.bn
  store i32 0, ptr %i.op, align 4, !tbaa !4
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split725, %bb.bo, %bb.bi
  %11 = add i32 %.0305666, 1                      ; 2 uses
  %12 = zext i32 %11 to i64                       ; 2 uses
  %i.pz = icmp ugt i64 %i.je, %12
  br i1 %i.pz, label %bb.bi, label %.lr.ph670, !llvm.loop !149

._crit_edge671:                                   ; preds = %bb.bz
  %i.qa = ptrtoint ptr %i.jb to i64
  %i.qb = ptrtoint ptr %i.ja to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %.not.i.i.i.i417 = icmp eq ptr %i.jb, %i.ja
  br i1 %.not.i.i.i.i417, label %.lr.ph.i424, label %bb.bq

._crit_edge671.thread:                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit413
  store ptr %i.ja, ptr %1, align 8, !tbaa !63
  store ptr %i.jb, ptr %i.a, align 8, !tbaa !62
  store ptr %i.jd, ptr %i.jc, align 8, !tbaa !68
  %i.qd = ptrtoint ptr %i.jb to i64
  %i.qe = ptrtoint ptr %i.ja to i64
  %i.qf = sub i64 %i.qd, %i.qe
  %.not.i.i.i.i417718 = icmp eq ptr %i.jb, %i.ja
  br i1 %.not.i.i.i.i417718, label %.thread590, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge671.thread, %._crit_edge671
  %i.qg = phi i64 [ %i.qf, %._crit_edge671.thread ], [ %i.qc, %._crit_edge671 ] ; 6 uses
  %i.qh = icmp ugt i64 %i.qg, 9223372036854775804
  br i1 %i.qh, label %.noexc.i.i419, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i418, !prof !125

.noexc.i.i419:                                    ; preds = %bb.bq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc420 unwind label %bb.cp

.noexc420:                                        ; preds = %.noexc.i.i419
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i418: ; preds = %bb.bq
  %i.qi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qg) #33
          to label %.noexc421 unwind label %bb.cp ; 5 uses

.noexc421:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i418
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qg ; 2 uses
  %i.qk = icmp samesign ugt i64 %i.qg, 4
  br i1 %i.qk, label %bb.br, label %bb.bs, !prof !126

bb.br:                                            ; preds = %.noexc421
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qi, ptr align 4 %i.ja, i64 %i.qg, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit422

bb.bs:                                            ; preds = %.noexc421
  %i.ql = icmp eq i64 %i.qg, 4
  br i1 %i.ql, label %bb.bt, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit422

bb.bt:                                            ; preds = %bb.bs
  %i.qm = load i32, ptr %i.ja, align 4, !tbaa !4
  store i32 %i.qm, ptr %i.qi, align 4, !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit422

bb.bu:                                            ; preds = %.lr.ph670, %bb.bz
  %i.qn = phi i64 [ 0, %.lr.ph670 ], [ %14, %bb.bz ] ; 3 uses
  %.0298669 = phi i32 [ 0, %.lr.ph670 ], [ %13, %bb.bz ]
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !4  ; 2 uses
  %i.qq = icmp slt i32 %i.qp, 0
  br i1 %i.qq, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  switch i32 %i.qp, label %bb.bz [
    i32 -1, label %.sink.split726
    i32 -2, label %bb.bw
    i32 -3, label %bb.bx
    i32 -4, label %bb.by
  ]

bb.bw:                                            ; preds = %bb.bv
  br label %.sink.split726

bb.bx:                                            ; preds = %bb.bv
  br label %.sink.split726

bb.by:                                            ; preds = %bb.bv
  br label %.sink.split726

.sink.split726:                                   ; preds = %bb.bv, %bb.bw, %bb.bx, %bb.by
  %.sink733.in = phi ptr [ %i.oi, %bb.by ], [ %i.oj, %bb.bx ], [ %i.ok, %bb.bw ], [ %i.ol, %bb.bv ]
  %.sink733 = load ptr, ptr %.sink733.in, align 8, !tbaa !140
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.sink733, i64 %i.qn
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !4
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !4
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.qn
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !4
  br label %bb.bz

bb.bz:                                            ; preds = %.sink.split726, %bb.bu, %bb.bv
  %13 = add i32 %.0298669, 1                      ; 2 uses
  %14 = zext i32 %13 to i64                       ; 2 uses
  %i.qx = icmp ugt i64 %i.je, %14
  br i1 %i.qx, label %bb.bu, label %._crit_edge671, !llvm.loop !150

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit422:             ; preds = %bb.bt, %bb.bs, %bb.br
  br i1 %.not673, label %bb.cj, label %.lr.ph.i424

.thread590:                                       ; preds = %._crit_edge671.thread
  store i32 0, ptr %2, align 4, !tbaa !4
  store i32 0, ptr %3, align 4, !tbaa !4
  %i.qy = load i32, ptr %2, align 4, !tbaa !4     ; 2 uses
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit439

.lr.ph.i424:                                      ; preds = %._crit_edge671, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit422
  %i.qz = phi ptr [ %i.qi, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit422 ], [ null, %._crit_edge671 ] ; 2 uses
  %i.ra = phi ptr [ %i.qj, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit422 ], [ null, %._crit_edge671 ]
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.rc = load ptr, ptr %i.rb, align 8            ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.re = load ptr, ptr %i.rd, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.rg = load ptr, ptr %i.rf, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %.thread.i429, %.lr.ph.i424
  %i.rh = phi i64 [ 0, %.lr.ph.i424 ], [ %16, %.thread.i429 ] ; 5 uses
  %.038.i425 = phi i32 [ 0, %.lr.ph.i424 ], [ %15, %.thread.i429 ]
  %.02237.i426 = phi i32 [ 0, %.lr.ph.i424 ], [ %.130.i430, %.thread.i429 ] ; 6 uses
  %.02336.i427 = phi i32 [ 0, %.lr.ph.i424 ], [ %.124.i431, %.thread.i429 ] ; 6 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !4  ; 2 uses
  %i.rk = icmp slt i32 %i.rj, 0
  br i1 %i.rk, label %bb.cb, label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.rh
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !4
  %i.rn = icmp eq i32 %i.rm, 1
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %i.rh
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !4  ; 3 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.rh
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !4  ; 3 uses
  br i1 %i.rn, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.rs = trunc i32 %i.rp to i1
  %i.rt = and i32 %i.rr, 1
  %i.ru = sub nsw i32 0, %i.rt
  %i.rv = select i1 %i.rs, i32 -1, i32 %i.ru
  %spec.select.i436 = add nsw i32 %i.rv, %.02237.i426
  br label %.thread.i429

bb.cd:                                            ; preds = %bb.cb
  %i.rw = and i32 %i.rp, -2147483647
  %i.rx = icmp ne i32 %i.rw, 1
  %i.ry = and i32 %i.rr, -2147483647
  %i.rz = icmp ne i32 %i.ry, 1
  %narrow.i.not.i434 = or i1 %i.rx, %i.rz
  br i1 %narrow.i.not.i434, label %bb.ce, label %.thread.i429

bb.ce:                                            ; preds = %bb.cd
  %i.sa = or i32 %i.rr, %i.rp
  %i.sb = and i32 %i.sa, 1
  %spec.select28.i435 = sub nsw i32 %.02237.i426, %i.sb
  br label %.thread.i429

bb.cf:                                            ; preds = %bb.ca
  %.not31.i428 = icmp eq i32 %i.rj, 0
  br i1 %.not31.i428, label %.thread.i429, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.rh
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !4
  %i.se = icmp eq i32 %i.sd, 1
  br i1 %i.se, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.sf = add nsw i32 %.02336.i427, 3
  br label %.thread.i429

bb.ci:                                            ; preds = %bb.cg
  %i.sg = add nsw i32 %.02336.i427, 1
  br label %.thread.i429

.thread.i429:                                     ; preds = %bb.ci, %bb.ch, %bb.cf, %bb.ce, %bb.cd, %bb.cc
  %.130.i430 = phi i32 [ %.02237.i426, %bb.ch ], [ %.02237.i426, %bb.ci ], [ %.02237.i426, %bb.cf ], [ %spec.select28.i435, %bb.ce ], [ %.02237.i426, %bb.cd ], [ %spec.select.i436, %bb.cc ] ; 3 uses
  %.124.i431 = phi i32 [ %i.sf, %bb.ch ], [ %i.sg, %bb.ci ], [ %.02336.i427, %bb.cf ], [ %.02336.i427, %bb.ce ], [ %.02336.i427, %bb.cd ], [ %.02336.i427, %bb.cc ] ; 2 uses
  %15 = add i32 %.038.i425, 1                     ; 2 uses
  %16 = zext i32 %15 to i64                       ; 2 uses
  %i.sh = icmp ugt i64 %i.je, %16
  br i1 %i.sh, label %bb.ca, label %.thread585, !llvm.loop !145

.thread585:                                       ; preds = %.thread.i429
  store i32 %.124.i431, ptr %2, align 4, !tbaa !4
  store i32 %.130.i430, ptr %3, align 4, !tbaa !4
  %i.si = load i32, ptr %2, align 4, !tbaa !4
  %i.sj = add nsw i32 %i.si, %.130.i430
  br label %bb.ck

bb.cj:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit422
  store i32 0, ptr %2, align 4, !tbaa !4
  store i32 0, ptr %3, align 4, !tbaa !4
  %i.sk = load i32, ptr %2, align 4, !tbaa !4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.thread585
  %i.sl = phi ptr [ %i.qz, %.thread585 ], [ %i.qi, %bb.cj ] ; 2 uses
  %i.sm = phi ptr [ %i.ra, %.thread585 ], [ %i.qj, %bb.cj ]
  %i.sn = phi i32 [ %i.sj, %.thread585 ], [ %i.sk, %bb.cj ]
  %i.so = ptrtoint ptr %i.sm to i64
  %i.sp = ptrtoint ptr %i.sl to i64
  %i.sq = sub i64 %i.so, %i.sp
  call void @_ZdlPvm(ptr noundef nonnull %i.sl, i64 noundef %i.sq) #30
  %.pr = load i32, ptr %2, align 4, !tbaa !4
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit439

_ZNSt6vectorIiSaIiEED2Ev.exit439:                 ; preds = %.thread590, %bb.ck
  %i.sr = phi i32 [ %i.qy, %.thread590 ], [ %.pr, %bb.ck ]
  %i.ss = phi i32 [ %i.qy, %.thread590 ], [ %i.sn, %bb.ck ]
  %.not364 = icmp eq i32 %i.sr, 0
  br i1 %.not364, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit439
  %i.st = load i32, ptr %3, align 4, !tbaa !4
  %i.su = icmp ne i32 %i.st, 0
  %i.sv = zext i1 %i.su to i8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_ZNSt6vectorIiSaIiEED2Ev.exit439
  %i.sw = phi i8 [ 1, %_ZNSt6vectorIiSaIiEED2Ev.exit439 ], [ %i.sv, %bb.cl ]
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i8 %i.sw, ptr %i.sx, align 8, !tbaa !109
  %.sroa.0.0.copyload = load i64, ptr %4, align 8, !tbaa !60
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !60
  %i.sy = invoke double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !49
  %i.tb = fadd double %i.sy, %i.ta
  store double %i.tb, ptr %i.sz, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not.i.i.i440 = icmp eq ptr %.sroa.0475.5, null
  br i1 %.not.i.i.i440, label %_ZNSt6vectorIiSaIiEED2Ev.exit441, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.tc = ptrtoint ptr %.sroa.67.5 to i64
  %i.td = ptrtoint ptr %.sroa.0475.5 to i64
  %i.te = sub i64 %i.tc, %i.td
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0475.5, i64 noundef %i.te) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit441

_ZNSt6vectorIiSaIiEED2Ev.exit441:                 ; preds = %bb.cn, %bb.co
  %i.tf = trunc nuw i64 %i.je to i32
  %i.tg = add i32 %i.ss, %i.tf
  %i.th = sext i32 %i.tg to i64
  ret i64 %i.th

bb.cp:                                            ; preds = %bb.cm, %.noexc.i.i419, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i418, %bb.at, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i455
  %.sroa.67.0.ph = phi ptr [ %.sroa.67.2575, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i455 ], [ %.sroa.67.2575, %bb.at ], [ %.sroa.67.5, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i418 ], [ %.sroa.67.5, %.noexc.i.i419 ], [ %.sroa.67.5, %bb.cm ]
  %.sroa.0475.0.ph = phi ptr [ %.sroa.0475.2576, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i455 ], [ %.sroa.0475.2576, %bb.at ], [ %.sroa.0475.5, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i418 ], [ %.sroa.0475.5, %.noexc.i.i419 ], [ %.sroa.0475.5, %bb.cm ] ; 3 uses
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not.i.i.i444 = icmp eq ptr %.sroa.0475.0.ph, null
  br i1 %.not.i.i.i444, label %_ZNSt6vectorIiSaIiEED2Ev.exit445, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ti = ptrtoint ptr %.sroa.67.0.ph to i64
  %i.tj = ptrtoint ptr %.sroa.0475.0.ph to i64
  %i.tk = sub i64 %i.ti, %i.tj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0475.0.ph, i64 noundef %i.tk) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit445

_ZNSt6vectorIiSaIiEED2Ev.exit445:                 ; preds = %bb.cp, %bb.cq
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus(ptr noundef nonnull align 8 dereferenceable(2288) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(96) %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::_Rb_tree<void *, std::pair<void *const, malloc_plus_memory_entry *>, std::_Select1st<std::pair<void *const, malloc_plus_memory_entry *>>, std::less<void *>>::_Alloc_node", align 8 ; 4 uses
  %7 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, malloc_plus_memory_entry *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, malloc_plus_memory_entry *>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %8 = alloca %struct.timeval, align 8            ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %class.MallocPlus, align 8          ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @cpu_timer_start(ptr noundef nonnull %8)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.c = load i8, ptr %i.b, align 8, !tbaa !109, !range !132, !noundef !133
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %.not.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.b
  store ptr %i.f, ptr %i.g, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.b, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %.not535 = icmp eq i64 %i.j, 0
  br i1 %.not535, label %._crit_edge, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.j)
  %.pre = load i64, ptr %i.i, align 8, !tbaa !47  ; 6 uses
  %.not474 = icmp eq i64 %.pre, 0
  br i1 %.not474, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %min.iters.check = icmp ult i64 %.pre, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.l = add i64 %.pre, -1                        ; 2 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp eq i64 %i.m, 4294967295
  %i.o = icmp ugt i64 %i.l, 4294967295
  %i.p = or i1 %i.n, %i.o
  br i1 %i.p, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %.pre, 8589934584              ; 4 uses
  %10 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %vec.ind, ptr %i.q, align 4, !tbaa !4
  store <4 x i32> %step.add, ptr %i.r, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.0443.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %10, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.t = phi i64 [ %13, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.0443 = phi i32 [ %12, %scalar.ph ], [ %.0443.ph, %scalar.ph.preheader ] ; 2 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.t
  store i32 %.0443, ptr %11, align 4, !tbaa !4
  %12 = add i32 %.0443, 1                         ; 2 uses
  %13 = zext i32 %12 to i64                       ; 2 uses
  %i.u = icmp ugt i64 %.pre, %13
  br i1 %i.u, label %scalar.ph, label %._crit_edge, !llvm.loop !152

bb.c:                                             ; preds = %bb.a
  %i.v = call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.w = sub nsw i32 %1, %i.v                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !4
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !4
  %i.aa = load atomic i8, ptr @_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.f, !prof !153

bb.d:                                             ; preds = %bb.c
  %i.ac = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save) #28
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save, i8 0, i64 24, i1 false)
  %i.ad = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIiSaIiEED2Ev, ptr nonnull @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = load atomic i8, ptr @_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.i, !prof !153

bb.g:                                             ; preds = %bb.f
  %i.ag = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic) #28
  %.not389 = icmp eq i32 %i.ag, 0
  br i1 %.not389, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic, i8 0, i64 24, i1 false)
  %i.ah = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIiSaIiEED2Ev, ptr nonnull @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 8 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !47 ; 4 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save, i64 8), align 8, !tbaa !62 ; 2 uses
  %i.al = load ptr, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save, align 8, !tbaa !63 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 2                 ; 3 uses
  %i.aq = icmp ugt i64 %i.aj, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = sub nuw i64 %i.aj, %i.ap
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save, i64 noundef %i.ar)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit412

bb.k:                                             ; preds = %bb.i
  %i.as = icmp ult i64 %i.aj, %i.ap
  br i1 %i.as, label %bb.l, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit412

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aj ; 2 uses
  %.not.i.i410 = icmp eq ptr %i.ak, %i.at
  br i1 %.not.i.i410, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit412, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i411

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i411:     ; preds = %bb.l
  store ptr %i.at, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save, i64 8), align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit412

_ZNSt6vectorIiSaIiEE6resizeEm.exit412:            ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i411
  %.not390 = icmp eq i32 %4, 0                    ; 2 uses
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !47 ; 6 uses
  %i.av = trunc i64 %i.au to i32                  ; 4 uses
  br i1 %.not390, label %.critedge, label %.preheader441

.preheader441:                                    ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit412
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph445, label %._crit_edge446

.lr.ph445:                                        ; preds = %.preheader441
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88 ; 7 uses
  %i.az = load ptr, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save, align 8, !tbaa !63 ; 7 uses
  %wide.trip.count = and i64 %i.au, 2147483647    ; 4 uses
  %min.iters.check562 = icmp samesign ult i64 %wide.trip.count, 8
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = ptrtoaddr ptr %i.ay to i64
  %i.bc = sub i64 %i.bb, %i.ba
  %diff.check = icmp ugt i64 %i.bc, -32
  %or.cond575 = select i1 %min.iters.check562, i1 true, i1 %diff.check
  br i1 %or.cond575, label %scalar.ph561.preheader, label %vector.ph563

vector.ph563:                                     ; preds = %.lr.ph445
  %n.vec565 = and i64 %i.au, 2147483640           ; 3 uses
  br label %vector.body566

vector.body566:                                   ; preds = %vector.body566, %vector.ph563
  %index567 = phi i64 [ 0, %vector.ph563 ], [ %index.next569, %vector.body566 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index567 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <4 x i32>, ptr %i.bd, align 4, !tbaa !4
  %wide.load568 = load <4 x i32>, ptr %i.be, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index567 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <4 x i32> %wide.load, ptr %i.bf, align 4, !tbaa !4
  store <4 x i32> %wide.load568, ptr %i.bg, align 4, !tbaa !4
  %index.next569 = add nuw i64 %index567, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next569, %n.vec565
  br i1 %i.bh, label %middle.block570, label %vector.body566, !llvm.loop !154

middle.block570:                                  ; preds = %vector.body566
  %cmp.n571 = icmp eq i64 %wide.trip.count, %n.vec565
  br i1 %cmp.n571, label %._crit_edge446.thread, label %scalar.ph561.preheader

scalar.ph561.preheader:                           ; preds = %.lr.ph445, %middle.block570
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph445 ], [ %n.vec565, %middle.block570 ] ; 3 uses
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph561.prol.loopexit, label %scalar.ph561.prol

scalar.ph561.prol:                                ; preds = %scalar.ph561.preheader, %scalar.ph561.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph561.prol ], [ %indvars.iv.ph, %scalar.ph561.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph561.prol ], [ 0, %scalar.ph561.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.prol
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.prol
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph561.prol.loopexit, label %scalar.ph561.prol, !llvm.loop !155

scalar.ph561.prol.loopexit:                       ; preds = %scalar.ph561.prol, %scalar.ph561.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph561.preheader ], [ %indvars.iv.next.prol, %scalar.ph561.prol ]
  %i.bl = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge446.thread, label %scalar.ph561

scalar.ph561:                                     ; preds = %scalar.ph561.prol.loopexit, %scalar.ph561
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph561 ], [ %indvars.iv.unr, %scalar.ph561.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !4
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.a
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next.a
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.1
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next.1
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.2
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next.2
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge446.thread, label %scalar.ph561, !llvm.loop !157

._crit_edge446.thread:                            ; preds = %scalar.ph561.prol.loopexit, %scalar.ph561, %middle.block570
  %i.bz = add i32 %i.w, %i.av                     ; 2 uses
  store i32 %i.bz, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells, align 4, !tbaa !4
  br label %.lr.ph450

._crit_edge446:                                   ; preds = %.preheader441
  %i.ca = add i32 %i.w, %i.av                     ; 3 uses
  store i32 %i.ca, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells, align 4, !tbaa !4
  %.not475 = icmp eq i64 %i.au, 0
  br i1 %.not475, label %.loopexit440, label %.lr.ph450

.lr.ph450:                                        ; preds = %._crit_edge446.thread, %._crit_edge446
  %i.cb = phi i32 [ %i.bz, %._crit_edge446.thread ], [ %i.ca, %._crit_edge446 ]
  %i.cc = load ptr, ptr %3, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1360
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph450, %bb.s
  %i.cg = phi i64 [ 0, %.lr.ph450 ], [ %15, %bb.s ] ; 4 uses
  %.0358448 = phi i32 [ 0, %.lr.ph450 ], [ %14, %bb.s ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cg ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cg ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !65
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cg ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = trunc i32 %i.cm to i1
  %.not402435 = trunc i32 %i.cp to i1
  %.not402 = select i1 %i.cq, i1 true, i1 %.not402435
  br i1 %.not402, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 -2, ptr %i.ch, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cr = load ptr, ptr %i.cf, align 8, !tbaa !88
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cg
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  %.not403 = icmp eq i32 %i.ct, 1
  br i1 %.not403, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cw = and i32 %i.cu, -2147483647
  %i.cx = icmp ne i32 %i.cw, 1
  %i.cy = and i32 %i.cv, -2147483647
  %i.cz = icmp ne i32 %i.cy, 1
  %narrow.i.not = or i1 %i.cx, %i.cz
  br i1 %narrow.i.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 -3, ptr %i.ch, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %bb.r, %bb.q, %bb.p
  %14 = add i32 %.0358448, 1                      ; 2 uses
  %15 = zext i32 %14 to i64                       ; 2 uses
  %i.da = icmp ugt i64 %i.au, %15
  br i1 %i.da, label %bb.m, label %.loopexit440, !llvm.loop !158

.critedge:                                        ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit412
  %i.db = add i32 %i.w, %i.av                     ; 2 uses
  store i32 %i.db, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells, align 4, !tbaa !4
  br label %.loopexit440

.loopexit440:                                     ; preds = %bb.s, %._crit_edge446, %.critedge
  %i.dc = phi i32 [ %i.db, %.critedge ], [ %i.ca, %._crit_edge446 ], [ %i.cb, %bb.s ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 25 uses
  %i.de = sext i32 %i.dc to i64
  %i.df = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, i64 noundef %i.de, i64 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 16)
  store ptr %i.df, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5i_old, align 8, !tbaa !140
  %i.dg = load i32, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells, align 4, !tbaa !4
  %i.dh = sext i32 %i.dg to i64
  %i.di = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, i64 noundef %i.dh, i64 noundef 4, ptr noundef nonnull @.str.34, i32 noundef 16)
  store ptr %i.di, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5j_old, align 8, !tbaa !140
  %i.dj = load i32, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells, align 4, !tbaa !4
  %i.dk = sext i32 %i.dj to i64
  %i.dl = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, i64 noundef %i.dk, i64 noundef 4, ptr noundef nonnull @.str.35, i32 noundef 16)
  store ptr %i.dl, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE9level_old, align 8, !tbaa !140
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 23 uses
  call void @_ZN10MallocPlus11memory_swapEPPiS1_(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, ptr noundef nonnull %i.dm, ptr noundef nonnull @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5i_old)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 11 uses
  call void @_ZN10MallocPlus11memory_swapEPPiS1_(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, ptr noundef nonnull %i.dn, ptr noundef nonnull @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5j_old)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 8 uses
  call void @_ZN10MallocPlus11memory_swapEPPiS1_(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, ptr noundef nonnull %i.do, ptr noundef nonnull @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE9level_old)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 5 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !63 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !62
  %.not.i.i413 = icmp eq ptr %i.ds, %i.dq
  br i1 %.not.i.i413, label %_ZNSt6vectorIiSaIiEE5clearEv.exit415, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i414

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i414:     ; preds = %.loopexit440
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit415

_ZNSt6vectorIiSaIiEE5clearEv.exit415:             ; preds = %.loopexit440, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i414
  %i.dt = load i64, ptr %i.ai, align 8, !tbaa !47 ; 2 uses
  %.not536 = icmp eq i64 %i.dt, 0
  br i1 %.not536, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit418, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit415
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 noundef %i.dt)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit418

_ZNSt6vectorIiSaIiEE6resizeEm.exit418:            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit415, %bb.t
  %i.du = load atomic i8, ptr @_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order acquire, align 8
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.u, label %bb.w, !prof !153

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit418
  %i.dw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order) #28
  %.not391 = icmp eq i32 %i.dw, 0
  br i1 %.not391, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order, i8 0, i64 24, i1 false)
  %i.dx = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIiSaIiEED2Ev, ptr nonnull @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZNSt6vectorIiSaIiEE6resizeEm.exit418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order, i64 8), align 8, !tbaa !62 ; 3 uses
  %i.dz = load ptr, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order, align 8, !tbaa !63 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 2 uses
  %i.ed = ashr exact i64 %i.ec, 2                 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 4
  br i1 %i.ee, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ef = sub nuw nsw i64 4, %i.ed
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order, ptr %i.dy, i64 noundef %i.ef, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.y:                                             ; preds = %bb.w
  %.not438 = icmp eq i64 %i.ec, 16
  br i1 %.not438, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %.not.i.i419 = icmp eq ptr %i.dy, %i.eg
  br i1 %.not.i.i419, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i420

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i420:     ; preds = %bb.z
  store ptr %i.eg, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order, i64 8), align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %bb.x, %bb.y, %bb.z, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.eh = load i64, ptr %i.ai, align 8, !tbaa !47 ; 2 uses
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph455, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge

.lr.ph455:                                        ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1360
  br label %bb.aa

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.el = load ptr, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5i_old, align 8, !tbaa !140
  %i.em = call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, ptr noundef %i.el) ; 0 uses
  %i.en = load ptr, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5j_old, align 8, !tbaa !140
  %i.eo = call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, ptr noundef %i.en) ; 0 uses
  %i.ep = load ptr, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE9level_old, align 8, !tbaa !140
  %i.eq = call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, ptr noundef %i.ep) ; 0 uses
  %i.er = load i32, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells, align 4, !tbaa !4
  %i.es = sext i32 %i.er to i64
  call void @_ZN4Mesh13calc_celltypeEm(ptr noundef nonnull align 8 dereferenceable(2288) %0, i64 noundef %i.es)
  br i1 %.not390, label %bb.cs, label %bb.be

bb.aa:                                            ; preds = %.lr.ph455, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.et = phi i64 [ %i.eh, %.lr.ph455 ], [ %i.ry, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ] ; 8 uses
  %indvars.iv481 = phi i64 [ 0, %.lr.ph455 ], [ %indvars.iv.next482.a, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ] ; 27 uses
  %.0367453 = phi i32 [ 0, %.lr.ph455 ], [ %.3370, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ] ; 23 uses
  %i.eu = load ptr, ptr %3, align 8, !tbaa !63
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv481 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4  ; 2 uses
  switch i32 %i.ew, label %bb.ac [
    i32 0, label %bb.ab
    i32 -1000000, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.ex = load ptr, ptr %i.dp, align 8, !tbaa !63
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv481
  store i32 %.0367453, ptr %i.ey, align 4, !tbaa !4
  %i.ez = load ptr, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5i_old, align 8, !tbaa !140
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv481
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fc = load ptr, ptr %i.dm, align 8, !tbaa !64
  %i.fd = sext i32 %.0367453 to i64               ; 3 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fd
  store i32 %i.fb, ptr %i.fe, align 4, !tbaa !4
  %i.ff = load ptr, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5j_old, align 8, !tbaa !140
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv481
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !4
  %i.fi = load ptr, ptr %i.dn, align 8, !tbaa !65
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fd
  store i32 %i.fh, ptr %i.fj, align 4, !tbaa !4
  %i.fk = load ptr, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE9level_old, align 8, !tbaa !140
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv481
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = load ptr, ptr %i.do, align 8, !tbaa !66
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fd
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !4
  %i.fp = add nsw i32 %.0367453, 1
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fq = icmp slt i32 %i.ew, 0
  %i.fr = load ptr, ptr %i.dp, align 8, !tbaa !63
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv481
  store i32 %.0367453, ptr %i.fs, align 4, !tbaa !4
  br i1 %i.fq, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ft = load i32, ptr %i.ev, align 4, !tbaa !4
  %i.fu = icmp slt i32 %i.ft, -1
  br i1 %i.fu, label %bb.ae, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fv = load ptr, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5i_old, align 8, !tbaa !140
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv481
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !4
  %i.fy = sdiv i32 %i.fx, 2
  %i.fz = load ptr, ptr %i.dm, align 8, !tbaa !64
  %i.ga = sext i32 %.0367453 to i64               ; 3 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.ga
  store i32 %i.fy, ptr %i.gb, align 4, !tbaa !4
  %i.gc = load ptr, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5j_old, align 8, !tbaa !140
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv481
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4
  %i.gf = sdiv i32 %i.ge, 2
  %i.gg = load ptr, ptr %i.dn, align 8, !tbaa !65
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.ga
  store i32 %i.gf, ptr %i.gh, align 4, !tbaa !4
  %i.gi = load ptr, ptr @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE9level_old, align 8, !tbaa !140
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv481
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.gl = add nsw i32 %i.gk, -1
  %i.gm = load ptr, ptr %i.do, align 8, !tbaa !66
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.ga
  store i32 %i.gl, ptr %i.gn, align 4, !tbaa !4
  %i.go = add nsw i32 %.0367453, 1
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

bb.af:                                            ; preds = %bb.ac
  %i.gp = load ptr, ptr %i.ek, align 8, !tbaa !88
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv481
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !4
  switch i32 %i.gr, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit [
    i32 1, label %bb.ag
    i32 -1, label %bb.ba
    i32 -2, label %bb.bb
end_hunk_2
begin_hunk_3_@_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus:bb.a
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !4 ; 2 uses
  %or.cond407 = icmp ult i32 %i.ads, %i.abn
  br i1 %or.cond407, label %bb.di, label %bb.dq

bb.di:                                            ; preds = %bb.dh
  %i.adt = zext nneg i32 %i.ads to i64            ; 2 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !4
  %i.adw = icmp eq i32 %i.adv, 0
  br i1 %i.adw, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %i.adt
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !4
  br label %bb.dk

bb.dk:                                            ; preds = %bb.di, %bb.dj
  %i.adz = phi i32 [ %i.ady, %bb.dj ], [ -1, %bb.di ]
  %i.aea = load ptr, ptr %i.abl, align 8, !tbaa !79
  %i.aeb = sext i32 %i.acd to i64
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.aea, i64 %i.aeb
  store i32 %i.adz, ptr %i.aec, align 4, !tbaa !4
  br label %bb.dq

bb.dl:                                            ; preds = %bb.cu
  %i.aed = icmp slt i32 %i.acf, -1
  br i1 %i.aed, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.aee = load ptr, ptr %i.abi, align 8, !tbaa !76
  %i.aef = sext i32 %i.acd to i64                 ; 4 uses
  %i.aeg = getelementptr inbounds [4 x i8], ptr %i.aee, i64 %i.aef
  store i32 -1, ptr %i.aeg, align 4, !tbaa !4
  %i.aeh = load ptr, ptr %i.abj, align 8, !tbaa !77
  %i.aei = getelementptr inbounds [4 x i8], ptr %i.aeh, i64 %i.aef
  store i32 -1, ptr %i.aei, align 4, !tbaa !4
  %i.aej = load ptr, ptr %i.abk, align 8, !tbaa !78
  %i.aek = getelementptr inbounds [4 x i8], ptr %i.aej, i64 %i.aef
  store i32 -1, ptr %i.aek, align 4, !tbaa !4
  %i.ael = load ptr, ptr %i.abl, align 8, !tbaa !79
  %i.aem = getelementptr inbounds [4 x i8], ptr %i.ael, i64 %i.aef
  store i32 -1, ptr %i.aem, align 4, !tbaa !4
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dl
  %i.aen = icmp sgt i32 %i.acf, 0
  br i1 %i.aen, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.aeo = load ptr, ptr %i.abi, align 8, !tbaa !76 ; 4 uses
  %i.aep = sext i32 %i.acd to i64                 ; 5 uses
  %i.aeq = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.aep
  store i32 -1, ptr %i.aeq, align 4, !tbaa !4
  %i.aer = add nsw i32 %i.acd, 1
  %i.aes = sext i32 %i.aer to i64                 ; 4 uses
  %i.aet = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.aes
  store i32 -1, ptr %i.aet, align 4, !tbaa !4
  %i.aeu = load ptr, ptr %i.abj, align 8, !tbaa !77 ; 4 uses
  %i.aev = getelementptr inbounds [4 x i8], ptr %i.aeu, i64 %i.aep
  store i32 -1, ptr %i.aev, align 4, !tbaa !4
  %i.aew = getelementptr inbounds [4 x i8], ptr %i.aeu, i64 %i.aes
  store i32 -1, ptr %i.aew, align 4, !tbaa !4
  %i.aex = load ptr, ptr %i.abk, align 8, !tbaa !78 ; 4 uses
  %i.aey = getelementptr inbounds [4 x i8], ptr %i.aex, i64 %i.aep
  store i32 -1, ptr %i.aey, align 4, !tbaa !4
  %i.aez = getelementptr inbounds [4 x i8], ptr %i.aex, i64 %i.aes
  store i32 -1, ptr %i.aez, align 4, !tbaa !4
  %i.afa = load ptr, ptr %i.abl, align 8, !tbaa !79 ; 4 uses
  %i.afb = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.aep
  store i32 -1, ptr %i.afb, align 4, !tbaa !4
  %i.afc = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.aes
  store i32 -1, ptr %i.afc, align 4, !tbaa !4
  %i.afd = load ptr, ptr %i.abr, align 8, !tbaa !88
  %i.afe = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.aep
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !4
  %i.afg = icmp eq i32 %i.aff, 1
  br i1 %i.afg, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.afh = add nsw i32 %i.acd, 2
  %i.afi = sext i32 %i.afh to i64                 ; 4 uses
  %i.afj = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.afi
  store i32 -1, ptr %i.afj, align 4, !tbaa !4
  %i.afk = add nsw i32 %i.acd, 3
  %i.afl = sext i32 %i.afk to i64                 ; 4 uses
  %i.afm = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.afl
  store i32 -1, ptr %i.afm, align 4, !tbaa !4
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.aeu, i64 %i.afi
  store i32 -1, ptr %i.afn, align 4, !tbaa !4
  %i.afo = getelementptr inbounds [4 x i8], ptr %i.aeu, i64 %i.afl
  store i32 -1, ptr %i.afo, align 4, !tbaa !4
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.aex, i64 %i.afi
  store i32 -1, ptr %i.afp, align 4, !tbaa !4
  %i.afq = getelementptr inbounds [4 x i8], ptr %i.aex, i64 %i.afl
  store i32 -1, ptr %i.afq, align 4, !tbaa !4
  %i.afr = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.afi
  store i32 -1, ptr %i.afr, align 4, !tbaa !4
  %i.afs = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.afl
  store i32 -1, ptr %i.afs, align 4, !tbaa !4
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dm, %bb.do, %bb.dp, %bb.dn, %bb.dh, %bb.dk
  %i.aft = load i32, ptr %i.ace, align 4, !tbaa !4
  %i.afu = icmp sgt i32 %i.aft, 0
  br i1 %i.afu, label %bb.dr, label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  %i.afv = add nsw i32 %i.acd, 1                  ; 2 uses
  %i.afw = load ptr, ptr %i.abr, align 8, !tbaa !88
  %i.afx = sext i32 %i.afv to i64                 ; 2 uses
  %i.afy = getelementptr inbounds [4 x i8], ptr %i.afw, i64 %i.afx
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !4
  switch i32 %i.afz, label %bb.dv [
    i32 -1, label %.sink.split552
    i32 -2, label %bb.ds
    i32 -3, label %bb.dt
    i32 -4, label %bb.du
  ]

bb.ds:                                            ; preds = %bb.dr
  br label %.sink.split552

bb.dt:                                            ; preds = %bb.dr
  br label %.sink.split552

bb.du:                                            ; preds = %bb.dr
  br label %.sink.split552

.sink.split552:                                   ; preds = %bb.dr, %bb.du, %bb.dt, %bb.ds
  %.sink554.in = phi ptr [ %i.abl, %bb.du ], [ %i.abj, %bb.ds ], [ %i.abk, %bb.dt ], [ %i.abi, %bb.dr ]
  %.sink554 = load ptr, ptr %.sink554.in, align 8, !tbaa !140
  %i.aga = getelementptr inbounds [4 x i8], ptr %.sink554, i64 %i.afx
  store i32 %i.afv, ptr %i.aga, align 4, !tbaa !4
  br label %bb.dv

bb.dv:                                            ; preds = %.sink.split552, %bb.dr, %bb.dq
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %exitcond501.not = icmp eq i64 %indvars.iv.next498, %wide.trip.count500
  br i1 %exitcond501.not, label %._crit_edge473, label %bb.cu, !llvm.loop !178

bb.dw:                                            ; preds = %bb.cs
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !76
  %i.agd = call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, ptr noundef %i.agc)
  store ptr %i.agd, ptr %i.agb, align 8, !tbaa !76
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !77
  %i.agg = call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, ptr noundef %i.agf)
  store ptr %i.agg, ptr %i.age, align 8, !tbaa !77
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !78
  %i.agj = call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, ptr noundef %i.agi)
  store ptr %i.agj, ptr %i.agh, align 8, !tbaa !78
  %i.agk = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !79
  %i.agm = call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, ptr noundef %i.agl)
  store ptr %i.agm, ptr %i.agk, align 8, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %._crit_edge473, %bb.dw, %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %.sroa.0.0.copyload = load i64, ptr %8, align 8, !tbaa !60
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !60
  %i.agn = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.agp = load double, ptr %i.ago, align 8, !tbaa !49
  %i.agq = fadd double %i.agn, %i.agp
  store double %i.agq, ptr %i.ago, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN4Mesh12rezone_countESt6vectorIiSaIiEERiS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2288) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %.thread, %bb.a
  %.023.lcssa = phi i32 [ 0, %bb.a ], [ %.124, %.thread ]
  %.022.lcssa = phi i32 [ 0, %bb.a ], [ %.130, %.thread ] ; 2 uses
  store i32 %.023.lcssa, ptr %2, align 4, !tbaa !4
  store i32 %.022.lcssa, ptr %3, align 4, !tbaa !4
  %i.j = load i32, ptr %2, align 4, !tbaa !4
  %i.k = add nsw i32 %i.j, %.022.lcssa
  ret i32 %i.k

bb.b:                                             ; preds = %.lr.ph, %.thread
  %i.l = phi i64 [ 0, %.lr.ph ], [ %5, %.thread ] ; 5 uses
  %.038 = phi i32 [ 0, %.lr.ph ], [ %4, %.thread ]
  %.02237 = phi i32 [ 0, %.lr.ph ], [ %.130, %.thread ] ; 6 uses
  %.02336 = phi i32 [ 0, %.lr.ph ], [ %.124, %.thread ] ; 6 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.l
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = icmp eq i32 %i.q, 1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.l
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 3 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = trunc i32 %i.t to i1
  %i.x = and i32 %i.v, 1
  %i.y = sub nsw i32 0, %i.x
  %i.z = select i1 %i.w, i32 -1, i32 %i.y
  %spec.select = add nsw i32 %i.z, %.02237
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.aa = and i32 %i.t, -2147483647
  %i.ab = icmp ne i32 %i.aa, 1
  %i.ac = and i32 %i.v, -2147483647
  %i.ad = icmp ne i32 %i.ac, 1
  %narrow.i.not = or i1 %i.ab, %i.ad
  br i1 %narrow.i.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = or i32 %i.v, %i.t
  %i.af = and i32 %i.ae, 1
  %spec.select28 = sub nsw i32 %.02237, %i.af
  br label %.thread

bb.g:                                             ; preds = %bb.b
  %.not31 = icmp eq i32 %i.n, 0
  br i1 %.not31, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.l
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = add nsw i32 %.02336, 3
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %.02336, 1
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.f, %bb.g, %bb.j, %bb.i
  %.130 = phi i32 [ %.02237, %bb.i ], [ %.02237, %bb.j ], [ %.02237, %bb.g ], [ %spec.select28, %bb.f ], [ %.02237, %bb.e ], [ %spec.select, %bb.d ] ; 2 uses
  %.124 = phi i32 [ %i.aj, %bb.i ], [ %i.ak, %bb.j ], [ %.02336, %bb.g ], [ %.02336, %bb.f ], [ %.02336, %bb.e ], [ %.02336, %bb.d ] ; 2 uses
  %4 = add i32 %.038, 1                           ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.al = icmp ugt i64 %i.b, %5
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !145
}

declare void @cpu_timer_start(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Mesh10get_boundsERiS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2288) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2) local_unnamed_addr #12 align 2 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47
  %i.c = trunc i64 %i.b to i32
  store i32 %i.c, ptr %2, align 4, !tbaa !4
  ret void
}

declare double @cpu_timer_stop(i64, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh9terminateEv(ptr noundef nonnull align 8 dereferenceable(2288) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.j = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef %i.i) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88
  %i.m = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef %i.l) ; 0 uses
  %i.n = load i8, ptr @neighbor_remap, align 1, !tbaa !177, !range !132, !noundef !133
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.r = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77
  %i.u = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.x = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef %i.w) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !79
  %i.aa = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef %i.z) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #6

declare void @KDTree_AddElement(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @_ZN4Mesh10set_boundsEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2288) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #31 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #31 ; 2 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = trunc i64 %i.l to i32
  store i32 0, ptr %i.e, align 4, !tbaa !4
  store i32 %i.m, ptr %i.j, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh11calc_minmaxEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2288) initializes((1184, 1192), (1200, 1208), (1216, 1224)) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  store double 1.000000e+30, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  store double 1.000000e+30, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  store double 1.000000e+30, ptr %i.c, align 8, !tbaa !179
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47   ; 7 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.preheader44.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %bb.b

.lr.ph50:                                         ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.j = phi i64 [ 0, %.lr.ph ], [ %2, %bb.d ]
  %.03248 = phi i32 [ 0, %.lr.ph ], [ %1, %bb.d ]
  %i.k = phi double [ 1.000000e+30, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j
  %i.m = load double, ptr %i.l, align 8, !tbaa !49 ; 3 uses
  %i.n = fcmp olt double %i.m, %i.k
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double %i.m, ptr %i.a, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = phi double [ %i.k, %bb.b ], [ %i.m, %bb.c ]
  %1 = add i32 %.03248, 1                         ; 2 uses
  %2 = zext i32 %1 to i64                         ; 2 uses
  %i.p = icmp ugt i64 %i.e, %2
  br i1 %i.p, label %bb.b, label %.lr.ph50, !llvm.loop !180

._crit_edge:                                      ; preds = %bb.g
  %i.q = load i32, ptr %0, align 8, !tbaa !61
  %i.r = icmp sgt i32 %i.q, 2                     ; 2 uses
  br i1 %i.r, label %.lr.ph53, label %.lr.ph57

.lr.ph53:                                         ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph50, %bb.g
  %3 = phi double [ 1.000000e+30, %.lr.ph50 ], [ %i.y, %bb.g ] ; 2 uses
  %i.u = phi i64 [ 0, %.lr.ph50 ], [ %5, %bb.g ]
  %.03349 = phi i32 [ 0, %.lr.ph50 ], [ %4, %bb.g ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !49 ; 3 uses
  %i.x = fcmp olt double %i.w, %3
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %i.w, ptr %i.b, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.y = phi double [ %3, %bb.e ], [ %i.w, %bb.f ]
  %4 = add i32 %.03349, 1                         ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.z = icmp ugt i64 %i.e, %5
  br i1 %i.z, label %bb.e, label %._crit_edge, !llvm.loop !181

bb.h:                                             ; preds = %.lr.ph53, %bb.j
  %6 = phi double [ 1.000000e+30, %.lr.ph53 ], [ %i.ae, %bb.j ] ; 2 uses
  %i.aa = phi i64 [ 0, %.lr.ph53 ], [ %8, %bb.j ]
  %.03452 = phi i32 [ 0, %.lr.ph53 ], [ %7, %bb.j ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !49 ; 3 uses
  %i.ad = fcmp olt double %i.ac, %6
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.ac, ptr %i.c, align 8, !tbaa !179
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ae = phi double [ %6, %bb.h ], [ %i.ac, %bb.i ]
  %7 = add i32 %.03452, 1                         ; 2 uses
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.af = icmp ugt i64 %i.e, %8
  br i1 %i.af, label %bb.h, label %.lr.ph57, !llvm.loop !182

.preheader44.thread:                              ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store double -1.000000e+30, ptr %i.ag, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store double -1.000000e+30, ptr %i.ah, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store double -1.000000e+30, ptr %i.ai, align 8, !tbaa !183
  br label %.loopexit

.lr.ph57:                                         ; preds = %bb.j, %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  store double -1.000000e+30, ptr %i.aj, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  store double -1.000000e+30, ptr %i.ak, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  store double -1.000000e+30, ptr %i.al, align 8, !tbaa !183
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48
  br label %bb.k

.lr.ph60:                                         ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !48
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph57, %bb.m
  %9 = phi double [ -1.000000e+30, %.lr.ph57 ], [ %i.bb, %bb.m ] ; 2 uses
  %i.au = phi i64 [ 0, %.lr.ph57 ], [ %11, %bb.m ] ; 2 uses
  %.03155 = phi i32 [ 0, %.lr.ph57 ], [ %10, %bb.m ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.au
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !49
  %i.az = fadd double %i.aw, %i.ay                ; 3 uses
  %i.ba = fcmp ogt double %i.az, %9
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.az, ptr %i.aj, align 8, !tbaa !45
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bb = phi double [ %9, %bb.k ], [ %i.az, %bb.l ]
  %10 = add i32 %.03155, 1                        ; 2 uses
  %11 = zext i32 %10 to i64                       ; 2 uses
  %i.bc = icmp ugt i64 %i.e, %11
  br i1 %i.bc, label %bb.k, label %.lr.ph60, !llvm.loop !184

._crit_edge61:                                    ; preds = %bb.p
  br i1 %i.r, label %.lr.ph64, label %.loopexit

.lr.ph64:                                         ; preds = %._crit_edge61
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !48
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph60, %bb.p
  %12 = phi double [ -1.000000e+30, %.lr.ph60 ], [ %i.bo, %bb.p ] ; 2 uses
  %i.bh = phi i64 [ 0, %.lr.ph60 ], [ %14, %bb.p ] ; 2 uses
  %.03059 = phi i32 [ 0, %.lr.ph60 ], [ %13, %bb.p ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !49
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bh
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !49
  %i.bm = fadd double %i.bj, %i.bl                ; 3 uses
  %i.bn = fcmp ogt double %i.bm, %12
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store double %i.bm, ptr %i.ak, align 8, !tbaa !46
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bo = phi double [ %12, %bb.n ], [ %i.bm, %bb.o ]
  %13 = add i32 %.03059, 1                        ; 2 uses
  %14 = zext i32 %13 to i64                       ; 2 uses
  %i.bp = icmp ugt i64 %i.e, %14
  br i1 %i.bp, label %bb.n, label %._crit_edge61, !llvm.loop !185

bb.q:                                             ; preds = %.lr.ph64, %bb.s
  %15 = phi double [ -1.000000e+30, %.lr.ph64 ], [ %i.bx, %bb.s ] ; 2 uses
  %i.bq = phi i64 [ 0, %.lr.ph64 ], [ %17, %bb.s ] ; 2 uses
  %.063 = phi i32 [ 0, %.lr.ph64 ], [ %16, %bb.s ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !49
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bq
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !49
  %i.bv = fadd double %i.bs, %i.bu                ; 3 uses
  %i.bw = fcmp ogt double %i.bv, %15
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.bv, ptr %i.al, align 8, !tbaa !183
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bx = phi double [ %15, %bb.q ], [ %i.bv, %bb.r ]
  %16 = add i32 %.063, 1                          ; 2 uses
  %17 = zext i32 %16 to i64                       ; 2 uses
  %i.by = icmp ugt i64 %i.e, %17
  br i1 %i.by, label %bb.q, label %.loopexit, !llvm.loop !186

.loopexit:                                        ; preds = %bb.s, %.preheader44.thread, %._crit_edge61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh17calc_centerminmaxEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2288) initializes((1232, 1280)) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store <2 x double> <double 1.000000e+30, double -1.000000e+30>, ptr %i.a, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store <2 x double> <double 1.000000e+30, double -1.000000e+30>, ptr %i.b, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store <2 x double> <double 1.000000e+30, double -1.000000e+30>, ptr %i.c, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47   ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  br label %bb.b

.lr.ph38:                                         ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.q = phi i64 [ 0, %.lr.ph ], [ %2, %bb.f ]    ; 2 uses
  %.02536 = phi i32 [ 0, %.lr.ph ], [ %1, %bb.f ]
  %i.r = phi double [ 1.000000e+30, %.lr.ph ], [ %i.aa, %bb.f ] ; 2 uses
  %i.s = phi double [ -1.000000e+30, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.q
  %i.u = load double, ptr %i.t, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.q
  %i.w = load double, ptr %i.v, align 8, !tbaa !49
  %i.x = fmul double %i.w, 5.000000e-01
  %i.y = fadd double %i.u, %i.x                   ; 6 uses
  %i.z = fcmp olt double %i.y, %i.r
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double %i.y, ptr %i.a, align 8, !tbaa !187
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi double [ %i.y, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = fcmp ogt double %i.y, %i.s
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.y, ptr %i.d, align 8, !tbaa !188
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ac = phi double [ %i.s, %bb.d ], [ %i.y, %bb.e ]
  %1 = add i32 %.02536, 1                         ; 2 uses
  %2 = zext i32 %1 to i64                         ; 2 uses
  %i.ad = icmp ugt i64 %i.h, %2
  br i1 %i.ad, label %bb.b, label %.lr.ph38, !llvm.loop !189

._crit_edge:                                      ; preds = %bb.k
  %i.ae = load i32, ptr %0, align 8, !tbaa !61
  %i.af = icmp sgt i32 %i.ae, 2
  br i1 %i.af, label %.lr.ph42, label %.loopexit

.lr.ph42:                                         ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph38, %bb.k
  %3 = phi double [ -1.000000e+30, %.lr.ph38 ], [ %i.au, %bb.k ] ; 2 uses
  %i.ak = phi double [ 1.000000e+30, %.lr.ph38 ], [ %i.as, %bb.k ] ; 2 uses
  %4 = phi i64 [ 0, %.lr.ph38 ], [ %6, %bb.k ]    ; 2 uses
  %.02437 = phi i32 [ 0, %.lr.ph38 ], [ %5, %bb.k ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %4
  %i.am = load double, ptr %i.al, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %4
  %i.ao = load double, ptr %i.an, align 8, !tbaa !49
  %i.ap = fmul double %i.ao, 5.000000e-01
  %i.aq = fadd double %i.am, %i.ap                ; 6 uses
  %i.ar = fcmp olt double %i.aq, %i.ak
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.aq, ptr %i.b, align 8, !tbaa !190
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = phi double [ %i.aq, %bb.h ], [ %i.ak, %bb.g ]
  %i.at = fcmp ogt double %i.aq, %3
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.aq, ptr %i.e, align 8, !tbaa !191
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.au = phi double [ %3, %bb.i ], [ %i.aq, %bb.j ]
  %5 = add i32 %.02437, 1                         ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.av = icmp ugt i64 %i.h, %6
  br i1 %i.av, label %bb.g, label %._crit_edge, !llvm.loop !192

bb.l:                                             ; preds = %.lr.ph42, %bb.p
  %7 = phi double [ -1.000000e+30, %.lr.ph42 ], [ %i.bg, %bb.p ] ; 2 uses
  %i.aw = phi double [ 1.000000e+30, %.lr.ph42 ], [ %i.be, %bb.p ] ; 2 uses
  %8 = phi i64 [ 0, %.lr.ph42 ], [ %10, %bb.p ]   ; 2 uses
  %.041 = phi i32 [ 0, %.lr.ph42 ], [ %9, %bb.p ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %8
  %i.ba = load double, ptr %i.az, align 8, !tbaa !49
  %i.bb = fmul double %i.ba, 5.000000e-01
  %i.bc = fadd double %i.ay, %i.bb                ; 6 uses
  %i.bd = fcmp olt double %i.bc, %i.aw
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %i.bc, ptr %i.c, align 8, !tbaa !193
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.be = phi double [ %i.bc, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = fcmp ogt double %i.bc, %7
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store double %i.bc, ptr %i.f, align 8, !tbaa !194
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bg = phi double [ %7, %bb.n ], [ %i.bc, %bb.o ]
  %9 = add i32 %.041, 1                           ; 2 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %i.bh = icmp ugt i64 %i.h, %10
  br i1 %i.bh, label %bb.l, label %.loopexit, !llvm.loop !195

.loopexit:                                        ; preds = %bb.p, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #15

declare noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96), i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN10MallocPlus11memory_swapEPPiS1_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4Mesh20set_refinement_orderEPiiiiiiiiS0_S0_S0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2288) %0, ptr nofree noundef writeonly initializes((0, 16)) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr @localStencil, align 1, !tbaa !177, !range !132, !noundef !133
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.dk

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !94   ; 5 uses
  %i.e = sext i32 %2 to i64                       ; 3 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %11, i64 %i.e ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = sub nsw i32 %i.d, %i.g                   ; 5 uses
  %i.i = shl i32 2, %i.h                          ; 18 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %2, -1
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %9, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds [4 x i8], ptr %11, i64 %i.k
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = sub nsw i32 %i.d, %i.o
  %i.q = shl i32 2, %i.p                          ; 2 uses
  %i.r = mul nsw i32 %i.q, %i.m
  %i.s = getelementptr inbounds [4 x i8], ptr %10, i64 %i.k
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = mul nsw i32 %i.q, %i.t
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = sub nsw i32 %i.d, %7
  %i.w = shl i32 2, %i.v                          ; 2 uses
  %i.x = mul nsw i32 %i.w, %3
  %i.y = mul nsw i32 %i.w, %5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi i32 [ %i.u, %bb.c ], [ %i.y, %bb.d ] ; 2 uses
  %.sroa.0364.0 = phi i32 [ %i.r, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %9, i64 %i.e
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = mul nsw i32 %i.aa, %i.i                 ; 4 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %10, i64 %i.e
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = mul nsw i32 %i.ad, %i.i                 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !47
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -1
  %.not548 = icmp eq i32 %2, %i.ai
  br i1 %.not548, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = add nsw i32 %2, 1
  %i.ak = sext i32 %i.aj to i64                   ; 3 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr inbounds [4 x i8], ptr %11, i64 %i.ak
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sub nsw i32 %i.d, %i.ao
  %i.aq = shl i32 2, %i.ap                        ; 2 uses
  %i.ar = mul nsw i32 %i.aq, %i.am
  %i.as = getelementptr inbounds [4 x i8], ptr %10, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = mul nsw i32 %i.aq, %i.at
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.av = sub nsw i32 %i.d, %8
  %i.aw = shl i32 2, %i.av                        ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %4
  %i.ay = mul nsw i32 %i.aw, %6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.8.0 = phi i32 [ %i.au, %bb.f ], [ %i.ay, %bb.g ] ; 2 uses
  %.sroa.8367.0 = phi i32 [ %i.ar, %bb.f ], [ %i.ax, %bb.g ] ; 2 uses
  %i.az = sub nsw i32 %i.ab, %.sroa.0364.0        ; 11 uses
  %i.ba = sub nsw i32 %i.ab, %.sroa.8367.0        ; 11 uses
  %i.bb = sub nsw i32 %i.ae, %.sroa.0.0           ; 8 uses
  %i.bc = sub nsw i32 %i.ae, %.sroa.8.0           ; 8 uses
  %i.bd = icmp eq i32 %i.ae, %.sroa.0.0           ; 4 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = sitofp i32 %i.az to double
  %i.bf = sitofp i32 %i.i to double
  %i.bg = fmul nnan double %i.bf, 5.000000e-01
  %i.bh = fcmp oeq double %i.bg, %i.be
  %i.bi = icmp eq i32 %i.az, %i.i
  %or.cond550 = select i1 %i.bh, i1 true, i1 %i.bi
  %i.bj = shl i32 4, %i.h
  %i.bk = icmp eq i32 %i.az, %i.bj
  %or.cond552 = select i1 %or.cond550, i1 true, i1 %i.bk
  br i1 %or.cond552, label %bb.ah, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bl = sitofp i32 %i.bb to double              ; 3 uses
  %i.bm = sub nsw i32 0, %i.i                     ; 3 uses
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = fmul nnan double %i.bn, 5.000000e-01    ; 2 uses
  %i.bp = fcmp oeq double %i.bo, %i.bl            ; 2 uses
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = sitofp i32 %i.az to double
  %i.br = sitofp i32 %i.i to double
  %i.bs = fmul nnan double %i.br, 5.000000e-01
  %i.bt = fcmp oeq double %i.bs, %i.bq
  br i1 %i.bt, label %bb.ah, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = icmp eq i32 %i.bb, %i.i                 ; 3 uses
  %i.bv = shl i32 4, %i.h                         ; 3 uses
  %i.bw = icmp eq i32 %i.az, %i.bv
  %or.cond554 = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond554, label %bb.ah, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = icmp eq i32 %i.ab, %.sroa.0364.0        ; 4 uses
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = sitofp i32 %i.i to double
  %i.bz = fmul nnan double %i.by, 5.000000e-01
  %i.ca = fcmp oeq double %i.bz, %i.bl
  %brmerge = or i1 %i.bu, %i.ca
  %i.cb = icmp eq i32 %i.bb, %i.bv
  %or.cond556 = select i1 %brmerge, i1 true, i1 %i.cb
  br i1 %or.cond556, label %bb.ah, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cc = sitofp i32 %i.az to double
  %i.cd = fcmp oeq double %i.bo, %i.cc            ; 2 uses
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ce = sitofp i32 %i.i to double
  %i.cf = fmul nnan double %i.ce, 5.000000e-01
  %i.cg = fcmp oeq double %i.cf, %i.bl
  br i1 %i.cg, label %bb.ah, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ch = icmp eq i32 %i.az, %i.i                 ; 2 uses
  %i.ci = icmp eq i32 %i.bb, %i.bv
  %or.cond558 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond558, label %bb.ah, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = icmp eq i32 %i.az, %i.bm
  br i1 %i.cj, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %or.cond = or i1 %i.bd, %i.bp
  br i1 %or.cond, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.bu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr i8, ptr %i.f, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = icmp slt i32 %i.cl, %i.g
  br i1 %i.cm, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %i.cn = icmp eq i32 %i.bb, %i.bm
  br i1 %i.cn, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %or.cond3 = or i1 %i.bx, %i.cd
  br i1 %or.cond3, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
end_hunk_3
begin_hunk_4_@_ZN4Mesh14calc_neighborsEi:bb.a
bb.cr:                                            ; preds = %._crit_edge
  %.sroa.01.0.copyload = load i64, ptr %5, align 8, !tbaa !60
  %.sroa.22.0.copyload = load i64, ptr %.sroa.249.0..sroa_idx, align 8, !tbaa !60
  %i.td = invoke double @cpu_timer_stop(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload)
          to label %bb.cs unwind label %.loopexit.split-lp

bb.cs:                                            ; preds = %bb.cr
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.tf = load double, ptr %i.te, align 8, !tbaa !49
  %i.tg = fadd double %i.td, %i.tf
  store double %i.tg, ptr %i.te, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not.i.i.i = icmp eq ptr %.sroa.0370.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.th = ptrtoint ptr %.sroa.0370.0 to i64
  %i.ti = sub i64 %.sroa.17.0, %i.th
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0370.0, i64 noundef %i.ti) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.cw

.loopexit:                                        ; preds = %bb.cc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp:                               ; preds = %bb.cb, %bb.cr, %._crit_edge, %bb.cd, %.loopexit408, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not.i.i.i368 = icmp eq ptr %.sroa.0370.0, null
  br i1 %.not.i.i.i368, label %_ZNSt6vectorIiSaIiEED2Ev.exit369, label %bb.cv

bb.cv:                                            ; preds = %.thread, %bb.cu
  %.pn403 = phi { ptr, i32 } [ %i.pn, %.thread ], [ %lpad.phi, %bb.cu ]
  %i.tj = ptrtoint ptr %.sroa.0370.0 to i64
  %i.tk = sub i64 %.sroa.17.0, %i.tj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0370.0, i64 noundef %i.tk) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit369

_ZNSt6vectorIiSaIiEED2Ev.exit369:                 ; preds = %bb.cv, %bb.cu
  %.pn.pn = phi { ptr, i32 } [ %.pn403, %bb.cv ], [ %lpad.phi, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn.pn

bb.cw:                                            ; preds = %.loopexit409, %_ZNSt6vectorIiSaIiEED2Ev.exit, %._crit_edge420
  %i.tl = sext i32 %1 to i64
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i64 %i.tl, ptr %i.tm, align 8, !tbaa !81
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.a
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !tbaa !60
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !60
  %i.tn = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.tp = load double, ptr %i.to, align 8, !tbaa !49
  %i.tq = fadd double %i.tn, %i.tp
  store double %i.tq, ptr %i.to, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

declare ptr @compact_hash_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @write_hash_collision_report() local_unnamed_addr #6

declare void @read_hash_collision_report() local_unnamed_addr #6

declare void @compact_hash_delete(ptr noundef) local_unnamed_addr #6

declare void @KDTree_QueryBoxIntersect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh24print_calc_neighbor_typeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2288) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr @calc_neighbor_type, align 4, !tbaa !4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !83
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %.pr = load i32, ptr %i.c, align 4, !tbaa !83
  %i.f = icmp eq i32 %.pr, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 1
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void @final_hash_collision_report()
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = uitofp i64 %i.k to double
  %i.m = tail call noundef double @log(double noundef %i.l) #28, !tbaa !4
  %i.n = fptosi double %i.m to i32
  %i.o = sext i32 %i.n to i64
  %i.p = shl i64 %i.k, 2
  %i.q = mul i64 %i.p, %i.o
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i64 noundef %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.t = load i32, ptr %i.s, align 4, !tbaa !83
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.e, %bb.f, %bb.c, %bb.d
  ret void
}

declare void @final_hash_collision_report() local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN4Mesh22get_calc_neighbor_typeEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2288) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = load i32, ptr @calc_neighbor_type, align 4, !tbaa !4
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh22calc_celltype_threadedEm(ptr noundef nonnull align 8 dereferenceable(2288) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = tail call noundef i64 @_ZN10MallocPlus15get_memory_sizeEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %i.b)
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %.pr)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !88
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 noundef %1, i64 noundef 4, ptr noundef nonnull @.str.49, i32 noundef 0)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !88
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.b
  %.not28 = icmp eq i64 %1, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  br label %bb.f

._crit_edge:                                      ; preds = %bb.n, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.n
  %i.y = phi i64 [ 0, %.lr.ph ], [ %5, %bb.n ]
  %.027 = phi i32 [ 0, %.lr.ph ], [ %4, %bb.n ]   ; 2 uses
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y ; 5 uses
  store i32 1, ptr %2, align 4, !tbaa !4
  %3 = sext i32 %.027 to i64                      ; 3 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.l, i64 %3 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4   ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.o, i64 %3 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %.not23 = icmp slt i32 %i.aa, %i.af
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -1, ptr %2, align 4, !tbaa !4
  %.pre = load i32, ptr %i.z, align 4, !tbaa !4
  %.pre29 = load i32, ptr %i.ab, align 4, !tbaa !4
  %.pre33 = sext i32 %.pre29 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi = phi i64 [ %.pre33, %bb.g ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ag = phi i32 [ %.pre, %bb.g ], [ %i.aa, %bb.f ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.pre-phi
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %.not24 = icmp sgt i32 %i.ag, %i.ai
  br i1 %.not24, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -2, ptr %2, align 4, !tbaa !4
  %.pre30 = load i32, ptr %i.ab, align 4, !tbaa !4
  %.pre34 = sext i32 %.pre30 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi35 = phi i64 [ %.pre34, %bb.i ], [ %.pre-phi, %bb.h ] ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.t, i64 %3 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.pre-phi35
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %.not25 = icmp slt i32 %i.ak, %i.am
  br i1 %.not25, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 -3, ptr %2, align 4, !tbaa !4
  %.pre31 = load i32, ptr %i.aj, align 4, !tbaa !4
  %.pre32 = load i32, ptr %i.ab, align 4, !tbaa !4
  %.pre36 = sext i32 %.pre32 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi37 = phi i64 [ %.pre36, %bb.k ], [ %.pre-phi35, %bb.j ]
  %i.an = phi i32 [ %.pre31, %bb.k ], [ %i.ak, %bb.j ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.pre-phi37
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %.not26 = icmp sgt i32 %i.an, %i.ap
  br i1 %.not26, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 -4, ptr %2, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %4 = add i32 %.027, 1                           ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.aq = icmp ugt i64 %1, %5
  br i1 %i.aq, label %bb.f, label %._crit_edge, !llvm.loop !199
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh13calc_symmetryERSt6vectorIiSaIiEES3_S3_(ptr noundef nonnull align 8 dereferenceable(2288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.TBounds, align 8            ; 12 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.c = load i32, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %i.d = mul nsw i32 %i.c, %i.c                   ; 2 uses
  %i.e = shl i32 2, %i.d                          ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = icmp slt i32 %i.e, 0
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #34
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp samesign ugt i32 %i.d, 30
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 2                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #33 ; 5 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f
  store i32 0, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.h, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !4
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread:        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !47
  %.not63 = icmp eq i64 %i.p, 0
  br i1 %.not63, label %._crit_edge.thread70, label %.lr.ph

._crit_edge.thread70:                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.q = phi ptr [ %i.o, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread ], [ %i.m, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ]
  %.sroa.050.067 = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread ], [ %i.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 9 uses
  %.sroa.15.064 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread ], [ %i.l, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  br label %bb.b

._crit_edge.thread:                               ; preds = %bb.k, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.sroa.050.069 = phi ptr [ %i.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %.sroa.050.067, %bb.k ] ; 2 uses
  %.sroa.15.065 = phi i64 [ %i.l, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %.sroa.15.064, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.z = ptrtoint ptr %.sroa.050.069 to i64
  %i.aa = sub i64 %.sroa.15.065, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.069, i64 noundef %i.aa) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge.thread70, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.ab = phi i64 [ 0, %.lr.ph ], [ %i.ed, %bb.k ] ; 18 uses
  %.059 = phi i32 [ 0, %.lr.ph ], [ %i.ec, %bb.k ] ; 4 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  store i32 %.059, ptr %i.ad, align 4, !tbaa !4
  %i.ae = load ptr, ptr %2, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ab
  store i32 %.059, ptr %i.af, align 4, !tbaa !4
  %i.ag = load ptr, ptr %3, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ab
  store i32 %.059, ptr %i.ah, align 4, !tbaa !4
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ab ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !49
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ab ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !49
  %i.ao = fmul double %i.an, 5.000000e-01
  %i.ap = fadd double %i.ak, %i.ao
  %i.aq = fneg double %i.ap
  store double %i.aq, ptr %4, align 8, !tbaa !119
  %i.ar = load double, ptr %i.aj, align 8, !tbaa !49
  %i.as = load double, ptr %i.am, align 8, !tbaa !49
  %i.at = fmul double %i.as, 5.000000e-01
  %i.au = fadd double %i.ar, %i.at
  %i.av = fneg double %i.au
  store double %i.av, ptr %i.t, align 8, !tbaa !120
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !49
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ab ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !49
  %i.bc = fmul double %i.bb, 5.000000e-01
  %i.bd = fadd double %i.ay, %i.bc
  %i.be = fneg double %i.bd
  store double %i.be, ptr %i.w, align 8, !tbaa !121
  %i.bf = load double, ptr %i.ax, align 8, !tbaa !49
  %i.bg = load double, ptr %i.ba, align 8, !tbaa !49
  %i.bh = fmul double %i.bg, 5.000000e-01
  %i.bi = fadd double %i.bf, %i.bh
  %i.bj = fneg double %i.bi
  store double %i.bj, ptr %i.x, align 8, !tbaa !122
  invoke void @KDTree_QueryBoxIntersect(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.050.067, ptr noundef nonnull %4)
          to label %bb.c unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit49

bb.c:                                             ; preds = %bb.b
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !4
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bm = load i32, ptr %.sroa.050.067, align 4, !tbaa !4
  %i.bn = load ptr, ptr %1, align 8, !tbaa !63
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ab
  store i32 %i.bm, ptr %i.bo, align 4, !tbaa !4
  br label %bb.e

_ZNSt6vectorIiSaIiEED2Ev.exit49:                  ; preds = %bb.h, %bb.e, %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bq = ptrtoint ptr %.sroa.050.067 to i64
  %i.br = sub i64 %.sroa.15.064, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.067, i64 noundef %i.br) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.bp

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ab ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !49
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ab ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !49
  %i.by = fmul double %i.bx, 5.000000e-01
  %i.bz = fadd double %i.bu, %i.by
  %i.ca = fneg double %i.bz
  store double %i.ca, ptr %4, align 8, !tbaa !119
  %i.cb = load double, ptr %i.bt, align 8, !tbaa !49
  %i.cc = load double, ptr %i.bw, align 8, !tbaa !49
  %i.cd = fmul double %i.cc, 5.000000e-01
  %i.ce = fadd double %i.cb, %i.cd
  %i.cf = fneg double %i.ce
  store double %i.cf, ptr %i.t, align 8, !tbaa !120
  %i.cg = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ab ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !49
  %i.cj = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ab ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !49
  %i.cm = fmul double %i.cl, 5.000000e-01
  %i.cn = fadd double %i.ci, %i.cm
  store double %i.cn, ptr %i.w, align 8, !tbaa !121
  %i.co = load double, ptr %i.ch, align 8, !tbaa !49
  %i.cp = load double, ptr %i.ck, align 8, !tbaa !49
  %i.cq = fmul double %i.cp, 5.000000e-01
  %i.cr = fadd double %i.co, %i.cq
  store double %i.cr, ptr %i.x, align 8, !tbaa !122
  invoke void @KDTree_QueryBoxIntersect(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.050.067, ptr noundef nonnull %4)
          to label %bb.f unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit49

bb.f:                                             ; preds = %bb.e
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cu = load i32, ptr %.sroa.050.067, align 4, !tbaa !4
  %i.cv = load ptr, ptr %2, align 8, !tbaa !63
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ab
  store i32 %i.cu, ptr %i.cw, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cx = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ab ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !49
  %i.da = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.ab ; 2 uses
end_hunk_4
