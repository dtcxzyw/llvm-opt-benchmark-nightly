Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btPolyhedralConvexShape?download=true
inline.NumInlined: 304
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN23btPolyhedralConvexShape28initializePolyhedralFeaturesEi:bb.a
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit107 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #17
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit107: ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ec = load ptr, ptr %i.bm, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i108 = icmp ne ptr %i.ec, null
  %i.ed = load i8, ptr %i.bl, align 8, !range !35
  %i.ee = trunc nuw i8 %i.ed to i1
  %or.cond.i.i109 = select i1 %.not.i.i.i108, i1 %i.ee, i1 false
  br i1 %or.cond.i.i109, label %bb.ah, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit110

bb.ah:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit107
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ec)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit110 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #17
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit110: ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit107, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN20btConvexHullComputer7computeEPKfiiff.exit112

bb.aj:                                            ; preds = %bb.ac, %._crit_edge
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ab
  %.pn75 = phi { ptr, i32 } [ %i.dk, %bb.ab ], [ %i.eh, %bb.aj ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.t
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75, %bb.ak ], [ %i.bv, %bb.t ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.bp

bb.am:                                            ; preds = %bb.q
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.ej = load i32, ptr %i.i, align 4, !tbaa !28
  %i.ek = invoke noundef float @_ZN20btConvexHullComputer7computeEPKvbiiff(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull %i.ei, i1 noundef zeroext false, i32 noundef 16, i32 noundef %i.ej, float noundef 0.000000e+00, float noundef 0.000000e+00)
          to label %_ZN20btConvexHullComputer7computeEPKfiiff.exit112 unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_ZN20btConvexHullComputer7computeEPKfiiff.exit112: ; preds = %bb.am, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit110
  %i.em = load i32, ptr %i.ax, align 4, !tbaa !28 ; 10 uses
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !23  ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !28 ; 2 uses
  %i.eq = icmp sgt i32 %i.em, %i.ep
  br i1 %i.eq, label %bb.ao, label %.loopexit212

bb.ao:                                            ; preds = %_ZN20btConvexHullComputer7computeEPKfiiff.exit112
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !29
  %i.et = icmp slt i32 %i.es, %i.em
  br i1 %i.et, label %bb.ap, label %.loopexit212

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.i113 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i.i113, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i115, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = sext i32 %i.em to i64
  %i.ev = shl nsw i64 %i.eu, 4
  %i.ew = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ev, i32 noundef 16)
          to label %.noexc125 unwind label %bb.au

.noexc125:                                        ; preds = %bb.aq
  %.pre.i114 = load i32, ptr %i.eo, align 4, !tbaa !28
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i115

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i115: ; preds = %.noexc125, %bb.ap
  %i.ex = phi i32 [ %.pre.i114, %.noexc125 ], [ %i.ep, %bb.ap ] ; 4 uses
  %.0.i.i.i116 = phi ptr [ %i.ew, %.noexc125 ], [ null, %bb.ap ] ; 4 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.lr.ph.i.i.i120, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i117

.lr.ph.i.i.i120:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i115
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 3 uses
  %wide.trip.count.i.i.i121 = zext nneg i32 %i.ex to i64 ; 2 uses
  %xtraiter323 = and i64 %wide.trip.count.i.i.i121, 1
  %i.fa = icmp eq i32 %i.ex, 1
  br i1 %i.fa, label %.epil.preheader322, label %.lr.ph.i.i.i120.new

