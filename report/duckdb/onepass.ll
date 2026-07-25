inline.NumInlined: 434
inline.NumDeleted: 268
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN10duckdb_re24Prog9IsOnePassEv:bb.a
  switch i32 %i.dk, label %default.unreachable [
    i32 1, label %bb.w
    i32 2, label %bb.z
    i32 3, label %bb.aw
    i32 4, label %bb.aw
    i32 6, label %bb.aw
    i32 5, label %bb.bg
    i32 7, label %.loopexit
    i32 0, label %bb.r
  ]

default.unreachable:                              ; preds = %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261
  unreachable

bb.r:                                             ; preds = %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i8 0, ptr %4, align 8, !tbaa !7
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.bw)
          to label %_ZN10LogMessageC2EPKci.exit unwind label %bb.t

_ZN10LogMessageC2EPKci.exit:                      ; preds = %bb.r
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.2, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN10LogMessageC2EPKci.exit
  %i.dm = load i32, ptr %i.di, align 4, !tbaa !104
  %i.dn = and i32 %i.dm, 7
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i32 noundef %i.dn)
          to label %bb.s unwind label %bb.u       ; 0 uses

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !22
  %i.dp = load i64, ptr %i.bz, align 8
  %i.dq = getelementptr inbounds i8, ptr %i.bw, i64 %i.dp
  store ptr %i.by, ptr %i.dq, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ca, align 8, !tbaa !22
  %i.dr = load ptr, ptr %i.cb, align 8, !tbaa !24 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cc
  br i1 %i.ds, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.dr) #13
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ca, align 8, !tbaa !22
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cd) #12
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ce) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZN10LogMessageC2EPKci.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn217 = phi { ptr, i32 } [ %i.du, %bb.u ], [ %i.dt, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.bp

bb.w:                                             ; preds = %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261
  %i.dv = add nsw i32 %.0193, 1                   ; 7 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = load i32, ptr %i.bi, align 8
  %.not6.i.i255 = icmp ugt i32 %i.dx, %i.dv
  br i1 %.not6.i.i255, label %bb.y, label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge

bb.y:                                             ; preds = %bb.x
  %i.dy = sext i32 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3  ; 2 uses
  %i.eb = load i32, ptr %3, align 8, !tbaa !83    ; 4 uses
  %i.ec = icmp ult i32 %i.ea, %i.eb
  br i1 %i.ec, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i259, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i258

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i259: ; preds = %bb.y
  %i.ed = sext i32 %i.ea to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eg = icmp eq i32 %i.ef, %i.dv
  br i1 %i.eg, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i258

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i258: ; preds = %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i259, %bb.y
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !3
  %i.eh = sext i32 %i.eb to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.eh
  store i32 %i.dv, ptr %i.ei, align 4, !tbaa !3
  %i.ej = add nsw i32 %i.eb, 1
  store i32 %i.ej, ptr %3, align 8, !tbaa !83
  br label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge

bb.z:                                             ; preds = %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261
  %i.ek = lshr i32 %i.dj, 4                       ; 5 uses
  %i.el = zext nneg i32 %i.ek to i64              ; 4 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3  ; 2 uses
  %i.eo = icmp eq i32 %i.en, -1
  br i1 %i.eo, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %.not209 = icmp slt i32 %.2171, %i.n
  br i1 %.not209, label %bb.ab, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313

bb.ab:                                            ; preds = %bb.aa
  %i.ep = icmp eq i32 %i.ek, 0
  br i1 %i.ep, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eq = load i32, ptr %i.ax, align 8
  %.not6.i.i263 = icmp ugt i32 %i.eq, %i.ek
  br i1 %.not6.i.i263, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.el ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3  ; 2 uses
  %i.et = load i32, ptr %2, align 8, !tbaa !83    ; 4 uses
  %i.eu = icmp ult i32 %i.es, %i.et
  br i1 %i.eu, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i267, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i266

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i267: ; preds = %bb.ad
  %i.ev = sext i32 %i.es to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !3
  %i.ey = icmp eq i32 %i.ex, %i.ek
  br i1 %i.ey, label %bb.ae, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i266

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i266: ; preds = %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i267, %bb.ad
  store i32 %i.et, ptr %i.er, align 4, !tbaa !3
  %i.ez = sext i32 %i.et to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ez
  store i32 %i.ek, ptr %i.fa, align 4, !tbaa !3
  %i.fb = add nsw i32 %i.et, 1
  store i32 %i.fb, ptr %2, align 8, !tbaa !83
  %.pre489 = load i32, ptr %i.di, align 4, !tbaa !104
  %.pre494 = lshr i32 %.pre489, 4
  %.pre495 = zext nneg i32 %.pre494 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i267, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i266
  %.pre-phi496 = phi i64 [ 0, %bb.ab ], [ %i.el, %bb.ac ], [ %i.el, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i267 ], [ %.pre495, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i266 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.pre-phi496
  store i32 %.2171, ptr %i.fc, align 4, !tbaa !3
  %i.fd = load ptr, ptr %i.bt, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 0, ptr %i.b, align 1, !tbaa !73
  %i.fe = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = getelementptr inbounds i8, ptr %i.fe, i64 %i.fh
  invoke void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.fi, i64 noundef %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fj = load ptr, ptr %1, align 8, !tbaa !25
  %i.fk = add nsw i32 %.2171, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 %i.cq
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.bp

bb.ah:                                            ; preds = %bb.af, %bb.z
  %.0187 = phi i32 [ %.2171, %bb.af ], [ %i.en, %bb.z ] ; 2 uses
  %.2183 = phi ptr [ %i.fl, %bb.af ], [ %.1182, %bb.z ] ; 6 uses
  %.3172 = phi i32 [ %i.fk, %bb.af ], [ %.2171, %bb.z ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 4, !tbaa !73  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.di, i64 5 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !73  ; 3 uses
  %.not210454 = icmp ugt i8 %i.fo, %i.fq
  br i1 %.not210454, label %._crit_edge458, label %.lr.ph457

.lr.ph457:                                        ; preds = %bb.ah
  %i.fr = zext i8 %i.fo to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %.2183, i64 4
  %i.ft = shl i32 %.0187, 16
  %i.fu = zext nneg i8 %.1202 to i32
  %i.fv = shl nuw nsw i32 %i.fu, 6
  %i.fw = or disjoint i32 %i.ft, %i.fv
  %spec.select = or i32 %i.fw, %.0189             ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph457, %bb.am
  %i.fx = phi i8 [ %i.fq, %.lr.ph457 ], [ %i.gk, %bb.am ]
  %.0179455 = phi i32 [ %i.fr, %.lr.ph457 ], [ %i.gl, %bb.am ] ; 2 uses
  %i.fy = sext i32 %.0179455 to i64               ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.cf, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !73  ; 2 uses
  %exitcond.not617 = icmp eq i32 %.0179455, 255
  br i1 %exitcond.not617, label %.critedge, label %.lr.ph620

bb.aj:                                            ; preds = %.lr.ph620
  %exitcond.not = icmp eq i64 %indvars.iv.next479, 255
  br i1 %exitcond.not, label %.critedge, label %.lr.ph620, !llvm.loop !106

.lr.ph620:                                        ; preds = %bb.ai, %bb.aj
  %indvars.iv478618 = phi i64 [ %indvars.iv.next479, %bb.aj ], [ %i.fy, %bb.ai ] ; 2 uses
  %indvars.iv.next479 = add nsw i64 %indvars.iv478618, 1 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %i.cf, i64 %indvars.iv.next479
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !73
  %i.gd = icmp eq i8 %i.gc, %i.ga
  br i1 %i.gd, label %bb.aj, label %.critedge.split.loop.exit577, !llvm.loop !106

.critedge.split.loop.exit577:                     ; preds = %.lr.ph620
  %i.ge = trunc nsw i64 %indvars.iv478618 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.aj, %bb.ai, %.critedge.split.loop.exit577
  %.1180.lcssa = phi i32 [ %i.ge, %.critedge.split.loop.exit577 ], [ 255, %bb.ai ], [ 255, %bb.aj ] ; 2 uses
  %i.gf = zext i8 %i.ga to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gf ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3  ; 2 uses
  %i.gi = and i32 %i.gh, 48
  %i.gj = icmp eq i32 %i.gi, 48
  br i1 %i.gj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge
  store i32 %spec.select, ptr %i.gg, align 4, !tbaa !3
  %.pre490 = load i8, ptr %i.fp, align 1, !tbaa !73
  br label %bb.am

bb.al:                                            ; preds = %.critedge
  %.not211 = icmp eq i32 %i.gh, %spec.select
  br i1 %.not211, label %bb.am, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.gk = phi i8 [ %.pre490, %bb.ak ], [ %i.fx, %bb.al ] ; 3 uses
  %i.gl = add nsw i32 %.1180.lcssa, 1
  %i.gm = zext i8 %i.gk to i32
  %.not210.not = icmp slt i32 %.1180.lcssa, %i.gm
  br i1 %.not210.not, label %bb.ai, label %._crit_edge458, !llvm.loop !107

._crit_edge458:                                   ; preds = %bb.am, %bb.ah
  %i.gn = phi i8 [ %i.fq, %bb.ah ], [ %i.gk, %bb.am ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !73
  %i.gq = and i16 %i.gp, 1
  %.not212 = icmp eq i16 %i.gq, 0
  br i1 %.not212, label %.thread369, label %bb.an

bb.an:                                            ; preds = %._crit_edge458
  %i.gr = load i8, ptr %i.fn, align 4, !tbaa !73
  %i.gs = call i8 @llvm.umax.i8(i8 %i.gr, i8 97)  ; 2 uses
  %i.gt = call i8 @llvm.umin.i8(i8 %i.gn, i8 122) ; 2 uses
  %.sroa.speculated = zext nneg i8 %i.gt to i32
  %i.gu = add nsw i32 %.sroa.speculated, -32
  %.not213459 = icmp ugt i8 %i.gs, %i.gt
  br i1 %.not213459, label %.thread369, label %.lr.ph462

.lr.ph462:                                        ; preds = %bb.an
  %.sroa.speculated328 = zext nneg i8 %i.gs to i32
  %i.gv = add nsw i32 %.sroa.speculated328, -32
  %i.gw = getelementptr inbounds nuw i8, ptr %.2183, i64 4
  %i.gx = shl i32 %.0187, 16
  %i.gy = zext nneg i8 %.1202 to i32
  %i.gz = shl nuw nsw i32 %i.gy, 6
  %i.ha = or disjoint i32 %i.gx, %i.gz
  %spec.select230 = or i32 %i.ha, %.0189          ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph462, %bb.as
  %.0146460 = phi i32 [ %i.gv, %.lr.ph462 ], [ %i.hn, %bb.as ] ; 3 uses
  %i.hb = sext i32 %.0146460 to i64               ; 3 uses
  %i.hc = getelementptr inbounds i8, ptr %i.cf, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !73  ; 2 uses
  %smax484 = call i32 @llvm.smax.i32(i32 %.0146460, i32 255) ; 2 uses
  %smax486 = call i64 @llvm.smax.i64(i64 %i.hb, i64 255)
  %exitcond487.not621 = icmp sgt i32 %.0146460, 254
  br i1 %exitcond487.not621, label %.critedge10, label %.lr.ph624

bb.ap:                                            ; preds = %.lr.ph624
  %exitcond487.not = icmp eq i64 %indvars.iv.next483, %smax486
  br i1 %exitcond487.not, label %.critedge10, label %.lr.ph624, !llvm.loop !108

.lr.ph624:                                        ; preds = %bb.ao, %bb.ap
  %indvars.iv482622 = phi i64 [ %indvars.iv.next483, %bb.ap ], [ %i.hb, %bb.ao ] ; 2 uses
  %indvars.iv.next483 = add nsw i64 %indvars.iv482622, 1 ; 3 uses
  %i.he = getelementptr inbounds i8, ptr %i.cf, i64 %indvars.iv.next483
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !73
  %i.hg = icmp eq i8 %i.hf, %i.hd
  br i1 %i.hg, label %bb.ap, label %.critedge10.split.loop.exit579, !llvm.loop !108

.critedge10.split.loop.exit579:                   ; preds = %.lr.ph624
  %i.hh = trunc nsw i64 %indvars.iv482622 to i32
  br label %.critedge10

.critedge10:                                      ; preds = %bb.ap, %bb.ao, %.critedge10.split.loop.exit579
  %.1147.lcssa = phi i32 [ %i.hh, %.critedge10.split.loop.exit579 ], [ %smax484, %bb.ao ], [ %smax484, %bb.ap ] ; 2 uses
  %i.hi = zext i8 %i.hd to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.hi ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !3  ; 2 uses
  %i.hl = and i32 %i.hk, 48
  %i.hm = icmp eq i32 %i.hl, 48
  br i1 %i.hm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.critedge10
  store i32 %spec.select230, ptr %i.hj, align 4, !tbaa !3
  br label %bb.as

bb.ar:                                            ; preds = %.critedge10
  %.not214 = icmp eq i32 %i.hk, %spec.select230
  br i1 %.not214, label %bb.as, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.hn = add nsw i32 %.1147.lcssa, 1
  %.not213.not = icmp slt i32 %.1147.lcssa, %i.gu
  br i1 %.not213.not, label %bb.ao, label %.thread369, !llvm.loop !109

.thread369:                                       ; preds = %bb.as, %bb.an, %._crit_edge458
  %i.ho = load i32, ptr %i.di, align 4, !tbaa !104
  %i.hp = and i32 %i.ho, 8
  %.not215 = icmp eq i32 %i.hp, 0
  br i1 %.not215, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %.thread369
  %i.hq = add nsw i32 %.0193, 1                   ; 7 uses
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hs = load i32, ptr %i.bi, align 8
  %.not6.i.i274 = icmp ugt i32 %i.hs, %i.hq
  br i1 %.not6.i.i274, label %bb.av, label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge

bb.av:                                            ; preds = %bb.au
  %i.ht = sext i32 %i.hq to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3  ; 2 uses
  %i.hw = load i32, ptr %3, align 8, !tbaa !83    ; 3 uses
  %i.hx = icmp ult i32 %i.hv, %i.hw
  br i1 %i.hx, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i278, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i278: ; preds = %bb.av
  %i.hy = sext i32 %i.hv to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !3
  %i.ib = icmp eq i32 %i.ia, %i.hq
  br i1 %i.ib, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277: ; preds = %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i278, %bb.av
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !3
  %i.ic = sext i32 %i.hw to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ic
  store i32 %i.hq, ptr %i.id, align 4, !tbaa !3
  %i.ie = load i32, ptr %3, align 8, !tbaa !83
  %i.if = add nsw i32 %i.ie, 1
  store i32 %i.if, ptr %3, align 8, !tbaa !83
  br label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge

bb.aw:                                            ; preds = %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261, %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261, %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261
  %i.ig = and i32 %i.dj, 8
  %.not208 = icmp eq i32 %i.ig, 0
  br i1 %.not208, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ih = add nsw i32 %.0193, 1                   ; 6 uses
  %i.ii = icmp ne i32 %i.ih, 0
  %i.ij = load i32, ptr %i.bi, align 8
  %.not6.i.i282 = icmp ugt i32 %i.ij, %i.ih
  %or.cond = select i1 %i.ii, i1 %.not6.i.i282, i1 false
  br i1 %or.cond, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ik = sext i32 %i.ih to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ik ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3  ; 2 uses
  %i.in = load i32, ptr %3, align 8, !tbaa !83    ; 3 uses
  %i.io = icmp ult i32 %i.im, %i.in
  br i1 %i.io, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i286, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i285

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i286: ; preds = %bb.ay
  %i.ip = sext i32 %i.im to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !3
  %i.is = icmp eq i32 %i.ir, %i.ih
  br i1 %i.is, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i285

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i285: ; preds = %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i286, %bb.ay
  store i32 %i.in, ptr %i.il, align 4, !tbaa !3
  %i.it = sext i32 %i.in to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.it
  store i32 %i.ih, ptr %i.iu, align 4, !tbaa !3
  %i.iv = load i32, ptr %3, align 8, !tbaa !83
  %i.iw = add nsw i32 %i.iv, 1
  store i32 %i.iw, ptr %3, align 8, !tbaa !83
  %.pre.pre = load i32, ptr %i.di, align 4, !tbaa !104
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i285
  %.pre = phi i32 [ %i.dj, %bb.ax ], [ %.pre.pre, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i285 ]
  %i.ix = sext i32 %.1198 to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ix ; 2 uses
  store i32 %i.ih, ptr %i.iy, align 4, !tbaa !100
end_hunk_0
