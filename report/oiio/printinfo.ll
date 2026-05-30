inline.NumInlined: 2997
inline.NumDeleted: 811
begin_hunk_0_@_ZN11OpenImageIO4v3_13pvt11print_statsERSoNS0_17basic_string_viewIcSt11char_traitsIcEEERKNS0_8ImageBufERKNS0_9ImageSpecENS0_3ROIERNSt7__cxx1112basic_stringIcS5_SaIcEEE:bb.a
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !112 ; 2 uses
  %i.mp = add nsw i32 %i.mo, %i.mm
  %i.mq = icmp sgt i32 %i.mo, 0
  %i.mr = icmp slt i32 %i.mh, %i.mk
  %or.cond383.i.a = select i1 %i.mq, i1 %i.mr, i1 false
  br i1 %or.cond383.i.a, label %.lr.ph308.split.i, label %._crit_edge309.i

bb.bb:                                            ; preds = %.noexc90, %.lr.ph.i82
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i82 ], [ %indvars.iv.next.i, %.noexc90 ] ; 3 uses
  %.0103253.i = phi i32 [ -1, %.lr.ph.i82 ], [ %spec.select.i, %.noexc90 ]
  %i.ms = load ptr, ptr %i.lz, align 8, !tbaa !48
  %i.mt = getelementptr inbounds nuw [32 x i8], ptr %i.ms, i64 %indvars.iv.i ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !32
  store ptr %i.mu, ptr %11, align 8, !tbaa !61
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !37
  store i64 %i.mw, ptr %i.ma, align 8, !tbaa !63
  store ptr @.str.63, ptr %12, align 8, !tbaa !61
  store i64 1, ptr %i.mb, align 8, !tbaa !63
  %i.mx = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12)
          to label %.noexc90 unwind label %.loopexit

.noexc90:                                         ; preds = %bb.bb
  %i.my = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select.i = select i1 %i.mx, i32 %i.my, i32 %.0103253.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i83, label %bb.bb, !llvm.loop !113

._crit_edge309.loopexit.i:                        ; preds = %._crit_edge289.i
  %i.mz = sext i32 %.1.lcssa.i to i64
  br label %._crit_edge309.i

._crit_edge309.i:                                 ; preds = %._crit_edge309.loopexit.i, %._crit_edge.i83
  %.sroa.27.0.lcssa.i = phi ptr [ null, %._crit_edge.i83 ], [ %.sroa.27.1.lcssa.i, %._crit_edge309.loopexit.i ] ; 6 uses
  %.sroa.15.0.lcssa.i = phi ptr [ null, %._crit_edge.i83 ], [ %.sroa.15.1.lcssa.i, %._crit_edge309.loopexit.i ] ; 2 uses
  %.sroa.0170.0.lcssa.i = phi ptr [ null, %._crit_edge.i83 ], [ %.sroa.0170.1.lcssa.i, %._crit_edge309.loopexit.i ] ; 12 uses
  %.0.lcssa.i = phi i64 [ -1, %._crit_edge.i83 ], [ %i.mz, %._crit_edge309.loopexit.i ]
  invoke void @_ZN3fmt3v125printIJRN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEERmEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.64, i64 37, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.cg unwind label %bb.co