.lr.ph.i.i.i120.new:                              ; preds = %.lr.ph.i.i.i120
  %unroll_iter326 = and i64 %wide.trip.count.i.i.i121, 2147483646
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i.i.i120.new
  %indvars.iv.i.i.i122 = phi i64 [ 0, %.lr.ph.i.i.i120.new ], [ %indvars.iv.next.i.i.i123.1, %bb.ar ] ; 4 uses
  %niter327 = phi i64 [ 0, %.lr.ph.i.i.i120.new ], [ %niter327.next.1, %bb.ar ]
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i116, i64 %indvars.iv.i.i.i122
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !30
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv.i.i.i122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fb, ptr noundef nonnull align 4 dereferenceable(16) %i.fd, i64 16, i1 false), !tbaa.struct !32
  %indvars.iv.next.i.i.i123 = or disjoint i64 %indvars.iv.i.i.i122, 1 ; 2 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i116, i64 %indvars.iv.next.i.i.i123
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !30
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.next.i.i.i123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fe, ptr noundef nonnull align 4 dereferenceable(16) %i.fg, i64 16, i1 false), !tbaa.struct !32
  %indvars.iv.next.i.i.i123.1 = add nuw nsw i64 %indvars.iv.i.i.i122, 2 ; 2 uses
  %niter327.next.1 = add i64 %niter327, 2         ; 2 uses
  %niter327.ncmp.1 = icmp eq i64 %niter327.next.1, %unroll_iter326
  br i1 %niter327.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i117.loopexit.unr-lcssa, label %bb.ar, !llvm.loop !0

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i117.loopexit.unr-lcssa: ; preds = %bb.ar
  %lcmp.mod324.not = icmp eq i64 %xtraiter323, 0
  br i1 %lcmp.mod324.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i117, label %.epil.preheader322

.epil.preheader322:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i117.loopexit.unr-lcssa, %.lr.ph.i.i.i120
  %indvars.iv.i.i.i122.epil.init = phi i64 [ 0, %.lr.ph.i.i.i120 ], [ %indvars.iv.next.i.i.i123.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i117.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod325 = trunc i32 %i.ex to i1
  call void @llvm.assume(i1 %lcmp.mod325)
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i116, i64 %indvars.iv.i.i.i122.epil.init
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !30
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %indvars.iv.i.i.i122.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fh, ptr noundef nonnull align 4 dereferenceable(16) %i.fj, i64 16, i1 false), !tbaa.struct !32
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i117

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i117: ; preds = %.epil.preheader322, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i117.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i115
  %i.fk = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !30 ; 2 uses
  %.not.i5.i.i118 = icmp eq ptr %i.fl, null
  br i1 %.not.i5.i.i118, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i119, label %bb.as

bb.as:                                            ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i117
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !34, !range !35, !noundef !36
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.at, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i119

bb.at:                                            ; preds = %bb.as
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fl)
          to label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i119 unwind label %bb.au

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i119: ; preds = %bb.at, %bb.as, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i117
  %i.fp = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  store i8 1, ptr %i.fp, align 8, !tbaa !34
  store ptr %.0.i.i.i116, ptr %i.fk, align 8, !tbaa !30
  store i32 %i.em, ptr %i.er, align 8, !tbaa !29
  br label %.loopexit212

.loopexit212:                                     ; preds = %bb.ao, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i119, %_ZN20btConvexHullComputer7computeEPKfiiff.exit112
  store i32 %i.em, ptr %i.eo, align 4, !tbaa !28
  %i.fq = icmp sgt i32 %i.em, 0
  br i1 %i.fq, label %.lr.ph216.preheader, label %.preheader

.lr.ph216.preheader:                              ; preds = %.loopexit212
  %wide.trip.count = zext nneg i32 %i.em to i64   ; 2 uses
  %xtraiter328 = and i64 %wide.trip.count, 1
  %i.fr = icmp eq i32 %i.em, 1
  br i1 %i.fr, label %.lr.ph216.epil.preheader, label %.lr.ph216.preheader.new

.lr.ph216.preheader.new:                          ; preds = %.lr.ph216.preheader
  %unroll_iter331 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph216

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph216
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329.not, label %.preheader, label %.lr.ph216.epil.preheader

