Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json6object16reindex_relocateEPNS0_14key_value_pairES3_:bb.a

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.aq, %bb.b ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !93
  %i.at = sext i8 %i.as to i64
  %i.au = shl nsw i64 %i.at, 40
  %i.av = xor i64 %i.au, %.1.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i
  %.2.i.i.i = phi i64 [ %i.av, %bb.c ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !93
  %i.ay = sext i8 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 32
  %i.ba = xor i64 %i.az, %.2.i.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.3.i.i.i = phi i64 [ %i.ba, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !93
  %i.bd = sext i8 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 24
  %i.bf = xor i64 %i.be, %.3.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %.4.i.i.i = phi i64 [ %i.bf, %bb.e ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !93
  %i.bi = sext i8 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 16
  %i.bk = xor i64 %i.bj, %.4.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.5.i.i.i = phi i64 [ %i.bk, %bb.f ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !93
  %i.bn = sext i8 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 8
  %i.bp = xor i64 %i.bo, %.5.i.i.i
  br label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i

_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i: ; preds = %bb.g, %._crit_edge.i.i.i
  %.6.i.i.i = phi i64 [ %i.bp, %bb.g ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.bq = load i8, ptr %.054.lcssa.i.i.i, align 1, !tbaa !93
  %i.br = sext i8 %i.bq to i64
  %i.bs = xor i64 %.6.i.i.i, %i.br
  %i.bt = mul i64 %i.bs, -4132994306676758123
  br label %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit

default.unreachable:                              ; preds = %._crit_edge.i.i.i
  unreachable

_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit: ; preds = %._crit_edge.i.i.i, %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i
  %.7.i.i.i = phi i64 [ %i.bt, %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bu = lshr i64 %.7.i.i.i, 47
  %i.bv = xor i64 %i.bu, %.7.i.i.i
  %i.bw = mul i64 %i.bv, -4132994306676758123     ; 2 uses
  %i.bx = lshr i64 %i.bw, 47
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !169
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = urem i64 %i.by, %i.cb
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce ; 4 uses
  %i.cg = ptrtoint ptr %1 to i64
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = sdiv exact i64 %i.ci, 40
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = load i32, ptr %i.cf, align 4, !tbaa !176 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, %i.ck
  br i1 %i.cm, label %bb.h, label %.preheader.i

bb.h:                                             ; preds = %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !176
  store i32 %i.co, ptr %i.cf, align 4, !tbaa !176
  br label %_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit

.preheader.i:                                     ; preds = %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit, %.preheader.i
  %.pn14.in.i = phi i32 [ %i.cp, %.preheader.i ], [ %i.cl, %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit ]
  %.pn14.i = zext i32 %.pn14.in.i to i64
  %.pn.i = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %.pn14.i ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 36
  %i.cp = load i32, ptr %.0.i, align 4, !tbaa !176 ; 2 uses
  %.not.i = icmp eq i32 %i.cp, %i.ck
  br i1 %.not.i, label %bb.i, label %.preheader.i, !llvm.loop !27

bb.i:                                             ; preds = %.preheader.i
  %.0.i.le = getelementptr inbounds nuw i8, ptr %.pn.i, i64 36
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !176
  store i32 %i.cr, ptr %.0.i.le, align 4, !tbaa !176
  br label %_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit

_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit: ; preds = %bb.h, %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.cs = load i32, ptr %i.cf, align 4, !tbaa !176
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !176
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !167
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = ptrtoint ptr %2 to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = sdiv exact i64 %i.cy, 40
  %i.da = trunc i64 %i.cz to i32
  store i32 %i.da, ptr %i.cf, align 4, !tbaa !176
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN5boost4json6object12emplace_implIJRNS_4core17basic_string_viewIcEEDnEEESt4pairIPNS0_14key_value_pairEbES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::json::key_value_pair", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167
  %i.c = load i32, ptr %i.b, align 8, !tbaa !170
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i64 } @_ZN5boost4json6detail14find_in_objectINS_4core17basic_string_viewIcEEEESt4pairIPNS0_14key_value_pairEmERKNS0_6objectET_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) #46 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.7.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %.sroa.03.0.copyload = load ptr, ptr %3, align 8, !tbaa !191
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !90 ; 9 uses
  %i.h = load i64, ptr %0, align 8, !tbaa !96     ; 5 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN5boost4json11storage_ptrD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %i.h, -4
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN5boost4json11storage_ptrD2Ev.exit.i

_ZN5boost4json11storage_ptrD2Ev.exit.i:           ; preds = %bb.d, %bb.c
  store i64 %i.h, ptr %5, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 0, ptr %i.n, align 8, !tbaa !136
  %i.o = icmp ugt i64 %.sroa.2.0.copyload, 2147483646
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit.i
  invoke void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 12, ptr noundef nonnull @_ZZN5boost4json14key_value_pairC1IJDnRNS0_11storage_ptrEEEENS_4core17basic_string_viewIcEEDpOT_E3loc) #47
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit.i
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.p = and i64 %i.h, -4
  %i.q = inttoptr i64 %i.p to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.q ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.2.0.copyload, 1
  %i.s = load ptr, ptr %.0.i.i.i, align 8, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.r, i64 noundef 1)
          to label %_ZN5boost4json14key_value_pairC2IJDnRNS0_11storage_ptrEEEENS_4core17basic_string_viewIcEEDpOT_.exit unwind label %bb.h, !inline_history !0 ; 8 uses

common.resume:                                    ; preds = %bb.u, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.dv, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %5) #46
  br label %common.resume

_ZN5boost4json14key_value_pairC2IJDnRNS0_11storage_ptrEEEENS_4core17basic_string_viewIcEEDpOT_.exit: ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %.sroa.03.0.copyload, i64 %.sroa.2.0.copyload, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.2.0.copyload
  store i8 0, ptr %i.x, align 1, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  store ptr %i.v, ptr %i.y, align 8, !tbaa !174
  %i.z = trunc nuw nsw i64 %.sroa.2.0.copyload to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !173
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !167 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !169 ; 3 uses
  %6 = zext i32 %i.ad to i64
  %i.ae = load i32, ptr %i.ab, align 8, !tbaa !170
  %7 = zext i32 %i.ae to i64
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %.not.i = icmp samesign ugt i64 %8, %6
  br i1 %.not.i, label %bb.i, label %_ZN5boost4json6object7reserveEm.exit

bb.i:                                             ; preds = %_ZN5boost4json14key_value_pairC2IJDnRNS0_11storage_ptrEEEENS_4core17basic_string_viewIcEEDpOT_.exit
  %i.af = invoke noundef ptr @_ZN5boost4json6object12reserve_implEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %8)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !169 ; 4 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN5boost4json6object7reserveEm.exit, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.aj = icmp ult i32 %i.ah, 19
  %i.ak = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i8.i.i = icmp eq i64 %i.ak, 0
  %i.al = and i64 %i.ak, -4
  %i.am = inttoptr i64 %i.al to ptr
  %.0.i.i9.i.i = select i1 %.not.i.i8.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.am ; 2 uses
  %i.an = load ptr, ptr %.0.i.i9.i.i, align 8, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = zext i32 %i.ah to i64
  %i.ar = mul nuw nsw i64 %i.aq, 44
  %i.as = add nuw nsw i64 %i.ar, 16
  br label %.invoke.i.i