.lr.ph308.split.i:                                ; preds = %._crit_edge.i83, %._crit_edge289.i
  %.0306.i = phi i32 [ %.1.lcssa.i, %._crit_edge289.i ], [ -1, %._crit_edge.i83 ] ; 2 uses
  %.0118305.i = phi i64 [ %.1119.lcssa.i, %._crit_edge289.i ], [ 0, %._crit_edge.i83 ] ; 2 uses
  %.0123303.i = phi i32 [ %i.ne, %._crit_edge289.i ], [ %i.mm, %._crit_edge.i83 ] ; 7 uses
  %.sroa.0170.0302.i = phi ptr [ %.sroa.0170.1.lcssa.i, %._crit_edge289.i ], [ null, %._crit_edge.i83 ] ; 2 uses
  %.sroa.15.0301.i = phi ptr [ %.sroa.15.1.lcssa.i, %._crit_edge289.i ], [ null, %._crit_edge.i83 ] ; 2 uses
  %.sroa.27.0300.i = phi ptr [ %.sroa.27.1.lcssa.i, %._crit_edge289.i ], [ null, %._crit_edge.i83 ] ; 2 uses
  %i.na = load i32, ptr %i.mg, align 4, !tbaa !109 ; 2 uses
  %i.nb = icmp slt i32 %i.na, %i.mk
  %i.nc = load i32, ptr %3, align 8
  %i.nd = icmp slt i32 %i.nc, %i.mf
  %or.cond385.i = select i1 %i.nb, i1 %i.nd, i1 false
  br i1 %or.cond385.i, label %.lr.ph288.split.i, label %._crit_edge289.i

._crit_edge289.i:                                 ; preds = %._crit_edge275.i, %.lr.ph308.split.i
  %.sroa.27.1.lcssa.i = phi ptr [ %.sroa.27.0300.i, %.lr.ph308.split.i ], [ %.sroa.27.2.lcssa.i, %._crit_edge275.i ] ; 2 uses
  %.sroa.15.1.lcssa.i = phi ptr [ %.sroa.15.0301.i, %.lr.ph308.split.i ], [ %.sroa.15.2.lcssa.i, %._crit_edge275.i ] ; 2 uses
  %.sroa.0170.1.lcssa.i = phi ptr [ %.sroa.0170.0302.i, %.lr.ph308.split.i ], [ %.sroa.0170.2.lcssa.i, %._crit_edge275.i ] ; 2 uses
  %.1119.lcssa.i = phi i64 [ %.0118305.i, %.lr.ph308.split.i ], [ %.2120.lcssa.i, %._crit_edge275.i ]
  %.1.lcssa.i = phi i32 [ %.0306.i, %.lr.ph308.split.i ], [ %.2.lcssa.i, %._crit_edge275.i ] ; 2 uses
  %i.ne = add nsw i32 %.0123303.i, 1              ; 2 uses
  %i.nf = icmp slt i32 %i.ne, %i.mp
  br i1 %i.nf, label %.lr.ph308.split.i, label %._crit_edge309.loopexit.i, !llvm.loop !114

.lr.ph288.split.i:                                ; preds = %.lr.ph308.split.i, %._crit_edge275.i
  %.1286.i = phi i32 [ %.2.lcssa.i, %._crit_edge275.i ], [ %.0306.i, %.lr.ph308.split.i ] ; 2 uses
  %.1119285.i = phi i64 [ %.2120.lcssa.i, %._crit_edge275.i ], [ %.0118305.i, %.lr.ph308.split.i ] ; 3 uses
  %.0122284.i = phi i32 [ %i.nl, %._crit_edge275.i ], [ %i.na, %.lr.ph308.split.i ] ; 7 uses
  %.sroa.0170.1283.i = phi ptr [ %.sroa.0170.2.lcssa.i, %._crit_edge275.i ], [ %.sroa.0170.0302.i, %.lr.ph308.split.i ] ; 2 uses
  %.sroa.15.1282.i = phi ptr [ %.sroa.15.2.lcssa.i, %._crit_edge275.i ], [ %.sroa.15.0301.i, %.lr.ph308.split.i ] ; 2 uses
  %.sroa.27.1281.i = phi ptr [ %.sroa.27.2.lcssa.i, %._crit_edge275.i ], [ %.sroa.27.0300.i, %.lr.ph308.split.i ] ; 2 uses
  %i.ng = load i32, ptr %3, align 8, !tbaa !107   ; 3 uses
  %i.nh = icmp slt i32 %i.ng, %i.mf
  br i1 %i.nh, label %.lr.ph274.preheader.i, label %._crit_edge275.i

.lr.ph274.preheader.i:                            ; preds = %.lr.ph288.split.i
  %i.ni = trunc i64 %.1119285.i to i32
  %i.nj = add i32 %i.mf, %i.ni
  %i.nk = sub i32 %i.nj, %i.ng
  br label %.lr.ph274.i