.lr.ph216.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph216.preheader
  %indvars.iv236.epil.init = phi i64 [ 0, %.lr.ph216.preheader ], [ %indvars.iv.next237.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod330 = trunc i32 %i.em to i1
  call void @llvm.assume(i1 %lcmp.mod330)
  %i.fs = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %indvars.iv236.epil.init
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !30
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %indvars.iv236.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fx, ptr noundef nonnull align 4 dereferenceable(16) %i.ft, i64 16, i1 false), !tbaa.struct !32
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph216.epil.preheader, %.preheader.loopexit.unr-lcssa, %.loopexit212
  %i.fy = load i32, ptr %i.bj, align 4, !tbaa !42
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph233, label %._crit_edge234

.lr.ph233:                                        ; preds = %.preheader
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.gj = getelementptr inbounds nuw i8, ptr %8, i64 44
  br label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.aq
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.lr.ph216:                                        ; preds = %.lr.ph216, %.lr.ph216.preheader.new
  %indvars.iv236 = phi i64 [ 0, %.lr.ph216.preheader.new ], [ %indvars.iv.next237.1, %.lr.ph216 ] ; 4 uses
  %niter332 = phi i64 [ 0, %.lr.ph216.preheader.new ], [ %niter332.next.1, %.lr.ph216 ]
  %i.gl = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %indvars.iv236
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !30
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %indvars.iv236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gq, ptr noundef nonnull align 4 dereferenceable(16) %i.gm, i64 16, i1 false), !tbaa.struct !32
  %indvars.iv.next237 = or disjoint i64 %indvars.iv236, 1 ; 2 uses
  %i.gr = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %indvars.iv.next237
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !30
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %indvars.iv.next237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gw, ptr noundef nonnull align 4 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !32
  %indvars.iv.next237.1 = add nuw nsw i64 %indvars.iv236, 2 ; 2 uses
  %niter332.next.1 = add i64 %niter332, 2         ; 2 uses
  %niter332.ncmp.1 = icmp eq i64 %niter332.next.1, %unroll_iter331
  br i1 %niter332.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph216, !llvm.loop !65

._crit_edge234:                                   ; preds = %_ZN6btFaceD2Ev.exit, %.preheader
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !23
  invoke void @_ZN18btConvexPolyhedron10initializeEv(ptr noundef nonnull align 8 dereferenceable(172) %i.gx)
          to label %bb.bl unwind label %bb.bo

bb.av:                                            ; preds = %.lr.ph233, %_ZN6btFaceD2Ev.exit
  %indvars.iv244 = phi i64 [ 0, %.lr.ph233 ], [ %indvars.iv.next245, %_ZN6btFaceD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i8 1, ptr %i.ga, align 8, !tbaa !40
  store ptr null, ptr %i.gb, align 8, !tbaa !41
  store i32 0, ptr %i.gc, align 4, !tbaa !42
  store i32 0, ptr %i.gd, align 8, !tbaa !43
  %i.gy = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv244
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !48
  %i.hb = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.hc = sext i32 %i.ha to i64
  %i.hd = getelementptr inbounds [12 x i8], ptr %i.hb, i64 %i.hc ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !82
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [12 x i8], ptr %i.hd, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !83 ; 4 uses
  %i.hk = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 4, i32 noundef 16)
          to label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i unwind label %bb.ax ; 4 uses

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %bb.av
  store i8 1, ptr %i.ga, align 8, !tbaa !40
  store ptr %i.hk, ptr %i.gb, align 8, !tbaa !41
  store i32 1, ptr %i.gd, align 8, !tbaa !43
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !48
  store i32 1, ptr %i.gc, align 4, !tbaa !42
  %.0208.in217 = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.0208218 = load i32, ptr %.0208.in217, align 4, !tbaa !83 ; 2 uses
  %.not67219 = icmp eq i32 %.0208218, %i.hj
  br i1 %.not67219, label %._crit_edge226, label %.lr.ph225

