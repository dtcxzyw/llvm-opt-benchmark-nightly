inline.NumInlined: 434
inline.NumDeleted: 268
begin_hunk_0_@_ZN10duckdb_re24Prog9IsOnePassEv:bb.a
  %i.dk = and i32 %i.dj, 7
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
  %i.fx = phi i8 [ %i.fq, %.lr.ph457 ], [ %i.gj, %bb.am ]
  %.0179455 = phi i32 [ %i.fr, %.lr.ph457 ], [ %6, %bb.am ] ; 2 uses
  %5 = sext i32 %.0179455 to i64                  ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %i.cf, i64 %5
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !73  ; 2 uses
  %exitcond.not617 = icmp eq i32 %.0179455, 255
  br i1 %exitcond.not617, label %.critedge, label %.lr.ph620

bb.aj:                                            ; preds = %.lr.ph620
  %exitcond.not = icmp eq i64 %indvars.iv.next479, 255
  br i1 %exitcond.not, label %.critedge, label %.lr.ph620, !llvm.loop !106

.lr.ph620:                                        ; preds = %bb.ai, %bb.aj
  %indvars.iv478618 = phi i64 [ %indvars.iv.next479, %bb.aj ], [ %5, %bb.ai ] ; 2 uses
  %indvars.iv.next479 = add nsw i64 %indvars.iv478618, 1 ; 3 uses
  %i.ga = getelementptr inbounds i8, ptr %i.cf, i64 %indvars.iv.next479
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !73
  %i.gc = icmp eq i8 %i.gb, %i.fz
  br i1 %i.gc, label %bb.aj, label %.critedge.split.loop.exit577, !llvm.loop !106

.critedge.split.loop.exit577:                     ; preds = %.lr.ph620
  %i.gd = trunc nsw i64 %indvars.iv478618 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.aj, %bb.ai, %.critedge.split.loop.exit577
  %.1180.lcssa = phi i32 [ %i.gd, %.critedge.split.loop.exit577 ], [ 255, %bb.ai ], [ 255, %bb.aj ] ; 2 uses
  %i.ge = zext i8 %i.fz to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.ge ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3  ; 2 uses
  %i.gh = and i32 %i.gg, 48
  %i.gi = icmp eq i32 %i.gh, 48
  br i1 %i.gi, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge
  store i32 %spec.select, ptr %i.gf, align 4, !tbaa !3
  %.pre490 = load i8, ptr %i.fp, align 1, !tbaa !73
  br label %bb.am

bb.al:                                            ; preds = %.critedge
  %.not211 = icmp eq i32 %i.gg, %spec.select
  br i1 %.not211, label %bb.am, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.gj = phi i8 [ %.pre490, %bb.ak ], [ %i.fx, %bb.al ] ; 3 uses
  %6 = add nsw i32 %.1180.lcssa, 1
  %i.gk = zext i8 %i.gj to i32
  %.not210.not = icmp slt i32 %.1180.lcssa, %i.gk
  br i1 %.not210.not, label %bb.ai, label %._crit_edge458, !llvm.loop !107

