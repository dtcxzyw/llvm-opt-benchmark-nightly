inline.NumInlined: 33057
inline.NumDeleted: 6232
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 171
begin_hunk_0_@"_ZZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEvENKUlvE_clEv":bb.a
  br label %_ZN8facebook5velox4simd9transposeIiiN5xsimd4fma3INS3_4avx2EEEEEvPKT_N5folly5RangeIPKT0_EEPS7_.exit.i

_ZN8facebook5velox4simd9transposeIiiN5xsimd4fma3INS3_4avx2EEEEEvPKT_N5folly5RangeIPKT0_EEPS7_.exit.i: ; preds = %bb.n, %._crit_edge.i.i
  invoke void @_ZN8facebook5velox4simd10gatherBitsEPKmN5folly5RangeIPKiEEPm(ptr noundef %i.n, ptr %i.bi, ptr %i.ca, ptr noundef %i.aw)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %_ZN8facebook5velox4simd9transposeIiiN5xsimd4fma3INS3_4avx2EEEEEvPKT_N5folly5RangeIPKT0_EEPS7_.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !227
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = load ptr, ptr %43, align 8, !tbaa !209
  invoke void @_ZN8facebook5velox7Scratch7releaseEONS0_10raw_vectorIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %.pr.i.i = load ptr, ptr %i.dj, align 8, !tbaa !227 ; 2 uses
  %i.dm = icmp eq ptr %.pr.i.i, null
  br i1 %i.dm, label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dn = getelementptr inbounds i8, ptr %.pr.i.i, i64 -32 ; 2 uses
  %i.do = load ptr, ptr %i.ba, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !229
  %i.dr = add i64 %i.dq, 64
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !55
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 120
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(264) %i.do, ptr noundef nonnull %i.dn, i64 noundef %i.dr)
          to label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit.i unwind label %bb.u, !inline_history !482

bb.t:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.dn) #36
  br label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit.i

bb.u:                                             ; preds = %bb.s
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #47
  unreachable

bb.v:                                             ; preds = %bb.p
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #47
  unreachable

_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit.i: ; preds = %bb.t, %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #36
  br label %bb.y

bb.w:                                             ; preds = %bb.j, %bb.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.x:                                             ; preds = %_ZN8facebook5velox4simd9transposeIiiN5xsimd4fma3INS3_4avx2EEEEEvPKT_N5folly5RangeIPKT0_EEPS7_.exit.i, %bb.l, %bb.k
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev(ptr noundef nonnull align 8 dead_on_return(340) dereferenceable(340) %43) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #36
  br label %bb.ap

bb.y:                                             ; preds = %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit.i, %bb.g
  %.pre-phi91.i = phi i64 [ %.pre90.i, %bb.g ], [ %i.bz, %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit.i ] ; 5 uses
  %.055.i = phi i32 [ %i.ar, %bb.g ], [ %i.bq, %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit.i ] ; 2 uses
  %.0.i = phi ptr [ %i.ak, %bb.g ], [ %i.aw, %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #36
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 232 ; 3 uses
  store ptr %i.eb, ptr %45, align 8, !tbaa !7491
  %i.ec = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.ec, align 8, !tbaa !7493
  %i.ed = getelementptr inbounds nuw i8, ptr %45, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ed, i8 0, i64 44, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 280 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !115 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.eb, i64 noundef %.pre-phi91.i)
          to label %.noexc70.i unwind label %bb.ak