.lr.ph225:                                        ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i, %bb.bd
  %i.hl = phi ptr [ %i.jr, %bb.bd ], [ %i.hk, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ] ; 10 uses
  %i.hm = phi i32 [ %i.js, %bb.bd ], [ 1, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ] ; 9 uses
  %.pre2.pre.i148 = phi i32 [ %i.jw, %bb.bd ], [ 1, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ] ; 2 uses
  %.0208223 = phi i32 [ %.0208, %bb.bd ], [ %.0208218, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ] ; 3 uses
  %.036222 = phi i32 [ %.0208223, %bb.bd ], [ %i.hj, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ]
  %.037221 = phi ptr [ %i.kd, %bb.bd ], [ %i.hd, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ] ; 2 uses
  %.038220 = phi i32 [ %.139, %bb.bd ], [ 0, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ] ; 3 uses
  %i.hn = ptrtoaddr ptr %i.hl to i64
  %i.ho = icmp slt i32 %.038220, 2
  br i1 %i.ho, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.lr.ph225
  %i.hp = load ptr, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %i.hq = sext i32 %.0208223 to i64
  %i.hr = getelementptr inbounds [16 x i8], ptr %i.hp, i64 %i.hq ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %i.hs = sext i32 %.036222 to i64
  %i.ht = getelementptr inbounds [16 x i8], ptr %i.hp, i64 %i.hs ; 2 uses
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %.sroa.6195.0.copyload = load float, ptr %.sroa.6195.0..sroa_idx, align 4
  %i.hu = fsub float %.sroa.6.0.copyload, %.sroa.6195.0.copyload ; 3 uses
  %i.hv = load <2 x float>, ptr %i.hr, align 4
  %i.hw = load <2 x float>, ptr %i.ht, align 4
  %i.hx = fsub <2 x float> %i.hv, %i.hw           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.hx, %i.hx
  %i.hy = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.hz = extractelement <2 x float> %i.hx, i64 0 ; 2 uses
  %i.ia = call float @llvm.fmuladd.f32(float %i.hz, float %i.hz, float %i.hy)
  %i.ib = call noundef float @llvm.fmuladd.f32(float %i.hu, float %i.hu, float %i.ia)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ib)
  %i.ic = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.id = fmul float %i.hu, %i.ic
  %.sroa.9.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.id, i64 0
  %i.ie = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x float> %i.hx, %i.if
  %i.ih = add nuw nsw i32 %.038220, 1
  %i.ii = zext nneg i32 %.038220 to i64
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.ii ; 2 uses
  store <2 x float> %i.ig, ptr %i.ij, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store <2 x float> %.sroa.9.8.vec.insert, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !31
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ay:                                            ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i147, %bb.bc
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.az:                                            ; preds = %bb.aw, %.lr.ph225
  %.139 = phi i32 [ %i.ih, %bb.aw ], [ 2, %.lr.ph225 ]
  %i.im = icmp eq i32 %.pre2.pre.i148, %i.hm
  br i1 %i.im, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %.not.i.i140 = icmp eq i32 %i.hm, 0
  %i.in = shl nsw i32 %i.hm, 1
  %i.io = select i1 %.not.i.i140, i32 1, i32 %i.in ; 5 uses
  %i.ip = icmp slt i32 %i.hm, %i.io
  br i1 %i.ip, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i.i141 = icmp eq i32 %i.io, 0
  br i1 %.not.i.i.i141, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i143, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iq = sext i32 %i.io to i64
  %i.ir = shl nsw i64 %i.iq, 2
  %i.is = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ir, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i143 unwind label %bb.ay

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i143: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i144 = phi ptr [ null, %bb.bb ], [ %i.is, %bb.bc ] ; 9 uses
  %i.it = icmp sgt i32 %i.hm, 0
  br i1 %i.it, label %.lr.ph.i.i.i151, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i147