._crit_edge275.i:                                 ; preds = %._crit_edge261.i, %.lr.ph288.split.i
  %.sroa.27.2.lcssa.i = phi ptr [ %.sroa.27.1281.i, %.lr.ph288.split.i ], [ %.sroa.27.3.i, %._crit_edge261.i ] ; 2 uses
  %.sroa.15.2.lcssa.i = phi ptr [ %.sroa.15.1282.i, %.lr.ph288.split.i ], [ %.sroa.15.3.i, %._crit_edge261.i ] ; 2 uses
  %.sroa.0170.2.lcssa.i = phi ptr [ %.sroa.0170.1283.i, %.lr.ph288.split.i ], [ %.sroa.0170.3.i, %._crit_edge261.i ] ; 2 uses
  %.2120.lcssa.i = phi i64 [ %.1119285.i, %.lr.ph288.split.i ], [ %i.qc, %._crit_edge261.i ] ; 2 uses
  %.2.lcssa.i = phi i32 [ %.1286.i, %.lr.ph288.split.i ], [ %.3.lcssa.i, %._crit_edge261.i ] ; 2 uses
  %i.nl = add i32 %.0122284.i, 1                  ; 2 uses
  %exitcond349.not.i.a = icmp eq i32 %i.nl, %i.mk
  br i1 %exitcond349.not.i.a, label %._crit_edge289.i, label %.lr.ph288.split.i, !llvm.loop !116

.lr.ph274.i:                                      ; preds = %._crit_edge261.i, %.lr.ph274.preheader.i
  %.2272.i = phi i32 [ %.3.lcssa.i, %._crit_edge261.i ], [ %.1286.i, %.lr.ph274.preheader.i ] ; 2 uses
  %.2120271.i = phi i64 [ %i.qc, %._crit_edge261.i ], [ %.1119285.i, %.lr.ph274.preheader.i ]
  %.0121269.i = phi i32 [ %i.qb, %._crit_edge261.i ], [ %i.ng, %.lr.ph274.preheader.i ] ; 7 uses
  %.sroa.0170.2268.i = phi ptr [ %.sroa.0170.3.i, %._crit_edge261.i ], [ %.sroa.0170.1283.i, %.lr.ph274.preheader.i ] ; 13 uses
  %.sroa.15.2267.i = phi ptr [ %.sroa.15.3.i, %._crit_edge261.i ], [ %.sroa.15.1282.i, %.lr.ph274.preheader.i ] ; 7 uses
  %.sroa.27.2266.i = phi ptr [ %.sroa.27.3.i, %._crit_edge261.i ], [ %.sroa.27.1281.i, %.lr.ph274.preheader.i ] ; 8 uses
  %i.nm = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf12deep_samplesEiii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.0121269.i, i32 noundef %.0122284.i, i32 noundef %.0123303.i)
          to label %bb.bc unwind label %bb.be     ; 2 uses

bb.bc:                                            ; preds = %.lr.ph274.i
  %i.nn = sext i32 %i.nm to i64                   ; 12 uses
  %i.no = load i64, ptr %i.a, align 8, !tbaa !41
  %i.np = add i64 %i.no, %i.nn
  store i64 %i.np, ptr %i.a, align 8, !tbaa !41
  %i.nq = load i64, ptr %i.c, align 8, !tbaa !41  ; 2 uses
  %i.nr = icmp eq i64 %i.nq, %i.nn
  br i1 %i.nr, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.ns = load i64, ptr %i.e, align 8, !tbaa !41
  %i.nt = add i64 %i.ns, 1
  store i64 %i.nt, ptr %i.e, align 8, !tbaa !41
  br label %bb.bf