.noexc70.i:                                       ; preds = %bb.z
  %.pre.i.i.i = load ptr, ptr %i.ee, align 8, !tbaa !115
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc70.i, %bb.y
  %i.eg = phi ptr [ %.pre.i.i.i, %.noexc70.i ], [ %i.ef, %bb.y ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !117
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !116 ; 3 uses
  %i.el = sub nsw i64 %i.ei, %i.ek
  %.not11.i.i.i = icmp slt i64 %i.el, %.pre-phi91.i
  br i1 %.not11.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.em = add nsw i64 %i.ek, %.pre-phi91.i
  store i64 %i.em, ptr %i.ej, align 8, !tbaa !116
  %i.en = load ptr, ptr %i.eg, align 8, !tbaa !118
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ek
  br label %_ZN8facebook5velox12AppendWindowIhE3getEi.exit.i

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZN8facebook5velox16ByteOutputStream11ensureSpaceEi(ptr noundef nonnull align 8 dereferenceable(64) %i.eb, i32 noundef %.055.i)
          to label %.noexc71.i unwind label %bb.ak

.noexc71.i:                                       ; preds = %bb.ac
  %i.ep = invoke noundef ptr @_ZN8facebook5velox10ScratchPtrIhLi0EE3getEi(ptr noundef nonnull align 8 dereferenceable(52) %i.ec, i32 noundef %.055.i)
          to label %_ZN8facebook5velox12AppendWindowIhE3getEi.exit.i unwind label %bb.ak

_ZN8facebook5velox12AppendWindowIhE3getEi.exit.i: ; preds = %.noexc71.i, %bb.ab
  %.0.i.i.i = phi ptr [ %i.eo, %bb.ab ], [ %i.ep, %.noexc71.i ]
  %i.eq = add nsw i64 %.pre-phi91.i, 7
  %i.er = lshr i64 %i.eq, 3                       ; 3 uses
  %.not79.i = icmp eq i64 %i.er, 0
  br i1 %.not79.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN8facebook5velox12AppendWindowIhE3getEi.exit.i
  %i.es = add nsw i64 %i.er, -1
  br label %bb.al

._crit_edge.i:                                    ; preds = %bb.ao, %_ZN8facebook5velox12AppendWindowIhE3getEi.exit.i
  call void @_ZN8facebook5velox12AppendWindowIhED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %45) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  %i.et = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !227
  %.not.i73.i = icmp eq ptr %i.eu, null
  br i1 %.not.i73.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119serializeFlatVectorILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i
  %i.ev = load ptr, ptr %42, align 8, !tbaa !442
  invoke void @_ZN8facebook5velox7Scratch7releaseEONS0_10raw_vectorIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %.pr.i74.i = load ptr, ptr %i.et, align 8, !tbaa !227 ; 2 uses
  %i.ew = icmp eq ptr %.pr.i74.i, null
  br i1 %i.ew, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119serializeFlatVectorILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ex = getelementptr inbounds i8, ptr %.pr.i74.i, i64 -32 ; 2 uses
  %i.ey = load ptr, ptr %i.o, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i75.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i75.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ez = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !229
  %i.fb = add i64 %i.fa, 64
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !55
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 120
  %i.fe = load ptr, ptr %i.fd, align 8
  invoke void %i.fe(ptr noundef nonnull align 8 dereferenceable(264) %i.ey, ptr noundef nonnull %i.ex, i64 noundef %i.fb)
          to label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119serializeFlatVectorILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit unwind label %bb.ai, !inline_history !482

bb.ah:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.ex) #36
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119serializeFlatVectorILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #47
  unreachable

bb.aj:                                            ; preds = %bb.ad
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #47
  unreachable

bb.ak:                                            ; preds = %.noexc71.i, %bb.ac, %bb.z
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox12AppendWindowIhED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %45) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  br label %bb.ap

bb.al:                                            ; preds = %bb.ao, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ao ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !34
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_114bitsToBytesMapE, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !121 ; 2 uses
  store i64 %i.fo, ptr %i.a, align 8, !tbaa !121
  %i.fp = shl nuw nsw i64 %indvars.iv.i, 3        ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.fp ; 2 uses
  %i.fr = icmp ugt i64 %i.es, %indvars.iv.i
  br i1 %i.fr, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i64 %i.fo, ptr %i.fq, align 1
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.fs = sub nsw i64 %.pre-phi91.i, %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr nonnull align 8 %i.a, i64 %i.fs, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.er
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.al, !llvm.loop !7495