.lr.ph.i.i.i151:                                  ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i143
  %.0.i.i.i144294 = ptrtoaddr ptr %.0.i.i.i144 to i64
  %wide.trip.count.i.i.i152 = zext nneg i32 %i.hm to i64 ; 5 uses
  %min.iters.check297 = icmp ult i32 %i.hm, 8
  %i.iu = sub i64 %i.hn, %.0.i.i.i144294
  %diff.check295 = icmp ugt i64 %i.iu, -32
  %or.cond308 = or i1 %min.iters.check297, %diff.check295
  br i1 %or.cond308, label %scalar.ph296.preheader, label %vector.ph298

vector.ph298:                                     ; preds = %.lr.ph.i.i.i151
  %n.vec299 = and i64 %wide.trip.count.i.i.i152, 2147483640 ; 3 uses
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next304, %vector.body300 ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i144, i64 %index301 ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %index301 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load302 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !48
  %wide.load303 = load <4 x i32>, ptr %i.ix, align 4, !tbaa !48
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store <4 x i32> %wide.load302, ptr %i.iv, align 4, !tbaa !48
  store <4 x i32> %wide.load303, ptr %i.iy, align 4, !tbaa !48
  %index.next304 = add nuw i64 %index301, 8       ; 2 uses
  %i.iz = icmp eq i64 %index.next304, %n.vec299
  br i1 %i.iz, label %middle.block305, label %vector.body300, !llvm.loop !66

middle.block305:                                  ; preds = %vector.body300
  %cmp.n306 = icmp eq i64 %n.vec299, %wide.trip.count.i.i.i152
  br i1 %cmp.n306, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i147, label %scalar.ph296.preheader

scalar.ph296.preheader:                           ; preds = %.lr.ph.i.i.i151, %middle.block305
  %indvars.iv.i.i.i153.ph = phi i64 [ 0, %.lr.ph.i.i.i151 ], [ %n.vec299, %middle.block305 ] ; 3 uses
  %xtraiter333 = and i64 %wide.trip.count.i.i.i152, 3 ; 2 uses
  %lcmp.mod334.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod334.not, label %scalar.ph296.prol.loopexit, label %scalar.ph296.prol

scalar.ph296.prol:                                ; preds = %scalar.ph296.preheader, %scalar.ph296.prol
  %indvars.iv.i.i.i153.prol = phi i64 [ %indvars.iv.next.i.i.i154.prol, %scalar.ph296.prol ], [ %indvars.iv.i.i.i153.ph, %scalar.ph296.preheader ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN23btPolyhedralConvexShape28initializePolyhedralFeaturesEi:bb.a
  br i1 %or.cond309, label %scalar.ph281.preheader, label %vector.ph283

vector.ph283:                                     ; preds = %.lr.ph.i.i.i.i.i.i
  %n.vec284 = and i64 %wide.trip.count.i.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph283
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next289, %vector.body285 ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %index286 ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %index286 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %wide.load287 = load <4 x i32>, ptr %i.mm, align 4, !tbaa !48
  %wide.load288 = load <4 x i32>, ptr %i.mn, align 4, !tbaa !48
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  store <4 x i32> %wide.load287, ptr %i.ml, align 4, !tbaa !48
  store <4 x i32> %wide.load288, ptr %i.mo, align 4, !tbaa !48
  %index.next289 = add nuw i64 %index286, 8       ; 2 uses
  %i.mp = icmp eq i64 %index.next289, %n.vec284
  br i1 %i.mp, label %middle.block290, label %vector.body285, !llvm.loop !70

middle.block290:                                  ; preds = %vector.body285
  %cmp.n291 = icmp eq i64 %n.vec284, %wide.trip.count.i.i.i.i.i.i
  br i1 %cmp.n291, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block290
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %n.vec284, %middle.block290 ] ; 3 uses
  %xtraiter335 = and i64 %wide.trip.count.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %scalar.ph281.prol.loopexit, label %scalar.ph281.prol