bb.be:                                            ; preds = %.lr.ph274.i
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.nv = icmp ult i64 %i.nq, %i.nn
  br i1 %i.nv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i64 %i.nn, ptr %i.c, align 8, !tbaa !41
  store i32 %.0121269.i, ptr %7, align 4, !tbaa !103
  store i32 %.0122284.i, ptr %i.lp, align 4, !tbaa !105
  store i32 %.0123303.i, ptr %i.lq, align 4, !tbaa !106
  store i64 1, ptr %i.e, align 8, !tbaa !41
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.nw = load i64, ptr %i.d, align 8, !tbaa !41
  %i.nx = icmp ugt i64 %i.nw, %i.nn
  br i1 %i.nx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i64 %i.nn, ptr %i.d, align 8, !tbaa !41
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ny = icmp eq i32 %i.nm, 0                    ; 2 uses
  br i1 %i.ny, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.nz = load i64, ptr %i.b, align 8, !tbaa !41
  %i.oa = add i64 %i.nz, 1
  store i64 %i.oa, ptr %i.b, align 8, !tbaa !41
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ob = ptrtoint ptr %.sroa.15.2267.i to i64    ; 2 uses
  %i.oc = ptrtoint ptr %.sroa.0170.2268.i to i64  ; 2 uses
  %i.od = sub i64 %i.ob, %i.oc                    ; 7 uses
  %i.oe = ashr exact i64 %i.od, 3                 ; 8 uses
  %.not.i85 = icmp ugt i64 %i.oe, %i.nn
  br i1 %.not.i85, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.of = add nsw i64 %i.nn, 1                    ; 4 uses
  %i.og = icmp ugt i64 %i.of, %i.oe
  br i1 %i.og, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  %i.oh = sub nuw nsw i64 %i.of, %i.oe            ; 6 uses
  %i.oi = ptrtoint ptr %.sroa.27.2266.i to i64    ; 2 uses
  %i.oj = sub i64 %i.oi, %i.ob
  %i.ok = ashr exact i64 %i.oj, 3
  %.not65.i.i = icmp ult i64 %i.ok, %i.oh
  br i1 %.not65.i.i, label %bb.bo, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.loopexit.i

_ZNSt6vectorImSaImEE6resizeEmRKm.exit.loopexit.i: ; preds = %bb.bn
  %i.ol = shl nsw i64 %i.nn, 3
  %reass.sub = sub i64 %i.ol, %i.od
  %i.om = add i64 %reass.sub, 8
  call void @llvm.memset.p0.i64(ptr align 8 %.sroa.15.2267.i, i8 0, i64 %i.om, i1 false), !tbaa !41
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.oh, 3
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.15.2267.i, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.oo = sub nsw i64 1152921504606846975, %i.oe
  %i.op = icmp ult i64 %i.oo, %i.oh
  br i1 %i.op, label %bb.bp, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.79) #29
          to label %.noexc142.i.a unwind label %.loopexit.split-lp.i

.noexc142.i.a:                                    ; preds = %bb.bp
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bo
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.oe, i64 %i.oh)
  %i.oq = add nsw i64 %.sroa.speculated.i.i.i, %i.oe ; 2 uses
  %i.or = icmp ult i64 %i.oq, %i.oe
  %i.os = call i64 @llvm.umin.i64(i64 %i.oq, i64 1152921504606846975)
  %i.ot = select i1 %i.or, i64 1152921504606846975, i64 %i.os ; 3 uses
  %.not.i.i141.i = icmp eq i64 %i.ot, 0
  br i1 %.not.i.i141.i, label %.noexc143.i, label %36

36:                                               ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %37 = shl nuw nsw i64 %i.ot, 3
  %38 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %37) #28
          to label %.noexc143.i unwind label %.loopexit.i

.noexc143.i:                                      ; preds = %36, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %39 = phi ptr [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %38, %36 ] ; 5 uses
  %i.ou = getelementptr inbounds i8, ptr %39, i64 %i.od ; 3 uses
  %i.ov = shl nsw i64 %i.nn, 3
  %reass.sub172 = sub i64 %i.ov, %i.od
  %i.ow = add i64 %reass.sub172, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ou, i8 0, i64 %i.ow, i1 false), !tbaa !41
  %i.ox = icmp sgt i64 %i.od, 8
  br i1 %i.ox, label %bb.bq, label %bb.br, !prof !117