common.resume:                                    ; preds = %bb.mq, %.body.i486, %bb.kw, %.body.i404, %bb.it, %.body.i284, %bb.gz, %.body.i204, %bb.ew, %.body.i88, %bb.cs, %.body.i19, %bb.ax, %.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.body.i590, %bb.pe, %bb.oq, %bb.ap
  %common.resume.op = phi { ptr, i32 } [ %.pn66.pn.pn.i, %bb.ap ], [ %i.eco, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.io, %bb.ax ], [ %i.wl, %bb.cs ], [ %i.asm, %bb.ew ], [ %i.boq, %bb.gz ], [ %i.ccs, %bb.it ], [ %i.cwl, %bb.kw ], [ %i.dwh, %bb.oq ], [ %i.dxy, %bb.pe ], [ %eh.lpad-body.i591, %.body.i590 ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i20, %.body.i19 ], [ %eh.lpad-body.i89, %.body.i88 ], [ %eh.lpad-body.i205, %.body.i204 ], [ %eh.lpad-body.i285, %.body.i284 ], [ %eh.lpad-body.i405, %.body.i404 ], [ %eh.lpad-body.i487, %.body.i486 ], [ %i.djv, %bb.mq ]
  resume { ptr, i32 } %common.resume.op

bb.ap:                                            ; preds = %bb.ak, %bb.x, %bb.w, %bb.h
  %.pn66.pn.pn.i = phi { ptr, i32 } [ %i.fj, %bb.ak ], [ %i.as, %bb.h ], [ %i.ea, %bb.x ], [ %i.dz, %bb.w ]
  call void @_ZN8facebook5velox10ScratchPtrImLi4EED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %42) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #36
  br label %common.resume

_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119serializeFlatVectorILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit: ; preds = %._crit_edge.i, %bb.ae, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #36
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119serializeFlatVectorILNS0_8TypeKindE3EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit

bb.aq:                                            ; preds = %bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !7453, !nonnull !9, !align !640 ; 10 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !7454, !nonnull !9, !align !640
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !52 ; 11 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !7455, !nonnull !9, !align !640 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !648 ; 22 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !83
  %.not.i2 = icmp eq ptr %i.gd, null
  br i1 %.not.i2, label %bb.ar, label %bb.bd

bb.ar:                                            ; preds = %bb.aq
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 5 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !218
  %i.gg = load ptr, ptr %i.fu, align 8, !tbaa !216
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 2 uses
  %i.gk = lshr exact i64 %i.gj, 2
  %i.gl = trunc i64 %i.gk to i32                  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fx, i64 68
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !90
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %bb.as, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fx, i64 104
  %sext.i15 = shl i64 %i.gj, 30
  %i.gq = ashr i64 %sext.i15, 32
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.gp, i1 noundef zeroext false, i64 noundef %i.gq)
  %.pre.i16 = load ptr, ptr %i.ge, align 8, !tbaa !218
  %.pre77.i = load ptr, ptr %i.fu, align 8, !tbaa !216
  %.pre78.i = ptrtoint ptr %.pre.i16 to i64
  %.pre79.i = ptrtoint ptr %.pre77.i to i64
  %.pre81.i = sub i64 %.pre78.i, %.pre79.i
  %.pre83.i17 = lshr exact i64 %.pre81.i, 2
  %.pre85.i = trunc i64 %.pre83.i17 to i32
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i: ; preds = %bb.as, %bb.ar
  %.pre-phi86.i = phi i32 [ %i.gl, %bb.ar ], [ %.pre85.i, %bb.as ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fx, i64 64 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !113
  %i.gt = add nsw i32 %i.gs, %i.gl
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #36
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fx, i64 232 ; 3 uses
  store ptr %i.gu, ptr %40, align 8, !tbaa !7491
  %i.gv = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  store ptr %i.fz, ptr %i.gv, align 8, !tbaa !7496
  %i.gw = getelementptr inbounds nuw i8, ptr %40, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.gw, i8 0, i64 44, i1 false)
  %i.gx = shl i32 %.pre-phi86.i, 2                ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fx, i64 280 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !115 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.gz, null
  %i.ha = sext i32 %i.gx to i64                   ; 3 uses
  br i1 %.not.i.i.i8, label %bb.at, label %._crit_edge.i.i.i