scalar.ph281.prol:                                ; preds = %scalar.ph281.preheader, %scalar.ph281.prol
  %indvars.iv.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph281.prol ], [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph281.preheader ] ; 3 uses
  %prol.iter337 = phi i64 [ %prol.iter337.next, %scalar.ph281.prol ], [ 0, %scalar.ph281.preheader ]
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !48
  store i32 %i.ms, ptr %i.mq, align 4, !tbaa !48
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter337.next = add i64 %prol.iter337, 1   ; 2 uses
  %prol.iter337.cmp.not = icmp eq i64 %prol.iter337.next, %xtraiter335
  br i1 %prol.iter337.cmp.not, label %scalar.ph281.prol.loopexit, label %scalar.ph281.prol, !llvm.loop !71

scalar.ph281.prol.loopexit:                       ; preds = %scalar.ph281.prol, %scalar.ph281.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph281.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph281.prol ]
  %i.mt = sub nsw i64 %indvars.iv.i.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i.i
  %i.mu = icmp ugt i64 %i.mt, -4
  br i1 %i.mu, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i, label %scalar.ph281

scalar.ph281:                                     ; preds = %scalar.ph281.prol.loopexit, %scalar.ph281
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.3, %scalar.ph281 ], [ %indvars.iv.i.i.i.i.i.i.unr, %scalar.ph281.prol.loopexit ] ; 6 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.i.i.i.i.i.i
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv.i.i.i.i.i.i
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !48
  store i32 %i.mx, ptr %i.mv, align 4, !tbaa !48
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !48
  store i32 %i.na, ptr %i.my, align 4, !tbaa !48
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !48
  store i32 %i.nd, ptr %i.nb, align 4, !tbaa !48
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !48
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !48
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i, label %scalar.ph281, !llvm.loop !72

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i.i: ; preds = %.noexc168
  %.not.i5.i.i.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i5.i.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i: ; preds = %scalar.ph281.prol.loopexit, %scalar.ph281, %middle.block290, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i.i
  %i.nh = load i8, ptr %i.lz, align 8, !tbaa !40, !range !35, !noundef !36
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.bg, label %.lr.ph.i.i.i.i

bb.bg:                                            ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.mi)
          to label %.lr.ph.i.i.i.i unwind label %bb.bj