bb.bq:                                            ; preds = %.noexc143.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %39, ptr align 8 %.sroa.0170.2268.i, i64 %i.od, i1 false)
  br label %bb.bs

bb.br:                                            ; preds = %.noexc143.i
  %i.oy = icmp eq i64 %i.od, 8
  br i1 %i.oy, label %.thread.i86, label %bb.bs

.thread.i86:                                      ; preds = %bb.br
  %i.oz = load i64, ptr %.sroa.0170.2268.i, align 8, !tbaa !41
  store i64 %i.oz, ptr %39, align 8, !tbaa !41
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.oh
  br label %bb.bt

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.oh ; 2 uses
  %.not.i82.i.i = icmp eq ptr %.sroa.0170.2268.i, null
  br i1 %.not.i82.i.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.thread.i86
  %i.pc = phi ptr [ %i.pa, %.thread.i86 ], [ %i.pb, %bb.bs ]
  %i.pd = sub i64 %i.oi, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0170.2268.i, i64 noundef %i.pd) #27
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i: ; preds = %bb.bt, %bb.bs
  %i.pe = phi ptr [ %i.pc, %bb.bt ], [ %i.pb, %bb.bs ]
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %39, i64 %i.ot
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i

bb.bu:                                            ; preds = %bb.bm
  %i.pg = icmp ult i64 %i.of, %i.oe
  br i1 %i.pg, label %bb.bv, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0170.2268.i, i64 %i.of ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.15.2267.i, %i.ph
  %spec.select187.i = select i1 %.not.i.i.i, ptr %.sroa.15.2267.i, ptr %i.ph
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i

.loopexit.i:                                      ; preds = %36
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.loopexit.split-lp.i:                             ; preds = %bb.bp
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i:          ; preds = %bb.bv, %bb.bu, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.loopexit.i, %bb.bl
  %.sroa.27.3.i = phi ptr [ %.sroa.27.2266.i, %bb.bl ], [ %.sroa.27.2266.i, %bb.bu ], [ %.sroa.27.2266.i, %bb.bv ], [ %i.pf, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i ], [ %.sroa.27.2266.i, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.loopexit.i ] ; 3 uses
  %.sroa.15.3.i = phi ptr [ %.sroa.15.2267.i, %bb.bl ], [ %.sroa.15.2267.i, %bb.bu ], [ %spec.select187.i, %bb.bv ], [ %i.pe, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i ], [ %i.on, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.loopexit.i ] ; 2 uses
  %.sroa.0170.3.i = phi ptr [ %.sroa.0170.2268.i, %bb.bl ], [ %.sroa.0170.2268.i, %bb.bu ], [ %.sroa.0170.2268.i, %bb.bv ], [ %39, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i ], [ %.sroa.0170.2268.i, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.loopexit.i ] ; 4 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0170.3.i, i64 %i.nn ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !41
  %i.pk = add i64 %i.pj, 1
  store i64 %i.pk, ptr %i.pi, align 8, !tbaa !41
  %brmerge.i = or i1 %i.ly, %i.ny
  br i1 %brmerge.i, label %._crit_edge261.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i, %._crit_edge257.us.i
  %.3260.us.i = phi i32 [ %.5.us.i, %._crit_edge257.us.i ], [ %.2272.i, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i ]
  %.0109259.us.i = phi i32 [ %i.px, %._crit_edge257.us.i ], [ 0, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i ] ; 3 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cf, %.preheader.us.i
  %.4255.us.i = phi i32 [ %.3260.us.i, %.preheader.us.i ], [ %.5.us.i, %bb.cf ] ; 2 uses
  %.0108254.us.i = phi i32 [ 0, %.preheader.us.i ], [ %i.pw, %bb.cf ] ; 4 uses
  %i.pl = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.0121269.i, i32 noundef %.0122284.i, i32 noundef %.0123303.i, i32 noundef %.0108254.us.i, i32 noundef %.0109259.us.i)
          to label %bb.bx unwind label %.split.us.i ; 5 uses