bb.at:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i
  invoke void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.gu, i64 noundef %i.ha)
          to label %.noexc.i unwind label %bb.ax

.noexc.i:                                         ; preds = %bb.at
  %.pre.i.i.i14 = load ptr, ptr %i.gy, align 8, !tbaa !115
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i
  %i.hb = phi ptr [ %.pre.i.i.i14, %.noexc.i ], [ %i.gz, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !117
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !116 ; 3 uses
  %i.hg = sub nsw i64 %i.hd, %i.hf
  %.not11.i.i.i9 = icmp slt i64 %i.hg, %i.ha
  br i1 %.not11.i.i.i9, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i.i.i
  %i.hh = add nsw i64 %i.hf, %i.ha
  store i64 %i.hh, ptr %i.he, align 8, !tbaa !116
  %i.hi = load ptr, ptr %i.hb, align 8, !tbaa !118
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 %i.hf
  br label %_ZN8facebook5velox12AppendWindowIiE3getEi.exit.i

bb.av:                                            ; preds = %._crit_edge.i.i.i
  invoke void @_ZN8facebook5velox16ByteOutputStream11ensureSpaceEi(ptr noundef nonnull align 8 dereferenceable(64) %i.gu, i32 noundef %i.gx)
          to label %.noexc42.i unwind label %bb.ax

.noexc42.i:                                       ; preds = %bb.av
  %i.hk = invoke noundef ptr @_ZN8facebook5velox10ScratchPtrIiLi0EE3getEi(ptr noundef nonnull align 8 dereferenceable(52) %i.gv, i32 noundef %.pre-phi86.i)
          to label %_ZN8facebook5velox12AppendWindowIiE3getEi.exit.i unwind label %bb.ax

_ZN8facebook5velox12AppendWindowIiE3getEi.exit.i: ; preds = %.noexc42.i, %bb.au
  %.0.i.i.i10 = phi ptr [ %i.hj, %bb.au ], [ %i.hk, %.noexc42.i ] ; 14 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !7498, !range !8, !noundef !9
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN8facebook5velox12AppendWindowIiE3getEi.exit.i
  %i.ho = load ptr, ptr %i.fu, align 8, !tbaa !216 ; 4 uses
  %i.hp = load ptr, ptr %i.ge, align 8, !tbaa !218
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.ho to i64
  %i.hs = sub i64 %i.hq, %i.hr                    ; 3 uses
  %i.ht = lshr exact i64 %i.hs, 2                 ; 3 uses
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph.preheader.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_19copyWordsIiRFnnEEEvPhPKiiPKT_OT0_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.aw
  %i.hw = and i64 %i.hs, 8589934588
  %i.hx = icmp eq i64 %i.hw, 4
  br i1 %i.hx, label %.lr.ph.i.i11.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter1254 = and i64 %i.ht, 2147483646
  br label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i.i11, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i12 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i13.1, %.lr.ph.i.i11 ] ; 4 uses
  %niter1255 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter1255.next.1, %.lr.ph.i.i11 ]
  %i.hy = shl nuw nsw i64 %indvars.iv.i.i12, 2
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i.i.i10, i64 %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.i.i12
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3
  %i.if = call i32 @llvm.abs.i32(i32 %i.ie, i1 false)
  store i32 %i.if, ptr %i.hz, align 1
  %indvars.iv.next.i.i13 = or disjoint i64 %indvars.iv.i.i12, 1 ; 2 uses
  %i.ig = shl nuw nsw i64 %indvars.iv.next.i.i13, 2
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i.i.i10, i64 %i.ig
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.next.i.i13
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = call i32 @llvm.abs.i32(i32 %i.im, i1 false)
  store i32 %i.in, ptr %i.ih, align 1
  %indvars.iv.next.i.i13.1 = add nuw nsw i64 %indvars.iv.i.i12, 2 ; 2 uses
  %niter1255.next.1 = add i64 %niter1255, 2       ; 2 uses
  %niter1255.ncmp.1 = icmp eq i64 %niter1255.next.1, %unroll_iter1254
  br i1 %niter1255.ncmp.1, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_19copyWordsIiRFnnEEEvPhPKiiPKT_OT0_.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i11, !llvm.loop !7499