.lr.ph.i.i.i.i:                                   ; preds = %bb.bg, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i.i
  store i8 1, ptr %i.lz, align 8, !tbaa !40
  store ptr %i.mf, ptr %i.ma, align 8, !tbaa !41
  store i32 %i.kf, ptr %i.mc, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr align 4 %i.mf, i8 0, i64 %i.me, i1 false), !tbaa !48
  store i32 %i.kf, ptr %i.mb, align 4, !tbaa !42
  %min.iters.check = icmp ult i32 %i.kf, 8
  %i.nj = sub i64 %i.kh, %i.mg
  %diff.check = icmp ugt i64 %i.nj, -32
  %or.cond310 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond310, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %i.md, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %index ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %index ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %wide.load = load <4 x i32>, ptr %i.nl, align 4, !tbaa !48
  %wide.load278 = load <4 x i32>, ptr %i.nm, align 4, !tbaa !48
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store <4 x i32> %wide.load, ptr %i.nk, align 4, !tbaa !48
  store <4 x i32> %wide.load278, ptr %i.nn, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.no = icmp eq i64 %index.next, %n.vec
  br i1 %i.no, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.md
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i6.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter338 = and i64 %i.md, 3                 ; 2 uses
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i6.i.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i6.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter340 = phi i64 [ %prol.iter340.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.i6.i.i.i.prol
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.i6.i.i.i.prol
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !48
  store i32 %i.nr, ptr %i.np, align 4, !tbaa !48
  %indvars.iv.next.i7.i.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.i.prol, 1 ; 2 uses
  %prol.iter340.next = add i64 %prol.iter340, 1   ; 2 uses
  %prol.iter340.cmp.not = icmp eq i64 %prol.iter340.next, %xtraiter338
  br i1 %prol.iter340.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !74

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i6.i.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i7.i.i.i.prol, %scalar.ph.prol ]
  %i.ns = sub nsw i64 %indvars.iv.i6.i.i.i.ph, %i.md
  %i.nt = icmp ugt i64 %i.ns, -4
  br i1 %i.nt, label %.loopexit, label %scalar.ph

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i.i: ; preds = %bb.bf
  store i32 %i.kf, ptr %i.mb, align 4, !tbaa !42
  br label %.loopexit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i6.i.i.i = phi i64 [ %indvars.iv.next.i7.i.i.i.3, %scalar.ph ], [ %indvars.iv.i6.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.i6.i.i.i
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.i6.i.i.i
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !48
  store i32 %i.nw, ptr %i.nu, align 4, !tbaa !48
  %indvars.iv.next.i7.i.i.i = add nuw nsw i64 %indvars.iv.i6.i.i.i, 1 ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next.i7.i.i.i
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.next.i7.i.i.i
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !48
  store i32 %i.nz, ptr %i.nx, align 4, !tbaa !48
  %indvars.iv.next.i7.i.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 2 ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next.i7.i.i.i.1
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.next.i7.i.i.i.1
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !48
  store i32 %i.oc, ptr %i.oa, align 4, !tbaa !48
  %indvars.iv.next.i7.i.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 3 ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next.i7.i.i.i.2
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.next.i7.i.i.i.2
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !48
  store i32 %i.of, ptr %i.od, align 4, !tbaa !48
  %indvars.iv.next.i7.i.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.i.3, %i.md
  br i1 %exitcond.not.i8.i.i.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !75

bb.bh:                                            ; preds = %.lr.ph230, %bb.bh
  %indvars.iv239 = phi i64 [ 0, %.lr.ph230 ], [ %indvars.iv.next240, %bb.bh ] ; 2 uses
  %.035227 = phi float [ 1.000000e+30, %.lr.ph230 ], [ %.1, %bb.bh ] ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv239
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !48
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds [16 x i8], ptr %i.li, i64 %i.oi ; 3 uses
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !52
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.om = load float, ptr %i.ol, align 4, !tbaa !52
  %i.on = fmul float %i.lk, %i.om
  %i.oo = call float @llvm.fmuladd.f32(float %i.ok, float %i.lj, float %i.on)
  %i.op = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.oq = load float, ptr %i.op, align 4, !tbaa !52
  %i.or = call noundef float @llvm.fmuladd.f32(float %i.oq, float %i.lf, float %i.oo) ; 2 uses
  %i.os = fcmp ogt float %.035227, %i.or
  %.1 = select i1 %i.os, float %i.or, float %.035227 ; 2 uses
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %._crit_edge231, label %bb.bh, !llvm.loop !76

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ot, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false), !tbaa.struct !32
  %i.ou = load i32, ptr %i.lm, align 4, !tbaa !56
  %i.ov = add nsw i32 %i.ou, 1
  store i32 %i.ov, ptr %i.lm, align 4, !tbaa !56
  %9 = load i8, ptr %i.ga, align 8, !range !35
  %10 = trunc nuw i8 %9 to i1
  br i1 %10, label %11, label %_ZN6btFaceD2Ev.exit

11:                                               ; preds = %.loopexit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ke)
          to label %_ZN6btFaceD2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %11
  %i.ow = landingpad { ptr, i32 }
          catch ptr null
  %i.ox = extractvalue { ptr, i32 } %i.ow, 0
  call void @__clang_call_terminate(ptr %i.ox) #17
  unreachable