bb.bx:                                            ; preds = %bb.bw
  %i.pm = call float @llvm.fabs.f32(float %i.pl)
  %i.pn = fcmp ueq float %i.pm, +inf
  br i1 %i.pn, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.po = load i64, ptr %i.i, align 8, !tbaa !98  ; 2 uses
  %i.pp = add nsw i64 %i.po, 1
  store i64 %i.pp, ptr %i.i, align 8, !tbaa !98
  %i.pq = icmp eq i64 %i.po, 0
  br i1 %i.pq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 %.0121269.i, ptr %10, align 4, !tbaa !103
  store i32 %.0122284.i, ptr %i.lv, align 4, !tbaa !105
  store i32 %.0123303.i, ptr %i.lw, align 4, !tbaa !106
  store i32 %.0109259.us.i, ptr %i.h, align 4, !tbaa !3
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %.5.us.i = phi i32 [ %.4255.us.i, %bb.bx ], [ %.0108254.us.i, %bb.bz ], [ %.4255.us.i, %bb.by ] ; 3 uses
  %i.pr = icmp eq i32 %.0103.lcssa.i, %.0108254.us.i
  br i1 %i.pr, label %bb.cb, label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  %i.ps = load float, ptr %i.f, align 4, !tbaa !70
  %i.pt = fcmp olt float %i.pl, %i.ps
  br i1 %i.pt, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store float %i.pl, ptr %i.f, align 4, !tbaa !70
  store i32 %.0121269.i, ptr %8, align 4, !tbaa !103
  store i32 %.0122284.i, ptr %i.lr, align 4, !tbaa !105
  store i32 %.0123303.i, ptr %i.ls, align 4, !tbaa !106
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.pu = load float, ptr %i.g, align 4, !tbaa !70
  %i.pv = fcmp ogt float %i.pl, %i.pu
  br i1 %i.pv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store float %i.pl, ptr %i.g, align 4, !tbaa !70
  store i32 %.0121269.i, ptr %9, align 4, !tbaa !103
  store i32 %.0122284.i, ptr %i.lt, align 4, !tbaa !105
  store i32 %.0123303.i, ptr %i.lu, align 4, !tbaa !106
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.ca
  %i.pw = add nuw nsw i32 %.0108254.us.i, 1       ; 2 uses
  %exitcond347.not.i = icmp eq i32 %i.pw, %i.lx
  br i1 %exitcond347.not.i, label %._crit_edge257.us.i, label %bb.bw, !llvm.loop !118

._crit_edge257.us.i:                              ; preds = %bb.cf
  %i.px = add i32 %.0109259.us.i, 1               ; 2 uses
  %i.py = zext i32 %i.px to i64
  %i.pz = icmp ult i64 %i.py, %i.nn
  br i1 %i.pz, label %.preheader.us.i, label %._crit_edge261.i, !llvm.loop !119

.split.us.i:                                      ; preds = %bb.bw
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

._crit_edge261.i:                                 ; preds = %._crit_edge257.us.i, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i
  %.3.lcssa.i = phi i32 [ %.2272.i, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i ], [ %.5.us.i, %._crit_edge257.us.i ] ; 2 uses
  %i.qb = add nsw i32 %.0121269.i, 1
  %i.qc = add i64 %.2120271.i, 1                  ; 3 uses
  %lftr.wideiv = trunc i64 %i.qc to i32
  %exitcond = icmp eq i32 %i.nk, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge275.i, label %.lr.ph274.i, !llvm.loop !120