bb.ax:                                            ; preds = %.noexc42.i, %bb.av, %bb.at
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox12AppendWindowIiED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %40) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #36
  br label %common.resume

bb.ay:                                            ; preds = %_ZN8facebook5velox12AppendWindowIiE3getEi.exit.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fx, i64 25
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !7500, !range !8, !noundef !9
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.is = load ptr, ptr %i.fu, align 8, !tbaa !216 ; 4 uses
  %i.it = load ptr, ptr %i.ge, align 8, !tbaa !218
  %i.iu = ptrtoint ptr %i.it to i64
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10ScratchPtrIiLi1EE3getEi:bb.a
  %i.d = icmp slt i32 %1, 2
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !489    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !564, !noalias !7638 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN8facebook5velox7Scratch3getEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !570, !noalias !7638
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr [32 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -32      ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 -16
  %i.o = getelementptr i8, ptr %i.l, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !229, !noalias !7638 ; 2 uses
  %i.q = load <2 x i64>, ptr %i.n, align 8, !tbaa !121, !noalias !7638
  %i.r = load <2 x ptr>, ptr %i.m, align 8, !tbaa !352, !noalias !7638
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false), !noalias !7638
  %i.s = load i32, ptr %i.g, align 8, !tbaa !564, !noalias !7638
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.g, align 8, !tbaa !564, !noalias !7638
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !571, !noalias !7638
  %i.w = sub nsw i64 %i.v, %i.p
  store i64 %i.w, ptr %i.u, align 8, !tbaa !571, !noalias !7638
  br label %_ZN8facebook5velox7Scratch3getEv.exit

_ZN8facebook5velox7Scratch3getEv.exit:            ; preds = %bb.e, %bb.f
  %.sroa.12.0 = phi i64 [ %i.p, %bb.f ], [ 0, %bb.e ]
  %i.x = phi <2 x i64> [ %i.q, %bb.f ], [ zeroinitializer, %bb.e ]
  %i.y = phi <2 x ptr> [ %i.r, %bb.f ], [ splat (ptr null), %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !227 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox7Scratch3getEv.exit
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -32 ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !228 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !229
  %i.ah = add i64 %i.ag, 64
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(264) %i.ae, ptr noundef nonnull %i.ad, i64 noundef %i.ah)
          to label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit unwind label %bb.j, !inline_history !482

bb.i:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.ad) #36
  br label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #47
  unreachable

_ZN8facebook5velox10raw_vectorIcED2Ev.exit:       ; preds = %bb.h, %bb.i, %_ZN8facebook5velox7Scratch3getEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store <2 x i64> %i.x, ptr %i.an, align 8, !tbaa !121
  store <2 x ptr> %i.y, ptr %i.z, align 8, !tbaa !352
  %i.ao = zext nneg i32 %1 to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 3 uses
  %.not.i = icmp sgt i64 %i.ap, %.sroa.12.0
  %i.aq = extractelement <2 x ptr> %i.y, i64 1
  br i1 %.not.i, label %_ZN8facebook5velox10raw_vectorIcE7reserveEl.exit.i, label %_ZN8facebook5velox10raw_vectorIcE6resizeEl.exit, !prof !147