._crit_edge458:                                   ; preds = %bb.am, %bb.ah
  %i.gl = phi i8 [ %i.fq, %bb.ah ], [ %i.gj, %bb.am ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !73
  %i.go = and i16 %i.gn, 1
  %.not212 = icmp eq i16 %i.go, 0
  br i1 %.not212, label %.thread369, label %bb.an

bb.an:                                            ; preds = %._crit_edge458
  %i.gp = load i8, ptr %i.fn, align 4, !tbaa !73
  %i.gq = call i8 @llvm.umax.i8(i8 %i.gp, i8 97)  ; 2 uses
  %i.gr = call i8 @llvm.umin.i8(i8 %i.gl, i8 122) ; 2 uses
  %.sroa.speculated = zext nneg i8 %i.gr to i32
  %i.gs = add nsw i32 %.sroa.speculated, -32
  %.not213459 = icmp ugt i8 %i.gq, %i.gr
  br i1 %.not213459, label %.thread369, label %.lr.ph462

.lr.ph462:                                        ; preds = %bb.an
  %.sroa.speculated328 = zext nneg i8 %i.gq to i32
  %i.gt = add nsw i32 %.sroa.speculated328, -32
  %i.gu = getelementptr inbounds nuw i8, ptr %.2183, i64 4
  %i.gv = shl i32 %.0187, 16
  %i.gw = zext nneg i8 %.1202 to i32
  %i.gx = shl nuw nsw i32 %i.gw, 6
  %i.gy = or disjoint i32 %i.gv, %i.gx
  %spec.select230 = or i32 %i.gy, %.0189          ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph462, %bb.as
  %.0146460 = phi i32 [ %i.gt, %.lr.ph462 ], [ %7, %bb.as ] ; 3 uses
  %i.gz = sext i32 %.0146460 to i64               ; 3 uses
  %i.ha = getelementptr inbounds i8, ptr %i.cf, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !73  ; 2 uses
  %smax484 = call i32 @llvm.smax.i32(i32 %.0146460, i32 255) ; 2 uses
  %smax486 = call i64 @llvm.smax.i64(i64 %i.gz, i64 255)
  %exitcond487.not621 = icmp sgt i32 %.0146460, 254
  br i1 %exitcond487.not621, label %.critedge10, label %.lr.ph624

bb.ap:                                            ; preds = %.lr.ph624
  %exitcond487.not = icmp eq i64 %indvars.iv.next483, %smax486
  br i1 %exitcond487.not, label %.critedge10, label %.lr.ph624, !llvm.loop !108

.lr.ph624:                                        ; preds = %bb.ao, %bb.ap
  %indvars.iv482622 = phi i64 [ %indvars.iv.next483, %bb.ap ], [ %i.gz, %bb.ao ] ; 2 uses
  %indvars.iv.next483 = add nsw i64 %indvars.iv482622, 1 ; 3 uses
  %i.hc = getelementptr inbounds i8, ptr %i.cf, i64 %indvars.iv.next483
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !73
  %i.he = icmp eq i8 %i.hd, %i.hb
  br i1 %i.he, label %bb.ap, label %.critedge10.split.loop.exit579, !llvm.loop !108

.critedge10.split.loop.exit579:                   ; preds = %.lr.ph624
  %i.hf = trunc nsw i64 %indvars.iv482622 to i32
  br label %.critedge10

.critedge10:                                      ; preds = %bb.ap, %bb.ao, %.critedge10.split.loop.exit579
  %.1147.lcssa = phi i32 [ %i.hf, %.critedge10.split.loop.exit579 ], [ %smax484, %bb.ao ], [ %smax484, %bb.ap ] ; 2 uses
  %i.hg = zext i8 %i.hb to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3  ; 2 uses
  %i.hj = and i32 %i.hi, 48
  %i.hk = icmp eq i32 %i.hj, 48
  br i1 %i.hk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.critedge10
  store i32 %spec.select230, ptr %i.hh, align 4, !tbaa !3
  br label %bb.as

bb.ar:                                            ; preds = %.critedge10
  %.not214 = icmp eq i32 %i.hi, %spec.select230
  br i1 %.not214, label %bb.as, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %7 = add nsw i32 %.1147.lcssa, 1
  %.not213.not = icmp slt i32 %.1147.lcssa, %i.gs
  br i1 %.not213.not, label %bb.ao, label %.thread369, !llvm.loop !109

.thread369:                                       ; preds = %bb.as, %bb.an, %._crit_edge458
  %i.hl = load i32, ptr %i.di, align 4, !tbaa !104
  %i.hm = and i32 %i.hl, 8
  %.not215 = icmp eq i32 %i.hm, 0
  br i1 %.not215, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %.thread369
  %i.hn = add nsw i32 %.0193, 1                   ; 7 uses
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = load i32, ptr %i.bi, align 8
  %.not6.i.i274 = icmp ugt i32 %i.hp, %i.hn
  br i1 %.not6.i.i274, label %bb.av, label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge

bb.av:                                            ; preds = %bb.au
  %i.hq = sext i32 %i.hn to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.hq ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3  ; 2 uses
  %i.ht = load i32, ptr %3, align 8, !tbaa !83    ; 3 uses
  %i.hu = icmp ult i32 %i.hs, %i.ht
  br i1 %i.hu, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i278, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i278: ; preds = %bb.av
  %i.hv = sext i32 %i.hs to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !3
  %i.hy = icmp eq i32 %i.hx, %i.hn
  br i1 %i.hy, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277: ; preds = %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i278, %bb.av
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !3
  %i.hz = sext i32 %i.ht to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.hz
  store i32 %i.hn, ptr %i.ia, align 4, !tbaa !3
  %i.ib = load i32, ptr %3, align 8, !tbaa !83
  %i.ic = add nsw i32 %i.ib, 1
  store i32 %i.ic, ptr %3, align 8, !tbaa !83
  br label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge

bb.aw:                                            ; preds = %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261, %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261, %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261
  %i.id = and i32 %i.dj, 8
  %.not208 = icmp eq i32 %i.id, 0
  br i1 %.not208, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ie = add nsw i32 %.0193, 1                   ; 6 uses
  %i.if = icmp ne i32 %i.ie, 0
  %i.ig = load i32, ptr %i.bi, align 8
  %.not6.i.i282 = icmp ugt i32 %i.ig, %i.ie
  %or.cond = select i1 %i.if, i1 %.not6.i.i282, i1 false
  br i1 %or.cond, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ih = sext i32 %i.ie to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3  ; 2 uses
  %i.ik = load i32, ptr %3, align 8, !tbaa !83    ; 3 uses
  %i.il = icmp ult i32 %i.ij, %i.ik
  br i1 %i.il, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i286, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i285

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i286: ; preds = %bb.ay
  %i.im = sext i32 %i.ij to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %i.ip = icmp eq i32 %i.io, %i.ie
  br i1 %i.ip, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i285

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i285: ; preds = %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i286, %bb.ay
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !3
  %i.iq = sext i32 %i.ik to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.iq
  store i32 %i.ie, ptr %i.ir, align 4, !tbaa !3
  %i.is = load i32, ptr %3, align 8, !tbaa !83
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %3, align 8, !tbaa !83
  %.pre.pre = load i32, ptr %i.di, align 4, !tbaa !104
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i285
  %.pre = phi i32 [ %i.dj, %bb.ax ], [ %.pre.pre, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i285 ]
  %i.iu = sext i32 %.1198 to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.iu ; 2 uses
  store i32 %i.ie, ptr %i.iv, align 4, !tbaa !100
  %i.iw = add nsw i32 %.1198, 1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store i32 %.0189, ptr %i.ix, align 4, !tbaa !102
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %i.iy = phi i32 [ %i.dj, %bb.aw ], [ %.pre, %bb.az ] ; 2 uses
  %.2199 = phi i32 [ %.1198, %bb.aw ], [ %i.iw, %bb.az ] ; 3 uses
  %i.iz = and i32 %i.iy, 7
  switch i32 %i.iz, label %.thread390 [
    i32 3, label %bb.bb
    i32 4, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ja = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !73 ; 2 uses
  %i.jc = icmp slt i32 %i.jb, 10
  br i1 %i.jc, label %bb.bc, label %.thread390

bb.bc:                                            ; preds = %bb.bb
  %i.jd = shl nuw nsw i32 32, %i.jb
  %i.je = or i32 %i.jd, %.0189
  br label %.thread390

bb.bd:                                            ; preds = %bb.ba
  %i.jf = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !73
  %i.jh = or i32 %i.jg, %.0189
  br label %.thread390

.thread390:                                       ; preds = %bb.ba, %bb.bb, %bb.bc, %bb.bd
  %.2191 = phi i32 [ %i.jh, %bb.bd ], [ %.0189, %bb.ba ], [ %.0189, %bb.bb ], [ %i.je, %bb.bc ] ; 3 uses
  %i.ji = lshr i32 %i.iy, 4                       ; 6 uses
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge, label %bb.be

bb.be:                                            ; preds = %.thread390
  %i.jk = load i32, ptr %i.bi, align 8
  %.not6.i.i290 = icmp ugt i32 %i.jk, %i.ji
  br i1 %.not6.i.i290, label %bb.bf, label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge

bb.bf:                                            ; preds = %bb.be
  %i.jl = zext nneg i32 %i.ji to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.jl ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !3  ; 2 uses
  %i.jo = load i32, ptr %3, align 8, !tbaa !83    ; 3 uses
  %i.jp = icmp ult i32 %i.jn, %i.jo
  br i1 %i.jp, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i294, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i293

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i294: ; preds = %bb.bf
  %i.jq = sext i32 %i.jn to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !3
  %i.jt = icmp eq i32 %i.js, %i.ji
  br i1 %i.jt, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i293

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i293: ; preds = %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i294, %bb.bf
  store i32 %i.jo, ptr %i.jm, align 4, !tbaa !3
  %i.ju = sext i32 %i.jo to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ju
  store i32 %i.ji, ptr %i.jv, align 4, !tbaa !3
  %i.jw = load i32, ptr %3, align 8, !tbaa !83
  %i.jx = add nsw i32 %i.jw, 1
  store i32 %i.jx, ptr %3, align 8, !tbaa !83
  %.pre488 = load i32, ptr %i.di, align 4, !tbaa !104
  %.pre497 = lshr i32 %.pre488, 4
  br label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge

_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge: ; preds = %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i293, %bb.be, %.thread390, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277, %bb.au, %bb.at, %bb.bi, %bb.bj, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i301, %bb.w, %bb.x, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i258
  %.1202.be = phi i8 [ %.1202, %bb.au ], [ 1, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i301 ], [ %.1202, %.thread390 ], [ 1, %bb.bj ], [ %.1202, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277 ], [ %.1202, %bb.w ], [ 1, %bb.bi ], [ %.1202, %bb.be ], [ %.1202, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i293 ], [ %.1202, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i258 ], [ %.1202, %bb.x ], [ %.1202, %bb.at ]
  %.1198.be = phi i32 [ %.1198, %bb.au ], [ %.1198, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i301 ], [ %.2199, %.thread390 ], [ %.1198, %bb.bj ], [ %.1198, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277 ], [ %.1198, %bb.w ], [ %.1198, %bb.bi ], [ %.2199, %bb.be ], [ %.2199, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i293 ], [ %.1198, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i258 ], [ %.1198, %bb.x ], [ %.1198, %bb.at ]
  %.0193.be = phi i32 [ %i.hn, %bb.au ], [ %i.ka, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i301 ], [ 0, %.thread390 ], [ %i.ka, %bb.bj ], [ %i.hn, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277 ], [ 0, %bb.w ], [ 0, %bb.bi ], [ %i.ji, %bb.be ], [ %.pre497, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i293 ], [ %i.dv, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i258 ], [ %i.dv, %bb.x ], [ 0, %bb.at ]
  %.0189.be = phi i32 [ %.0189, %bb.au ], [ %.0189, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i301 ], [ %.2191, %.thread390 ], [ %.0189, %bb.bj ], [ %.0189, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277 ], [ %.0189, %bb.w ], [ %.0189, %bb.bi ], [ %.2191, %bb.be ], [ %.2191, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i293 ], [ %.0189, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i258 ], [ %.0189, %bb.x ], [ %.0189, %bb.at ]
  %.1182.be = phi ptr [ %.2183, %bb.au ], [ %.1182, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i301 ], [ %.1182, %.thread390 ], [ %.1182, %bb.bj ], [ %.2183, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277 ], [ %.1182, %bb.w ], [ %.1182, %bb.bi ], [ %.1182, %bb.be ], [ %.1182, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i293 ], [ %.1182, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i258 ], [ %.1182, %bb.x ], [ %.2183, %bb.at ]
  %.2171.be = phi i32 [ %.3172, %bb.au ], [ %.2171, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i301 ], [ %.2171, %.thread390 ], [ %.2171, %bb.bj ], [ %.3172, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i277 ], [ %.2171, %bb.w ], [ %.2171, %bb.bi ], [ %.2171, %bb.be ], [ %.2171, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i293 ], [ %.2171, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i258 ], [ %.2171, %bb.x ], [ %.3172, %bb.at ]
  br label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261

bb.bg:                                            ; preds = %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261
  %i.jy = trunc nuw i8 %.1202 to i1
  br i1 %i.jy, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 %.0189, ptr %.1182, align 4, !tbaa !71
  %i.jz = and i32 %i.dj, 8
  %.not207 = icmp eq i32 %i.jz, 0
  br i1 %.not207, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  %i.ka = add nsw i32 %.0193, 1                   ; 7 uses
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kc = load i32, ptr %i.bi, align 8
  %.not6.i.i298 = icmp ugt i32 %i.kc, %i.ka
  br i1 %.not6.i.i298, label %bb.bk, label %_ZN10duckdb_re2L4AddQEPNS_10SparseSetTIvEEi.exit261.backedge

bb.bk:                                            ; preds = %bb.bj
  %i.kd = sext i32 %i.ka to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !3  ; 2 uses
  %i.kg = load i32, ptr %3, align 8, !tbaa !83    ; 3 uses
  %i.kh = icmp ult i32 %i.kf, %i.kg
  br i1 %i.kh, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i302, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i301

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i302: ; preds = %bb.bk
  %i.ki = sext i32 %i.kf to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !3
  %i.kl = icmp eq i32 %i.kk, %i.ka
  br i1 %i.kl, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit313, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i301

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i301: ; preds = %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i302, %bb.bk
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh:bb.a
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !114

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !73
  store i8 %i.q, ptr %i.d, align 1, !tbaa !73
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !113
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !114

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !73
  store i8 %i.z, ptr %i.y, align 1, !tbaa !73
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.l:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !113
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !114

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.p, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %1, align 1, !tbaa !73
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !73
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !113
  %.not.i.i.i70 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i70, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !97    ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.t ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !114

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.x, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !73
  store i8 %i.az, ptr %i.au, align 1, !tbaa !73
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.y, label %bb.z, !prof !114

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %bb.ab

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.be = load i8, ptr %1, align 1, !tbaa !73
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !73
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i75 = icmp eq ptr %i.ai, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZdlPv(ptr noundef nonnull %i.ai) #13
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ab, %bb.ac
  store ptr %i.au, ptr %0, align 8, !tbaa !97
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !113
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !112
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.k, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69, %bb.q, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTS10LogMessage", !9, i64 0, !10, i64 8}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8}
!11 = !{!"_ZTSSo"}
!12 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !13, i64 0, !18, i64 64, !19, i64 72}
!13 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !16, i64 56}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"_ZTSSt6locale", !17, i64 0}
!17 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!18 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !21, i64 8, !5, i64 16}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !6, i64 0}
!24 = !{!19, !14, i64 0}
!25 = !{!14, !14, i64 0}
!26 = !{i64 0, i64 8, !25, i64 8, i64 8, !27}
!27 = !{!21, !21, i64 0}
!28 = !{!29, !14, i64 0}
!29 = !{!"_ZTSN10duckdb_re211StringPieceE", !14, i64 0, !21, i64 8}
!30 = !{!31, !9, i64 0}
!31 = !{!"_ZTSN10duckdb_re24ProgE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !9, i64 24, !21, i64 32, !5, i64 40, !4, i64 48, !5, i64 52, !32, i64 88, !21, i64 104, !43, i64 112, !54, i64 128, !21, i64 144, !64, i64 152, !64, i64 160, !5, i64 168, !65, i64 424, !65, i64 428}
!32 = !{!"_ZTSN10duckdb_re28PODArrayItEE", !33, i64 0}
!33 = !{!"_ZTSSt10unique_ptrIA_tN10duckdb_re28PODArrayItE7DeleterEE", !34, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_dataItN10duckdb_re28PODArrayItE7DeleterELb1ELb1EE", !35, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_implItN10duckdb_re28PODArrayItE7DeleterEE", !36, i64 0}
!36 = !{!"_ZTSSt5tupleIJPtN10duckdb_re28PODArrayItE7DeleterEEE", !37, i64 0}
!37 = !{!"_ZTSSt11_Tuple_implILm0EJPtN10duckdb_re28PODArrayItE7DeleterEEE", !38, i64 0, !41, i64 8}
!38 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayItE7DeleterEEE", !39, i64 0}
!39 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayItE7DeleterELb0EE", !40, i64 0}
!40 = !{!"_ZTSN10duckdb_re28PODArrayItE7DeleterE", !4, i64 0}
!41 = !{!"_ZTSSt10_Head_baseILm0EPtLb0EE", !42, i64 0}
!42 = !{!"p1 short", !15, i64 0}
!43 = !{!"_ZTSN10duckdb_re28PODArrayINS_4Prog4InstEEE", !44, i64 0}
!44 = !{!"_ZTSSt10unique_ptrIA_N10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !45, i64 0}
!45 = !{!"_ZTSSt15__uniq_ptr_dataIN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterELb1ELb1EE", !46, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_implIN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !47, i64 0}
!47 = !{!"_ZTSSt5tupleIJPN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !48, i64 0}
!48 = !{!"_ZTSSt11_Tuple_implILm0EJPN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !49, i64 0, !52, i64 8}
!49 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayINS0_4Prog4InstEE7DeleterEEE", !50, i64 0}
!50 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayINS0_4Prog4InstEE7DeleterELb0EE", !51, i64 0}
!51 = !{!"_ZTSN10duckdb_re28PODArrayINS_4Prog4InstEE7DeleterE", !4, i64 0}
!52 = !{!"_ZTSSt10_Head_baseILm0EPN10duckdb_re24Prog4InstELb0EE", !53, i64 0}
!53 = !{!"p1 _ZTSN10duckdb_re24Prog4InstE", !15, i64 0}
!54 = !{!"_ZTSN10duckdb_re28PODArrayIhEE", !55, i64 0}
!55 = !{!"_ZTSSt10unique_ptrIA_hN10duckdb_re28PODArrayIhE7DeleterEE", !56, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_dataIhN10duckdb_re28PODArrayIhE7DeleterELb1ELb1EE", !57, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_implIhN10duckdb_re28PODArrayIhE7DeleterEE", !58, i64 0}
!58 = !{!"_ZTSSt5tupleIJPhN10duckdb_re28PODArrayIhE7DeleterEEE", !59, i64 0}
!59 = !{!"_ZTSSt11_Tuple_implILm0EJPhN10duckdb_re28PODArrayIhE7DeleterEEE", !60, i64 0, !63, i64 8}
!60 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayIhE7DeleterEEE", !61, i64 0}
!61 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayIhE7DeleterELb0EE", !62, i64 0}
!62 = !{!"_ZTSN10duckdb_re28PODArrayIhE7DeleterE", !4, i64 0}
!63 = !{!"_ZTSSt10_Head_baseILm0EPhLb0EE", !14, i64 0}
!64 = !{!"p1 _ZTSN10duckdb_re23DFAE", !15, i64 0}
!65 = !{!"_ZTSSt9once_flag", !4, i64 0}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!31, !9, i64 1}
!69 = !{!29, !21, i64 8}
!70 = !{!31, !4, i64 20}
!71 = !{!72, !4, i64 0}
!72 = !{!"_ZTSN10duckdb_re28OneStateE", !4, i64 0, !5, i64 4}
!73 = !{!5, !5, i64 0}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.mustprogress"}
!76 = distinct !{!76, !75}
!77 = distinct !{!77, !75}
!78 = !{!31, !9, i64 4}
!79 = !{!31, !4, i64 8}
!80 = !{!31, !21, i64 144}
!81 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!82 = !{!31, !4, i64 16}
!83 = !{!84, !4, i64 0}
!84 = !{!"_ZTSN10duckdb_re210SparseSetTIvEE", !4, i64 0, !85, i64 8, !85, i64 24}
!85 = !{!"_ZTSN10duckdb_re28PODArrayIiEE", !86, i64 0}
!86 = !{!"_ZTSSt10unique_ptrIA_iN10duckdb_re28PODArrayIiE7DeleterEE", !87, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_dataIiN10duckdb_re28PODArrayIiE7DeleterELb1ELb1EE", !88, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implIiN10duckdb_re28PODArrayIiE7DeleterEE", !89, i64 0}
!89 = !{!"_ZTSSt5tupleIJPiN10duckdb_re28PODArrayIiE7DeleterEEE", !90, i64 0}
!90 = !{!"_ZTSSt11_Tuple_implILm0EJPiN10duckdb_re28PODArrayIiE7DeleterEEE", !91, i64 0, !94, i64 8}
!91 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayIiE7DeleterEEE", !92, i64 0}
!92 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayIiE7DeleterELb0EE", !93, i64 0}
!93 = !{!"_ZTSN10duckdb_re28PODArrayIiE7DeleterE", !4, i64 0}
!94 = !{!"_ZTSSt10_Head_baseILm0EPiLb0EE", !95, i64 0}
!95 = !{!"p1 int", !15, i64 0}
!96 = !{!94, !95, i64 0}
!97 = !{!98, !14, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!99 = distinct !{!99, !75}
!100 = !{!101, !4, i64 0}
!101 = !{!"_ZTSN10duckdb_re28InstCondE", !4, i64 0, !4, i64 4}
!102 = !{!101, !4, i64 4}
!103 = !{!53, !53, i64 0}
!104 = !{!105, !4, i64 0}
!105 = !{!"_ZTSN10duckdb_re24Prog4InstE", !4, i64 0, !5, i64 4}
!106 = distinct !{!106, !75}
!107 = distinct !{!107, !75}
!108 = distinct !{!108, !75}
!109 = distinct !{!109, !75}
!110 = distinct !{!110, !75}
!111 = !{!95, !95, i64 0}
!112 = !{!98, !14, i64 16}
!113 = !{!98, !14, i64 8}
!114 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