bb.cg:                                            ; preds = %._crit_edge309.i
  invoke void @_ZN3fmt3v125printIJRN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEERmEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.65, i64 37, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ch unwind label %bb.co

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  %i.qd = load i64, ptr %i.e, align 8, !tbaa !41
  %i.qe = icmp ugt i64 %i.qd, 1
  %i.qf = select i1 %i.qe, ptr @.str.67, ptr @.str.21
  store ptr %i.qf, ptr %i.j, align 8, !tbaa !121
  invoke void @_ZN3fmt3v125printIJRN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEERmPKcS9_RiSC_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOSF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.66, i64 63, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.lp)
          to label %bb.ci unwind label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  %i.qg = load i64, ptr %i.a, align 8, !tbaa !41
  %i.qh = uitofp i64 %i.qg to double
  %i.qi = uitofp i64 %i.lo to double
  %i.qj = fdiv double %i.qh, %i.qi
  store double %i.qj, ptr %i.k, align 8, !tbaa !122
  invoke void @_ZN3fmt3v125printIJRN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEEdEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.68, i64 41, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.cj unwind label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  invoke void @_ZN3fmt3v125printIJRN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEERmEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.69, i64 39, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ck unwind label %bb.co

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  %i.qk = load i64, ptr %i.b, align 8, !tbaa !41
  %i.ql = sub i64 %i.lo, %i.qk
  store i64 %i.ql, ptr %i.l, align 8, !tbaa !41
  invoke void @_ZN3fmt3v125printIJRN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEEmEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.70, i64 34, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.cl unwind label %bb.cr

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  invoke void @_ZN3fmt3v125printIJRN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEERmEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.71, i64 34, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN3fmt3v125printIJRN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.72, i64 27, ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.qm = ptrtoint ptr %.sroa.15.0.lcssa.i to i64
  %i.qn = ptrtoint ptr %.sroa.0170.0.lcssa.i to i64 ; 2 uses
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = ashr exact i64 %i.qo, 3                 ; 6 uses
  %.not329.i = icmp eq ptr %.sroa.15.0.lcssa.i, %.sroa.0170.0.lcssa.i
  br i1 %.not329.i, label %._crit_edge322.thread.i, label %.lr.ph321.i.preheader

.lr.ph321.i.preheader:                            ; preds = %bb.cn
  %min.iters.check = icmp ult i64 %i.qp, 4
  br i1 %min.iters.check, label %.lr.ph321.i.preheader319, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph321.i.preheader
  %n.vec = and i64 %i.qp, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qs, %vector.body ]
  %vec.phi313 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qt, %vector.body ]
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0170.0.lcssa.i, i64 %index ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %wide.load = load <2 x i64>, ptr %i.qq, align 8, !tbaa !41
  %wide.load314 = load <2 x i64>, ptr %i.qr, align 8, !tbaa !41
  %i.qs = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.qt = add <2 x i64> %wide.load314, %vec.phi313 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qu = icmp eq i64 %index.next, %n.vec
  br i1 %i.qu, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.qt, %i.qs
  %i.qv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.qp, %n.vec
  br i1 %cmp.n, label %.lr.ph326.i, label %.lr.ph321.i.preheader319

.lr.ph321.i.preheader319:                         ; preds = %.lr.ph321.i.preheader, %middle.block
  %.0105319.i.ph = phi i64 [ 0, %.lr.ph321.i.preheader ], [ %n.vec, %middle.block ]
  %.0106318.i.ph = phi i64 [ 0, %.lr.ph321.i.preheader ], [ %i.qv, %middle.block ]
  br label %.lr.ph321.i

._crit_edge322.thread.i:                          ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  store i64 0, ptr %i.m, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  store i64 0, ptr %i.n, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #26
  br label %._crit_edge327.i

.lr.ph326.i:                                      ; preds = %.lr.ph321.i, %middle.block
  %.lcssa = phi i64 [ %i.qv, %middle.block ], [ %i.re, %.lr.ph321.i ]
  %i.qw = uitofp i64 %.lcssa to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  store i64 0, ptr %i.m, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  store i64 0, ptr %i.n, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #26
  store i64 0, ptr %i.o, align 8, !tbaa !41
  %i.qx = add nsw i64 %i.qp, -1
  br label %bb.cs

bb.co:                                            ; preds = %bb.cm, %bb.cl, %bb.cj, %bb.cg, %._crit_edge309.i
  %i.qy = landingpad { ptr, i32 }
          cleanup
end_hunk_0
