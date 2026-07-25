inline.NumInlined: 485
inline.NumDeleted: 277
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3re24Prog9IsOnePassEv:bb.a
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !111 ; 5 uses
  %i.ds = and i32 %i.dr, 7
  switch i32 %i.ds, label %default.unreachable [
    i32 1, label %bb.ac
    i32 2, label %bb.af
    i32 3, label %bb.bc
    i32 4, label %bb.bc
    i32 6, label %bb.bc
    i32 5, label %bb.bm
    i32 7, label %.loopexit
    i32 0, label %bb.u
  ]

default.unreachable:                              ; preds = %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270
  unreachable

bb.u:                                             ; preds = %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str, i32 noundef 447, i32 noundef 2) #15
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 18, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit unwind label %bb.y

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.dt = load i32, ptr %i.dq, align 4, !tbaa !111
  %i.du = and i32 %i.dt, 7
  store i32 %i.du, ptr %i.c, align 4, !tbaa !113
  %i.dv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re26InstOpETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS7_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.w unwind label %bb.z       ; 0 uses

bb.w:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.loopexit

bb.x:                                             ; preds = %bb.u
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.v
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn223 = phi { ptr, i32 } [ %i.dy, %bb.z ], [ %i.dx, %bb.y ]
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn223.pn = phi { ptr, i32 } [ %.pn223, %bb.aa ], [ %i.dw, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.bv

bb.ac:                                            ; preds = %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270
  %i.dz = add nsw i32 %.0198, 1                   ; 7 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eb = load i32, ptr %i.bz, align 8
  %.not6.i.i264 = icmp ugt i32 %i.eb, %i.dz
  br i1 %.not6.i.i264, label %bb.ae, label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270.backedge

bb.ae:                                            ; preds = %bb.ad
  %i.ec = sext i32 %i.dz to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ec ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3  ; 2 uses
  %i.ef = load i32, ptr %5, align 8, !tbaa !93    ; 4 uses
  %i.eg = icmp ult i32 %i.ee, %i.ef
  br i1 %i.eg, label %_ZNK3re210SparseSetTIvE8containsEi.exit.i268, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i267

_ZNK3re210SparseSetTIvE8containsEi.exit.i268:     ; preds = %bb.ae
  %i.eh = sext i32 %i.ee to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3
  %i.ek = icmp eq i32 %i.ej, %i.dz
  br i1 %i.ek, label %_ZN3re210SparseSetTIvED2Ev.exit324, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i267

_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i267: ; preds = %_ZNK3re210SparseSetTIvE8containsEi.exit.i268, %bb.ae
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !3
  %i.el = sext i32 %i.ef to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.el
  store i32 %i.dz, ptr %i.em, align 4, !tbaa !3
  %i.en = add nsw i32 %i.ef, 1
  store i32 %i.en, ptr %5, align 8, !tbaa !93
  br label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270.backedge

bb.af:                                            ; preds = %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270
  %i.eo = lshr i32 %i.dr, 4                       ; 5 uses
  %i.ep = zext nneg i32 %i.eo to i64              ; 4 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3  ; 2 uses
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %.not215 = icmp slt i32 %.2177, %i.o
  br i1 %.not215, label %bb.ah, label %_ZN3re210SparseSetTIvED2Ev.exit324

bb.ah:                                            ; preds = %bb.ag
  %i.et = icmp eq i32 %i.eo, 0
  br i1 %i.et, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = load i32, ptr %i.bs, align 8
  %.not6.i.i272 = icmp ugt i32 %i.eu, %i.eo
  br i1 %.not6.i.i272, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ep ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3  ; 2 uses
  %i.ex = load i32, ptr %4, align 8, !tbaa !93    ; 4 uses
  %i.ey = icmp ult i32 %i.ew, %i.ex
  br i1 %i.ey, label %_ZNK3re210SparseSetTIvE8containsEi.exit.i276, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i275

_ZNK3re210SparseSetTIvE8containsEi.exit.i276:     ; preds = %bb.aj
  %i.ez = sext i32 %i.ew to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = icmp eq i32 %i.fb, %i.eo
  br i1 %i.fc, label %bb.ak, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i275

_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i275: ; preds = %_ZNK3re210SparseSetTIvE8containsEi.exit.i276, %bb.aj
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !3
  %i.fd = sext i32 %i.ex to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.fd
  store i32 %i.eo, ptr %i.fe, align 4, !tbaa !3
  %i.ff = add nsw i32 %i.ex, 1
  store i32 %i.ff, ptr %4, align 8, !tbaa !93
  %.pre485 = load i32, ptr %i.dq, align 4, !tbaa !111
  %.pre489 = lshr i32 %.pre485, 4
  %.pre490 = zext nneg i32 %.pre489 to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.ai, %_ZNK3re210SparseSetTIvE8containsEi.exit.i276, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i275
  %.pre-phi491 = phi i64 [ 0, %bb.ah ], [ %i.ep, %bb.ai ], [ %i.ep, %_ZNK3re210SparseSetTIvE8containsEi.exit.i276 ], [ %.pre490, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i275 ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.pre-phi491
  store i32 %.2177, ptr %i.fg, align 4, !tbaa !3
  %i.fh = load i64, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.fi = trunc i64 %i.fh to i1
  %i.fj = load ptr, ptr %i.cf, align 8
  %i.fk = select i1 %i.fi, ptr %i.fj, ptr %i.cf
  %i.fl = lshr i64 %i.fh, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1, !tbaa !54
  %i.fn = invoke noundef ptr @_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m(ptr noundef nonnull align 8 dereferenceable(2056) %3, ptr noundef %i.fm, ptr nonnull %i.a, i64 noundef %i.x)
          to label %bb.al unwind label %bb.am     ; 0 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.fo = add nsw i32 %.2177, 1
  %i.fp = load i64, ptr %3, align 8, !tbaa !70
  %i.fq = trunc i64 %i.fp to i1
  %i.fr = load ptr, ptr %i.cf, align 8
  %i.fs = select i1 %i.fq, ptr %i.fr, ptr %i.cf
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.cy
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.an:                                            ; preds = %bb.al, %bb.af
  %.2190 = phi ptr [ %i.ft, %bb.al ], [ %.1189, %bb.af ] ; 6 uses
  %.0187 = phi i32 [ %.2177, %bb.al ], [ %i.er, %bb.af ] ; 2 uses
  %.3178 = phi i32 [ %i.fo, %bb.al ], [ %.2177, %bb.af ] ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 4, !tbaa !54  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dq, i64 5 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !54  ; 3 uses
  %.not216449 = icmp ugt i8 %i.fw, %i.fy
  br i1 %.not216449, label %._crit_edge453, label %.lr.ph452

.lr.ph452:                                        ; preds = %bb.an
  %i.fz = zext i8 %i.fw to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %.2190, i64 4
  %i.gb = shl i32 %.0187, 16
  %i.gc = zext nneg i8 %.1207 to i32
  %i.gd = shl nuw nsw i32 %i.gc, 6
  %i.ge = or disjoint i32 %i.gb, %i.gd
  %spec.select = or i32 %i.ge, %.0194             ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph452, %bb.as
  %i.gf = phi i8 [ %i.fy, %.lr.ph452 ], [ %i.gs, %bb.as ]
  %.0185450 = phi i32 [ %i.fz, %.lr.ph452 ], [ %i.gt, %bb.as ] ; 2 uses
  %i.gg = sext i32 %.0185450 to i64               ; 3 uses
  %i.gh = getelementptr inbounds i8, ptr %i.ck, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !54  ; 2 uses
  %smax477 = call i64 @llvm.smax.i64(i64 %i.gg, i64 255)
  %exitcond.not611 = icmp sgt i32 %.0185450, 254
  br i1 %exitcond.not611, label %.critedge, label %.lr.ph614

bb.ap:                                            ; preds = %.lr.ph614
  %exitcond.not = icmp eq i64 %indvars.iv.next475, %smax477
  br i1 %exitcond.not, label %.critedge, label %.lr.ph614, !llvm.loop !115

.lr.ph614:                                        ; preds = %bb.ao, %bb.ap
  %indvars.iv474612 = phi i64 [ %indvars.iv.next475, %bb.ap ], [ %i.gg, %bb.ao ] ; 2 uses
  %indvars.iv.next475 = add nsw i64 %indvars.iv474612, 1 ; 3 uses
  %i.gj = getelementptr inbounds i8, ptr %i.ck, i64 %indvars.iv.next475
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !54
  %i.gl = icmp eq i8 %i.gk, %i.gi
  br i1 %i.gl, label %bb.ap, label %.critedge.split.loop.exit571, !llvm.loop !115

.critedge.split.loop.exit571:                     ; preds = %.lr.ph614
  %i.gm = trunc nsw i64 %indvars.iv474612 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.ap, %bb.ao, %.critedge.split.loop.exit571
  %.1186.lcssa = phi i32 [ %i.gm, %.critedge.split.loop.exit571 ], [ 255, %bb.ao ], [ 255, %bb.ap ] ; 2 uses
  %i.gn = zext i8 %i.gi to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gn ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !3  ; 2 uses
  %i.gq = and i32 %i.gp, 48
  %i.gr = icmp eq i32 %i.gq, 48
  br i1 %i.gr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.critedge
  store i32 %spec.select, ptr %i.go, align 4, !tbaa !3
  %.pre486 = load i8, ptr %i.fx, align 1, !tbaa !54
  br label %bb.as

bb.ar:                                            ; preds = %.critedge
  %.not217 = icmp eq i32 %i.gp, %spec.select
  br i1 %.not217, label %bb.as, label %_ZN3re210SparseSetTIvED2Ev.exit324

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.gs = phi i8 [ %.pre486, %bb.aq ], [ %i.gf, %bb.ar ] ; 3 uses
  %i.gt = add nsw i32 %.1186.lcssa, 1
  %i.gu = zext i8 %i.gs to i32
  %.not216.not = icmp slt i32 %.1186.lcssa, %i.gu
  br i1 %.not216.not, label %bb.ao, label %._crit_edge453, !llvm.loop !116

._crit_edge453:                                   ; preds = %bb.as, %bb.an
  %i.gv = phi i8 [ %i.fy, %bb.an ], [ %i.gs, %bb.as ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dq, i64 6
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !54
  %i.gy = and i16 %i.gx, 1
  %.not218 = icmp eq i16 %i.gy, 0
  br i1 %.not218, label %.thread361, label %bb.at

bb.at:                                            ; preds = %._crit_edge453
  %i.gz = load i8, ptr %i.fv, align 4, !tbaa !54
  %i.ha = call i8 @llvm.umax.i8(i8 %i.gz, i8 97)  ; 2 uses
  %i.hb = call i8 @llvm.umin.i8(i8 %i.gv, i8 122) ; 2 uses
  %.sroa.speculated = zext nneg i8 %i.hb to i32
  %i.hc = add nsw i32 %.sroa.speculated, -32
  %.not219454 = icmp ugt i8 %i.ha, %i.hb
  br i1 %.not219454, label %.thread361, label %.lr.ph457

.lr.ph457:                                        ; preds = %bb.at
  %.sroa.speculated336 = zext nneg i8 %i.ha to i32
  %i.hd = add nsw i32 %.sroa.speculated336, -32
  %i.he = getelementptr inbounds nuw i8, ptr %.2190, i64 4
  %i.hf = shl i32 %.0187, 16
  %i.hg = zext nneg i8 %.1207 to i32
  %i.hh = shl nuw nsw i32 %i.hg, 6
  %i.hi = or disjoint i32 %i.hf, %i.hh
  %spec.select234 = or i32 %i.hi, %.0194          ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph457, %bb.ay
  %.0154455 = phi i32 [ %i.hd, %.lr.ph457 ], [ %i.hv, %bb.ay ] ; 3 uses
  %i.hj = sext i32 %.0154455 to i64               ; 3 uses
  %i.hk = getelementptr inbounds i8, ptr %i.ck, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !54  ; 2 uses
  %smax480 = call i32 @llvm.smax.i32(i32 %.0154455, i32 255) ; 2 uses
  %smax482 = call i64 @llvm.smax.i64(i64 %i.hj, i64 255)
  %exitcond483.not615 = icmp sgt i32 %.0154455, 254
  br i1 %exitcond483.not615, label %.critedge10, label %.lr.ph618

bb.av:                                            ; preds = %.lr.ph618
  %exitcond483.not = icmp eq i64 %indvars.iv.next479, %smax482
  br i1 %exitcond483.not, label %.critedge10, label %.lr.ph618, !llvm.loop !117

.lr.ph618:                                        ; preds = %bb.au, %bb.av
  %indvars.iv478616 = phi i64 [ %indvars.iv.next479, %bb.av ], [ %i.hj, %bb.au ] ; 2 uses
  %indvars.iv.next479 = add nsw i64 %indvars.iv478616, 1 ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %i.ck, i64 %indvars.iv.next479
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !54
  %i.ho = icmp eq i8 %i.hn, %i.hl
  br i1 %i.ho, label %bb.av, label %.critedge10.split.loop.exit573, !llvm.loop !117

.critedge10.split.loop.exit573:                   ; preds = %.lr.ph618
  %i.hp = trunc nsw i64 %indvars.iv478616 to i32
  br label %.critedge10

.critedge10:                                      ; preds = %bb.av, %bb.au, %.critedge10.split.loop.exit573
  %.1155.lcssa = phi i32 [ %i.hp, %.critedge10.split.loop.exit573 ], [ %smax480, %bb.au ], [ %smax480, %bb.av ] ; 2 uses
  %i.hq = zext i8 %i.hl to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hq ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3  ; 2 uses
  %i.ht = and i32 %i.hs, 48
  %i.hu = icmp eq i32 %i.ht, 48
  br i1 %i.hu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.critedge10
  store i32 %spec.select234, ptr %i.hr, align 4, !tbaa !3
  br label %bb.ay

bb.ax:                                            ; preds = %.critedge10
  %.not220 = icmp eq i32 %i.hs, %spec.select234
  br i1 %.not220, label %bb.ay, label %_ZN3re210SparseSetTIvED2Ev.exit324

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.hv = add nsw i32 %.1155.lcssa, 1
  %.not219.not = icmp slt i32 %.1155.lcssa, %i.hc
  br i1 %.not219.not, label %bb.au, label %.thread361, !llvm.loop !118

.thread361:                                       ; preds = %bb.ay, %bb.at, %._crit_edge453
  %i.hw = load i32, ptr %i.dq, align 4, !tbaa !111
  %i.hx = and i32 %i.hw, 8
  %.not221 = icmp eq i32 %i.hx, 0
  br i1 %.not221, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %.thread361
  %i.hy = add nsw i32 %.0198, 1                   ; 7 uses
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270.backedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ia = load i32, ptr %i.bz, align 8
  %.not6.i.i285 = icmp ugt i32 %i.ia, %i.hy
  br i1 %.not6.i.i285, label %bb.bb, label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270.backedge

bb.bb:                                            ; preds = %bb.ba
  %i.ib = sext i32 %i.hy to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ib ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !3  ; 2 uses
  %i.ie = load i32, ptr %5, align 8, !tbaa !93    ; 3 uses
  %i.if = icmp ult i32 %i.id, %i.ie
  br i1 %i.if, label %_ZNK3re210SparseSetTIvE8containsEi.exit.i289, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i288

_ZNK3re210SparseSetTIvE8containsEi.exit.i289:     ; preds = %bb.bb
  %i.ig = sext i32 %i.id to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !3
  %i.ij = icmp eq i32 %i.ii, %i.hy
  br i1 %i.ij, label %_ZN3re210SparseSetTIvED2Ev.exit324, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i288

_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i288: ; preds = %_ZNK3re210SparseSetTIvE8containsEi.exit.i289, %bb.bb
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !3
  %i.ik = sext i32 %i.ie to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ik
  store i32 %i.hy, ptr %i.il, align 4, !tbaa !3
  %i.im = load i32, ptr %5, align 8, !tbaa !93
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %5, align 8, !tbaa !93
  br label %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270.backedge

bb.bc:                                            ; preds = %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270, %_ZN3re2L4AddQEPNS_10SparseSetTIvEEi.exit270
  %i.io = and i32 %i.dr, 8
  %.not214 = icmp eq i32 %i.io, 0
  br i1 %.not214, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.ip = add nsw i32 %.0198, 1                   ; 6 uses
  %i.iq = icmp ne i32 %i.ip, 0
  %i.ir = load i32, ptr %i.bz, align 8
  %.not6.i.i293 = icmp ugt i32 %i.ir, %i.ip
  %or.cond = select i1 %i.iq, i1 %.not6.i.i293, i1 false
  br i1 %or.cond, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.is = sext i32 %i.ip to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.is ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !3  ; 2 uses
  %i.iv = load i32, ptr %5, align 8, !tbaa !93    ; 3 uses
  %i.iw = icmp ult i32 %i.iu, %i.iv
  br i1 %i.iw, label %_ZNK3re210SparseSetTIvE8containsEi.exit.i297, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i296

_ZNK3re210SparseSetTIvE8containsEi.exit.i297:     ; preds = %bb.be
  %i.ix = sext i32 %i.iu to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !3
  %i.ja = icmp eq i32 %i.iz, %i.ip
  br i1 %i.ja, label %_ZN3re210SparseSetTIvED2Ev.exit324, label %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i296

_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i296: ; preds = %_ZNK3re210SparseSetTIvE8containsEi.exit.i297, %bb.be
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !3
  %i.jb = sext i32 %i.iv to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.jb
  store i32 %i.ip, ptr %i.jc, align 4, !tbaa !3
  %i.jd = load i32, ptr %5, align 8, !tbaa !93
  %i.je = add nsw i32 %i.jd, 1
  store i32 %i.je, ptr %5, align 8, !tbaa !93
  %.pre.pre = load i32, ptr %i.dq, align 4, !tbaa !111
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i296
  %.pre = phi i32 [ %i.dr, %bb.bd ], [ %.pre.pre, %_ZNK3re210SparseSetTIvE8containsEi.exit.thread.i.i.i296 ]
  %i.jf = sext i32 %.1203 to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.jf ; 2 uses
  store i32 %i.ip, ptr %i.jg, align 4, !tbaa !106
end_hunk_0