_ZN8facebook5velox10raw_vectorIcE7reserveEl.exit.i: ; preds = %_ZN8facebook5velox10raw_vectorIcED2Ev.exit
  tail call void @_ZN8facebook5velox10raw_vectorIcE4growEl(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %i.ap)
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !227
  br label %_ZN8facebook5velox10raw_vectorIcE6resizeEl.exit

_ZN8facebook5velox10raw_vectorIcE6resizeEl.exit:  ; preds = %_ZN8facebook5velox10raw_vectorIcED2Ev.exit, %_ZN8facebook5velox10raw_vectorIcE7reserveEl.exit.i
  %i.ar = phi ptr [ %i.aq, %_ZN8facebook5velox10raw_vectorIcED2Ev.exit ], [ %.pre, %_ZN8facebook5velox10raw_vectorIcE7reserveEl.exit.i ]
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !572
  br label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox10raw_vectorIcE6resizeEl.exit, %bb.d
  %storemerge = phi ptr [ %i.ar, %_ZN8facebook5velox10raw_vectorIcE6resizeEl.exit ], [ %i.e, %bb.d ] ; 2 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !7636
  ret ptr %storemerge
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox10ScratchPtrIiLi1EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !489
  invoke void @_ZN8facebook5velox7Scratch7releaseEONS0_10raw_vectorIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !227  ; 2 uses
  %i.e = icmp eq ptr %.pr, null
  br i1 %i.e, label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds i8, ptr %.pr, i64 -32 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !228  ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !229
  %i.j = add i64 %i.i, 64
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(264) %i.g, ptr noundef nonnull %i.f, i64 noundef %i.j)
          to label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit unwind label %bb.g, !inline_history !482

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #36
  br label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #47
  unreachable

_ZN8facebook5velox10raw_vectorIcED2Ev.exit:       ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  ret void

bb.h:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #47
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #43

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.x86.avx2.maskstore.d.256(ptr, <8 x i32>, <8 x i32>) #44

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @"_ZN5folly15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES2_E14call_once_slowIZN8facebook5velox10serializer6presto6detail17initBitsToMapOnceEvE3$_0JEEEvOT_DpOT0_"() unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %0 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox10serializer6presto6detail17initBitsToMapOnceEvE12initOnceFlag, i64 4) acquire, align 4 ; 4 uses
  store i32 %i.c, ptr %i.b, align 4, !tbaa !3
  %i.d = and i32 %i.c, -1312
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge.i.i.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.f = or disjoint i32 %i.c, 128
  %i.g = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox10serializer6presto6detail17initBitsToMapOnceEvE12initOnceFlag, i64 4), i32 %i.c, i32 %i.f seq_cst seq_cst, align 4 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, !prof !6322

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %bb.b
  %i.i = extractvalue { i32, i1 } %i.g, 0
  store i32 %i.i, ptr %i.b, align 4
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %bb.a
  %i.j = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox10serializer6presto6detail17initBitsToMapOnceEvE12initOnceFlag, i64 4), ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %0) ; 0 uses
  br label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit

_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit: ; preds = %bb.b, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  %i.k = load atomic i8, ptr @_ZZN8facebook5velox10serializer6presto6detail17initBitsToMapOnceEvE12initOnceFlag monotonic, align 4, !range !8, !noundef !9
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %vector.body

