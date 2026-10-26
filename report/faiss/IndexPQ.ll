Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexPQ?download=true
inline.NumInlined: 1198
inline.NumDeleted: 557
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5faiss16pq_code_distance18PQDistanceComputerINS0_14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EEEE9set_queryEPKf:bb.a
  tail call void @_ZNK5faiss16ProductQuantizer24compute_inner_prod_tableEPKfPf(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef %1, ptr noundef %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss16pq_code_distance18PQDistanceComputerINS0_14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EEEE13symmetric_disEll(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !56
  store i8 0, ptr %i.c, align 8, !tbaa !54
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #22 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.e to i64                ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %3, align 8, !tbaa !53
  %i.j = load i64, ptr %i.d, align 8, !tbaa !56
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #22 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.m = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss16pq_code_distance18PQDistanceComputerINS0_14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EEEE13symmetric_disEll, ptr noundef nonnull @.str.3, i32 noundef 59)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #32
          to label %bb.t unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.m) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.n, %bb.h ]
  %i.o = load ptr, ptr %3, align 8, !tbaa !53     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.q = load i64, ptr %i.c, align 8, !tbaa !54
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !129, !nonnull !30, !align !123 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !127  ; 4 uses
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = and i64 %i.v, 4294967295                 ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.x
  %i.y = xor i64 %notmask.i, -1                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !120 ; 2 uses
  %.not57 = icmp eq i64 %i.aa, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !116 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !117 ; 2 uses
  %i.af = mul i64 %i.ae, %2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  %i.ah = mul i64 %i.ae, %1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = trunc i64 %i.v to i8                    ; 2 uses
  %i.ak = shl i64 %i.v, 1
  %i.al = and i64 %i.ak, 4294967294
  %i.am = shl nuw i64 1, %i.al
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34, %bb.j
  %.013.lcssa = phi float [ 0.000000e+00, %bb.j ], [ %i.et, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34 ]
  ret float %.013.lcssa

bb.k:                                             ; preds = %.lr.ph, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34
  %.056 = phi i64 [ 0, %.lr.ph ], [ %i.ev, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34 ]
  %.01355 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.et, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34 ]
  %.01454 = phi ptr [ %i.b, %.lr.ph ], [ %i.eu, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34 ] ; 2 uses
  %.sroa.0.053 = phi ptr [ %i.ag, %.lr.ph ], [ %.sroa.0.2, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34 ] ; 4 uses
  %.sroa.7.052 = phi i8 [ 0, %.lr.ph ], [ %.sroa.7.1, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34 ] ; 3 uses
  %.sroa.16.051 = phi i8 [ 0, %.lr.ph ], [ %.sroa.16.2, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34 ]
  %.sroa.15.050 = phi i8 [ 0, %.lr.ph ], [ %.sroa.15.2, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34 ]
  %.sroa.037.049 = phi ptr [ %i.ai, %.lr.ph ], [ %.sroa.037.2, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34 ] ; 4 uses
  %.sroa.739.048 = phi i8 [ 0, %.lr.ph ], [ %.sroa.739.1, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34 ] ; 3 uses
  %i.an = icmp eq i8 %.sroa.739.048, 0
  br i1 %i.an, label %bb.l, label %._crit_edge16.i

bb.l:                                             ; preds = %bb.k
  %i.ao = load i8, ptr %.sroa.037.049, align 1, !tbaa !54
  br label %._crit_edge16.i