_ZN6btFaceD2Ev.exit:                              ; preds = %.loopexit, %11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.oy = load i32, ptr %i.bj, align 4, !tbaa !42
  %i.oz = sext i32 %i.oy to i64
  %i.pa = icmp slt i64 %indvars.iv.next245, %i.oz
  br i1 %i.pa, label %bb.av, label %._crit_edge234, !llvm.loop !77

bb.bj:                                            ; preds = %bb.bg, %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i.i, %bb.be
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.ay, %bb.ax
  %.pn70 = phi { ptr, i32 } [ %i.il, %bb.ay ], [ %i.ik, %bb.ax ], [ %i.pb, %bb.bj ]
  call void @_ZN6btFaceD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.bp

bb.bl:                                            ; preds = %._crit_edge234
  call void @_ZN20btConvexHullComputerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.pc = load ptr, ptr %i.h, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i170 = icmp ne ptr %i.pc, null
  %i.pd = load i8, ptr %i.g, align 8, !range !35
  %i.pe = trunc nuw i8 %i.pd to i1
  %or.cond.i.i171 = select i1 %.not.i.i.i170, i1 %i.pe, i1 false
  br i1 %or.cond.i.i171, label %bb.bm, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit172

bb.bm:                                            ; preds = %bb.bl
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.pc)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit172 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pf = landingpad { ptr, i32 }
          catch ptr null
  %i.pg = extractvalue { ptr, i32 } %i.pf, 0
  call void @__clang_call_terminate(ptr %i.pg) #17
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit172: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i1 true

bb.bo:                                            ; preds = %._crit_edge234
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bk, %bb.bo, %bb.au, %bb.an, %bb.al
  %.pn75.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn, %bb.al ], [ %i.el, %bb.an ], [ %i.gk, %bb.au ], [ %.pn70, %bb.bk ], [ %i.ph, %bb.bo ]
  call void @_ZN20btConvexHullComputerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.bq

bb.bq:                                            ; preds = %bb.f, %bb.p, %bb.o, %bb.bp
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn.pn.pn, %bb.bp ], [ %i.p, %bb.f ], [ %i.au, %bb.p ], [ %i.at, %bb.o ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn82.pn.pn
}

declare void @_ZN18btConvexPolyhedronC1Ev(ptr noundef nonnull align 8 dereferenceable(172)) unnamed_addr #1

declare void @_ZN14btGeometryUtil29getPlaneEquationsFromVerticesER20btAlignedObjectArrayI9btVector3ES3_(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare void @_ZN14btGeometryUtil29getVerticesFromPlaneEquationsERK20btAlignedObjectArrayI9btVector3ERS2_(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !35
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #17
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6btFaceD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !35
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #17
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN18btConvexPolyhedron10initializeEv(ptr noundef nonnull align 8 dereferenceable(172)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btConvexHullComputerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i8, ptr %i.c, align 8, !range !35
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #17
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i8, ptr %i.j, align 8, !range !35
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.l, i1 false
  br i1 %or.cond.i.i2, label %bb.d, label %_ZN20btAlignedObjectArrayIN20btConvexHullComputer4EdgeEED2Ev.exit

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20btAlignedObjectArrayIN20btConvexHullComputer4EdgeEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #17
  unreachable

_ZN20btAlignedObjectArrayIN20btConvexHullComputer4EdgeEED2Ev.exit: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i3 = icmp ne ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i8, ptr %i.q, align 8, !range !35
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i4 = select i1 %.not.i.i.i3, i1 %i.s, i1 false
  br i1 %or.cond.i.i4, label %bb.f, label %_ZN20btAlignedObjectArrayIiED2Ev.exit5

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayIN20btConvexHullComputer4EdgeEED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit5 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #17
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit5:           ; preds = %_ZN20btAlignedObjectArrayIN20btConvexHullComputer4EdgeEED2Ev.exit, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 2 uses
  %.not.i.i.i6 = icmp ne ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i8, ptr %i.x, align 8, !range !35
  %i.z = trunc nuw i8 %i.y to i1
end_hunk_1