vector.body:                                      ; preds = %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3>, %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit ] ; 9 uses
  %i.m = and <4 x i64> %vec.ind, splat (i64 1)
  %i.n = shl nuw nsw <4 x i64> %vec.ind, splat (i64 7)
  %i.o = and <4 x i64> %i.n, splat (i64 256)
  %i.p = or disjoint <4 x i64> %i.o, %i.m
  %i.q = shl nuw nsw <4 x i64> %vec.ind, splat (i64 14)
  %i.r = and <4 x i64> %i.q, splat (i64 65536)
  %i.s = or disjoint <4 x i64> %i.p, %i.r
  %i.t = shl nuw nsw <4 x i64> %vec.ind, splat (i64 21)
  %i.u = and <4 x i64> %i.t, splat (i64 16777216)
  %i.v = or disjoint <4 x i64> %i.s, %i.u
  %i.w = shl nuw nsw <4 x i64> %vec.ind, splat (i64 28)
  %i.x = and <4 x i64> %i.w, splat (i64 4294967296)
  %i.y = or disjoint <4 x i64> %i.v, %i.x
  %i.z = shl nuw nsw <4 x i64> %vec.ind, splat (i64 35)
  %i.aa = and <4 x i64> %i.z, splat (i64 1099511627776)
  %i.ab = or disjoint <4 x i64> %i.y, %i.aa
  %i.ac = shl nuw nsw <4 x i64> %vec.ind, splat (i64 42)
  %i.ad = and <4 x i64> %i.ac, splat (i64 281474976710656)
  %i.ae = or disjoint <4 x i64> %i.ab, %i.ad
  %i.af = shl nuw nsw <4 x i64> %vec.ind, splat (i64 49)
  %i.ag = and <4 x i64> %i.af, splat (i64 9151314442816847872)
  %i.ah = or disjoint <4 x i64> %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_114bitsToBytesMapE, i64 %index
  store <4 x i64> %i.ah, ptr %i.ai, align 16, !tbaa !121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.aj = icmp eq i64 %index.next, 256
  br i1 %i.aj, label %"_ZNK5folly9invoke_fnclIZN8facebook5velox10serializer6presto6detail17initBitsToMapOnceEvE3$_0JEEEDTclscT_fp_spscT0_fp0_EEOS8_DpOS9_.exit", label %vector.body, !llvm.loop !7641

"_ZNK5folly9invoke_fnclIZN8facebook5velox10serializer6presto6detail17initBitsToMapOnceEvE3$_0JEEEDTclscT_fp_spscT0_fp0_EEOS8_DpOS9_.exit": ; preds = %vector.body
  store atomic i8 1, ptr @_ZZN8facebook5velox10serializer6presto6detail17initBitsToMapOnceEvE12initOnceFlag release, align 4
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit, %"_ZNK5folly9invoke_fnclIZN8facebook5velox10serializer6presto6detail17initBitsToMapOnceEvE3$_0JEEEDTclscT_fp_spscT0_fp0_EEOS8_DpOS9_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.ak = atomicrmw and ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox10serializer6presto6detail17initBitsToMapOnceEvE12initOnceFlag, i64 4), i32 -401 seq_cst, align 4 ; 2 uses
  %i.al = and i32 %i.ak, -401
  store i32 %i.al, ptr %i.a, align 4, !tbaa !3
  %i.am = and i32 %i.ak, 15
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox10serializer6presto6detail17initBitsToMapOnceEvE12initOnceFlag, i64 4), ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #47
  unreachable

_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i8(i8, i8) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i16(i16, i16) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i128(i128, i128) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.bswap.i128(i128) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #28

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { cold noreturn }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #31 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #32 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #34 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #36 = { nounwind }
attributes #37 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #41 = { inlinehint mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #42 = { nounwind memory(none) }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #44 = { nounwind memory(argmem: readwrite) }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #47 = { noreturn nounwind }
attributes #48 = { noreturn }
attributes #49 = { builtin nounwind }
attributes #50 = { builtin allocsize(0) }
attributes #51 = { cold }
attributes #52 = { allocsize(0) }
attributes #53 = { cold noreturn nounwind }
attributes #54 = { nounwind willreturn memory(read) }
attributes #55 = { nounwind allocsize(1) }
attributes #56 = { nounwind allocsize(0) }

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
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0, !15, i64 8}
!13 = !{!"p1 _ZTSN8facebook5velox4TypeE", !14, i64 0}
end_hunk_1