._crit_edge16.i:                                  ; preds = %bb.k, %bb.l
  %.sroa.16.1 = phi i8 [ %i.ao, %bb.l ], [ %.sroa.16.051, %bb.k ] ; 3 uses
  %i.ap = zext i8 %.sroa.16.1 to i32
  %i.aq = zext i8 %.sroa.739.048 to i32           ; 3 uses
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = zext nneg i32 %i.ar to i64              ; 4 uses
  %i.at = add i32 %i.aq, %i.w                     ; 4 uses
  %i.au = icmp sgt i32 %i.at, 7
  br i1 %i.au, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge16.i
  %i.av = sub nsw i32 8, %i.aq
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.037.049, i64 1 ; 3 uses
  %i.ay = add nsw i32 %i.at, -8
  %i.az = lshr i32 %i.ay, 3                       ; 4 uses
  %i.ba = icmp samesign ugt i32 %i.at, 15
  br i1 %i.ba, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.bb = add nsw i32 %i.az, -1
  %xtraiter = and i32 %i.az, 3                    ; 3 uses
  %i.bc = icmp ult i32 %i.bb, 3
  br i1 %i.bc, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.az, 536870908
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.0812.i.epil.init = phi i64 [ %i.aw, %.lr.ph.i.preheader ], [ %i.ch, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0911.i.epil.init = phi i64 [ %i.as, %.lr.ph.i.preheader ], [ %i.cg, %._crit_edge.i.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %i.ax, %.lr.ph.i.preheader ], [ %i.cc, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod93 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod93)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0812.i.epil = phi i64 [ %i.bj, %.lr.ph.i.epil ], [ %.0812.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0911.i.epil = phi i64 [ %i.bi, %.lr.ph.i.epil ], [ %.0911.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.bd = phi ptr [ %i.be, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !54
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl i64 %i.bg, %.0812.i.epil
  %i.bi = or i64 %i.bh, %.0911.i.epil             ; 2 uses
  %i.bj = add nsw i64 %.0812.i.epil, 8            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil, !llvm.loop !266

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.epil, %._crit_edge.i.loopexit.unr-lcssa
  %.lcssa87 = phi i64 [ %i.cg, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph.i.epil ]
  %.lcssa = phi i64 [ %i.ch, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.i.epil ]
  %i.bk = zext nneg i32 %i.az to i64
  %i.bl = getelementptr i8, ptr %.sroa.037.049, i64 %i.bk
  %scevgep64 = getelementptr i8, ptr %i.bl, i64 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.m
  %.sroa.037.1 = phi ptr [ %i.ax, %bb.m ], [ %scevgep64, %._crit_edge.i.loopexit ] ; 3 uses
  %.09.lcssa.i = phi i64 [ %i.as, %bb.m ], [ %.lcssa87, %._crit_edge.i.loopexit ] ; 2 uses
  %.08.lcssa.i = phi i64 [ %i.aw, %bb.m ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %i.bm = add i8 %.sroa.739.048, %i.aj
  %i.bn = and i8 %i.bm, 7                         ; 2 uses
  %.not.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i, label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit, label %bb.n

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0812.i = phi i64 [ %i.aw, %.lr.ph.i.preheader.new ], [ %i.ch, %.lr.ph.i ] ; 2 uses
  %.0911.i = phi i64 [ %i.as, %.lr.ph.i.preheader.new ], [ %i.cg, %.lr.ph.i ]
  %i.bo = phi ptr [ %i.ax, %.lr.ph.i.preheader.new ], [ %i.cc, %.lr.ph.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !54
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !54
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 8
  %i.bw = or disjoint i64 %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !54
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 16
  %i.cb = or disjoint i64 %i.bw, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.cd = load i8, ptr %i.bx, align 1, !tbaa !54
  %i.ce = zext i8 %i.cd to i64
  %4 = shl nuw nsw i64 %i.ce, 24
  %5 = or disjoint i64 %i.cb, %4
  %i.cf = shl i64 %5, %.0812.i
  %i.cg = or i64 %i.cf, %.0911.i                  ; 3 uses
  %i.ch = add nsw i64 %.0812.i, 32                ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

bb.n:                                             ; preds = %._crit_edge.i
  %i.ci = load i8, ptr %.sroa.037.1, align 1, !tbaa !54 ; 2 uses
  %i.cj = zext i8 %i.ci to i64
  %i.ck = shl i64 %i.cj, %.08.lcssa.i
  %i.cl = or i64 %i.ck, %.09.lcssa.i
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit

bb.o:                                             ; preds = %._crit_edge16.i
  %i.cm = trunc i32 %i.at to i8
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit

_ZN5faiss16PQDecoderGeneric6decodeEv.exit:        ; preds = %._crit_edge.i, %bb.n, %bb.o
  %.sroa.739.1 = phi i8 [ 0, %._crit_edge.i ], [ %i.bn, %bb.n ], [ %i.cm, %bb.o ]
  %.sroa.037.2 = phi ptr [ %.sroa.037.1, %._crit_edge.i ], [ %.sroa.037.1, %bb.n ], [ %.sroa.037.049, %bb.o ]
  %.sroa.16.2 = phi i8 [ %.sroa.16.1, %._crit_edge.i ], [ %i.ci, %bb.n ], [ %.sroa.16.1, %bb.o ]
  %.2.i = phi i64 [ %.09.lcssa.i, %._crit_edge.i ], [ %i.cl, %bb.n ], [ %i.as, %bb.o ]
  %i.cn = and i64 %.2.i, %i.y
  %i.co = icmp eq i8 %.sroa.7.052, 0
  br i1 %i.co, label %bb.p, label %._crit_edge16.i21

bb.p:                                             ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit
  %i.cp = load i8, ptr %.sroa.0.053, align 1, !tbaa !54
  br label %._crit_edge16.i21

._crit_edge16.i21:                                ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit, %bb.p
  %.sroa.15.1 = phi i8 [ %i.cp, %bb.p ], [ %.sroa.15.050, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit ] ; 3 uses
  %i.cq = zext i8 %.sroa.15.1 to i32
  %i.cr = zext i8 %.sroa.7.052 to i32             ; 3 uses
  %i.cs = lshr i32 %i.cq, %i.cr
  %i.ct = zext nneg i32 %i.cs to i64              ; 4 uses
  %i.cu = add i32 %i.cr, %i.w                     ; 4 uses
  %i.cv = icmp sgt i32 %i.cu, 7
  br i1 %i.cv, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge16.i21
  %i.cw = sub nsw i32 8, %i.cr
  %i.cx = sext i32 %i.cw to i64                   ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.053, i64 1 ; 3 uses
  %i.cz = add nsw i32 %i.cu, -8
  %i.da = lshr i32 %i.cz, 3                       ; 4 uses
  %i.db = icmp samesign ugt i32 %i.cu, 15
  br i1 %i.db, label %.lr.ph.i29.preheader, label %._crit_edge.i25

.lr.ph.i29.preheader:                             ; preds = %bb.q
  %i.dc = add nsw i32 %i.da, -1
  %xtraiter94 = and i32 %i.da, 3                  ; 3 uses
  %i.dd = icmp ult i32 %i.dc, 3
  br i1 %i.dd, label %.lr.ph.i29.epil.preheader, label %.lr.ph.i29.preheader.new

.lr.ph.i29.preheader.new:                         ; preds = %.lr.ph.i29.preheader
  %unroll_iter102 = and i32 %i.da, 536870908
  br label %.lr.ph.i29

._crit_edge.i25.loopexit.unr-lcssa:               ; preds = %.lr.ph.i29
  %lcmp.mod98.not = icmp eq i32 %xtraiter94, 0
  br i1 %lcmp.mod98.not, label %._crit_edge.i25.loopexit, label %.lr.ph.i29.epil.preheader

.lr.ph.i29.epil.preheader:                        ; preds = %._crit_edge.i25.loopexit.unr-lcssa, %.lr.ph.i29.preheader
  %.0812.i31.epil.init = phi i64 [ %i.cx, %.lr.ph.i29.preheader ], [ %i.ei, %._crit_edge.i25.loopexit.unr-lcssa ]
  %.0911.i32.epil.init = phi i64 [ %i.ct, %.lr.ph.i29.preheader ], [ %i.eh, %._crit_edge.i25.loopexit.unr-lcssa ]
  %.epil.init97 = phi ptr [ %i.cy, %.lr.ph.i29.preheader ], [ %i.ed, %._crit_edge.i25.loopexit.unr-lcssa ]
  %lcmp.mod101 = icmp ne i32 %xtraiter94, 0
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i29.epil

.lr.ph.i29.epil:                                  ; preds = %.lr.ph.i29.epil, %.lr.ph.i29.epil.preheader
  %.0812.i31.epil = phi i64 [ %i.dk, %.lr.ph.i29.epil ], [ %.0812.i31.epil.init, %.lr.ph.i29.epil.preheader ] ; 2 uses
  %.0911.i32.epil = phi i64 [ %i.dj, %.lr.ph.i29.epil ], [ %.0911.i32.epil.init, %.lr.ph.i29.epil.preheader ]
  %i.de = phi ptr [ %i.df, %.lr.ph.i29.epil ], [ %.epil.init97, %.lr.ph.i29.epil.preheader ] ; 2 uses
  %epil.iter95 = phi i32 [ %epil.iter95.next, %.lr.ph.i29.epil ], [ 0, %.lr.ph.i29.epil.preheader ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !54
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl i64 %i.dh, %.0812.i31.epil
  %i.dj = or i64 %i.di, %.0911.i32.epil           ; 2 uses
  %i.dk = add nsw i64 %.0812.i31.epil, 8          ; 2 uses
  %epil.iter95.next = add i32 %epil.iter95, 1     ; 2 uses
  %epil.iter95.cmp.not = icmp eq i32 %epil.iter95.next, %xtraiter94
  br i1 %epil.iter95.cmp.not, label %._crit_edge.i25.loopexit, label %.lr.ph.i29.epil, !llvm.loop !267

._crit_edge.i25.loopexit:                         ; preds = %.lr.ph.i29.epil, %._crit_edge.i25.loopexit.unr-lcssa
  %.lcssa89 = phi i64 [ %i.eh, %._crit_edge.i25.loopexit.unr-lcssa ], [ %i.dj, %.lr.ph.i29.epil ]
  %.lcssa88 = phi i64 [ %i.ei, %._crit_edge.i25.loopexit.unr-lcssa ], [ %i.dk, %.lr.ph.i29.epil ]
  %i.dl = zext nneg i32 %i.da to i64
  %i.dm = getelementptr i8, ptr %.sroa.0.053, i64 %i.dl
  %scevgep66 = getelementptr i8, ptr %i.dm, i64 1
  br label %._crit_edge.i25

._crit_edge.i25:                                  ; preds = %._crit_edge.i25.loopexit, %bb.q
  %.sroa.0.1 = phi ptr [ %i.cy, %bb.q ], [ %scevgep66, %._crit_edge.i25.loopexit ] ; 3 uses
  %.09.lcssa.i26 = phi i64 [ %i.ct, %bb.q ], [ %.lcssa89, %._crit_edge.i25.loopexit ] ; 2 uses
  %.08.lcssa.i27 = phi i64 [ %i.cx, %bb.q ], [ %.lcssa88, %._crit_edge.i25.loopexit ]
  %i.dn = add i8 %.sroa.7.052, %i.aj
  %i.do = and i8 %i.dn, 7                         ; 2 uses
  %.not.i28 = icmp eq i8 %i.do, 0
  br i1 %.not.i28, label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34, label %bb.r

.lr.ph.i29:                                       ; preds = %.lr.ph.i29, %.lr.ph.i29.preheader.new
  %.0812.i31 = phi i64 [ %i.cx, %.lr.ph.i29.preheader.new ], [ %i.ei, %.lr.ph.i29 ] ; 2 uses
  %.0911.i32 = phi i64 [ %i.ct, %.lr.ph.i29.preheader.new ], [ %i.eh, %.lr.ph.i29 ]
  %i.dp = phi ptr [ %i.cy, %.lr.ph.i29.preheader.new ], [ %i.ed, %.lr.ph.i29 ] ; 5 uses
  %niter103 = phi i32 [ 0, %.lr.ph.i29.preheader.new ], [ %niter103.next.3, %.lr.ph.i29 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dp, align 1, !tbaa !54
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.du = load i8, ptr %i.dq, align 1, !tbaa !54
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 8
  %i.dx = or disjoint i64 %i.dw, %i.ds
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  %i.dz = load i8, ptr %i.dt, align 1, !tbaa !54
  %i.ea = zext i8 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 16
  %i.ec = or disjoint i64 %i.dx, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  %i.ee = load i8, ptr %i.dy, align 1, !tbaa !54
  %i.ef = zext i8 %i.ee to i64
  %6 = shl nuw nsw i64 %i.ef, 24
  %7 = or disjoint i64 %i.ec, %6
  %i.eg = shl i64 %7, %.0812.i31
  %i.eh = or i64 %i.eg, %.0911.i32                ; 3 uses
  %i.ei = add nsw i64 %.0812.i31, 32              ; 3 uses
  %niter103.next.3 = add i32 %niter103, 4         ; 2 uses
  %niter103.ncmp.3 = icmp eq i32 %niter103.next.3, %unroll_iter102
  br i1 %niter103.ncmp.3, label %._crit_edge.i25.loopexit.unr-lcssa, label %.lr.ph.i29, !llvm.loop !1

bb.r:                                             ; preds = %._crit_edge.i25
  %i.ej = load i8, ptr %.sroa.0.1, align 1, !tbaa !54 ; 2 uses
  %i.ek = zext i8 %i.ej to i64
  %i.el = shl i64 %i.ek, %.08.lcssa.i27
  %i.em = or i64 %i.el, %.09.lcssa.i26
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34

bb.s:                                             ; preds = %._crit_edge16.i21
  %i.en = trunc i32 %i.cu to i8
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit34

_ZN5faiss16PQDecoderGeneric6decodeEv.exit34:      ; preds = %._crit_edge.i25, %bb.r, %bb.s
  %.sroa.15.2 = phi i8 [ %.sroa.15.1, %._crit_edge.i25 ], [ %i.ej, %bb.r ], [ %.sroa.15.1, %bb.s ]
  %.sroa.7.1 = phi i8 [ 0, %._crit_edge.i25 ], [ %i.do, %bb.r ], [ %i.en, %bb.s ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %._crit_edge.i25 ], [ %.sroa.0.1, %bb.r ], [ %.sroa.0.053, %bb.s ]
  %.2.i24 = phi i64 [ %.09.lcssa.i26, %._crit_edge.i25 ], [ %i.em, %bb.r ], [ %i.ct, %bb.s ]
  %i.eo = and i64 %.2.i24, %i.y
  %i.ep = shl i64 %i.eo, %i.x
  %i.eq = getelementptr [4 x i8], ptr %.01454, i64 %i.cn
  %i.er = getelementptr [4 x i8], ptr %i.eq, i64 %i.ep
  %i.es = load float, ptr %i.er, align 4, !tbaa !100
  %i.et = fadd float %.01355, %i.es               ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.01454, i64 %i.am
  %i.ev = add nuw i64 %.056, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ev, %i.aa
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !268

bb.t:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16pq_code_distance18PQDistanceComputerINS0_14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16pq_code_distance18PQDistanceComputerINS0_14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss16pq_code_distance18PQDistanceComputerINS0_14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZN5faiss16pq_code_distance18PQDistanceComputerINS0_14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EEEED2Ev.exit

_ZN5faiss16pq_code_distance18PQDistanceComputerINS0_14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss16pq_code_distance18PQDistanceComputerINS0_14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EEEE16distance_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129, !nonnull !30, !align !123 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !120  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !127  ; 3 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = and i64 %i.f, 4294967295
  %notmask.i.i.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i.i.i, -1
  %i.j = shl nuw i32 1, %i.g
  %i.k = sext i32 %i.j to i64
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_ZN5faiss16pq_code_distance14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EE20distance_single_codeEmmPKfPKh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = trunc i64 %i.f to i8
  br label %bb.b

bb.b:                                             ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i, %.lr.ph.i.i
  %.022.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bt, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i ]
  %.01121.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %i.br, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i ]
  %.01220.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.bs, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %.sroa.0.2.i.i, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i ] ; 4 uses
  %.sroa.7.018.i.i = phi i8 [ 0, %.lr.ph.i.i ], [ %.sroa.7.1.i.i, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i ] ; 3 uses
  %.sroa.15.017.i.i = phi i8 [ 0, %.lr.ph.i.i ], [ %.sroa.15.2.i.i, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i ]
  %i.o = icmp eq i8 %.sroa.7.018.i.i, 0
  br i1 %i.o, label %bb.c, label %._crit_edge16.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %.sroa.0.019.i.i, align 1, !tbaa !54
  br label %._crit_edge16.i.i.i

._crit_edge16.i.i.i:                              ; preds = %bb.c, %bb.b
  %.sroa.15.1.i.i = phi i8 [ %i.p, %bb.c ], [ %.sroa.15.017.i.i, %bb.b ] ; 3 uses
  %i.q = zext i8 %.sroa.15.1.i.i to i32
  %i.r = zext i8 %.sroa.7.018.i.i to i32          ; 3 uses
  %i.s = lshr i32 %i.q, %i.r
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  %i.u = add i32 %i.r, %i.g                       ; 4 uses
  %i.v = icmp sgt i32 %i.u, 7
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge16.i.i.i
  %i.w = sub nsw i32 8, %i.r
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 3 uses
  %i.z = add nsw i32 %i.u, -8
  %i.aa = lshr i32 %i.z, 3                        ; 4 uses
  %i.ab = icmp samesign ugt i32 %i.u, 15
  br i1 %i.ab, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %i.ac = add nsw i32 %i.aa, -1
  %xtraiter = and i32 %i.aa, 3                    ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 3
  br i1 %i.ad, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.aa, 536870908
  br label %.lr.ph.i.i.i

._crit_edge.i.loopexit.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.0812.i.i.i.epil.init = phi i64 [ %i.x, %.lr.ph.i.i.i.preheader ], [ %i.bi, %._crit_edge.i.loopexit.i.i.unr-lcssa ]
  %.0911.i.i.i.epil.init = phi i64 [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.bh, %._crit_edge.i.loopexit.i.i.unr-lcssa ]
  %.epil.init = phi ptr [ %i.y, %.lr.ph.i.i.i.preheader ], [ %i.bd, %._crit_edge.i.loopexit.i.i.unr-lcssa ]
  %lcmp.mod18 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.0812.i.i.i.epil = phi i64 [ %i.ak, %.lr.ph.i.i.i.epil ], [ %.0812.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.0911.i.i.i.epil = phi i64 [ %i.aj, %.lr.ph.i.i.i.epil ], [ %.0911.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !54
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl i64 %i.ah, %.0812.i.i.i.epil
  %i.aj = or i64 %i.ai, %.0911.i.i.i.epil         ; 2 uses
  %i.ak = add nsw i64 %.0812.i.i.i.epil, 8        ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !270

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph.i.i.i.epil, %._crit_edge.i.loopexit.i.i.unr-lcssa
  %.lcssa14 = phi i64 [ %i.bh, %._crit_edge.i.loopexit.i.i.unr-lcssa ], [ %i.aj, %.lr.ph.i.i.i.epil ]
  %.lcssa = phi i64 [ %i.bi, %._crit_edge.i.loopexit.i.i.unr-lcssa ], [ %i.ak, %.lr.ph.i.i.i.epil ]
  %i.al = zext nneg i32 %i.aa to i64
  %i.am = getelementptr i8, ptr %.sroa.0.019.i.i, i64 %i.al
  %scevgep26.i.i = getelementptr i8, ptr %i.am, i64 1
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %bb.d
  %.sroa.0.1.i.i = phi ptr [ %i.y, %bb.d ], [ %scevgep26.i.i, %._crit_edge.i.loopexit.i.i ] ; 3 uses
  %.09.lcssa.i.i.i = phi i64 [ %i.t, %bb.d ], [ %.lcssa14, %._crit_edge.i.loopexit.i.i ] ; 2 uses
  %.08.lcssa.i.i.i = phi i64 [ %i.x, %bb.d ], [ %.lcssa, %._crit_edge.i.loopexit.i.i ]
  %i.an = add i8 %.sroa.7.018.i.i, %i.n
  %i.ao = and i8 %i.an, 7                         ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i, label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i, label %bb.e

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.0812.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.preheader.new ], [ %i.bi, %.lr.ph.i.i.i ] ; 2 uses
  %.0911.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.preheader.new ], [ %i.bh, %.lr.ph.i.i.i ]
  %i.ap = phi ptr [ %i.y, %.lr.ph.i.i.i.preheader.new ], [ %i.bd, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !54
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !54
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 8
  %i.ax = or disjoint i64 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.az = load i8, ptr %i.at, align 1, !tbaa !54
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 16
  %i.bc = or disjoint i64 %i.ax, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %i.be = load i8, ptr %i.ay, align 1, !tbaa !54
  %i.bf = zext i8 %i.be to i64
  %2 = shl nuw nsw i64 %i.bf, 24
  %3 = or disjoint i64 %i.bc, %2
  %i.bg = shl i64 %3, %.0812.i.i.i
  %i.bh = or i64 %i.bg, %.0911.i.i.i              ; 3 uses
  %i.bi = add nsw i64 %.0812.i.i.i, 32            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !1

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.bj = load i8, ptr %.sroa.0.1.i.i, align 1, !tbaa !54 ; 2 uses
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl i64 %i.bk, %.08.lcssa.i.i.i
  %i.bm = or i64 %i.bl, %.09.lcssa.i.i.i
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i

bb.f:                                             ; preds = %._crit_edge16.i.i.i
  %i.bn = trunc i32 %i.u to i8
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i

_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i:    ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %.sroa.15.2.i.i = phi i8 [ %.sroa.15.1.i.i, %._crit_edge.i.i.i ], [ %i.bj, %bb.e ], [ %.sroa.15.1.i.i, %bb.f ]
  %.sroa.7.1.i.i = phi i8 [ 0, %._crit_edge.i.i.i ], [ %i.ao, %bb.e ], [ %i.bn, %bb.f ]
  %.sroa.0.2.i.i = phi ptr [ %.sroa.0.1.i.i, %._crit_edge.i.i.i ], [ %.sroa.0.1.i.i, %bb.e ], [ %.sroa.0.019.i.i, %bb.f ]
  %.2.i.i.i = phi i64 [ %.09.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.bm, %bb.e ], [ %i.t, %bb.f ]
  %i.bo = and i64 %.2.i.i.i, %i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.01220.i.i, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !100
  %i.br = fadd float %.01121.i.i, %i.bq           ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.01220.i.i, i64 %i.k
  %i.bt = add nuw i64 %.022.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bt, %i.d
  br i1 %exitcond.not.i.i, label %_ZN5faiss16pq_code_distance14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EE20distance_single_codeEmmPKfPKh.exit, label %bb.b, !llvm.loop !271

_ZN5faiss16pq_code_distance14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EE20distance_single_codeEmmPKfPKh.exit: ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i, %bb.a
  %.011.lcssa.i.i = phi float [ 0.000000e+00, %bb.a ], [ %i.br, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i.i ]
  ret float %.011.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss16pq_code_distance18PQDistanceComputerINS0_14PQCodeDistanceINS_16PQDecoderGenericELNS_9SIMDLevelE0EEEE24distance_to_code_batch_4EPKhS8_S8_S8_RfS9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129, !nonnull !30, !align !123 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !120
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  tail call void @_ZN5faiss16pq_code_distance20PQCodeDistanceScalarINS_16PQDecoderGenericEE19distance_four_codesEmmPKfPKhS7_S7_S7_RfS8_S8_S8_(i64 noundef %i.d, i64 noundef %i.f, ptr noundef %i.h, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss16pq_code_distance20PQCodeDistanceScalarINS_16PQDecoderGenericEE19distance_four_codesEmmPKfPKhS7_S7_S7_RfS8_S8_S8_(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 5 uses
  %i.b = and i64 %1, 4294967295
  %notmask.i = shl nsw i64 -1, %i.b
  %i.c = xor i64 %notmask.i, -1                   ; 4 uses
  %i.d = shl nuw i32 1, %i.a
  %i.e = sext i32 %i.d to i64
  store float 0.000000e+00, ptr %7, align 4, !tbaa !100
  store float 0.000000e+00, ptr %8, align 4, !tbaa !100
  store float 0.000000e+00, ptr %9, align 4, !tbaa !100
  store float 0.000000e+00, ptr %10, align 4, !tbaa !100
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc i64 %1 to i8                       ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71
  %.0122 = phi i64 [ 0, %.lr.ph ], [ %i.ib, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ]
  %.026121 = phi ptr [ %2, %.lr.ph ], [ %i.ia, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ] ; 5 uses
  %.sroa.0.0120 = phi ptr [ %6, %.lr.ph ], [ %.sroa.0.2, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ] ; 4 uses
  %.sroa.7.0119 = phi i8 [ 0, %.lr.ph ], [ %.sroa.7.1, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ] ; 3 uses
  %.sroa.1596.0118 = phi i8 [ 0, %.lr.ph ], [ %.sroa.1596.2, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ]
  %.sroa.15.0117 = phi i8 [ 0, %.lr.ph ], [ %.sroa.15.2, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ]
  %.sroa.074.0116 = phi ptr [ %5, %.lr.ph ], [ %.sroa.074.2, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ] ; 4 uses
  %.sroa.776.0115 = phi i8 [ 0, %.lr.ph ], [ %.sroa.776.1, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ] ; 3 uses
  %.sroa.1580.0114 = phi i8 [ 0, %.lr.ph ], [ %.sroa.1580.2, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ]
  %.sroa.792.0113 = phi i8 [ 0, %.lr.ph ], [ %.sroa.792.1, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ] ; 3 uses
  %.sroa.082.0112 = phi ptr [ %4, %.lr.ph ], [ %.sroa.082.2, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ] ; 4 uses
  %.sroa.784.0111 = phi i8 [ 0, %.lr.ph ], [ %.sroa.784.1, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ] ; 3 uses
  %.sroa.090.0110 = phi ptr [ %3, %.lr.ph ], [ %.sroa.090.2, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ] ; 4 uses
  %.sroa.1588.0109 = phi i8 [ 0, %.lr.ph ], [ %.sroa.1588.2, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71 ]
  %i.g = icmp eq i8 %.sroa.792.0113, 0
  br i1 %i.g, label %bb.c, label %._crit_edge16.i

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %.sroa.090.0110, align 1, !tbaa !54
  br label %._crit_edge16.i

._crit_edge16.i:                                  ; preds = %bb.b, %bb.c
  %.sroa.1596.1 = phi i8 [ %i.h, %bb.c ], [ %.sroa.1596.0118, %bb.b ] ; 3 uses
  %i.i = zext i8 %.sroa.1596.1 to i32
  %i.j = zext i8 %.sroa.792.0113 to i32           ; 3 uses
  %i.k = lshr i32 %i.i, %i.j
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %i.m = add i32 %i.j, %i.a                       ; 4 uses
  %i.n = icmp sgt i32 %i.m, 7
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge16.i
  %i.o = sub nsw i32 8, %i.j
  %i.p = sext i32 %i.o to i64                     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.090.0110, i64 1 ; 3 uses
  %i.r = add nsw i32 %i.m, -8
  %i.s = lshr i32 %i.r, 3                         ; 4 uses
  %i.t = icmp samesign ugt i32 %i.m, 15
  br i1 %i.t, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.u = add nsw i32 %i.s, -1
  %xtraiter = and i32 %i.s, 3                     ; 3 uses
  %i.v = icmp ult i32 %i.u, 3
  br i1 %i.v, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.s, 536870908
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.0812.i.epil.init = phi i64 [ %i.p, %.lr.ph.i.preheader ], [ %i.ba, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0911.i.epil.init = phi i64 [ %i.l, %.lr.ph.i.preheader ], [ %i.az, %._crit_edge.i.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %i.q, %.lr.ph.i.preheader ], [ %i.av, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod180 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod180)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0812.i.epil = phi i64 [ %i.ac, %.lr.ph.i.epil ], [ %.0812.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0911.i.epil = phi i64 [ %i.ab, %.lr.ph.i.epil ], [ %.0911.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.w = phi ptr [ %i.x, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.w, align 1, !tbaa !54
  %i.z = zext i8 %i.y to i64
  %i.aa = shl i64 %i.z, %.0812.i.epil
  %i.ab = or i64 %i.aa, %.0911.i.epil             ; 2 uses
  %i.ac = add nsw i64 %.0812.i.epil, 8            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil, !llvm.loop !272

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.epil, %._crit_edge.i.loopexit.unr-lcssa
  %.lcssa171 = phi i64 [ %i.az, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.i.epil ]
  %.lcssa = phi i64 [ %i.ba, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.i.epil ]
  %i.ad = zext nneg i32 %i.s to i64
  %i.ae = getelementptr i8, ptr %.sroa.090.0110, i64 %i.ad
  %scevgep134 = getelementptr i8, ptr %i.ae, i64 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.d
  %.sroa.090.1 = phi ptr [ %i.q, %bb.d ], [ %scevgep134, %._crit_edge.i.loopexit ] ; 3 uses
  %.09.lcssa.i = phi i64 [ %i.l, %bb.d ], [ %.lcssa171, %._crit_edge.i.loopexit ] ; 2 uses
  %.08.lcssa.i = phi i64 [ %i.p, %bb.d ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %i.af = add i8 %.sroa.792.0113, %i.f
  %i.ag = and i8 %i.af, 7                         ; 2 uses
  %.not.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i, label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit, label %bb.e

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0812.i = phi i64 [ %i.p, %.lr.ph.i.preheader.new ], [ %i.ba, %.lr.ph.i ] ; 2 uses
  %.0911.i = phi i64 [ %i.l, %.lr.ph.i.preheader.new ], [ %i.az, %.lr.ph.i ]
  %i.ah = phi ptr [ %i.q, %.lr.ph.i.preheader.new ], [ %i.av, %.lr.ph.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !54
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !54
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 8
  %i.ap = or disjoint i64 %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !54
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 16
  %i.au = or disjoint i64 %i.ap, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !54
  %i.ax = zext i8 %i.aw to i64
  %11 = shl nuw nsw i64 %i.ax, 24
  %12 = or disjoint i64 %i.au, %11
  %i.ay = shl i64 %12, %.0812.i
  %i.az = or i64 %i.ay, %.0911.i                  ; 3 uses
  %i.ba = add nsw i64 %.0812.i, 32                ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

bb.e:                                             ; preds = %._crit_edge.i
  %i.bb = load i8, ptr %.sroa.090.1, align 1, !tbaa !54 ; 2 uses
  %i.bc = zext i8 %i.bb to i64
  %i.bd = shl i64 %i.bc, %.08.lcssa.i
  %i.be = or i64 %i.bd, %.09.lcssa.i
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit

bb.f:                                             ; preds = %._crit_edge16.i
  %i.bf = trunc i32 %i.m to i8
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit

_ZN5faiss16PQDecoderGeneric6decodeEv.exit:        ; preds = %._crit_edge.i, %bb.e, %bb.f
  %.sroa.090.2 = phi ptr [ %.sroa.090.1, %._crit_edge.i ], [ %.sroa.090.1, %bb.e ], [ %.sroa.090.0110, %bb.f ]
  %.sroa.792.1 = phi i8 [ 0, %._crit_edge.i ], [ %i.ag, %bb.e ], [ %i.bf, %bb.f ]
  %.sroa.1596.2 = phi i8 [ %.sroa.1596.1, %._crit_edge.i ], [ %i.bb, %bb.e ], [ %.sroa.1596.1, %bb.f ]
  %.2.i = phi i64 [ %.09.lcssa.i, %._crit_edge.i ], [ %i.be, %bb.e ], [ %i.l, %bb.f ]
  %i.bg = and i64 %.2.i, %i.c
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.026121, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !100
  %i.bj = load float, ptr %7, align 4, !tbaa !100
  %i.bk = fadd float %i.bi, %i.bj
  store float %i.bk, ptr %7, align 4, !tbaa !100
  %i.bl = icmp eq i8 %.sroa.784.0111, 0
  br i1 %i.bl, label %bb.g, label %._crit_edge16.i30

bb.g:                                             ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit
  %i.bm = load i8, ptr %.sroa.082.0112, align 1, !tbaa !54
  br label %._crit_edge16.i30

._crit_edge16.i30:                                ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit, %bb.g
  %.sroa.1588.1 = phi i8 [ %i.bm, %bb.g ], [ %.sroa.1588.0109, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit ] ; 3 uses
  %i.bn = zext i8 %.sroa.1588.1 to i32
  %i.bo = zext i8 %.sroa.784.0111 to i32          ; 3 uses
  %i.bp = lshr i32 %i.bn, %i.bo
  %i.bq = zext nneg i32 %i.bp to i64              ; 4 uses
  %i.br = add i32 %i.bo, %i.a                     ; 4 uses
  %i.bs = icmp sgt i32 %i.br, 7
  br i1 %i.bs, label %bb.h, label %bb.j

bb.h:                                             ; preds = %._crit_edge16.i30
  %i.bt = sub nsw i32 8, %i.bo
  %i.bu = sext i32 %i.bt to i64                   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.082.0112, i64 1 ; 3 uses
  %i.bw = add nsw i32 %i.br, -8
  %i.bx = lshr i32 %i.bw, 3                       ; 4 uses
  %i.by = icmp samesign ugt i32 %i.br, 15
  br i1 %i.by, label %.lr.ph.i38.preheader, label %._crit_edge.i34

.lr.ph.i38.preheader:                             ; preds = %bb.h
  %i.bz = add nsw i32 %i.bx, -1
  %xtraiter181 = and i32 %i.bx, 3                 ; 3 uses
  %i.ca = icmp ult i32 %i.bz, 3
  br i1 %i.ca, label %.lr.ph.i38.epil.preheader, label %.lr.ph.i38.preheader.new

.lr.ph.i38.preheader.new:                         ; preds = %.lr.ph.i38.preheader
  %unroll_iter189 = and i32 %i.bx, 536870908
  br label %.lr.ph.i38

._crit_edge.i34.loopexit.unr-lcssa:               ; preds = %.lr.ph.i38
  %lcmp.mod185.not = icmp eq i32 %xtraiter181, 0
  br i1 %lcmp.mod185.not, label %._crit_edge.i34.loopexit, label %.lr.ph.i38.epil.preheader

.lr.ph.i38.epil.preheader:                        ; preds = %._crit_edge.i34.loopexit.unr-lcssa, %.lr.ph.i38.preheader
  %.0812.i40.epil.init = phi i64 [ %i.bu, %.lr.ph.i38.preheader ], [ %i.df, %._crit_edge.i34.loopexit.unr-lcssa ]
  %.0911.i41.epil.init = phi i64 [ %i.bq, %.lr.ph.i38.preheader ], [ %i.de, %._crit_edge.i34.loopexit.unr-lcssa ]
  %.epil.init184 = phi ptr [ %i.bv, %.lr.ph.i38.preheader ], [ %i.da, %._crit_edge.i34.loopexit.unr-lcssa ]
  %lcmp.mod188 = icmp ne i32 %xtraiter181, 0
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %.lr.ph.i38.epil

.lr.ph.i38.epil:                                  ; preds = %.lr.ph.i38.epil, %.lr.ph.i38.epil.preheader
  %.0812.i40.epil = phi i64 [ %i.ch, %.lr.ph.i38.epil ], [ %.0812.i40.epil.init, %.lr.ph.i38.epil.preheader ] ; 2 uses
  %.0911.i41.epil = phi i64 [ %i.cg, %.lr.ph.i38.epil ], [ %.0911.i41.epil.init, %.lr.ph.i38.epil.preheader ]
  %i.cb = phi ptr [ %i.cc, %.lr.ph.i38.epil ], [ %.epil.init184, %.lr.ph.i38.epil.preheader ] ; 2 uses
  %epil.iter182 = phi i32 [ %epil.iter182.next, %.lr.ph.i38.epil ], [ 0, %.lr.ph.i38.epil.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !54
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl i64 %i.ce, %.0812.i40.epil
  %i.cg = or i64 %i.cf, %.0911.i41.epil           ; 2 uses
  %i.ch = add nsw i64 %.0812.i40.epil, 8          ; 2 uses
  %epil.iter182.next = add i32 %epil.iter182, 1   ; 2 uses
  %epil.iter182.cmp.not = icmp eq i32 %epil.iter182.next, %xtraiter181
  br i1 %epil.iter182.cmp.not, label %._crit_edge.i34.loopexit, label %.lr.ph.i38.epil, !llvm.loop !273

._crit_edge.i34.loopexit:                         ; preds = %.lr.ph.i38.epil, %._crit_edge.i34.loopexit.unr-lcssa
  %.lcssa173 = phi i64 [ %i.de, %._crit_edge.i34.loopexit.unr-lcssa ], [ %i.cg, %.lr.ph.i38.epil ]
  %.lcssa172 = phi i64 [ %i.df, %._crit_edge.i34.loopexit.unr-lcssa ], [ %i.ch, %.lr.ph.i38.epil ]
  %i.ci = zext nneg i32 %i.bx to i64
  %i.cj = getelementptr i8, ptr %.sroa.082.0112, i64 %i.ci
  %scevgep136 = getelementptr i8, ptr %i.cj, i64 1
  br label %._crit_edge.i34

._crit_edge.i34:                                  ; preds = %._crit_edge.i34.loopexit, %bb.h
  %.sroa.082.1 = phi ptr [ %i.bv, %bb.h ], [ %scevgep136, %._crit_edge.i34.loopexit ] ; 3 uses
  %.09.lcssa.i35 = phi i64 [ %i.bq, %bb.h ], [ %.lcssa173, %._crit_edge.i34.loopexit ] ; 2 uses
  %.08.lcssa.i36 = phi i64 [ %i.bu, %bb.h ], [ %.lcssa172, %._crit_edge.i34.loopexit ]
  %i.ck = add i8 %.sroa.784.0111, %i.f
  %i.cl = and i8 %i.ck, 7                         ; 2 uses
  %.not.i37 = icmp eq i8 %i.cl, 0
  br i1 %.not.i37, label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit43, label %bb.i

.lr.ph.i38:                                       ; preds = %.lr.ph.i38, %.lr.ph.i38.preheader.new
  %.0812.i40 = phi i64 [ %i.bu, %.lr.ph.i38.preheader.new ], [ %i.df, %.lr.ph.i38 ] ; 2 uses
  %.0911.i41 = phi i64 [ %i.bq, %.lr.ph.i38.preheader.new ], [ %i.de, %.lr.ph.i38 ]
  %i.cm = phi ptr [ %i.bv, %.lr.ph.i38.preheader.new ], [ %i.da, %.lr.ph.i38 ] ; 5 uses
  %niter190 = phi i32 [ 0, %.lr.ph.i38.preheader.new ], [ %niter190.next.3, %.lr.ph.i38 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !54
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !54
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 8
  %i.cu = or disjoint i64 %i.ct, %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  %i.cw = load i8, ptr %i.cq, align 1, !tbaa !54
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 16
  %i.cz = or disjoint i64 %i.cu, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !54
  %i.dc = zext i8 %i.db to i64
  %13 = shl nuw nsw i64 %i.dc, 24
  %14 = or disjoint i64 %i.cz, %13
  %i.dd = shl i64 %14, %.0812.i40
  %i.de = or i64 %i.dd, %.0911.i41                ; 3 uses
  %i.df = add nsw i64 %.0812.i40, 32              ; 3 uses
  %niter190.next.3 = add i32 %niter190, 4         ; 2 uses
  %niter190.ncmp.3 = icmp eq i32 %niter190.next.3, %unroll_iter189
  br i1 %niter190.ncmp.3, label %._crit_edge.i34.loopexit.unr-lcssa, label %.lr.ph.i38, !llvm.loop !1

bb.i:                                             ; preds = %._crit_edge.i34
  %i.dg = load i8, ptr %.sroa.082.1, align 1, !tbaa !54 ; 2 uses
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl i64 %i.dh, %.08.lcssa.i36
  %i.dj = or i64 %i.di, %.09.lcssa.i35
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit43

bb.j:                                             ; preds = %._crit_edge16.i30
  %i.dk = trunc i32 %i.br to i8
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit43

_ZN5faiss16PQDecoderGeneric6decodeEv.exit43:      ; preds = %._crit_edge.i34, %bb.i, %bb.j
  %.sroa.1588.2 = phi i8 [ %.sroa.1588.1, %._crit_edge.i34 ], [ %i.dg, %bb.i ], [ %.sroa.1588.1, %bb.j ]
  %.sroa.784.1 = phi i8 [ 0, %._crit_edge.i34 ], [ %i.cl, %bb.i ], [ %i.dk, %bb.j ]
  %.sroa.082.2 = phi ptr [ %.sroa.082.1, %._crit_edge.i34 ], [ %.sroa.082.1, %bb.i ], [ %.sroa.082.0112, %bb.j ]
  %.2.i33 = phi i64 [ %.09.lcssa.i35, %._crit_edge.i34 ], [ %i.dj, %bb.i ], [ %i.bq, %bb.j ]
  %i.dl = and i64 %.2.i33, %i.c
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.026121, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !100
  %i.do = load float, ptr %8, align 4, !tbaa !100
  %i.dp = fadd float %i.dn, %i.do
  store float %i.dp, ptr %8, align 4, !tbaa !100
  %i.dq = icmp eq i8 %.sroa.776.0115, 0
  br i1 %i.dq, label %bb.k, label %._crit_edge16.i44

bb.k:                                             ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit43
  %i.dr = load i8, ptr %.sroa.074.0116, align 1, !tbaa !54
  br label %._crit_edge16.i44

._crit_edge16.i44:                                ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit43, %bb.k
  %.sroa.1580.1 = phi i8 [ %i.dr, %bb.k ], [ %.sroa.1580.0114, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit43 ] ; 3 uses
  %i.ds = zext i8 %.sroa.1580.1 to i32
  %i.dt = zext i8 %.sroa.776.0115 to i32          ; 3 uses
  %i.du = lshr i32 %i.ds, %i.dt
  %i.dv = zext nneg i32 %i.du to i64              ; 4 uses
  %i.dw = add i32 %i.dt, %i.a                     ; 4 uses
  %i.dx = icmp sgt i32 %i.dw, 7
  br i1 %i.dx, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge16.i44
  %i.dy = sub nsw i32 8, %i.dt
  %i.dz = sext i32 %i.dy to i64                   ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.074.0116, i64 1 ; 3 uses
  %i.eb = add nsw i32 %i.dw, -8
  %i.ec = lshr i32 %i.eb, 3                       ; 4 uses
  %i.ed = icmp samesign ugt i32 %i.dw, 15
  br i1 %i.ed, label %.lr.ph.i52.preheader, label %._crit_edge.i48

.lr.ph.i52.preheader:                             ; preds = %bb.l
  %i.ee = add nsw i32 %i.ec, -1
  %xtraiter191 = and i32 %i.ec, 3                 ; 3 uses
  %i.ef = icmp ult i32 %i.ee, 3
  br i1 %i.ef, label %.lr.ph.i52.epil.preheader, label %.lr.ph.i52.preheader.new

.lr.ph.i52.preheader.new:                         ; preds = %.lr.ph.i52.preheader
  %unroll_iter199 = and i32 %i.ec, 536870908
  br label %.lr.ph.i52

._crit_edge.i48.loopexit.unr-lcssa:               ; preds = %.lr.ph.i52
  %lcmp.mod195.not = icmp eq i32 %xtraiter191, 0
  br i1 %lcmp.mod195.not, label %._crit_edge.i48.loopexit, label %.lr.ph.i52.epil.preheader

.lr.ph.i52.epil.preheader:                        ; preds = %._crit_edge.i48.loopexit.unr-lcssa, %.lr.ph.i52.preheader
  %.0812.i54.epil.init = phi i64 [ %i.dz, %.lr.ph.i52.preheader ], [ %i.fk, %._crit_edge.i48.loopexit.unr-lcssa ]
  %.0911.i55.epil.init = phi i64 [ %i.dv, %.lr.ph.i52.preheader ], [ %i.fj, %._crit_edge.i48.loopexit.unr-lcssa ]
  %.epil.init194 = phi ptr [ %i.ea, %.lr.ph.i52.preheader ], [ %i.ff, %._crit_edge.i48.loopexit.unr-lcssa ]
  %lcmp.mod198 = icmp ne i32 %xtraiter191, 0
  tail call void @llvm.assume(i1 %lcmp.mod198)
  br label %.lr.ph.i52.epil

.lr.ph.i52.epil:                                  ; preds = %.lr.ph.i52.epil, %.lr.ph.i52.epil.preheader
  %.0812.i54.epil = phi i64 [ %i.em, %.lr.ph.i52.epil ], [ %.0812.i54.epil.init, %.lr.ph.i52.epil.preheader ] ; 2 uses
  %.0911.i55.epil = phi i64 [ %i.el, %.lr.ph.i52.epil ], [ %.0911.i55.epil.init, %.lr.ph.i52.epil.preheader ]
  %i.eg = phi ptr [ %i.eh, %.lr.ph.i52.epil ], [ %.epil.init194, %.lr.ph.i52.epil.preheader ] ; 2 uses
  %epil.iter192 = phi i32 [ %epil.iter192.next, %.lr.ph.i52.epil ], [ 0, %.lr.ph.i52.epil.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ei = load i8, ptr %i.eg, align 1, !tbaa !54
  %i.ej = zext i8 %i.ei to i64
  %i.ek = shl i64 %i.ej, %.0812.i54.epil
  %i.el = or i64 %i.ek, %.0911.i55.epil           ; 2 uses
  %i.em = add nsw i64 %.0812.i54.epil, 8          ; 2 uses
  %epil.iter192.next = add i32 %epil.iter192, 1   ; 2 uses
  %epil.iter192.cmp.not = icmp eq i32 %epil.iter192.next, %xtraiter191
  br i1 %epil.iter192.cmp.not, label %._crit_edge.i48.loopexit, label %.lr.ph.i52.epil, !llvm.loop !274

._crit_edge.i48.loopexit:                         ; preds = %.lr.ph.i52.epil, %._crit_edge.i48.loopexit.unr-lcssa
  %.lcssa175 = phi i64 [ %i.fj, %._crit_edge.i48.loopexit.unr-lcssa ], [ %i.el, %.lr.ph.i52.epil ]
  %.lcssa174 = phi i64 [ %i.fk, %._crit_edge.i48.loopexit.unr-lcssa ], [ %i.em, %.lr.ph.i52.epil ]
  %i.en = zext nneg i32 %i.ec to i64
  %i.eo = getelementptr i8, ptr %.sroa.074.0116, i64 %i.en
  %scevgep138 = getelementptr i8, ptr %i.eo, i64 1
  br label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %._crit_edge.i48.loopexit, %bb.l
  %.sroa.074.1 = phi ptr [ %i.ea, %bb.l ], [ %scevgep138, %._crit_edge.i48.loopexit ] ; 3 uses
  %.09.lcssa.i49 = phi i64 [ %i.dv, %bb.l ], [ %.lcssa175, %._crit_edge.i48.loopexit ] ; 2 uses
  %.08.lcssa.i50 = phi i64 [ %i.dz, %bb.l ], [ %.lcssa174, %._crit_edge.i48.loopexit ]
  %i.ep = add i8 %.sroa.776.0115, %i.f
  %i.eq = and i8 %i.ep, 7                         ; 2 uses
  %.not.i51 = icmp eq i8 %i.eq, 0
  br i1 %.not.i51, label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit57, label %bb.m

.lr.ph.i52:                                       ; preds = %.lr.ph.i52, %.lr.ph.i52.preheader.new
  %.0812.i54 = phi i64 [ %i.dz, %.lr.ph.i52.preheader.new ], [ %i.fk, %.lr.ph.i52 ] ; 2 uses
  %.0911.i55 = phi i64 [ %i.dv, %.lr.ph.i52.preheader.new ], [ %i.fj, %.lr.ph.i52 ]
  %i.er = phi ptr [ %i.ea, %.lr.ph.i52.preheader.new ], [ %i.ff, %.lr.ph.i52 ] ; 5 uses
  %niter200 = phi i32 [ 0, %.lr.ph.i52.preheader.new ], [ %niter200.next.3, %.lr.ph.i52 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  %i.et = load i8, ptr %i.er, align 1, !tbaa !54
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %i.ew = load i8, ptr %i.es, align 1, !tbaa !54
  %i.ex = zext i8 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, 8
  %i.ez = or disjoint i64 %i.ey, %i.eu
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 3
  %i.fb = load i8, ptr %i.ev, align 1, !tbaa !54
  %i.fc = zext i8 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 16
  %i.fe = or disjoint i64 %i.ez, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  %i.fg = load i8, ptr %i.fa, align 1, !tbaa !54
  %i.fh = zext i8 %i.fg to i64
  %15 = shl nuw nsw i64 %i.fh, 24
  %16 = or disjoint i64 %i.fe, %15
  %i.fi = shl i64 %16, %.0812.i54
  %i.fj = or i64 %i.fi, %.0911.i55                ; 3 uses
  %i.fk = add nsw i64 %.0812.i54, 32              ; 3 uses
  %niter200.next.3 = add i32 %niter200, 4         ; 2 uses
  %niter200.ncmp.3 = icmp eq i32 %niter200.next.3, %unroll_iter199
  br i1 %niter200.ncmp.3, label %._crit_edge.i48.loopexit.unr-lcssa, label %.lr.ph.i52, !llvm.loop !1

bb.m:                                             ; preds = %._crit_edge.i48
  %i.fl = load i8, ptr %.sroa.074.1, align 1, !tbaa !54 ; 2 uses
  %i.fm = zext i8 %i.fl to i64
  %i.fn = shl i64 %i.fm, %.08.lcssa.i50
  %i.fo = or i64 %i.fn, %.09.lcssa.i49
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit57

bb.n:                                             ; preds = %._crit_edge16.i44
  %i.fp = trunc i32 %i.dw to i8
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit57

_ZN5faiss16PQDecoderGeneric6decodeEv.exit57:      ; preds = %._crit_edge.i48, %bb.m, %bb.n
  %.sroa.1580.2 = phi i8 [ %.sroa.1580.1, %._crit_edge.i48 ], [ %i.fl, %bb.m ], [ %.sroa.1580.1, %bb.n ]
  %.sroa.776.1 = phi i8 [ 0, %._crit_edge.i48 ], [ %i.eq, %bb.m ], [ %i.fp, %bb.n ]
  %.sroa.074.2 = phi ptr [ %.sroa.074.1, %._crit_edge.i48 ], [ %.sroa.074.1, %bb.m ], [ %.sroa.074.0116, %bb.n ]
  %.2.i47 = phi i64 [ %.09.lcssa.i49, %._crit_edge.i48 ], [ %i.fo, %bb.m ], [ %i.dv, %bb.n ]
  %i.fq = and i64 %.2.i47, %i.c
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.026121, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !100
  %i.ft = load float, ptr %9, align 4, !tbaa !100
  %i.fu = fadd float %i.fs, %i.ft
  store float %i.fu, ptr %9, align 4, !tbaa !100
  %i.fv = icmp eq i8 %.sroa.7.0119, 0
  br i1 %i.fv, label %bb.o, label %._crit_edge16.i58

bb.o:                                             ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit57
  %i.fw = load i8, ptr %.sroa.0.0120, align 1, !tbaa !54
  br label %._crit_edge16.i58

._crit_edge16.i58:                                ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit57, %bb.o
  %.sroa.15.1 = phi i8 [ %i.fw, %bb.o ], [ %.sroa.15.0117, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit57 ] ; 3 uses
  %i.fx = zext i8 %.sroa.15.1 to i32
  %i.fy = zext i8 %.sroa.7.0119 to i32            ; 3 uses
  %i.fz = lshr i32 %i.fx, %i.fy
  %i.ga = zext nneg i32 %i.fz to i64              ; 4 uses
  %i.gb = add i32 %i.fy, %i.a                     ; 4 uses
  %i.gc = icmp sgt i32 %i.gb, 7
  br i1 %i.gc, label %bb.p, label %bb.r

bb.p:                                             ; preds = %._crit_edge16.i58
  %i.gd = sub nsw i32 8, %i.fy
  %i.ge = sext i32 %i.gd to i64                   ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0120, i64 1 ; 3 uses
  %i.gg = add nsw i32 %i.gb, -8
  %i.gh = lshr i32 %i.gg, 3                       ; 4 uses
  %i.gi = icmp samesign ugt i32 %i.gb, 15
  br i1 %i.gi, label %.lr.ph.i66.preheader, label %._crit_edge.i62

.lr.ph.i66.preheader:                             ; preds = %bb.p
  %i.gj = add nsw i32 %i.gh, -1
  %xtraiter201 = and i32 %i.gh, 3                 ; 3 uses
  %i.gk = icmp ult i32 %i.gj, 3
  br i1 %i.gk, label %.lr.ph.i66.epil.preheader, label %.lr.ph.i66.preheader.new

.lr.ph.i66.preheader.new:                         ; preds = %.lr.ph.i66.preheader
  %unroll_iter209 = and i32 %i.gh, 536870908
  br label %.lr.ph.i66

._crit_edge.i62.loopexit.unr-lcssa:               ; preds = %.lr.ph.i66
  %lcmp.mod205.not = icmp eq i32 %xtraiter201, 0
  br i1 %lcmp.mod205.not, label %._crit_edge.i62.loopexit, label %.lr.ph.i66.epil.preheader

.lr.ph.i66.epil.preheader:                        ; preds = %._crit_edge.i62.loopexit.unr-lcssa, %.lr.ph.i66.preheader
  %.0812.i68.epil.init = phi i64 [ %i.ge, %.lr.ph.i66.preheader ], [ %i.hp, %._crit_edge.i62.loopexit.unr-lcssa ]
  %.0911.i69.epil.init = phi i64 [ %i.ga, %.lr.ph.i66.preheader ], [ %i.ho, %._crit_edge.i62.loopexit.unr-lcssa ]
  %.epil.init204 = phi ptr [ %i.gf, %.lr.ph.i66.preheader ], [ %i.hk, %._crit_edge.i62.loopexit.unr-lcssa ]
  %lcmp.mod208 = icmp ne i32 %xtraiter201, 0
  tail call void @llvm.assume(i1 %lcmp.mod208)
  br label %.lr.ph.i66.epil

.lr.ph.i66.epil:                                  ; preds = %.lr.ph.i66.epil, %.lr.ph.i66.epil.preheader
  %.0812.i68.epil = phi i64 [ %i.gr, %.lr.ph.i66.epil ], [ %.0812.i68.epil.init, %.lr.ph.i66.epil.preheader ] ; 2 uses
  %.0911.i69.epil = phi i64 [ %i.gq, %.lr.ph.i66.epil ], [ %.0911.i69.epil.init, %.lr.ph.i66.epil.preheader ]
  %i.gl = phi ptr [ %i.gm, %.lr.ph.i66.epil ], [ %.epil.init204, %.lr.ph.i66.epil.preheader ] ; 2 uses
  %epil.iter202 = phi i32 [ %epil.iter202.next, %.lr.ph.i66.epil ], [ 0, %.lr.ph.i66.epil.preheader ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gn = load i8, ptr %i.gl, align 1, !tbaa !54
  %i.go = zext i8 %i.gn to i64
  %i.gp = shl i64 %i.go, %.0812.i68.epil
  %i.gq = or i64 %i.gp, %.0911.i69.epil           ; 2 uses
  %i.gr = add nsw i64 %.0812.i68.epil, 8          ; 2 uses
  %epil.iter202.next = add i32 %epil.iter202, 1   ; 2 uses
  %epil.iter202.cmp.not = icmp eq i32 %epil.iter202.next, %xtraiter201
  br i1 %epil.iter202.cmp.not, label %._crit_edge.i62.loopexit, label %.lr.ph.i66.epil, !llvm.loop !275

._crit_edge.i62.loopexit:                         ; preds = %.lr.ph.i66.epil, %._crit_edge.i62.loopexit.unr-lcssa
  %.lcssa177 = phi i64 [ %i.ho, %._crit_edge.i62.loopexit.unr-lcssa ], [ %i.gq, %.lr.ph.i66.epil ]
  %.lcssa176 = phi i64 [ %i.hp, %._crit_edge.i62.loopexit.unr-lcssa ], [ %i.gr, %.lr.ph.i66.epil ]
  %i.gs = zext nneg i32 %i.gh to i64
  %i.gt = getelementptr i8, ptr %.sroa.0.0120, i64 %i.gs
  %scevgep140 = getelementptr i8, ptr %i.gt, i64 1
  br label %._crit_edge.i62

._crit_edge.i62:                                  ; preds = %._crit_edge.i62.loopexit, %bb.p
  %.sroa.0.1 = phi ptr [ %i.gf, %bb.p ], [ %scevgep140, %._crit_edge.i62.loopexit ] ; 3 uses
  %.09.lcssa.i63 = phi i64 [ %i.ga, %bb.p ], [ %.lcssa177, %._crit_edge.i62.loopexit ] ; 2 uses
  %.08.lcssa.i64 = phi i64 [ %i.ge, %bb.p ], [ %.lcssa176, %._crit_edge.i62.loopexit ]
  %i.gu = add i8 %.sroa.7.0119, %i.f
  %i.gv = and i8 %i.gu, 7                         ; 2 uses
  %.not.i65 = icmp eq i8 %i.gv, 0
  br i1 %.not.i65, label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71, label %bb.q

.lr.ph.i66:                                       ; preds = %.lr.ph.i66, %.lr.ph.i66.preheader.new
  %.0812.i68 = phi i64 [ %i.ge, %.lr.ph.i66.preheader.new ], [ %i.hp, %.lr.ph.i66 ] ; 2 uses
  %.0911.i69 = phi i64 [ %i.ga, %.lr.ph.i66.preheader.new ], [ %i.ho, %.lr.ph.i66 ]
  %i.gw = phi ptr [ %i.gf, %.lr.ph.i66.preheader.new ], [ %i.hk, %.lr.ph.i66 ] ; 5 uses
  %niter210 = phi i32 [ 0, %.lr.ph.i66.preheader.new ], [ %niter210.next.3, %.lr.ph.i66 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  %i.gy = load i8, ptr %i.gw, align 1, !tbaa !54
  %i.gz = zext i8 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  %i.hb = load i8, ptr %i.gx, align 1, !tbaa !54
  %i.hc = zext i8 %i.hb to i64
  %i.hd = shl nuw nsw i64 %i.hc, 8
  %i.he = or disjoint i64 %i.hd, %i.gz
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 3
  %i.hg = load i8, ptr %i.ha, align 1, !tbaa !54
  %i.hh = zext i8 %i.hg to i64
  %i.hi = shl nuw nsw i64 %i.hh, 16
  %i.hj = or disjoint i64 %i.he, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gw, i64 4 ; 2 uses
  %i.hl = load i8, ptr %i.hf, align 1, !tbaa !54
  %i.hm = zext i8 %i.hl to i64
  %17 = shl nuw nsw i64 %i.hm, 24
  %18 = or disjoint i64 %i.hj, %17
  %i.hn = shl i64 %18, %.0812.i68
  %i.ho = or i64 %i.hn, %.0911.i69                ; 3 uses
  %i.hp = add nsw i64 %.0812.i68, 32              ; 3 uses
  %niter210.next.3 = add i32 %niter210, 4         ; 2 uses
  %niter210.ncmp.3 = icmp eq i32 %niter210.next.3, %unroll_iter209
  br i1 %niter210.ncmp.3, label %._crit_edge.i62.loopexit.unr-lcssa, label %.lr.ph.i66, !llvm.loop !1

bb.q:                                             ; preds = %._crit_edge.i62
  %i.hq = load i8, ptr %.sroa.0.1, align 1, !tbaa !54 ; 2 uses
  %i.hr = zext i8 %i.hq to i64
  %i.hs = shl i64 %i.hr, %.08.lcssa.i64
  %i.ht = or i64 %i.hs, %.09.lcssa.i63
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71

bb.r:                                             ; preds = %._crit_edge16.i58
  %i.hu = trunc i32 %i.gb to i8
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit71

_ZN5faiss16PQDecoderGeneric6decodeEv.exit71:      ; preds = %._crit_edge.i62, %bb.q, %bb.r
  %.sroa.15.2 = phi i8 [ %.sroa.15.1, %._crit_edge.i62 ], [ %i.hq, %bb.q ], [ %.sroa.15.1, %bb.r ]
  %.sroa.7.1 = phi i8 [ 0, %._crit_edge.i62 ], [ %i.gv, %bb.q ], [ %i.hu, %bb.r ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %._crit_edge.i62 ], [ %.sroa.0.1, %bb.q ], [ %.sroa.0.0120, %bb.r ]
  %.2.i61 = phi i64 [ %.09.lcssa.i63, %._crit_edge.i62 ], [ %i.ht, %bb.q ], [ %i.ga, %bb.r ]
  %i.hv = and i64 %.2.i61, %i.c
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.026121, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !100
  %i.hy = load float, ptr %10, align 4, !tbaa !100
  %i.hz = fadd float %i.hx, %i.hy
  store float %i.hz, ptr %10, align 4, !tbaa !100
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.026121, i64 %i.e
  %i.ib = add nuw i64 %.0122, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ib, %0
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !276
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5faiss27polysemous_inner_loop_fixSLILNS_9SIMDLevelE0EEEmiPKNS_7IndexPQEPKfPKhmPfPli(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, i32 noundef %7) local_unnamed_addr #1 {
bb.a:
  %i.a = add i32 %0, -4                           ; 2 uses
  %i.b = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 30)
  switch i32 %i.b, label %bb.az [
    i32 0, label %bb.b
    i32 1, label %bb.k
    i32 3, label %bb.t
    i32 4, label %bb.ab
    i32 7, label %bb.aj
    i32 15, label %bb.ar
  ]

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !61 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load i64, ptr %i.c, align 8, !tbaa !99
  %.fr14.i.i.i = freeze i64 %i.d                  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !130  ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !45   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92   ; 3 uses
  %i.m = icmp sgt i64 %i.j, 0
  br i1 %i.m, label %.lr.ph10.i.i.i, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_27polysemous_inner_loop_fixSLILS1_0EEEmiPKNS_7IndexPQEPKfPKhmPfPliE3$_0EEDciOT0_.exit"

.lr.ph10.i.i.i:                                   ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %.fr14.i.i.i, 0       ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %5, i64 -4 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %6, i64 -8 ; 4 uses
  %i.p = icmp ult i64 %4, 2
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %4
  br i1 %i.p, label %.lr.ph10.split.us.i.i.i, label %.lr.ph10.split.i.i.i.preheader

.lr.ph10.split.i.i.i.preheader:                   ; preds = %.lr.ph10.i.i.i
  %xtraiter221 = and i64 %.fr14.i.i.i, 3          ; 3 uses
  %i.q = icmp ult i64 %.fr14.i.i.i, 4
  %unroll_iter226 = and i64 %.fr14.i.i.i, -4
  %lcmp.mod223.not = icmp eq i64 %xtraiter221, 0
  %lcmp.mod225 = icmp ne i64 %xtraiter221, 0
  br label %.lr.ph10.split.i.i.i

.lr.ph10.split.us.i.i.i:                          ; preds = %.lr.ph10.i.i.i
  br i1 %.not.i.i.i, label %.lr.ph10.split.us.split.i.i.i, label %.lr.ph10.split.us.split.us.i.i.i.preheader

.lr.ph10.split.us.split.us.i.i.i.preheader:       ; preds = %.lr.ph10.split.us.i.i.i
  %xtraiter228 = and i64 %.fr14.i.i.i, 3          ; 3 uses
  %i.r = icmp ult i64 %.fr14.i.i.i, 4
  %unroll_iter233 = and i64 %.fr14.i.i.i, -4
  %lcmp.mod230.not = icmp eq i64 %xtraiter228, 0
  %lcmp.mod232 = icmp ne i64 %xtraiter228, 0
  br label %.lr.ph10.split.us.split.us.i.i.i

.lr.ph10.split.us.split.us.i.i.i:                 ; preds = %.lr.ph10.split.us.split.us.i.i.i.preheader, %bb.c
  %.0356.us.us.i.i.i = phi i64 [ %i.bo, %bb.c ], [ 0, %.lr.ph10.split.us.split.us.i.i.i.preheader ] ; 2 uses
  %.0365.us.us.i.i.i = phi i64 [ %.1.us.us.i.i.i, %bb.c ], [ 0, %.lr.ph10.split.us.split.us.i.i.i.preheader ] ; 2 uses
  %.0374.us.us.i.i.i = phi ptr [ %i.bn, %bb.c ], [ %i.l, %.lr.ph10.split.us.split.us.i.i.i.preheader ] ; 7 uses
  %i.s = load i32, ptr %.0374.us.us.i.i.i, align 4, !tbaa !61
  %i.t = xor i32 %i.s, %.val.i.i
  %i.u = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.t)
  %i.v = icmp slt i32 %i.u, %7
  br i1 %i.v, label %.lr.ph.us.us.i.i.i.preheader, label %bb.c

.lr.ph.us.us.i.i.i.preheader:                     ; preds = %.lr.ph10.split.us.split.us.i.i.i
  br i1 %i.r, label %.lr.ph.us.us.i.i.i.epil.preheader, label %.lr.ph.us.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %.lr.ph.us.us.i.i.i.preheader, %.lr.ph.us.us.i.i.i
  %.03.us.us.i.i.i = phi i64 [ %i.bb, %.lr.ph.us.us.i.i.i ], [ 0, %.lr.ph.us.us.i.i.i.preheader ] ; 5 uses
  %.0332.us.us.i.i.i = phi ptr [ %i.ba, %.lr.ph.us.us.i.i.i ], [ %2, %.lr.ph.us.us.i.i.i.preheader ] ; 2 uses
  %.0341.us.us.i.i.i = phi float [ %i.az, %.lr.ph.us.us.i.i.i ], [ 0.000000e+00, %.lr.ph.us.us.i.i.i.preheader ]
  %niter234 = phi i64 [ %niter234.next.3, %.lr.ph.us.us.i.i.i ], [ 0, %.lr.ph.us.us.i.i.i.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0374.us.us.i.i.i, i64 %.03.us.us.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !54
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.0332.us.us.i.i.i, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !100
  %i.ab = fadd float %.0341.us.us.i.i.i, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.0332.us.us.i.i.i, i64 %i.h ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0374.us.us.i.i.i, i64 %.03.us.us.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !54
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !100
  %i.aj = fadd float %i.ab, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.h ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0374.us.us.i.i.i, i64 %.03.us.us.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !54
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !100
  %i.ar = fadd float %i.aj, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.h ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0374.us.us.i.i.i, i64 %.03.us.us.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !54
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !100
  %i.az = fadd float %i.ar, %i.ay                 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.h ; 2 uses
  %i.bb = add nuw i64 %.03.us.us.i.i.i, 4         ; 2 uses
  %niter234.next.3 = add nuw i64 %niter234, 4     ; 2 uses
  %niter234.ncmp.3 = icmp eq i64 %niter234.next.3, %unroll_iter233
  br i1 %niter234.ncmp.3, label %._crit_edge.us.us.i.i.i.unr-lcssa, label %.lr.ph.us.us.i.i.i, !llvm.loop !277

._crit_edge.us.us.i.i.i.unr-lcssa:                ; preds = %.lr.ph.us.us.i.i.i
  br i1 %lcmp.mod230.not, label %._crit_edge.us.us.i.i.i, label %.lr.ph.us.us.i.i.i.epil.preheader

.lr.ph.us.us.i.i.i.epil.preheader:                ; preds = %._crit_edge.us.us.i.i.i.unr-lcssa, %.lr.ph.us.us.i.i.i.preheader
  %.03.us.us.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i.i.i.preheader ], [ %i.bb, %._crit_edge.us.us.i.i.i.unr-lcssa ]
  %.0332.us.us.i.i.i.epil.init = phi ptr [ %2, %.lr.ph.us.us.i.i.i.preheader ], [ %i.ba, %._crit_edge.us.us.i.i.i.unr-lcssa ]
  %.0341.us.us.i.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.i.i.i.preheader ], [ %i.az, %._crit_edge.us.us.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod232)
  br label %.lr.ph.us.us.i.i.i.epil

.lr.ph.us.us.i.i.i.epil:                          ; preds = %.lr.ph.us.us.i.i.i.epil, %.lr.ph.us.us.i.i.i.epil.preheader
  %.03.us.us.i.i.i.epil = phi i64 [ %i.bj, %.lr.ph.us.us.i.i.i.epil ], [ %.03.us.us.i.i.i.epil.init, %.lr.ph.us.us.i.i.i.epil.preheader ] ; 2 uses
  %.0332.us.us.i.i.i.epil = phi ptr [ %i.bi, %.lr.ph.us.us.i.i.i.epil ], [ %.0332.us.us.i.i.i.epil.init, %.lr.ph.us.us.i.i.i.epil.preheader ] ; 2 uses
  %.0341.us.us.i.i.i.epil = phi float [ %i.bh, %.lr.ph.us.us.i.i.i.epil ], [ %.0341.us.us.i.i.i.epil.init, %.lr.ph.us.us.i.i.i.epil.preheader ]
  %epil.iter229 = phi i64 [ %epil.iter229.next, %.lr.ph.us.us.i.i.i.epil ], [ 0, %.lr.ph.us.us.i.i.i.epil.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0374.us.us.i.i.i, i64 %.03.us.us.i.i.i.epil
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !54
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.0332.us.us.i.i.i.epil, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !100
  %i.bh = fadd float %.0341.us.us.i.i.i.epil, %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0332.us.us.i.i.i.epil, i64 %i.h
  %i.bj = add nuw i64 %.03.us.us.i.i.i.epil, 1
  %epil.iter229.next = add i64 %epil.iter229, 1   ; 2 uses
  %epil.iter229.cmp.not = icmp eq i64 %epil.iter229.next, %xtraiter228
  br i1 %epil.iter229.cmp.not, label %._crit_edge.us.us.i.i.i, label %.lr.ph.us.us.i.i.i.epil, !llvm.loop !278

._crit_edge.us.us.i.i.i:                          ; preds = %.lr.ph.us.us.i.i.i.epil, %._crit_edge.us.us.i.i.i.unr-lcssa
  %.lcssa168 = phi float [ %i.az, %._crit_edge.us.us.i.i.i.unr-lcssa ], [ %i.bh, %.lr.ph.us.us.i.i.i.epil ] ; 2 uses
  %i.bk = add i64 %.0365.us.us.i.i.i, 1           ; 2 uses
  %i.bl = load float, ptr %5, align 4, !tbaa !100
  %i.bm = fcmp olt float %.lcssa168, %i.bl
  br i1 %i.bm, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit.us.us.i.i.i, label %bb.c

_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit.us.us.i.i.i: ; preds = %._crit_edge.us.us.i.i.i
  store float %.lcssa168, ptr %5, align 4, !tbaa !100
  store i64 %.0356.us.us.i.i.i, ptr %6, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit.us.us.i.i.i, %._crit_edge.us.us.i.i.i, %.lr.ph10.split.us.split.us.i.i.i
  %.1.us.us.i.i.i = phi i64 [ %.0365.us.us.i.i.i, %.lr.ph10.split.us.split.us.i.i.i ], [ %i.bk, %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit.us.us.i.i.i ], [ %i.bk, %._crit_edge.us.us.i.i.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0374.us.us.i.i.i, i64 %i.f
  %i.bo = add nuw nsw i64 %.0356.us.us.i.i.i, 1   ; 2 uses
  %exitcond20.not.i.i.i = icmp eq i64 %i.bo, %i.j
  br i1 %exitcond20.not.i.i.i, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_27polysemous_inner_loop_fixSLILS1_0EEEmiPKNS_7IndexPQEPKfPKhmPfPliE3$_0EEDciOT0_.exit", label %.lr.ph10.split.us.split.us.i.i.i, !llvm.loop !279

.lr.ph10.split.us.split.i.i.i:                    ; preds = %.lr.ph10.split.us.i.i.i, %bb.e
  %.0356.us.i.i.i = phi i64 [ %i.bx, %bb.e ], [ 0, %.lr.ph10.split.us.i.i.i ] ; 2 uses
  %.0365.us.i.i.i = phi i64 [ %.1.us.i.i.i, %bb.e ], [ 0, %.lr.ph10.split.us.i.i.i ] ; 2 uses
  %.0374.us.i.i.i = phi ptr [ %i.bw, %bb.e ], [ %i.l, %.lr.ph10.split.us.i.i.i ] ; 2 uses
  %i.bp = load i32, ptr %.0374.us.i.i.i, align 4, !tbaa !61
  %i.bq = xor i32 %i.bp, %.val.i.i
  %i.br = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bq)
  %i.bs = icmp slt i32 %i.br, %7
  br i1 %i.bs, label %bb.d, label %bb.e

end_hunk_0