bb.l:                                             ; preds = %bb.j
  %narrow.i.i = mul nuw nsw i32 %i.ah, 40
  %narrow11.i.i = add nuw nsw i32 %narrow.i.i, 16
  %i.at = zext nneg i32 %narrow11.i.i to i64
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.l, %bb.k
  %i.au = phi i64 [ %i.at, %bb.l ], [ %i.as, %bb.k ]
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i9.i.i, ptr noundef nonnull %i.af, i64 noundef %i.au, i64 noundef 16)
          to label %_ZN5boost4json6object7reserveEm.exit unwind label %bb.m, !inline_history !2

bb.m:                                             ; preds = %.invoke.i.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #48
  unreachable

_ZN5boost4json6object7reserveEm.exit:             ; preds = %.invoke.i.i, %.noexc, %_ZN5boost4json14key_value_pairC2IJDnRNS0_11storage_ptrEEEENS_4core17basic_string_viewIcEEDpOT_.exit
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !167 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !170 ; 3 uses
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !169 ; 3 uses
  %i.bc = icmp ult i32 %i.bb, 19
  %or.cond.not32 = select i1 %i.az, i1 true, i1 %i.bc
  %.not9 = icmp eq i32 %i.bb, %i.ad
  %or.cond29 = select i1 %or.cond.not32, i1 %.not9, i1 false
  br i1 %or.cond29, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_ZN5boost4json6object7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !175
  %i.bf = and i64 %.sroa.2.0.copyload, 2147483640 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bf ; 3 uses
  %i.bh = mul i64 %.sroa.2.0.copyload, -4132994306676758123
  %i.bi = xor i64 %i.be, %i.bh                    ; 3 uses
  %.not55.i = icmp eq i64 %i.bf, 0
  br i1 %.not55.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.bj = add nsw i64 %.sroa.2.0.copyload, -8     ; 2 uses
  %i.bk = and i64 %i.bj, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bk, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.0.copyload.i.prol = load i64, ptr %i.v, align 1, !tbaa !93
  %i.bl = mul i64 %.0.copyload.i.prol, -4132994306676758123 ; 2 uses
  %i.bm = lshr i64 %i.bl, 47
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = mul i64 %i.bn, -4132994306676758123
  %i.bp = xor i64 %i.bo, %i.bi
  %i.bq = mul i64 %i.bp, -4132994306676758123     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.bq, %.lr.ph.i.prol ]
  %.057.i.unr = phi i64 [ %i.bi, %.lr.ph.i.preheader ], [ %i.bq, %.lr.ph.i.prol ]
  %.05456.i.unr = phi ptr [ %i.v, %.lr.ph.i.preheader ], [ %i.br, %.lr.ph.i.prol ]
  %i.bs = icmp ult i64 %i.bj, 8
  br i1 %i.bs, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.057.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ]
  %.05456.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %.05456.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.0.copyload.i = load i64, ptr %.05456.i, align 1, !tbaa !93
  %i.bt = mul i64 %.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.bu = lshr i64 %i.bt, 47
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = mul i64 %i.bv, -4132994306676758123
  %i.bx = xor i64 %i.bw, %.057.i
  %i.by = mul i64 %i.bx, -4132994306676758123
  %i.bz = getelementptr inbounds nuw i8, ptr %.05456.i, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.bz, align 1, !tbaa !93
  %i.ca = mul i64 %.0.copyload.i.1, -4132994306676758123 ; 2 uses
  %i.cb = lshr i64 %i.ca, 47
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = mul i64 %i.cc, -4132994306676758123
  %i.ce = xor i64 %i.cd, %i.by
  %i.cf = mul i64 %i.ce, -4132994306676758123     ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.05456.i, i64 16 ; 2 uses
  %.not.i10.1 = icmp eq ptr %i.cg, %i.bg
  br i1 %.not.i10.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n
  %.054.lcssa.i = phi ptr [ %i.v, %bb.n ], [ %i.bg, %.lr.ph.i ], [ %i.bg, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %.0.lcssa.i = phi i64 [ %i.bi, %bb.n ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.cf, %.lr.ph.i ] ; 8 uses
  %i.ch = and i64 %.sroa.2.0.copyload, 7
  switch i64 %i.ch, label %default.unreachable [
    i64 7, label %bb.o
    i64 6, label %bb.p
    i64 5, label %bb.q
    i64 4, label %bb.r
    i64 3, label %bb.s
    i64 2, label %bb.t
    i64 1, label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i
    i64 0, label %_ZN5boost4json6detail6digestIPKcEEmT_S5_m.exit
  ]

bb.o:                                             ; preds = %._crit_edge.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 6
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !93
  %i.ck = sext i8 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 48
  %i.cm = xor i64 %i.cl, %.0.lcssa.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %.1.i = phi i64 [ %i.cm, %bb.o ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 5
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !93
  %i.cp = sext i8 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 40
  %i.cr = xor i64 %i.cq, %.1.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %.2.i = phi i64 [ %i.cr, %bb.p ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 4
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !93
  %i.cu = sext i8 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 32
  %i.cw = xor i64 %i.cv, %.2.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i
  %.3.i = phi i64 [ %i.cw, %bb.q ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !93
  %i.cz = sext i8 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 24
  %i.db = xor i64 %i.da, %.3.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  %.4.i = phi i64 [ %i.db, %bb.r ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !93
  %i.de = sext i8 %i.dd to i64
  %i.df = shl nsw i64 %i.de, 16
  %i.dg = xor i64 %i.df, %.4.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i
  %.5.i = phi i64 [ %i.dg, %bb.s ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !93
  %i.dj = sext i8 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 8
  %i.dl = xor i64 %i.dk, %.5.i
  br label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i

_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i: ; preds = %bb.t, %._crit_edge.i
  %.6.i = phi i64 [ %i.dl, %bb.t ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.dm = load i8, ptr %.054.lcssa.i, align 1, !tbaa !93
  %i.dn = sext i8 %i.dm to i64
  %i.do = xor i64 %.6.i, %i.dn
  %i.dp = mul i64 %i.do, -4132994306676758123
  br label %_ZN5boost4json6detail6digestIPKcEEmT_S5_m.exit

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

_ZN5boost4json6detail6digestIPKcEEmT_S5_m.exit:   ; preds = %._crit_edge.i, %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i
  %.7.i = phi i64 [ %i.dp, %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.dq = lshr i64 %.7.i, 47
  %i.dr = xor i64 %i.dq, %.7.i
  %i.ds = mul i64 %i.dr, -4132994306676758123     ; 2 uses
  %i.dt = lshr i64 %i.ds, 47
  %i.du = xor i64 %i.dt, %i.ds
  br label %bb.v

end_hunk_0
begin_hunk_1_@_ZN5boost4json6detail5stack4pushIPKNS0_6objectEEEvRKT_St17integral_constantIbLb1EE:bb.a
.lr.ph.i:                                         ; preds = %bb.c, %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i
  %.022.i = phi ptr [ %.0.i, %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i ], [ %.019.i, %bb.c ] ; 3 uses
  %.01321.i = phi ptr [ %i.ab, %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i ], [ %i.r, %bb.c ]
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !253
  %i.t = ptrtoint ptr %.022.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.x = load ptr, ptr %.022.i, align 8, !tbaa !236
  %i.y = invoke noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(24) %.022.i, ptr noundef %i.w)
          to label %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #48
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.y, ptr %.01321.i, align 8, !tbaa !325
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.0.i = load ptr, ptr %i.ab, align 8, !tbaa !325 ; 2 uses
  %.not15.i = icmp eq ptr %.0.i, null
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !53

._crit_edge.i:                                    ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i, %bb.c
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !253 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !270
  %.not16.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not16.i, label %_ZN5boost4json6detail5stack12reserve_implEm.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.af = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i17.i = icmp eq i64 %i.af, 0
  %i.ag = and i64 %i.af, -4
  %i.ah = inttoptr i64 %i.ag to ptr
  %.0.i.i18.i = select i1 %.not.i.i17.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.ah ; 2 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !269
  %i.aj = load ptr, ptr %.0.i.i18.i, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i18.i, ptr noundef %i.ac, i64 noundef %i.ai, i64 noundef 16), !inline_history !55
  br label %_ZN5boost4json6detail5stack12reserve_implEm.exit

_ZN5boost4json6detail5stack12reserve_implEm.exit: ; preds = %bb.b, %._crit_edge.i, %bb.e
  store ptr %i.n, ptr %i.o, align 8, !tbaa !253
  store i64 %i.g, ptr %i.a, align 8, !tbaa !269
  %.pre2 = load i64, ptr %i.c, align 8, !tbaa !237
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %_ZN5boost4json6detail5stack12reserve_implEm.exit
  %i.am = phi i64 [ %i.d, %._crit_edge ], [ %.pre2, %_ZN5boost4json6detail5stack12reserve_implEm.exit ]
  %i.an = phi ptr [ %.pre, %._crit_edge ], [ %i.n, %_ZN5boost4json6detail5stack12reserve_implEm.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %i.ap = load i64, ptr %1, align 8
  store i64 %i.ap, ptr %i.ao, align 1
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !237
  %i.ar = add i64 %i.aq, 8
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !237
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4json6detail5stack4pushIPKNS0_14key_value_pairEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !269
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !237  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 8
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !253
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.d, 8                          ; 2 uses
  %i.h = load i64, ptr %0, align 8, !tbaa !96     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %i.h, -4
  %i.j = inttoptr i64 %i.i to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.j ; 2 uses
  %i.k = load ptr, ptr %.0.i.i.i, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.g, i64 noundef 16), !inline_history !54 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !253  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZN5boost4json6detail5stack12reserve_implEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.c, align 8, !tbaa !237
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.019.i = load ptr, ptr %i.r, align 8, !tbaa !325 ; 2 uses
  %.not1520.i = icmp eq ptr %.019.i, null
  br i1 %.not1520.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i
  %.022.i = phi ptr [ %.0.i, %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i ], [ %.019.i, %bb.c ] ; 3 uses
  %.01321.i = phi ptr [ %i.ab, %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i ], [ %i.r, %bb.c ]
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !253
  %i.t = ptrtoint ptr %.022.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.x = load ptr, ptr %.022.i, align 8, !tbaa !236
  %i.y = invoke noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(24) %.022.i, ptr noundef %i.w)
          to label %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #48
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.y, ptr %.01321.i, align 8, !tbaa !325
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.0.i = load ptr, ptr %i.ab, align 8, !tbaa !325 ; 2 uses
  %.not15.i = icmp eq ptr %.0.i, null
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !53

._crit_edge.i:                                    ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE8relocateEPv.exit.i, %bb.c
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !253 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !270
  %.not16.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not16.i, label %_ZN5boost4json6detail5stack12reserve_implEm.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.af = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i17.i = icmp eq i64 %i.af, 0
  %i.ag = and i64 %i.af, -4
  %i.ah = inttoptr i64 %i.ag to ptr
  %.0.i.i18.i = select i1 %.not.i.i17.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.ah ; 2 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !269
  %i.aj = load ptr, ptr %.0.i.i18.i, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i18.i, ptr noundef %i.ac, i64 noundef %i.ai, i64 noundef 16), !inline_history !55
  br label %_ZN5boost4json6detail5stack12reserve_implEm.exit

_ZN5boost4json6detail5stack12reserve_implEm.exit: ; preds = %bb.b, %._crit_edge.i, %bb.e
  store ptr %i.n, ptr %i.o, align 8, !tbaa !253
  store i64 %i.g, ptr %i.a, align 8, !tbaa !269
  %.pre2 = load i64, ptr %i.c, align 8, !tbaa !237
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %_ZN5boost4json6detail5stack12reserve_implEm.exit
  %i.am = phi i64 [ %i.d, %._crit_edge ], [ %.pre2, %_ZN5boost4json6detail5stack12reserve_implEm.exit ]
  %i.an = phi ptr [ %.pre, %._crit_edge ], [ %i.n, %_ZN5boost4json6detail5stack12reserve_implEm.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %i.ap = load i64, ptr %1, align 8
  store i64 %i.ap, ptr %i.ao, align 1
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !237
  %i.ar = add i64 %i.aq, 8
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !237
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN5boost4json6object12emplace_implIJRNS_4core17basic_string_viewIcEENS0_5valueEEEESt4pairIPNS0_14key_value_pairEbES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::json::key_value_pair", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167
  %i.c = load i32, ptr %i.b, align 8, !tbaa !170
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i64 } @_ZN5boost4json6detail14find_in_objectINS_4core17basic_string_viewIcEEEESt4pairIPNS0_14key_value_pairEmERKNS0_6objectET_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) #46 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.7.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %.sroa.03.0.copyload = load ptr, ptr %3, align 8, !tbaa !191
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !90
  call void @_ZN5boost4json14key_value_pairC2IJNS0_5valueERNS0_11storage_ptrEEEENS_4core17basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr %.sroa.03.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !173
  %i.l = zext i32 %i.k to i64                     ; 4 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !169  ; 3 uses
  %6 = zext i32 %i.o to i64
  %i.p = load i32, ptr %i.m, align 8, !tbaa !170
  %7 = zext i32 %i.p to i64
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %.not.i = icmp samesign ugt i64 %8, %6
  br i1 %.not.i, label %bb.d, label %_ZN5boost4json6object7reserveEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = invoke noundef ptr @_ZN5boost4json6object12reserve_implEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %8)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !169  ; 4 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN5boost4json6object7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.u = icmp ult i32 %i.s, 19
  %i.v = load i64, ptr %0, align 8, !tbaa !96     ; 2 uses
  %.not.i.i8.i.i = icmp eq i64 %i.v, 0
  %i.w = and i64 %i.v, -4
  %i.x = inttoptr i64 %i.w to ptr
  %.0.i.i9.i.i = select i1 %.not.i.i8.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.x ; 2 uses
  %i.y = load ptr, ptr %.0.i.i9.i.i, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = zext i32 %i.s to i64
  %i.ac = mul nuw nsw i64 %i.ab, 44
  %i.ad = add nuw nsw i64 %i.ac, 16
  br label %.invoke.i.i

bb.g:                                             ; preds = %bb.e
  %narrow.i.i = mul nuw nsw i32 %i.s, 40
  %narrow11.i.i = add nuw nsw i32 %narrow.i.i, 16
  %i.ae = zext nneg i32 %narrow11.i.i to i64
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.g, %bb.f
  %i.af = phi i64 [ %i.ae, %bb.g ], [ %i.ad, %bb.f ]
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i9.i.i, ptr noundef nonnull %i.q, i64 noundef %i.af, i64 noundef 16)
          to label %_ZN5boost4json6object7reserveEm.exit unwind label %bb.h, !inline_history !2

bb.h:                                             ; preds = %.invoke.i.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #48
  unreachable

_ZN5boost4json6object7reserveEm.exit:             ; preds = %.invoke.i.i, %.noexc, %bb.c
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !167 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !170 ; 3 uses
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !169 ; 3 uses
  %i.an = icmp ult i32 %i.am, 19
  %or.cond.not30 = select i1 %i.ak, i1 true, i1 %i.an
  %.not9 = icmp eq i32 %i.am, %i.o
  %or.cond27 = select i1 %or.cond.not30, i1 %.not9, i1 false
  br i1 %or.cond27, label %bb.q, label %bb.i

bb.i:                                             ; preds = %_ZN5boost4json6object7reserveEm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !175
  %i.aq = and i64 %i.l, 4294967288                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aq ; 3 uses
  %i.as = mul i64 %i.l, -4132994306676758123
  %i.at = xor i64 %i.ap, %i.as                    ; 3 uses
  %.not55.i = icmp eq i64 %i.aq, 0
  br i1 %.not55.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.au = add nsw i64 %i.l, -8                    ; 2 uses
  %i.av = and i64 %i.au, 8
  %lcmp.mod.not.not = icmp eq i64 %i.av, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.0.copyload.i.prol = load i64, ptr %i.i, align 1, !tbaa !93
  %i.aw = mul i64 %.0.copyload.i.prol, -4132994306676758123 ; 2 uses
  %i.ax = lshr i64 %i.aw, 47
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, -4132994306676758123
  %i.ba = xor i64 %i.az, %i.at
  %i.bb = mul i64 %i.ba, -4132994306676758123     ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.bb, %.lr.ph.i.prol ]
  %.057.i.unr = phi i64 [ %i.at, %.lr.ph.i.preheader ], [ %i.bb, %.lr.ph.i.prol ]
  %.05456.i.unr = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.bc, %.lr.ph.i.prol ]
  %i.bd = icmp ult i64 %i.au, 8
  br i1 %i.bd, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.057.i = phi i64 [ %i.bq, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ]
  %.05456.i = phi ptr [ %i.br, %.lr.ph.i ], [ %.05456.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.0.copyload.i = load i64, ptr %.05456.i, align 1, !tbaa !93
  %i.be = mul i64 %.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.bf = lshr i64 %i.be, 47
  %i.bg = xor i64 %i.bf, %i.be
  %i.bh = mul i64 %i.bg, -4132994306676758123
  %i.bi = xor i64 %i.bh, %.057.i
  %i.bj = mul i64 %i.bi, -4132994306676758123
  %i.bk = getelementptr inbounds nuw i8, ptr %.05456.i, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.bk, align 1, !tbaa !93
  %i.bl = mul i64 %.0.copyload.i.1, -4132994306676758123 ; 2 uses
  %i.bm = lshr i64 %i.bl, 47
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = mul i64 %i.bn, -4132994306676758123
  %i.bp = xor i64 %i.bo, %i.bj
  %i.bq = mul i64 %i.bp, -4132994306676758123     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05456.i, i64 16 ; 2 uses
  %.not.i10.1 = icmp eq ptr %i.br, %i.ar
  br i1 %.not.i10.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.i
  %.054.lcssa.i = phi ptr [ %i.i, %bb.i ], [ %i.ar, %.lr.ph.i ], [ %i.ar, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %.0.lcssa.i = phi i64 [ %i.at, %bb.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bq, %.lr.ph.i ] ; 8 uses
  %i.bs = and i64 %i.l, 7
  switch i64 %i.bs, label %default.unreachable [
    i64 7, label %bb.j
    i64 6, label %bb.k
    i64 5, label %bb.l
    i64 4, label %bb.m
    i64 3, label %bb.n
    i64 2, label %bb.o
    i64 1, label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i
    i64 0, label %_ZN5boost4json6detail6digestIPKcEEmT_S5_m.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 6
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !93
  %i.bv = sext i8 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 48
  %i.bx = xor i64 %i.bw, %.0.lcssa.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.1.i = phi i64 [ %i.bx, %bb.j ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !93
  %i.ca = sext i8 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 40
  %i.cc = xor i64 %i.cb, %.1.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.2.i = phi i64 [ %i.cc, %bb.k ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 4
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !93
  %i.cf = sext i8 %i.ce to i64
  %i.cg = shl nsw i64 %i.cf, 32
  %i.ch = xor i64 %i.cg, %.2.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %.3.i = phi i64 [ %i.ch, %bb.l ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !93
  %i.ck = sext i8 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 24
  %i.cm = xor i64 %i.cl, %.3.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %.4.i = phi i64 [ %i.cm, %bb.m ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !93
  %i.cp = sext i8 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 16
  %i.cr = xor i64 %i.cq, %.4.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.5.i = phi i64 [ %i.cr, %bb.n ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !93
  %i.cu = sext i8 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 8
  %i.cw = xor i64 %i.cv, %.5.i
  br label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i

_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i: ; preds = %bb.o, %._crit_edge.i
  %.6.i = phi i64 [ %i.cw, %bb.o ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.cx = load i8, ptr %.054.lcssa.i, align 1, !tbaa !93
  %i.cy = sext i8 %i.cx to i64
  %i.cz = xor i64 %.6.i, %i.cy
  %i.da = mul i64 %i.cz, -4132994306676758123
  br label %_ZN5boost4json6detail6digestIPKcEEmT_S5_m.exit

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

_ZN5boost4json6detail6digestIPKcEEmT_S5_m.exit:   ; preds = %._crit_edge.i, %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i
  %.7.i = phi i64 [ %i.da, %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.db = lshr i64 %.7.i, 47
  %i.dc = xor i64 %i.db, %.7.i
  %i.dd = mul i64 %i.dc, -4132994306676758123     ; 2 uses
  %i.de = lshr i64 %i.dd, 47
  %i.df = xor i64 %i.de, %i.dd
  br label %bb.q

end_hunk_1
